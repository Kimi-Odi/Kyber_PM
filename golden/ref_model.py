"""
=============================================================================
Kyber NTT reference model
=============================================================================
這個檔案是 *軟體* reference,提供:
  1. NTT / INTT / PWM / schoolbook 四個演算法的 Python 實作
  2. 自我驗證 (round-trip 與 schoolbook 比對)
  3. 輸出 .memh 檔給 Verilog testbench 用

所有 Verilog RTL 的「正確答案」都來自這個檔。

-------------------------------------------------------------------------
Kyber 參數 (FIPS-203 標準)
-------------------------------------------------------------------------
  n    = 256
  q    = 3329 (12-bit 質數)
  ZETA = 17     是 256-th primitive root of unity mod q
                (亦即 ZETA^256 mod q = 1, ZETA^128 mod q = -1 = 3328)

-------------------------------------------------------------------------
Incomplete NTT
-------------------------------------------------------------------------
  因為 q=3329 不存在 512-th root of unity,所以 x^256 + 1 在 Z_q 上
  分不到一次多項式,最多分到 128 個二次多項式:
    x^256 + 1 = ∏_{i=0..127} (x^2 - ω^(2·br7(i)+1))
  所以 NTT 只跑 7 層,留下 128 個 degree-1 polynomial,後面用 PWM
  做 base multiplication。

-------------------------------------------------------------------------
NTT / INTT 演算法
-------------------------------------------------------------------------
  NTT 用 DIT (Cooley-Tukey),輸入自然序、輸出 bit-reversed-pair 序
  INTT 用 DIF (Gentleman-Sande),反過來

  關鍵:INTT 用「同一張 ZETAS 表」(不是 inverse 表),Kyber 官方 C
  reference 是這樣寫的。這跟 BU 的 GS 模式裡用 (b - a) 不用 (a - b) 對應。
=============================================================================
"""

N    = 256
Q    = 3329
ZETA = 17


# ============================== helpers =====================================
def bitrev(x, bits):
    """位元反轉 (e.g. bitrev(5, 3) = bitrev(101) = 101 = 5)"""
    r = 0
    for _ in range(bits):
        r = (r << 1) | (x & 1)
        x >>= 1
    return r


def modinv(a, m):
    """模反元素 a^(-1) mod m"""
    return pow(a, -1, m)


# ============================== twiddle tables ==============================
# ZETAS[k]     = ZETA ^ bitrev7(k)        for k = 0..127  (給 NTT/INTT 用)
# ZETAS_PWM[k] = ZETA ^ (2*bitrev7(k)+1)  for k = 0..127  (給 PWM 用)
# 這兩張表會 dump 成 .memh 給 Verilog 當 ROM 內容
ZETAS     = [pow(ZETA, bitrev(k, 7), Q) for k in range(128)]
ZETAS_PWM = [pow(ZETA, 2*bitrev(k, 7) + 1, Q) for k in range(128)]


# ============================== NTT (DIT) ===================================
# 直接翻譯自 pqcrystals-kyber/ref/ntt.c 的 ntt() 函數,
# 一字一句對應,確保跟標準 reference 完全一致。
#
# 演算法結構:
#   for len = 128, 64, 32, ..., 2:     # 7 stages
#     for start = 0; start < 256; start += 2*len:
#       zeta = ZETAS[k++]
#       for j = start..start+len-1:
#         t = zeta * a[j+len]
#         a[j+len] = a[j] - t
#         a[j]     = a[j] + t
# ============================================================================
def ntt(a):
    a = list(a)
    k = 1
    length = 128
    while length >= 2:
        start = 0
        while start < N:
            zeta = ZETAS[k]; k += 1
            for j in range(start, start + length):
                t = (zeta * a[j + length]) % Q
                a[j + length] = (a[j] - t) % Q
                a[j]          = (a[j] + t) % Q
            start += 2 * length
        length >>= 1
    return a


# ============================== INTT (DIF, fused ÷2) ========================
# 採用論文 Li-Tian-Hu-Wang (TCAD 2023) Section II-C 的 fused 演算法。
#
# 標準 GS-DIF INTT:
#   a' = a + b
#   b' = (a - b) * zeta
#   最後 × 128^{-1} mod q (= × 3303)
#
# Fused 版本:把 ÷2 折進每一層 BU
#   a' = (a + b) / 2 mod q
#   b' = (a - b) / 2 * zeta mod q
#   7 層 ÷2 後 = ÷128,自動完成標準算法最後的 × 128^{-1}
#   結束不需要額外的 scaling loop。
#
# 模 q 的 ÷2:
#   2^{-1} mod 3329 = 1665
#   所以 x/2 mod q = x * 1665 mod q
# ============================================================================
INV2 = modinv(2, Q)      # 1665

def intt(a):
    """Fused INTT: ÷2 distributed into each stage, no final scaling needed."""
    a = list(a)
    k = 127
    length = 2
    while length <= 128:
        start = 0
        while start < N:
            zeta = ZETAS[k]; k -= 1
            for j in range(start, start + length):
                t = a[j]
                # a' = (a + b) / 2 mod q
                a[j]          = ((t + a[j + length]) * INV2) % Q
                # b' = (a - b) / 2 * zeta mod q  (注意:(b - a) 不是 (a - b)!)
                a[j + length] = ((a[j + length] - t) * INV2) % Q
                a[j + length] = (zeta * a[j + length]) % Q
            start += 2 * length
        length <<= 1
    # 不需要 final × 128^{-1},因為 7 層 ÷2 已經 = ÷128
    return a


# ============================== PWM (Base Multiplication) ===================
# 對 128 對二次多項式做乘法。每對處理:
#   (a[2i] + a[2i+1]·X) × (b[2i] + b[2i+1]·X) mod (X^2 - ZETAS_PWM[i])
#
# 展開:
#   c0 = a0·b0 + a1·b1·ζ
#   c1 = a0·b1 + a1·b0
# ============================================================================
def pwm(a, b):
    r = [0]*N
    for i in range(128):
        a0, a1 = a[2*i], a[2*i + 1]
        b0, b1 = b[2*i], b[2*i + 1]
        z = ZETAS_PWM[i]
        c0 = (a0*b0 + ((a1*b1) % Q) * z) % Q
        c1 = (a0*b1 + a1*b0) % Q
        r[2*i]     = c0
        r[2*i + 1] = c1
    return r


# ============================== schoolbook (golden) =========================
# 暴力 O(n^2) 多項式乘法 mod (x^n + 1),用來當 NTT 結果的 golden reference。
# x^n + 1 的 negacyclic 性質:當 i+j >= n 時,係數要乘 -1 (wrap-around with sign)。
# ============================================================================
def schoolbook(a, b):
    r = [0]*N
    for i in range(N):
        for j in range(N):
            k = i + j
            v = a[i] * b[j]
            if k >= N:
                k -= N
                v = -v
            r[k] = (r[k] + v) % Q
    return r


# ============================== BRAM packing =================================
# 把 256 個 12-bit 係數打包成 128 個 24-bit entries:
#   entry[i] = (coef[2i+1] << 12) | coef[2i]
# 也就是「偶 polynomial 的係數放低位,奇 polynomial 的係數放高位」。
# 這對應到 Day 2 開始的 dual-port BRAM 設計。
# ============================================================================
def pack_bram(coefs):
    assert len(coefs) == N
    return [((coefs[2*i + 1] & 0xFFF) << 12) | (coefs[2*i] & 0xFFF)
            for i in range(128)]


# ============================== Barrett model ===============================
# Python 版的標準 Barrett,用來 cross-check Verilog 實作。
# (我們真正用的是 Li-Tian low-complexity Barrett,但兩者結果應該一致。)
# ============================================================================
BARRETT_M = (1 << 26) // Q

def barrett(c):
    assert 0 <= c < (1 << 24)
    q_est = (c * BARRETT_M) >> 26
    r = c - q_est * Q
    if r >= Q:
        r -= Q
    return r


# ============================== self-tests ==================================
def self_test():
    import random
    random.seed(0)

    # 1. Barrett 隨機 10000 case
    for _ in range(10000):
        c = random.randrange(1 << 24)
        assert barrett(c) == c % Q, f"Barrett wrong for c={c}"

    # 2. NTT round-trip: intt(ntt(x)) == x
    v = [random.randrange(Q) for _ in range(N)]
    assert intt(ntt(v)) == v, "NTT round-trip failed"

    # 3. NTT-based multiplication == schoolbook
    a = [random.randrange(Q) for _ in range(N)]
    b = [random.randrange(Q) for _ in range(N)]
    c_school  = schoolbook(a, b)
    c_via_ntt = intt(pwm(ntt(a), ntt(b)))
    assert c_school == c_via_ntt, "NTT-based mul mismatch"

    return a, b, c_school


# ============================== file output =================================
def write_memh(path, values, width_bits):
    """寫成 Verilog $readmemh 可讀的格式 (一行一個 hex value)"""
    width_hex = (width_bits + 3) // 4
    with open(path, "w") as f:
        for v in values:
            f.write(f"{v:0{width_hex}x}\n")


def main():
    a, b, c_gold = self_test()
    print("[ref_model] self-test PASSED  "
          "(Barrett + NTT round-trip + NTT-mul vs schoolbook)")

    # ---- twiddle ROMs (給 Verilog ROM 用) ----
    write_memh("zetas.memh",     ZETAS,     12)
    write_memh("zetas_pwm.memh", ZETAS_PWM, 12)

    # ---- 12-bit 單一係數向量 (給 unit testbench 用) ----
    a_ntt = ntt(a)
    b_ntt = ntt(b)
    c_pwm = pwm(a_ntt, b_ntt)
    write_memh("tv_a.memh",      a,      12)
    write_memh("tv_b.memh",      b,      12)
    write_memh("tv_a_ntt.memh",  a_ntt,  12)
    write_memh("tv_b_ntt.memh",  b_ntt,  12)
    write_memh("tv_c_pwm.memh",  c_pwm,  12)
    write_memh("tv_c_gold.memh", c_gold, 12)

    # ---- 24-bit BRAM 打包格式 (給 Day 2 之後的整合 testbench 用) ----
    write_memh("tv_a_bram.memh",     pack_bram(a),      24)
    write_memh("tv_b_bram.memh",     pack_bram(b),      24)
    write_memh("tv_a_ntt_bram.memh", pack_bram(a_ntt),  24)
    write_memh("tv_b_ntt_bram.memh", pack_bram(b_ntt),  24)
    write_memh("tv_c_bram.memh",     pack_bram(c_gold), 24)

    # ---- 多組額外測資 (給 multi-vector test 用) ----
    import random
    extra_seeds = [42, 1234, 0xdeadbeef]
    for i, sd in enumerate(extra_seeds):
        random.seed(sd)
        v = [random.randrange(Q) for _ in range(N)]
        v_ntt = ntt(v)
        write_memh(f"tv_multi_{i}_bram.memh",     pack_bram(v),     24)
        write_memh(f"tv_multi_{i}_ntt_bram.memh", pack_bram(v_ntt), 24)

    # ---- 多組 polymul 測資 (a×b → c) ----
    polymul_cases = [
        ("polymul_0", 100, 200),     # 一般 case (seed pair)
        ("polymul_1", 7,   13),      # 不同 seed
        ("polymul_2", 0xc0ffee, 0xbeef),  # 大 seed
        ("polymul_3", 1,   2),       # 簡單 seed
        ("polymul_4", 0,   1),       # 邊界
    ]
    for name, sa, sb in polymul_cases:
        random.seed(sa)
        a_v = [random.randrange(Q) for _ in range(N)]
        random.seed(sb)
        b_v = [random.randrange(Q) for _ in range(N)]
        c_v = schoolbook(a_v, b_v)
        # 同時用 NTT 路徑算一次驗證 Python 自己一致
        assert intt(pwm(ntt(a_v), ntt(b_v))) == c_v, f"{name} self-check failed"
        write_memh(f"tv_{name}_a_bram.memh", pack_bram(a_v), 24)
        write_memh(f"tv_{name}_b_bram.memh", pack_bram(b_v), 24)
        write_memh(f"tv_{name}_c_bram.memh", pack_bram(c_v), 24)

    print("[ref_model] memh files written.")
    print(f"[ref_model]   extra: tv_multi_0..2 (seeds {extra_seeds})")
    print(f"[ref_model]   polymul cases: {[c[0] for c in polymul_cases]}")


if __name__ == "__main__":
    main()
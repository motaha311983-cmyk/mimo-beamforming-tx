import numpy as np
import os
import sys

# ... (Helper Functions تفضل زي ما هي) ...
def verilog_slice_19_4(val_20bit):
    u_val = val_20bit & 0xFFFFF
    sliced = u_val >> 4
    return sliced if sliced < 0x8000 else sliced - 0x10000

def to_s16(v):
    v &= 0xFFFF
    return v if v < 0x8000 else v - 0x10000

def to_s20(v):
    v &= 0xFFFFF
    return v if v < 0x80000 else v - 0x100000

# ================= FIR =================
def HFB(x, h):
    delay_line = [0] * 16
    even_out, odd_out = [], []
    for sample in x:
        delay_line = [int(sample)] + delay_line[:-1]
        sum_even = sum(h[k] * delay_line[k] for k in range(16))
        even_out.append(to_s16(sum_even >> 9))
        odd_out.append(to_s16(delay_line[8] >> 1))
    return np.array(even_out), np.array(odd_out)

def mux(even, odd):
    out, sel = [], 0
    for i in range(len(even)):
        out.append(even[i] if sel == 1 else odd[i])
        sel ^= 1
    return np.array(out)

def comb_logic(x):
    n1, n2 = 0, 0
    res = [[], [], [], []]
    for s in x:
        s = int(s)
        a0 = to_s20(s + (n1 << 3) + (n1 << 2) + (n2 << 1) + n2)
        a1 = to_s20((s << 1) + s + (n1 << 3) + (n1 << 2) + n2)
        a2 = to_s20((s << 2) + (s << 1) + (n1 << 3) + (n1 << 1))
        a3 = to_s20((s << 3) + (s << 1) + (n1 << 2) + (n1 << 1))
        res[0].append(verilog_slice_19_4(a0))
        res[1].append(verilog_slice_19_4(a1))
        res[2].append(verilog_slice_19_4(a2))
        res[3].append(verilog_slice_19_4(a3))
        n2, n1 = n1, s
    return res

# ================= Main =================
# ... (نفس الدوال المساعدة HFB, mux, comb_logic تفضل زي ما هي) ...

def run():
    project_path = r"C:\Users\ASAA\OneDrive\Desktop\project\verification\fir"
    input_file  = os.path.join(project_path, "input_data.txt")
    output_file = os.path.join(project_path, "output.txt")
    h1 = [-1, 2, -4, 8, -14, 25, -50, 161, 161, -50, 25, -14, 8, -4, 2, -1]

    try:
        data = np.loadtxt(input_file, dtype=int)
        data = np.atleast_1d(data).flatten()

        # --- التعديل هنا: زودنا الأصفار لـ 2000 عشان الـ Pipelines تتملي والـ Output يوصل 128000 ---
        # بما إن الـ OSR الإجمالي 32، فإحنا محتاجين (4000 عينة) في الخرج النهائي
        # وعشان نضمن إننا عدينا الـ 128000، هنزود براح
        data_padded = np.append(data, [0] * 5000) 

        # ================= Processing =================
        even1, odd1 = HFB(data_padded, h1)
        s1 = mux(even1, odd1)

        c1 = comb_logic(s1)
        s2 = []
        for i in range(len(c1[0])):
            for k in range(4):
                s2.append(c1[k][i])

        c2 = comb_logic(s2)
        final_raw = []
        for i in range(len(c2[0])):
            for k in range(4):
                 final_raw.append(c2[k][i])
        final_raw = np.array(final_raw, dtype=np.int64)
        #final = final_raw >> 14
        final =final_raw 

        # --- التأكد إننا بناخد الـ 128000 عينة الأوائل بالظبط للمقارنة ---
        if len(final) > 128000:
            final = final[:128000]
        
        np.savetxt(output_file, final, fmt='%d')

        print("====================================")
        print("SUCCESS: Python model executed")
        print(f"Input samples (Raw) : {len(data)}")
        print(f"Output samples      : {len(final)}") # لازم تطلع 128000
        print("====================================")

    except Exception as e:
        print(f"PYTHON ERROR: {e}")
        sys.exit(1)

if __name__ == "__main__":
    run()
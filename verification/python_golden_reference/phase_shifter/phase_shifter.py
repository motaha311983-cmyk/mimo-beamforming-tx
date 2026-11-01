import numpy as np

def to_int16(x):
    return np.int16(x)

def phase_shift_model(I_in, Q_in, sin_in, cos_in):
    # تحويل صريح لـ 16 بت signed
    i_val  = np.int16(I_in)
    q_val  = np.int16(Q_in)
    sin_val = np.int16(sin_in)
    cos_val = np.int16(cos_in)

    # الحساب بناء على الرسمة (Figure 3.3)
    # I_out = (I*cos + Q*sin) >> 16
    # Q_out = (Q*cos - I*sin) >> 16
    
    # اضرب كـ integers كبيرة الأول وبعدين اجمع الـ Round
    I_temp = (int(i_val) * int(cos_val)) + (int(q_val) * int(sin_val))
    Q_temp = (int(q_val) * int(cos_val)) - (int(i_val) * int(sin_val))

    # الـ Rounding (إضافة 0x8000 ثم الشفت)
    # ملاحظة: الشفت في بايثون لـ int موجب بيعمل truncation صح
    I_res = (I_temp + 0x8000) >> 16
    Q_res = (Q_temp + 0x8000) >> 16

    # تحويل النتيجة النهائية لـ 16 بت signed عشان الـ Overflow
    return np.int16(I_res), np.int16(Q_res)

# =========================
# Load input sequence
# =========================
project_path = "C:/Users/ASAA/OneDrive/Desktop/project/verification/phase_shifter/"
input_file = project_path + "input_data.txt"

# File format assumed: I_in Q_in sin_in cos_in per line
data = np.loadtxt(input_file, dtype=int)

I_in  = data[:,0]
Q_in  = data[:,1]
sin_in = data[:,2]
cos_in = data[:,3]

# =========================
# Apply Phase Shift
# =========================
I_out = []
Q_out = []

for i in range(len(I_in)):
    i_out, q_out = phase_shift_model(I_in[i], Q_in[i], sin_in[i], cos_in[i])
    I_out.append(i_out)
    Q_out.append(q_out)

I_out = np.array(I_out, dtype=int)
Q_out = np.array(Q_out, dtype=int)

# =========================
# Save output
# =========================
output_file = project_path + "output.txt"
with open(output_file, "w") as f:
    for i in range(len(I_out)):
        f.write(f"{I_out[i]} {Q_out[i]}\n")

print("DONE Phase Shift Reference (bit-exact with RTL)")
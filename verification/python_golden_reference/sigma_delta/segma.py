import numpy as np

def to_signed_18(val):
    val = int(val) & 0x3FFFF
    if val >= 0x20000:
        val -= 0x40000
    return val

def SAR_MODEL_2nd_Order(inputs):
    accumulator1 = 0
    accumulator2 = 0
    out_1bit = 0

    results = []
    FB_MAX_VAL = 32767  # 18'sd32767

    for i in range(len(inputs)):
        input_data = int(inputs[i])

        # تحويل المدخل لـ 18 بت
        input_ext = to_signed_18(input_data)

        # الإزاحة لمخرج المسجل الثاني كما في الرسم
        feedback1 = to_signed_18(accumulator2 << 1)

        # التغذية الراجعة بناءً على المخرج
        feedback2 = FB_MAX_VAL if out_1bit == 1 else -FB_MAX_VAL

        # المجمع العلوي (Triple Adder)
        adder_top_out = to_signed_18(input_ext - accumulator1 + feedback1)

        # المجمع السفلي
        #adder_bottom_out = to_signed_18(accumulator2 - feedback2)
        adder_bottom_out = to_signed_18(adder_top_out - feedback2)

        # تحديث المسجلات للدورة القادمة
        accumulator1 = accumulator2
        accumulator2 = adder_bottom_out
        out_1bit = 1 if adder_top_out >= 0 else 0

        results.append(out_1bit)

    return np.array(results)

# --- كود البحث عن الـ Alignment الصح ---
path = 'C:/Users/ASAA/OneDrive/Desktop/project/verification/segma/'
raw_data = np.loadtxt(path + 'input_data.txt')

# تشغيل الموديل من الدرجة الثانية
base_res = SAR_MODEL_2nd_Order(raw_data)

# جرب الـ 3 احتمالات دول بالترتيب (واحد منهم هيعدي الـ 2784)
# احتمال 1: (بدون تشفيت خالص)
# res = base_res

# احتمال 2: (التوقيت اللي جاب 2784)
res = np.insert(base_res, 0, 0)[:-1]



np.savetxt(path + 'output.txt', res, fmt='%d')

%% ========================================================================
%  الكود الكامل والنهائي: البحث عن قيمة "a" المثلى لتعظيم الـ SNR
%  يدمج هذا الكود عملية البحث مع تشغيل Simulink وحساب الـ SNR
% =========================================================================

clear; clc; close all;

% --- الخطوة 1: إعداد معلمات البحث والمحاكاة ---

% اسم موديل Simulink الخاص بك (مهم جدًا: قم بتغييره)
model_name = 'EFB2_new'; 

% معلمات المحاكاة (تأكد من مطابقتها لإعدادات الموديل)
fs = 100e6;       % تردد أخذ العينات (Hz)
osr = 32;         % نسبة الإفراط في أخذ العينات

% معلمات البحث
% نطاق البحث عن 'a'. يمكنك جعل الخطوة أصغر (e.g., 0.001) لدقة أعلى
% أو أكبر (e.g., 0.005) لسرعة أكبر.
a_values = 0.1000:0.002:1.000; 

% مصفوفات لتخزين النتائج
snr_results = zeros(size(a_values));

fprintf('--- بدء عملية البحث عن "a" المثلى (قد تستغرق بعض الوقت) ---\n');


% --- الخطوة 2: الحلقة الرئيسية للبحث والمحاكاة ---

for i = 1:length(a_values)
    a = a_values(i);
    
    % --- أ) حساب معاملات EFB لقيمة 'a' الحالية ---
    n1 = -3 * a;
    n2 = 3 * a^2;
    n3 = -a^3;
    c_coeffs = [-n1, -n2, -n3];
    
    fprintf('التجربة %d/%d: جاري الاختبار مع a = %.4f ... ', i, length(a_values), a);
    
    % --- ب) إعداد وتشغيل محاكاة Simulink ---
    % إرسال المعاملات الجديدة إلى مساحة عمل Simulink
    assignin('base', 'c1_sim', c_coeffs(1));
    assignin('base', 'c2_sim', c_coeffs(2));
    assignin('base', 'c3_sim', c_coeffs(3));
    
    % تشغيل المحاكاة. 'out' هو المتغير الذي يحفظ فيه Simulink النتائج
    try
        out = sim(model_name, 'SrcWorkspace', 'current');
        
        % استخراج إشارة الخرج
        signal_data = out.output_signal.Data;
        N = length(signal_data);

        % --- ج) حساب الـ SNR (باستخدام الكود الخاص بك) ---
        [psd, f] = pwelch(signal_data, hann(N), 0, N, fs, 'power');
        BW_bins = floor(N / (2 * osr));
        
        if BW_bins > length(psd), BW_bins = length(psd); end
        
        [signal_power, signal_bin_index] = max(psd(1:BW_bins));
        
        noise_bins_to_exclude = max(1, signal_bin_index-5) : min(BW_bins, signal_bin_index+5);
        all_in_band_bins = 1:BW_bins;
        noise_bins = setdiff(all_in_band_bins, noise_bins_to_exclude);
        
        noise_power = sum(psd(noise_bins));
        
        if signal_power > 0 && noise_power > 0
            current_snr = 10 * log10(signal_power / noise_power);
        else
            current_snr = -Inf; % قيمة سيئة جدًا إذا كانت الحسابات غير صالحة
        end
        
    catch ME
        % في حالة فشل المحاكاة (غالبًا بسبب عدم الاستقرار الشديد)
        fprintf('فشلت المحاكاة! (النظام غير مستقر على الأرجح). ');
        current_snr = -Inf; % تسجيل SNR منهار
    end
    
    % تخزين النتيجة
    snr_results(i) = current_snr;
    
    fprintf('النتيجة SNR = %.2f dB\n', snr_results(i));
end

fprintf('--- انتهت عملية البحث ---\n\n');


% --- الخطوة 3: التحليل والرسم ---

figure('Name', 'SNR vs. Stability Factor "a"');
plot(a_values, snr_results, 'b-o', 'LineWidth', 1.5, 'MarkerFaceColor', 'b');
grid on;
title('تأثير معامل التعديل "a" على الـ SNR', 'FontSize', 14);
xlabel('قيمة المعامل "a"', 'FontSize', 12);
ylabel('SNR (dB)', 'FontSize', 12);

% إيجاد أفضل نتيجة وعرضها
[max_snr, max_idx]= max(snr_results);

% التحقق من وجود نتيجة صالحة
if isempty(max_idx) || max_snr == -Inf
    fprintf('*** لم يتم العثور على نتيجة صالحة. قد يكون النظام غير مستقر لجميع قيم "a" التي تم اختبارها. ***\n');
else
    optimal_a = a_values(max_idx);
    fprintf('*** أفضل نتيجة تم العثور عليها ***\n');
    fprintf('القيمة المثلى لـ "a" هي: %.4f\n', optimal_a);
    fprintf('أقصى SNR تم تحقيقه: %.2f dB\n', max_snr);

    % إضافة خطوط على الرسم لتوضيح النقطة المثلى
    hold on;
    plot(optimal_a, max_snr, 'r*', 'MarkerSize', 12, 'LineWidth', 2);
    legend('نتائج المحاكاة', 'النقطة المثلى', 'Location', 'best');
    hold off;
end

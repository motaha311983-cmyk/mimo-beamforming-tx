% --- General Specifications ---
tone_freq = 100e3;      % Hz, Input tone frequency
Fs_in = 3.125e6;        % Hz, Original input sample rate
Astop1 = 60;            % dB, Stopband attenuation target for high SNR
Astop2 = 100; 

% --- Stage 1 Design (HBF1) ---
L1 = 2;
Fs1 = Fs_in * L1;       % 6.25 MHz
Fpass1 = 1.2e6;         % Passband edge (trade-off decision)
Fstop1 = Fs1/2 - Fpass1;
TW1 = Fstop1 - Fpass1;

spec_obj1 = fdesign.halfband('TW,Ast', TW1, Astop1, Fs1);
fir_obj1 = design(spec_obj1, 'equiripple');
h1 = fir_obj1.Numerator;
N1 = length(h1) - 1; 
fprintf('Stage 1 (HBF1): %d coefficients generated.\n', length(h1));
% --- المرحلة الثانية (HBF2) ---
L2 = 2; 
Fs2 = Fs1 * L2;
Fpass2 = 1.2e6; 
Fstop2 = Fs2/2 - Fpass2;
spec_obj2 = fdesign.halfband('TW,Ast', Fstop2 - Fpass2, Astop2, Fs2);
fir_obj2 = design(spec_obj2, 'equiripple');
h2 = fir_obj2.Numerator;
N2 = length(h2) - 1; 
fprintf('Stage 2 (HBF2): %d coefficients generated.\n', length(h2));



% ================= Stage 3 (Comb Filter) =================

L3 = 8;  % Interpolation factor
K3 = 3;  % Order of the Comb filter
h_avg = ones(1, L3);
h3 = h_avg; 
for i = 2:K3
    h3 = conv(h3, h_avg);
end
order3 = length(h3) - 1;
Fs3 = Fs2 * L3;


% ================= Stage 3 (Comb Filter) =================
%L3 = 8;  % Interpolation factor
%K3 = 3;  % Order of the Comb filter
%h_avg = ones(1, L3);
%h3 = h_avg;
%for i = 2:K3
   % h3 = conv(h3, h_avg);
%end
%order3 = length(h3) - 1;
%Fs3 = Fs2 * L3;

% Normalize the filter taps to the gain
%h3_normalized = h3 / sum(h3); 


%% COEFFICIENT QUANTIZATION (Integer Conversion)
 S = 2^9; % Scaling factor for 17-bit fixed-point representation 

% Quantize to Integers
h1_int = round(h1 * S);
h2_int = round(h2 * S);


% Normalized back for simulation (to maintain signal levels)
h1_q = h1_int / S; 
h2_q = h2_int / S;
% =========================================================================
% --- Part 2: Simulation and Performance Calculation ---
% =========================================================================

% --- 1. Generate Input Signal ---
num_samples_in = 2^16;
t_in = (0:num_samples_in-1)' / Fs_in;
s_in = sin(2*pi*tone_freq*t_in);

% --- 2. Pass Signal Through The Cascade (Using Quantized Coefficients) ---
interp1 = dsp.FIRInterpolator(L1, h1);
interp2 = dsp.FIRInterpolator(L2, h2);
interp3 = dsp.FIRInterpolator(L3, h3);
s_out_stage1 = interp1(s_in);
s_out_stage2 = interp2(s_out_stage1);
s_actual_out_final = interp3(s_out_stage2);

% --- 3. Calculate Total Group Delay ---
delay1_seconds = (N1 / 2) / Fs_in;
delay2_seconds = (N2 / 2) / Fs1; 
delay3_seconds = (order3 / 2) / Fs2;
total_delay_seconds = delay1_seconds + delay2_seconds + delay3_seconds;

% --- 4. Generate Ideal Output Signal ---
L_total = L1 * L2 * L3;
num_samples_out = num_samples_in * L_total;
t_out = (0:num_samples_out-1)' / Fs3;

total_gain = L1 * L2 * L3;
s_ideal_out_final = total_gain * sin(2*pi*tone_freq*(t_out - total_delay_seconds));

% --- Calculate SINAD ---
start_idx = round(num_samples_out / 2);
end_idx   = num_samples_out;
actual_stable = s_actual_out_final(start_idx:end_idx);

SINAD = sinad(actual_stable, Fs3);
ENOB = (SINAD - 1.76) / 6.02;
    
fprintf('\n--- Overall System Performance  ---\n');
fprintf('SINAD: %.2f dB\n', SINAD);
fprintf('ENOB: %.2f bits\n', ENOB);

% --- 7. Visualize Final Spectrum ---
figure;
spectrumAnalyzer = dsp.SpectrumAnalyzer('SampleRate', Fs3, 'ShowLegend', true, ...
    'Title', 'Final Output Spectrum (Quantized Coefficients)');
spectrumAnalyzer(s_actual_out_final);
fprintf('Stage 1 (HBF1): %d coefficients generated.\n', length(h1));
fprintf('\n=== Stage 1: HBF1 Coefficients (Q1.9) ===\n');
disp(h1_int.');
fprintf('Stage 2 (HBF2): %d coefficients generated.\n', length(h2));
fprintf('\n=== Stage 2: HBF2  Coefficients (Q1.9) ===\n');
disp(h2_int.');
fprintf('Stage 3 (HBF3): %d coefficients generated.\n', order3);
fprintf('\n=== Stage 3: CIC Comb Coefficients ===\n');
disp(h3 .');
% ================= Plot =================
%% ================= Frequency Response =================
% Stage 1
[H1, f1] = freqz(h1, 1, 2048, Fs1);

% Stage 2
[H2, f2] = freqz(h2, 1, 2048, Fs2);

% Stage 3 (CIC Comb)
[H3, f3] = freqz(h3, 1, 2048, Fs3);

% Plot
figure;
plot(f1/1e6, 20*log10(abs(H1))); hold on;
plot(f2/1e6, 20*log10(abs(H2)));
plot(f3/1e6, 20*log10(abs(H3)));
grid on;
xlabel('Frequency (MHz)');
ylabel('Magnitude (dB)');
legend('Stage 1 - HBF1','Stage 2 - HBF2','Stage 3 - CIC Comb');
title('Frequency Response of Half-band Filters & CIC Comb Filter');

% ================= Attenuation =================
Fstop1 = Fs1/2 - Fpass1;
idx1 = find(f1 >= Fstop1, 1);

att1 = -max(20*log10(abs(H1(idx1:end)) + eps));

Fstop2 = Fs2/2 - Fpass2;
idx2 = find(f2 >= Fstop2, 1);

att2 = -max(20*log10(abs(H2(idx2:end)) + eps));


F3_stop = Fs3/(2*L3);
att3 = -max(20*log10(abs(H3(f3 >= F3_stop))));



fprintf('Correct CIC attenuation: %.2f dB\n', att3);

fprintf('Achieved attenuation for H3 (Stopband): %.2f dB\n', att3);
fprintf('--- Achieved Attenuation ---\n');
fprintf('Achieved attenuation for H1 (Stopband): %.2f dB\n', att1);
fprintf('Achieved attenuation for H2 (Stopband): %.2f dB\n', att2);
fprintf('Achieved attenuation for H3 (Stopband): %.2f dB\n', att3);


% ================= FVTool =================
figure; fvtool(h1,1,'Fs',Fs1);
figure; fvtool(h2,1,'Fs',Fs2);        
figure; fvtool(h3,1,'Fs',Fs3);    
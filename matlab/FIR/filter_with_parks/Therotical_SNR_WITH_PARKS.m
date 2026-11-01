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

% --- Stage 2 Design (HBF2) ---
L2 = 2;
Fs2 = Fs1 * L2;         
Fpass2 = 1.2e6;        
Fstop2 = Fs2/2 - Fpass2;
TW2 = Fstop2 - Fpass2;

spec_obj2 = fdesign.halfband('TW,Ast', TW2, Astop2, Fs2);
fir_obj2 = design(spec_obj2, 'equiripple');
h2 = fir_obj2.Numerator;
N2 =  length(h2) - 1; 
% ================= Stage 3 =================
L3 = 8;
Fpass3 = Fpass1;
Astop_dB3 = 100;
taps3 = 40; % Order 15
order3 = taps3 - 1;
Fs3 = Fs2 * L3; % 100 MHz
Fnyq3 = Fs3 / 2; % 50 MHz
alias3_freq = Fs3 / L3;
F3_pass = Fpass3;
F3_stop = alias3_freq - Fpass3; 
f_edges3 = [0, F3_pass, F3_stop, Fnyq3];
amp_spec3 = [1, 1, 0, 0];
weights3 = [1, 10^(Astop_dB3 / 20)];
h3 = firpm(order3, f_edges3 / Fnyq3, amp_spec3, weights3);
fprintf('--- Filter Design Results ---\n');
fprintf('Stage 1: Order N1 = %d\n', N1);
fprintf('Stage 2: Order N2 = %d\n', N2);
fprintf('Stage 3: Order N3 = %d\n', order3);
% =========================================================================
% --- Part 2: Simulation and Performance Calculation ---
% =========================================================================

% --- 1. Generate Input Signal ---
num_samples_in = 2^16;
t_in = (0:num_samples_in-1)' / Fs_in;
s_in = sin(2*pi*tone_freq*t_in);

% --- 2. Pass Signal Through The Cascade ---
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
total_delay_seconds = delay1_seconds + delay2_seconds+delay3_seconds;

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
    
    fprintf('\n--- Overall System Performance ---\n');
    fprintf('SINAD: %.2f dB\n', SINAD);
    fprintf('ENOB: %.2f bits\n', ENOB);


% --- 7. (Optional) Visualize Final Spectrum ---
figure;
spectrumAnalyzer = dsp.SpectrumAnalyzer('SampleRate', Fs3, 'ShowLegend', true, ...
    'Title', 'Final Output Spectrum');
spectrumAnalyzer(s_actual_out_final);

% --- 6. Display Results ---
%fprintf('\n--- Overall System Performance ---\n');
%fprintf('SINAD: %.2f dB\n', SINAD);
%fprintf('ENOB: %.2f bits\n', ENOB);

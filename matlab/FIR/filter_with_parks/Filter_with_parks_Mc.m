Fs_in = 3.125e6; 
L1 = 2;
Fs1 = Fs_in * L1;

Astop1 = 60;
Fpass1 = 1.2e6;
Fstop1 = Fs1/2 - Fpass1;
TW1    = Fstop1 - Fpass1;

% ================= Stage 1 =================
spec_obj1 = fdesign.halfband('TW,Ast', TW1, Astop1, Fs1);
fir_obj1  = design(spec_obj1, 'equiripple');

h1 = fir_obj1.Numerator;
N1 = length(h1) - 1;

% ================= Stage 2 =================
L2 = 2;
Fs2 = Fs1 * L2;

Astop2 = 100;
Fpass2 = 2.5e6;               
Fstop2 = Fs2/2 - Fpass2;
TW2    = Fstop2 - Fpass2;

spec_obj2 = fdesign.halfband('TW,Ast', TW2, Astop2, Fs2);
fir_obj2  = design(spec_obj2, 'equiripple');

h2 = fir_obj2.Numerator;
N2 = length(h2) - 1;
% ================= Stage 3 =================
L3 = 8;
Fpass3 = 1.2e6;
Astop_dB3 = 100;
taps3 = 40; % Order 39
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
% ================= Display =================
fprintf('  - i/p frequency: %.3f MHz\n', Fs_in/1e6);
fprintf('  - o/p frequency (Stage 1): %.3f MHz\n', Fs1/1e6);
fprintf('  - Order Stage 1: %d\n', N1);
disp(h1');

fprintf('  - o/p frequency (Stage 2): %.3f MHz\n', Fs2/1e6);
fprintf('  - Order Stage 2: %d\n', N2);
disp(h2');

fprintf('  - o/p frequency (Stage 3): %.3f MHz\n', Fs3/1e6);
fprintf('  - Order Stage 2: %d\n', order3);
disp(h3');
% ================= Frequency Response =================
nfft = 31250; 
[H1, f1] = freqz(h1, 1, nfft, Fs1);
[H2, f2] = freqz(h2, 1, nfft, Fs2);
[H3, f3] = freqz(h3, 1, nfft, Fs3);

% ================= Attenuation =================
Fstop1 = Fs1/2 - Fpass1;
idx1 = find(f1 >= Fstop1, 1);

att1 = -max(20*log10(abs(H1(idx1:end)) + eps));

Fstop2 = Fs2/2 - Fpass2;
idx2 = find(f2 >= Fstop2, 1);

att2 = -max(20*log10(abs(H2(idx2:end)) + eps));


idx3 = find(f3 >= F3_stop, 1);

att3 = -max(20*log10(abs(H3(idx3:end)) + eps));

fprintf('--- Achieved Attenuation ---\n');
fprintf('Achieved attenuation for H1 (Stopband): %.2f dB\n', att1);
fprintf('Achieved attenuation for H2 (Stopband): %.2f dB\n', att2);
fprintf('Achieved attenuation for H3 (Stopband): %.2f dB\n', att3);
% ================= Plot =================
figure;
plot(f1/1e6, 20*log10(abs(H1))); hold on;
plot(f2/1e6, 20*log10(abs(H2)));
plot(f3/1e6, 20*log10(abs(H3)));
grid on;
xlabel('Frequency (MHz)');
ylabel('Magnitude (dB)');
legend('Stage 1','Stage 2','Stage 3');
title('Frequency Response of Half-band Filters & Stage(L=8) used Parks method ');

% ================= FVTool =================
figure; fvtool(h1,1,'Fs',Fs1);
figure; fvtool(h2,1,'Fs',Fs2);        
figure; fvtool(h3,1,'Fs',Fs3);    
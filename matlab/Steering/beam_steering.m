% 1. استخراج البيانات
data = output_signals;
raw_sample = data(end, :);  



N = length(raw_sample);

complex_sample = hilbert(real(raw_sample)) + 1j*imag(raw_sample);
if all(imag(complex_sample) == 0)
    complex_sample = hilbert(raw_sample); 
end

d_lambda = 0.5;
target_angle = 30;


angles = -90:0.1:90;
AF = zeros(size(angles));


w = chebwin(N,80)';


k = 0:N-1;

for i = 1:length(angles)
    theta = deg2rad(angles(i));
    psi = 2*pi*d_lambda*sin(theta);

    AF(i) = sum(complex_sample .* w .* exp(-1j*k*psi));
end


AF_mag = abs(AF);
AF_dB = 20*log10(AF_mag / max(AF_mag));

% الرسم
figure('Color','w','Name','Hardware Beamforming Monitor');

subplot(2,1,1)
plot(angles,AF_dB,'LineWidth',2)
grid on
hold on
xline(target_angle,'--b','Hardware Target')
xlabel('Angle (deg)')
ylabel('Magnitude (dB)')
title('Monitoring Hardware Beamforming')
ylim([-80 0])

subplot(2,1,2)
polarplot(deg2rad(angles),AF_mag/max(AF_mag),'LineWidth',2)
title('Hardware Polar Pattern')
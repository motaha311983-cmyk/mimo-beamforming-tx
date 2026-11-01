data = output_signals;
raw_sample = data(end,:);
N = length(raw_sample);
d_lambda = 0.5;



angles = -90:0.1:90;
AF = zeros(size(angles));

k = 0:N-1;
w = chebwin(N,80)';

for i = 1:length(angles)

    theta = deg2rad(angles(i));
    psi = 2*pi*d_lambda*sin(theta);

    AF(i) = sum( raw_sample .* w .* exp(-1j*k*psi));

end

AF_mag = abs(AF);
AF_dB = 20*log10(AF_mag/max(AF_mag));

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
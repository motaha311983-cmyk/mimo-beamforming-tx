
%% Load Simulink outputs
s1 = output_chain1;
s2 = output_chain2;
s3 = output_chain3;
s4 = output_chain4;

%% Extract complex amplitudes
a1 = mean(s1);
a2 = mean(s2);
a3 = mean(s3);
a4 = mean(s4);

%% Antenna parameters
c = 3e8;
fc = 100e6;

lambda = c/fc;
d = lambda/2;

%% Observation angles
theta = -90:0.2:90;
theta_rad = deg2rad(theta);

P = zeros(size(theta));

%% Beamforming calculation
for k = 1:length(theta)

    phase = 2*pi*d/lambda*sin(theta_rad(k));

    y = a1 ...
        + a2*exp(1j*phase) ...
        + a3*exp(1j*2*phase) ...
        + a4*exp(1j*3*phase);

    P(k) = abs(y);

end

%% Normalize
P = P/max(P);
figure
polarplot(theta_rad,P,'k','LineWidth',2)

title('Endfire Directivity Pattern (4 Chains)')

set(gca,'ThetaZeroLocation','top')
set(gca,'ThetaDir','counterclockwise')

thetalim([-90 90])
rlim([0 1])
grid on
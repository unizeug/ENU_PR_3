clear

%periodisches bipolars Rechtecksignal
%Amplitude: 2V
A = 1.0;
%Dauer des Signals: 1.0s
T_ges = 1.0;
%Abtastfrequenz: 1MHz
f_T = 1E6;
%Frequenz des Signals: 100Hz
f = 100;
fc = 2000;
%DutyCycle: 0 < alpha < 1
alpha = 0.5;
%Berechnung des Rechtecksigals
r = rechteck(A, 0.5, f, f_T, T_ges);

d = dreieck(A, 0.5, f, f_T, T_ges);

c = cosinus(A, 0.5, fc, f_T, T_ges);



% plotFFT(c.*d, T_ges, f_T, A, 1)
% 
% 
% plotFFT(1/2.*c.*d.*c, T_ges, f_T, A, 2)

% 
% plotFFT(c, T_ges, f_T, A, 3)



%Dauer des Signals: 1.0s
T_ges = 0.5;

% u
f = 1000;
t = 0:(1/f_T):T_ges;
N = round(f_T*T_ges);
um = zeros(1,N);


u = cos(2*pi*f.*t);
%u=cosinus(A, 0.5, f, f_T, T_ges);

K_FM = 1/200;


%integ = cumsum(u);



for k = 1:N

    u = cos(2*pi*f.*t(k));
    um(k) = A+1+A .* u .*cos(2*pi*fc*t(k));
    
    % phi = 2*pi*f_c*t + integ(t)
    %um(k) = A * cos(2*pi*fc*t(k) + K_FM *integ(k));
    
end;


plotFFT(u, T_ges, f_T, A, 2)

FFTshiftplot(abs(um), T_ges, f_T, A,'r', 3)

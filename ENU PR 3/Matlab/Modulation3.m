clear

dre_mo=load('..\Messwerte\2k_100_dre_mo.mat');
dre_modem=load('..\Messwerte\2k_100_dre_modem.mat');
rec_mo=load('..\Messwerte\2k_100_rec_mo.mat');
rec_modem=load('..\Messwerte\2k_100_rec_modem.mat');
sin_mo=load('..\Messwerte\2k_100_sin_mo.mat');
sin_modem=load('..\Messwerte\2k_100_sin_modem.mat');
sin_modemfil=load('..\Messwerte\2k_100_sin_modem_fil1.mat');
spra_mo=load('..\Messwerte\2k_100_spra.mat');
fre_A_1k_B_10=load('..\Messwerte\fre_A_1k_B_10_modem_A_VCOout_B_comp');


% t=linspace(Tstart, 0.025 ,length(A));
% plot(t,B);
S=fre_A_1k_B_10;
T_ges=S.Tinterval*S.Length;
f_T=1/(S.Tinterval);
B=1;
Tend=S.Tinterval*S.Length;
% t=linspace(0, Tend ,length(A));
% plot(t,A);
%plotFFT(A, T_ges, f_T, B, 2);



FFTshiftplot(S.B, T_ges, f_T, B,'r', 2);
%FFTshiftplot(S.B, T_ges, f_T, B,'b', 2);

clear all
 
 
 
dre = load('../Messwerte/2k_100_dre.mat');
dre_mo = load('../Messwerte/2k_100_dre_mo.mat');
dre_modem= load('../Messwerte/2k_100_dre_modem.mat');
rec = load('../Messwerte/2k_100_rec.mat');
rec_mo = load('../Messwerte/2k_100_rec_mo.mat');
rec_modem = load('../Messwerte/2k_100_rec_modem.mat');
sin = load('../Messwerte/2k_100_sin.mat');
sin_mo = load('../Messwerte/2k_100_sin_mo.mat');
sin_modem = load('../Messwerte/2k_100_sin_modem.mat');
sin_modem_fil1= load('../Messwerte/2k_100_sin_modem_fil1.mat');
spra = load('../Messwerte/2k_100_spra.mat');
FFTshiftplot(rec_modem.A,length(rec_modem.B)/1000000,1000000,4,'r',3)



f100_05 = load('../Messwerte/fre_100Hz_05V.mat');
f100_1 = load('../Messwerte/fre_100Hz_1V.mat');
f100_2 = load('../Messwerte/fre_100Hz_2V.mat');
f200_05 = load('../Messwerte/fre_200Hz_05V.mat');
f200_1 = load('../Messwerte/fre_200Hz_1V.mat');
f200_ = load('../Messwerte/fre_200Hz_2V.mat');
f50_05 = load('../Messwerte/fre_50Hz_05V.mat');
f50_1 = load('../Messwerte/fre_50Hz_1V.mat');
f50_2 = load('../Messwerte/fre_50Hz_2V.mat');
% spra = load('../Messwerte/fre_A_1k_B_10.mat');
% spra = load('../Messwerte/fre_A_1k_B_10_modem_A_VCOout_B_comp.mat');
% spra = load('../Messwerte/fre_A_1k_B_10_modem_comp.mat');
% spra = load('../Messwerte/fre_A_1k_B_10_modem_fil.mat');
% spra = load('../Messwerte/fre_A_1k_B_10_modem_TwPu.mat');
% spra = load('../Messwerte/fre_A_1k_B_10_spec.mat');
% spra = load('../Messwerte/fre_A_3k_B_10.mat');
% spra = load('../Messwerte/fre_A_3k_B_10_spec.mat');

figure(5)

load('../Messwerte/2k_100_sin_modem.mat');

Tend=Tinterval*Length;
t=linspace(Tstart, Tend ,length(A));
plot(t,B);



M = 1000000;
T = 6.399999961104186e-07*100000;
N = 78130;
Ab = N/T;

T_ges = 0.052;
f_T = N / T_ges

FFTshiftplot(sin_modem.A,T_ges,f_T,4,'r',3)

FFTshiftplot(f100_05.A,T,Ab,4,'r',1)
FFTshiftplot(f100_05.A,N/M,M,4,'r',2)
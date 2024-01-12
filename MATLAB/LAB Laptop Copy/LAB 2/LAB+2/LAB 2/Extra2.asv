clc;
clear all;
close all;

s = "Enter value of R(ohm):";
R = input(s);

V = 1:10:200;

I = V/R;

P=I.*V;

figure
plot(V,P)
title("V vs P (W)")
xlabel('Voltage')
ylabel('Power')

dB = 10 * log10(P);
figure
plot(V,dB)
title("V vs P (dB)")
xlabel('Voltage')
ylabel('Power')
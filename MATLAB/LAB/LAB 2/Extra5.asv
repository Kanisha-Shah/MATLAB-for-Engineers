clc;
clear all;
close all;

L=0.25E03;
C=0.1E09;
R=50;
V0=5E03;
f= 1:2:100;
w=2*pi*f;

Vr = (R * V0) ./ sqrt(R^2 + (w.*L - (1./(w.*C))).^2 );

plot(Vr,f)
title("Vrms vs f")
xlabel('Voltage')
ylabel('Frequency')

clc;
clear all;
close all;

f = 1:50:10000;

R = 16E03;
C = 10^(-6);

v0 = 2*pi.*f*R*C*1i;
v1 = 1 + 2*pi.*f*R*C*1i;

x = abs(v0)./abs(v1);

phase = angle(v0) - angle(v1);

figure
semilogx(f,x)
ylabel("Amplitude")
xlabel("Frequency")

figure
semilogx(f,phase)
xlabel("Frequency")
ylabel("Phase")
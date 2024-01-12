clc;
clear all;
close all;

s = "Enter value of P1:";
P1 = input(s);

s = "Enter value of P2:";
P2 = input(s);

dB = 10 * log10(P2/P1)


s = "Enter value of P2 in Array:";
P2a = input(s);

dBa = 10 * log10(P2a)

plot(P2a,dBa)
title("Linear Graph")
xlabel('P2')
ylabel('dB')

figure
semilogx(P2a,dBa)
title("Semi Logarithmic Linear Graph")
xlabel('log(P2)')
ylabel('dB')
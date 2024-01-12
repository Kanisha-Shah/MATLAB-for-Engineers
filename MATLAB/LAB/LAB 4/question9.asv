clc;
clear all;
close all;

p1 = 1;
p2 = 1:0.5:20;

dB = 10 .* log10(p2./p1)

figure(1)
plot(p2,dB);
ylabel("Decibal");
xlabel("Power");
title("Normal Graph");

figure(2)
semilogx(p2,dB);
ylabel("Decibal");
xlabel("Power");
title("Log Linear Graph");
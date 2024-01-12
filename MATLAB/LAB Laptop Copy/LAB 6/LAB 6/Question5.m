clc;
clear all;
close all;

t=0:0.1:10;
v=10*exp((-0.2+j*pi).*t);
plot(t,v)
title('T v/s V')
xlabel('V')
ylabel('T')

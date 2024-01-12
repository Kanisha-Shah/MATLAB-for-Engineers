clc;
close all;
clear all;

p=1000000;

theta = 0:pi/180:2*pi;
c = 0;
while c < 3
    s = 'Enter your E(Eccentricity)';
    e = input(s);
    r=p./(1-e.*cos(theta));
    plot(theta,r);
    hold on;
    c = c+1;
end

legend("e=0","e=0.25","e=0.5")
title("Radius v/s \theta_{r}")
xlabel("\theta_{r} [ Radians ]")
ylabel("Radius [ Metres ]")
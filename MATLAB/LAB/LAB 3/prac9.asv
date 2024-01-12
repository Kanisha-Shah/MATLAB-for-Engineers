clc;
clear all;
close all;

s = 'Enter your E(Eccentricity)';
E = input(s);

theta = 15:10:180;

p = 1000E03
r = p ./ (1- cos(theta) .* E)

if E == 0
    disp('Circular Orbit');
elseif E<=1 && E>=0
    disp('Elliptical Orbit');
elseif E>1
    disp('Hyperbolic Path');
end
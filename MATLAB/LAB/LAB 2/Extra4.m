clc;
clear all;
close all;

F = [20 30 25 20];
k = [200 250 300 400];

%Compression of Spring
x = F./k;
fprintf('\nCompression of Spring: ')
fprintf('%.3f\t', x)
%potential Energy
E = 0.5 * (k .* (x.^2));
fprintf('\n\nPotential Energy of Spring: ')
fprintf('%.3f\t', E)
%Maximum of them
fprintf('\n\nMaximum Energy of Spring: ')
fprintf('%.3f\t', max(E))


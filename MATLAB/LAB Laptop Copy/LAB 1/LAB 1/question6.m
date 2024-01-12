clc;
%clear all;
close all;

figure

x = 3; 
y = 4;

z = ( x^2 * y^3 ) / (x - y) ^ 2

plot(x,z) %Here it is plotted for a single value

figure %Opening a new window
x1 = [2,4,5,7,8,3];
y1 = [3,2,4,6,8,9];

z1 = ( x1.^2 .* y1.^3 ) ./ ((x1 - y1).^ 2)

plot(x1,z1) %Similarly it is plotted for a range of values
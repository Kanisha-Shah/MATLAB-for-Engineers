clc;
clear all;
close all;

s = 'Enter your x';
x = input(s);

s = 'Enter your y';
y = input(s);

if (x>=0 && y>=0)
    disp(x+y)
elseif (x>=0 && y<0)
    disp(x+y^2)
elseif (x<0 && y>=0)
    disp(x^2+y)
elseif (x<0 && y<0)
    disp(x^2+y^2)
end
clc;
clear all;
close all;

s = 'Enter your N';
N = input(s);

i = 1;
sum = 0;
while (i<=N)
    sum = sum + i;
    i = i+1;
end

disp(sum)
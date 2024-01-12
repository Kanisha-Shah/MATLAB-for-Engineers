clc;
clear all;
close all;

sum = 0;
prod = 1;
n =1;

while(true)
    sum = sum + n;
    prod = prod * n;
    n = n + 1;
    if n == 100
        fprintf('Sum: %d\n',sum)
        fprintf('Product: %f\n',prod)
    end
end
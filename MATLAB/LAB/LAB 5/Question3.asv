clc;
clear all;
close all;

success = 0.3:0.2:0.9;
fail = 1- success;
n=3;
r = 0;
probab =  nCr(n,r).* power(success,r) .* power(fail,n-r);
hit = 1 - probab;
fprintf("Sr. \tProbablity(Destroy)")
fprintf("\n1. \t%f",hit(1));
fprintf("\n2. \t%f",hit(2));
fprintf("\n3. \t%f",hit(3));
fprintf("\n4. \t%f",hit(4));

function C = nCr(n,r)
    C = factorial(n) /(factorial(n-r) * factorial(r));
end

function fact = factorial(n)
    if n == 0
       fact = 1;
    else
        fact = n * factorial(n-1);
    end
end
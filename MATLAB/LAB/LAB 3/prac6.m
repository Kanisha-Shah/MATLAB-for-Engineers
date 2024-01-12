clc;
clear all;
close all;

s = 'Enter your Total Income';
inc = input(s);

if inc > 0 && inc <= 6000
    tx = 0;
elseif inc>= 6001 && inc <= 20000
    tx = (inc - 6000) * 17;
elseif inc>= 20001 && inc <= 50000
    tx = 2380 + (inc - 20000)*42;
elseif inc> 50001 && inc < 60000
    tx = (inc - 50000) * 42 + 11380;
elseif inc> 60000
    tx = (inc - 60000) * 47 + 15580;
end

ml = 0.015 * inc ;
fprintf("Income Tax: %.3f \n",tx)
fprintf("Medicare Levy: %.3f \n",ml)
fprintf("Total Tax: %.3f \n",tx + ml)
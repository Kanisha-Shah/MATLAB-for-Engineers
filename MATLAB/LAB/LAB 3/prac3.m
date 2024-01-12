clc;
clear all;
close all;

s = 'Enter temp value';
temp = input(s);

if temp > 37 && temp <100
    disp('Human body temperature exceeded');
elseif temp >= 100
    disp('Boiling point of water exceeded');
end
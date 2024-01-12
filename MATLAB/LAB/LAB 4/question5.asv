clc;
clear all;
close all;

arr1 = [1 2 3 4; 5 6 7 8; 9 10 11 12];
mask = mod(arr1,2) == 0;
arr1(mask) = -arr1(mask);

fprintf("1.----------arr1---------- \n")
disp(arr1);

arr1 = [1 2 3 4; 5 6 7 8; 9 10 11 12];
arr2 = arr1 <= 5;
arr1(arr2) = 0;
arr1(~arr2) = arr1(~arr2).^2;

fprintf("2.----------arr1---------- \n")
disp(arr1);
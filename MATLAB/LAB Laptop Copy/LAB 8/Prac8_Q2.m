clc;
clear all;
close all;

A = {};
c = input('Enter your array length: ');
array = sortcell(A,c);
cellplot(array)

function B =  sortcell(A,n)
    for i = 1:n
        A{i} = input('Enter your element : ','s');
    end
    [~,idx]=sort(upper(A));
    B = A(idx);
end
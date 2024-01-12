clc;
clear all;
close all;

a = 2:3:8

size(a)

b = [a' a' a']

size(b)

c=b(1:2:3,1:2:3)

size(c)

d = a+b(2,:)

size(d)

w = [zeros(1,3) ones(3,1)' 3:5']

size(w)

b([1 3],2) = b([3 1],2)

e = 1:-1:5

k = 3:5'
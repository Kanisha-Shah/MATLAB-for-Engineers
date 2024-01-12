clc;
clear all;
close all;

a= [2 1
    -1 4]

b = [-1 3
        0 2]
c = [2
    1]

d= eye(2)

r = a+b

r1 = a* d

r2 = a.*d

r3 = a*c

r4 = a.*c

r5 = a\b

r6 = a.\b

r7 = a/b

r8 = a./b

r9 = a.^b
clc
clear all
close all

% Sparse array 5% random elements
a=sprandn(100, 100, 0.05);
figure(1)
spy(a,'.',4)

% Mask for diagonal elements
mask=logical(eye(100));

% Assigning 1to diagonal elements
a(mask)=1; 


b=sparse(rand(100, 1));

a_full=full(a);
whos a;
whos a_full;


figure(2)
spy(a,'*',3)
title('Sparse Matrix Distribution');


b_full=full(b);
whos b;
whos b_full;


tic;
x1=b_full \ a_full;
t1=toc;
tic;
x2=b\a;
t2=toc;

t1
t2
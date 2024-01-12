clc;
clear all;
close all;

x = 0:0.1:10;
sinx = sin(x);
figure
subplot(2,1,1)
plot(x,sinx);
xlabel('X')
ylabel('Sinx')

cosx = cos(x);
subplot(2,1,2)
plot(x,cosx);
xlabel('X')
ylabel('Cosx')

axis([ 26 150 0.3 0.9])

% axis equal
% 
% axis square
% 
% axis normal
% 
% axis off


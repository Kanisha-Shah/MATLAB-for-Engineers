clc;
clear all;
close all;

t=[75,100,125];
format long;
color=['r','g','k'];
c=1;
I0=2 * 10^-6;
V=-1:0.1:0.6;
k=1.38 * 10^-23;
q=1.602 * 10^-19;
for i=t
    i=(i - 32) * 5/9 + 273.15;
    temp=(q/(k*i))*V;  
    I=I0*(exp(temp)-1);
    plot(V,I,color(c));
    hold on
    c=c+1;
    I=[];
end
legend('75','100','125'); 
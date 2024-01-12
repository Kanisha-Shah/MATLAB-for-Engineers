clc;
clear all;
close all;

degree=0:1:90;
degree=degree.*pi./180;

for ii=1:length(degree)
    fprintf('sin(%d) = %f\t\tcos(%d) = %f\n', ii-1,sin(degree(ii)), ii-1, cos(degree(ii)));
end

figure(1)
plot(degree, sin(degree))
hold on

plot(degree, cos(degree))
legend('sin','cos')
xlabel('degree')
ylabel('function')
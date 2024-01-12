clc;
clear all;
close all;

G=6.672e-11;
M=5.98e24;
R=6.371e6;
h=0:5e5:4e7;
g=-G.*M./(R+h).^2;

fprintf('Height\tGrav. Acc.\n');

for ii=1:length(g)
    fprintf('%5d\t%5d\n', h(ii), g(ii));
end

plot(g,h)
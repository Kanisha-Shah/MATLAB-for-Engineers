clc;
clear all;
close all;

fprintf("Sr. Distance(m)")
a = 2 * 9.81;
v = 0.85 * 340;

r = (v * v )/a;
fprintf("\n1. %4.3f",r);

v = 0.85 * 340;

r = (v * v )/a;
fprintf("\n2. %4.3f",r);

v = 0.5 * 340 : 10 : 2*340;
r = (v .* v )./a;
figure(1);
plot(v,r);
xlabel("Velocity m/s");
ylabel("Distance m");

a = 7 * 9.81;
v = 1.5 * 340;
r = (v * v )/a;
fprintf("3. %4.3f",r);

a = 2*9.81 : 10 : 8*9.81;
v = 0.85 * 340;
r = (v * v )./a;
figure(2);
plot(a,r);
xlabel("Accelaration m/s^{2}");
ylabel("Distance m");

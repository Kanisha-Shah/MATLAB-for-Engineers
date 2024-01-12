clc;
%clear all;
close all;

x0 = 10;
v0 = 15;
t = 5;
a = -9.81;

x = x0 + v0*t + (0.5 * a * (t*t)); %applying formula


t1 = [1,3,5,6];
x1 = x0 + v0.*t1 + (0.5 * a * (t1.*t1));

subplot(2,1,1) % using subplot
plot(x1,t1); %it plots a continuous graph
xlabel('Time')
ylabel('Velocity')

%hold on;
subplot(2,1,2)
stem(x1,t1); %it plots a discrete graph

xlabel('Time') %It helps for recognition purpose
ylabel('Distance')

%legend('x','x1')


clc;
%clear all;
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

figure
trin = sawtooth( x , 0.5 );
plot(x,trin);

hold on

%pulse = pulstran( x , d , func );
%plot(x,pulse);
trin1 = sawtooth( x , 0.1 );
plot(x,trin1);

legend('Triangular1','Triangular2')

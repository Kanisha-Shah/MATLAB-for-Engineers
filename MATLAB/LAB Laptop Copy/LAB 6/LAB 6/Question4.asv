%clc;
%clear all;
%close all;

function Question4
     Vmag=120;
     Vang=0;
     R=100;
     L=0.1e-3;
     C=0.25e-9;
     f=100e3:100e3:10e6;
     w=2.*pi.*f;
     Xl=w.*L;
     Xc=1./(w.*C);
     Z=Xl-Xc;
     V=to_complex(Vmag, Vang);
     I=V./(R+j*Z);
     [Imag, Iang]=to_polar(I);
     
     %a
     figure(1)
     plot(f, Imag,"LineStyle","--","Color","red","LineWidth",2)
     title('Imag v/s f')
     xlabel('Frequency')
     ylabel('I Magnitude')
     
     figure(2)
     semilogx(f, Imag,"LineStyle","--","Color","blue","LineWidth",2)
     title('Imag v/s f')
     xlabel('Frequency')
     ylabel('I Magnitude')
     
     %b
     figure(3)
     plot(f, Iang,"LineStyle","-","Color","black","LineWidth",2)
     title('I \theta v/s f')
     xlabel('Frequency')
     ylabel('I \theta')
     
     figure(4)
     semilogx(f, Iang,"LineStyle","-.","Color","cyan","LineWidth",2)
     title('I \theta v/s f')
     xlabel('Frequency')
     ylabel('I \theta')
     
     %c
     figure(5)
     subplot(2,1,1)
     semilogx(f, Imag,"LineStyle","--","Color","magenta","LineWidth",2)
     title('Imag v/s f')
     xlabel('Frequency')
     ylabel('I Magnitude')
     
     subplot(2,1,2)
     semilogx(f, Iang,"LineStyle","--","Color","black","LineWidth",2)
     title('I \theta v/s f')
     xlabel('Frequency')
     ylabel('I \theta')
end

function [mag, theta] = to_polar(complex)
     mag=abs(complex);
     theta=angle(complex)*180/pi;
end

function c = to_complex(mag, theta)
     theta=theta*pi/180;
     [x, y] = pol2cart(theta, mag);
     c=x+i*y;
end
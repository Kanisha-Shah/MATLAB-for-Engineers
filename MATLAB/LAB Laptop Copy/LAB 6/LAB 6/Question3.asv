%clc;
%clear all;
%close all;

function Question3
    mag1 = input('\nEnter Your Magnitude Of Voltage: ');
    theta1 = input('\nEnter Your Angle(Degrees) of Voltage: ');
    
    mag2 = input('\nEnter Your Magnitude Of Impedance: ');
    theta2 = input('\nEnter Your Angle(Degrees) of Impedance: ');
    

    [complex1,complex2] = to_complex(mag1, theta1 ,mag2, theta2);
    [voltage,mag,theta] = to_polar(complex1,complex2);

    fprintf("\nMagnitude: %3.2f ",mag);
    fprintf("\n\nAngle: %3.2f \n\nVoltage: ",theta);
    disp(voltage);
end

function [complex1,complex2] = to_complex(mag1, theta1 ,mag2, theta2)
     theta1=theta1*pi/180;
     x=mag1.*cos(theta1);
     y=mag1.*sin(theta1);
     complex1=x+ i*y;

     theta2=theta2*pi/180;
     x=mag2.*cos(theta2);
     y=mag2.*sin(theta2);
     complex2=x+ i*y;
end

function [ com, magnitude, theta ] = to_polar(complex1,complex2)
    com = complex1./complex2;
    magnitude = abs(com);
    theta = rad2deg(angle(com));
end
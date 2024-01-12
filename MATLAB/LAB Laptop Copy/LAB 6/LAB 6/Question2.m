%clc;
%clear all;
%close all;

function Question2
    mag = input('\nEnter Your Magnitude: ');
    theta = input('\nEnter Your Angle(Degrees): ');
    [complex] = to_complex(mag, theta);
    fprintf("\nMagnitude: %d ",mag);
    fprintf("\n\nAngle: %3.2f \n\nComplex: ",theta);
    disp(complex);
end

function [complex] = to_complex(mag, theta)
    theta=theta*pi/180;
     x=mag.*cos(theta);
     y=mag.*sin(theta);
     complex=x+ i*y;
end
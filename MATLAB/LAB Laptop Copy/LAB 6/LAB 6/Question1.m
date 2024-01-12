%clc;
%clear all;
%close all;

function Question1
    c = input('\nEnter Your Complex Number: ');
    [ magnitude, theta ] = to_polar(c);
    fprintf("\nMagnitude: %d ",magnitude);
    fprintf("\n\nAngle: %f ",theta);
end

function [ magnitude, theta ] = to_polar(c)
    magnitude = abs(c);
    theta = rad2deg(angle(c));
end
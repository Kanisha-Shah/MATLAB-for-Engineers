clc;
clear all;
close all;

theta = -pi/2:pi/30:pi/2;
y = abs(sin(4.*theta)./(4.*theta));

polarplot(theta,y,'-b')
title("Antenna Gain Vs \theta")
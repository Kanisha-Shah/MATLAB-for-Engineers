% clc;
clear all;
close all;

r=input("Enter radian: ");
degree=r*180/pi;

minute=rem(degree,1)*60;
second=rem(minute,1)*60;

fprintf("%.2d* %.2d' %.2d''\n", degree, minute, second);
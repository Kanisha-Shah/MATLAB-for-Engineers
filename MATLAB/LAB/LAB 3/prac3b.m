clc;
clear all;
close all;

s = 'Enter your color value';
color = input(s);

switch ( color )
    case 'red'
    disp('Stop now!');
    case 'yellow'
    disp('Prepare to stop.');
    case 'green'
    disp('Proceed through intersection.');
    otherwise
    disp('Illegal color encountered.');
end

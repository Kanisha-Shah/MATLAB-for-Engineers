clc;
clear all;
close all;

s = 'Enter your day';
day = input(s);

switch(day)
    case 'Sunday'
        disp("1");
    case 'Monday'
        disp("2");
    case 'Tuesday'
        disp("3");
    case 'Wednesday'
        disp("4");
    case 'Thursday'
        disp("5");
    case 'Friday'
        disp("6");
    case 'Saturday'
        disp("7");
    otherwise
        disp("Invalid Day");
end
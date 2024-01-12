clc;
clear all;
close all;

while (true)
    s = "\n\nEnter Your X value: ";
    x = input(s);
    
    if x>=1
        fprintf("\nInvalid X value (Illegal)");
        break;
    else
        y = log(1/(1-x));
        fprintf("\nY is: %f",y);
    end  
end
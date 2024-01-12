clc;
clear all;
close all;

x = -pi/2:pi/10:pi/2;

while true
    fprintf("\n1. Sinh(x)");
    fprintf("\n2. Cosh(x)");
    fprintf("\n3. tanh(x)");
    fprintf("\n4. Exit");
    c = input("\nEnter Your Choice");
    
    switch c 
        case 1
            Sinh(x)
        case 2
            Cosh(x)
        case 3
            Tanh(x)
        case 4
            break;   
        otherwise
            fprintf("\nInvalid Choice");
    end
end

function Sinh(x)
    ans1 = (exp(x) - exp(-x))/2;
    figure
    plot(x,ans1,"LineStyle",'-.',"Color",'red')
    xlabel('Angle')
    ylabel('Sinh')
    title('Sinh(x)')
end

function Cosh(x)
    ans1 = (exp(x) + exp(-x))/2;
    figure
    plot(x,ans1,"LineStyle",'--',"Color",'yellow')
    xlabel('Angle')
    ylabel('Cosh')
    title('Cosh(x)')
end

function Tanh(x)
    ans1 = (exp(x) - exp(-x))./(exp(x) + exp(-x));
    figure
    plot(x,ans1,"LineStyle",'-.',"Color",'b')
    xlabel('Angle')
    ylabel('tanh')
    title('tanh(x)')
end
clc;
clear all;
close all;

fprintf("\n1. Sinh(x)");
fprintf("\n2. Cosh(x)");
fprintf("\n3. tanh(x)");
s = input("\nEnter Your Choice",'s');
x = -pi/2:pi/10:pi/2;    

hyperbolic(s,x)
function hyperbolic(s,x)
    if s == "sinh"
        sinh1(x)
    elseif s == "cosh"
        cosh1(x)    
    elseif s == "tanh"
        tanh1(x)
    else
        disp("Invalid Entry")
    end
end


function sinh1(x)
    ans1 = (exp(x) - exp(-x))/2;
    figure
    plot(x,ans1,"LineStyle",'-.',"Color",'red')
    xlabel('Angle')
    ylabel('Sinh')
    title('Sinh(x)')
end

function cosh1(x)
    ans1 = (exp(x) + exp(-x))/2;
    figure
    plot(x,ans1,"LineStyle",'--',"Color",'black')
    xlabel('Angle')
    ylabel('Cosh')
    title('Cosh(x)')
end

function tanh1(x)
    ans1 = (exp(x) - exp(-x))./(exp(x) + exp(-x));
    figure
    plot(x,ans1,"LineStyle",'-.',"Color",'b')
    xlabel('Angle')
    ylabel('tanh')
    title('tanh(x)')
end
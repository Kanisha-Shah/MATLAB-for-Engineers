clc;
clear all;
close all;

s = "Enter Your N value: ";
n = input(s);
a = 0;
b = 1;
fprintf("%d %d ",a,b);
i = 3;
sum  = 0;

while (i<=n)
    c = a+b;              %performs add operation on previous two  values
    fprintf("%d ",c);     % It prints from third value to given length
    a=b;
    b=c;
    i=i+1;  
end

fprintf("\n\nLast Value till %d th is: %d ",n,c);
clear all;
close all;

x = input("Enter your Number: ");
y = factorial(x);
if y == -1
    fprintf("Invalid Entry")
else
    fprintf("Factorial of %d is %d ",x,y);
end

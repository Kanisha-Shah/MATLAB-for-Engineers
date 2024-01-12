clc
clear all
close all

point.x=[3 6 9 5 2];
point.y=[4 8 12 12 2];

for i=1:length(point.x)
    ans(i)=dist3(point.x(i), point.y(i));
end

disp(ans)

function dist=dist3(x, y)
     if(nargin==2)
        dist=sqrt(x^2+y^2);
     else
        dist=-1;
     end
end
clc;
clear all;
close all;

fprintf("Sr.\tIres\tCount")


c = 0;
ires = 1;
while mod(ires,10) ~= 0
    ires = ires + 1;
    c = c +1;
end
fprintf("\n1.\t%d\t%d",ires,c);


c = 0;
ires = 2;
while ires <= 200
    ires = ires^2;
    c = c +1;
end
fprintf("\n2.\t%d\t%d",ires,c);



c = 0;
ires = 2;
while ires > 200
    ires = ires^2;
    c = c +1;
end
fprintf("\n3.\t%d\t%d",ires,c);

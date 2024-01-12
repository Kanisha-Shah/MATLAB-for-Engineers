clc;
clear all;
close all;

fprintf("Sr.\tIres\tCount1\tCount2")
c = 0;
ires = 0;
for i = -10:10
    ires = ires + 1;
    c = c +1;
end

fprintf("\n1.\t%d\t%d",ires,c);


c = 0;
ires = 0;
for i = 10:-2:4
    if i == 6
        c = c +1;
        continue;
    end
    ires = ires + i;
    c = c +1;
end

fprintf("\n2.\t%d\t%d",ires,c);

c = 0;
ires = 0;
for i = 10:-2:4
    if i == 6
        c = c +1;
        break;
    end
    ires = ires + i;
    c = c +1;
end

fprintf("\n3.\t%d\t%d",ires,c);

c1 = 0; c2 = 0;
ires = 0;
for i1 = 10:-2:4
       for i2 = 2:2:i1
             if i2 == 6
                 break
             end
             ires = ires + i2;
             c2 = c2 +1;
       end
       c1 = c1 +1;
end


fprintf("\n4.\t%d\t%d\t%d",ires,c1,c2);


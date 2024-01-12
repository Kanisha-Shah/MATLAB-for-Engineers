clc
clear all
close all

a={10};
b={[4;-2;2]};
c={[1 0 3;-5 1 2;1 2 0]};
d={[1 5 -2]};
ans1=varsum(a, b, c, d);
fprintf("Sum: %d\n\n",ans1);

function ans1=varsum(varargin)
    ans1=0;
    for i=varargin
        e=i{:};
        celldisp(e)
        if(iscell(e))
            for j=e
                e2=j{:};
                ans1=ans1+sum(e2, "all");
            end
        end
    end
end
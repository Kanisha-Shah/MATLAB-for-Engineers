clc
clear all
close all

a=[1 4: -2 3];
b{1}=[1 5 2];
b{2}=[1 -2; 2 1];
ans1=varsum(a, b);
fprintf("Sum: %d\n\n",ans1);


function ans1=varsum(varargin)
    ans1=0;
    for i=varargin
        w=i{:};
        if(iscell(w))
            for j=w
                w2=j{:}
                ans1=ans1+sum(w2, "all");
            end
        else 
            ans1=ans1+sum(w, "all");
        end
    end
end
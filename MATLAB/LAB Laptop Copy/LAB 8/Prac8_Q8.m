clc
clear all
close all

struct.name='Kanisha';
struct.roll=253;

struct.marks=[99 97 100];

[s1, s2]=fun(struct);
s1
s2

function [s1, s2] = fun(struct)
     msg=nargchk(1,1,nargin);
     error(msg);
     if(isstruct(struct))
         s1=fieldnames(struct);
         n=size(s1);
         s2={};
         for i=1:n(1)
            s2{i}=class(struct.(s1{i}));
         end
         s2=s2;
     else
        error("Only Structures allowed.");
     end
end
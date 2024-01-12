clc
clear all
close all

student(1).marks=[90 92 95];
student(2).marks=[85 93 89];
student(3).marks=[93 94 99];

[student, avg]=fun(student);
student.average

avg

function [student, avg] = fun(student)
     msg=nargchk(1,1,nargin);
     error(msg);
     avg=0;
     for i=1:length(student)
     student(i).average=sum(student(i).marks)/length(student(i).marks);
     avg=avg+sum(student(i).marks);
     end
     avg=avg/(length(student)*length(student(1).marks));
end
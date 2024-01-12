clc;
clear all;
close all;

file=fopen('input.txt', 'wt');

A=randi(1000, round(rand()*10), 1)

for ii=1:length(A)
    fprintf(file,'%d\n', A(ii))
end

fclose(file);

fileID=fopen('input.txt', 'r');

A=fscanf(fileID, '%d');

fclose(fileID);
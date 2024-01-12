clc;
clear all;
close all;

if ~isfile('InputFile.txt')
 fprintf('File do not exist');
 quit
end

fileID=fopen('InputFile.txt', 'r');
A=fscanf(fileID, '%f');
fclose(fileID);
A;
A=round(A);

if isfile('OutputFile.txt')
 user=input("Do you want to overwrite the file'OutputFile.txt'?[Y/N]", 's');
     if(user=='Y')
        file=fopen('OutputFile.txt', 'wt');
     else
         name=input("Enter the name of the new file: ",'s');
         file=fopen(strcat(name, '.txt'), 'wt');
     end
else
     file=fopen('OutputFile.txt', 'wt');
end

for ii=1:length(A)
 fprintf(file,'%d\n',A(ii));
end

fclose(file);
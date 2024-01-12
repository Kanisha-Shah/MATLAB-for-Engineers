clc
clear all
close all

student(1).name="Kanisha";
student(1).address="Paldi";
student(1).city="Ahmedabad";

student(1).marks=[93 94 88];

student(2).name="Prapti";
student(2).address="Satellite";
student(2).city="Ahmedabad";
student(2).marks=[91 79 86];

student(3).name="Kahan";
student(3).address="Vasna";
student(3).city="Ahmedabad";

student(3).marks=[100 96 81];

struct_strcat(student,'names');
struct_strcat(student,'marks');

function out_str=struct_strcat(structure,field)
     msg=nargchk(2,2,nargin);
     error(msg);
     arr=' ';
     if isstruct(structure)
     if ischar(field)
     if isfield(structure,field)
     if ischar(structure(1).(field))
         for ii=1:length(structure)
            arr=strcat(arr,structure(ii).(field));
         end
        out_str=arr;
     end

     else
        disp("ERROR : INVALID DATATYPE OF FIELD.")
     end

     else
        disp("ERROR : INVALID FIELD OF STRUCTURE.")
     end

     else
        disp("ERROR : INVALID INPUT SECOND INPUT SHOULD BE STRING.")
     end
end

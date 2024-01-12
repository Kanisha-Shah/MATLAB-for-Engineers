function [value, type] = area(length,width)
    msg = nargchk(1,2,nargin);
    error(msg);
    
    if nargin < 2
        width = length;
    end
    if length == 0 && width ==0
        warning('Length and Width both are 0')
    end
    value = length * width;
    if nargout == 2
        type = 'Rectangle';
        if length == width
            type = 'Square;';
        end
    end
end
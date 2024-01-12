function fact = factorial(n)
    if nargin == 1
        if n == 0
           fact = 1;
        elseif n < 0
            fact = -1 ;
        else
            fact = n * factorial(n-1);
        end
    else
        error('Number of Argument is not equal to 1');
    end
end
function [avg, med] = statistics(vector)
    avg =  average(vector);
    med = median(vector);
end

function avg = average(vector)
    avg = sum(vector)/length(vector);
end

function med = median(vector)
    vector = sort(vector);
    if mod(length(vector),2) == 1
        med = vector((length(vector) + 1) /2);
    else
        med = (vector(length(vector) /2) + vector((length(vector)/2 + 1)) / 2);
    end
end
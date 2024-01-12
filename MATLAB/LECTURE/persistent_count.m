function persistent_count()
    persistent count
    if isempty(count)
        count =0
    else
        count = count + 1
    end
end
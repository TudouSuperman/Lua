for i = 1, 10, 1 do
    for j = 1, i, 1 do
        print(i);
    end
end

for i = 1, 10, 1 do
    j = 1;
    while j <= i do
        print(i);
        j = j + 1;
    end
end

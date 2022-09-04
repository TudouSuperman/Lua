array = {"Lua", "C#"};
array[3] = "Java";

-- Lua 里索引默认从 1 开始 （C# 从 0 开始）
for i = 1, 3, 1 do
    print(array[i]);
end

-- Lua 索引可以为负数  循环赋值
array = {};
for i = -2, 2, 1 do
    array[i] = i * 3;
    print(array[i]);
end

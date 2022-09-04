-- 迭代器方法一般用于遍历
array = {"Lua", "C#", nil, "Java"};

-- pairs(迭代器方法)  遍历表中所有的键值对  迭代取得 array 的参数
for k, v in pairs(array) do
    print(k .. ' ' .. v);
end

-- ipairs(迭代器方法)  按照索引从 1 开始 ， 递增遍历 ， 遇到 nil 值就停止
for k, v in ipairs(array) do
    print(k .. ' ' .. v);
end

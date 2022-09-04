myTable = {"Lua", "C#", "Java", "C++", "C", "abc", "Abc"}

print("排序前");
for k, v in ipairs(myTable) do
    print(k .. ' ' .. v);
end

-- 阿斯特码 编码排序
table.sort(myTable);

print("排序后");
for k, v in ipairs(myTable) do
    print(k .. ' ' .. v);
end

-- 获取表的长度 table.maxn
print("length ", table.maxn(myTable));

myTable2 = {11, 22, 4, 2, 252, 62, 2, 6, 7, 112, 34, 0, 9};
-- 获取表里的最大值
local function get_max_number(tab)
    local mn = 0;
    for k, v in pairs(tab) do
        if mn < v then
            mn = v;
        end
    end
    return mn;
end

print(get_max_number(myTable2));

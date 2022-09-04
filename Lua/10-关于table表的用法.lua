-- Lua 里的表可以当作一个字典来使用，也可以当作一个数组（下标从 1 开始）来使用
-- 空表  {}构造表达式
tab_1 = {};
print(tab_1);
print(tab_1.key_1);

tab_2 = {
    key_1 = 100,
    key_2 = "v2",
    key_3 = 3
};
print(tab_2);

-- 表的访问方式 1
print(tab_2.key_1);

-- 表的访问方式 2 （如果不加上引号会获取不到，返回 nil）
print(tab_2["key_1"]);

-- 表的访问方式 3 (索引访问从 1 开始)
tab_3 = {"one", "two", "three", "four"}
print(tab_3[2]);

-- 这种写法获取不到，返回 nil，因为只有当表里面的key是字符串才能访问
print(tab_3.two);
print(tab_3["2"]);

-- 表的访问方式 4 (循环遍历)
for key, val in pairs(tab_3) do
    print(key .. ":" .. val);
end

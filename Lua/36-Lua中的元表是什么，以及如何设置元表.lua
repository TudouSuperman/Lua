-- 元表就是对普通表行为的一个扩展
-- 普通表
a = {1, 2, 3, 4, 5, 6};
-- 元表 扩展了普通表的行为
b = {};

-- print(a);
-- print(a[10]);

-- setmetatable 设置 b 是 a 的元表
local tab = setmetatable(a, b);
print(tab[3]);

-- getmetatable 获取普通表对应的元表
print(getmetatable(a));
print(b);
-- 这俩地址一样

-- 元表的定义方式2  简要写法
local tab2 = setmetatable({1, 2, 3, 4, 5, 6}, {});

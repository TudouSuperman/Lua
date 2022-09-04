-- 当表里有 __metatable 这个键值的时候 setmetatable 会设置失败
local tab = setmetatable({1, 2, 3, 4, 5, 6}, {
    __metatable = "lock"
});

-- 测试设置是否成功   （暂时不知道这个有啥用  __metatable）
-- 使用 __metatable 可以保护元素，禁止用户（外界）访问元表中的成员或者修改元表
print(getmetatable(tab));

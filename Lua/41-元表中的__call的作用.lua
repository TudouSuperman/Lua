-- __call 元方法在 Lua 调用一个值时调用
myTable = {"Lua", "C#", "Java", "C++", "C"};
-- 元表
myMetatable = {
    -- __call 当把表当成一个函数调用的时候执行
    __call = function(tab, arg1, arg2, arg3)
        print(arg1, arg2, arg3);
        return "SQ";
    end
};

myTable = setmetatable(myTable, myMetatable);
-- 传递一个多个都可以
v = myTable(10, 20, 30);
print(v);

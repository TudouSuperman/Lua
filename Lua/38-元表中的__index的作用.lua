--[[

__index 这是 metatable 最常用的键。

当你通过键来访问 table 的时候，如果这个键没有值，
那么Lua就会寻找该table的metatable（假定有metatable）中的__index 键。
如果__index包含一个表格，Lua会在表格中查找相应的键。

--]] myTable = {"Lua", "C#", "Java", "C++", "C"};

myMetatable = {
    -- __index 是固定的必须这样写，其他的都是自定义
    --[[
        如果__index包含一个函数的话，Lua就会调用那个函数，table和键会作为参数传递给函数。
        __index 元方法查看表中元素是否存在，如果不存在，返回结果为 nil；如果存在则由 __index 返回结果。    
        
        -- __index 的第一种写法
        __index = function(tab, key)
            print(tab);
            print("__index function : " .. key);
    
            if (key >= 10) then
                return "JS";
            end
        end
    --]]

    -- __index 的第二种写法（返回表）
    __index = {
        [7] = "PHP",
        [8] = "HTML"
    }
};

myTable = setmetatable(myTable, myMetatable);

-- 这里如果调用的不存在，就会执行 __index 方法
print(myTable);
print(myTable[1]);
print(myTable[10]);
print(myTable[7]);
print(myTable[8]);

-- __index 用来处理访问到的索引不存在的时候，怎么办
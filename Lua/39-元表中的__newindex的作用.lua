-- __newindex 当对表的数据进行修改的时候，当修改的是一个新的索引的时候才会起作用，当给表添加新的键值对的时候起作用
myTable = {"Lua", "C#", "Java", "C++", "C"};

myMetatable = {
    __newindex = function(tab, key, value)
        print("current set key : " .. key .. "\n" .. "set key value : " .. value);
        -- 把修改的值添加入表
        -- tab[key] = value;
        -- 如果要修改参数，使用 rawset(设置一行参数)
        rawset(tab, key, value);
    end
}

myTable = setmetatable(myTable, myMetatable);

myTable[1] = "C#";
myTable[6] = "Lua";

print(myTable[6]);

-- 第二种写法
newTable = {};
myMetatable = {
    __newindex = newTable
}
myTable = setmetatable(myTable, myMetatable);
myTable[1] = "C#";
myTable[6] = "Lua";
print(myTable[6]);
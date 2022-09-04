-- __tostring 元方法用于修改表的输出行为
myTable = {"Lua", "C#", "Java", "C++", "C"};

-- 元表
myMetatable = {

    -- __tostring 元方法用于修改表的输出行为
    __tostring = function(mytab)

        local str = "";

        for k, v in pairs(mytab) do

            str = str .. v .. ",";

        end

        return str;
    end
};

myTable = setmetatable(myTable, myMetatable);
print(myTable);

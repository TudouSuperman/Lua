myTable = {"Lua", "C#", "Java", "C++", "C"};
-- 元表
myMetatable = {
    -- __add 元表方法，给表添加操作符
    __add = function(tab, newTab)
        local mi = 0;

        for k, v in pairs(tab) do
            if (k > mi) then
                mi = k;
            end
        end

        for k, v in pairs(newTable) do
            mi = mi + 1;
            table.insert(tab, mi, v);
        end
        return tab;
    end
};

myTable = setmetatable(myTable, myMetatable);
newTable = {"PHP", "Python"};
-- __add  对两个表进行加法操作只需要设置一个表就行（如果两个表都没有设置元表就会报错）
v = myTable + newTable;
for k, v in pairs(v) do
    print(k, v);
end

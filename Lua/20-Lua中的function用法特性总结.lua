--[[
局部函数
[local] function functionName(a,b,c,...)
    functionBody  方法体
    [return a,b,c...]   可以返回多个值
end    
--]] 

-- 在 Lua 里函数名是小写的 (局部函数)
local function max(n1, n2)
    if n1 > n2 then
        return n1;
    else
        return n2;
    end
end

print(max(1, 10));

-- 函数可以作为数据赋值  也可作为参数传递
temp = max;
print(temp(40, 4));

myprint = function(param)
    print("myPrintNumber " .. param);
end
myprint(100);

-- 参数传递
function add(n1, n2, printFun)
    res = n1 + n2;
    printFun(res);
end

add(12, 35, myprint);

-- Lua 里面的函数可以返回多个值
local function temp()
    return 1, 2, 3, 4;
end

-- 接收没有的值会返回 nil
n1, n2, n3, n4, n5 = temp();
print(n1, n2, n3, n4, n5);

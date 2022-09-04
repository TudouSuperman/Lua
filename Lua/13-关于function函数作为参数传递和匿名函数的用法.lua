-- 这里的函数当参数传递（相当于 C# 里的 委托 与 事件） 
-- Lua 没有委托事件概念，方法可以当作一个数据类型来直接传递
function TestFunc(tab, func)
    for k, v in pairs(tab) do
        func(k, v);
    end
end

tab = {
    key1 = "v1",
    key2 = "v2"
};

function F1(k, v)
    print(k .. ':' .. v);
end

function F2(k, v)
    print(k .. ' ' .. v);
end

TestFunc(tab, F1);
TestFunc(tab, F2);
-- Lua 匿名函数的写法
TestFunc(tab, function(k, v)
    print(k .. '-' .. v);
end)

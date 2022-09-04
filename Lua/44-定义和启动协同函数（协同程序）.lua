-- go  on  挂起一个函数，也叫暂停函数

-- 定义协同函数 coroutine.create
local funcName = coroutine.create(function(a, b)
    print(a .. ' + ' .. b .. ' = ' .. a + b);
end)

-- 只有调用 coroutine.resume 协同函数才会执行
coroutine.resume(funcName, 20, 30);


-- 定义协同函数 coroutine.wrap (wrap 包裹)
local funcName = coroutine.wrap(function(a, b)
    print(a .. ' + ' .. b .. ' = ' .. a + b);
end)

-- 第二种调用定义协同函数的方式
funcName(20, 30);
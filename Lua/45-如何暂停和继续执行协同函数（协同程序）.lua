-- 定义协同函数 coroutine.create
local funcName = coroutine.create(function(a, b)

    print(a .. ' + ' .. b .. ' = ' .. a + b);

    -- 暂停调用协同函数 coroutine.yield()
    coroutine.yield();

    print(a .. ' - ' .. b .. ' = ' .. a + b);

end)

-- 只有调用 coroutine.resume 协同函数才会执行
coroutine.resume(funcName, 20, 30);

print("I`m here!");

-- 继续运行协同函数 coroutine.resume ,不需要传递参数
coroutine.resume(funcName);

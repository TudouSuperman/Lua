-- 定义协同函数 coroutine.create
local funcName = coroutine.create(function(a, b)

    print(a .. ' + ' .. b .. ' = ' .. a + b);

    -- 暂停调用协同函数 coroutine.yield(如果暂停的话，yield 括号里有多少参数都会传递出来)
    coroutine.yield(a * b);

    print(a .. ' - ' .. b .. ' = ' .. a + b);

    return a * b;
end)

-- 只有调用 coroutine.resume 协同函数才会执行
res1, res2 = coroutine.resume(funcName, 20, 30);
-- 第一个返回值表示是否调用成功
-- 第二个返回值表示返回的结果
print(res1, res2);

print("I`m here!");

-- 继续运行协同函数 coroutine.resume ,不需要传递参数
coroutine.resume(funcName);
-- 只有调用 coroutine.resume 协同函数才会执行
res1, res2 = coroutine.resume(funcName, 20, 30);
-- 第一个返回值表示是否调用成功
-- 第二个返回值表示返回的结果
print(res1, res2);

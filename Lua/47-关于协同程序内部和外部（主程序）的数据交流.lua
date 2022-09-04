-- coroutine.status(当一个函数等待被执行的时候是 suspended)
-- coroutine.status(当一个函数被执行的时候是 running)
-- coroutine.status(当一个函数运行完成之后结果是 dead （当一个协程 dead 死亡之后就没办法复活了）)
-- coroutine.running(返回当前的线程地址)

-- 定义协同函数 coroutine.create
funcName = coroutine.create(function(a, b)

    print(a .. ' + ' .. b .. ' = ' .. a + b);
    print(coroutine.status(funcName));
    -- 暂停调用协同函数 coroutine.yield(如果暂停的话，yield 括号里有多少参数都会传递出来)
    coroutine.yield(a * b);
    -- coroutine.running() 返回当前的线程地址，这个方法一般写在协程里
    print(coroutine.running());
    print(a .. ' - ' .. b .. ' = ' .. a + b);

    return a * b;
end)

print(coroutine.status(funcName));
-- 只有调用 coroutine.resume 协同函数才会执行
res1, res2 = coroutine.resume(funcName, 20, 30);
-- 第一个返回值表示是否调用成功
-- 第二个返回值表示返回的结果
print(res1, res2);

-- 当一个函数等待被执行的时候是 suspended 
print(coroutine.status(funcName));

print("I`m here!");

-- 继续运行协同函数 coroutine.resume ,不需要传递参数
coroutine.resume(funcName);
-- 只有调用 coroutine.resume 协同函数才会执行
res1, res2 = coroutine.resume(funcName, 20, 30);
-- 第一个返回值表示是否调用成功
-- 第二个返回值表示返回的结果
print(res1, res2);

-- 当一个函数运行完成之后结果是 dead （当一个协程 dead 死亡之后就没办法复活了）
print(coroutine.status(funcName));

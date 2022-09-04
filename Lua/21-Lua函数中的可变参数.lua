-- Lua 函数中的可变参数定义(在方法参数哪里写 ... 就是可变参数)
function average(...)
    -- arg 索引可以取得参数
    -- print(arg[1]);
    -- local arg 不带个数 如果不定义 local 去访问 arg 的话 arg 里面最后一个参数代表当前参数的个数
    -- 如果不使用 local arg 来使用 arg 的话 那么他的最后一个参数是带有参数个数的（length）
    local arg = {...}
    res = 0;
    -- 遍历 arg 
    for k, v in pairs(arg) do
        res = res + v;
    end
    -- #arg 取得参数的个数    #"hello" 取得字符串长度
    print(res / #arg);
end

average();
average(1);
average(1, 2);
average(1, 2, 3);
average(1, 2, 3, 4);

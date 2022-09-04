-- Lua 中变量类型可以改变
-- 没有 local 修饰的变量是全局变量
a = 5;
print(type(a));
a = "hello";
print(type(a));

-- local 类型的局部变量的生命周期只在当前文件中
local b = 10;
print(b);
-- 当这个方法运行的时候，里面的变量才会存在
function func()
    -- 全局变量不管定义在任何地方都是可以被访问的
    c = 5;
    -- 局部变量的销毁是在所在语句块结束
    local d = 6;
end

func();
print(c, d);
print(d);

-- do end 是一个死的代码块
do
    -- 这里的局部变量 a 与全局变量 a 访问是不影响的
    local a = 10;
    b = 11;
    -- 这里会优先访问最近的变量a（局部变量）
    print(a, b);
end

print(a, b);

-- 局部变量的速度比全局变量快
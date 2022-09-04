--[[

C# 阶乘写法
int func(int n)
{
    if(n == 1)
        return n;
    else 
        return n * func( n - 1 );
}

--]] 

-- Lua 阶乘写法 (Lua 里参数不需要指定类型)
function func(n)
    if n == 1 then
        return n;
    else
        return n * func(n - 1);
    end
end
print(func(3));
print(func(5));

-- 函数也可以当值来用 这里的 func2 与 func 拥有同样的功能
func2 = func;
print(func2(9));
-- 类型不符合会报错
-- print(func2("Abc"));

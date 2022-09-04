--[[
Lua 的循环类型

1.while 循环
2.for 循环
3.repeat unitl 循环(相当于 c# 的 do while 循环)

while 循环
while (condition 条件) do
    statements
end
--]] 


a = 1;
while (a <= 10) do
    if (a % 2 == 1) then
        print(a);
    end
    -- Lua 里没有 a++ 这种自增，所以使用下面这种：
    a = a + 1;
end

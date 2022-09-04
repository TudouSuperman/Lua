--[[
if (布尔表达式) then
    为 true 的时候要执行的代码
end    
--]]

if (0) then
    print(0);
end

a = 10;
if a > 10 then
    print("a 大于 10");
end

if a < 10 then
    print("a 小于等于 10");
end

--[[
if (布尔表达式) then
    为 true 的时候要执行的代码
else
    为 false 的时候要执行的代码
end
--]]

if b then
    print("b no nil");
else
    print("b nil")
end

--[[
if (条件表达式) then
    为 1 的时候要执行的代码
elseif (条件表达式) then
    为 2 的时候要执行的代码
elseif (条件表达式) then
    为 3 的时候要执行的代码
end
--]]

a = 100;
if a <= 50 then
    print("a <= 50");
elseif a <= 100 then
    print("a <= 100");
elseif a <= 150 then
    print("a <= 150");
end

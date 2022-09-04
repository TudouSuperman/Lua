-- for 循环
--[[
1.数值 for 循环
for var = start , end , step  do
    循环体
end 
    这里的 var 会从 start 变化到 end 
--]] 

-- 从 1 开始 到 10 结束 每次增加 2
for i = 1, 10, 2 do
    print(i)
end

-- 从 20 开始 到 1 结束 每次减少 2
for i = 20, 1, -2 do
    print(i)
end

--[[
2.泛型 for 循环
--]]

-- 泛型 for 循环 遍历表
tab = {
    key1 = "one",
    key2 = "two",
    key3 = "three",
    key4 = "four"
}
for k, v in pairs(tab) do
    print(k .. ' : ' .. v);
end

-- 泛型 for 循环 遍历数组
tabArr = {"one", "two", "three", "four"}
for k, v in pairs(tabArr) do
    print(k .. ' : ' .. v);
end

--[[
3.repeat unitl 循环(相当于 c# 的 do while 循环)

repeat  (C# do)
    循环体
until (condition)  (C# while)
--]]

a = 1;
repeat
    print(a);
    a = a + 1;
until (a >= 10)

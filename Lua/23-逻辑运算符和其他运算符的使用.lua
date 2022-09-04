-- ==  等于  ~=  不等  >  大于  <  小于  >=  大于等于  <=  小于等于
a = 10.6;
b = 15;

if (a == b) then
    print("a == b");
else
    print("a ~= b");
end

if (a ~= b) then
    print("a ~= b");
else
    print("a == b");
end

--  and（与 C# &&）  or（或 C# ||）  not（非 C# !）
if (a >= 1 and b <= 1) then
    print("Yes");
else
    print("No");
end

if (a >= 1 or b >= 1) then
    print("Yes");
else
    print("No");
end

if (not true) then
    print("false");
else
    print("true");
end

-- 连接运算符 ..
print("Hello" .. ' ' .. "World");

-- 取得长度运算符 #
print(#"Hello World");
tab = {1, 2, 3, 4, 5, 65, 7, 7, 8, 9};
print(#tab);

-- # 只会取得初始化过的长度
tab = nil;
tab = {};
tab.key1 = 34;
tab.key2 = "sfdaf a ";
print(#tab);

-- # 也可获取所索引赋值过的长度
tab = nil;
tab = {};
tab[1] = 1;
tab[2] = 2;
print(#tab);


-- table 不会固定长度大小
tab1 = {key_1, key_2, key_3};

-- 表的赋值方式 1
tab1.key_1 = "http://www.baidu.com/";
print(tab1.key_1);
print(tab1["key_1"]);

-- 表的赋值方式 2
tab1["key_2"] = "http://www.baidu.com/";
print(tab1.key_2);
print(tab1["key_2"]);

-- 表的赋值方式 3
tab1[3] = 100;
print(tab1[3]);
print(tab1["key_3"]);

-- 表的删除值的方式
tab_3 = {"one", "two", "three", "four"}
tab_3[2] = nil;
for key, val in pairs(tab_3) do
    -- 对于表来说移除后等于没存在过
    print(key .. ":" .. val);
end

-- 表的长度是不固定的可以无限添加，并修改指定值
tab_3[100] = "oneHundred";
for key, val in pairs(tab_3) do
    print(key .. ":" .. val);
end

-- 删除整个表，释放内存
tab_3 = nil;

-- nil 类型表示一种没有任何有效值，他只有一个值 -- nil，如果打印一个没有赋值的变量，便会输出一个 nil 值。
-- 对于全局变量和 table , nil 还有一个 "删除" 作用，给全局变量或者 table 表里的变量赋一个 nil 值，等同于把他们删掉。

name = "ShiQi";
print(name);
name = nil;
print(name);

tab_1 = {
    key_1 = "v1",
    key_2 = "v2"
};

print(tab_1.key_1);
tab_1.key_1 = nil;

tab_1 = nil;
print(tab_1);

-- 这里如果继续访问表里的 key_1 key_2 会报错，因为表都 nil 了访问不到表里的东西
-- print(tab_1.key_1);
-- print(tab_1.key_2);


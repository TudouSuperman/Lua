-- 字符串由一对双引号或单引号来表示。
str_1 = "this is str_1";
str_2 = 'this is str_2';

-- 字符串也可以用 两个中括号 '[[]]' 来表示 "一块" 字符串 
html = [[
    <html>
        <head></head>
        <body>
            <a href = "http://www.baidu.com/">百度一下</a>
        </body>
    </html>
]];

print(html);

-- 在 Lua 里字符串拼接只能用 .. （C# 可以用 +）
print("2" .. "8");
print(123 .. 456);
-- 当两个字符串(或者和一个数)用 + 拼接时，会自动把字符串转换为数值来进行加法运算
print("2" + "8");
print("2" + 8);
-- 当一个字符串里面进行数学运算的时候，他只会当一个字符串输出
print("2 + 8");
print("2e2" * "8");
-- 使用 # 来计算字符串的长度，放在字符串前面
print(#"http://www.baidu.com/");
print("MyLength : " .. #"123456");

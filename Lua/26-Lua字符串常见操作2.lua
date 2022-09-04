s1 = string.char(97, 98, 99, 100);
i1 = string.byte("ABCD", 4);
i2 = string.byte("ABCD");
print(s1, i1, i2);

-- 获取字符串长度
len1 = string.len("abcdef");
len2 = #"abcdef";
print(len1, len2);

-- Copy 指定字符串 2 次
cp = string.rep("ABCD", 2);
print(cp);

-- string.gmatch 输出字符串中的指定字母串    %a+（一串） 这里字符串中间的 空格 和 - 不属于字母
for word in string.gmatch("hello lua-user", "%a+") do
    print(word);
end

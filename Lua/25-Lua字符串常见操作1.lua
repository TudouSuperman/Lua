str = "Hello worLd";
str_1 = string.upper(str);
str_2 = string.lower(str);

-- string.gsub(要替换的字符串,要替换的字符,替换后的字符,从前往后替换的最大次数)
str_3 = string.gsub(str, 'L', '123', 5);

-- 返回查找到的索引 = string.find(要查找的字符串,要查找的字符串,从3号索引位置开始查找)
str_4 = string.find(str_3, "123", 3);

-- string.reverse(反转指定字符串)
str_5 = string.reverse(str);

-- string.format 格式化  %d占位符（C# "{0} {1}" , 1 , 2）
str_6 = string.format('1' .. ' + ' .. '2' .. ' = ' .. '3', 1, 2, 3);
str_7 = string.format("%d + %d = %d", 1, 2, 3);

-- %02d(保留两位数)  %03d(保留三位数)
str_8 = string.format("%02d/%02d/%03d", 2, 6, 2022);

print(str_1, str_2, str_3, str_4, str_5, str_6, str_7, str_8);


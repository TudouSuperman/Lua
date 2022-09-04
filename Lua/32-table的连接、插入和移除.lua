myTable = {"Lua", "C#", "Java", "C++", "C"}

-- 拼接字符串
print(table.concat(myTable));
-- 拼接字符串  以逗号分割隔开
print(table.concat(myTable, ","));
-- 拼接字符串  以逗号分割隔开  拼接指定索引范围的字符串
print(table.concat(myTable, ",", 2, 4));

-- 往表的末尾添加数据
myTable[#myTable + 1] = "PHP";
print(myTable[#myTable]);
-- 往表的末尾添加数据
table.insert(myTable, "JavaScript");
print(myTable[#myTable]);
-- 往表的指定位置插入数据
table.insert(myTable, 2, "Boo");
print(myTable[2], myTable[3]);
-- 移除表里的指定位置数据  (和 myTable[2] = nil 有区别)
table.remove(myTable, 2);
-- myTable[2] = nil;   这里只是让这个参数等于 nil
print(myTable[2]);

-- table.insert 和 table.remove 都会保证索引的连续性
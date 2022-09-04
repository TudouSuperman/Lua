-- 表可以无限添加内容
myTable = {};
myTable[1] = "Lua";
myTable[1] = nil;
myTable[100] = "C#";
print(myTable[1]);

myTable["name"] = "Java";

-- 如果要清空表就要吧这个表和这个表赋值过的都 nil
-- newTable  myTable  都指向同一个地址
newTable = myTable;
-- 都 nil 才算清空
newTable = nil
myTable = nil;

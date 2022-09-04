--[[

nil ：只有一个值（nil），表示一个无效值（在条件表达式中相当于 false）。
    
boolean ：包含两个值（true 和 false）。

number ：表示双精度类型的浮点小数(包含 整数 和 小数)

string ：字符串由一对 双引号 或 单引号 来表示

function ：由 C 或 Lua 编写的函数

userdata ：表示任意储存在变量中的 C 数据结构

thread ：表示执行的独立线路，用于执行协同程序（Lua 协程）

table ：Lua 中的表类型，其实是一个关联数组，其索引可以是数字或字符串，
        表的创建可以通过 “构造表达式” 来完成，最简单的构造表达式{}，用来创建一个空表。

type ：type 与 print 一样是 Lua 的内置类型，可以取到指定类型。

--]]
 
print(type("Hello Str"));
print(type(1));
print(type(1.1));
-- 这里的 print 可以当作一个 一个值打印出来
print(type(print));
print(type(type));
-- 这里 type 返回的都是字符串类型，"nil"(是占内存的) 而不是 nil(是不占内存的)
print(type(nil));
-- 这里因为没有定义 xxx 所以返回结果是 "nil"
print(type(xxx));
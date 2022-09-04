--[[
模块类似 C# 中的类，模块就是把变量和类做成了表，方便外界引入或者共享

Lua 中两种引入模块的方式（模块类似 C# 的 命名空间）
require "模块名";
require("模块名");
--]] 

require "34.1-Lua中的模块";
print(module.var);
module.func();
module.func2();

-- 模块的局部函数无法访问
-- func3();
module.func4();

-- 起别名方式调用
m = require "34.1-Lua中的模块";
print(m.var);

-- 这里报错可能是模块名格式写错了

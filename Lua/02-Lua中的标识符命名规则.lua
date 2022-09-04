--[[

一般约定，以下划线开头连接一串大写字母的名字（比如_VERSION）被保留用于 Lua 内部全局变量。

避免 _NAME 下划线带上大写字母的这种 lua 保留字（没有使用但是保留着的）写法
因为 lua 保留字（没有使用但是保留着的）就是以这种方式写的

lua 不允许使用特殊字符如：@ $ %

lua 是区分大小写的编程语言，如 String 与 string 是两个不同的标示符

关键词（有使用并且是保留着的）：if else elseif for local false true return break 
关键词使用编辑器的时候会有高亮显示 

--]] 

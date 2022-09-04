-- Lua 中的 C 包其实就是 C 语言写的包 可以帮助实现一些 C 写好的功能

local path = "usr/local/lua/lib/libluasocket.so";
local f = loadlib(path, "luaopen_socket");

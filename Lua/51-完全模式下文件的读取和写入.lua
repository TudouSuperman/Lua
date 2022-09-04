-- 简单模式和完全模式是对应的
-- 缓冲区域是减少对硬盘的交互提高性能，一般是缓冲区满了才会写入硬盘
file = io.open("48-1.txt", "r");
print(file:read());
file:close();

file = io.open("48-1.txt", "a");
file:write("www.siki.com");
file:close();

-- "*n"	读取一个数字并返回它。例：file.read("*n")
-- "*a"	从当前位置读取整个文件。例：file.read("*a")
-- "*l"（默认）	读取下一行，在文件尾 (EOF) 处返回 nil。例：file.read("*l")
-- number 返回一个指定字符个数的字符串，或在 EOF 时返回 nil。例：file.read(5)
file = io.open("48-1.txt", "r");

io.input(file);

print(io.read("*a"));

io.close(file);

-- r 只读  w 只写  a 以附加的方式只写
-- 打开指定文件，如果文件不存在则会报错，这里的 "r" 是以只读的方式打开文件，该文件必须存在
file = io.open("48-1.txt", "r");
-- 开始读取
io.input(file);

-- io.read()读取一行内容，输出读取内容，没有读取到会输出 nil
print(io.read());
-- io.read()读取一行内容，输出读取内容，没有读取到会输出 nil
print(io.read());

-- 操作完文件后一定要关闭，防止出现未知错误
io.close(file);

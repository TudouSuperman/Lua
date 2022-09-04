-- a = 10  b = true
a, b = 10, true;
print(a, b);

-- c = 10  d = 2.5  e = "hello"
c, d, e = 10, 2.5, "hello";
print(c, d, e);

-- a = b  b = a  （交换两个变量的值）
a, b = b, a;
print(a, b);

-- 当值比变量多时，多余的值会自动被忽略
a, b = 10, 20, 30;
print(a, b);

-- 当变量比值多时，多余的变量会自动赋空值 nil
a, b, c = 10, 20;
print(a, b, c);

-- Lua 中方法可以同时返回多个值
function test()
    return 10, true, "hello", 1.25;
end
print(test());

-- 也可以接收方法的几个值，这里就接受前两个（从前往后）
a, b = test();
print(a, b);

-- boolean 类型只有两个可选值：true false ,Lua 把 false 和 nil 看作是 '假'，其他的都为 '真'。
print(type(true));
print(type(false));
-- 这里打印的是 nil 因为没有对 nil 进行逻辑语句判断。
print(type(nil));

-- 除了 false 和 nil 其他任何类型都为 '真'
if 0 then
    print(true);
end

if nil then
    print("nil 被当作 true 处理");
else
    print("nil 被当作 false 处理");
end

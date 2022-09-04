-- 1，调用迭代函数，(把状态变量和掠制变曩当做参数传递给迭代函数）状态变量只会在第一次调用的时候赋值
-- 2，如果迭代函数的返回值为 nil ,退出 for 循环，如果不是 ni1 的话，把返回值赋值给变量列表，并执行循环体

function square(state, control)
    if (control >= state) then
        return nil;
    else
        control = control + 1;
        return control, control * control
    end
end

for i, j in square, 9, 0 do
    print(i, j);
end

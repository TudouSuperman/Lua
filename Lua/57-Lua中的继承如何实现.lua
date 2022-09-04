-- 可以把当前表当作一个对象
person = {
    name = "siki",
    arg = 99
}

-- 调用一个属性的时候，如果 t 中不存在，那么会在 __index 所指定的 table 中查找
function person:new(obj)
    -- or 逻辑运算，如果 obj 等于空返回 {}，否则返回 obj
    t = obj or {};

    -- 写法 1
    -- setmetatable(t, { __index = self});

    -- 写法 2  self 即是元表，也是原值
    setmetatable(t, self);
    self.__index = self;

    return t;
end

Student = person:new();
Student.grade = 1;
-- 因为 Student 没有 new 方法所以他会去他的元表 person 里去找，调用 person 里的 new
stu1 = Student:new();

-- 继承结构 -> stu1 -> Student-> person -> new
-- person 有的 stu1 都有

print(stu1.name);

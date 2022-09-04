-- 可以把当前表当作一个对象
person = {
    name = "siki",
    arg = 99
}

function person:eat()
    print(self.name .. "在吃饭");
    print(self.name .. "的年龄是" .. self.age);
end

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

-- new 一个原型表
person1 = person:new(nil);
-- new 根据现有对象添加新项的表
person2 = person:new({
    weight = 100
});

print(person1.weight);
print(person2.weight);

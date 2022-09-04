-- table function
-- 对于一个对象来说  属性 方法
-- 以人为例子：
person = {
    name = "SQ",
    age = 22
};

-- 方式 1
--[[
person.eat = function()
    print(person.name .. "在吃饭");
end
--]]

-- 方式 2
--[[
function person.eat()
    print(person.name .. "在吃饭");
end
--]]

-- 方式 3
--[[
function person.eat(self)
    print(self.name .. "在吃饭");
end

a = person

person.eat(a);

--]]

-- 方式 4（最重要）
function person:eat()
    -- self 变量就代表了当前的表
    print(self.name .. "在吃饭");
end

a = person
-- a 调用 eat , self 就是 a
a:eat();
-- 通过 ：调用 self 才会赋值，通过 . 调用则不会
a.eat();
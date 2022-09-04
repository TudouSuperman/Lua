-- 定义了一个对象
--[[
person = {
    name = "siki",
    arg = 99
}

function person:eat()
    print(self.name .. "在吃饭");
    print(self.name .. "的年龄是" .. self.age);
end

person:eat();

-- 想有第二个对象还得重新定义赋值一遍  （C# 直接有个 person 类 new 就可以）
person = {
    name = "siki",
    arg = 99
}

function person:eat()
    print(self.name .. "在吃饭");
    print(self.name .. "的年龄是" .. self.age);
end

person:eat();
--]] 


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
function person:new()
   -- 这里的 t 最好设置为 local 的，否则这个 t 是全局变量，在外界还是可以访问
   -- 不然在外界 print(t) 会显示存在
    local t = {};
    setmetatable(t, {
        __index = self
    })
    return t;
end

-- 每次 new 都会创建一张新表
person1 = person:new();
person2 = person:new();

print(person1.name);
print(person2.name);

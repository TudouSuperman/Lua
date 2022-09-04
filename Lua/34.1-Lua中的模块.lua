module = {};

module.var = "LuaFunc";

-- 在表里添加函数的方式1
module.func = function()
    print("This is the function inside the module1");
end

-- 在表里添加函数的方式2
function module.func2()
    print("This is the function inside the module2");
end

-- 私有函数
local function func3()
    print("Local Function");
end

-- 模块里一般是 module.func 的形式定义，用于区分
function module.func4()
    func3();
    print("Global Function");
end

return module;

--算数运算符
print(1 + 2)
print(5 /10)
print(5.0 / 10)
print(2 ^ 10)

local num = 1357
print(num % 2)
print((num % 2) == 1)

--关系运算符
print(1 == 2)
print(1 < 2)
print(1 <=2)
print(1 > 2)
print(1 >= 2)
print(1 ~= 2)

--Lua 是作引用比较的

local a = {a=1,b=2}
local b = {a=1,b=2}
print(a == b)

--逻辑运算符
print(true and nil)

print(true or nil)

print(not 1)

--字符串连接
print("hello" .. " world")
print(0 .. 1)
print(string.format("%s %s", "hello", "world"))
print(string.format("%d  %s %s %f", 123, "hello", "world",  1.0))
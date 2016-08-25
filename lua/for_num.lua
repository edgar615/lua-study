--数字for
for i= 1, 5 do
  print(i)
end

for i = 1, 10, 2 do
  print(i)
end

for i = 10, 1, -1 do
  print(i)
end

--泛型for

local a = {"a", "b", "c", "d"}
for i, v in ipairs(a) do
  print("index:", i, " value:", v)
end

local days = {
   "Monday", "Tuesday", "Wednesday", "Thursday",
   "Friday", "Saturday","Sunday"
}

local revDays = {}
for k, v in pairs(days) do
  revDays[v] = k
end

-- print value
for k,v in pairs(revDays) do
  print("k:", k, " v:", v)
end
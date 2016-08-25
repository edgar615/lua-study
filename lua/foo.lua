local function foo()
  print("in the functon")

  local x = 10
  local y = 20
  return x + y
end

local a = foo

print(a())

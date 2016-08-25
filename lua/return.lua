local function swap(a, b)
  return b, a
end

local x = 1;
local y = 20;

x, y = swap(x, y)
print(x, y)
local M = {}
complex = M

M.i = {r=0, i = 1 }
function M.new(r, i)
    return {r = r, i = i}
end

function M.add(c1, c2)
    return M.new(c1.r + c2.r, c1.i + c2.i)
end

function M.sub(c1, c2)
    return M.new(c1.r - c2.r, c1.i - c2.i)
end

function M.mul(c1, c2)
    return M.new(c1.r * c2.r - c1.i * c2.i, c1.r * c2.i + c1.i * c2.r)
end

local function inv(c)
   local n = c.r^2 + c.i^2
    return M.new(c.r/n, -c.i/n)
end

function M.div(c1, c2)
    return M.mul(c1, inv(c2))
end

return complex
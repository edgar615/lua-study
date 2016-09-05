local modname = "complex4"
local M = {}
_G[modname] = M
package.loaded[modname] = M

--在setfenv之前导入其他模块
local sqrt = math.sqrt
local io = io

setfenv(1, M)

i = {r=0, i = 1 }
function new(r, i)
    return {r = r, i = i}
end

function add(c1, c2)
    return new(c1.r + c2.r, c1.i + c2.i)
end

function sub(c1, c2)
    return new(c1.r - c2.r, c1.i - c2.i)
end

function mul(c1, c2)
    return new(c1.r * c2.r - c1.i * c2.i, c1.r * c2.i + c1.i * c2.r)
end

function inv(c)
   local n = c.r^2 + c.i^2
    return M.new(c.r/n, -c.i/n)
end

function div(c1, c2)
    return mul(c1, inv(c2))
end

--如果一个模块无返回值的话，require就会返回package.loaded[modname]的当前值

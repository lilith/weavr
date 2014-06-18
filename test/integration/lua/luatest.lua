local pluto = require 'pluto'

local coro = coroutine.create(function()
  for i = 1, 20 do
    coroutine.yield(i)
  end
end)

local a = {}

for i = 1, 5 do
  local success, val = coroutine.resume(coro)
  table.insert(a, val)
end
local perms = {
  [coroutine.yield] = 1,
}
local s = pluto.persist(perms, {co = coro})
perms = { [1] = coroutine.yield }
coro = pluto.unpersist(perms, s).co

local b = {}
for i = 1, 5 do
  local success, val = coroutine.resume(coro)
  table.insert(b, val)
end

return {a=a,b=b}
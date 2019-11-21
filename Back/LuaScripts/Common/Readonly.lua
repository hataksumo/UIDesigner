ReadonlyMetatable = {}
ReadonlyMetatable.__newindex = function(t,k,v)
  error("Read only,so you can't add new key for it")
end
ReadonlyMetatable.__metatable = "Locked"

function SetLooseReadonly(t)
  setmetatable(t,ReadonlyMetatable)
end

function SetTightReadonly(t)
  local proxy = {}
  local mt = {
    __metatable = "Locked",
    __index = t,
    __newindex = function(t,k,v)
      error("attempt to update a read-only table", 2)
    end
  }
  setmetatable(proxy , mt)
  return proxy
end
local cfg_property= dofile "Config/property"


local PropMT = {}
PropMT.keyHash = {}
PropMT.len = 0
PropMT.begin = 10000
for key,val in pairs(cfg_property) do
	PropMT.keyHash[val.EnName] = key
	PropMT.len = PropMT.len + 1
	PropMT.begin = math.min(PropMT.begin,key)
end
PropMT.begin = PropMT.begin - 1

local _fnGetIndex = function(v_key)
	if type(v_key) == "string" then
		if PropMT.keyHash[v_key] ~= nil then
			return PropMT.keyHash[v_key] - PropMT.begin
		end
	elseif type(v_key) == "number" and v_key <= PropMT.begin + PropMT.len then
		--print("in get number key "..v_key - PropMT.begin)
		return v_key - PropMT.begin
	end
	return -1
end

PropMT.__index= function(v_table,v_key)
	local idx = _fnGetIndex(v_key)
	if idx > 0 then
		return v_table.data[idx]
	else
		if PropMT[v_key] then
			return PropMT[v_key]
		end
		ZFDebug.Error(string.format("没有找到名为%s的键",v_key))
		return nil
	end
end

PropMT.__newindex= function(v_table,v_key,v_val)
	local idx = _fnGetIndex(v_key)
	if idx > 0 then
		v_table.data[idx] = v_val
	else
		ZFDebug.Error(string.format("没有找到名为%s的键",v_key))
	end
end

PropMT.__add = function(v_t1,v_t2)
	local rtn =CreatePropTable()
	for i,val in ipairs(v_t1.data)  do
		rtn.data[i] = v_t1.data[i] + v_t2.data[i]
	end
	return rtn
end

PropMT.__mul = function(v_t1,v_fac)
	local rtn =CreatePropTable()
	if type(v_fac) == "number" then
		for i,val in ipairs(v_t1.data)  do
			rtn.data[i] = v_t1.data[i] * v_fac
		end
	end
	return rtn
end



PropMT.print = function(v_self)
	for _i,val in ipairs(v_self.data) do
		local propCfg = cfg_property[_i+PropMT.begin]
		print(string.format(propCfg.Show_Str,val*propCfg.Show_Fac))
	end
end

PropMT.add = function(v_self,v_addPropCfg,v_smallBg)
	v_smallBg = v_smallBg or false
	for _i,propData in ipairs(v_addPropCfg) do
		if not v_smallBg then
			v_self[propData.Id] = v_self[propData.Id] + propData.Val
		else
			v_self[propData.id] = v_self[propData.id] + propData.val
		end
	end
	return v_self
end

_G.CreatePropTable = function()
	local prop_table = {}
	prop_table.data = {}
	for key,val in pairs(cfg_property) do
		prop_table.data[key-PropMT.begin] = 0
	end
	setmetatable(prop_table,PropMT)
	return prop_table
end

_G.AddPropByCfg = function(v_prop,v_cfg)
	for _i,propData in ipairs(v_cfg) do
		v_prop[propData.Id] = v_prop[propData.Id] + propData.Val
	end
	return v_prop
end

return _G.CreatePropTable
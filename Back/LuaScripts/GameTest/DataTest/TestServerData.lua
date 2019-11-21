--[[
-- added by wsh @ 2017-12-07
-- ServerData测试数据
--]]

local TestServerData = {
	{
		["server_id"] = 10001, 
		["area_id"] = 10001, 
		["state"] = 0, 
		["recommend"] = true, 
	},
	{
		["server_id"] = 10002,
		["area_id"] = 10001,
		["state"] = 0,
		["recommend"] = true,
	},
	{
		["server_id"] = 10003,
		["area_id"] = 10001,
		["state"] = 0,
		["recommend"] = true,
	},
	{
		["server_id"] = 10004,
		["area_id"] = 10001,
		["state"] = 0,
		["recommend"] = true,
	},
	{
		["server_id"] = 10005,
		["area_id"] = 10001,
		["state"] = 0,
		["recommend"] = true,
	},
	{
		["server_id"] = 10006,
		["area_id"] = 10001,
		["state"] = 0,
		["recommend"] = true,
	},
	{
		["server_id"] = 10007,
		["area_id"] = 10001,
		["state"] = 0,
		["recommend"] = true,
	},
	{
		["server_id"] = 10008,
		["area_id"] = 10001,
		["state"] = 0,
		["recommend"] = true,
	},
	{
		["server_id"] = 10009,
		["area_id"] = 10001,
		["state"] = 0,
		["recommend"] = true,
	},
}

--for i = 1, 1000 do
--	table.insert(TestServerData, {
--		["server_id"] = 10035 + i,
--		["area_id"] = 10005,
--		["state"] = math.random(0, 3),
--		["recommend"] = false,
--	})
--end

return TestServerData
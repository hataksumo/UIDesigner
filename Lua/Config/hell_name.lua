--[[
--note:
地狱道名字，等级限制的表
colums:
{Name,名字} ,{BegLevel,初始等级} ,{LevelLimit,等级限制} ,{R,防御基值}
primary key:
#0 [地狱道名字]: Id
]]
if ddt["hell_name"] ~= nil then
	return ddt["hell_name"]
end
local data = {
	[1] = {Name = "无",BegLevel = 1,LevelLimit = 15,R = 300},
	[2] = {Name = "等活",BegLevel = 15,LevelLimit = 30,R = 450},
	[3] = {Name = "黑绳",BegLevel = 30,LevelLimit = 40,R = 650},
	[4] = {Name = "众合",BegLevel = 40,LevelLimit = 50,R = 850},
	[5] = {Name = "叫唤",BegLevel = 50,LevelLimit = 60,R = 1150},
	[6] = {Name = "大叫唤",BegLevel = 60,LevelLimit = 70,R = 1450},
	[7] = {Name = "焦热",BegLevel = 70,LevelLimit = 80,R = 1850},
	[8] = {Name = "大焦热",BegLevel = 80,LevelLimit = 90,R = 2300},
	[9] = {Name = "无间",BegLevel = 90,LevelLimit = 100,R = 2750}
}
ddt["hell_name"] = data
SetLooseReadonly(data)
return data
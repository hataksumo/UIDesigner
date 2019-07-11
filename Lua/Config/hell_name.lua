--[[
--note:
地狱道名字，等级限制的表
colums:
{Name,名字} ,{HellLevel,地狱道等级} ,{BegLevel,初始等级} ,{LevelLimit,等级限制} ,{R,防御基值}
primary key:
#0 [地狱道名字]: Group,Lv
]]
local _T = LangUtil.Language
if ddt["hell_name"] ~= nil then
	return ddt["hell_name"]
end
local data = {
	[1] = {
		[1] = {Name = "白",HellLevel = 1,BegLevel = 1,LevelLimit = 15,R = 100},
		[2] = {Name = "绿",HellLevel = 2,BegLevel = 15,LevelLimit = 30,R = 200},
		[3] = {Name = "绿+1",HellLevel = 3,BegLevel = 30,LevelLimit = 40,R = 250},
		[4] = {Name = "蓝",HellLevel = 4,BegLevel = 40,LevelLimit = 50,R = 350},
		[5] = {Name = "蓝+1",HellLevel = 5,BegLevel = 50,LevelLimit = 60,R = 450},
		[6] = {Name = "蓝+2",HellLevel = 6,BegLevel = 60,LevelLimit = 70,R = 550},
		[7] = {Name = "蓝+3",HellLevel = 7,BegLevel = 70,LevelLimit = 80,R = 700},
		[8] = {Name = "紫",HellLevel = 8,BegLevel = 80,LevelLimit = 85,R = 800},
		[9] = {Name = "紫+1",HellLevel = 9,BegLevel = 85,LevelLimit = 90,R = 900},
		[10] = {Name = "紫+2",HellLevel = 10,BegLevel = 90,LevelLimit = 95,R = 1050},
		[11] = {Name = "紫+3",HellLevel = 11,BegLevel = 95,LevelLimit = 100,R = 1200},
		[12] = {Name = "橙",HellLevel = 12,BegLevel = 100,LevelLimit = 105,R = 1350},
		[13] = {Name = "橙+1",HellLevel = 13,BegLevel = 105,LevelLimit = 110,R = 1550},
		[14] = {Name = "橙+2",HellLevel = 14,BegLevel = 110,LevelLimit = 115,R = 1800},
		[15] = {Name = "橙+3",HellLevel = 15,BegLevel = 115,LevelLimit = 120,R = 2050},
		[16] = {Name = "红",HellLevel = 16,BegLevel = 120,LevelLimit = 125,R = 2400},
		[17] = {Name = "红+1",HellLevel = 17,BegLevel = 125,LevelLimit = 130,R = 2750},
		[18] = {Name = "红+2",HellLevel = 18,BegLevel = 130,LevelLimit = 135,R = 3150},
		[19] = {Name = "红+3",HellLevel = 19,BegLevel = 135,LevelLimit = 140,R = 3600},
		[20] = {Name = "黑",HellLevel = 20,BegLevel = 140,LevelLimit = 150,R = 4500}
	},
	[2] = {
		[1] = {Name = "白",HellLevel = 1,BegLevel = 1,LevelLimit = 15,R = 100},
		[2] = {Name = "绿",HellLevel = 2,BegLevel = 15,LevelLimit = 30,R = 200},
		[3] = {Name = "绿+1",HellLevel = 3,BegLevel = 30,LevelLimit = 40,R = 250},
		[4] = {Name = "蓝",HellLevel = 4,BegLevel = 40,LevelLimit = 50,R = 350},
		[5] = {Name = "蓝+1",HellLevel = 5,BegLevel = 50,LevelLimit = 60,R = 450},
		[6] = {Name = "蓝+2",HellLevel = 6,BegLevel = 60,LevelLimit = 70,R = 550},
		[7] = {Name = "蓝+3",HellLevel = 7,BegLevel = 70,LevelLimit = 80,R = 700},
		[8] = {Name = "紫",HellLevel = 8,BegLevel = 80,LevelLimit = 85,R = 800},
		[9] = {Name = "紫+1",HellLevel = 9,BegLevel = 85,LevelLimit = 90,R = 900},
		[10] = {Name = "紫+2",HellLevel = 10,BegLevel = 90,LevelLimit = 95,R = 1050},
		[11] = {Name = "紫+3",HellLevel = 11,BegLevel = 95,LevelLimit = 100,R = 1200},
		[12] = {Name = "橙",HellLevel = 12,BegLevel = 100,LevelLimit = 105,R = 1350},
		[13] = {Name = "橙+1",HellLevel = 13,BegLevel = 105,LevelLimit = 110,R = 1550},
		[14] = {Name = "橙+2",HellLevel = 14,BegLevel = 110,LevelLimit = 115,R = 1800},
		[15] = {Name = "橙+3",HellLevel = 15,BegLevel = 115,LevelLimit = 120,R = 2050},
		[16] = {Name = "红",HellLevel = 16,BegLevel = 120,LevelLimit = 125,R = 2400},
		[17] = {Name = "红+1",HellLevel = 17,BegLevel = 125,LevelLimit = 130,R = 2750},
		[18] = {Name = "红+2",HellLevel = 18,BegLevel = 130,LevelLimit = 135,R = 3150},
		[19] = {Name = "红+3",HellLevel = 19,BegLevel = 135,LevelLimit = 140,R = 3600},
		[20] = {Name = "黑",HellLevel = 20,BegLevel = 140,LevelLimit = 150,R = 4500}
	}
}
ddt["hell_name"] = data
SetLooseReadonly(data)
return data
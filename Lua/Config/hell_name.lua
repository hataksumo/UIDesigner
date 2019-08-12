--[[
--note:
地狱道名字，等级限制的表
colums:
{Name,名字} ,{QuaColorIdx,颜色} ,{QuaSmLv,颜色小段} ,{HellLevel,地狱道等级} ,{BegLevel,初始等级} ,{LevelLimit,等级限制} ,{R,防御基值}
primary key:
#0 [地狱道名字]: Group,Lv
]]
local _T = LangUtil.Language
if ddt["hell_name"] ~= nil then
	return ddt["hell_name"]
end
local data = {
	[1] = {
		[1] = {Name = "白",QuaColorIdx = 1,QuaSmLv = 0,HellLevel = 1,BegLevel = 1,LevelLimit = 10,R = 300},
		[2] = {Name = "绿",QuaColorIdx = 2,QuaSmLv = 0,HellLevel = 2,BegLevel = 10,LevelLimit = 20,R = 500},
		[3] = {Name = "绿+1",QuaColorIdx = 2,QuaSmLv = 1,HellLevel = 3,BegLevel = 20,LevelLimit = 30,R = 1000},
		[4] = {Name = "绿+2",QuaColorIdx = 2,QuaSmLv = 2,HellLevel = 4,BegLevel = 30,LevelLimit = 40,R = 1500},
		[5] = {Name = "蓝",QuaColorIdx = 3,QuaSmLv = 0,HellLevel = 5,BegLevel = 40,LevelLimit = 50,R = 2500},
		[6] = {Name = "蓝+1",QuaColorIdx = 3,QuaSmLv = 1,HellLevel = 6,BegLevel = 50,LevelLimit = 60,R = 3200},
		[7] = {Name = "蓝+2",QuaColorIdx = 3,QuaSmLv = 2,HellLevel = 7,BegLevel = 60,LevelLimit = 70,R = 4500},
		[8] = {Name = "蓝+3",QuaColorIdx = 3,QuaSmLv = 3,HellLevel = 8,BegLevel = 70,LevelLimit = 80,R = 5750},
		[9] = {Name = "紫",QuaColorIdx = 4,QuaSmLv = 0,HellLevel = 9,BegLevel = 80,LevelLimit = 85,R = 6500},
		[10] = {Name = "紫+1",QuaColorIdx = 4,QuaSmLv = 1,HellLevel = 10,BegLevel = 85,LevelLimit = 90,R = 7750},
		[11] = {Name = "紫+2",QuaColorIdx = 4,QuaSmLv = 2,HellLevel = 11,BegLevel = 90,LevelLimit = 95,R = 9000},
		[12] = {Name = "紫+3",QuaColorIdx = 4,QuaSmLv = 3,HellLevel = 12,BegLevel = 95,LevelLimit = 100,R = 10000},
		[13] = {Name = "橙",QuaColorIdx = 5,QuaSmLv = 0,HellLevel = 13,BegLevel = 100,LevelLimit = 105,R = 12000},
		[14] = {Name = "橙+1",QuaColorIdx = 5,QuaSmLv = 1,HellLevel = 14,BegLevel = 105,LevelLimit = 110,R = 14000},
		[15] = {Name = "橙+2",QuaColorIdx = 5,QuaSmLv = 2,HellLevel = 15,BegLevel = 110,LevelLimit = 115,R = 16000},
		[16] = {Name = "橙+3",QuaColorIdx = 5,QuaSmLv = 3,HellLevel = 16,BegLevel = 115,LevelLimit = 120,R = 18000},
		[17] = {Name = "红",QuaColorIdx = 6,QuaSmLv = 0,HellLevel = 17,BegLevel = 120,LevelLimit = 125,R = 21500},
		[18] = {Name = "红+1",QuaColorIdx = 6,QuaSmLv = 1,HellLevel = 18,BegLevel = 125,LevelLimit = 130,R = 25000},
		[19] = {Name = "红+2",QuaColorIdx = 6,QuaSmLv = 2,HellLevel = 19,BegLevel = 130,LevelLimit = 135,R = 29000},
		[20] = {Name = "红+3",QuaColorIdx = 6,QuaSmLv = 3,HellLevel = 20,BegLevel = 135,LevelLimit = 140,R = 33300},
		[21] = {Name = "黑",QuaColorIdx = 7,QuaSmLv = 0,HellLevel = 21,BegLevel = 140,LevelLimit = 150,R = 42000}
	},
	[2] = {
		[1] = {Name = "白",QuaColorIdx = 1,QuaSmLv = 0,HellLevel = 1,BegLevel = 1,LevelLimit = 10,R = 300},
		[2] = {Name = "绿",QuaColorIdx = 2,QuaSmLv = 0,HellLevel = 1,BegLevel = 10,LevelLimit = 20,R = 500},
		[3] = {Name = "绿+1",QuaColorIdx = 2,QuaSmLv = 1,HellLevel = 2,BegLevel = 20,LevelLimit = 30,R = 1000},
		[4] = {Name = "绿+2",QuaColorIdx = 2,QuaSmLv = 2,HellLevel = 3,BegLevel = 30,LevelLimit = 40,R = 1500},
		[5] = {Name = "蓝",QuaColorIdx = 3,QuaSmLv = 0,HellLevel = 4,BegLevel = 40,LevelLimit = 50,R = 2500},
		[6] = {Name = "蓝+1",QuaColorIdx = 3,QuaSmLv = 1,HellLevel = 5,BegLevel = 50,LevelLimit = 60,R = 3200},
		[7] = {Name = "蓝+2",QuaColorIdx = 3,QuaSmLv = 2,HellLevel = 6,BegLevel = 60,LevelLimit = 70,R = 4500},
		[8] = {Name = "蓝+3",QuaColorIdx = 3,QuaSmLv = 3,HellLevel = 7,BegLevel = 70,LevelLimit = 80,R = 5750},
		[9] = {Name = "紫",QuaColorIdx = 4,QuaSmLv = 0,HellLevel = 8,BegLevel = 80,LevelLimit = 85,R = 6500},
		[10] = {Name = "紫+1",QuaColorIdx = 4,QuaSmLv = 1,HellLevel = 9,BegLevel = 85,LevelLimit = 90,R = 7750},
		[11] = {Name = "紫+2",QuaColorIdx = 4,QuaSmLv = 2,HellLevel = 10,BegLevel = 90,LevelLimit = 95,R = 9000},
		[12] = {Name = "紫+3",QuaColorIdx = 4,QuaSmLv = 3,HellLevel = 11,BegLevel = 95,LevelLimit = 100,R = 10000},
		[13] = {Name = "橙",QuaColorIdx = 5,QuaSmLv = 0,HellLevel = 12,BegLevel = 100,LevelLimit = 105,R = 12000},
		[14] = {Name = "橙+1",QuaColorIdx = 5,QuaSmLv = 1,HellLevel = 13,BegLevel = 105,LevelLimit = 110,R = 14000},
		[15] = {Name = "橙+2",QuaColorIdx = 5,QuaSmLv = 2,HellLevel = 14,BegLevel = 110,LevelLimit = 115,R = 16000},
		[16] = {Name = "橙+3",QuaColorIdx = 5,QuaSmLv = 3,HellLevel = 15,BegLevel = 115,LevelLimit = 120,R = 18000},
		[17] = {Name = "红",QuaColorIdx = 6,QuaSmLv = 0,HellLevel = 16,BegLevel = 120,LevelLimit = 125,R = 21500},
		[18] = {Name = "红+1",QuaColorIdx = 6,QuaSmLv = 1,HellLevel = 17,BegLevel = 125,LevelLimit = 130,R = 25000},
		[19] = {Name = "红+2",QuaColorIdx = 6,QuaSmLv = 2,HellLevel = 18,BegLevel = 130,LevelLimit = 135,R = 29000},
		[20] = {Name = "红+3",QuaColorIdx = 6,QuaSmLv = 3,HellLevel = 19,BegLevel = 135,LevelLimit = 140,R = 33300},
		[21] = {Name = "黑",QuaColorIdx = 7,QuaSmLv = 0,HellLevel = 20,BegLevel = 140,LevelLimit = 150,R = 42000}
	}
}
ddt["hell_name"] = data
SetLooseReadonly(data)
return data
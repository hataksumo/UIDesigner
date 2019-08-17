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
		[4] = {Name = "蓝",QuaColorIdx = 3,QuaSmLv = 0,HellLevel = 4,BegLevel = 30,LevelLimit = 40,R = 1500},
		[5] = {Name = "蓝+1",QuaColorIdx = 3,QuaSmLv = 1,HellLevel = 5,BegLevel = 40,LevelLimit = 50,R = 2500},
		[6] = {Name = "蓝+2",QuaColorIdx = 3,QuaSmLv = 2,HellLevel = 6,BegLevel = 50,LevelLimit = 60,R = 3200},
		[7] = {Name = "紫",QuaColorIdx = 4,QuaSmLv = 0,HellLevel = 7,BegLevel = 60,LevelLimit = 70,R = 4300},
		[8] = {Name = "紫+1",QuaColorIdx = 4,QuaSmLv = 1,HellLevel = 8,BegLevel = 70,LevelLimit = 80,R = 5700},
		[9] = {Name = "紫+2",QuaColorIdx = 4,QuaSmLv = 2,HellLevel = 9,BegLevel = 80,LevelLimit = 90,R = 7600},
		[10] = {Name = "紫+3",QuaColorIdx = 4,QuaSmLv = 3,HellLevel = 10,BegLevel = 90,LevelLimit = 100,R = 10000},
		[11] = {Name = "橙",QuaColorIdx = 5,QuaSmLv = 0,HellLevel = 11,BegLevel = 100,LevelLimit = 110,R = 13200},
		[12] = {Name = "橙+1",QuaColorIdx = 5,QuaSmLv = 1,HellLevel = 12,BegLevel = 110,LevelLimit = 120,R = 17300},
		[13] = {Name = "橙+2",QuaColorIdx = 5,QuaSmLv = 2,HellLevel = 13,BegLevel = 120,LevelLimit = 130,R = 22750},
		[14] = {Name = "橙+3",QuaColorIdx = 5,QuaSmLv = 3,HellLevel = 14,BegLevel = 130,LevelLimit = 140,R = 29850},
		[15] = {Name = "橙+4",QuaColorIdx = 5,QuaSmLv = 4,HellLevel = 15,BegLevel = 140,LevelLimit = 150,R = 39200},
		[16] = {Name = "红",QuaColorIdx = 5,QuaSmLv = 0,HellLevel = 16,BegLevel = 150,LevelLimit = 160,R = 51500},
		[17] = {Name = "红+1",QuaColorIdx = 6,QuaSmLv = 1,HellLevel = 17,BegLevel = 160,LevelLimit = 170,R = 67600},
		[18] = {Name = "红+2",QuaColorIdx = 6,QuaSmLv = 2,HellLevel = 18,BegLevel = 170,LevelLimit = 180,R = 88750},
		[19] = {Name = "红+3",QuaColorIdx = 6,QuaSmLv = 3,HellLevel = 19,BegLevel = 180,LevelLimit = 190,R = 116500},
		[20] = {Name = "红+4",QuaColorIdx = 6,QuaSmLv = 4,HellLevel = 20,BegLevel = 190,LevelLimit = 200,R = 152950},
		[21] = {Name = "粉",QuaColorIdx = 7,QuaSmLv = 0,HellLevel = 21,BegLevel = 200,LevelLimit = 210,R = 191200}
	},
	[2] = {
		[1] = {Name = "白",QuaColorIdx = 1,QuaSmLv = 0,HellLevel = 1,BegLevel = 1,LevelLimit = 10,R = 300},
		[2] = {Name = "绿",QuaColorIdx = 2,QuaSmLv = 0,HellLevel = 1,BegLevel = 10,LevelLimit = 20,R = 500},
		[3] = {Name = "绿+1",QuaColorIdx = 2,QuaSmLv = 1,HellLevel = 2,BegLevel = 20,LevelLimit = 30,R = 1000},
		[4] = {Name = "蓝",QuaColorIdx = 3,QuaSmLv = 0,HellLevel = 3,BegLevel = 30,LevelLimit = 40,R = 1500},
		[5] = {Name = "蓝+1",QuaColorIdx = 3,QuaSmLv = 1,HellLevel = 4,BegLevel = 40,LevelLimit = 50,R = 2500},
		[6] = {Name = "蓝+2",QuaColorIdx = 3,QuaSmLv = 2,HellLevel = 5,BegLevel = 50,LevelLimit = 60,R = 3200},
		[7] = {Name = "紫",QuaColorIdx = 4,QuaSmLv = 0,HellLevel = 6,BegLevel = 60,LevelLimit = 70,R = 4300},
		[8] = {Name = "紫+1",QuaColorIdx = 4,QuaSmLv = 1,HellLevel = 7,BegLevel = 70,LevelLimit = 80,R = 5700},
		[9] = {Name = "紫+2",QuaColorIdx = 4,QuaSmLv = 2,HellLevel = 8,BegLevel = 80,LevelLimit = 90,R = 7600},
		[10] = {Name = "紫+3",QuaColorIdx = 4,QuaSmLv = 3,HellLevel = 9,BegLevel = 90,LevelLimit = 100,R = 10000},
		[11] = {Name = "橙",QuaColorIdx = 5,QuaSmLv = 0,HellLevel = 10,BegLevel = 100,LevelLimit = 110,R = 13200},
		[12] = {Name = "橙+1",QuaColorIdx = 5,QuaSmLv = 1,HellLevel = 11,BegLevel = 110,LevelLimit = 120,R = 17300},
		[13] = {Name = "橙+2",QuaColorIdx = 5,QuaSmLv = 2,HellLevel = 12,BegLevel = 120,LevelLimit = 130,R = 22750},
		[14] = {Name = "橙+3",QuaColorIdx = 5,QuaSmLv = 3,HellLevel = 13,BegLevel = 130,LevelLimit = 140,R = 29850},
		[15] = {Name = "橙+4",QuaColorIdx = 5,QuaSmLv = 4,HellLevel = 14,BegLevel = 140,LevelLimit = 150,R = 39200},
		[16] = {Name = "红",QuaColorIdx = 5,QuaSmLv = 0,HellLevel = 15,BegLevel = 150,LevelLimit = 160,R = 51500},
		[17] = {Name = "红+1",QuaColorIdx = 6,QuaSmLv = 1,HellLevel = 16,BegLevel = 160,LevelLimit = 170,R = 67600},
		[18] = {Name = "红+2",QuaColorIdx = 6,QuaSmLv = 2,HellLevel = 17,BegLevel = 170,LevelLimit = 180,R = 88750},
		[19] = {Name = "红+3",QuaColorIdx = 6,QuaSmLv = 3,HellLevel = 18,BegLevel = 180,LevelLimit = 190,R = 116500},
		[20] = {Name = "红+4",QuaColorIdx = 6,QuaSmLv = 4,HellLevel = 19,BegLevel = 190,LevelLimit = 200,R = 152950},
		[21] = {Name = "粉",QuaColorIdx = 7,QuaSmLv = 0,HellLevel = 20,BegLevel = 200,LevelLimit = 210,R = 191200}
	}
}
ddt["hell_name"] = data
SetLooseReadonly(data)
return data
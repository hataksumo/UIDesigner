--[[
output from excel card.卡牌表.xlsx
--note:
地狱道名字，等级限制的表
colums:
{Name,名字} ,{QuaColorIdx,颜色} ,{QuaSmLv,颜色小段} ,{HellLevel,地狱道等级} ,{BegLevel,初始等级} ,{LevelLimit,等级限制}
primary key:
#0 [地狱道名字]: Group,Lv
]]
local _T = LangUtil.Language
if ddt["hell_name"] ~= nil then
	return ddt["hell_name"]
end
local data = {
	[1] = {
		[1] = {Name = "等活",QuaColorIdx = 1,QuaSmLv = 0,HellLevel = 1,BegLevel = 1,LevelLimit = 15},
		[2] = {Name = "黑绳",QuaColorIdx = 2,QuaSmLv = 0,HellLevel = 2,BegLevel = 10,LevelLimit = 40},
		[3] = {Name = "黑绳+1",QuaColorIdx = 2,QuaSmLv = 1,HellLevel = 3,BegLevel = 10,LevelLimit = 40},
		[4] = {Name = "众合",QuaColorIdx = 3,QuaSmLv = 0,HellLevel = 4,BegLevel = 30,LevelLimit = 60},
		[5] = {Name = "众合+1",QuaColorIdx = 3,QuaSmLv = 1,HellLevel = 5,BegLevel = 30,LevelLimit = 60},
		[6] = {Name = "众合+2",QuaColorIdx = 3,QuaSmLv = 2,HellLevel = 6,BegLevel = 30,LevelLimit = 60},
		[7] = {Name = "叫唤",QuaColorIdx = 4,QuaSmLv = 0,HellLevel = 7,BegLevel = 50,LevelLimit = 80},
		[8] = {Name = "叫唤+1",QuaColorIdx = 4,QuaSmLv = 1,HellLevel = 8,BegLevel = 50,LevelLimit = 80},
		[9] = {Name = "叫唤+2",QuaColorIdx = 4,QuaSmLv = 2,HellLevel = 9,BegLevel = 50,LevelLimit = 80},
		[10] = {Name = "大叫唤",QuaColorIdx = 5,QuaSmLv = 0,HellLevel = 10,BegLevel = 70,LevelLimit = 100},
		[11] = {Name = "大叫唤+1",QuaColorIdx = 5,QuaSmLv = 1,HellLevel = 11,BegLevel = 70,LevelLimit = 100},
		[12] = {Name = "大叫唤+2",QuaColorIdx = 5,QuaSmLv = 2,HellLevel = 12,BegLevel = 70,LevelLimit = 100},
		[13] = {Name = "焦热",QuaColorIdx = 6,QuaSmLv = 0,HellLevel = 13,BegLevel = 90,LevelLimit = 120},
		[14] = {Name = "焦热+1",QuaColorIdx = 6,QuaSmLv = 1,HellLevel = 14,BegLevel = 90,LevelLimit = 120},
		[15] = {Name = "焦热+2",QuaColorIdx = 6,QuaSmLv = 2,HellLevel = 15,BegLevel = 90,LevelLimit = 120},
		[16] = {Name = "大焦热",QuaColorIdx = 7,QuaSmLv = 0,HellLevel = 16,BegLevel = 120,LevelLimit = 150},
		[17] = {Name = "大焦热+1",QuaColorIdx = 7,QuaSmLv = 1,HellLevel = 17,BegLevel = 120,LevelLimit = 150},
		[18] = {Name = "大焦热+2",QuaColorIdx = 7,QuaSmLv = 2,HellLevel = 18,BegLevel = 120,LevelLimit = 150},
		[19] = {Name = "无间",QuaColorIdx = 8,QuaSmLv = 0,HellLevel = 19,BegLevel = 140,LevelLimit = 150},
		[20] = {Name = "无间+1",QuaColorIdx = 8,QuaSmLv = 1,HellLevel = 20,BegLevel = 140,LevelLimit = 150}
	},
	[2] = {
		[1] = {Name = "白",QuaColorIdx = 1,QuaSmLv = 0,HellLevel = 1,BegLevel = 1,LevelLimit = 5},
		[2] = {Name = "绿",QuaColorIdx = 2,QuaSmLv = 0,HellLevel = 1,BegLevel = 5,LevelLimit = 15},
		[3] = {Name = "绿+1",QuaColorIdx = 2,QuaSmLv = 1,HellLevel = 2,BegLevel = 15,LevelLimit = 25},
		[4] = {Name = "蓝",QuaColorIdx = 3,QuaSmLv = 0,HellLevel = 3,BegLevel = 25,LevelLimit = 35},
		[5] = {Name = "蓝+1",QuaColorIdx = 3,QuaSmLv = 1,HellLevel = 4,BegLevel = 35,LevelLimit = 42},
		[6] = {Name = "蓝+2",QuaColorIdx = 3,QuaSmLv = 2,HellLevel = 5,BegLevel = 42,LevelLimit = 47},
		[7] = {Name = "紫",QuaColorIdx = 4,QuaSmLv = 0,HellLevel = 6,BegLevel = 47,LevelLimit = 52},
		[8] = {Name = "紫+1",QuaColorIdx = 4,QuaSmLv = 1,HellLevel = 7,BegLevel = 52,LevelLimit = 57},
		[9] = {Name = "紫+2",QuaColorIdx = 4,QuaSmLv = 2,HellLevel = 8,BegLevel = 57,LevelLimit = 65},
		[10] = {Name = "紫+3",QuaColorIdx = 4,QuaSmLv = 3,HellLevel = 9,BegLevel = 65,LevelLimit = 72},
		[11] = {Name = "橙",QuaColorIdx = 5,QuaSmLv = 0,HellLevel = 10,BegLevel = 72,LevelLimit = 80},
		[12] = {Name = "橙+1",QuaColorIdx = 5,QuaSmLv = 1,HellLevel = 11,BegLevel = 80,LevelLimit = 87},
		[13] = {Name = "橙+2",QuaColorIdx = 5,QuaSmLv = 2,HellLevel = 12,BegLevel = 87,LevelLimit = 95},
		[14] = {Name = "橙+3",QuaColorIdx = 5,QuaSmLv = 3,HellLevel = 13,BegLevel = 95,LevelLimit = 102},
		[15] = {Name = "橙+4",QuaColorIdx = 5,QuaSmLv = 4,HellLevel = 14,BegLevel = 102,LevelLimit = 110},
		[16] = {Name = "红",QuaColorIdx = 5,QuaSmLv = 0,HellLevel = 15,BegLevel = 110,LevelLimit = 117},
		[17] = {Name = "红+1",QuaColorIdx = 6,QuaSmLv = 1,HellLevel = 16,BegLevel = 117,LevelLimit = 125},
		[18] = {Name = "红+2",QuaColorIdx = 6,QuaSmLv = 2,HellLevel = 17,BegLevel = 125,LevelLimit = 132},
		[19] = {Name = "红+3",QuaColorIdx = 6,QuaSmLv = 3,HellLevel = 18,BegLevel = 132,LevelLimit = 140},
		[20] = {Name = "红+4",QuaColorIdx = 6,QuaSmLv = 4,HellLevel = 19,BegLevel = 140,LevelLimit = 150}
	}
}
ddt["hell_name"] = data
SetLooseReadonly(data)
return data
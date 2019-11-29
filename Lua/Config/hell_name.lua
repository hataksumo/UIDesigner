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
		[1] = {Name = "练体",QuaColorIdx = 1,QuaSmLv = 0,HellLevel = 1,BegLevel = 1,LevelLimit = 15},
		[2] = {Name = "等活",QuaColorIdx = 2,QuaSmLv = 0,HellLevel = 2,BegLevel = 15,LevelLimit = 25},
		[3] = {Name = "黑绳",QuaColorIdx = 2,QuaSmLv = 1,HellLevel = 3,BegLevel = 25,LevelLimit = 40},
		[4] = {Name = "众合",QuaColorIdx = 3,QuaSmLv = 0,HellLevel = 4,BegLevel = 40,LevelLimit = 55},
		[5] = {Name = "叫唤",QuaColorIdx = 3,QuaSmLv = 1,HellLevel = 5,BegLevel = 55,LevelLimit = 70},
		[6] = {Name = "大叫唤",QuaColorIdx = 3,QuaSmLv = 2,HellLevel = 6,BegLevel = 70,LevelLimit = 85},
		[7] = {Name = "焦热",QuaColorIdx = 4,QuaSmLv = 0,HellLevel = 7,BegLevel = 85,LevelLimit = 100},
		[8] = {Name = "大焦热",QuaColorIdx = 4,QuaSmLv = 1,HellLevel = 8,BegLevel = 100,LevelLimit = 115},
		[9] = {Name = "无间",QuaColorIdx = 4,QuaSmLv = 2,HellLevel = 9,BegLevel = 115,LevelLimit = 130},
		[10] = {Name = "无我相",QuaColorIdx = 5,QuaSmLv = 0,HellLevel = 10,BegLevel = 130,LevelLimit = 140},
		[11] = {Name = "无众生相",QuaColorIdx = 5,QuaSmLv = 1,HellLevel = 11,BegLevel = 140,LevelLimit = 150}
	},
	[2] = {
		[1] = {Name = "练体",QuaColorIdx = 1,QuaSmLv = 0,HellLevel = 1,BegLevel = 1,LevelLimit = 15},
		[2] = {Name = "等活",QuaColorIdx = 2,QuaSmLv = 0,HellLevel = 2,BegLevel = 15,LevelLimit = 25},
		[3] = {Name = "黑绳",QuaColorIdx = 2,QuaSmLv = 1,HellLevel = 3,BegLevel = 25,LevelLimit = 40},
		[4] = {Name = "众合",QuaColorIdx = 3,QuaSmLv = 0,HellLevel = 4,BegLevel = 40,LevelLimit = 55},
		[5] = {Name = "叫唤",QuaColorIdx = 3,QuaSmLv = 1,HellLevel = 5,BegLevel = 55,LevelLimit = 70},
		[6] = {Name = "大叫唤",QuaColorIdx = 3,QuaSmLv = 2,HellLevel = 6,BegLevel = 70,LevelLimit = 85},
		[7] = {Name = "焦热",QuaColorIdx = 4,QuaSmLv = 0,HellLevel = 7,BegLevel = 85,LevelLimit = 100},
		[8] = {Name = "大焦热",QuaColorIdx = 4,QuaSmLv = 1,HellLevel = 8,BegLevel = 100,LevelLimit = 115},
		[9] = {Name = "无间",QuaColorIdx = 4,QuaSmLv = 2,HellLevel = 9,BegLevel = 115,LevelLimit = 130},
		[10] = {Name = "无我相",QuaColorIdx = 4,QuaSmLv = 3,HellLevel = 10,BegLevel = 130,LevelLimit = 140},
		[11] = {Name = "无众生相",QuaColorIdx = 5,QuaSmLv = 0,HellLevel = 11,BegLevel = 140,LevelLimit = 150}
	}
}
ddt["hell_name"] = data
SetLooseReadonly(data)
return data
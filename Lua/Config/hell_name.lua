--[[
--note:
地狱道名字，等级限制的表
colums:
{Name,名字} ,{BegLevel,初始等级} ,{LevelLimit,等级限制} ,{R,防御基值}
primary key:
#0 [地狱道名字]: Group,Lv
]]
if ddt["hell_name"] ~= nil then
	return ddt["hell_name"]
end
local data = {
	[1] = {
		[1] = {Name = "平民",BegLevel = 1,LevelLimit = 15,R = 100},
		[2] = {Name = "等活",BegLevel = 5,LevelLimit = 40,R = 150},
		[3] = {Name = "黑绳",BegLevel = 15,LevelLimit = 40,R = 250},
		[4] = {Name = "黑绳",BegLevel = 30,LevelLimit = 40,R = 400},
		[5] = {Name = "众合",BegLevel = 40,LevelLimit = 80,R = 550},
		[6] = {Name = "众合",BegLevel = 50,LevelLimit = 80,R = 700},
		[7] = {Name = "叫唤",BegLevel = 60,LevelLimit = 80,R = 950},
		[8] = {Name = "叫唤",BegLevel = 70,LevelLimit = 80,R = 1200},
		[9] = {Name = "大叫唤",BegLevel = 80,LevelLimit = 100,R = 1500},
		[10] = {Name = "大叫唤",BegLevel = 85,LevelLimit = 100,R = 1700},
		[11] = {Name = "大叫唤",BegLevel = 90,LevelLimit = 100,R = 1900},
		[12] = {Name = "大叫唤",BegLevel = 95,LevelLimit = 100,R = 2150},
		[13] = {Name = "焦热",BegLevel = 100,LevelLimit = 120,R = 2400},
		[14] = {Name = "焦热",BegLevel = 105,LevelLimit = 120,R = 2700},
		[15] = {Name = "焦热",BegLevel = 110,LevelLimit = 120,R = 3000},
		[16] = {Name = "焦热",BegLevel = 115,LevelLimit = 120,R = 3400},
		[17] = {Name = "大焦热",BegLevel = 120,LevelLimit = 140,R = 3800},
		[18] = {Name = "大焦热",BegLevel = 125,LevelLimit = 140,R = 4250},
		[19] = {Name = "大焦热",BegLevel = 130,LevelLimit = 140,R = 4750},
		[20] = {Name = "大焦热",BegLevel = 135,LevelLimit = 140,R = 5300},
		[21] = {Name = "无间",BegLevel = 140,LevelLimit = 150,R = 6000}
	},
	[2] = {
		[1] = {Name = "平民",BegLevel = 1,LevelLimit = 5,R = 100},
		[2] = {Name = "等活",BegLevel = 5,LevelLimit = 15,R = 150},
		[3] = {Name = "黑绳",BegLevel = 15,LevelLimit = 30,R = 250},
		[4] = {Name = "黑绳",BegLevel = 30,LevelLimit = 40,R = 400},
		[5] = {Name = "众合",BegLevel = 40,LevelLimit = 50,R = 550},
		[6] = {Name = "众合",BegLevel = 50,LevelLimit = 60,R = 700},
		[7] = {Name = "叫唤",BegLevel = 60,LevelLimit = 70,R = 950},
		[8] = {Name = "叫唤",BegLevel = 70,LevelLimit = 80,R = 1200},
		[9] = {Name = "大叫唤",BegLevel = 80,LevelLimit = 85,R = 1500},
		[10] = {Name = "大叫唤",BegLevel = 85,LevelLimit = 90,R = 1700},
		[11] = {Name = "大叫唤",BegLevel = 90,LevelLimit = 95,R = 1900},
		[12] = {Name = "大叫唤",BegLevel = 95,LevelLimit = 100,R = 2150},
		[13] = {Name = "焦热",BegLevel = 100,LevelLimit = 105,R = 2400},
		[14] = {Name = "焦热",BegLevel = 105,LevelLimit = 110,R = 2700},
		[15] = {Name = "焦热",BegLevel = 110,LevelLimit = 115,R = 3000},
		[16] = {Name = "焦热",BegLevel = 115,LevelLimit = 120,R = 3400},
		[17] = {Name = "大焦热",BegLevel = 120,LevelLimit = 125,R = 3800},
		[18] = {Name = "大焦热",BegLevel = 125,LevelLimit = 130,R = 4250},
		[19] = {Name = "大焦热",BegLevel = 130,LevelLimit = 135,R = 4750},
		[20] = {Name = "大焦热",BegLevel = 135,LevelLimit = 140,R = 5300},
		[21] = {Name = "无间",BegLevel = 140,LevelLimit = 150,R = 6000}
	}
}
ddt["hell_name"] = data
SetLooseReadonly(data)
return data
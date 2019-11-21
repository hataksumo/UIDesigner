--[[
--note:

colums:
{ID,ID} ,{GroupId,组ID} ,{HelpCol,辅助列} ,{Order,顺位} ,{Name,名字} ,{Quality,品质} ,{Cost[1].Id,消耗道具ID1} ,{Cost[1].Val,消耗数量1} ,{Cost[2].Id,消耗道具ID2} ,{Cost[2].Val,消耗数量2} ,{Cost[3].Id,消耗道具ID3} ,{Cost[3].Val,消耗数量3} ,{Prop[1].Id,属性ID1} ,{Prop[1].Val,属性值1} ,{Prop[2].Id,属性ID2} ,{Prop[2].Val,属性值2} ,{Prop[3].Id,属性ID3} ,{Prop[3].Val,属性值3} ,{AttrDesc,属性描述}
primary key:
#0 [收集子项]: ID
]]
return{
	[1] = {GroupId = 101,HelpCol = "Missions",Order = 1,Name = "常服曹焱兵",Quality = 2,Cost = {[1] = {Id = 1701001,Val = 5},[2] = {Id = 1603007,Val = 10}},Prop = {[1] = {Id = 111,Val = 20},[2] = {Id = 112,Val = 10},[3] = {Id = 113,Val = 200}},AttrDesc = "%s属性:%s"},
	[2] = {GroupId = 101,HelpCol = "Missions",Order = 2,Name = "曹玄亮",Quality = 3,Cost = {[1] = {Id = 1701002,Val = 5},[2] = {Id = 1603008,Val = 10}},Prop = {[1] = {Id = 111,Val = 20},[2] = {Id = 112,Val = 10},[3] = {Id = 113,Val = 200}},AttrDesc = "%s属性:%s"},
	[3] = {GroupId = 101,HelpCol = "Missions",Order = 3,Name = "战斗夏玲",Quality = 4,Cost = {[1] = {Id = 1701003,Val = 5},[2] = {Id = 1603009,Val = 10}},Prop = {[1] = {Id = 111,Val = 20},[2] = {Id = 112,Val = 10},[3] = {Id = 113,Val = 200}},AttrDesc = "%s属性:%s"},
	[4] = {GroupId = 102,HelpCol = "Missions",Order = 1,Name = "项昆仑",Quality = 2,Cost = {[1] = {Id = 1701004,Val = 5},[2] = {Id = 1603010,Val = 10}},Prop = {[1] = {Id = 111,Val = 20},[2] = {Id = 112,Val = 10},[3] = {Id = 113,Val = 200}},AttrDesc = "%s属性:%s"},
	[5] = {GroupId = 102,HelpCol = "Missions",Order = 2,Name = "刘羽禅",Quality = 3,Cost = {[1] = {Id = 1701005,Val = 5},[2] = {Id = 1603011,Val = 10}},Prop = {[1] = {Id = 111,Val = 20},[2] = {Id = 112,Val = 10},[3] = {Id = 113,Val = 200}},AttrDesc = "%s属性:%s"},
	[6] = {GroupId = 102,HelpCol = "Missions",Order = 3,Name = "红莲·缇娜",Quality = 4,Cost = {[1] = {Id = 1701006,Val = 5},[2] = {Id = 1603012,Val = 10}},Prop = {[1] = {Id = 111,Val = 20},[2] = {Id = 112,Val = 10},[3] = {Id = 113,Val = 200}},AttrDesc = "%s属性:%s"},
	[7] = {GroupId = 103,HelpCol = "Missions",Order = 1,Name = "战斗曹焱兵",Quality = 2,Cost = {[1] = {Id = 1701007,Val = 5},[2] = {Id = 1603013,Val = 10}},Prop = {[1] = {Id = 111,Val = 20},[2] = {Id = 112,Val = 10},[3] = {Id = 113,Val = 200}},AttrDesc = "%s属性:%s"},
	[8] = {GroupId = 103,HelpCol = "Missions",Order = 2,Name = "黑尔·坎普",Quality = 3,Cost = {[1] = {Id = 1701008,Val = 5},[2] = {Id = 1603014,Val = 10}},Prop = {[1] = {Id = 111,Val = 20},[2] = {Id = 112,Val = 10},[3] = {Id = 113,Val = 200}},AttrDesc = "%s属性:%s"},
	[9] = {GroupId = 103,HelpCol = "Missions",Order = 3,Name = "北落师门",Quality = 4,Cost = {[1] = {Id = 1701009,Val = 5},[2] = {Id = 1603015,Val = 10}},Prop = {[1] = {Id = 111,Val = 20},[2] = {Id = 112,Val = 10},[3] = {Id = 113,Val = 200}},AttrDesc = "%s属性:%s"}
}
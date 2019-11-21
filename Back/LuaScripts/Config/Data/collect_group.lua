--[[
--note:

colums:
{ID,ID} ,{GroupId,组ID} ,{Name,名字} ,{RewardQuality,奖励品质} ,{Prop[1].Id,属性ID1} ,{Prop[1].Val,属性值1} ,{Prop[2].Id,属性ID2} ,{Prop[2].Val,属性值2} ,{Prop[3].Id,属性ID3} ,{Prop[3].Val,属性值3} ,{Award[1].Id,奖励ID1} ,{Award[1].Val,奖励值1} ,{Award[2].Id,奖励ID2} ,{Award[2].Val,奖励值2} ,{Award[3].Id,奖励ID3} ,{Award[3].Val,奖励值3}
primary key:
#0 [收集组]: GroupId
]]
return{
	[101] = {Name = "浪子逍遥",RewardQuality = 4,Prop = {[1] = {Id = 108,Val = 0.1},[2] = {Id = 109,Val = 0.05},[3] = {Id = 110,Val = 0.05}},Award = {[1] = {Id = 1401002,Val = 10000},[2] = {Id = 1601001,Val = 5},[3] = {Id = 1606002,Val = 3}}},
	[102] = {Name = "一代剑神",RewardQuality = 4,Prop = {[1] = {Id = 108,Val = 0.05},[2] = {Id = 109,Val = 0.1},[3] = {Id = 110,Val = 0.05}},Award = {[1] = {Id = 1401002,Val = 20000},[2] = {Id = 1602001,Val = 5},[3] = {Id = 1606002,Val = 3}}},
	[103] = {Name = "铁血豪侠",RewardQuality = 4,Prop = {[1] = {Id = 108,Val = 0.05},[2] = {Id = 109,Val = 0.05},[3] = {Id = 110,Val = 0.1}},Award = {[1] = {Id = 1401002,Val = 30000},[2] = {Id = 1601001,Val = 5},[3] = {Id = 1602001,Val = 5}}}
}
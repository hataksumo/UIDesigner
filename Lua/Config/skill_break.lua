--[[
--note:

colums:
{SkillId,技能ID} ,{BreakLv,突破等级} ,{LvUpLimit,技能等级上限} ,{Cost[1].Id,专属碎片ID} ,{Cost[1].Val,专属碎片数量} ,{ExpItemGroup,经验碎片道具组} ,{Exp,突破需求经验} ,{CostAdd,突破消耗水晶增加值} ,{Description,描述}
primary key:
#0 [技能突破]: SkillId,BreakLv
]]
local _T = LangUtil.Language
return{
	[1301001] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1701001,Val = 30}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1701001,Val = 30}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1301002] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1701002,Val = 20}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1701002,Val = 20}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1301003] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1701003,Val = 30}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1701003,Val = 30}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1301004] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1701004,Val = 45}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1701004,Val = 45}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1301005] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1701005,Val = 45}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1701005,Val = 45}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1301006] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1701006,Val = 30}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1701006,Val = 30}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1301007] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1701007,Val = 45}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1701007,Val = 45}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1301008] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1701008,Val = 20}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1701008,Val = 20}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1301009] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1701009,Val = 30}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1701009,Val = 30}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1301010] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1701010,Val = 45}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1701010,Val = 45}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1301011] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1701011,Val = 30}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1701011,Val = 30}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1301012] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1701012,Val = 20}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1701012,Val = 20}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1301013] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1701013,Val = 20}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1701013,Val = 20}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1301014] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1701014,Val = 30}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1701014,Val = 30}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1301015] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1701015,Val = 20}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1701015,Val = 20}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1301017] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1701017,Val = 45}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1701017,Val = 45}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1301020] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1701020,Val = 45}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1701020,Val = 45}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1301022] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1701022,Val = 20}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1701022,Val = 20}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1302001] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1701001,Val = 30}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1701001,Val = 30}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1302002] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1701002,Val = 20}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1701002,Val = 20}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1302003] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1701003,Val = 30}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1701003,Val = 30}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1302004] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1701004,Val = 45}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1701004,Val = 45}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1302005] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1701005,Val = 45}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1701005,Val = 45}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1302006] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1701006,Val = 30}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1701006,Val = 30}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1302007] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1701007,Val = 45}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1701007,Val = 45}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1302008] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1701008,Val = 20}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1701008,Val = 20}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1302009] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1701009,Val = 30}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1701009,Val = 30}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1302010] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1701010,Val = 45}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1701010,Val = 45}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1302011] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1701011,Val = 30}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1701011,Val = 30}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1302012] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1701012,Val = 20}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1701012,Val = 20}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1302013] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1701013,Val = 20}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1701013,Val = 20}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1302014] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1701014,Val = 30}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1701014,Val = 30}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1302015] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1701015,Val = 20}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1701015,Val = 20}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1302017] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1701017,Val = 45}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1701017,Val = 45}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1302020] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1701020,Val = 45}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1701020,Val = 45}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1302022] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1701022,Val = 20}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1701022,Val = 20}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1303001] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1702001,Val = 45}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1702001,Val = 45}},ExpItemGroup = 1,Exp = 30,CostAdd = 1,Description = "技能突破描述"}
	},
	[1303002] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1702002,Val = 30}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1702002,Val = 30}},ExpItemGroup = 1,Exp = 30,CostAdd = 1,Description = "技能突破描述"}
	},
	[1303003] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1702003,Val = 30}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1702003,Val = 30}},ExpItemGroup = 1,Exp = 30,CostAdd = 1,Description = "技能突破描述"}
	},
	[1303004] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1702004,Val = 20}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1702004,Val = 20}},ExpItemGroup = 1,Exp = 30,CostAdd = 1,Description = "技能突破描述"}
	},
	[1303005] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1702005,Val = 30}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1702005,Val = 30}},ExpItemGroup = 1,Exp = 30,CostAdd = 1,Description = "技能突破描述"}
	},
	[1303006] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1702006,Val = 45}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1702006,Val = 45}},ExpItemGroup = 1,Exp = 30,CostAdd = 1,Description = "技能突破描述"}
	},
	[1303007] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1702007,Val = 30}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1702007,Val = 30}},ExpItemGroup = 1,Exp = 30,CostAdd = 1,Description = "技能突破描述"}
	},
	[1303008] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1702008,Val = 45}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1702008,Val = 45}},ExpItemGroup = 1,Exp = 30,CostAdd = 1,Description = "技能突破描述"}
	},
	[1303009] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1702009,Val = 45}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1702009,Val = 45}},ExpItemGroup = 1,Exp = 30,CostAdd = 1,Description = "技能突破描述"}
	},
	[1303010] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1702010,Val = 45}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1702010,Val = 45}},ExpItemGroup = 1,Exp = 30,CostAdd = 1,Description = "技能突破描述"}
	},
	[1303011] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1702011,Val = 45}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1702011,Val = 45}},ExpItemGroup = 1,Exp = 30,CostAdd = 1,Description = "技能突破描述"}
	},
	[1303012] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1702012,Val = 45}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1702012,Val = 45}},ExpItemGroup = 1,Exp = 30,CostAdd = 1,Description = "技能突破描述"}
	},
	[1303013] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1702013,Val = 20}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1702013,Val = 20}},ExpItemGroup = 1,Exp = 30,CostAdd = 1,Description = "技能突破描述"}
	},
	[1303014] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1702014,Val = 30}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1702014,Val = 30}},ExpItemGroup = 1,Exp = 30,CostAdd = 1,Description = "技能突破描述"}
	},
	[1303015] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1702015,Val = 20}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1702015,Val = 20}},ExpItemGroup = 1,Exp = 30,CostAdd = 1,Description = "技能突破描述"}
	},
	[1303016] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1702016,Val = 45}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1702016,Val = 45}},ExpItemGroup = 1,Exp = 30,CostAdd = 1,Description = "技能突破描述"}
	},
	[1303017] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1702017,Val = 30}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1702017,Val = 30}},ExpItemGroup = 1,Exp = 30,CostAdd = 1,Description = "技能突破描述"}
	},
	[1303018] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1702018,Val = 20}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1702018,Val = 20}},ExpItemGroup = 1,Exp = 30,CostAdd = 1,Description = "技能突破描述"}
	},
	[1303019] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1702019,Val = 20}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1702019,Val = 20}},ExpItemGroup = 1,Exp = 30,CostAdd = 1,Description = "技能突破描述"}
	},
	[1303020] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1702020,Val = 30}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1702020,Val = 30}},ExpItemGroup = 1,Exp = 30,CostAdd = 1,Description = "技能突破描述"}
	},
	[1303021] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1702021,Val = 20}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1702021,Val = 20}},ExpItemGroup = 1,Exp = 30,CostAdd = 1,Description = "技能突破描述"}
	},
	[1304001] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1401002,Val = 50000}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1401002,Val = 50000}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1304002] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1401002,Val = 50000}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1401002,Val = 50000}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1304003] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1401002,Val = 50000}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1401002,Val = 50000}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1304004] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1401002,Val = 50000}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1401002,Val = 50000}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1304005] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1401002,Val = 50000}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1401002,Val = 50000}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1304006] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1401002,Val = 50000}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1401002,Val = 50000}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1304007] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1401002,Val = 50000}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1401002,Val = 50000}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1304008] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1401002,Val = 50000}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1401002,Val = 50000}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1304009] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1401002,Val = 50000}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1401002,Val = 50000}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1304010] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1401002,Val = 50000}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1401002,Val = 50000}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1304011] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1401002,Val = 50000}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1401002,Val = 50000}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1304012] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1401002,Val = 50000}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1401002,Val = 50000}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1304013] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1401002,Val = 50000}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1401002,Val = 50000}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1304014] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1401002,Val = 50000}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1401002,Val = 50000}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1304015] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1401002,Val = 50000}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1401002,Val = 50000}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	},
	[1304016] = {
		[1] = {LvUpLimit = 5,CostAdd = 0},
		[2] = {LvUpLimit = 8,Cost = {[1] = {Id = 1401002,Val = 50000}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"},
		[3] = {LvUpLimit = 10,Cost = {[1] = {Id = 1401002,Val = 50000}},ExpItemGroup = 1,Exp = 30,CostAdd = 0,Description = "技能突破描述"}
	}
}
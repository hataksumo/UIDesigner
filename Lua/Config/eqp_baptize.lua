--[[
--note:

colums:
{Group,洗练组} ,{Loc,位置} ,{Weight,权重} ,{Prop.Id,属性ID} ,{Prop.MinVal,属性值-极小} ,{Prop.MaxVal,属性值-极大}
primary key:
#0 [装备洗练]: Group,Loc
]]
local _T = LangUtil.Language
return{
	[11] = {
		[1] = {Weight = 2500,Prop = {Id = 111,MinVal = 12,MaxVal = 36}},--20级寄灵人洗练-1
		[2] = {Weight = 2500,Prop = {Id = 112,MinVal = 5,MaxVal = 15}},--20级寄灵人洗练-2
		[3] = {Weight = 2600,Prop = {Id = 113,MinVal = 22,MaxVal = 63}},--20级寄灵人洗练-3
		[4] = {Weight = 800,Prop = {Id = 108,MinVal = 0.014,MaxVal = 0.04}},--20级寄灵人洗练-4
		[5] = {Weight = 800,Prop = {Id = 109,MinVal = 0.014,MaxVal = 0.04}},--20级寄灵人洗练-5
		[6] = {Weight = 800,Prop = {Id = 110,MinVal = 0.014,MaxVal = 0.04}}--20级寄灵人洗练-6
	},
	[12] = {
		[1] = {Weight = 2500,Prop = {Id = 111,MinVal = 16,MaxVal = 48}},--40级寄灵人洗练-1
		[2] = {Weight = 2500,Prop = {Id = 112,MinVal = 11,MaxVal = 34}},--40级寄灵人洗练-2
		[3] = {Weight = 2600,Prop = {Id = 113,MinVal = 53,MaxVal = 154}},--40级寄灵人洗练-3
		[4] = {Weight = 800,Prop = {Id = 108,MinVal = 0.014,MaxVal = 0.04}},--40级寄灵人洗练-4
		[5] = {Weight = 800,Prop = {Id = 109,MinVal = 0.014,MaxVal = 0.04}},--40级寄灵人洗练-5
		[6] = {Weight = 800,Prop = {Id = 110,MinVal = 0.014,MaxVal = 0.04}}--40级寄灵人洗练-6
	},
	[13] = {
		[1] = {Weight = 2500,Prop = {Id = 111,MinVal = 44,MaxVal = 128}},--60级寄灵人洗练-1
		[2] = {Weight = 2500,Prop = {Id = 112,MinVal = 16,MaxVal = 46}},--60级寄灵人洗练-2
		[3] = {Weight = 2600,Prop = {Id = 113,MinVal = 103,MaxVal = 296}},--60级寄灵人洗练-3
		[4] = {Weight = 800,Prop = {Id = 108,MinVal = 0.014,MaxVal = 0.04}},--60级寄灵人洗练-4
		[5] = {Weight = 800,Prop = {Id = 109,MinVal = 0.014,MaxVal = 0.04}},--60级寄灵人洗练-5
		[6] = {Weight = 800,Prop = {Id = 110,MinVal = 0.014,MaxVal = 0.04}}--60级寄灵人洗练-6
	},
	[14] = {
		[1] = {Weight = 2500,Prop = {Id = 111,MinVal = 59,MaxVal = 170}},--80级寄灵人洗练-1
		[2] = {Weight = 2500,Prop = {Id = 112,MinVal = 29,MaxVal = 83}},--80级寄灵人洗练-2
		[3] = {Weight = 2600,Prop = {Id = 113,MinVal = 181,MaxVal = 518}},--80级寄灵人洗练-3
		[4] = {Weight = 800,Prop = {Id = 108,MinVal = 0.014,MaxVal = 0.04}},--80级寄灵人洗练-4
		[5] = {Weight = 800,Prop = {Id = 109,MinVal = 0.014,MaxVal = 0.04}},--80级寄灵人洗练-5
		[6] = {Weight = 800,Prop = {Id = 110,MinVal = 0.014,MaxVal = 0.04}}--80级寄灵人洗练-6
	},
	[15] = {
		[1] = {Weight = 2500,Prop = {Id = 111,MinVal = 127,MaxVal = 365}},--100级寄灵人洗练-1
		[2] = {Weight = 2500,Prop = {Id = 112,MinVal = 42,MaxVal = 120}},--100级寄灵人洗练-2
		[3] = {Weight = 2600,Prop = {Id = 113,MinVal = 322,MaxVal = 922}},--100级寄灵人洗练-3
		[4] = {Weight = 800,Prop = {Id = 108,MinVal = 0.014,MaxVal = 0.04}},--100级寄灵人洗练-4
		[5] = {Weight = 800,Prop = {Id = 109,MinVal = 0.014,MaxVal = 0.04}},--100级寄灵人洗练-5
		[6] = {Weight = 800,Prop = {Id = 110,MinVal = 0.014,MaxVal = 0.04}}--100级寄灵人洗练-6
	},
	[16] = {
		[1] = {Weight = 2500,Prop = {Id = 111,MinVal = 190,MaxVal = 544}},--120级寄灵人洗练-1
		[2] = {Weight = 2500,Prop = {Id = 112,MinVal = 78,MaxVal = 225}},--120级寄灵人洗练-2
		[3] = {Weight = 2600,Prop = {Id = 113,MinVal = 574,MaxVal = 1641}},--120级寄灵人洗练-3
		[4] = {Weight = 800,Prop = {Id = 108,MinVal = 0.014,MaxVal = 0.04}},--120级寄灵人洗练-4
		[5] = {Weight = 800,Prop = {Id = 109,MinVal = 0.014,MaxVal = 0.04}},--120级寄灵人洗练-5
		[6] = {Weight = 800,Prop = {Id = 110,MinVal = 0.014,MaxVal = 0.04}}--120级寄灵人洗练-6
	},
	[21] = {
		[1] = {Weight = 2500,Prop = {Id = 111,MinVal = 19,MaxVal = 56}},--20级守护灵洗练-1
		[2] = {Weight = 2500,Prop = {Id = 112,MinVal = 8,MaxVal = 23}},--20级守护灵洗练-2
		[3] = {Weight = 2600,Prop = {Id = 113,MinVal = 38,MaxVal = 109}},--20级守护灵洗练-3
		[4] = {Weight = 800,Prop = {Id = 108,MinVal = 0.014,MaxVal = 0.04}},--20级守护灵洗练-4
		[5] = {Weight = 800,Prop = {Id = 109,MinVal = 0.014,MaxVal = 0.04}},--20级守护灵洗练-5
		[6] = {Weight = 800,Prop = {Id = 110,MinVal = 0.014,MaxVal = 0.04}}--20级守护灵洗练-6
	},
	[22] = {
		[1] = {Weight = 2500,Prop = {Id = 111,MinVal = 20,MaxVal = 58}},--40级守护灵洗练-1
		[2] = {Weight = 2500,Prop = {Id = 112,MinVal = 14,MaxVal = 40}},--40级守护灵洗练-2
		[3] = {Weight = 2600,Prop = {Id = 113,MinVal = 95,MaxVal = 272}},--40级守护灵洗练-3
		[4] = {Weight = 800,Prop = {Id = 108,MinVal = 0.014,MaxVal = 0.04}},--40级守护灵洗练-4
		[5] = {Weight = 800,Prop = {Id = 109,MinVal = 0.014,MaxVal = 0.04}},--40级守护灵洗练-5
		[6] = {Weight = 800,Prop = {Id = 110,MinVal = 0.014,MaxVal = 0.04}}--40级守护灵洗练-6
	},
	[23] = {
		[1] = {Weight = 2500,Prop = {Id = 111,MinVal = 49,MaxVal = 141}},--60级守护灵洗练-1
		[2] = {Weight = 2500,Prop = {Id = 112,MinVal = 17,MaxVal = 50}},--60级守护灵洗练-2
		[3] = {Weight = 2600,Prop = {Id = 113,MinVal = 184,MaxVal = 527}},--60级守护灵洗练-3
		[4] = {Weight = 800,Prop = {Id = 108,MinVal = 0.014,MaxVal = 0.04}},--60级守护灵洗练-4
		[5] = {Weight = 800,Prop = {Id = 109,MinVal = 0.014,MaxVal = 0.04}},--60级守护灵洗练-5
		[6] = {Weight = 800,Prop = {Id = 110,MinVal = 0.014,MaxVal = 0.04}}--60级守护灵洗练-6
	},
	[24] = {
		[1] = {Weight = 2500,Prop = {Id = 111,MinVal = 63,MaxVal = 180}},--80级守护灵洗练-1
		[2] = {Weight = 2500,Prop = {Id = 112,MinVal = 30,MaxVal = 87}},--80级守护灵洗练-2
		[3] = {Weight = 2600,Prop = {Id = 113,MinVal = 324,MaxVal = 926}},--80级守护灵洗练-3
		[4] = {Weight = 800,Prop = {Id = 108,MinVal = 0.014,MaxVal = 0.04}},--80级守护灵洗练-4
		[5] = {Weight = 800,Prop = {Id = 109,MinVal = 0.014,MaxVal = 0.04}},--80级守护灵洗练-5
		[6] = {Weight = 800,Prop = {Id = 110,MinVal = 0.014,MaxVal = 0.04}}--80级守护灵洗练-6
	},
	[25] = {
		[1] = {Weight = 2500,Prop = {Id = 111,MinVal = 131,MaxVal = 377}},--100级守护灵洗练-1
		[2] = {Weight = 2500,Prop = {Id = 112,MinVal = 43,MaxVal = 124}},--100级守护灵洗练-2
		[3] = {Weight = 2600,Prop = {Id = 113,MinVal = 578,MaxVal = 1653}},--100级守护灵洗练-3
		[4] = {Weight = 800,Prop = {Id = 108,MinVal = 0.014,MaxVal = 0.04}},--100级守护灵洗练-4
		[5] = {Weight = 800,Prop = {Id = 109,MinVal = 0.014,MaxVal = 0.04}},--100级守护灵洗练-5
		[6] = {Weight = 800,Prop = {Id = 110,MinVal = 0.014,MaxVal = 0.04}}--100级守护灵洗练-6
	},
	[26] = {
		[1] = {Weight = 2500,Prop = {Id = 111,MinVal = 193,MaxVal = 554}},--120级守护灵洗练-1
		[2] = {Weight = 2500,Prop = {Id = 112,MinVal = 80,MaxVal = 229}},--120级守护灵洗练-2
		[3] = {Weight = 2600,Prop = {Id = 113,MinVal = 1031,MaxVal = 2946}},--120级守护灵洗练-3
		[4] = {Weight = 800,Prop = {Id = 108,MinVal = 0.014,MaxVal = 0.04}},--120级守护灵洗练-4
		[5] = {Weight = 800,Prop = {Id = 109,MinVal = 0.014,MaxVal = 0.04}},--120级守护灵洗练-5
		[6] = {Weight = 800,Prop = {Id = 110,MinVal = 0.014,MaxVal = 0.04}}--120级守护灵洗练-6
	}
}
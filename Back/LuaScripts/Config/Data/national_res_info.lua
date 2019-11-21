--[[
output from excel national_map地图.xlsx
--note:

colums:
{Id,id} ,{Type,资源点类型
1.木
2.铁
3.石
4.粮
5.复合矿} ,{level,等级} ,{addition[1].Id,属性1} ,{addition[1].val,数值} ,{addition[2].Id,属性2} ,{addition[2].val,数值} ,{addition[3].Id,属性3} ,{addition[3].val,数值} ,{Collect[1].Id,采集获得-属性1} ,{Collect[1].val,采集获得-数值1} ,{Collect[2].Id,采集获得-属性2} ,{Collect[2].val,采集获得-数值2} ,{Collect[3].Id,采集获得-属性3} ,{Collect[3].val,采集获得-数值3} ,{Pic,资源图片} ,{DominanceExp,掉落统御经验} ,{AllianceContribute,掉落联盟贡献} ,{Power,增加个人势力值}
primary key:
#0 [资源点信息]: Id
]]
local _T = LangUtil.Language
return{
	[101] = {Id = 101,Type = 1,level = 1,addition = {[1] = {Id = 6000001,val = 200}},Collect = {[1] = {Id = 6000001,val = 3200}},Pic = "ui_dtex_Nationwar_0102",DominanceExp = 1200,AllianceContribute = 1,Power = 3},
	[102] = {Id = 102,Type = 1,level = 2,addition = {[1] = {Id = 6000001,val = 300}},Collect = {[1] = {Id = 6000001,val = 4800}},Pic = "ui_dtex_Nationwar_0102",DominanceExp = 5280,AllianceContribute = 2,Power = 10},
	[103] = {Id = 103,Type = 1,level = 3,addition = {[1] = {Id = 6000001,val = 400}},Collect = {[1] = {Id = 6000001,val = 6400}},Pic = "ui_dtex_Nationwar_0102",DominanceExp = 12960,AllianceContribute = 4,Power = 22},
	[104] = {Id = 104,Type = 1,level = 4,addition = {[1] = {Id = 6000001,val = 600}},Collect = {[1] = {Id = 6000001,val = 9600}},Pic = "ui_dtex_Nationwar_0103",DominanceExp = 18360,AllianceContribute = 8,Power = 51},
	[105] = {Id = 105,Type = 1,level = 5,addition = {[1] = {Id = 6000001,val = 1300}},Collect = {[1] = {Id = 6000001,val = 20800}},Pic = "ui_dtex_Nationwar_0103",DominanceExp = 20250,AllianceContribute = 12,Power = 101},
	[106] = {Id = 106,Type = 1,level = 6,addition = {[1] = {Id = 6000001,val = 1500}},Collect = {[1] = {Id = 6000001,val = 24000}},Pic = "ui_dtex_Nationwar_0103",DominanceExp = 29400,AllianceContribute = 15,Power = 288},
	[107] = {Id = 107,Type = 1,level = 7,addition = {[1] = {Id = 6000001,val = 1700}},Collect = {[1] = {Id = 6000001,val = 27200}},Pic = "ui_dtex_Nationwar_0104",DominanceExp = 32160,AllianceContribute = 18,Power = 399},
	[108] = {Id = 108,Type = 1,level = 8,addition = {[1] = {Id = 6000001,val = 1900}},Collect = {[1] = {Id = 6000001,val = 30400}},Pic = "ui_dtex_Nationwar_0104",DominanceExp = 42120,AllianceContribute = 21,Power = 536},
	[109] = {Id = 109,Type = 1,level = 9,addition = {[1] = {Id = 6000001,val = 2100}},Collect = {[1] = {Id = 6000001,val = 33600}},Pic = "ui_dtex_Nationwar_0104",DominanceExp = 59400,AllianceContribute = 24,Power = 678},
	[201] = {Id = 201,Type = 2,level = 1,addition = {[1] = {Id = 6000002,val = 200}},Collect = {[1] = {Id = 6000002,val = 3200}},Pic = "ui_dtex_Nationwar_0112",DominanceExp = 1200,AllianceContribute = 1,Power = 3},
	[202] = {Id = 202,Type = 2,level = 2,addition = {[1] = {Id = 6000002,val = 300}},Collect = {[1] = {Id = 6000002,val = 4800}},Pic = "ui_dtex_Nationwar_0112",DominanceExp = 5280,AllianceContribute = 2,Power = 10},
	[203] = {Id = 203,Type = 2,level = 3,addition = {[1] = {Id = 6000002,val = 400}},Collect = {[1] = {Id = 6000002,val = 6400}},Pic = "ui_dtex_Nationwar_0112",DominanceExp = 12960,AllianceContribute = 4,Power = 22},
	[204] = {Id = 204,Type = 2,level = 4,addition = {[1] = {Id = 6000002,val = 600}},Collect = {[1] = {Id = 6000002,val = 9600}},Pic = "ui_dtex_Nationwar_0113",DominanceExp = 18360,AllianceContribute = 8,Power = 51},
	[205] = {Id = 205,Type = 2,level = 5,addition = {[1] = {Id = 6000002,val = 1300}},Collect = {[1] = {Id = 6000002,val = 20800}},Pic = "ui_dtex_Nationwar_0113",DominanceExp = 20250,AllianceContribute = 12,Power = 101},
	[206] = {Id = 206,Type = 2,level = 6,addition = {[1] = {Id = 6000002,val = 1500}},Collect = {[1] = {Id = 6000002,val = 24000}},Pic = "ui_dtex_Nationwar_0113",DominanceExp = 29400,AllianceContribute = 15,Power = 288},
	[207] = {Id = 207,Type = 2,level = 7,addition = {[1] = {Id = 6000002,val = 1700}},Collect = {[1] = {Id = 6000002,val = 27200}},Pic = "ui_dtex_Nationwar_0114",DominanceExp = 32160,AllianceContribute = 18,Power = 399},
	[208] = {Id = 208,Type = 2,level = 8,addition = {[1] = {Id = 6000002,val = 1900}},Collect = {[1] = {Id = 6000002,val = 30400}},Pic = "ui_dtex_Nationwar_0114",DominanceExp = 42120,AllianceContribute = 21,Power = 536},
	[209] = {Id = 209,Type = 2,level = 9,addition = {[1] = {Id = 6000002,val = 2100}},Collect = {[1] = {Id = 6000002,val = 33600}},Pic = "ui_dtex_Nationwar_0114",DominanceExp = 59400,AllianceContribute = 24,Power = 678},
	[301] = {Id = 301,Type = 3,level = 1,addition = {[1] = {Id = 6000003,val = 200}},Collect = {[1] = {Id = 6000003,val = 3200}},Pic = "ui_dtex_Nationwar_0122",DominanceExp = 1200,AllianceContribute = 1,Power = 3},
	[302] = {Id = 302,Type = 3,level = 2,addition = {[1] = {Id = 6000003,val = 300}},Collect = {[1] = {Id = 6000003,val = 4800}},Pic = "ui_dtex_Nationwar_0122",DominanceExp = 5280,AllianceContribute = 2,Power = 10},
	[303] = {Id = 303,Type = 3,level = 3,addition = {[1] = {Id = 6000003,val = 400}},Collect = {[1] = {Id = 6000003,val = 6400}},Pic = "ui_dtex_Nationwar_0122",DominanceExp = 12960,AllianceContribute = 4,Power = 22},
	[304] = {Id = 304,Type = 3,level = 4,addition = {[1] = {Id = 6000003,val = 600}},Collect = {[1] = {Id = 6000003,val = 9600}},Pic = "ui_dtex_Nationwar_0123",DominanceExp = 18360,AllianceContribute = 8,Power = 51},
	[305] = {Id = 305,Type = 3,level = 5,addition = {[1] = {Id = 6000003,val = 1300}},Collect = {[1] = {Id = 6000003,val = 20800}},Pic = "ui_dtex_Nationwar_0123",DominanceExp = 20250,AllianceContribute = 12,Power = 101},
	[306] = {Id = 306,Type = 3,level = 6,addition = {[1] = {Id = 6000003,val = 1500}},Collect = {[1] = {Id = 6000003,val = 24000}},Pic = "ui_dtex_Nationwar_0123",DominanceExp = 29400,AllianceContribute = 15,Power = 288},
	[307] = {Id = 307,Type = 3,level = 7,addition = {[1] = {Id = 6000003,val = 1700}},Collect = {[1] = {Id = 6000003,val = 27200}},Pic = "ui_dtex_Nationwar_0124",DominanceExp = 32160,AllianceContribute = 18,Power = 399},
	[308] = {Id = 308,Type = 3,level = 8,addition = {[1] = {Id = 6000003,val = 1900}},Collect = {[1] = {Id = 6000003,val = 30400}},Pic = "ui_dtex_Nationwar_0124",DominanceExp = 42120,AllianceContribute = 21,Power = 536},
	[309] = {Id = 309,Type = 3,level = 9,addition = {[1] = {Id = 6000003,val = 2100}},Collect = {[1] = {Id = 6000003,val = 33600}},Pic = "ui_dtex_Nationwar_0124",DominanceExp = 59400,AllianceContribute = 24,Power = 678},
	[401] = {Id = 401,Type = 4,level = 1,addition = {[1] = {Id = 6000004,val = 200}},Collect = {[1] = {Id = 6000004,val = 3200}},Pic = "ui_dtex_Nationwar_0092",DominanceExp = 1200,AllianceContribute = 1,Power = 3},
	[402] = {Id = 402,Type = 4,level = 2,addition = {[1] = {Id = 6000004,val = 300}},Collect = {[1] = {Id = 6000004,val = 4800}},Pic = "ui_dtex_Nationwar_0092",DominanceExp = 5280,AllianceContribute = 2,Power = 10},
	[403] = {Id = 403,Type = 4,level = 3,addition = {[1] = {Id = 6000004,val = 400}},Collect = {[1] = {Id = 6000004,val = 6400}},Pic = "ui_dtex_Nationwar_0092",DominanceExp = 12960,AllianceContribute = 4,Power = 22},
	[404] = {Id = 404,Type = 4,level = 4,addition = {[1] = {Id = 6000004,val = 600}},Collect = {[1] = {Id = 6000004,val = 9600}},Pic = "ui_dtex_Nationwar_0093",DominanceExp = 18360,AllianceContribute = 8,Power = 51},
	[405] = {Id = 405,Type = 4,level = 5,addition = {[1] = {Id = 6000004,val = 1300}},Collect = {[1] = {Id = 6000004,val = 20800}},Pic = "ui_dtex_Nationwar_0093",DominanceExp = 20250,AllianceContribute = 12,Power = 101},
	[406] = {Id = 406,Type = 4,level = 6,addition = {[1] = {Id = 6000004,val = 1500}},Collect = {[1] = {Id = 6000004,val = 24000}},Pic = "ui_dtex_Nationwar_0093",DominanceExp = 29400,AllianceContribute = 15,Power = 288},
	[407] = {Id = 407,Type = 4,level = 7,addition = {[1] = {Id = 6000004,val = 1700}},Collect = {[1] = {Id = 6000004,val = 27200}},Pic = "ui_dtex_Nationwar_0094",DominanceExp = 32160,AllianceContribute = 18,Power = 399},
	[408] = {Id = 408,Type = 4,level = 8,addition = {[1] = {Id = 6000004,val = 1900}},Collect = {[1] = {Id = 6000004,val = 30400}},Pic = "ui_dtex_Nationwar_0094",DominanceExp = 42120,AllianceContribute = 21,Power = 536},
	[409] = {Id = 409,Type = 4,level = 9,addition = {[1] = {Id = 6000004,val = 2100}},Collect = {[1] = {Id = 6000004,val = 33600}},Pic = "ui_dtex_Nationwar_0094",DominanceExp = 59400,AllianceContribute = 24,Power = 678},
	[501] = {Id = 501,Type = 5,level = 1,addition = {[1] = {Id = 6000001,val = 120},[2] = {Id = 6000002,val = 120},[3] = {Id = 6000003,val = 120}},Collect = {[1] = {Id = 6000001,val = 1920},[2] = {Id = 6000002,val = 1920},[3] = {Id = 6000003,val = 1920}},Pic = "ui_dtex_Nationwar_008",DominanceExp = 1200,AllianceContribute = 1,Power = 3}
}
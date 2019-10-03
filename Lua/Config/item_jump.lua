--[[
--note:
跳转的表
colums:
{ID,唯一键} ,{AddJump.Title,跳转标题} ,{AddJump.Des,跳转描述} ,{AddJump.To,跳转功能ID} ,{AddJump.Param,跳转参数} ,{IfJump,是否需要跳转按钮
0-否1-是}
primary key:
#0 [材料跳转]: ID
]]
local _T = LangUtil.Language
return{
	[1] = {ID = 1,AddJump = {Title = _T("冒险"),Des = _T("冒险中全部关卡产出"),To = 10101},IfJump = 1},--冒险默认页
	[2] = {ID = 2,AddJump = {Title = _T("冒险"),Des = _T("普通难度第1章产出"),To = 10101,Param = {101}},IfJump = 1},--普通冒险第1章
	[3] = {ID = 3,AddJump = {Title = _T("冒险"),Des = _T("普通难度第2章产出"),To = 10101,Param = {102}},IfJump = 1},--普通冒险第2章
	[4] = {ID = 4,AddJump = {Title = _T("冒险"),Des = _T("普通难度第3章产出"),To = 10101,Param = {103}},IfJump = 1},--普通冒险第3章
	[5] = {ID = 5,AddJump = {Title = _T("冒险"),Des = _T("普通难度第4章产出"),To = 10101,Param = {104}},IfJump = 1},--普通冒险第4章
	[6] = {ID = 6,AddJump = {Title = _T("冒险"),Des = _T("普通难度第5章产出"),To = 10101,Param = {105}},IfJump = 1},--普通冒险第5章
	[7] = {ID = 7,AddJump = {Title = _T("冒险"),Des = _T("普通难度第6章产出"),To = 10101,Param = {106}},IfJump = 1},--普通冒险第6章
	[8] = {ID = 8,AddJump = {Title = _T("冒险"),Des = _T("普通难度第7章产出"),To = 10101,Param = {107}},IfJump = 1},--普通冒险第7章
	[9] = {ID = 9,AddJump = {Title = _T("冒险"),Des = _T("普通难度第8章产出"),To = 10101,Param = {108}},IfJump = 1},--普通冒险第8章
	[10] = {ID = 10,AddJump = {Title = _T("冒险"),Des = _T("普通难度第9章产出"),To = 10101,Param = {109}},IfJump = 1},--普通冒险第9章
	[11] = {ID = 11,AddJump = {Title = _T("冒险"),Des = _T("普通难度第10章产出"),To = 10101,Param = {110}},IfJump = 1},--普通冒险第10章
	[12] = {ID = 12,AddJump = {Title = _T("冒险"),Des = _T("普通难度第11章产出"),To = 10101,Param = {111}},IfJump = 1},--普通冒险第11章
	[13] = {ID = 13,AddJump = {Title = _T("冒险"),Des = _T("普通难度第12章产出"),To = 10101,Param = {112}},IfJump = 1},--普通冒险第12章
	[14] = {ID = 14,AddJump = {Title = _T("冒险"),Des = _T("普通难度第13章产出"),To = 10101,Param = {113}},IfJump = 1},--普通冒险第13章
	[15] = {ID = 15,AddJump = {Title = _T("冒险"),Des = _T("普通难度第14章产出"),To = 10101,Param = {114}},IfJump = 1},--普通冒险第14章
	[16] = {ID = 16,AddJump = {Title = _T("冒险"),Des = _T("普通难度第15章产出"),To = 10101,Param = {115}},IfJump = 1},--普通冒险第15章
	[17] = {ID = 17,AddJump = {Title = _T("冒险"),Des = _T("困难难度第1章产出"),To = 10101,Param = {201}},IfJump = 1},--困难冒险第1章
	[18] = {ID = 18,AddJump = {Title = _T("冒险"),Des = _T("困难难度第2章产出"),To = 10101,Param = {202}},IfJump = 1},--困难冒险第2章
	[19] = {ID = 19,AddJump = {Title = _T("冒险"),Des = _T("困难难度第3章产出"),To = 10101,Param = {203}},IfJump = 1},--困难冒险第3章
	[20] = {ID = 20,AddJump = {Title = _T("冒险"),Des = _T("困难难度第4章产出"),To = 10101,Param = {204}},IfJump = 1},--困难冒险第4章
	[21] = {ID = 21,AddJump = {Title = _T("冒险"),Des = _T("困难难度第5章产出"),To = 10101,Param = {205}},IfJump = 1},--困难冒险第5章
	[22] = {ID = 22,AddJump = {Title = _T("冒险"),Des = _T("困难难度第6章产出"),To = 10101,Param = {206}},IfJump = 1},--困难冒险第6章
	[23] = {ID = 23,AddJump = {Title = _T("冒险"),Des = _T("困难难度第7章产出"),To = 10101,Param = {207}},IfJump = 1},--困难冒险第7章
	[24] = {ID = 24,AddJump = {Title = _T("冒险"),Des = _T("困难难度第8章产出"),To = 10101,Param = {208}},IfJump = 1},--困难冒险第8章
	[25] = {ID = 25,AddJump = {Title = _T("冒险"),Des = _T("困难难度第9章产出"),To = 10101,Param = {209}},IfJump = 1},--困难冒险第9章
	[26] = {ID = 26,AddJump = {Title = _T("冒险"),Des = _T("困难难度第10章产出"),To = 10101,Param = {210}},IfJump = 1},--困难冒险第10章
	[27] = {ID = 27,AddJump = {Title = _T("冒险"),Des = _T("困难难度第11章产出"),To = 10101,Param = {211}},IfJump = 1},--困难冒险第11章
	[28] = {ID = 28,AddJump = {Title = _T("冒险"),Des = _T("困难难度第12章产出"),To = 10101,Param = {212}},IfJump = 1},--困难冒险第12章
	[29] = {ID = 29,AddJump = {Title = _T("冒险"),Des = _T("困难难度第13章产出"),To = 10101,Param = {213}},IfJump = 1},--困难冒险第13章
	[30] = {ID = 30,AddJump = {Title = _T("冒险"),Des = _T("困难难度第14章产出"),To = 10101,Param = {214}},IfJump = 1},--困难冒险第14章
	[31] = {ID = 31,AddJump = {Title = _T("冒险"),Des = _T("困难难度第15章产出"),To = 10101,Param = {215}},IfJump = 1},--困难冒险第15章
	[32] = {ID = 32,AddJump = {Title = _T("芦花古楼"),Des = _T("芦花古楼产出"),To = 10201},IfJump = 1},--芦花古楼默认页
	[33] = {ID = 33,AddJump = {Title = _T("芦花古楼"),Des = _T("芦花古楼-风产出"),To = 10201,Param = {401}},IfJump = 1},--芦花古楼-风
	[34] = {ID = 34,AddJump = {Title = _T("芦花古楼"),Des = _T("芦花古楼-花产出"),To = 10201,Param = {402}},IfJump = 1},--芦花古楼-花
	[35] = {ID = 35,AddJump = {Title = _T("芦花古楼"),Des = _T("芦花古楼-雪产出"),To = 10201,Param = {403}},IfJump = 1},--芦花古楼-雪
	[36] = {ID = 36,AddJump = {Title = _T("芦花古楼"),Des = _T("芦花古楼-月产出"),To = 10201,Param = {404}},IfJump = 1},--芦花古楼-月
	[37] = {ID = 37,AddJump = {Title = _T("恶灵入侵"),Des = _T("恶灵入侵产出"),To = 10301},IfJump = 1},--恶灵入侵默认页
	[38] = {ID = 38,AddJump = {Title = _T("派遣巡逻"),Des = _T("派遣巡逻产出"),To = 10501,Param = {302}},IfJump = 1},--派遣巡逻默认页
	[39] = {ID = 39,AddJump = {Title = _T("派遣巡逻"),Des = _T("派遣巡逻第1章产出"),To = 10501,Param = {302}},IfJump = 1},--派遣巡逻第1章
	[40] = {ID = 40,AddJump = {Title = _T("派遣巡逻"),Des = _T("派遣巡逻第2章产出"),To = 10501,Param = {303}},IfJump = 1},--派遣巡逻第2章
	[41] = {ID = 41,AddJump = {Title = _T("派遣巡逻"),Des = _T("派遣巡逻第3章产出"),To = 10501,Param = {304}},IfJump = 1},--派遣巡逻第3章
	[42] = {ID = 42,AddJump = {Title = _T("派遣巡逻"),Des = _T("派遣巡逻第4章产出"),To = 10501,Param = {305}},IfJump = 1},--派遣巡逻第4章
	[43] = {ID = 43,AddJump = {Title = _T("派遣巡逻"),Des = _T("派遣巡逻第5章产出"),To = 10501,Param = {306}},IfJump = 1},--派遣巡逻第5章
	[44] = {ID = 44,AddJump = {Title = _T("派遣巡逻"),Des = _T("派遣巡逻第6章产出"),To = 10501,Param = {307}},IfJump = 1},--派遣巡逻第6章
	[45] = {ID = 45,AddJump = {Title = _T("派遣巡逻"),Des = _T("派遣巡逻第7章产出"),To = 10501,Param = {308}},IfJump = 1},--派遣巡逻第7章
	[46] = {ID = 46,AddJump = {Title = _T("派遣巡逻"),Des = _T("派遣巡逻第8章产出"),To = 10501,Param = {309}},IfJump = 1},--派遣巡逻第8章
	[47] = {ID = 47,AddJump = {Title = _T("派遣巡逻"),Des = _T("派遣巡逻第9章产出"),To = 10501,Param = {310}},IfJump = 1},--派遣巡逻第9章
	[48] = {ID = 48,AddJump = {Title = _T("派遣巡逻"),Des = _T("派遣巡逻第10章产出"),To = 10501,Param = {311}},IfJump = 1},--派遣巡逻第10章
	[49] = {ID = 49,AddJump = {Title = _T("派遣巡逻"),Des = _T("派遣巡逻第11章产出"),To = 10501,Param = {312}},IfJump = 1},--派遣巡逻第11章
	[50] = {ID = 50,AddJump = {Title = _T("派遣巡逻"),Des = _T("派遣巡逻第12章产出"),To = 10501,Param = {313}},IfJump = 1},--派遣巡逻第12章
	[51] = {ID = 51,AddJump = {Title = _T("派遣巡逻"),Des = _T("派遣巡逻第13章产出"),To = 10501,Param = {314}},IfJump = 1},--派遣巡逻第13章
	[52] = {ID = 52,AddJump = {Title = _T("派遣巡逻"),Des = _T("派遣巡逻第14章产出"),To = 10501,Param = {315}},IfJump = 1},--派遣巡逻第14章
	[53] = {ID = 53,AddJump = {Title = _T("兑换"),Des = _T("使用守护灵碎片兑换"),To = 20400},IfJump = 1},--武灵技背包全部页
	[54] = {ID = 54,AddJump = {Title = _T("商店"),Des = _T("在商店中购买"),To = 30200},IfJump = 1},--商店
	[55] = {ID = 55,AddJump = {Title = _T("竞技场"),Des = _T("在竞技场中获得"),To = 40101},IfJump = 1},--竞技场对阵页
	[56] = {ID = 56,AddJump = {Title = _T("试炼宝库"),Des = _T("试炼宝库中获得"),To = 10601},IfJump = 1},--日常副本默认页
	[57] = {ID = 57,AddJump = {Title = _T("分解技能"),Des = _T("通过分解技能获得"),To = 60200},IfJump = 1},--技能分解
	[58] = {ID = 58,AddJump = {Title = _T("点金手"),To = 60100},IfJump = 1},--点金手
	[59] = {ID = 59,AddJump = {Title = _T("感灵"),Des = _T("通过感灵获得"),To = 50500},IfJump = 1},--抽卡
	[60] = {ID = 60,AddJump = {Title = _T("装备熔炼"),Des = _T("通过装备熔炼获得"),To = 20600},IfJump = 1}--熔炼打造页
}
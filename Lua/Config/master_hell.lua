--[[
--note:
玩家突破宝箱
玩家地狱道任务
colums:
{BkLv,突破等级} ,{Pic[1],名称图片} ,{Pic[2],底板图片} ,{Pic[3],图标图片} ,{SubLv,等级} ,{Name,名字} ,{LvLimit,等级限制} ,{Reward[1].Id,奖励道具1ID} ,{Reward[1].Num,奖励道具1数量} ,{Unlock[1].Type,解锁ID1
1神器
2解锁
3属性} ,{Unlock[1].Param[1],解锁ID1} ,{Unlock[1].Param[2],解锁参数1} ,{Unlock[2].Type,解锁Type2} ,{Unlock[2].Param[1],解锁ID2} ,{Unlock[2].Param[2],解锁参数2} ,{UnlockProp,增加属性类型} ,{UnlockPropValue,增加属性值} ,{Id,ID} ,{Icon,图片} ,{Condition,任务1条件ID} ,{CountType,计数类型
1终身，2开起时计数} ,{Param[1],任务1参数1} ,{Param[2],任务1参数2} ,{Param[3],任务1参数3} ,{Jump.To,跳转ID} ,{Jump.Param,跳转参数}
primary key:
#0 [地狱道]: BkLv
#1 [地狱道任务]: BkLv,HelpCol,Id
]]
local _T = LangUtil.Language
return{
	[1] = {BkLv = 1,Pic = {[1] = "ui_dtex_Quality_073",[2] = "ui_dtex_Quality_090",[3] = "ui_dtex_Quality_064"},SubLv = 0,Name = _T("等活"),LvLimit = 15},--等活
	[2] = {
		BkLv = 2,
		Pic = {[1] = "ui_dtex_Quality_074",[2] = "ui_dtex_Quality_090",[3] = "ui_dtex_Quality_064"},
		SubLv = 0,
		Name = _T("黑绳"),
		LvLimit = 40,
		Reward = {[1] = {Id = 1401010,Num = 100}},
		Tasks = {
			[101] = {Id = 101,Name = _T("玩家等级升到10级"),Condition = 1050101,CountType = 1,Param = {[1] = 10},Reward = {[1] = {Id = 1602001,Num = 2}}},--黑绳-任务-1
			[102] = {Id = 102,Name = _T("拥有1个突破+1的守护灵"),Condition = 1010203,CountType = 1,Param = {[1] = 1,[2] = 2},Reward = {[1] = {Id = 1602001,Num = 2}}},--黑绳-任务-2
			[103] = {Id = 103,Name = _T("通关普通关第1章"),Condition = 2010101,CountType = 1,Param = {[1] = 10,[2] = 101},Reward = {[1] = {Id = 1602001,Num = 2}}},--黑绳-任务-3
			[104] = {Id = 104,Name = _T("进行5次守护灵抽卡"),Condition = 4060103,CountType = 1,Param = {[1] = 5},Reward = {[1] = {Id = 1602001,Num = 2}}}--黑绳-任务-4
		}
	},--黑绳
	[3] = {
		BkLv = 3,
		Pic = {[1] = "ui_dtex_Quality_074",[2] = "ui_dtex_Quality_090",[3] = "ui_dtex_Quality_065"},
		SubLv = 1,
		Name = _T("黑绳"),
		LvLimit = 40,
		Reward = {[1] = {Id = 1401010,Num = 100}},
		Unlock = {[1] = {Type = 2,Param = {[1] = 401,[2] = 45}}},
		Tasks = {
			[201] = {Id = 201,Name = _T("进行5次竞技场战斗"),Condition = 3010201,CountType = 1,Param = {[1] = 5},Reward = {[1] = {Id = 1602001,Num = 2}}},--黑绳+1-任务-1
			[202] = {Id = 202,Name = _T("通关困难第1章"),Condition = 2010101,CountType = 1,Param = {[1] = 10,[2] = 201},Reward = {[1] = {Id = 1602001,Num = 2}}},--黑绳+1-任务-2
			[203] = {Id = 203,Name = _T("兑换3次技能"),Condition = 1040103,CountType = 1,Param = {[1] = 3},Reward = {[1] = {Id = 1602001,Num = 2}}},--黑绳+1-任务-3
			[204] = {Id = 204,Name = _T("拥有1张SR守护灵"),Condition = 1010507,CountType = 1,Param = {[1] = 1,[2] = 3},Reward = {[1] = {Id = 1602001,Num = 2}}}--黑绳+1-任务-4
		}
	},--黑绳+1
	[4] = {
		BkLv = 4,
		Pic = {[1] = "ui_dtex_Quality_075",[2] = "ui_dtex_Quality_090",[3] = "ui_dtex_Quality_066"},
		SubLv = 0,
		Name = _T("众合"),
		LvLimit = 60,
		Reward = {[1] = {Id = 1401010,Num = 100}},
		Unlock = {[1] = {Type = 2,Param = {[1] = 401,[2] = 60}}},
		Tasks = {
			[301] = {Id = 301,Name = _T("玩家等级升到30"),Condition = 1050101,CountType = 1,Param = {[1] = 30},Reward = {[1] = {Id = 1602001,Num = 2}}},--众合-任务-1
			[302] = {Id = 302,Name = _T("拥有2个突破+3的守护灵"),Condition = 1010203,CountType = 1,Param = {[1] = 2,[2] = 4},Reward = {[1] = {Id = 1602001,Num = 2}}},--众合-任务-2
			[303] = {Id = 303,Name = _T("通关普通第4章"),Condition = 2010101,CountType = 1,Param = {[1] = 10,[2] = 104},Reward = {[1] = {Id = 1602001,Num = 2}}},--众合-任务-3
			[304] = {Id = 304,Name = _T("拥有16件橙色装备"),Condition = 1060101,CountType = 1,Param = {[1] = 16,[2] = 4},Reward = {[1] = {Id = 1602001,Num = 2}}}--众合-任务-4
		}
	},--众合
	[5] = {
		BkLv = 5,
		Pic = {[1] = "ui_dtex_Quality_075",[2] = "ui_dtex_Quality_090",[3] = "ui_dtex_Quality_066"},
		SubLv = 1,
		Name = _T("众合"),
		LvLimit = 60,
		Reward = {[1] = {Id = 1401010,Num = 100}},
		Unlock = {[1] = {Type = 2,Param = {[1] = 401,[2] = 80}}},
		Tasks = {
			[401] = {Id = 401,Name = _T("进行10次竞技场战斗"),Condition = 3010201,CountType = 1,Param = {[1] = 10},Reward = {[1] = {Id = 1602001,Num = 2}}},--众合+1-任务-1
			[402] = {Id = 402,Name = _T("在商店购买5次加速令"),Condition = 4010103,CountType = 1,Param = {[1] = 5,[2] = 1103},Reward = {[1] = {Id = 1602001,Num = 2}}},--众合+1-任务-2
			[403] = {Id = 403,Name = _T("通关困难第3章"),Condition = 2010101,CountType = 1,Param = {[1] = 10,[2] = 203},Reward = {[1] = {Id = 1602001,Num = 2}}},--众合+1-任务-3
			[404] = {Id = 404,Name = _T("拥有48件强化+20的装备"),Condition = 1060203,CountType = 1,Param = {[1] = 48,[2] = 20},Reward = {[1] = {Id = 1602001,Num = 2}}}--众合+1-任务-4
		}
	},--众合+1
	[6] = {
		BkLv = 6,
		Pic = {[1] = "ui_dtex_Quality_076",[2] = "ui_dtex_Quality_091",[3] = "ui_dtex_Quality_067"},
		SubLv = 2,
		Name = _T("叫唤"),
		LvLimit = 60,
		Reward = {[1] = {Id = 1401010,Num = 100}},
		Tasks = {
			[501] = {Id = 501,Name = _T("进行20次点金"),Condition = 4080101,CountType = 1,Param = {[1] = 20},Reward = {[1] = {Id = 1602001,Num = 2}}},--众合+2-任务-1
			[502] = {Id = 502,Name = _T("芦花古楼通过10关"),Condition = 2020101,CountType = 1,Param = {[1] = 10},Reward = {[1] = {Id = 1602001,Num = 2}}},--众合+2-任务-2
			[503] = {Id = 503,Name = _T("击杀2次恶灵"),Condition = 2030101,CountType = 1,Param = {[1] = 2,[2] = 501},Reward = {[1] = {Id = 1602001,Num = 2}}},--众合+2-任务-3
			[504] = {Id = 504,Name = _T("穿戴2套完整的套装"),Condition = 1060103,CountType = 1,Param = {[1] = 2},Reward = {[1] = {Id = 1602001,Num = 2}}}--众合+2-任务-4
		}
	},--众合+2
	[7] = {
		BkLv = 7,
		Pic = {[1] = "ui_dtex_Quality_076",[2] = "ui_dtex_Quality_091",[3] = "ui_dtex_Quality_067"},
		SubLv = 0,
		Name = _T("叫唤"),
		LvLimit = 80,
		Reward = {[1] = {Id = 1401010,Num = 100}},
		Tasks = {
			[601] = {Id = 601,Name = _T("玩家等级升到50"),Condition = 1050101,CountType = 1,Param = {[1] = 50},Reward = {[1] = {Id = 1602001,Num = 2}}},--叫唤-任务-1
			[602] = {Id = 602,Name = _T("拥有3个突破+7的守护灵"),Condition = 1010203,CountType = 1,Param = {[1] = 3,[2] = 8},Reward = {[1] = {Id = 1602001,Num = 2}}},--叫唤-任务-2
			[603] = {Id = 603,Name = _T("通关普通第9章"),Condition = 2010101,CountType = 1,Param = {[1] = 10,[2] = 109},Reward = {[1] = {Id = 1602001,Num = 2}}},--叫唤-任务-3
			[604] = {Id = 604,Name = _T("拥有1个等级>=5的1号魂珠"),Condition = 1030108,CountType = 1,Param = {[1] = 5,[2] = 1},Reward = {[1] = {Id = 1602001,Num = 2}}}--叫唤-任务-4
		}
	},--叫唤
	[8] = {
		BkLv = 8,
		Pic = {[1] = "ui_dtex_Quality_077",[2] = "ui_dtex_Quality_092",[3] = "ui_dtex_Quality_068"},
		SubLv = 1,
		Name = _T("大叫唤"),
		LvLimit = 80,
		Reward = {[1] = {Id = 1401010,Num = 100}},
		Tasks = {
			[701] = {Id = 701,Name = _T("进行30次守护灵抽卡"),Condition = 4060103,CountType = 1,Param = {[1] = 30},Reward = {[1] = {Id = 1602001,Num = 2}}},--叫唤+1-任务-1
			[702] = {Id = 702,Name = _T("通关困难第8章"),Condition = 2010101,CountType = 1,Param = {[1] = 10,[2] = 208},Reward = {[1] = {Id = 1602001,Num = 2}}},--叫唤+1-任务-2
			[703] = {Id = 703,Name = _T("神器1达到2级"),Condition = 1020101,CountType = 1,Param = {[1] = 2,[2] = 101},Reward = {[1] = {Id = 1602001,Num = 2}}},--叫唤+1-任务-3
			[704] = {Id = 704,Name = _T("拥有48件强化+40的装备"),Condition = 1060203,CountType = 1,Param = {[1] = 48,[2] = 40},Reward = {[1] = {Id = 1602001,Num = 2}}}--叫唤+1-任务-4
		}
	},--叫唤+1
	[9] = {
		BkLv = 9,
		Pic = {[1] = "ui_dtex_Quality_077",[2] = "ui_dtex_Quality_092",[3] = "ui_dtex_Quality_068"},
		SubLv = 2,
		Name = _T("大叫唤"),
		LvLimit = 80,
		Reward = {[1] = {Id = 1401010,Num = 100}},
		Unlock = {[1] = {Type = 2,Param = {[1] = 401,[2] = 100}}},
		Tasks = {
			[801] = {Id = 801,Name = _T("进行50次守护灵抽卡"),Condition = 4060103,CountType = 1,Param = {[1] = 50},Reward = {[1] = {Id = 1602001,Num = 2}}},--叫唤+2-任务-1
			[802] = {Id = 802,Name = _T("芦花古楼通过50关"),Condition = 2020101,CountType = 1,Param = {[1] = 50},Reward = {[1] = {Id = 1602001,Num = 2}}},--叫唤+2-任务-2
			[803] = {Id = 803,Name = _T("神器2达到2级"),Condition = 1020101,CountType = 1,Param = {[1] = 2,[2] = 102},Reward = {[1] = {Id = 1602001,Num = 2}}},--叫唤+2-任务-3
			[804] = {Id = 804,Name = _T("把1个2号魂珠升到3级"),Condition = 1030108,CountType = 1,Param = {[1] = 3,[2] = 2},Reward = {[1] = {Id = 1602001,Num = 2}}}--叫唤+2-任务-4
		}
	},--叫唤+2
	[10] = {
		BkLv = 10,
		Pic = {[1] = "ui_dtex_Quality_077",[2] = "ui_dtex_Quality_092",[3] = "ui_dtex_Quality_068"},
		SubLv = 0,
		Name = _T("大叫唤"),
		LvLimit = 100,
		Reward = {[1] = {Id = 1401010,Num = 100}},
		Tasks = {
			[901] = {Id = 901,Name = _T("玩家等级升到70"),Condition = 1050101,CountType = 1,Param = {[1] = 70},Reward = {[1] = {Id = 1602001,Num = 2}}},--大叫唤-任务-1
			[902] = {Id = 902,Name = _T("拥有3个突破+9的守护灵"),Condition = 1010203,CountType = 1,Param = {[1] = 3,[2] = 10},Reward = {[1] = {Id = 1602001,Num = 2}}},--大叫唤-任务-2
			[903] = {Id = 903,Name = _T("通关普通第13章"),Condition = 2010101,CountType = 1,Param = {[1] = 10,[2] = 113},Reward = {[1] = {Id = 1602001,Num = 2}}},--大叫唤-任务-3
			[904] = {Id = 904,Name = _T("进行20次寄灵人天赋洗练"),Condition = 1010401,CountType = 1,Param = {[1] = 20},Reward = {[1] = {Id = 1602001,Num = 2}}}--大叫唤-任务-4
		}
	},--大叫唤
	[11] = {
		BkLv = 11,
		Pic = {[1] = "ui_dtex_Quality_077",[2] = "ui_dtex_Quality_092",[3] = "ui_dtex_Quality_068"},
		SubLv = 1,
		Name = _T("大叫唤"),
		LvLimit = 100,
		Reward = {[1] = {Id = 1401010,Num = 100}},
		Tasks = {
			[1001] = {Id = 1001,Name = _T("击杀2个地煞7级以上的恶灵"),Condition = 2030101,CountType = 1,Param = {[1] = 3,[2] = 507},Reward = {[1] = {Id = 1602001,Num = 2}}},--大叫唤+1-任务-1
			[1002] = {Id = 1002,Name = _T("拥有1个7级的插槽技能"),Condition = 1040202,CountType = 1,Param = {[1] = 7},Reward = {[1] = {Id = 1602001,Num = 2}}},--大叫唤+1-任务-2
			[1003] = {Id = 1003,Name = _T("进行20次实时竞技"),Condition = 3020201,CountType = 1,Param = {[1] = 20},Reward = {[1] = {Id = 1602001,Num = 2}}},--大叫唤+1-任务-3
			[1004] = {Id = 1004,Name = _T("拥有48件40级以上的橙色的装备"),Condition = 1060102,CountType = 1,Param = {[1] = 48,[2] = 4,[3] = 2},Reward = {[1] = {Id = 1602001,Num = 2}}}--大叫唤+1-任务-4
		}
	},--大叫唤+1
	[12] = {
		BkLv = 12,
		Pic = {[1] = "ui_dtex_Quality_078",[2] = "ui_dtex_Quality_091",[3] = "ui_dtex_Quality_069"},
		SubLv = 2,
		Name = _T("焦热"),
		LvLimit = 100,
		Reward = {[1] = {Id = 1401010,Num = 100}},
		Tasks = {
			[1101] = {Id = 1101,Name = _T("进行80次守护灵抽卡"),Condition = 4060103,CountType = 1,Param = {[1] = 80},Reward = {[1] = {Id = 1602001,Num = 2}}},--大叫唤+2-任务-1
			[1102] = {Id = 1102,Name = _T("芦花古楼通过80关"),Condition = 2020101,CountType = 1,Param = {[1] = 80},Reward = {[1] = {Id = 1602001,Num = 2}}},--大叫唤+2-任务-2
			[1103] = {Id = 1103,Name = _T("击杀10次恶灵"),Condition = 2030101,CountType = 1,Param = {[1] = 10,[2] = 501},Reward = {[1] = {Id = 1602001,Num = 2}}},--大叫唤+2-任务-3
			[1104] = {Id = 1104,Name = _T("拥有3个等级>=5的2号魂珠"),Condition = 1030106,CountType = 1,Param = {[1] = 3,[2] = 5,[3] = 2},Reward = {[1] = {Id = 1602001,Num = 2}}}--大叫唤+2-任务-4
		}
	},--大叫唤+2
	[13] = {
		BkLv = 13,
		Pic = {[1] = "ui_dtex_Quality_078",[2] = "ui_dtex_Quality_091",[3] = "ui_dtex_Quality_069"},
		SubLv = 0,
		Name = _T("焦热"),
		LvLimit = 120,
		Reward = {[1] = {Id = 1401010,Num = 100}},
		Unlock = {[1] = {Type = 2,Param = {[1] = 401,[2] = 120}}},
		Tasks = {
			[1201] = {Id = 1201,Name = _T("玩家等级升到90"),Condition = 1050101,CountType = 1,Param = {[1] = 90},Reward = {[1] = {Id = 1602001,Num = 2}}},--焦热-任务-1
			[1202] = {Id = 1202,Name = _T("拥有3个突破+12的守护灵"),Condition = 1010203,CountType = 1,Param = {[1] = 3,[2] = 13},Reward = {[1] = {Id = 1602001,Num = 2}}},--焦热-任务-2
			[1203] = {Id = 1203,Name = _T("通关普通第17章"),Condition = 2010101,CountType = 1,Param = {[1] = 10,[2] = 117},Reward = {[1] = {Id = 1602001,Num = 2}}},--焦热-任务-3
			[1204] = {Id = 1204,Name = _T("拥有48件强化+80的装备"),Condition = 1060203,CountType = 1,Param = {[1] = 48,[2] = 80},Reward = {[1] = {Id = 1602001,Num = 2}}}--焦热-任务-4
		}
	},--焦热
	[14] = {
		BkLv = 14,
		Pic = {[1] = "ui_dtex_Quality_078",[2] = "ui_dtex_Quality_091",[3] = "ui_dtex_Quality_069"},
		SubLv = 1,
		Name = _T("焦热"),
		LvLimit = 120,
		Reward = {[1] = {Id = 1401010,Num = 100}},
		Tasks = {
			[1301] = {Id = 1301,Name = _T("进行120次守护灵抽卡"),Condition = 4060103,CountType = 1,Param = {[1] = 120},Reward = {[1] = {Id = 1602001,Num = 2}}},--焦热+1-任务-1
			[1302] = {Id = 1302,Name = _T("通关困难第15章"),Condition = 2010101,CountType = 1,Param = {[1] = 10,[2] = 215},Reward = {[1] = {Id = 1602001,Num = 2}}},--焦热+1-任务-2
			[1303] = {Id = 1303,Name = _T("拥有3个橙色神器碎片"),Condition = 1020207,CountType = 1,Param = {[1] = 3,[2] = 4,[3] = 1},Reward = {[1] = {Id = 1602001,Num = 2}}},--焦热+1-任务-3
			[1304] = {Id = 1304,Name = _T("拥有8件90级橙色装备"),Condition = 1060102,CountType = 1,Param = {[1] = 8,[2] = 4,[3] = 5},Reward = {[1] = {Id = 1602001,Num = 2}}}--焦热+1-任务-4
		}
	},--焦热+1
	[15] = {
		BkLv = 15,
		Pic = {[1] = "ui_dtex_Quality_078",[2] = "ui_dtex_Quality_091",[3] = "ui_dtex_Quality_069"},
		SubLv = 2,
		Name = _T("焦热"),
		LvLimit = 120,
		Reward = {[1] = {Id = 1401010,Num = 100}},
		Tasks = {
			[1401] = {Id = 1401,Name = _T("竞技场分数达到1500"),Condition = 3010101,CountType = 1,Param = {[1] = 1500},Reward = {[1] = {Id = 1602001,Num = 2}}},--焦热+2-任务-1
			[1402] = {Id = 1402,Name = _T("芦花古楼通过150关"),Condition = 2020101,CountType = 1,Param = {[1] = 150},Reward = {[1] = {Id = 1602001,Num = 2}}},--焦热+2-任务-2
			[1403] = {Id = 1403,Name = _T("拥有1个魂珠总等级21级的专属武器"),Condition = 1030109,CountType = 1,Param = {[1] = 21},Reward = {[1] = {Id = 1602001,Num = 2}}},--焦热+2-任务-3
			[1404] = {Id = 1404,Name = _T("拥有3个SSR守护灵"),Condition = 1010507,CountType = 1,Param = {[1] = 3,[2] = 4},Reward = {[1] = {Id = 1602001,Num = 2}}}--焦热+2-任务-4
		}
	},--焦热+2
	[16] = {
		BkLv = 16,
		Pic = {[1] = "ui_dtex_Quality_079",[2] = "ui_dtex_Quality_088",[3] = "ui_dtex_Quality_070"},
		SubLv = 0,
		Name = _T("大焦热"),
		LvLimit = 150,
		Reward = {[1] = {Id = 1401010,Num = 100}},
		Tasks = {
			[1501] = {Id = 1501,Name = _T("玩家等级升到120"),Condition = 1050101,CountType = 1,Param = {[1] = 120},Reward = {[1] = {Id = 1602001,Num = 2}}},--大焦热-任务-1
			[1502] = {Id = 1502,Name = _T("拥有3个突破+15的守护灵"),Condition = 1010203,CountType = 1,Param = {[1] = 3,[2] = 16},Reward = {[1] = {Id = 1602001,Num = 2}}},--大焦热-任务-2
			[1503] = {Id = 1503,Name = _T("通关普通第22章"),Condition = 2010101,CountType = 1,Param = {[1] = 10,[2] = 122},Reward = {[1] = {Id = 1602001,Num = 2}}},--大焦热-任务-3
			[1504] = {Id = 1504,Name = _T("拥有48件90级的橙色装备"),Condition = 1060102,CountType = 1,Param = {[1] = 48,[2] = 4,[3] = 5},Reward = {[1] = {Id = 1602001,Num = 2}}}--大焦热-任务-4
		}
	},--大焦热
	[17] = {
		BkLv = 17,
		Pic = {[1] = "ui_dtex_Quality_079",[2] = "ui_dtex_Quality_088",[3] = "ui_dtex_Quality_070"},
		SubLv = 1,
		Name = _T("大焦热"),
		LvLimit = 150,
		Reward = {[1] = {Id = 1401010,Num = 100}},
		Unlock = {[1] = {Type = 2,Param = {[1] = 401,[2] = 140}}},
		Tasks = {
			[1601] = {Id = 1601,Name = _T("通过困难20章"),Condition = 2010101,CountType = 1,Param = {[1] = 10,[2] = 220},Reward = {[1] = {Id = 1602001,Num = 2}}},--大焦热+1-任务-1
			[1602] = {Id = 1602,Name = _T("神器3达到3级"),Condition = 1020101,CountType = 1,Param = {[1] = 3,[2] = 103},Reward = {[1] = {Id = 1602001,Num = 2}}},--大焦热+1-任务-2
			[1603] = {Id = 1603,Name = _T("神器4达到3级"),Condition = 1020101,CountType = 1,Param = {[1] = 3,[2] = 104},Reward = {[1] = {Id = 1602001,Num = 2}}},--大焦热+1-任务-3
			[1604] = {Id = 1604,Name = _T("神器5达到3级"),Condition = 1020101,CountType = 1,Param = {[1] = 3,[2] = 105},Reward = {[1] = {Id = 1602001,Num = 2}}}--大焦热+1-任务-4
		}
	},--大焦热+1
	[18] = {
		BkLv = 18,
		Pic = {[1] = "ui_dtex_Quality_079",[2] = "ui_dtex_Quality_088",[3] = "ui_dtex_Quality_070"},
		SubLv = 2,
		Name = _T("大焦热"),
		LvLimit = 150,
		Reward = {[1] = {Id = 1401010,Num = 100}},
		Tasks = {
			[1701] = {Id = 1701,Name = _T("玩家等级升到135"),Condition = 1050101,CountType = 1,Param = {[1] = 135},Reward = {[1] = {Id = 1602001,Num = 2}}},--大焦热+2-任务-1
			[1702] = {Id = 1702,Name = _T("芦花古楼通过200关"),Condition = 2020101,CountType = 1,Param = {[1] = 200},Reward = {[1] = {Id = 1602001,Num = 2}}},--大焦热+2-任务-2
			[1703] = {Id = 1703,Name = _T("拥有1个魂珠总等级30级的专属武器"),Condition = 1030109,CountType = 1,Param = {[1] = 30},Reward = {[1] = {Id = 1602001,Num = 2}}},--大焦热+2-任务-3
			[1704] = {Id = 1704,Name = _T("拥有24件120的橙色装备"),Condition = 1060102,CountType = 1,Param = {[1] = 24,[2] = 4,[3] = 8},Reward = {[1] = {Id = 1602001,Num = 2}}}--大焦热+2-任务-4
		}
	},--大焦热+2
	[19] = {
		BkLv = 19,
		Pic = {[1] = "ui_dtex_Quality_079",[2] = "ui_dtex_Quality_088",[3] = "ui_dtex_Quality_070"},
		SubLv = 0,
		Name = _T("大焦热"),
		LvLimit = 150,
		Reward = {[1] = {Id = 1401010,Num = 100}},
		Tasks = {
			[1801] = {Id = 1801,Name = _T("玩家等级升到140"),Condition = 1050101,CountType = 1,Param = {[1] = 140},Reward = {[1] = {Id = 1602001,Num = 2}}},--无间-任务-1
			[1802] = {Id = 1802,Name = _T("拥有3个突破+18的守护灵"),Condition = 1010203,CountType = 1,Param = {[1] = 3,[2] = 19},Reward = {[1] = {Id = 1602001,Num = 2}}},--无间-任务-2
			[1803] = {Id = 1803,Name = _T("通关普通第27章"),Condition = 2010101,CountType = 1,Param = {[1] = 10,[2] = 127},Reward = {[1] = {Id = 1602001,Num = 2}}},--无间-任务-3
			[1804] = {Id = 1804,Name = _T("拥有48件强化+120的装备"),Condition = 1060203,CountType = 1,Param = {[1] = 48,[2] = 120},Reward = {[1] = {Id = 1602001,Num = 2}}}--无间-任务-4
		}
	},--无间
	[20] = {
		BkLv = 20,
		Pic = {[1] = "ui_dtex_Quality_080",[2] = "ui_dtex_Quality_087",[3] = "ui_dtex_Quality_071"},
		SubLv = 1,
		Name = _T("无间"),
		LvLimit = 150,
		Reward = {[1] = {Id = 1401010,Num = 100}},
		Tasks = {
			[1901] = {Id = 1901,Name = _T("玩家等级升到150"),Condition = 1050101,CountType = 1,Param = {[1] = 150},Reward = {[1] = {Id = 1602001,Num = 2}}},--无间+1-任务-1
			[1902] = {Id = 1902,Name = _T("神器6达到3级"),Condition = 1020101,CountType = 1,Param = {[1] = 3,[2] = 106},Reward = {[1] = {Id = 1602001,Num = 2}}},--无间+1-任务-2
			[1903] = {Id = 1903,Name = _T("神器7达到3级"),Condition = 1020101,CountType = 1,Param = {[1] = 3,[2] = 107},Reward = {[1] = {Id = 1602001,Num = 2}}},--无间+1-任务-3
			[1904] = {Id = 1904,Name = _T("拥有1个魂珠总等级40级的专属武器"),Condition = 1030109,CountType = 1,Param = {[1] = 40},Reward = {[1] = {Id = 1602001,Num = 2}}}--无间+1-任务-4
		}
	}--无间+1
}
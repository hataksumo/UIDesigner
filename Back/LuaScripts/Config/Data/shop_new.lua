--[[
output from excel shop.商店.xlsx
--note:

colums:
{Name,名字} ,{ShopIcon,图标} ,{IsShow,是否显示} ,{ShopId,商店ID} ,{Uid,页签唯一ID} ,{TagName,页签名} ,{TagIcon,页签图标} ,{ResBarId,资源栏ID} ,{Id,ID} ,{TagId,页签ID} ,{GoodsType,商品类型：0-普通商品，1-礼包} ,{Good.Id,道具ID} ,{Good.Val,道具数量} ,{Good.FirstExtAward,首次购买额外奖励} ,{LimitType,限次类型:0-不限次，1-终身限次，2-每日限次，3-每周限次，4-每月限次，5-月卡，6终身卡} ,{LimitNum,限制数量} ,{SellType,售价类型:0-正常单价，1-阶梯价} ,{CoinType,货币类型} ,{Price,价格} ,{Cost,原价} ,{ConditionId,激活条件ID} ,{ConditionParam[1],激活条件参数1} ,{ConditionParam[2],激活条件参数2} ,{Recommend,是否推荐} ,{IfOpen,是否开放}
primary key:
#0 [商店类型]: Shop
#1 [商店页签]: Shop,HelpCol,TagId
#2 [货架]: Shop,HelpCol,TagId,HelpCol1,Loc
]]
local _T = LangUtil.Language
return{
	[1] = {
		Name = "灵玉商店",
		IsShow = true,
		Tags = {
			[1] = {
				TagName = "灵玉商城",
				ResBarId = 37,
				Goods = {
					[1] = {Id = 1101,Name = _T("月卡"),GoodsType = 0,Good = {Id = 1401010,Val = 300,FirstExtAward = 300},LimitType = 4,LimitNum = 1,SellType = 0,CoinType = 1401001,Price = {30},Cost = 30,Recommend = 0,IfOpen = 0},--月卡
					[2] = {Id = 1102,Name = _T("终身卡"),GoodsType = 0,Good = {Id = 1401010,Val = 980,FirstExtAward = 980},LimitType = 6,LimitNum = 1,SellType = 0,CoinType = 1401001,Price = {98},Cost = 98,Recommend = 0,IfOpen = 0},--终身卡
					[3] = {Id = 1103,Name = _T("一堆灵玉"),GoodsType = 0,Good = {Id = 1401010,Val = 60,FirstExtAward = 60},LimitType = 0,SellType = 0,CoinType = 1401001,Price = {6},Cost = 6,Recommend = 0,IfOpen = 1},--一堆灵玉
					[4] = {Id = 1104,Name = _T("一大堆灵玉"),GoodsType = 0,Good = {Id = 1401010,Val = 300,FirstExtAward = 300},LimitType = 0,SellType = 0,CoinType = 1401001,Price = {30},Cost = 30,Recommend = 0,IfOpen = 1},--一大堆灵玉
					[5] = {Id = 1105,Name = _T("一袋灵玉"),GoodsType = 0,Good = {Id = 1401010,Val = 680,FirstExtAward = 680},LimitType = 0,SellType = 0,CoinType = 1401001,Price = {68},Cost = 68,Recommend = 0,IfOpen = 1},--一袋灵玉
					[6] = {Id = 1106,Name = _T("一大袋灵玉"),GoodsType = 0,Good = {Id = 1401010,Val = 1280,FirstExtAward = 1280},LimitType = 0,SellType = 0,CoinType = 1401001,Price = {128},Cost = 128,Recommend = 0,IfOpen = 1},--一大袋灵玉
					[7] = {Id = 1107,Name = _T("一箱灵玉"),GoodsType = 0,Good = {Id = 1401010,Val = 3280,FirstExtAward = 3280},LimitType = 0,SellType = 0,CoinType = 1401001,Price = {328},Cost = 328,Recommend = 0,IfOpen = 1},--一箱灵玉
					[8] = {Id = 1108,Name = _T("一大箱灵玉"),GoodsType = 0,Good = {Id = 1401010,Val = 6480,FirstExtAward = 6480},LimitType = 0,SellType = 0,CoinType = 1401001,Price = {648},Cost = 648,Recommend = 0,IfOpen = 1}--一大箱灵玉
				}
			},
			[2] = {
				TagName = "礼包商城",
				ResBarId = 37,
				Goods = {
					[1] = {Id = 1201,Name = _T("30元礼包"),GoodsType = 0,Good = {Id = 1605024,Val = 1},LimitType = 1,LimitNum = 1,SellType = 0,CoinType = 1401001,Price = {30},Cost = 30,Recommend = 0,IfOpen = 1},--30元礼包
					[2] = {Id = 1202,Name = _T("98元礼包"),GoodsType = 0,Good = {Id = 1605025,Val = 1},LimitType = 1,LimitNum = 1,SellType = 0,CoinType = 1401001,Price = {98},Cost = 98,Recommend = 0,IfOpen = 1},--98元礼包
					[3] = {Id = 1203,Name = _T("168元礼包"),GoodsType = 0,Good = {Id = 1605026,Val = 1},LimitType = 1,LimitNum = 1,SellType = 0,CoinType = 1401001,Price = {168},Cost = 168,Recommend = 0,IfOpen = 1},--168元礼包
					[4] = {Id = 1204,Name = _T("6元礼包"),GoodsType = 0,Good = {Id = 1605027,Val = 1},LimitType = 1,LimitNum = 1,SellType = 0,CoinType = 1401001,Price = {6},Cost = 6,Recommend = 0,IfOpen = 1},--6元礼包
					[5] = {Id = 1205,Name = _T("68元礼包"),GoodsType = 0,Good = {Id = 1605028,Val = 1},LimitType = 1,LimitNum = 1,SellType = 0,CoinType = 1401001,Price = {68},Cost = 68,Recommend = 0,IfOpen = 1},--68元礼包
					[6] = {Id = 1206,Name = _T("128元礼包"),GoodsType = 0,Good = {Id = 1605029,Val = 1},LimitType = 1,LimitNum = 1,SellType = 0,CoinType = 1401001,Price = {128},Cost = 128,Recommend = 0,IfOpen = 1},--128元礼包
					[7] = {Id = 1207,Name = _T("328元礼包"),GoodsType = 0,Good = {Id = 1605030,Val = 1},LimitType = 1,LimitNum = 1,SellType = 0,CoinType = 1401001,Price = {328},Cost = 328,Recommend = 0,IfOpen = 1}--328元礼包
				}
			}
		}
	},
	[2] = {
		Name = "杂货店",
		IsShow = true,
		Tags = {
			[1] = {
				TagName = "珍品商城",
				ResBarId = 24,
				Goods = {
					[1] = {Id = 2101,Name = _T("聘书"),GoodsType = 0,Good = {Id = 1601001,Val = 1},LimitType = 2,LimitNum = 10,SellType = 1,CoinType = 1401010,Price = {188,288,288,288,288,300},Cost = 300,Recommend = 0,IfOpen = 1},--寄灵人抽卡券
					[2] = {Id = 2102,Name = _T("高级感灵符"),GoodsType = 0,Good = {Id = 1602001,Val = 1},LimitType = 2,LimitNum = 10,SellType = 1,CoinType = 1401010,Price = {188,288,288,288,288,300},Cost = 300,Recommend = 0,IfOpen = 1},--守护灵抽卡券
					[3] = {Id = 2103,Name = _T("高级感灵符-十连"),GoodsType = 0,Good = {Id = 1602001,Val = 10},LimitType = 3,LimitNum = 3,SellType = 1,CoinType = 1401010,Price = {1980,2588,2688},Cost = 3000,Recommend = 0,IfOpen = 1},--守护灵抽卡券
					[4] = {Id = 2104,Name = _T("专属武器宝箱"),GoodsType = 0,Good = {Id = 1605007,Val = 1},LimitType = 2,LimitNum = 10,SellType = 1,CoinType = 1401010,Price = {50,50,100,100,150,150,200,200},Cost = 200,Recommend = 0,IfOpen = 1},--专属武器宝箱
					[5] = {Id = 2105,Name = _T("神器惊喜宝箱"),GoodsType = 0,Good = {Id = 1605018,Val = 1},LimitType = 2,LimitNum = 5,SellType = 1,CoinType = 1401010,Price = {100,150,200,300,300},Cost = 300,Recommend = 0,IfOpen = 1},--神器惊喜宝箱
					[6] = {Id = 2106,Name = _T("月亮石"),GoodsType = 0,Good = {Id = 1609002,Val = 1},LimitType = 0,SellType = 0,CoinType = 1401010,Price = {10},Cost = 10,Recommend = 0,IfOpen = 1},--专属强化石2
					[7] = {Id = 2107,Name = _T("太阳石"),GoodsType = 0,Good = {Id = 1609003,Val = 1},LimitType = 0,SellType = 0,CoinType = 1401010,Price = {20},Cost = 20,Recommend = 0,IfOpen = 1},--专属强化石3
					[8] = {Id = 2108,Name = _T("竞武券"),GoodsType = 0,Good = {Id = 1401007,Val = 1},LimitType = 2,LimitNum = 20,SellType = 1,CoinType = 1401010,Price = {5,5,10,10,20,20,35,35,50,50,80,80,100},Cost = 100,Recommend = 0,IfOpen = 1},--竞技场扫荡券
					[9] = {Id = 2109,Name = _T("洗练瓶"),GoodsType = 0,Good = {Id = 1603025,Val = 1},LimitType = 2,LimitNum = 100,SellType = 0,CoinType = 1401010,Price = {10},Cost = 10,Recommend = 0,IfOpen = 1}--洗练瓶
				}
			},
			[2] = {
				TagName = "杂货铺",
				ResBarId = 26,
				Goods = {
					[1] = {Id = 2201,Name = _T("初级感灵符"),GoodsType = 0,Good = {Id = 1602002,Val = 1},LimitType = 0,SellType = 0,CoinType = 1401002,Price = {10},Cost = 50000,Recommend = 0,IfOpen = 1},--初级守护灵抽卡券
					[2] = {Id = 2202,Name = _T("玄铁"),GoodsType = 0,Good = {Id = 1603005,Val = 1},LimitType = 0,SellType = 0,CoinType = 1401002,Price = {5000},Cost = 5000,Recommend = 0,IfOpen = 1},--玄铁
					[3] = {Id = 2203,Name = _T("乌金"),GoodsType = 0,Good = {Id = 1603006,Val = 1},LimitType = 0,SellType = 0,CoinType = 1401002,Price = {12000},Cost = 12000,Recommend = 0,IfOpen = 1},--乌金
					[4] = {Id = 2204,Name = _T("银母"),GoodsType = 0,Good = {Id = 1603007,Val = 1},LimitType = 0,SellType = 0,CoinType = 1401002,Price = {35000},Cost = 35000,Recommend = 0,IfOpen = 1},--银母
					[5] = {Id = 2205,Name = _T("铀金"),GoodsType = 0,Good = {Id = 1603008,Val = 1},LimitType = 0,SellType = 0,CoinType = 1401002,Price = {100000},Cost = 100000,Recommend = 0,IfOpen = 1},--铀金
					[6] = {Id = 2206,Name = _T("星辰石"),GoodsType = 0,Good = {Id = 1609001,Val = 1},LimitType = 0,SellType = 0,CoinType = 1401002,Price = {5000},Cost = 5000,Recommend = 0,IfOpen = 1}--专属强化石1
				}
			}
		}
	},
	[3] = {
		Name = "积分商店",
		IsShow = true,
		Tags = {
			[1] = {
				TagName = "荣誉商城",
				ResBarId = 27,
				Goods = {
					[1] = {Id = 3101,Name = _T("加速令"),GoodsType = 0,Good = {Id = 1604001,Val = 1},LimitType = 2,LimitNum = 1,SellType = 0,CoinType = 1401008,Price = {50},Cost = 50,Recommend = 0,IfOpen = 1},--2小时扫荡券
					[2] = {Id = 3102,Name = _T("神器惊喜宝箱"),GoodsType = 0,Good = {Id = 1605018,Val = 1},LimitType = 2,LimitNum = 2,SellType = 0,CoinType = 1401008,Price = {50},Cost = 50,Recommend = 0,IfOpen = 1},--神器惊喜宝箱
					[3] = {Id = 3103,Name = _T("月亮石"),GoodsType = 0,Good = {Id = 1609002,Val = 1},LimitType = 0,LimitNum = 20,SellType = 0,CoinType = 1401008,Price = {10},Cost = 10,Recommend = 0,IfOpen = 1},--专属强化石2
					[4] = {Id = 3104,Name = _T("洗练瓶"),GoodsType = 0,Good = {Id = 1603025,Val = 1},LimitType = 2,LimitNum = 20,SellType = 0,CoinType = 1401008,Price = {10},Cost = 10,Recommend = 0,IfOpen = 1},--洗炼瓶
					[5] = {Id = 3105,Name = _T("吕仙宫残魂"),GoodsType = 0,Good = {Id = 1701014,Val = 10},LimitType = 2,LimitNum = 4,SellType = 0,CoinType = 1401008,Price = {75},Cost = 75,Recommend = 0,IfOpen = 1},--吕仙宫碎片x10
					[6] = {Id = 3106,Name = _T("灵装夏铃残魂"),GoodsType = 0,Good = {Id = 1701003,Val = 10},LimitType = 2,LimitNum = 4,SellType = 0,CoinType = 1401008,Price = {75},Cost = 75,Recommend = 0,IfOpen = 1},--战斗夏铃碎片x10
					[7] = {Id = 3107,Name = _T("灵装曹焱兵残魂"),GoodsType = 0,Good = {Id = 1701007,Val = 20},LimitType = 2,LimitNum = 4,SellType = 0,CoinType = 1401008,Price = {300},Cost = 300,Recommend = 0,IfOpen = 1},--战斗曹焱兵碎片x20
					[8] = {Id = 3108,Name = _T("刘羽禅残魂"),GoodsType = 0,Good = {Id = 1701005,Val = 20},LimitType = 2,LimitNum = 4,SellType = 0,CoinType = 1401008,Price = {300},Cost = 300,Recommend = 0,IfOpen = 1},--刘羽禅碎片x20
					[9] = {Id = 3109,Name = _T("盖文残魂"),GoodsType = 0,Good = {Id = 1701010,Val = 20},LimitType = 2,LimitNum = 4,SellType = 0,CoinType = 1401008,Price = {300},Cost = 300,Recommend = 0,IfOpen = 1}--盖文碎片x20
				}
			},
			[2] = {
				TagName = "芦花商城",
				ResBarId = 29,
				Goods = {
					[1] = {Id = 3201,Name = _T("初级神器宝箱"),GoodsType = 0,Good = {Id = 1605010,Val = 1},LimitType = 0,SellType = 0,CoinType = 1401013,Price = {65},Cost = 65,Recommend = 0,IfOpen = 1},--初级神器宝箱
					[2] = {Id = 3202,Name = _T("中级神器宝箱"),GoodsType = 0,Good = {Id = 1605011,Val = 1},LimitType = 0,SellType = 0,CoinType = 1401013,Price = {165},Cost = 165,ConditionId = 2020101,ConditionParam = {[1] = 40},Recommend = 0,IfOpen = 1},--中级神器宝箱
					[3] = {Id = 3203,Name = _T("高级神器宝箱"),GoodsType = 0,Good = {Id = 1605012,Val = 1},LimitType = 0,SellType = 0,CoinType = 1401013,Price = {250},Cost = 250,ConditionId = 2020101,ConditionParam = {[1] = 120},Recommend = 0,IfOpen = 1},--高级神器宝箱
					[4] = {Id = 3204,Name = _T("千年寒铁"),GoodsType = 0,Good = {Id = 1606001,Val = 100},LimitType = 0,SellType = 0,CoinType = 1401013,Price = {20},Cost = 20,Recommend = 0,IfOpen = 1},--神器低级材料
					[5] = {Id = 3205,Name = _T("曹玄亮残魂"),GoodsType = 0,Good = {Id = 1701002,Val = 5},LimitType = 2,LimitNum = 4,SellType = 0,CoinType = 1401013,Price = {35},Cost = 35,Recommend = 0,IfOpen = 1},--曹玄亮碎片x5
					[6] = {Id = 3206,Name = _T("黑尔坎普残魂"),GoodsType = 0,Good = {Id = 1701008,Val = 5},LimitType = 2,LimitNum = 4,SellType = 0,CoinType = 1401013,Price = {35},Cost = 35,Recommend = 0,IfOpen = 1},--黑尔坎普碎片x5
					[7] = {Id = 3207,Name = _T("阎巧巧残魂"),GoodsType = 0,Good = {Id = 1701015,Val = 10},LimitType = 2,LimitNum = 4,SellType = 0,CoinType = 1401013,Price = {100},Cost = 100,Recommend = 0,IfOpen = 1},--阎巧巧碎片x10
					[8] = {Id = 3208,Name = _T("北落师门残魂"),GoodsType = 0,Good = {Id = 1701009,Val = 10},LimitType = 2,LimitNum = 4,SellType = 0,CoinType = 1401013,Price = {100},Cost = 100,Recommend = 0,IfOpen = 1},--北落师门碎片x10
					[9] = {Id = 3209,Name = _T("阎风吒残魂"),GoodsType = 0,Good = {Id = 1701011,Val = 10},LimitType = 2,LimitNum = 4,SellType = 0,CoinType = 1401013,Price = {100},Cost = 100,Recommend = 0,IfOpen = 1},--阎风吒碎片x10
					[10] = {Id = 3210,Name = _T("红莲缇娜残魂"),GoodsType = 0,Good = {Id = 1701006,Val = 20},LimitType = 2,LimitNum = 4,SellType = 0,CoinType = 1401013,Price = {350},Cost = 350,Recommend = 0,IfOpen = 1},--红莲缇娜碎片x20
					[11] = {Id = 3211,Name = _T("项昆仑残魂"),GoodsType = 0,Good = {Id = 1701004,Val = 20},LimitType = 2,LimitNum = 4,SellType = 0,CoinType = 1401013,Price = {1000},Cost = 1000,Recommend = 0,IfOpen = 1}--项昆仑碎片x20
				}
			}
		}
	}
}
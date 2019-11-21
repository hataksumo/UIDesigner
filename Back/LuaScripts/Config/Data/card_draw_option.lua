--[[
output from excel draw.抽卡-15590.xlsx
--note:

colums:
{ID,唯一键} ,{SortingParam,卡池排序参数：按数字从小到大排列} ,{DrawName,卡池名称} ,{DrawDesc,卡池描述} ,{LuckyPointDesc,感灵值说明} ,{LuckyPointFullDesc,感灵值满时的说明} ,{BugItem.ID,购买的物品} ,{BugItem.Num,购买的金币数} ,{Cost.ID,抽卡消耗道具ID} ,{Cost.Val,抽卡消耗道具数量} ,{SubCost.ID,Cost[1]不足时，以此代替
货币ID} ,{SubCost.Val,代替一个道具需要的货币数量} ,{Type,1 寄灵人
2 守护灵} ,{SubType,用于任务计数的类型
1 低级
2 高级} ,{StartTime,开启时间} ,{EndTime,结束时间} ,{CardComponent,卡池控件名称} ,{Bg,背景图片} ,{PageSign,页签图片} ,{Model,模型} ,{OpenType,抽卡项开启条件} ,{OpenParams[1],开启条件参数1} ,{OpenParams[2],开启条件参数2} ,{ResBarId,资源栏ID} ,{ResBarId1,抽卡展示资源栏ID} ,{LuckyPointLimit,感灵值上限
满值时保底掉落
每次抽卡涨1点}
primary key:
#0 [抽卡项配置表]: ID
]]
local _T = LangUtil.Language
return{
	[1] = {ID = 1,SortingParam = 1000,DrawName = "高级守护灵",DrawDesc = "<size=48><color=#cf55d3>高级守护灵</color></size>",LuckyPointDesc = "<color=#cf55d3>感灵值满时，必得SSR守护灵</color>",LuckyPointFullDesc = "<color=#ffa83b>本次必得SSR守护灵</color>",BugItem = {ID = 1401002,Num = 1000},Cost = {ID = 1602001,Val = 1},SubCost = {ID = 1401010,Val = 300},Type = 2,SubType = 2,StartTime = "2018-11-15 00:00:00",EndTime = "2099-11-15 00:00:00",Bg = "ui_t_Gacha_002",PageSign = "ui_dtex_Tapicon_110",OpenType = 1050101,OpenParams = {[1] = 1},ResBarId = 16,ResBarId1 = 16,LuckyPointLimit = 30},--守护灵高级抽卡
	[3] = {ID = 3,SortingParam = 4000,DrawName = "高级寄灵人",DrawDesc = "<size=48><color=#cf55d3>高级寄灵人</color></size>",LuckyPointDesc = "<color=#cf55d3>感灵值满时，必得SSR寄灵人</color>",LuckyPointFullDesc = "<color=#ffa83b>本次必得SSR寄灵人</color>",BugItem = {ID = 1401002,Num = 1000},Cost = {ID = 1601001,Val = 1},SubCost = {ID = 1401010,Val = 300},Type = 1,SubType = 2,StartTime = "2018-11-15 00:00:00",EndTime = "2099-11-15 00:00:00",Bg = "ui_t_Gacha_002",PageSign = "ui_dtex_Tapicon_112",OpenType = 5010101,OpenParams = {[1] = 2},ResBarId = 18,ResBarId1 = 18,LuckyPointLimit = 30},--寄灵人抽卡
	[4] = {ID = 4,SortingParam = 2000,DrawName = "新手守护灵",DrawDesc = "<size=48><color=#cf55d3>新手守护灵</color></size>",LuckyPointDesc = "<color=#cf55d3>感灵值满时，必得SSR守护灵</color>",LuckyPointFullDesc = "<color=#ffa83b>本次必得SSR守护灵</color>",BugItem = {ID = 1401002,Num = 1000},Cost = {ID = 1602001,Val = 1},SubCost = {ID = 1401010,Val = 300},Type = 2,SubType = 1,StartTime = "2018-11-15 00:00:00",EndTime = "2099-11-15 00:00:00",Bg = "ui_t_Gacha_002",PageSign = "ui_dtex_Tapicon_110",OpenType = 1050101,OpenParams = {[1] = 1},ResBarId = 19,ResBarId1 = 19,LuckyPointLimit = 20}--守护灵新手抽卡
}
--[[
output from excel unlock.功能解锁.xlsx
--note:
客户端管理各系统开放的表
colums:
{Id,ID} ,{GuidId,触发引导Id} ,{Title,标题} ,{SortId,排序} ,{TipType,功能开启是否提示
0 - 不提示
1 - 提示} ,{BgIcon,背景图} ,{ButtonType,是否主城按钮
0 - 不是（默认）
1 - 是主城按钮} ,{IconPathType,TipType值为“1”时有效
Icon的路径类型
0 - DynamicTex
1 - Language_zh-cn} ,{Icon,前景图} ,{IconTargetPath,TipType值为“1”时有效
提示后，图标飞到的位置在主城预设中对应的按钮名} ,{Desc,描述} ,{Type,锁类型
1.消失
2.置灰点击Tip
3.点击Tip} ,{System.id,系统} ,{System.subid,子系统} ,{Condition[1].id,条件} ,{Condition[1].param1,参数1} ,{Condition[1].param2,参数2} ,{Condition[1].param3,参数3} ,{Condition[2].id,条件} ,{Condition[2].param1,参数1} ,{Condition[2].param2,参数2} ,{Condition[2].param3,参数3} ,{ChallengeShow,是否在挑战中显示0-否1-是} ,{ChallengeSort,挑战界面中的排序} ,{ChallengeIcon,挑战界面的图标}
primary key:
#0 [功能解锁]: Id
]]
local _T = LangUtil.Language
return{
	[101] = {Title = "冒险",SortId = 0,TipType = 0,ButtonType = 1,IconPathType = 0,Icon = "ui_t_c2_660",IconTargetPath = "UIRoot/BackgroudLayer/UITestMain/parentLayout/rightLayout/maoxianBtn",Desc = "玩家等级达到1级",Type = 3,System = {id = 201},Condition = {[1] = {id = 4060106,param1 = 1,param2 = 1}},ChallengeShow = 0},--冒险
	[102] = {Title = "芦花古楼",SortId = 11,TipType = 1,ButtonType = 0,IconPathType = 1,Icon = "ui_t_c2_527",IconTargetPath = "UIRoot/BackgroudLayer/UITestMain/parentLayout/MainBtn/challengeBtn",Desc = "玩家等级达到43级",Type = 2,System = {id = 101,subid = 1},Condition = {[1] = {id = 1050101,param1 = 43}},ChallengeShow = 1,ChallengeSort = 3,ChallengeIcon = "ui_t_c2_527"},--芦花古楼
	[103] = {Title = "恶灵入侵",SortId = 9,TipType = 1,ButtonType = 0,IconPathType = 1,Icon = "ui_t_c2_693",IconTargetPath = "UIRoot/BackgroudLayer/UITestMain/parentLayout/MainBtn/challengeBtn",Desc = "玩家等级达到31级",Type = 2,System = {id = 101,subid = 1},Condition = {[1] = {id = 1050101,param1 = 31}},ChallengeShow = 1,ChallengeSort = 2,ChallengeIcon = "ui_t_c2_693"},--恶灵入侵
	[104] = {Title = "竞技场",SortId = 7,TipType = 1,ButtonType = 0,IconPathType = 1,Icon = "ui_t_c2_526",IconTargetPath = "UIRoot/BackgroudLayer/UITestMain/parentLayout/MainBtn/arenaBtn",Desc = "通过第三章第4关",Type = 2,System = {id = 401},Condition = {[1] = {id = 2010102,param1 = 1,param2 = 10304}},ChallengeShow = 0},--竞技场
	[105] = {Title = "集训营",SortId = 8,TipType = 1,ButtonType = 0,IconPathType = 1,Icon = "ui_t_c2_187",IconTargetPath = "UIRoot/BackgroudLayer/UITestMain/parentLayout/MainBtn/challengeBtn",Desc = "通过第三十章第10关",Type = 2,System = {id = 101,subid = 1},Condition = {[1] = {id = 2010102,param1 = 1,param2 = 13010}},ChallengeShow = 0},--集训营
	[106] = {Title = "探险",SortId = 4,TipType = 1,ButtonType = 1,IconPathType = 1,Icon = "ui_t_c2_799",IconTargetPath = "UIRoot/BackgroudLayer/UITestMain/parentLayout/MainBtn/exploreBtn",Desc = "通过第二章第10关",Type = 2,System = {id = 401},Condition = {[1] = {id = 2010102,param1 = 1,param2 = 10210}},ChallengeShow = 0},--挂机派遣
	[107] = {Title = "试炼宝库",SortId = 0,TipType = 1,ButtonType = 0,IconPathType = 1,Icon = "ui_t_c2_530",IconTargetPath = "UIRoot/BackgroudLayer/UITestMain/parentLayout/MainBtn/challengeBtn",Desc = "关卡到达3-4",Type = 2,System = {id = 401},Condition = {[1] = {id = 2010102,param1 = 1,param2 = 10304}},ChallengeShow = 1,ChallengeSort = 1,ChallengeIcon = "ui_t_c2_530"},--日常本
	[108] = {Title = "千机黑刹",SortId = 13,TipType = 1,ButtonType = 0,IconPathType = 1,Icon = "ui_t_c2_757",IconTargetPath = "UIRoot/BackgroudLayer/UITestMain/parentLayout/MainBtn/challengeBtn",Desc = "玩家等级达到40级",Type = 2,System = {id = 401},Condition = {[1] = {id = 1050101,param1 = 150}},ChallengeShow = 1,ChallengeSort = 4,ChallengeIcon = "ui_t_c2_188"},--千机黑刹（多人Boss）
	[201] = {Title = "寄灵人养成",SortId = 0,TipType = 0,ButtonType = 0,Desc = "玩家等级达到1级",Type = 3,System = {id = 201},Condition = {[1] = {id = 1050101,param1 = 1}},ChallengeShow = 0},--寄灵人养成
	[202] = {Title = "守护灵养成",SortId = 2,TipType = 0,ButtonType = 0,Desc = "通过第一章第3关",Type = 1,System = {id = 204},Condition = {[1] = {id = 2010102,param1 = 1,param2 = 10103}},ChallengeShow = 0},--守护灵养成按钮
	[203] = {Title = "神器",SortId = 12,TipType = 1,ButtonType = 1,IconPathType = 1,Icon = "ui_t_c2_528",IconTargetPath = "UIRoot/BackgroudLayer/UITestMain/parentLayout/MainBtn/artifactBtn",Desc = "通过芦花古楼-风的第1关",Type = 1,System = {id = 101,subid = 1},Condition = {[1] = {id = 2010102,param1 = 1,param2 = 41001}},ChallengeShow = 0},--神器
	[204] = {Title = "武灵技背包",SortId = 1,TipType = 1,ButtonType = 1,IconPathType = 0,Icon = "ui_t_c2_664",IconTargetPath = "UIRoot/BackgroudLayer/UITestMain/parentLayout/ResourceBarParent/CommonBtnGroup(Clone)/BottomBtnGroup/BottomBtnGroup/CellSkillBtn",Desc = "通过第二章第3关",Type = 1,System = {id = 204},Condition = {[1] = {id = 2010102,param1 = 1,param2 = 10203}},ChallengeShow = 0},--武灵技背包
	[205] = {Title = "地狱道",SortId = 3,TipType = 1,ButtonType = 1,IconPathType = 1,Icon = "ui_t_c2_808",IconTargetPath = "UIRoot/BackgroudLayer/UITestMain/parentLayout/PlayerInfo/topFunLayout/UserHell",Desc = "玩家等级达到10级",Type = 1,System = {id = 101,subid = 1},Condition = {[1] = {id = 1050101,param1 = 10}},ChallengeShow = 0},--地狱道任务
	[301] = {Title = "商店",SortId = 0,TipType = 0,ButtonType = 1,IconPathType = 1,Icon = "ui_t_c2_779",IconTargetPath = "UIRoot/BackgroudLayer/UITestMain/parentLayout/MainBtn/shopBtn",Desc = "玩家等级达到9级",Type = 1,System = {id = 101,subid = 1},Condition = {[1] = {id = 1050101,param1 = 1}},ChallengeShow = 0},--商店
	[302] = {Title = "感灵",SortId = 0,TipType = 0,ButtonType = 1,IconPathType = 0,Icon = "ui_t_c2_679",IconTargetPath = "UIRoot/BackgroudLayer/UITestMain/parentLayout/ResourceBarParent/CommonBtnGroup(Clone)/BottomBtnGroup/BottomBtnGroup/GetNewCard",Desc = "收复罗刹街",Type = 1,System = {id = 204},Condition = {[1] = {id = 2010102,param1 = 1,param2 = 100003}},ChallengeShow = 0},--扭蛋
	[303] = {Title = "每日任务",SortId = 5,TipType = 1,ButtonType = 1,IconPathType = 1,Icon = "ui_t_c2_671",IconTargetPath = "UIRoot/BackgroudLayer/UITestMain/parentLayout/RightActiveObject/MissionBtn",Desc = "玩家等级达到150级",Type = 3,System = {id = 302},Condition = {[1] = {id = 1050101,param1 = 150}},ChallengeShow = 0},--每日任务
	[304] = {Title = "主线任务",SortId = 4,TipType = 1,ButtonType = 1,IconPathType = 1,Icon = "ui_t_c2_531",IconTargetPath = "UIRoot/BackgroudLayer/UITestMain/parentLayout/UIMainTask/parent",Desc = "通过第1章第5关",Type = 1,System = {id = 101,subid = 1},Condition = {[1] = {id = 2010102,param1 = 1,param2 = 10105}},ChallengeShow = 0},--主线任务
	[305] = {Title = "通灵",SortId = 6,TipType = 1,ButtonType = 1,IconPathType = 1,Icon = "ui_t_c2_800",IconTargetPath = "UIRoot/BackgroudLayer/UITestMain/parentLayout/MainBtn/telepathizeBtn",Desc = "关卡通过3-5",Type = 1,System = {id = 101,subid = 1},Condition = {[1] = {id = 2010102,param1 = 1,param2 = 10305}},ChallengeShow = 0},--通灵
	[306] = {Title = "挑战",SortId = 8,TipType = 0,ButtonType = 1,Desc = "关卡到达3-4",Type = 2,System = {id = 401},Condition = {[1] = {id = 2010102,param1 = 1,param2 = 10304}},ChallengeShow = 0},--挑战
	[308] = {Title = "战斗加速",SortId = 0,TipType = 0,ButtonType = 0,Desc = "通过第一章第4关",Type = 3,System = {id = 401},Condition = {[1] = {id = 2010102,param1 = 1,param2 = 10104}},ChallengeShow = 0},--战斗加速
	[309] = {Title = "自动战斗",SortId = 0,TipType = 0,ButtonType = 0,Desc = "通过第一章第10关",Type = 3,System = {id = 401},Condition = {[1] = {id = 2010102,param1 = 1,param2 = 10110}},ChallengeShow = 0},--自动战斗
	[310] = {Title = "绝技动画开关",SortId = 0,TipType = 0,ButtonType = 0,Desc = "通过第四章第10关",Type = 3,System = {id = 401},Condition = {[1] = {id = 2010102,param1 = 1,param2 = 10410}},ChallengeShow = 0},--战斗动画开关
	[311] = {Title = "实时竞技",SortId = 0,TipType = 1,ButtonType = 0,IconPathType = 1,Icon = "ui_t_c2_529",IconTargetPath = "UIRoot/BackgroudLayer/UITestMain/parentLayout/MainBtn/arenaBtn",Desc = "通过困难关卡2-3",Type = 2,System = {id = 201,subid = 4},Condition = {[1] = {id = 2010102,param1 = 1,param2 = 20203}},ChallengeShow = 0},--实时竞技
	[312] = {Title = "嘉年华",SortId = 0,TipType = 1,ButtonType = 1,IconPathType = 1,Icon = "ui_t_c2_516",IconTargetPath = "UIRoot/BackgroudLayer/UITestMain/parentLayout/RightActiveObject/CarnivalBtn",Desc = "玩家等级达到1级",Type = 3,System = {id = 101,subid = 1},Condition = {[1] = {id = 1050101,param1 = 1}},ChallengeShow = 0},--嘉年华
	[313] = {Title = "装备",SortId = 0,TipType = 1,ButtonType = 0,IconPathType = 1,Icon = "ui_t_c2_801",IconTargetPath = "UIRoot/BackgroudLayer/UITestMain/parentLayout/ResourceBarParent/CommonBtnGroup(Clone)/BottomBtnGroup/BottomBtnGroup/shl_card",Desc = "玩家等级达到15级",Type = 1,System = {id = 401},Condition = {[1] = {id = 1050101,param1 = 15}},ChallengeShow = 0},--装备
	[318] = {Title = "熔炼打造",SortId = 0,TipType = 1,ButtonType = 1,IconPathType = 0,Icon = "ui_t_c2_653",IconTargetPath = "UIRoot/BackgroudLayer/UITestMain/parentLayout/ResourceBarParent/CommonBtnGroup(Clone)/BottomBtnGroup/BottomBtnGroup/EquipForgeBtn",Desc = "穿戴1件装备",Type = 1,System = {id = 101,subid = 1},Condition = {[1] = {id = 1060102,param1 = 1,param2 = 1,param3 = 1}},ChallengeShow = 0},--熔炼打造
	[319] = {Title = "传记副本",SortId = 0,TipType = 1,ButtonType = 1,IconPathType = 1,Icon = "ui_t_c2_797",IconTargetPath = "UIRoot/BackgroudLayer/UITestMain/parentLayout/MainBtn/fetterBtn",Desc = "玩家等级达到12级",Type = 1,System = {id = 101,subid = 1},Condition = {[1] = {id = 1050101,param1 = 12}},ChallengeShow = 0},--传记副本
	[401] = {Title = "国战入口",SortId = 0,TipType = 1,ButtonType = 1,IconPathType = 1,Icon = "ui_t_c2_528",IconTargetPath = "UIRoot/BackgroudLayer/UITestMain/parentLayout/rightLayout/countryWarBtn",Desc = "玩家等级达到49级",Type = 1,System = {id = 601,subid = 1},Condition = {[1] = {id = 1050101,param1 = 49}},ChallengeShow = 0},--国战
	[901] = {Title = "问卷调查",SortId = 0,TipType = 1,ButtonType = 1,IconPathType = 1,Icon = "ui_t_c2_672",IconTargetPath = "UIRoot/BackgroudLayer/UITestMain/parentLayout/LeftTopLayout/surveyBtn",Desc = "玩家等级到达25级",Type = 1,System = {id = 209},Condition = {[1] = {id = 1050101,param1 = 25}},ChallengeShow = 0},--问卷调查一
	[10102] = {Title = "困难关卡",SortId = 4,TipType = 1,ButtonType = 0,IconPathType = 1,Icon = "ui_t_c2_798",IconTargetPath = "UIRoot/BackgroudLayer/UITestMain/parentLayout/rightLayout/maoxianBtn",Desc = "玩家等级达到20级",Type = 1,System = {id = 101,subid = 2},Condition = {[1] = {id = 1050101,param1 = 20}},ChallengeShow = 0},--困难关卡
	[10202] = {Title = "芦花古楼-花",SortId = 0,TipType = 0,ButtonType = 0,Desc = "通过风的第7关",Type = 2,System = {id = 102,subid = 2},Condition = {[1] = {id = 2010102,param1 = 1,param2 = 41007}},ChallengeShow = 0},--芦花古楼-花
	[10203] = {Title = "芦花古楼-雪",SortId = 0,TipType = 0,ButtonType = 0,Desc = "通过风的第7关",Type = 2,System = {id = 102,subid = 3},Condition = {[1] = {id = 2010102,param1 = 1,param2 = 41007}},ChallengeShow = 0},--芦花古楼-雪
	[10204] = {Title = "芦花古楼-月",SortId = 0,TipType = 0,ButtonType = 0,Desc = "通过风的第7关",Type = 2,System = {id = 102,subid = 4},Condition = {[1] = {id = 2010102,param1 = 1,param2 = 41007}},ChallengeShow = 0},--芦花古楼-月
	[20102] = {Title = "寄灵人技能",SortId = 0,TipType = 0,ButtonType = 0,Desc = "通关第一章第6关",Type = 2,System = {id = 202,subid = 3},Condition = {[1] = {id = 2010102,param1 = 1,param2 = 10106}},ChallengeShow = 0},--寄灵人技能
	[20103] = {Title = "寄灵人升星",SortId = 0,TipType = 0,ButtonType = 0,Desc = "玩家等级达到1级",Type = 2,System = {id = 202,subid = 3},Condition = {[1] = {id = 1050101,param1 = 1}},ChallengeShow = 0},--寄灵人升星
	[20104] = {Title = "寄灵人天赋",SortId = 0,TipType = 1,ButtonType = 0,IconPathType = 1,Icon = "ui_t_c2_525",IconTargetPath = "UIRoot/BackgroudLayer/UITestMain/parentLayout/ResourceBarParent/CommonBtnGroup(Clone)/BottomBtnGroup/BottomBtnGroup/jlr_card",Desc = "玩家等级达到46级",Type = 2,System = {id = 201,subid = 4},Condition = {[1] = {id = 1050101,param1 = 46}},ChallengeShow = 0},--寄灵人天赋
	[20105] = {Title = "寄灵人-国战属性",SortId = 0,TipType = 0,ButtonType = 0,Desc = "玩家等级达到49级",Type = 1,System = {id = 201},Condition = {[1] = {id = 1050101,param1 = 49}},ChallengeShow = 0},--寄灵人-国战属性
	[20201] = {Title = "守护灵升级",SortId = 2,TipType = 0,ButtonType = 0,Desc = "通过第一章第3关",Type = 1,System = {id = 204},Condition = {[1] = {id = 2010102,param1 = 1,param2 = 10103}},ChallengeShow = 0},--守护灵升级按钮
	[20202] = {Title = "守护灵技能",SortId = 0,TipType = 0,ButtonType = 0,Desc = "通过第1章第6关",Type = 2,System = {id = 202,subid = 3},Condition = {[1] = {id = 2010102,param1 = 1,param2 = 10106}},ChallengeShow = 0},--守护灵技能升级按钮
	[20203] = {Title = "守护灵升星",SortId = 0,TipType = 0,ButtonType = 0,Desc = "玩家等级达到1级",Type = 2,System = {id = 202,subid = 2},Condition = {[1] = {id = 1050101,param1 = 1}},ChallengeShow = 0},--守护灵升星
	[20204] = {Title = "守护灵专属武器",SortId = 10,TipType = 0,ButtonType = 0,Desc = "通过第四章第6关",Type = 2,System = {id = 401},Condition = {[1] = {id = 2010102,param1 = 1,param2 = 10406}},ChallengeShow = 0},--守护灵专属武器
	[20205] = {Title = "守护灵-国战属性",SortId = 0,TipType = 0,ButtonType = 0,Type = 1,System = {id = 202},Condition = {[1] = {id = 1050101,param1 = 1}},ChallengeShow = 0},--守护灵-国战属性
	[20206] = {Title = "守护灵-魂火&突破",SortId = 0,TipType = 0,ButtonType = 0,Desc = "玩家等级达到5级",Type = 1,System = {id = 101,subid = 1},Condition = {[1] = {id = 1050101,param1 = 5}},ChallengeShow = 0},--守护灵-魂火&突破
	[32003] = {Title = "寄灵人抽卡",SortId = 0,TipType = 1,ButtonType = 0,Icon = "ui_t_c2_550",IconTargetPath = "UIRoot/BackgroudLayer/UITestMain/parentLayout/ResourceBarParent/CommonBtnGroup(Clone)/BottomBtnGroup/BottomBtnGroup/GetNewCard",Desc = "地狱道突破至黑绳",Type = 1,System = {id = 320,subid = 3},Condition = {[1] = {id = 5010101,param1 = 2}},ChallengeShow = 0}--寄灵人抽卡
}
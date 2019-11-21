--[[
output from excel operAct.运营活动.xlsx
--note:
卡牌通灵，培养三张卡，达到指定条件，给予一张卡。
CardCondition是一个2维数组，第1维表示哪张卡，第二维表示哪个条件。子项有con和param
colums:
{ID,唯一键} ,{Loc,排序} ,{Name,通灵组名称} ,{CardId,通灵组奖励卡牌} ,{NeedCardIds,卡牌组} ,{CardCondition[1][1].Con,卡牌1条件_1
1升级，2升星} ,{CardCondition[1][1].Param,卡牌1参数_1} ,{CardCondition[1][2].Con,卡牌1条件_2} ,{CardCondition[1][2].Param,卡牌1参数_2} ,{CardCondition[2][1].Con,卡牌2条件_1} ,{CardCondition[2][1].Param,卡牌2参数_1} ,{CardCondition[2][2].Con,卡牌2条件_2} ,{CardCondition[2][2].Param,卡牌2参数_2} ,{CardCondition[3][1].Con,卡牌2条件_1} ,{CardCondition[3][1].Param,卡牌2参数_1} ,{CardCondition[3][2].Con,卡牌2条件_2} ,{CardCondition[3][2].Param,卡牌2参数_2}
primary key:
#0 [卡牌通灵]: Loc
]]
local _T = LangUtil.Language
return{
	[1] = {ID = 101,Loc = 1,Name = "李轩辕",CardId = 1102005,NeedCardIds = {1102005,1102021,1102002},CardCondition = {[1] = {[1] = {Con = 1,Param = 80},[2] = {Con = 2,Param = 2}},[2] = {[1] = {Con = 1,Param = 80},[2] = {Con = 2,Param = 2}},[3] = {[1] = {Con = 1,Param = 80}}}},
	[2] = {ID = 102,Loc = 2,Name = "典韦",CardId = 1102003,NeedCardIds = {1102021,1102017,1102005},CardCondition = {[1] = {[1] = {Con = 1,Param = 60},[2] = {Con = 2,Param = 3}},[2] = {[1] = {Con = 1,Param = 80}},[3] = {[1] = {Con = 1,Param = 100}}}},
	[3] = {ID = 103,Loc = 3,Name = "西方龙",CardId = 1102016,NeedCardIds = {1102002,1102020,1102014},CardCondition = {[1] = {[1] = {Con = 1,Param = 60},[2] = {Con = 2,Param = 3}},[2] = {[1] = {Con = 1,Param = 80}},[3] = {[1] = {Con = 1,Param = 100}}}},
	[4] = {ID = 104,Loc = 4,Name = "项羽",CardId = 1102006,NeedCardIds = {1102016,1102010,1102011},CardCondition = {[1] = {[1] = {Con = 1,Param = 80},[2] = {Con = 2,Param = 3}},[2] = {[1] = {Con = 1,Param = 100}},[3] = {[1] = {Con = 1,Param = 120}}}}
}
--[[
output from excel card.卡牌表.xlsx
--note:
卡牌阵容推荐表
colums:
{Id,ID} ,{Title,标题} ,{Desc,描述} ,{Card[1],卡牌1} ,{Card[2],卡牌2} ,{Card[3],卡牌3} ,{Card[4],卡牌4} ,{Card[5],卡牌5} ,{Card[6],卡牌6}
primary key:
#0 [卡牌攻略]: Id
]]
local _T = LangUtil.Language
return{
	[1] = {Title = _T("镇魂之街"),Desc = _T("游戏中的初始卡组，你有我有大家有"),Card = {[1] = 1101001,[2] = 1102015,[3] = 1101002,[4] = 1102004,[5] = 1101003,[6] = 1102005}},
	[2] = {Title = _T("黎明之路"),Desc = _T("玩过一段时间，大家都可拥有的卡组"),Card = {[1] = 1101001,[2] = 1102002,[3] = 1101014,[4] = 1102020,[5] = 1101003,[6] = 1102005}},
	[3] = {Title = _T("天下无狗"),Desc = _T("四面八方皆是棒影，劲力之强，令人无法抵挡"),Card = {[1] = 1101007,[2] = 1102003,[3] = 1101009,[4] = 1102014,[5] = 1101011,[6] = 1102017}},
	[4] = {Title = _T("风之旅"),Desc = _T("风一样的组合，风一样的感受，令你爽到无法呼吸"),Card = {[1] = 1101015,[2] = 1102021,[3] = 1101007,[4] = 1102009,[5] = 1101011,[6] = 1102017}},
	[5] = {Title = _T("技巧阵容"),Desc = _T("一个强调技巧的阵容。"),Card = {[1] = 1101006,[2] = 1102007,[3] = 1101014,[4] = 1102020,[5] = 1101003,[6] = 1102005}},
	[6] = {Title = _T("浪子三唱"),Desc = _T("浪子为君歌一曲，劝君切莫把泪流；人间若有不平事，纵酒挥刀斩人头。"),Card = {[1] = 1101007,[2] = 1102012,[3] = 1101005,[4] = 1102011,[5] = 1101010,[6] = 1102016}},
	[7] = {Title = _T("夯昊"),Desc = _T("当前版本的最强阵容，秒天秒地秒空气，你值得拥有。"),Card = {[1] = 1101005,[2] = 1102001,[3] = 1101004,[4] = 1102006,[5] = 1101007,[6] = 1102010}}
}
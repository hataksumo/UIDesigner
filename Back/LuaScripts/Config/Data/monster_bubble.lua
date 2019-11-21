--[[
output from excel bubble.怪物气泡.xlsx
--note:
当最后的结果有多种类型的技能时，优先选择优先级值小的类型
colums:
{ID,唯一键} ,{Target1,1-自己；2-友方（不包含自己）；3-我方（包含自己）；4-敌方；5-场上所有} ,{Target2,1-常规；2-随机；3-所有；4-特殊标记} ,{Target3[1],特殊条件：类型#条件参数（0为条件不需要参数时使用的默认参数）【1-特殊标记（1#标记ID）；2-生命最低（2#0）。。。】} ,{Target3[2],特殊条件参数} ,{ConId[1],触发条件1} ,{ConParam[1][1],条件1参数1} ,{ConParam[1][2],条件1参数2} ,{Contents,气泡内容}
primary key:
#0 [气泡内容]: ID
]]
local _T = LangUtil.Language
return{
	[1] = {ID = 1,Target1 = 1,Target2 = 1,ConId = {[1] = 102},ConParam = {[1] = {[1] = 0.9}},Contents = "小子你刚砍我了？用点力啊，还没我回血快"},
	[2] = {ID = 2,Target1 = 4,Target2 = 3,ConId = {[1] = 105},ConParam = {[1] = {[1] = 4017}},Contents = "每回合掉血疼不疼？不考虑自己驱散一下？"},
	[3] = {ID = 3,Target1 = 4,Target2 = 3,ConId = {[1] = 105},ConParam = {[1] = {[1] = 4033}},Contents = "对面那小子防御变低了，快打他！"},
	[4] = {ID = 4,Target1 = 1,Target2 = 1,ConId = {[1] = 105},ConParam = {[1] = {[1] = 4005}},Contents = "你能打破我的护盾吗？"},
	[5] = {ID = 5,Target1 = 1,Target2 = 1,ConId = {[1] = 105},ConParam = {[1] = {[1] = 4047}},Contents = "想在我面前打死人，你还稍微嫩了点！"},
	[6] = {ID = 6,Target1 = 1,Target2 = 1,ConId = {[1] = 100},ConParam = {[1] = {[1] = 1}},Contents = "咬死一个人我还能再行动一次呦！"},
	[7] = {ID = 7,Target1 = 1,Target2 = 1,ConId = {[1] = 105},ConParam = {[1] = {[1] = 4041}},Contents = "来打我啊！"},
	[8] = {ID = 8,Target1 = 1,Target2 = 1,ConId = {[1] = 100},ConParam = {[1] = {[1] = 1}},Contents = "一动不动是王八，你不动试试看？"},
	[9] = {ID = 9,Target1 = 1,Target2 = 1,ConId = {[1] = 100},ConParam = {[1] = {[1] = 1}},Contents = "落后就要挨打，总在最后就动不了了呦！"},
	[10] = {ID = 10,Target1 = 1,Target2 = 1,ConId = {[1] = 100},ConParam = {[1] = {[1] = 1}},Contents = "兄弟们，不要怂，这货没仔细看教学，召唤不出来守护灵"},
	[11] = {ID = 11,Target1 = 1,Target2 = 1,ConId = {[1] = 100},ConParam = {[1] = {[1] = 1}},Contents = "护盾准备就绪，注意保护好我！"},
	[12] = {ID = 12,Target1 = 1,Target2 = 1,ConId = {[1] = 100},ConParam = {[1] = {[1] = 1}},Contents = "快死的人就没有被我庇护的资格！"},
	[13] = {ID = 13,Target1 = 1,Target2 = 1,ConId = {[1] = 103},ConParam = {[1] = {[1] = 0.51}},Contents = "兄弟们不要怕，我奶可大，弄死他们！"},
	[14] = {ID = 14,Target1 = 1,Target2 = 1,ConId = {[1] = 102},ConParam = {[1] = {[1] = 0.5}},Contents = "兄弟们我顶不住了，你们加油上！"},
	[15] = {ID = 15,Target1 = 1,Target2 = 1,ConId = {[1] = 103},ConParam = {[1] = {[1] = 0.51}},Contents = "有我在，你们别想动我兄弟！"},
	[16] = {ID = 16,Target1 = 1,Target2 = 1,ConId = {[1] = 100},ConParam = {[1] = {[1] = 1}},Contents = "我打你可疼，你得先打死我"},
	[17] = {ID = 17,Target1 = 1,Target2 = 1,ConId = {[1] = 100},ConParam = {[1] = {[1] = 1}},Contents = "左边小弟给我画条龙，右边小弟给我画个彩虹！"},
	[18] = {ID = 18,Target1 = 1,Target2 = 1,ConId = {[1] = 102},ConParam = {[1] = {[1] = 0.5}},Contents = "兄弟们我不行了，我死以后替我报仇！"}
}
--[[
output from excel national_map地图.xlsx
--note:

colums:
{Id,域Id
1.出生域1
2.出生域2
3.出生域3
4.出生域4
5.出生域5
6.出生域6
7.中心域7} ,{Name,名称} ,{Des,描述} ,{Born,是否可选为出生域
1.可选
0.永远不可选
2.暂时不可选
前端只用了中心域的行}
primary key:
#0 [域属表]: Id
]]
local _T = LangUtil.Language
return{
	[1] = {Id = 1,Name = "北桥市",Des = "充满现代化气息的镇魂街，工业发达，交通便利。",Born = 1},
	[2] = {Id = 2,Name = "上江城",Des = "充满现代化气息的镇魂街，借助水路，成为了镇魂街一处重要的贸易枢纽，是为数不多的繁华地区。",Born = 2},
	[3] = {Id = 3,Name = "迷魂禁区",Des = "镇魂街最神秘的区域之一，被无形的力量守护着，传说此处封印着能颠覆灵域的力量。",Born = 2},
	[4] = {Id = 4,Name = "离火台",Des = "太初天地离火柱位于此处，封印着许多亡灵，偶尔会有寄灵人来此处寻找更为强大的亡灵作为守护灵。若是能占领此处，则可持续大量培养寄灵人为自己所用。",Born = 2},
	[5] = {Id = 5,Name = "埋骨之地",Des = "一处古老的战场，遗留了无数的强者的宝物，同时他们的怨念也汇聚于此，吞噬着妄图染指这些宝物的冒险者们。",Born = 2},
	[6] = {Id = 6,Name = "恶灵古城",Des = "被下过诅咒的古城，驻扎于此的军队死后化为恶灵不得超生。许多势力都想占领此处，将这支军队收入麾下。",Born = 2},
	[7] = {Id = 7,Name = "罗刹街",Des = "因灵槐神树扎根于此，是镇魂街天地灵气最浓郁的地区，吸引了大批的恶灵，同时各方势力也对这里虎视眈眈。",Born = 0}
}
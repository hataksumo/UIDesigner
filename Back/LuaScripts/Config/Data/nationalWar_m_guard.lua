--[[
output from excel national_monster国战怪物表.xlsx
--note:

colums:
{Type,类型
1.资源点守军
2.讨伐区野怪守军
3.剿匪怪点守军
4.域都卫都关隘杀敌层守军
5.接战区地块守军
6.域都卫都关隘破城层守军} ,{Lv,等级} ,{Difficult,难度标识
目前显示为：
统御等级} ,{GuardNum,守军数量} ,{GroupId,怪物组id}
primary key:
#0 [类型守军表]: Type,Lv
]]
local _T = LangUtil.Language
return{
	[1] = {
		[1] = {Difficult = 2,GuardNum = 1,GroupId = {30101,30102,30103}},--资源点-1级
		[2] = {Difficult = 7,GuardNum = 1,GroupId = {30201,30202,30203}},--资源点-2级
		[3] = {Difficult = 14,GuardNum = 1,GroupId = {30301,30302,30303}},--资源点-3级
		[4] = {Difficult = 19,GuardNum = 1,GroupId = {30401,30402,30403}},--资源点-4级
		[5] = {Difficult = 24,GuardNum = 1,GroupId = {30501,30502,30503}},--资源点-5级
		[6] = {Difficult = 29,GuardNum = 1,GroupId = {30601,30602,30603}},--资源点-6级
		[7] = {Difficult = 34,GuardNum = 1,GroupId = {30701,30702,30703}},--资源点-7级
		[8] = {Difficult = 43,GuardNum = 1,GroupId = {30801,30802,30803}},--资源点-8级
		[9] = {Difficult = 46,GuardNum = 1,GroupId = {30901,30902,30903}}--资源点-9级
	},
	[2] = {
		[1] = {Difficult = 5,GuardNum = 1,GroupId = {20101,20102,20103}},--讨伐区怪-1级
		[2] = {Difficult = 8,GuardNum = 1,GroupId = {20201,20202,20203}},--讨伐区怪-2级
		[3] = {Difficult = 13,GuardNum = 1,GroupId = {20301,20302,20303}},--讨伐区怪-3级
		[4] = {Difficult = 18,GuardNum = 1,GroupId = {20401,20402,20403}},--讨伐区怪-4级
		[5] = {Difficult = 22,GuardNum = 1,GroupId = {20501,20502,20503}},--讨伐区怪-5级
		[6] = {Difficult = 26,GuardNum = 1,GroupId = {20601,20602,20603}},--讨伐区怪-6级
		[7] = {Difficult = 31,GuardNum = 1,GroupId = {20701,20702,20703}},--讨伐区怪-7级
		[8] = {Difficult = 35,GuardNum = 1,GroupId = {20801,20802,20803}},--讨伐区怪-8级
		[9] = {Difficult = 38,GuardNum = 1,GroupId = {20901,20902,20903}},--讨伐区怪-9级
		[10] = {Difficult = 39,GuardNum = 1,GroupId = {21001,21002,21003}},--讨伐区怪-10级
		[11] = {Difficult = 42,GuardNum = 1,GroupId = {21101,21102,21103}},--讨伐区怪-11级
		[12] = {Difficult = 44,GuardNum = 1,GroupId = {21201,21202,21203}},--讨伐区怪-12级
		[13] = {Difficult = 46,GuardNum = 1,GroupId = {21301,21302,21303}},--讨伐区怪-13级
		[14] = {Difficult = 48,GuardNum = 1,GroupId = {21401,21402,21403}},--讨伐区怪-14级
		[15] = {Difficult = 50,GuardNum = 1,GroupId = {21501,21502,21503}}--讨伐区怪-15级
	},
	[3] = {
		[1] = {Difficult = 2,GuardNum = 1,GroupId = {10101,10102,10103}},--城镇匪怪-1级
		[2] = {Difficult = 5,GuardNum = 1,GroupId = {10201,10202,10203}},--城镇匪怪-2级
		[3] = {Difficult = 9,GuardNum = 1,GroupId = {10301,10302,10303}},--城镇匪怪-3级
		[4] = {Difficult = 14,GuardNum = 1,GroupId = {10401,10402,10403}},--城镇匪怪-4级
		[5] = {Difficult = 19,GuardNum = 1,GroupId = {10501,10502,10503}},--城镇匪怪-5级
		[6] = {Difficult = 24,GuardNum = 1,GroupId = {10601,10602,10603}},--城镇匪怪-6级
		[7] = {Difficult = 29,GuardNum = 1,GroupId = {10701,10702,10703}},--城镇匪怪-7级
		[8] = {Difficult = 32,GuardNum = 1,GroupId = {10801,10802,10803}},--城镇匪怪-8级
		[9] = {Difficult = 38,GuardNum = 1,GroupId = {10901,10902,10903}},--城镇匪怪-9级
		[10] = {Difficult = 42,GuardNum = 1,GroupId = {11001,11002,11003}},--城镇匪怪-10级
		[11] = {Difficult = 45,GuardNum = 1,GroupId = {11101,11102,11103}},--城镇匪怪-11级
		[12] = {Difficult = 46,GuardNum = 1,GroupId = {11201,11202,11203}},--城镇匪怪-12级
		[13] = {Difficult = 47,GuardNum = 1,GroupId = {11301,11302,11303}},--城镇匪怪-13级
		[14] = {Difficult = 48,GuardNum = 1,GroupId = {11401,11402,11403}},--城镇匪怪-14级
		[15] = {Difficult = 50,GuardNum = 1,GroupId = {11501,11502,11503}}--城镇匪怪-15级
	},
	[4] = {
		[7] = {Difficult = 30,GuardNum = 30,GroupId = {50701,50702,50703,50704,50705}},--7级城-杀敌层守军
		[9] = {Difficult = 40,GuardNum = 40,GroupId = {50901,50902,50903,50904,50905}},--9级城-杀敌层守军
		[12] = {Difficult = 45,GuardNum = 60,GroupId = {51201,51202,51203,51204,51205}},--12级城-杀敌层守军
		[15] = {Difficult = 50,GuardNum = 80,GroupId = {51501,51502,51503,51504,51505}}--15级城-杀敌层守军
	},
	[5] = {
		[1] = {Difficult = 2,GuardNum = 1,GroupId = {40101,40102,40103}},--接战区-1级
		[2] = {Difficult = 7,GuardNum = 1,GroupId = {40201,40202,40203}},--接战区-2级
		[3] = {Difficult = 14,GuardNum = 1,GroupId = {40301,40302,40303}},--接战区-3级
		[4] = {Difficult = 19,GuardNum = 1,GroupId = {40401,40402,40403}},--接战区-4级
		[5] = {Difficult = 24,GuardNum = 1,GroupId = {40501,40502,40503}},--接战区-5级
		[6] = {Difficult = 29,GuardNum = 1,GroupId = {40601,40602,40603}},--接战区-6级
		[7] = {Difficult = 34,GuardNum = 1,GroupId = {40701,40702,40703}},--接战区-7级
		[8] = {Difficult = 43,GuardNum = 1,GroupId = {40801,40802,40803}},--接战区-8级
		[9] = {Difficult = 46,GuardNum = 1,GroupId = {40901,40902,40903}}--接战区-9级
	},
	[6] = {
		[7] = {Difficult = 10,GuardNum = 1,GroupId = {60701}},--7级城-破城层守军
		[9] = {Difficult = 20,GuardNum = 1,GroupId = {60901}},--9级城-破城层守军
		[12] = {Difficult = 25,GuardNum = 1,GroupId = {61201}},--12级城-破城层守军
		[15] = {Difficult = 28,GuardNum = 1,GroupId = {61501}}--15级城-破城层守军
	}
}
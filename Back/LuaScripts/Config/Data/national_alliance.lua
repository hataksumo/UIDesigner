--[[
output from excel national_alliance国战联盟.xlsx
--note:

colums:
{HelpCol,辅助列} ,{Key,键} ,{valueN,数值型值} ,{valueS,字符串型值} ,{valueB,布尔值} ,{valueNA,数值数组型值} ,{valueSA,字符串数组型值} ,{Order,成员等阶} ,{OrderName,等阶名称} ,{OrderNum,等阶成员数量
>=1的值：对应的数量
0：不限制数量} ,{Default,默认，导表用，无意义} ,{Demise,禅让} ,{ChangeNotice,修改公告} ,{SetLimit,设置申请条件} ,{HandleApply,处理申请} ,{InviteMember,邀请} ,{AllMembersMail,全体邮件} ,{AddPost,任命} ,{RemovePost,罢免} ,{RemoveMember,移除成员} ,{GiveUpPost,辞职} ,{Quit,退出联盟} ,{Level,联盟等级} ,{Exp,所需经验} ,{Member,成员数量} ,{SourceAdd,资源加成
包括木、铁、石、粮} ,{AlliancePower,增加联盟势力值}
primary key:
#0 [联盟config]: HelpCol,Key
#1 [联盟权限]: HelpCol,Loc
#2 [联盟等级]: HelpCol,Loc
]]
local _T = LangUtil.Language
if ddt["national_alliance"] ~= nil then
	return ddt["national_alliance"]
end
local data = {
	VarCfgs = {
		CreatLimit = 1,--创建联盟声望等级限制
		JoinLimit = 1,--加入联盟声望等级限制
		QuitExpire = 1800,--退出联盟冷却时间
		AllianceNameLength = 14,--联盟名称字符数
		CreateCost = 20,--创建联盟花费钻石
		DemiseCd = 86400,--禅让成功后CD
		PassiveDemiseTime = 259200,--不上线自动禅让
		PowerLimit = 500,--捐献势力要求
		NoticeLimit = 50--联盟公告字数限制
	},
	Right = {
		[1] = {Order = 1,OrderName = "盟主",OrderNum = 1,Default = 1,Demise = 1,ChangeNotice = 1,SetLimit = 1,HandleApply = 1,InviteMember = 1,AllMembersMail = 1,AddPost = 1,RemovePost = 1,RemoveMember = 1},
		[2] = {Order = 2,OrderName = "副盟主",OrderNum = 2,Default = 1,ChangeNotice = 1,SetLimit = 1,HandleApply = 1,InviteMember = 1,AllMembersMail = 1,AddPost = 1,RemovePost = 1,RemoveMember = 1,GiveUpPost = 1,Quit = 1},
		[3] = {Order = 3,OrderName = "指挥官",OrderNum = 5,Default = 1,SetLimit = 1,HandleApply = 1,InviteMember = 1,AllMembersMail = 1,AddPost = 1,RemovePost = 1,RemoveMember = 1,GiveUpPost = 1,Quit = 1},
		[4] = {Order = 4,OrderName = "精英",OrderNum = 0,Default = 1,Quit = 1},
		[5] = {Order = 5,OrderName = "普通",OrderNum = 0,Default = 1,Quit = 1}
	},
	Data = {
		[1] = {Level = 1,Exp = 0,Member = 22,SourceAdd = 0.01,AlliancePower = 0},
		[2] = {Level = 2,Exp = 100,Member = 24,SourceAdd = 0.01,AlliancePower = 50},
		[3] = {Level = 3,Exp = 400,Member = 26,SourceAdd = 0.01,AlliancePower = 150},
		[4] = {Level = 4,Exp = 1000,Member = 28,SourceAdd = 0.02,AlliancePower = 300},
		[5] = {Level = 5,Exp = 2000,Member = 30,SourceAdd = 0.02,AlliancePower = 500},
		[6] = {Level = 6,Exp = 3500,Member = 32,SourceAdd = 0.02,AlliancePower = 750},
		[7] = {Level = 7,Exp = 5600,Member = 34,SourceAdd = 0.03,AlliancePower = 1050},
		[8] = {Level = 8,Exp = 8400,Member = 36,SourceAdd = 0.03,AlliancePower = 1400},
		[9] = {Level = 9,Exp = 12000,Member = 38,SourceAdd = 0.03,AlliancePower = 1800},
		[10] = {Level = 10,Exp = 16500,Member = 40,SourceAdd = 0.04,AlliancePower = 2250},
		[11] = {Level = 11,Exp = 22000,Member = 42,SourceAdd = 0.04,AlliancePower = 2750},
		[12] = {Level = 12,Exp = 28600,Member = 44,SourceAdd = 0.04,AlliancePower = 3300},
		[13] = {Level = 13,Exp = 36400,Member = 46,SourceAdd = 0.05,AlliancePower = 3900},
		[14] = {Level = 14,Exp = 45500,Member = 48,SourceAdd = 0.05,AlliancePower = 4550},
		[15] = {Level = 15,Exp = 56000,Member = 50,SourceAdd = 0.05,AlliancePower = 5250},
		[16] = {Level = 16,Exp = 68000,Member = 52,SourceAdd = 0.06,AlliancePower = 6000},
		[17] = {Level = 17,Exp = 81600,Member = 54,SourceAdd = 0.06,AlliancePower = 6800},
		[18] = {Level = 18,Exp = 96900,Member = 56,SourceAdd = 0.06,AlliancePower = 7650},
		[19] = {Level = 19,Exp = 114000,Member = 58,SourceAdd = 0.07,AlliancePower = 8550},
		[20] = {Level = 20,Exp = 133000,Member = 60,SourceAdd = 0.07,AlliancePower = 9500},
		[21] = {Level = 21,Exp = 154000,Member = 62,SourceAdd = 0.07,AlliancePower = 10500},
		[22] = {Level = 22,Exp = 177100,Member = 64,SourceAdd = 0.08,AlliancePower = 11550},
		[23] = {Level = 23,Exp = 202400,Member = 66,SourceAdd = 0.08,AlliancePower = 12650},
		[24] = {Level = 24,Exp = 230000,Member = 68,SourceAdd = 0.08,AlliancePower = 13800},
		[25] = {Level = 25,Exp = 260000,Member = 70,SourceAdd = 0.09,AlliancePower = 15000},
		[26] = {Level = 26,Exp = 292500,Member = 72,SourceAdd = 0.09,AlliancePower = 16250},
		[27] = {Level = 27,Exp = 327600,Member = 74,SourceAdd = 0.09,AlliancePower = 17550},
		[28] = {Level = 28,Exp = 365400,Member = 76,SourceAdd = 0.1,AlliancePower = 18900},
		[29] = {Level = 29,Exp = 406000,Member = 78,SourceAdd = 0.1,AlliancePower = 20300},
		[30] = {Level = 30,Exp = 449500,Member = 80,SourceAdd = 0.1,AlliancePower = 21750},
		[31] = {Level = 31,Exp = 496000,Member = 82,SourceAdd = 0.11,AlliancePower = 23250},
		[32] = {Level = 32,Exp = 545600,Member = 84,SourceAdd = 0.11,AlliancePower = 24800},
		[33] = {Level = 33,Exp = 598400,Member = 86,SourceAdd = 0.11,AlliancePower = 26400},
		[34] = {Level = 34,Exp = 654500,Member = 88,SourceAdd = 0.12,AlliancePower = 28050},
		[35] = {Level = 35,Exp = 714000,Member = 90,SourceAdd = 0.12,AlliancePower = 29750},
		[36] = {Level = 36,Exp = 777000,Member = 92,SourceAdd = 0.12,AlliancePower = 31500},
		[37] = {Level = 37,Exp = 843600,Member = 94,SourceAdd = 0.13,AlliancePower = 33300},
		[38] = {Level = 38,Exp = 913900,Member = 96,SourceAdd = 0.13,AlliancePower = 35150},
		[39] = {Level = 39,Exp = 988000,Member = 98,SourceAdd = 0.13,AlliancePower = 37050},
		[40] = {Level = 40,Exp = 1066000,Member = 100,SourceAdd = 0.14,AlliancePower = 39000},
		[41] = {Level = 41,Exp = 1148000,Member = 102,SourceAdd = 0.14,AlliancePower = 41000},
		[42] = {Level = 42,Exp = 1234100,Member = 104,SourceAdd = 0.14,AlliancePower = 43050},
		[43] = {Level = 43,Exp = 1324400,Member = 106,SourceAdd = 0.15,AlliancePower = 45150},
		[44] = {Level = 44,Exp = 1419000,Member = 108,SourceAdd = 0.15,AlliancePower = 47300},
		[45] = {Level = 45,Exp = 1518000,Member = 110,SourceAdd = 0.15,AlliancePower = 49500},
		[46] = {Level = 46,Exp = 1621500,Member = 112,SourceAdd = 0.16,AlliancePower = 51750},
		[47] = {Level = 47,Exp = 1729600,Member = 114,SourceAdd = 0.16,AlliancePower = 54050},
		[48] = {Level = 48,Exp = 1842400,Member = 116,SourceAdd = 0.16,AlliancePower = 56400},
		[49] = {Level = 49,Exp = 1960000,Member = 118,SourceAdd = 0.17,AlliancePower = 58800},
		[50] = {Level = 50,Exp = 2082500,Member = 120,SourceAdd = 0.17,AlliancePower = 61250}
	}
}
ddt["national_alliance"] = data
SetLooseReadonly(data)
return data
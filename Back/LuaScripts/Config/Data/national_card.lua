--[[
output from excel national_card国战卡牌属性.xlsx
--note:

colums:
{CardId,卡牌ID} ,{Siege,攻城值} ,{Tanlent_Ids,角色拥有的天赋} ,{Card_Cost,角色cost} ,{Id,id} ,{Help_col,辅助列} ,{DominanceLv,等级} ,{Force_Atk,+攻击/1军力} ,{Force_Hp,+生命/1军力}
primary key:
#0 [卡牌国战属性]: CardId
#1 [军力值效果表]: CardId,Help_col,DominanceLv
]]
local _T = LangUtil.Language
return{
	[1101001] = {
		Siege = 55,
		Tanlent_Ids = {31,2,3},
		Card_Cost = 7,
		DominanceLv = {
			[1] = {Id = 1,Force_Atk = 2.1,Force_Hp = 7.2},--常服曹焱兵
			[2] = {Id = 2,Force_Atk = 2.2,Force_Hp = 7.3},--常服曹焱兵
			[3] = {Id = 3,Force_Atk = 2.3,Force_Hp = 7.4},--常服曹焱兵
			[4] = {Id = 4,Force_Atk = 2.4,Force_Hp = 7.5},--常服曹焱兵
			[5] = {Id = 5,Force_Atk = 2.5,Force_Hp = 7.6},--常服曹焱兵
			[6] = {Id = 6,Force_Atk = 2.6,Force_Hp = 7.7},--常服曹焱兵
			[7] = {Id = 7,Force_Atk = 2.7,Force_Hp = 7.8},--常服曹焱兵
			[8] = {Id = 8,Force_Atk = 2.8,Force_Hp = 7.9},--常服曹焱兵
			[9] = {Id = 9,Force_Atk = 2.9,Force_Hp = 8},--常服曹焱兵
			[10] = {Id = 10,Force_Atk = 3,Force_Hp = 8.3},--常服曹焱兵
			[11] = {Id = 11,Force_Atk = 3.1,Force_Hp = 8.5},--常服曹焱兵
			[12] = {Id = 12,Force_Atk = 3.2,Force_Hp = 8.6},--常服曹焱兵
			[13] = {Id = 13,Force_Atk = 3.3,Force_Hp = 9.7},--常服曹焱兵
			[14] = {Id = 14,Force_Atk = 3.4,Force_Hp = 9.9},--常服曹焱兵
			[15] = {Id = 15,Force_Atk = 3.6,Force_Hp = 11},--常服曹焱兵
			[16] = {Id = 16,Force_Atk = 3.7,Force_Hp = 11.2},--常服曹焱兵
			[17] = {Id = 17,Force_Atk = 3.8,Force_Hp = 11.4},--常服曹焱兵
			[18] = {Id = 18,Force_Atk = 4.1,Force_Hp = 12},--常服曹焱兵
			[19] = {Id = 19,Force_Atk = 4.2,Force_Hp = 12.4},--常服曹焱兵
			[20] = {Id = 20,Force_Atk = 4.3,Force_Hp = 12.6},--常服曹焱兵
			[21] = {Id = 21,Force_Atk = 4.5,Force_Hp = 12.8},--常服曹焱兵
			[22] = {Id = 22,Force_Atk = 4.6,Force_Hp = 13.2},--常服曹焱兵
			[23] = {Id = 23,Force_Atk = 4.9,Force_Hp = 14.9},--常服曹焱兵
			[24] = {Id = 24,Force_Atk = 5.1,Force_Hp = 15.5},--常服曹焱兵
			[25] = {Id = 25,Force_Atk = 5.7,Force_Hp = 17.1},--常服曹焱兵
			[26] = {Id = 26,Force_Atk = 6,Force_Hp = 18.2},--常服曹焱兵
			[27] = {Id = 27,Force_Atk = 6.4,Force_Hp = 19.2},--常服曹焱兵
			[28] = {Id = 28,Force_Atk = 6.8,Force_Hp = 20},--常服曹焱兵
			[29] = {Id = 29,Force_Atk = 7.2,Force_Hp = 21.5},--常服曹焱兵
			[30] = {Id = 30,Force_Atk = 7.5,Force_Hp = 22.7},--常服曹焱兵
			[31] = {Id = 31,Force_Atk = 7.7,Force_Hp = 23.1},--常服曹焱兵
			[32] = {Id = 32,Force_Atk = 8.2,Force_Hp = 24.6},--常服曹焱兵
			[33] = {Id = 33,Force_Atk = 9.2,Force_Hp = 27.6},--常服曹焱兵
			[34] = {Id = 34,Force_Atk = 9.8,Force_Hp = 29.6},--常服曹焱兵
			[35] = {Id = 35,Force_Atk = 9.9,Force_Hp = 29.8},--常服曹焱兵
			[36] = {Id = 36,Force_Atk = 10.7,Force_Hp = 32.1},--常服曹焱兵
			[37] = {Id = 37,Force_Atk = 11.4,Force_Hp = 34.4},--常服曹焱兵
			[38] = {Id = 38,Force_Atk = 12.9,Force_Hp = 38.7},--常服曹焱兵
			[39] = {Id = 39,Force_Atk = 13.2,Force_Hp = 39.6},--常服曹焱兵
			[40] = {Id = 40,Force_Atk = 13.9,Force_Hp = 41.6},--常服曹焱兵
			[41] = {Id = 41,Force_Atk = 14.3,Force_Hp = 42.9},--常服曹焱兵
			[42] = {Id = 42,Force_Atk = 15.4,Force_Hp = 46.1},--常服曹焱兵
			[43] = {Id = 43,Force_Atk = 17.4,Force_Hp = 52.2},--常服曹焱兵
			[44] = {Id = 44,Force_Atk = 18.8,Force_Hp = 56.3},--常服曹焱兵
			[45] = {Id = 45,Force_Atk = 20.5,Force_Hp = 61.7},--常服曹焱兵
			[46] = {Id = 46,Force_Atk = 22.3,Force_Hp = 66.9},--常服曹焱兵
			[47] = {Id = 47,Force_Atk = 24,Force_Hp = 72},--常服曹焱兵
			[48] = {Id = 48,Force_Atk = 27.2,Force_Hp = 81.6},--常服曹焱兵
			[49] = {Id = 49,Force_Atk = 29.4,Force_Hp = 88.2},--常服曹焱兵
			[50] = {Id = 50,Force_Atk = 30.8,Force_Hp = 92.3}--常服曹焱兵
		}
	},--常服曹焱兵
	[1101002] = {
		Siege = 40,
		Tanlent_Ids = {4,5,6},
		Card_Cost = 6,
		DominanceLv = {
			[1] = {Id = 51,Force_Atk = 1.6,Force_Hp = 6},--曹玄亮
			[2] = {Id = 52,Force_Atk = 1.7,Force_Hp = 6.1},--曹玄亮
			[3] = {Id = 53,Force_Atk = 1.8,Force_Hp = 6.2},--曹玄亮
			[4] = {Id = 54,Force_Atk = 1.9,Force_Hp = 6.3},--曹玄亮
			[5] = {Id = 55,Force_Atk = 2,Force_Hp = 6.4},--曹玄亮
			[6] = {Id = 56,Force_Atk = 2.1,Force_Hp = 6.5},--曹玄亮
			[7] = {Id = 57,Force_Atk = 2.2,Force_Hp = 6.6},--曹玄亮
			[8] = {Id = 58,Force_Atk = 2.3,Force_Hp = 6.7},--曹玄亮
			[9] = {Id = 59,Force_Atk = 2.4,Force_Hp = 6.8},--曹玄亮
			[10] = {Id = 60,Force_Atk = 2.5,Force_Hp = 7.4},--曹玄亮
			[11] = {Id = 61,Force_Atk = 2.6,Force_Hp = 7.5},--曹玄亮
			[12] = {Id = 62,Force_Atk = 2.7,Force_Hp = 7.6},--曹玄亮
			[13] = {Id = 63,Force_Atk = 2.8,Force_Hp = 8.6},--曹玄亮
			[14] = {Id = 64,Force_Atk = 2.9,Force_Hp = 8.8},--曹玄亮
			[15] = {Id = 65,Force_Atk = 3.2,Force_Hp = 9.7},--曹玄亮
			[16] = {Id = 66,Force_Atk = 3.3,Force_Hp = 9.9},--曹玄亮
			[17] = {Id = 67,Force_Atk = 3.4,Force_Hp = 10.1},--曹玄亮
			[18] = {Id = 68,Force_Atk = 3.5,Force_Hp = 11.1},--曹玄亮
			[19] = {Id = 69,Force_Atk = 3.7,Force_Hp = 11.3},--曹玄亮
			[20] = {Id = 70,Force_Atk = 3.7,Force_Hp = 11.5},--曹玄亮
			[21] = {Id = 71,Force_Atk = 3.8,Force_Hp = 11.6},--曹玄亮
			[22] = {Id = 72,Force_Atk = 3.9,Force_Hp = 11.7},--曹玄亮
			[23] = {Id = 73,Force_Atk = 4.4,Force_Hp = 13.2},--曹玄亮
			[24] = {Id = 74,Force_Atk = 4.5,Force_Hp = 13.7},--曹玄亮
			[25] = {Id = 75,Force_Atk = 5,Force_Hp = 15.1},--曹玄亮
			[26] = {Id = 76,Force_Atk = 5.3,Force_Hp = 16.1},--曹玄亮
			[27] = {Id = 77,Force_Atk = 5.6,Force_Hp = 17},--曹玄亮
			[28] = {Id = 78,Force_Atk = 6,Force_Hp = 18},--曹玄亮
			[29] = {Id = 79,Force_Atk = 6.5,Force_Hp = 19},--曹玄亮
			[30] = {Id = 80,Force_Atk = 6.7,Force_Hp = 20.1},--曹玄亮
			[31] = {Id = 81,Force_Atk = 6.8,Force_Hp = 20.4},--曹玄亮
			[32] = {Id = 82,Force_Atk = 7.2,Force_Hp = 21.8},--曹玄亮
			[33] = {Id = 83,Force_Atk = 8.1,Force_Hp = 24.4},--曹玄亮
			[34] = {Id = 84,Force_Atk = 8.7,Force_Hp = 26.2},--曹玄亮
			[35] = {Id = 85,Force_Atk = 8.8,Force_Hp = 26.3},--曹玄亮
			[36] = {Id = 86,Force_Atk = 9.5,Force_Hp = 28.4},--曹玄亮
			[37] = {Id = 87,Force_Atk = 10.1,Force_Hp = 30.4},--曹玄亮
			[38] = {Id = 88,Force_Atk = 11.4,Force_Hp = 34.3},--曹玄亮
			[39] = {Id = 89,Force_Atk = 11.7,Force_Hp = 35},--曹玄亮
			[40] = {Id = 90,Force_Atk = 12.3,Force_Hp = 36.8},--曹玄亮
			[41] = {Id = 91,Force_Atk = 12.6,Force_Hp = 38},--曹玄亮
			[42] = {Id = 92,Force_Atk = 13.6,Force_Hp = 40.8},--曹玄亮
			[43] = {Id = 93,Force_Atk = 15.4,Force_Hp = 46.2},--曹玄亮
			[44] = {Id = 94,Force_Atk = 16.6,Force_Hp = 49.8},--曹玄亮
			[45] = {Id = 95,Force_Atk = 18.2,Force_Hp = 54.5},--曹玄亮
			[46] = {Id = 96,Force_Atk = 19.7,Force_Hp = 59.2},--曹玄亮
			[47] = {Id = 97,Force_Atk = 21.2,Force_Hp = 63.7},--曹玄亮
			[48] = {Id = 98,Force_Atk = 24.1,Force_Hp = 72.2},--曹玄亮
			[49] = {Id = 99,Force_Atk = 26,Force_Hp = 78},--曹玄亮
			[50] = {Id = 100,Force_Atk = 27.2,Force_Hp = 81.6}--曹玄亮
		}
	},--曹玄亮
	[1101003] = {
		Siege = 76,
		Tanlent_Ids = {7,8,9},
		Card_Cost = 7,
		DominanceLv = {
			[1] = {Id = 101,Force_Atk = 2.1,Force_Hp = 7.2},--战斗夏铃
			[2] = {Id = 102,Force_Atk = 2.2,Force_Hp = 7.3},--战斗夏铃
			[3] = {Id = 103,Force_Atk = 2.3,Force_Hp = 7.4},--战斗夏铃
			[4] = {Id = 104,Force_Atk = 2.4,Force_Hp = 7.5},--战斗夏铃
			[5] = {Id = 105,Force_Atk = 2.5,Force_Hp = 7.6},--战斗夏铃
			[6] = {Id = 106,Force_Atk = 2.6,Force_Hp = 7.7},--战斗夏铃
			[7] = {Id = 107,Force_Atk = 2.7,Force_Hp = 7.8},--战斗夏铃
			[8] = {Id = 108,Force_Atk = 2.8,Force_Hp = 7.9},--战斗夏铃
			[9] = {Id = 109,Force_Atk = 2.9,Force_Hp = 8},--战斗夏铃
			[10] = {Id = 110,Force_Atk = 3,Force_Hp = 8.3},--战斗夏铃
			[11] = {Id = 111,Force_Atk = 3.1,Force_Hp = 8.5},--战斗夏铃
			[12] = {Id = 112,Force_Atk = 3.2,Force_Hp = 8.6},--战斗夏铃
			[13] = {Id = 113,Force_Atk = 3.3,Force_Hp = 9.7},--战斗夏铃
			[14] = {Id = 114,Force_Atk = 3.4,Force_Hp = 9.9},--战斗夏铃
			[15] = {Id = 115,Force_Atk = 3.6,Force_Hp = 11},--战斗夏铃
			[16] = {Id = 116,Force_Atk = 3.7,Force_Hp = 11.2},--战斗夏铃
			[17] = {Id = 117,Force_Atk = 3.8,Force_Hp = 11.4},--战斗夏铃
			[18] = {Id = 118,Force_Atk = 4.1,Force_Hp = 12},--战斗夏铃
			[19] = {Id = 119,Force_Atk = 4.2,Force_Hp = 12.4},--战斗夏铃
			[20] = {Id = 120,Force_Atk = 4.3,Force_Hp = 12.6},--战斗夏铃
			[21] = {Id = 121,Force_Atk = 4.5,Force_Hp = 12.8},--战斗夏铃
			[22] = {Id = 122,Force_Atk = 4.6,Force_Hp = 13.2},--战斗夏铃
			[23] = {Id = 123,Force_Atk = 4.9,Force_Hp = 14.9},--战斗夏铃
			[24] = {Id = 124,Force_Atk = 5.1,Force_Hp = 15.5},--战斗夏铃
			[25] = {Id = 125,Force_Atk = 5.7,Force_Hp = 17.1},--战斗夏铃
			[26] = {Id = 126,Force_Atk = 6,Force_Hp = 18.2},--战斗夏铃
			[27] = {Id = 127,Force_Atk = 6.4,Force_Hp = 19.2},--战斗夏铃
			[28] = {Id = 128,Force_Atk = 6.8,Force_Hp = 20},--战斗夏铃
			[29] = {Id = 129,Force_Atk = 7.2,Force_Hp = 21.5},--战斗夏铃
			[30] = {Id = 130,Force_Atk = 7.5,Force_Hp = 22.7},--战斗夏铃
			[31] = {Id = 131,Force_Atk = 7.7,Force_Hp = 23.1},--战斗夏铃
			[32] = {Id = 132,Force_Atk = 8.2,Force_Hp = 24.6},--战斗夏铃
			[33] = {Id = 133,Force_Atk = 9.2,Force_Hp = 27.6},--战斗夏铃
			[34] = {Id = 134,Force_Atk = 9.8,Force_Hp = 29.6},--战斗夏铃
			[35] = {Id = 135,Force_Atk = 9.9,Force_Hp = 29.8},--战斗夏铃
			[36] = {Id = 136,Force_Atk = 10.7,Force_Hp = 32.1},--战斗夏铃
			[37] = {Id = 137,Force_Atk = 11.4,Force_Hp = 34.4},--战斗夏铃
			[38] = {Id = 138,Force_Atk = 12.9,Force_Hp = 38.7},--战斗夏铃
			[39] = {Id = 139,Force_Atk = 13.2,Force_Hp = 39.6},--战斗夏铃
			[40] = {Id = 140,Force_Atk = 13.9,Force_Hp = 41.6},--战斗夏铃
			[41] = {Id = 141,Force_Atk = 14.3,Force_Hp = 42.9},--战斗夏铃
			[42] = {Id = 142,Force_Atk = 15.4,Force_Hp = 46.1},--战斗夏铃
			[43] = {Id = 143,Force_Atk = 17.4,Force_Hp = 52.2},--战斗夏铃
			[44] = {Id = 144,Force_Atk = 18.8,Force_Hp = 56.3},--战斗夏铃
			[45] = {Id = 145,Force_Atk = 20.5,Force_Hp = 61.7},--战斗夏铃
			[46] = {Id = 146,Force_Atk = 22.3,Force_Hp = 66.9},--战斗夏铃
			[47] = {Id = 147,Force_Atk = 24,Force_Hp = 72},--战斗夏铃
			[48] = {Id = 148,Force_Atk = 27.2,Force_Hp = 81.6},--战斗夏铃
			[49] = {Id = 149,Force_Atk = 29.4,Force_Hp = 88.2},--战斗夏铃
			[50] = {Id = 150,Force_Atk = 30.8,Force_Hp = 92.3}--战斗夏铃
		}
	},--战斗夏铃
	[1101004] = {
		Siege = 14,
		Tanlent_Ids = {10,11,12},
		Card_Cost = 8,
		DominanceLv = {
			[1] = {Id = 151,Force_Atk = 2.7,Force_Hp = 8.1},--项昆仑
			[2] = {Id = 152,Force_Atk = 2.8,Force_Hp = 8.3},--项昆仑
			[3] = {Id = 153,Force_Atk = 2.9,Force_Hp = 8.5},--项昆仑
			[4] = {Id = 154,Force_Atk = 3,Force_Hp = 8.7},--项昆仑
			[5] = {Id = 155,Force_Atk = 3.1,Force_Hp = 8.9},--项昆仑
			[6] = {Id = 156,Force_Atk = 3.2,Force_Hp = 9.1},--项昆仑
			[7] = {Id = 157,Force_Atk = 3.3,Force_Hp = 9.3},--项昆仑
			[8] = {Id = 158,Force_Atk = 3.4,Force_Hp = 9.5},--项昆仑
			[9] = {Id = 159,Force_Atk = 3.5,Force_Hp = 9.7},--项昆仑
			[10] = {Id = 160,Force_Atk = 3.6,Force_Hp = 9.9},--项昆仑
			[11] = {Id = 161,Force_Atk = 3.7,Force_Hp = 10.1},--项昆仑
			[12] = {Id = 162,Force_Atk = 3.8,Force_Hp = 10.3},--项昆仑
			[13] = {Id = 163,Force_Atk = 3.9,Force_Hp = 11.2},--项昆仑
			[14] = {Id = 164,Force_Atk = 4,Force_Hp = 11.4},--项昆仑
			[15] = {Id = 165,Force_Atk = 4.2,Force_Hp = 12.7},--项昆仑
			[16] = {Id = 166,Force_Atk = 4.3,Force_Hp = 13},--项昆仑
			[17] = {Id = 167,Force_Atk = 4.4,Force_Hp = 13.2},--项昆仑
			[18] = {Id = 168,Force_Atk = 4.6,Force_Hp = 14},--项昆仑
			[19] = {Id = 169,Force_Atk = 4.7,Force_Hp = 14.3},--项昆仑
			[20] = {Id = 170,Force_Atk = 4.8,Force_Hp = 14.5},--项昆仑
			[21] = {Id = 171,Force_Atk = 4.9,Force_Hp = 14.8},--项昆仑
			[22] = {Id = 172,Force_Atk = 5,Force_Hp = 15.2},--项昆仑
			[23] = {Id = 173,Force_Atk = 5.7,Force_Hp = 17.2},--项昆仑
			[24] = {Id = 174,Force_Atk = 5.9,Force_Hp = 17.8},--项昆仑
			[25] = {Id = 175,Force_Atk = 6.6,Force_Hp = 19.7},--项昆仑
			[26] = {Id = 176,Force_Atk = 7,Force_Hp = 21},--项昆仑
			[27] = {Id = 177,Force_Atk = 7.4,Force_Hp = 22.2},--项昆仑
			[28] = {Id = 178,Force_Atk = 8.2,Force_Hp = 24},--项昆仑
			[29] = {Id = 179,Force_Atk = 8.5,Force_Hp = 24.8},--项昆仑
			[30] = {Id = 180,Force_Atk = 8.7,Force_Hp = 26},--项昆仑
			[31] = {Id = 181,Force_Atk = 8.9,Force_Hp = 26.7},--项昆仑
			[32] = {Id = 182,Force_Atk = 9.4,Force_Hp = 28.4},--项昆仑
			[33] = {Id = 183,Force_Atk = 10.6,Force_Hp = 31.9},--项昆仑
			[34] = {Id = 184,Force_Atk = 11.4,Force_Hp = 34.1},--项昆仑
			[35] = {Id = 185,Force_Atk = 11.8,Force_Hp = 35},--项昆仑
			[36] = {Id = 186,Force_Atk = 12.3,Force_Hp = 37.1},--项昆仑
			[37] = {Id = 187,Force_Atk = 13.2,Force_Hp = 39.7},--项昆仑
			[38] = {Id = 188,Force_Atk = 14.9,Force_Hp = 44.7},--项昆仑
			[39] = {Id = 189,Force_Atk = 15.2,Force_Hp = 45.7},--项昆仑
			[40] = {Id = 190,Force_Atk = 16,Force_Hp = 48.1},--项昆仑
			[41] = {Id = 191,Force_Atk = 16.5,Force_Hp = 49.5},--项昆仑
			[42] = {Id = 192,Force_Atk = 17.7,Force_Hp = 53.2},--项昆仑
			[43] = {Id = 193,Force_Atk = 20.1,Force_Hp = 60.2},--项昆仑
			[44] = {Id = 194,Force_Atk = 21.7,Force_Hp = 65},--项昆仑
			[45] = {Id = 195,Force_Atk = 23.7,Force_Hp = 71.1},--项昆仑
			[46] = {Id = 196,Force_Atk = 25.7,Force_Hp = 77.2},--项昆仑
			[47] = {Id = 197,Force_Atk = 27.7,Force_Hp = 83.1},--项昆仑
			[48] = {Id = 198,Force_Atk = 31.4,Force_Hp = 94.2},--项昆仑
			[49] = {Id = 199,Force_Atk = 33.9,Force_Hp = 101.8},--项昆仑
			[50] = {Id = 200,Force_Atk = 35.5,Force_Hp = 106.5}--项昆仑
		}
	},--项昆仑
	[1101005] = {
		Siege = 33,
		Tanlent_Ids = {13,14,15},
		Card_Cost = 8,
		DominanceLv = {
			[1] = {Id = 201,Force_Atk = 2.7,Force_Hp = 8.1},--刘羽禅
			[2] = {Id = 202,Force_Atk = 2.8,Force_Hp = 8.3},--刘羽禅
			[3] = {Id = 203,Force_Atk = 2.9,Force_Hp = 8.5},--刘羽禅
			[4] = {Id = 204,Force_Atk = 3,Force_Hp = 8.7},--刘羽禅
			[5] = {Id = 205,Force_Atk = 3.1,Force_Hp = 8.9},--刘羽禅
			[6] = {Id = 206,Force_Atk = 3.2,Force_Hp = 9.1},--刘羽禅
			[7] = {Id = 207,Force_Atk = 3.3,Force_Hp = 9.3},--刘羽禅
			[8] = {Id = 208,Force_Atk = 3.4,Force_Hp = 9.5},--刘羽禅
			[9] = {Id = 209,Force_Atk = 3.5,Force_Hp = 9.7},--刘羽禅
			[10] = {Id = 210,Force_Atk = 3.6,Force_Hp = 9.9},--刘羽禅
			[11] = {Id = 211,Force_Atk = 3.7,Force_Hp = 10.1},--刘羽禅
			[12] = {Id = 212,Force_Atk = 3.8,Force_Hp = 10.3},--刘羽禅
			[13] = {Id = 213,Force_Atk = 3.9,Force_Hp = 11.2},--刘羽禅
			[14] = {Id = 214,Force_Atk = 4,Force_Hp = 11.4},--刘羽禅
			[15] = {Id = 215,Force_Atk = 4.2,Force_Hp = 12.7},--刘羽禅
			[16] = {Id = 216,Force_Atk = 4.3,Force_Hp = 13},--刘羽禅
			[17] = {Id = 217,Force_Atk = 4.4,Force_Hp = 13.2},--刘羽禅
			[18] = {Id = 218,Force_Atk = 4.6,Force_Hp = 14},--刘羽禅
			[19] = {Id = 219,Force_Atk = 4.7,Force_Hp = 14.3},--刘羽禅
			[20] = {Id = 220,Force_Atk = 4.8,Force_Hp = 14.5},--刘羽禅
			[21] = {Id = 221,Force_Atk = 4.9,Force_Hp = 14.8},--刘羽禅
			[22] = {Id = 222,Force_Atk = 5,Force_Hp = 15.2},--刘羽禅
			[23] = {Id = 223,Force_Atk = 5.7,Force_Hp = 17.2},--刘羽禅
			[24] = {Id = 224,Force_Atk = 5.9,Force_Hp = 17.8},--刘羽禅
			[25] = {Id = 225,Force_Atk = 6.6,Force_Hp = 19.7},--刘羽禅
			[26] = {Id = 226,Force_Atk = 7,Force_Hp = 21},--刘羽禅
			[27] = {Id = 227,Force_Atk = 7.4,Force_Hp = 22.2},--刘羽禅
			[28] = {Id = 228,Force_Atk = 8.2,Force_Hp = 24},--刘羽禅
			[29] = {Id = 229,Force_Atk = 8.5,Force_Hp = 24.8},--刘羽禅
			[30] = {Id = 230,Force_Atk = 8.7,Force_Hp = 26},--刘羽禅
			[31] = {Id = 231,Force_Atk = 8.9,Force_Hp = 26.7},--刘羽禅
			[32] = {Id = 232,Force_Atk = 9.4,Force_Hp = 28.4},--刘羽禅
			[33] = {Id = 233,Force_Atk = 10.6,Force_Hp = 31.9},--刘羽禅
			[34] = {Id = 234,Force_Atk = 11.4,Force_Hp = 34.1},--刘羽禅
			[35] = {Id = 235,Force_Atk = 11.8,Force_Hp = 35},--刘羽禅
			[36] = {Id = 236,Force_Atk = 12.3,Force_Hp = 37.1},--刘羽禅
			[37] = {Id = 237,Force_Atk = 13.2,Force_Hp = 39.7},--刘羽禅
			[38] = {Id = 238,Force_Atk = 14.9,Force_Hp = 44.7},--刘羽禅
			[39] = {Id = 239,Force_Atk = 15.2,Force_Hp = 45.7},--刘羽禅
			[40] = {Id = 240,Force_Atk = 16,Force_Hp = 48.1},--刘羽禅
			[41] = {Id = 241,Force_Atk = 16.5,Force_Hp = 49.5},--刘羽禅
			[42] = {Id = 242,Force_Atk = 17.7,Force_Hp = 53.2},--刘羽禅
			[43] = {Id = 243,Force_Atk = 20.1,Force_Hp = 60.2},--刘羽禅
			[44] = {Id = 244,Force_Atk = 21.7,Force_Hp = 65},--刘羽禅
			[45] = {Id = 245,Force_Atk = 23.7,Force_Hp = 71.1},--刘羽禅
			[46] = {Id = 246,Force_Atk = 25.7,Force_Hp = 77.2},--刘羽禅
			[47] = {Id = 247,Force_Atk = 27.7,Force_Hp = 83.1},--刘羽禅
			[48] = {Id = 248,Force_Atk = 31.4,Force_Hp = 94.2},--刘羽禅
			[49] = {Id = 249,Force_Atk = 33.9,Force_Hp = 101.8},--刘羽禅
			[50] = {Id = 250,Force_Atk = 35.5,Force_Hp = 106.5}--刘羽禅
		}
	},--刘羽禅
	[1101006] = {
		Siege = 26,
		Tanlent_Ids = {16,17,18},
		Card_Cost = 8,
		DominanceLv = {
			[1] = {Id = 251,Force_Atk = 2.7,Force_Hp = 8.1},--红莲缇娜
			[2] = {Id = 252,Force_Atk = 2.8,Force_Hp = 8.3},--红莲缇娜
			[3] = {Id = 253,Force_Atk = 2.9,Force_Hp = 8.5},--红莲缇娜
			[4] = {Id = 254,Force_Atk = 3,Force_Hp = 8.7},--红莲缇娜
			[5] = {Id = 255,Force_Atk = 3.1,Force_Hp = 8.9},--红莲缇娜
			[6] = {Id = 256,Force_Atk = 3.2,Force_Hp = 9.1},--红莲缇娜
			[7] = {Id = 257,Force_Atk = 3.3,Force_Hp = 9.3},--红莲缇娜
			[8] = {Id = 258,Force_Atk = 3.4,Force_Hp = 9.5},--红莲缇娜
			[9] = {Id = 259,Force_Atk = 3.5,Force_Hp = 9.7},--红莲缇娜
			[10] = {Id = 260,Force_Atk = 3.6,Force_Hp = 9.9},--红莲缇娜
			[11] = {Id = 261,Force_Atk = 3.7,Force_Hp = 10.1},--红莲缇娜
			[12] = {Id = 262,Force_Atk = 3.8,Force_Hp = 10.3},--红莲缇娜
			[13] = {Id = 263,Force_Atk = 3.9,Force_Hp = 11.2},--红莲缇娜
			[14] = {Id = 264,Force_Atk = 4,Force_Hp = 11.4},--红莲缇娜
			[15] = {Id = 265,Force_Atk = 4.2,Force_Hp = 12.7},--红莲缇娜
			[16] = {Id = 266,Force_Atk = 4.3,Force_Hp = 13},--红莲缇娜
			[17] = {Id = 267,Force_Atk = 4.4,Force_Hp = 13.2},--红莲缇娜
			[18] = {Id = 268,Force_Atk = 4.6,Force_Hp = 14},--红莲缇娜
			[19] = {Id = 269,Force_Atk = 4.7,Force_Hp = 14.3},--红莲缇娜
			[20] = {Id = 270,Force_Atk = 4.8,Force_Hp = 14.5},--红莲缇娜
			[21] = {Id = 271,Force_Atk = 4.9,Force_Hp = 14.8},--红莲缇娜
			[22] = {Id = 272,Force_Atk = 5,Force_Hp = 15.2},--红莲缇娜
			[23] = {Id = 273,Force_Atk = 5.7,Force_Hp = 17.2},--红莲缇娜
			[24] = {Id = 274,Force_Atk = 5.9,Force_Hp = 17.8},--红莲缇娜
			[25] = {Id = 275,Force_Atk = 6.6,Force_Hp = 19.7},--红莲缇娜
			[26] = {Id = 276,Force_Atk = 7,Force_Hp = 21},--红莲缇娜
			[27] = {Id = 277,Force_Atk = 7.4,Force_Hp = 22.2},--红莲缇娜
			[28] = {Id = 278,Force_Atk = 8.2,Force_Hp = 24},--红莲缇娜
			[29] = {Id = 279,Force_Atk = 8.5,Force_Hp = 24.8},--红莲缇娜
			[30] = {Id = 280,Force_Atk = 8.7,Force_Hp = 26},--红莲缇娜
			[31] = {Id = 281,Force_Atk = 8.9,Force_Hp = 26.7},--红莲缇娜
			[32] = {Id = 282,Force_Atk = 9.4,Force_Hp = 28.4},--红莲缇娜
			[33] = {Id = 283,Force_Atk = 10.6,Force_Hp = 31.9},--红莲缇娜
			[34] = {Id = 284,Force_Atk = 11.4,Force_Hp = 34.1},--红莲缇娜
			[35] = {Id = 285,Force_Atk = 11.8,Force_Hp = 35},--红莲缇娜
			[36] = {Id = 286,Force_Atk = 12.3,Force_Hp = 37.1},--红莲缇娜
			[37] = {Id = 287,Force_Atk = 13.2,Force_Hp = 39.7},--红莲缇娜
			[38] = {Id = 288,Force_Atk = 14.9,Force_Hp = 44.7},--红莲缇娜
			[39] = {Id = 289,Force_Atk = 15.2,Force_Hp = 45.7},--红莲缇娜
			[40] = {Id = 290,Force_Atk = 16,Force_Hp = 48.1},--红莲缇娜
			[41] = {Id = 291,Force_Atk = 16.5,Force_Hp = 49.5},--红莲缇娜
			[42] = {Id = 292,Force_Atk = 17.7,Force_Hp = 53.2},--红莲缇娜
			[43] = {Id = 293,Force_Atk = 20.1,Force_Hp = 60.2},--红莲缇娜
			[44] = {Id = 294,Force_Atk = 21.7,Force_Hp = 65},--红莲缇娜
			[45] = {Id = 295,Force_Atk = 23.7,Force_Hp = 71.1},--红莲缇娜
			[46] = {Id = 296,Force_Atk = 25.7,Force_Hp = 77.2},--红莲缇娜
			[47] = {Id = 297,Force_Atk = 27.7,Force_Hp = 83.1},--红莲缇娜
			[48] = {Id = 298,Force_Atk = 31.4,Force_Hp = 94.2},--红莲缇娜
			[49] = {Id = 299,Force_Atk = 33.9,Force_Hp = 101.8},--红莲缇娜
			[50] = {Id = 300,Force_Atk = 35.5,Force_Hp = 106.5}--红莲缇娜
		}
	},--红莲缇娜
	[1101007] = {
		Siege = 43,
		Tanlent_Ids = {21,22,23},
		Card_Cost = 8,
		DominanceLv = {
			[1] = {Id = 301,Force_Atk = 2.7,Force_Hp = 8.1},--战斗曹焱兵
			[2] = {Id = 302,Force_Atk = 2.8,Force_Hp = 8.3},--战斗曹焱兵
			[3] = {Id = 303,Force_Atk = 2.9,Force_Hp = 8.5},--战斗曹焱兵
			[4] = {Id = 304,Force_Atk = 3,Force_Hp = 8.7},--战斗曹焱兵
			[5] = {Id = 305,Force_Atk = 3.1,Force_Hp = 8.9},--战斗曹焱兵
			[6] = {Id = 306,Force_Atk = 3.2,Force_Hp = 9.1},--战斗曹焱兵
			[7] = {Id = 307,Force_Atk = 3.3,Force_Hp = 9.3},--战斗曹焱兵
			[8] = {Id = 308,Force_Atk = 3.4,Force_Hp = 9.5},--战斗曹焱兵
			[9] = {Id = 309,Force_Atk = 3.5,Force_Hp = 9.7},--战斗曹焱兵
			[10] = {Id = 310,Force_Atk = 3.6,Force_Hp = 9.9},--战斗曹焱兵
			[11] = {Id = 311,Force_Atk = 3.7,Force_Hp = 10.1},--战斗曹焱兵
			[12] = {Id = 312,Force_Atk = 3.8,Force_Hp = 10.3},--战斗曹焱兵
			[13] = {Id = 313,Force_Atk = 3.9,Force_Hp = 11.2},--战斗曹焱兵
			[14] = {Id = 314,Force_Atk = 4,Force_Hp = 11.4},--战斗曹焱兵
			[15] = {Id = 315,Force_Atk = 4.2,Force_Hp = 12.7},--战斗曹焱兵
			[16] = {Id = 316,Force_Atk = 4.3,Force_Hp = 13},--战斗曹焱兵
			[17] = {Id = 317,Force_Atk = 4.4,Force_Hp = 13.2},--战斗曹焱兵
			[18] = {Id = 318,Force_Atk = 4.6,Force_Hp = 14},--战斗曹焱兵
			[19] = {Id = 319,Force_Atk = 4.7,Force_Hp = 14.3},--战斗曹焱兵
			[20] = {Id = 320,Force_Atk = 4.8,Force_Hp = 14.5},--战斗曹焱兵
			[21] = {Id = 321,Force_Atk = 4.9,Force_Hp = 14.8},--战斗曹焱兵
			[22] = {Id = 322,Force_Atk = 5,Force_Hp = 15.2},--战斗曹焱兵
			[23] = {Id = 323,Force_Atk = 5.7,Force_Hp = 17.2},--战斗曹焱兵
			[24] = {Id = 324,Force_Atk = 5.9,Force_Hp = 17.8},--战斗曹焱兵
			[25] = {Id = 325,Force_Atk = 6.6,Force_Hp = 19.7},--战斗曹焱兵
			[26] = {Id = 326,Force_Atk = 7,Force_Hp = 21},--战斗曹焱兵
			[27] = {Id = 327,Force_Atk = 7.4,Force_Hp = 22.2},--战斗曹焱兵
			[28] = {Id = 328,Force_Atk = 8.2,Force_Hp = 24},--战斗曹焱兵
			[29] = {Id = 329,Force_Atk = 8.5,Force_Hp = 24.8},--战斗曹焱兵
			[30] = {Id = 330,Force_Atk = 8.7,Force_Hp = 26},--战斗曹焱兵
			[31] = {Id = 331,Force_Atk = 8.9,Force_Hp = 26.7},--战斗曹焱兵
			[32] = {Id = 332,Force_Atk = 9.4,Force_Hp = 28.4},--战斗曹焱兵
			[33] = {Id = 333,Force_Atk = 10.6,Force_Hp = 31.9},--战斗曹焱兵
			[34] = {Id = 334,Force_Atk = 11.4,Force_Hp = 34.1},--战斗曹焱兵
			[35] = {Id = 335,Force_Atk = 11.8,Force_Hp = 35},--战斗曹焱兵
			[36] = {Id = 336,Force_Atk = 12.3,Force_Hp = 37.1},--战斗曹焱兵
			[37] = {Id = 337,Force_Atk = 13.2,Force_Hp = 39.7},--战斗曹焱兵
			[38] = {Id = 338,Force_Atk = 14.9,Force_Hp = 44.7},--战斗曹焱兵
			[39] = {Id = 339,Force_Atk = 15.2,Force_Hp = 45.7},--战斗曹焱兵
			[40] = {Id = 340,Force_Atk = 16,Force_Hp = 48.1},--战斗曹焱兵
			[41] = {Id = 341,Force_Atk = 16.5,Force_Hp = 49.5},--战斗曹焱兵
			[42] = {Id = 342,Force_Atk = 17.7,Force_Hp = 53.2},--战斗曹焱兵
			[43] = {Id = 343,Force_Atk = 20.1,Force_Hp = 60.2},--战斗曹焱兵
			[44] = {Id = 344,Force_Atk = 21.7,Force_Hp = 65},--战斗曹焱兵
			[45] = {Id = 345,Force_Atk = 23.7,Force_Hp = 71.1},--战斗曹焱兵
			[46] = {Id = 346,Force_Atk = 25.7,Force_Hp = 77.2},--战斗曹焱兵
			[47] = {Id = 347,Force_Atk = 27.7,Force_Hp = 83.1},--战斗曹焱兵
			[48] = {Id = 348,Force_Atk = 31.4,Force_Hp = 94.2},--战斗曹焱兵
			[49] = {Id = 349,Force_Atk = 33.9,Force_Hp = 101.8},--战斗曹焱兵
			[50] = {Id = 350,Force_Atk = 35.5,Force_Hp = 106.5}--战斗曹焱兵
		}
	},--战斗曹焱兵
	[1101008] = {
		Siege = 33,
		Tanlent_Ids = {24,25,1},
		Card_Cost = 6,
		DominanceLv = {
			[1] = {Id = 351,Force_Atk = 1.6,Force_Hp = 6},--黑尔坎普
			[2] = {Id = 352,Force_Atk = 1.7,Force_Hp = 6.1},--黑尔坎普
			[3] = {Id = 353,Force_Atk = 1.8,Force_Hp = 6.2},--黑尔坎普
			[4] = {Id = 354,Force_Atk = 1.9,Force_Hp = 6.3},--黑尔坎普
			[5] = {Id = 355,Force_Atk = 2,Force_Hp = 6.4},--黑尔坎普
			[6] = {Id = 356,Force_Atk = 2.1,Force_Hp = 6.5},--黑尔坎普
			[7] = {Id = 357,Force_Atk = 2.2,Force_Hp = 6.6},--黑尔坎普
			[8] = {Id = 358,Force_Atk = 2.3,Force_Hp = 6.7},--黑尔坎普
			[9] = {Id = 359,Force_Atk = 2.4,Force_Hp = 6.8},--黑尔坎普
			[10] = {Id = 360,Force_Atk = 2.5,Force_Hp = 7.4},--黑尔坎普
			[11] = {Id = 361,Force_Atk = 2.6,Force_Hp = 7.5},--黑尔坎普
			[12] = {Id = 362,Force_Atk = 2.7,Force_Hp = 7.6},--黑尔坎普
			[13] = {Id = 363,Force_Atk = 2.8,Force_Hp = 8.6},--黑尔坎普
			[14] = {Id = 364,Force_Atk = 2.9,Force_Hp = 8.8},--黑尔坎普
			[15] = {Id = 365,Force_Atk = 3.2,Force_Hp = 9.7},--黑尔坎普
			[16] = {Id = 366,Force_Atk = 3.3,Force_Hp = 9.9},--黑尔坎普
			[17] = {Id = 367,Force_Atk = 3.4,Force_Hp = 10.1},--黑尔坎普
			[18] = {Id = 368,Force_Atk = 3.5,Force_Hp = 11.1},--黑尔坎普
			[19] = {Id = 369,Force_Atk = 3.7,Force_Hp = 11.3},--黑尔坎普
			[20] = {Id = 370,Force_Atk = 3.7,Force_Hp = 11.5},--黑尔坎普
			[21] = {Id = 371,Force_Atk = 3.8,Force_Hp = 11.6},--黑尔坎普
			[22] = {Id = 372,Force_Atk = 3.9,Force_Hp = 11.7},--黑尔坎普
			[23] = {Id = 373,Force_Atk = 4.4,Force_Hp = 13.2},--黑尔坎普
			[24] = {Id = 374,Force_Atk = 4.5,Force_Hp = 13.7},--黑尔坎普
			[25] = {Id = 375,Force_Atk = 5,Force_Hp = 15.1},--黑尔坎普
			[26] = {Id = 376,Force_Atk = 5.3,Force_Hp = 16.1},--黑尔坎普
			[27] = {Id = 377,Force_Atk = 5.6,Force_Hp = 17},--黑尔坎普
			[28] = {Id = 378,Force_Atk = 6,Force_Hp = 18},--黑尔坎普
			[29] = {Id = 379,Force_Atk = 6.5,Force_Hp = 19},--黑尔坎普
			[30] = {Id = 380,Force_Atk = 6.7,Force_Hp = 20.1},--黑尔坎普
			[31] = {Id = 381,Force_Atk = 6.8,Force_Hp = 20.4},--黑尔坎普
			[32] = {Id = 382,Force_Atk = 7.2,Force_Hp = 21.8},--黑尔坎普
			[33] = {Id = 383,Force_Atk = 8.1,Force_Hp = 24.4},--黑尔坎普
			[34] = {Id = 384,Force_Atk = 8.7,Force_Hp = 26.2},--黑尔坎普
			[35] = {Id = 385,Force_Atk = 8.8,Force_Hp = 26.3},--黑尔坎普
			[36] = {Id = 386,Force_Atk = 9.5,Force_Hp = 28.4},--黑尔坎普
			[37] = {Id = 387,Force_Atk = 10.1,Force_Hp = 30.4},--黑尔坎普
			[38] = {Id = 388,Force_Atk = 11.4,Force_Hp = 34.3},--黑尔坎普
			[39] = {Id = 389,Force_Atk = 11.7,Force_Hp = 35},--黑尔坎普
			[40] = {Id = 390,Force_Atk = 12.3,Force_Hp = 36.8},--黑尔坎普
			[41] = {Id = 391,Force_Atk = 12.6,Force_Hp = 38},--黑尔坎普
			[42] = {Id = 392,Force_Atk = 13.6,Force_Hp = 40.8},--黑尔坎普
			[43] = {Id = 393,Force_Atk = 15.4,Force_Hp = 46.2},--黑尔坎普
			[44] = {Id = 394,Force_Atk = 16.6,Force_Hp = 49.8},--黑尔坎普
			[45] = {Id = 395,Force_Atk = 18.2,Force_Hp = 54.5},--黑尔坎普
			[46] = {Id = 396,Force_Atk = 19.7,Force_Hp = 59.2},--黑尔坎普
			[47] = {Id = 397,Force_Atk = 21.2,Force_Hp = 63.7},--黑尔坎普
			[48] = {Id = 398,Force_Atk = 24.1,Force_Hp = 72.2},--黑尔坎普
			[49] = {Id = 399,Force_Atk = 26,Force_Hp = 78},--黑尔坎普
			[50] = {Id = 400,Force_Atk = 27.2,Force_Hp = 81.6}--黑尔坎普
		}
	},--黑尔坎普
	[1101009] = {
		Siege = 70,
		Tanlent_Ids = {1,2,3},
		Card_Cost = 7,
		DominanceLv = {
			[1] = {Id = 401,Force_Atk = 2.1,Force_Hp = 7.2},--北落师门
			[2] = {Id = 402,Force_Atk = 2.2,Force_Hp = 7.3},--北落师门
			[3] = {Id = 403,Force_Atk = 2.3,Force_Hp = 7.4},--北落师门
			[4] = {Id = 404,Force_Atk = 2.4,Force_Hp = 7.5},--北落师门
			[5] = {Id = 405,Force_Atk = 2.5,Force_Hp = 7.6},--北落师门
			[6] = {Id = 406,Force_Atk = 2.6,Force_Hp = 7.7},--北落师门
			[7] = {Id = 407,Force_Atk = 2.7,Force_Hp = 7.8},--北落师门
			[8] = {Id = 408,Force_Atk = 2.8,Force_Hp = 7.9},--北落师门
			[9] = {Id = 409,Force_Atk = 2.9,Force_Hp = 8},--北落师门
			[10] = {Id = 410,Force_Atk = 3,Force_Hp = 8.3},--北落师门
			[11] = {Id = 411,Force_Atk = 3.1,Force_Hp = 8.5},--北落师门
			[12] = {Id = 412,Force_Atk = 3.2,Force_Hp = 8.6},--北落师门
			[13] = {Id = 413,Force_Atk = 3.3,Force_Hp = 9.7},--北落师门
			[14] = {Id = 414,Force_Atk = 3.4,Force_Hp = 9.9},--北落师门
			[15] = {Id = 415,Force_Atk = 3.6,Force_Hp = 11},--北落师门
			[16] = {Id = 416,Force_Atk = 3.7,Force_Hp = 11.2},--北落师门
			[17] = {Id = 417,Force_Atk = 3.8,Force_Hp = 11.4},--北落师门
			[18] = {Id = 418,Force_Atk = 4.1,Force_Hp = 12},--北落师门
			[19] = {Id = 419,Force_Atk = 4.2,Force_Hp = 12.4},--北落师门
			[20] = {Id = 420,Force_Atk = 4.3,Force_Hp = 12.6},--北落师门
			[21] = {Id = 421,Force_Atk = 4.5,Force_Hp = 12.8},--北落师门
			[22] = {Id = 422,Force_Atk = 4.6,Force_Hp = 13.2},--北落师门
			[23] = {Id = 423,Force_Atk = 4.9,Force_Hp = 14.9},--北落师门
			[24] = {Id = 424,Force_Atk = 5.1,Force_Hp = 15.5},--北落师门
			[25] = {Id = 425,Force_Atk = 5.7,Force_Hp = 17.1},--北落师门
			[26] = {Id = 426,Force_Atk = 6,Force_Hp = 18.2},--北落师门
			[27] = {Id = 427,Force_Atk = 6.4,Force_Hp = 19.2},--北落师门
			[28] = {Id = 428,Force_Atk = 6.8,Force_Hp = 20},--北落师门
			[29] = {Id = 429,Force_Atk = 7.2,Force_Hp = 21.5},--北落师门
			[30] = {Id = 430,Force_Atk = 7.5,Force_Hp = 22.7},--北落师门
			[31] = {Id = 431,Force_Atk = 7.7,Force_Hp = 23.1},--北落师门
			[32] = {Id = 432,Force_Atk = 8.2,Force_Hp = 24.6},--北落师门
			[33] = {Id = 433,Force_Atk = 9.2,Force_Hp = 27.6},--北落师门
			[34] = {Id = 434,Force_Atk = 9.8,Force_Hp = 29.6},--北落师门
			[35] = {Id = 435,Force_Atk = 9.9,Force_Hp = 29.8},--北落师门
			[36] = {Id = 436,Force_Atk = 10.7,Force_Hp = 32.1},--北落师门
			[37] = {Id = 437,Force_Atk = 11.4,Force_Hp = 34.4},--北落师门
			[38] = {Id = 438,Force_Atk = 12.9,Force_Hp = 38.7},--北落师门
			[39] = {Id = 439,Force_Atk = 13.2,Force_Hp = 39.6},--北落师门
			[40] = {Id = 440,Force_Atk = 13.9,Force_Hp = 41.6},--北落师门
			[41] = {Id = 441,Force_Atk = 14.3,Force_Hp = 42.9},--北落师门
			[42] = {Id = 442,Force_Atk = 15.4,Force_Hp = 46.1},--北落师门
			[43] = {Id = 443,Force_Atk = 17.4,Force_Hp = 52.2},--北落师门
			[44] = {Id = 444,Force_Atk = 18.8,Force_Hp = 56.3},--北落师门
			[45] = {Id = 445,Force_Atk = 20.5,Force_Hp = 61.7},--北落师门
			[46] = {Id = 446,Force_Atk = 22.3,Force_Hp = 66.9},--北落师门
			[47] = {Id = 447,Force_Atk = 24,Force_Hp = 72},--北落师门
			[48] = {Id = 448,Force_Atk = 27.2,Force_Hp = 81.6},--北落师门
			[49] = {Id = 449,Force_Atk = 29.4,Force_Hp = 88.2},--北落师门
			[50] = {Id = 450,Force_Atk = 30.8,Force_Hp = 92.3}--北落师门
		}
	},--北落师门
	[1101010] = {
		Siege = 97,
		Tanlent_Ids = {4,5,6},
		Card_Cost = 8,
		DominanceLv = {
			[1] = {Id = 451,Force_Atk = 2.7,Force_Hp = 8.1},--盖文
			[2] = {Id = 452,Force_Atk = 2.8,Force_Hp = 8.3},--盖文
			[3] = {Id = 453,Force_Atk = 2.9,Force_Hp = 8.5},--盖文
			[4] = {Id = 454,Force_Atk = 3,Force_Hp = 8.7},--盖文
			[5] = {Id = 455,Force_Atk = 3.1,Force_Hp = 8.9},--盖文
			[6] = {Id = 456,Force_Atk = 3.2,Force_Hp = 9.1},--盖文
			[7] = {Id = 457,Force_Atk = 3.3,Force_Hp = 9.3},--盖文
			[8] = {Id = 458,Force_Atk = 3.4,Force_Hp = 9.5},--盖文
			[9] = {Id = 459,Force_Atk = 3.5,Force_Hp = 9.7},--盖文
			[10] = {Id = 460,Force_Atk = 3.6,Force_Hp = 9.9},--盖文
			[11] = {Id = 461,Force_Atk = 3.7,Force_Hp = 10.1},--盖文
			[12] = {Id = 462,Force_Atk = 3.8,Force_Hp = 10.3},--盖文
			[13] = {Id = 463,Force_Atk = 3.9,Force_Hp = 11.2},--盖文
			[14] = {Id = 464,Force_Atk = 4,Force_Hp = 11.4},--盖文
			[15] = {Id = 465,Force_Atk = 4.2,Force_Hp = 12.7},--盖文
			[16] = {Id = 466,Force_Atk = 4.3,Force_Hp = 13},--盖文
			[17] = {Id = 467,Force_Atk = 4.4,Force_Hp = 13.2},--盖文
			[18] = {Id = 468,Force_Atk = 4.6,Force_Hp = 14},--盖文
			[19] = {Id = 469,Force_Atk = 4.7,Force_Hp = 14.3},--盖文
			[20] = {Id = 470,Force_Atk = 4.8,Force_Hp = 14.5},--盖文
			[21] = {Id = 471,Force_Atk = 4.9,Force_Hp = 14.8},--盖文
			[22] = {Id = 472,Force_Atk = 5,Force_Hp = 15.2},--盖文
			[23] = {Id = 473,Force_Atk = 5.7,Force_Hp = 17.2},--盖文
			[24] = {Id = 474,Force_Atk = 5.9,Force_Hp = 17.8},--盖文
			[25] = {Id = 475,Force_Atk = 6.6,Force_Hp = 19.7},--盖文
			[26] = {Id = 476,Force_Atk = 7,Force_Hp = 21},--盖文
			[27] = {Id = 477,Force_Atk = 7.4,Force_Hp = 22.2},--盖文
			[28] = {Id = 478,Force_Atk = 8.2,Force_Hp = 24},--盖文
			[29] = {Id = 479,Force_Atk = 8.5,Force_Hp = 24.8},--盖文
			[30] = {Id = 480,Force_Atk = 8.7,Force_Hp = 26},--盖文
			[31] = {Id = 481,Force_Atk = 8.9,Force_Hp = 26.7},--盖文
			[32] = {Id = 482,Force_Atk = 9.4,Force_Hp = 28.4},--盖文
			[33] = {Id = 483,Force_Atk = 10.6,Force_Hp = 31.9},--盖文
			[34] = {Id = 484,Force_Atk = 11.4,Force_Hp = 34.1},--盖文
			[35] = {Id = 485,Force_Atk = 11.8,Force_Hp = 35},--盖文
			[36] = {Id = 486,Force_Atk = 12.3,Force_Hp = 37.1},--盖文
			[37] = {Id = 487,Force_Atk = 13.2,Force_Hp = 39.7},--盖文
			[38] = {Id = 488,Force_Atk = 14.9,Force_Hp = 44.7},--盖文
			[39] = {Id = 489,Force_Atk = 15.2,Force_Hp = 45.7},--盖文
			[40] = {Id = 490,Force_Atk = 16,Force_Hp = 48.1},--盖文
			[41] = {Id = 491,Force_Atk = 16.5,Force_Hp = 49.5},--盖文
			[42] = {Id = 492,Force_Atk = 17.7,Force_Hp = 53.2},--盖文
			[43] = {Id = 493,Force_Atk = 20.1,Force_Hp = 60.2},--盖文
			[44] = {Id = 494,Force_Atk = 21.7,Force_Hp = 65},--盖文
			[45] = {Id = 495,Force_Atk = 23.7,Force_Hp = 71.1},--盖文
			[46] = {Id = 496,Force_Atk = 25.7,Force_Hp = 77.2},--盖文
			[47] = {Id = 497,Force_Atk = 27.7,Force_Hp = 83.1},--盖文
			[48] = {Id = 498,Force_Atk = 31.4,Force_Hp = 94.2},--盖文
			[49] = {Id = 499,Force_Atk = 33.9,Force_Hp = 101.8},--盖文
			[50] = {Id = 500,Force_Atk = 35.5,Force_Hp = 106.5}--盖文
		}
	},--盖文
	[1101011] = {
		Siege = 83,
		Tanlent_Ids = {7,8,9},
		Card_Cost = 8,
		DominanceLv = {
			[1] = {Id = 501,Force_Atk = 2.7,Force_Hp = 8.1},--阎风吒
			[2] = {Id = 502,Force_Atk = 2.8,Force_Hp = 8.3},--阎风吒
			[3] = {Id = 503,Force_Atk = 2.9,Force_Hp = 8.5},--阎风吒
			[4] = {Id = 504,Force_Atk = 3,Force_Hp = 8.7},--阎风吒
			[5] = {Id = 505,Force_Atk = 3.1,Force_Hp = 8.9},--阎风吒
			[6] = {Id = 506,Force_Atk = 3.2,Force_Hp = 9.1},--阎风吒
			[7] = {Id = 507,Force_Atk = 3.3,Force_Hp = 9.3},--阎风吒
			[8] = {Id = 508,Force_Atk = 3.4,Force_Hp = 9.5},--阎风吒
			[9] = {Id = 509,Force_Atk = 3.5,Force_Hp = 9.7},--阎风吒
			[10] = {Id = 510,Force_Atk = 3.6,Force_Hp = 9.9},--阎风吒
			[11] = {Id = 511,Force_Atk = 3.7,Force_Hp = 10.1},--阎风吒
			[12] = {Id = 512,Force_Atk = 3.8,Force_Hp = 10.3},--阎风吒
			[13] = {Id = 513,Force_Atk = 3.9,Force_Hp = 11.2},--阎风吒
			[14] = {Id = 514,Force_Atk = 4,Force_Hp = 11.4},--阎风吒
			[15] = {Id = 515,Force_Atk = 4.2,Force_Hp = 12.7},--阎风吒
			[16] = {Id = 516,Force_Atk = 4.3,Force_Hp = 13},--阎风吒
			[17] = {Id = 517,Force_Atk = 4.4,Force_Hp = 13.2},--阎风吒
			[18] = {Id = 518,Force_Atk = 4.6,Force_Hp = 14},--阎风吒
			[19] = {Id = 519,Force_Atk = 4.7,Force_Hp = 14.3},--阎风吒
			[20] = {Id = 520,Force_Atk = 4.8,Force_Hp = 14.5},--阎风吒
			[21] = {Id = 521,Force_Atk = 4.9,Force_Hp = 14.8},--阎风吒
			[22] = {Id = 522,Force_Atk = 5,Force_Hp = 15.2},--阎风吒
			[23] = {Id = 523,Force_Atk = 5.7,Force_Hp = 17.2},--阎风吒
			[24] = {Id = 524,Force_Atk = 5.9,Force_Hp = 17.8},--阎风吒
			[25] = {Id = 525,Force_Atk = 6.6,Force_Hp = 19.7},--阎风吒
			[26] = {Id = 526,Force_Atk = 7,Force_Hp = 21},--阎风吒
			[27] = {Id = 527,Force_Atk = 7.4,Force_Hp = 22.2},--阎风吒
			[28] = {Id = 528,Force_Atk = 8.2,Force_Hp = 24},--阎风吒
			[29] = {Id = 529,Force_Atk = 8.5,Force_Hp = 24.8},--阎风吒
			[30] = {Id = 530,Force_Atk = 8.7,Force_Hp = 26},--阎风吒
			[31] = {Id = 531,Force_Atk = 8.9,Force_Hp = 26.7},--阎风吒
			[32] = {Id = 532,Force_Atk = 9.4,Force_Hp = 28.4},--阎风吒
			[33] = {Id = 533,Force_Atk = 10.6,Force_Hp = 31.9},--阎风吒
			[34] = {Id = 534,Force_Atk = 11.4,Force_Hp = 34.1},--阎风吒
			[35] = {Id = 535,Force_Atk = 11.8,Force_Hp = 35},--阎风吒
			[36] = {Id = 536,Force_Atk = 12.3,Force_Hp = 37.1},--阎风吒
			[37] = {Id = 537,Force_Atk = 13.2,Force_Hp = 39.7},--阎风吒
			[38] = {Id = 538,Force_Atk = 14.9,Force_Hp = 44.7},--阎风吒
			[39] = {Id = 539,Force_Atk = 15.2,Force_Hp = 45.7},--阎风吒
			[40] = {Id = 540,Force_Atk = 16,Force_Hp = 48.1},--阎风吒
			[41] = {Id = 541,Force_Atk = 16.5,Force_Hp = 49.5},--阎风吒
			[42] = {Id = 542,Force_Atk = 17.7,Force_Hp = 53.2},--阎风吒
			[43] = {Id = 543,Force_Atk = 20.1,Force_Hp = 60.2},--阎风吒
			[44] = {Id = 544,Force_Atk = 21.7,Force_Hp = 65},--阎风吒
			[45] = {Id = 545,Force_Atk = 23.7,Force_Hp = 71.1},--阎风吒
			[46] = {Id = 546,Force_Atk = 25.7,Force_Hp = 77.2},--阎风吒
			[47] = {Id = 547,Force_Atk = 27.7,Force_Hp = 83.1},--阎风吒
			[48] = {Id = 548,Force_Atk = 31.4,Force_Hp = 94.2},--阎风吒
			[49] = {Id = 549,Force_Atk = 33.9,Force_Hp = 101.8},--阎风吒
			[50] = {Id = 550,Force_Atk = 35.5,Force_Hp = 106.5}--阎风吒
		}
	},--阎风吒
	[1101012] = {
		Siege = 19,
		Tanlent_Ids = {10,11,12},
		Card_Cost = 6,
		DominanceLv = {
			[1] = {Id = 551,Force_Atk = 1.6,Force_Hp = 6},--南御夫
			[2] = {Id = 552,Force_Atk = 1.7,Force_Hp = 6.1},--南御夫
			[3] = {Id = 553,Force_Atk = 1.8,Force_Hp = 6.2},--南御夫
			[4] = {Id = 554,Force_Atk = 1.9,Force_Hp = 6.3},--南御夫
			[5] = {Id = 555,Force_Atk = 2,Force_Hp = 6.4},--南御夫
			[6] = {Id = 556,Force_Atk = 2.1,Force_Hp = 6.5},--南御夫
			[7] = {Id = 557,Force_Atk = 2.2,Force_Hp = 6.6},--南御夫
			[8] = {Id = 558,Force_Atk = 2.3,Force_Hp = 6.7},--南御夫
			[9] = {Id = 559,Force_Atk = 2.4,Force_Hp = 6.8},--南御夫
			[10] = {Id = 560,Force_Atk = 2.5,Force_Hp = 7.4},--南御夫
			[11] = {Id = 561,Force_Atk = 2.6,Force_Hp = 7.5},--南御夫
			[12] = {Id = 562,Force_Atk = 2.7,Force_Hp = 7.6},--南御夫
			[13] = {Id = 563,Force_Atk = 2.8,Force_Hp = 8.6},--南御夫
			[14] = {Id = 564,Force_Atk = 2.9,Force_Hp = 8.8},--南御夫
			[15] = {Id = 565,Force_Atk = 3.2,Force_Hp = 9.7},--南御夫
			[16] = {Id = 566,Force_Atk = 3.3,Force_Hp = 9.9},--南御夫
			[17] = {Id = 567,Force_Atk = 3.4,Force_Hp = 10.1},--南御夫
			[18] = {Id = 568,Force_Atk = 3.5,Force_Hp = 11.1},--南御夫
			[19] = {Id = 569,Force_Atk = 3.7,Force_Hp = 11.3},--南御夫
			[20] = {Id = 570,Force_Atk = 3.7,Force_Hp = 11.5},--南御夫
			[21] = {Id = 571,Force_Atk = 3.8,Force_Hp = 11.6},--南御夫
			[22] = {Id = 572,Force_Atk = 3.9,Force_Hp = 11.7},--南御夫
			[23] = {Id = 573,Force_Atk = 4.4,Force_Hp = 13.2},--南御夫
			[24] = {Id = 574,Force_Atk = 4.5,Force_Hp = 13.7},--南御夫
			[25] = {Id = 575,Force_Atk = 5,Force_Hp = 15.1},--南御夫
			[26] = {Id = 576,Force_Atk = 5.3,Force_Hp = 16.1},--南御夫
			[27] = {Id = 577,Force_Atk = 5.6,Force_Hp = 17},--南御夫
			[28] = {Id = 578,Force_Atk = 6,Force_Hp = 18},--南御夫
			[29] = {Id = 579,Force_Atk = 6.5,Force_Hp = 19},--南御夫
			[30] = {Id = 580,Force_Atk = 6.7,Force_Hp = 20.1},--南御夫
			[31] = {Id = 581,Force_Atk = 6.8,Force_Hp = 20.4},--南御夫
			[32] = {Id = 582,Force_Atk = 7.2,Force_Hp = 21.8},--南御夫
			[33] = {Id = 583,Force_Atk = 8.1,Force_Hp = 24.4},--南御夫
			[34] = {Id = 584,Force_Atk = 8.7,Force_Hp = 26.2},--南御夫
			[35] = {Id = 585,Force_Atk = 8.8,Force_Hp = 26.3},--南御夫
			[36] = {Id = 586,Force_Atk = 9.5,Force_Hp = 28.4},--南御夫
			[37] = {Id = 587,Force_Atk = 10.1,Force_Hp = 30.4},--南御夫
			[38] = {Id = 588,Force_Atk = 11.4,Force_Hp = 34.3},--南御夫
			[39] = {Id = 589,Force_Atk = 11.7,Force_Hp = 35},--南御夫
			[40] = {Id = 590,Force_Atk = 12.3,Force_Hp = 36.8},--南御夫
			[41] = {Id = 591,Force_Atk = 12.6,Force_Hp = 38},--南御夫
			[42] = {Id = 592,Force_Atk = 13.6,Force_Hp = 40.8},--南御夫
			[43] = {Id = 593,Force_Atk = 15.4,Force_Hp = 46.2},--南御夫
			[44] = {Id = 594,Force_Atk = 16.6,Force_Hp = 49.8},--南御夫
			[45] = {Id = 595,Force_Atk = 18.2,Force_Hp = 54.5},--南御夫
			[46] = {Id = 596,Force_Atk = 19.7,Force_Hp = 59.2},--南御夫
			[47] = {Id = 597,Force_Atk = 21.2,Force_Hp = 63.7},--南御夫
			[48] = {Id = 598,Force_Atk = 24.1,Force_Hp = 72.2},--南御夫
			[49] = {Id = 599,Force_Atk = 26,Force_Hp = 78},--南御夫
			[50] = {Id = 600,Force_Atk = 27.2,Force_Hp = 81.6}--南御夫
		}
	},--南御夫
	[1101013] = {
		Siege = 55,
		Tanlent_Ids = {13,14,15},
		Card_Cost = 6,
		DominanceLv = {
			[1] = {Id = 601,Force_Atk = 1.6,Force_Hp = 6},--吉拉
			[2] = {Id = 602,Force_Atk = 1.7,Force_Hp = 6.1},--吉拉
			[3] = {Id = 603,Force_Atk = 1.8,Force_Hp = 6.2},--吉拉
			[4] = {Id = 604,Force_Atk = 1.9,Force_Hp = 6.3},--吉拉
			[5] = {Id = 605,Force_Atk = 2,Force_Hp = 6.4},--吉拉
			[6] = {Id = 606,Force_Atk = 2.1,Force_Hp = 6.5},--吉拉
			[7] = {Id = 607,Force_Atk = 2.2,Force_Hp = 6.6},--吉拉
			[8] = {Id = 608,Force_Atk = 2.3,Force_Hp = 6.7},--吉拉
			[9] = {Id = 609,Force_Atk = 2.4,Force_Hp = 6.8},--吉拉
			[10] = {Id = 610,Force_Atk = 2.5,Force_Hp = 7.4},--吉拉
			[11] = {Id = 611,Force_Atk = 2.6,Force_Hp = 7.5},--吉拉
			[12] = {Id = 612,Force_Atk = 2.7,Force_Hp = 7.6},--吉拉
			[13] = {Id = 613,Force_Atk = 2.8,Force_Hp = 8.6},--吉拉
			[14] = {Id = 614,Force_Atk = 2.9,Force_Hp = 8.8},--吉拉
			[15] = {Id = 615,Force_Atk = 3.2,Force_Hp = 9.7},--吉拉
			[16] = {Id = 616,Force_Atk = 3.3,Force_Hp = 9.9},--吉拉
			[17] = {Id = 617,Force_Atk = 3.4,Force_Hp = 10.1},--吉拉
			[18] = {Id = 618,Force_Atk = 3.5,Force_Hp = 11.1},--吉拉
			[19] = {Id = 619,Force_Atk = 3.7,Force_Hp = 11.3},--吉拉
			[20] = {Id = 620,Force_Atk = 3.7,Force_Hp = 11.5},--吉拉
			[21] = {Id = 621,Force_Atk = 3.8,Force_Hp = 11.6},--吉拉
			[22] = {Id = 622,Force_Atk = 3.9,Force_Hp = 11.7},--吉拉
			[23] = {Id = 623,Force_Atk = 4.4,Force_Hp = 13.2},--吉拉
			[24] = {Id = 624,Force_Atk = 4.5,Force_Hp = 13.7},--吉拉
			[25] = {Id = 625,Force_Atk = 5,Force_Hp = 15.1},--吉拉
			[26] = {Id = 626,Force_Atk = 5.3,Force_Hp = 16.1},--吉拉
			[27] = {Id = 627,Force_Atk = 5.6,Force_Hp = 17},--吉拉
			[28] = {Id = 628,Force_Atk = 6,Force_Hp = 18},--吉拉
			[29] = {Id = 629,Force_Atk = 6.5,Force_Hp = 19},--吉拉
			[30] = {Id = 630,Force_Atk = 6.7,Force_Hp = 20.1},--吉拉
			[31] = {Id = 631,Force_Atk = 6.8,Force_Hp = 20.4},--吉拉
			[32] = {Id = 632,Force_Atk = 7.2,Force_Hp = 21.8},--吉拉
			[33] = {Id = 633,Force_Atk = 8.1,Force_Hp = 24.4},--吉拉
			[34] = {Id = 634,Force_Atk = 8.7,Force_Hp = 26.2},--吉拉
			[35] = {Id = 635,Force_Atk = 8.8,Force_Hp = 26.3},--吉拉
			[36] = {Id = 636,Force_Atk = 9.5,Force_Hp = 28.4},--吉拉
			[37] = {Id = 637,Force_Atk = 10.1,Force_Hp = 30.4},--吉拉
			[38] = {Id = 638,Force_Atk = 11.4,Force_Hp = 34.3},--吉拉
			[39] = {Id = 639,Force_Atk = 11.7,Force_Hp = 35},--吉拉
			[40] = {Id = 640,Force_Atk = 12.3,Force_Hp = 36.8},--吉拉
			[41] = {Id = 641,Force_Atk = 12.6,Force_Hp = 38},--吉拉
			[42] = {Id = 642,Force_Atk = 13.6,Force_Hp = 40.8},--吉拉
			[43] = {Id = 643,Force_Atk = 15.4,Force_Hp = 46.2},--吉拉
			[44] = {Id = 644,Force_Atk = 16.6,Force_Hp = 49.8},--吉拉
			[45] = {Id = 645,Force_Atk = 18.2,Force_Hp = 54.5},--吉拉
			[46] = {Id = 646,Force_Atk = 19.7,Force_Hp = 59.2},--吉拉
			[47] = {Id = 647,Force_Atk = 21.2,Force_Hp = 63.7},--吉拉
			[48] = {Id = 648,Force_Atk = 24.1,Force_Hp = 72.2},--吉拉
			[49] = {Id = 649,Force_Atk = 26,Force_Hp = 78},--吉拉
			[50] = {Id = 650,Force_Atk = 27.2,Force_Hp = 81.6}--吉拉
		}
	},--吉拉
	[1101014] = {
		Siege = 40,
		Tanlent_Ids = {16,17,18},
		Card_Cost = 7,
		DominanceLv = {
			[1] = {Id = 651,Force_Atk = 2.1,Force_Hp = 7.2},--吕仙宫
			[2] = {Id = 652,Force_Atk = 2.2,Force_Hp = 7.3},--吕仙宫
			[3] = {Id = 653,Force_Atk = 2.3,Force_Hp = 7.4},--吕仙宫
			[4] = {Id = 654,Force_Atk = 2.4,Force_Hp = 7.5},--吕仙宫
			[5] = {Id = 655,Force_Atk = 2.5,Force_Hp = 7.6},--吕仙宫
			[6] = {Id = 656,Force_Atk = 2.6,Force_Hp = 7.7},--吕仙宫
			[7] = {Id = 657,Force_Atk = 2.7,Force_Hp = 7.8},--吕仙宫
			[8] = {Id = 658,Force_Atk = 2.8,Force_Hp = 7.9},--吕仙宫
			[9] = {Id = 659,Force_Atk = 2.9,Force_Hp = 8},--吕仙宫
			[10] = {Id = 660,Force_Atk = 3,Force_Hp = 8.3},--吕仙宫
			[11] = {Id = 661,Force_Atk = 3.1,Force_Hp = 8.5},--吕仙宫
			[12] = {Id = 662,Force_Atk = 3.2,Force_Hp = 8.6},--吕仙宫
			[13] = {Id = 663,Force_Atk = 3.3,Force_Hp = 9.7},--吕仙宫
			[14] = {Id = 664,Force_Atk = 3.4,Force_Hp = 9.9},--吕仙宫
			[15] = {Id = 665,Force_Atk = 3.6,Force_Hp = 11},--吕仙宫
			[16] = {Id = 666,Force_Atk = 3.7,Force_Hp = 11.2},--吕仙宫
			[17] = {Id = 667,Force_Atk = 3.8,Force_Hp = 11.4},--吕仙宫
			[18] = {Id = 668,Force_Atk = 4.1,Force_Hp = 12},--吕仙宫
			[19] = {Id = 669,Force_Atk = 4.2,Force_Hp = 12.4},--吕仙宫
			[20] = {Id = 670,Force_Atk = 4.3,Force_Hp = 12.6},--吕仙宫
			[21] = {Id = 671,Force_Atk = 4.5,Force_Hp = 12.8},--吕仙宫
			[22] = {Id = 672,Force_Atk = 4.6,Force_Hp = 13.2},--吕仙宫
			[23] = {Id = 673,Force_Atk = 4.9,Force_Hp = 14.9},--吕仙宫
			[24] = {Id = 674,Force_Atk = 5.1,Force_Hp = 15.5},--吕仙宫
			[25] = {Id = 675,Force_Atk = 5.7,Force_Hp = 17.1},--吕仙宫
			[26] = {Id = 676,Force_Atk = 6,Force_Hp = 18.2},--吕仙宫
			[27] = {Id = 677,Force_Atk = 6.4,Force_Hp = 19.2},--吕仙宫
			[28] = {Id = 678,Force_Atk = 6.8,Force_Hp = 20},--吕仙宫
			[29] = {Id = 679,Force_Atk = 7.2,Force_Hp = 21.5},--吕仙宫
			[30] = {Id = 680,Force_Atk = 7.5,Force_Hp = 22.7},--吕仙宫
			[31] = {Id = 681,Force_Atk = 7.7,Force_Hp = 23.1},--吕仙宫
			[32] = {Id = 682,Force_Atk = 8.2,Force_Hp = 24.6},--吕仙宫
			[33] = {Id = 683,Force_Atk = 9.2,Force_Hp = 27.6},--吕仙宫
			[34] = {Id = 684,Force_Atk = 9.8,Force_Hp = 29.6},--吕仙宫
			[35] = {Id = 685,Force_Atk = 9.9,Force_Hp = 29.8},--吕仙宫
			[36] = {Id = 686,Force_Atk = 10.7,Force_Hp = 32.1},--吕仙宫
			[37] = {Id = 687,Force_Atk = 11.4,Force_Hp = 34.4},--吕仙宫
			[38] = {Id = 688,Force_Atk = 12.9,Force_Hp = 38.7},--吕仙宫
			[39] = {Id = 689,Force_Atk = 13.2,Force_Hp = 39.6},--吕仙宫
			[40] = {Id = 690,Force_Atk = 13.9,Force_Hp = 41.6},--吕仙宫
			[41] = {Id = 691,Force_Atk = 14.3,Force_Hp = 42.9},--吕仙宫
			[42] = {Id = 692,Force_Atk = 15.4,Force_Hp = 46.1},--吕仙宫
			[43] = {Id = 693,Force_Atk = 17.4,Force_Hp = 52.2},--吕仙宫
			[44] = {Id = 694,Force_Atk = 18.8,Force_Hp = 56.3},--吕仙宫
			[45] = {Id = 695,Force_Atk = 20.5,Force_Hp = 61.7},--吕仙宫
			[46] = {Id = 696,Force_Atk = 22.3,Force_Hp = 66.9},--吕仙宫
			[47] = {Id = 697,Force_Atk = 24,Force_Hp = 72},--吕仙宫
			[48] = {Id = 698,Force_Atk = 27.2,Force_Hp = 81.6},--吕仙宫
			[49] = {Id = 699,Force_Atk = 29.4,Force_Hp = 88.2},--吕仙宫
			[50] = {Id = 700,Force_Atk = 30.8,Force_Hp = 92.3}--吕仙宫
		}
	},--吕仙宫
	[1101015] = {
		Siege = 76,
		Tanlent_Ids = {21,22,12},
		Card_Cost = 6,
		DominanceLv = {
			[1] = {Id = 701,Force_Atk = 1.6,Force_Hp = 6},--阎巧巧
			[2] = {Id = 702,Force_Atk = 1.7,Force_Hp = 6.1},--阎巧巧
			[3] = {Id = 703,Force_Atk = 1.8,Force_Hp = 6.2},--阎巧巧
			[4] = {Id = 704,Force_Atk = 1.9,Force_Hp = 6.3},--阎巧巧
			[5] = {Id = 705,Force_Atk = 2,Force_Hp = 6.4},--阎巧巧
			[6] = {Id = 706,Force_Atk = 2.1,Force_Hp = 6.5},--阎巧巧
			[7] = {Id = 707,Force_Atk = 2.2,Force_Hp = 6.6},--阎巧巧
			[8] = {Id = 708,Force_Atk = 2.3,Force_Hp = 6.7},--阎巧巧
			[9] = {Id = 709,Force_Atk = 2.4,Force_Hp = 6.8},--阎巧巧
			[10] = {Id = 710,Force_Atk = 2.5,Force_Hp = 7.4},--阎巧巧
			[11] = {Id = 711,Force_Atk = 2.6,Force_Hp = 7.5},--阎巧巧
			[12] = {Id = 712,Force_Atk = 2.7,Force_Hp = 7.6},--阎巧巧
			[13] = {Id = 713,Force_Atk = 2.8,Force_Hp = 8.6},--阎巧巧
			[14] = {Id = 714,Force_Atk = 2.9,Force_Hp = 8.8},--阎巧巧
			[15] = {Id = 715,Force_Atk = 3.2,Force_Hp = 9.7},--阎巧巧
			[16] = {Id = 716,Force_Atk = 3.3,Force_Hp = 9.9},--阎巧巧
			[17] = {Id = 717,Force_Atk = 3.4,Force_Hp = 10.1},--阎巧巧
			[18] = {Id = 718,Force_Atk = 3.5,Force_Hp = 11.1},--阎巧巧
			[19] = {Id = 719,Force_Atk = 3.7,Force_Hp = 11.3},--阎巧巧
			[20] = {Id = 720,Force_Atk = 3.7,Force_Hp = 11.5},--阎巧巧
			[21] = {Id = 721,Force_Atk = 3.8,Force_Hp = 11.6},--阎巧巧
			[22] = {Id = 722,Force_Atk = 3.9,Force_Hp = 11.7},--阎巧巧
			[23] = {Id = 723,Force_Atk = 4.4,Force_Hp = 13.2},--阎巧巧
			[24] = {Id = 724,Force_Atk = 4.5,Force_Hp = 13.7},--阎巧巧
			[25] = {Id = 725,Force_Atk = 5,Force_Hp = 15.1},--阎巧巧
			[26] = {Id = 726,Force_Atk = 5.3,Force_Hp = 16.1},--阎巧巧
			[27] = {Id = 727,Force_Atk = 5.6,Force_Hp = 17},--阎巧巧
			[28] = {Id = 728,Force_Atk = 6,Force_Hp = 18},--阎巧巧
			[29] = {Id = 729,Force_Atk = 6.5,Force_Hp = 19},--阎巧巧
			[30] = {Id = 730,Force_Atk = 6.7,Force_Hp = 20.1},--阎巧巧
			[31] = {Id = 731,Force_Atk = 6.8,Force_Hp = 20.4},--阎巧巧
			[32] = {Id = 732,Force_Atk = 7.2,Force_Hp = 21.8},--阎巧巧
			[33] = {Id = 733,Force_Atk = 8.1,Force_Hp = 24.4},--阎巧巧
			[34] = {Id = 734,Force_Atk = 8.7,Force_Hp = 26.2},--阎巧巧
			[35] = {Id = 735,Force_Atk = 8.8,Force_Hp = 26.3},--阎巧巧
			[36] = {Id = 736,Force_Atk = 9.5,Force_Hp = 28.4},--阎巧巧
			[37] = {Id = 737,Force_Atk = 10.1,Force_Hp = 30.4},--阎巧巧
			[38] = {Id = 738,Force_Atk = 11.4,Force_Hp = 34.3},--阎巧巧
			[39] = {Id = 739,Force_Atk = 11.7,Force_Hp = 35},--阎巧巧
			[40] = {Id = 740,Force_Atk = 12.3,Force_Hp = 36.8},--阎巧巧
			[41] = {Id = 741,Force_Atk = 12.6,Force_Hp = 38},--阎巧巧
			[42] = {Id = 742,Force_Atk = 13.6,Force_Hp = 40.8},--阎巧巧
			[43] = {Id = 743,Force_Atk = 15.4,Force_Hp = 46.2},--阎巧巧
			[44] = {Id = 744,Force_Atk = 16.6,Force_Hp = 49.8},--阎巧巧
			[45] = {Id = 745,Force_Atk = 18.2,Force_Hp = 54.5},--阎巧巧
			[46] = {Id = 746,Force_Atk = 19.7,Force_Hp = 59.2},--阎巧巧
			[47] = {Id = 747,Force_Atk = 21.2,Force_Hp = 63.7},--阎巧巧
			[48] = {Id = 748,Force_Atk = 24.1,Force_Hp = 72.2},--阎巧巧
			[49] = {Id = 749,Force_Atk = 26,Force_Hp = 78},--阎巧巧
			[50] = {Id = 750,Force_Atk = 27.2,Force_Hp = 81.6}--阎巧巧
		}
	},--阎巧巧
	[1101016] = {
		Siege = 68,
		Tanlent_Ids = {31,25,23},
		Card_Cost = 8,
		DominanceLv = {
			[1] = {Id = 801,Force_Atk = 2.7,Force_Hp = 8.1},--秦王攻
			[2] = {Id = 802,Force_Atk = 2.8,Force_Hp = 8.3},--秦王攻
			[3] = {Id = 803,Force_Atk = 2.9,Force_Hp = 8.5},--秦王攻
			[4] = {Id = 804,Force_Atk = 3,Force_Hp = 8.7},--秦王攻
			[5] = {Id = 805,Force_Atk = 3.1,Force_Hp = 8.9},--秦王攻
			[6] = {Id = 806,Force_Atk = 3.2,Force_Hp = 9.1},--秦王攻
			[7] = {Id = 807,Force_Atk = 3.3,Force_Hp = 9.3},--秦王攻
			[8] = {Id = 808,Force_Atk = 3.4,Force_Hp = 9.5},--秦王攻
			[9] = {Id = 809,Force_Atk = 3.5,Force_Hp = 9.7},--秦王攻
			[10] = {Id = 810,Force_Atk = 3.6,Force_Hp = 9.9},--秦王攻
			[11] = {Id = 811,Force_Atk = 3.7,Force_Hp = 10.1},--秦王攻
			[12] = {Id = 812,Force_Atk = 3.8,Force_Hp = 10.3},--秦王攻
			[13] = {Id = 813,Force_Atk = 3.9,Force_Hp = 11.2},--秦王攻
			[14] = {Id = 814,Force_Atk = 4,Force_Hp = 11.4},--秦王攻
			[15] = {Id = 815,Force_Atk = 4.2,Force_Hp = 12.7},--秦王攻
			[16] = {Id = 816,Force_Atk = 4.3,Force_Hp = 13},--秦王攻
			[17] = {Id = 817,Force_Atk = 4.4,Force_Hp = 13.2},--秦王攻
			[18] = {Id = 818,Force_Atk = 4.6,Force_Hp = 14},--秦王攻
			[19] = {Id = 819,Force_Atk = 4.7,Force_Hp = 14.3},--秦王攻
			[20] = {Id = 820,Force_Atk = 4.8,Force_Hp = 14.5},--秦王攻
			[21] = {Id = 821,Force_Atk = 4.9,Force_Hp = 14.8},--秦王攻
			[22] = {Id = 822,Force_Atk = 5,Force_Hp = 15.2},--秦王攻
			[23] = {Id = 823,Force_Atk = 5.7,Force_Hp = 17.2},--秦王攻
			[24] = {Id = 824,Force_Atk = 5.9,Force_Hp = 17.8},--秦王攻
			[25] = {Id = 825,Force_Atk = 6.6,Force_Hp = 19.7},--秦王攻
			[26] = {Id = 826,Force_Atk = 7,Force_Hp = 21},--秦王攻
			[27] = {Id = 827,Force_Atk = 7.4,Force_Hp = 22.2},--秦王攻
			[28] = {Id = 828,Force_Atk = 8.2,Force_Hp = 24},--秦王攻
			[29] = {Id = 829,Force_Atk = 8.5,Force_Hp = 24.8},--秦王攻
			[30] = {Id = 830,Force_Atk = 8.7,Force_Hp = 26},--秦王攻
			[31] = {Id = 831,Force_Atk = 8.9,Force_Hp = 26.7},--秦王攻
			[32] = {Id = 832,Force_Atk = 9.4,Force_Hp = 28.4},--秦王攻
			[33] = {Id = 833,Force_Atk = 10.6,Force_Hp = 31.9},--秦王攻
			[34] = {Id = 834,Force_Atk = 11.4,Force_Hp = 34.1},--秦王攻
			[35] = {Id = 835,Force_Atk = 11.8,Force_Hp = 35},--秦王攻
			[36] = {Id = 836,Force_Atk = 12.3,Force_Hp = 37.1},--秦王攻
			[37] = {Id = 837,Force_Atk = 13.2,Force_Hp = 39.7},--秦王攻
			[38] = {Id = 838,Force_Atk = 14.9,Force_Hp = 44.7},--秦王攻
			[39] = {Id = 839,Force_Atk = 15.2,Force_Hp = 45.7},--秦王攻
			[40] = {Id = 840,Force_Atk = 16,Force_Hp = 48.1},--秦王攻
			[41] = {Id = 841,Force_Atk = 16.5,Force_Hp = 49.5},--秦王攻
			[42] = {Id = 842,Force_Atk = 17.7,Force_Hp = 53.2},--秦王攻
			[43] = {Id = 843,Force_Atk = 20.1,Force_Hp = 60.2},--秦王攻
			[44] = {Id = 844,Force_Atk = 21.7,Force_Hp = 65},--秦王攻
			[45] = {Id = 845,Force_Atk = 23.7,Force_Hp = 71.1},--秦王攻
			[46] = {Id = 846,Force_Atk = 25.7,Force_Hp = 77.2},--秦王攻
			[47] = {Id = 847,Force_Atk = 27.7,Force_Hp = 83.1},--秦王攻
			[48] = {Id = 848,Force_Atk = 31.4,Force_Hp = 94.2},--秦王攻
			[49] = {Id = 849,Force_Atk = 33.9,Force_Hp = 101.8},--秦王攻
			[50] = {Id = 850,Force_Atk = 35.5,Force_Hp = 106.5}--秦王攻
		}
	},--秦王攻
	[1101020] = {
		Siege = 50,
		Tanlent_Ids = {16,14,23},
		Card_Cost = 7,
		DominanceLv = {
			[1] = {Id = 851,Force_Atk = 2.1,Force_Hp = 7.2},--姬烟华
			[2] = {Id = 852,Force_Atk = 2.2,Force_Hp = 7.3},--姬烟华
			[3] = {Id = 853,Force_Atk = 2.3,Force_Hp = 7.4},--姬烟华
			[4] = {Id = 854,Force_Atk = 2.4,Force_Hp = 7.5},--姬烟华
			[5] = {Id = 855,Force_Atk = 2.5,Force_Hp = 7.6},--姬烟华
			[6] = {Id = 856,Force_Atk = 2.6,Force_Hp = 7.7},--姬烟华
			[7] = {Id = 857,Force_Atk = 2.7,Force_Hp = 7.8},--姬烟华
			[8] = {Id = 858,Force_Atk = 2.8,Force_Hp = 7.9},--姬烟华
			[9] = {Id = 859,Force_Atk = 2.9,Force_Hp = 8},--姬烟华
			[10] = {Id = 860,Force_Atk = 3,Force_Hp = 8.3},--姬烟华
			[11] = {Id = 861,Force_Atk = 3.1,Force_Hp = 8.5},--姬烟华
			[12] = {Id = 862,Force_Atk = 3.2,Force_Hp = 8.6},--姬烟华
			[13] = {Id = 863,Force_Atk = 3.3,Force_Hp = 9.7},--姬烟华
			[14] = {Id = 864,Force_Atk = 3.4,Force_Hp = 9.9},--姬烟华
			[15] = {Id = 865,Force_Atk = 3.6,Force_Hp = 11},--姬烟华
			[16] = {Id = 866,Force_Atk = 3.7,Force_Hp = 11.2},--姬烟华
			[17] = {Id = 867,Force_Atk = 3.8,Force_Hp = 11.4},--姬烟华
			[18] = {Id = 868,Force_Atk = 4.1,Force_Hp = 12},--姬烟华
			[19] = {Id = 869,Force_Atk = 4.2,Force_Hp = 12.4},--姬烟华
			[20] = {Id = 870,Force_Atk = 4.3,Force_Hp = 12.6},--姬烟华
			[21] = {Id = 871,Force_Atk = 4.5,Force_Hp = 12.8},--姬烟华
			[22] = {Id = 872,Force_Atk = 4.6,Force_Hp = 13.2},--姬烟华
			[23] = {Id = 873,Force_Atk = 4.9,Force_Hp = 14.9},--姬烟华
			[24] = {Id = 874,Force_Atk = 5.1,Force_Hp = 15.5},--姬烟华
			[25] = {Id = 875,Force_Atk = 5.7,Force_Hp = 17.1},--姬烟华
			[26] = {Id = 876,Force_Atk = 6,Force_Hp = 18.2},--姬烟华
			[27] = {Id = 877,Force_Atk = 6.4,Force_Hp = 19.2},--姬烟华
			[28] = {Id = 878,Force_Atk = 6.8,Force_Hp = 20},--姬烟华
			[29] = {Id = 879,Force_Atk = 7.2,Force_Hp = 21.5},--姬烟华
			[30] = {Id = 880,Force_Atk = 7.5,Force_Hp = 22.7},--姬烟华
			[31] = {Id = 881,Force_Atk = 7.7,Force_Hp = 23.1},--姬烟华
			[32] = {Id = 882,Force_Atk = 8.2,Force_Hp = 24.6},--姬烟华
			[33] = {Id = 883,Force_Atk = 9.2,Force_Hp = 27.6},--姬烟华
			[34] = {Id = 884,Force_Atk = 9.8,Force_Hp = 29.6},--姬烟华
			[35] = {Id = 885,Force_Atk = 9.9,Force_Hp = 29.8},--姬烟华
			[36] = {Id = 886,Force_Atk = 10.7,Force_Hp = 32.1},--姬烟华
			[37] = {Id = 887,Force_Atk = 11.4,Force_Hp = 34.4},--姬烟华
			[38] = {Id = 888,Force_Atk = 12.9,Force_Hp = 38.7},--姬烟华
			[39] = {Id = 889,Force_Atk = 13.2,Force_Hp = 39.6},--姬烟华
			[40] = {Id = 890,Force_Atk = 13.9,Force_Hp = 41.6},--姬烟华
			[41] = {Id = 891,Force_Atk = 14.3,Force_Hp = 42.9},--姬烟华
			[42] = {Id = 892,Force_Atk = 15.4,Force_Hp = 46.1},--姬烟华
			[43] = {Id = 893,Force_Atk = 17.4,Force_Hp = 52.2},--姬烟华
			[44] = {Id = 894,Force_Atk = 18.8,Force_Hp = 56.3},--姬烟华
			[45] = {Id = 895,Force_Atk = 20.5,Force_Hp = 61.7},--姬烟华
			[46] = {Id = 896,Force_Atk = 22.3,Force_Hp = 66.9},--姬烟华
			[47] = {Id = 897,Force_Atk = 24,Force_Hp = 72},--姬烟华
			[48] = {Id = 898,Force_Atk = 27.2,Force_Hp = 81.6},--姬烟华
			[49] = {Id = 899,Force_Atk = 29.4,Force_Hp = 88.2},--姬烟华
			[50] = {Id = 900,Force_Atk = 30.8,Force_Hp = 92.3}--姬烟华
		}
	},--姬烟华
	[1101022] = {
		Siege = 45,
		Tanlent_Ids = {7,22,18},
		Card_Cost = 6,
		DominanceLv = {
			[1] = {Id = 901,Force_Atk = 1.6,Force_Hp = 6},--幻
			[2] = {Id = 902,Force_Atk = 1.7,Force_Hp = 6.1},--幻
			[3] = {Id = 903,Force_Atk = 1.8,Force_Hp = 6.2},--幻
			[4] = {Id = 904,Force_Atk = 1.9,Force_Hp = 6.3},--幻
			[5] = {Id = 905,Force_Atk = 2,Force_Hp = 6.4},--幻
			[6] = {Id = 906,Force_Atk = 2.1,Force_Hp = 6.5},--幻
			[7] = {Id = 907,Force_Atk = 2.2,Force_Hp = 6.6},--幻
			[8] = {Id = 908,Force_Atk = 2.3,Force_Hp = 6.7},--幻
			[9] = {Id = 909,Force_Atk = 2.4,Force_Hp = 6.8},--幻
			[10] = {Id = 910,Force_Atk = 2.5,Force_Hp = 7.4},--幻
			[11] = {Id = 911,Force_Atk = 2.6,Force_Hp = 7.5},--幻
			[12] = {Id = 912,Force_Atk = 2.7,Force_Hp = 7.6},--幻
			[13] = {Id = 913,Force_Atk = 2.8,Force_Hp = 8.6},--幻
			[14] = {Id = 914,Force_Atk = 2.9,Force_Hp = 8.8},--幻
			[15] = {Id = 915,Force_Atk = 3.2,Force_Hp = 9.7},--幻
			[16] = {Id = 916,Force_Atk = 3.3,Force_Hp = 9.9},--幻
			[17] = {Id = 917,Force_Atk = 3.4,Force_Hp = 10.1},--幻
			[18] = {Id = 918,Force_Atk = 3.5,Force_Hp = 11.1},--幻
			[19] = {Id = 919,Force_Atk = 3.7,Force_Hp = 11.3},--幻
			[20] = {Id = 920,Force_Atk = 3.7,Force_Hp = 11.5},--幻
			[21] = {Id = 921,Force_Atk = 3.8,Force_Hp = 11.6},--幻
			[22] = {Id = 922,Force_Atk = 3.9,Force_Hp = 11.7},--幻
			[23] = {Id = 923,Force_Atk = 4.4,Force_Hp = 13.2},--幻
			[24] = {Id = 924,Force_Atk = 4.5,Force_Hp = 13.7},--幻
			[25] = {Id = 925,Force_Atk = 5,Force_Hp = 15.1},--幻
			[26] = {Id = 926,Force_Atk = 5.3,Force_Hp = 16.1},--幻
			[27] = {Id = 927,Force_Atk = 5.6,Force_Hp = 17},--幻
			[28] = {Id = 928,Force_Atk = 6,Force_Hp = 18},--幻
			[29] = {Id = 929,Force_Atk = 6.5,Force_Hp = 19},--幻
			[30] = {Id = 930,Force_Atk = 6.7,Force_Hp = 20.1},--幻
			[31] = {Id = 931,Force_Atk = 6.8,Force_Hp = 20.4},--幻
			[32] = {Id = 932,Force_Atk = 7.2,Force_Hp = 21.8},--幻
			[33] = {Id = 933,Force_Atk = 8.1,Force_Hp = 24.4},--幻
			[34] = {Id = 934,Force_Atk = 8.7,Force_Hp = 26.2},--幻
			[35] = {Id = 935,Force_Atk = 8.8,Force_Hp = 26.3},--幻
			[36] = {Id = 936,Force_Atk = 9.5,Force_Hp = 28.4},--幻
			[37] = {Id = 937,Force_Atk = 10.1,Force_Hp = 30.4},--幻
			[38] = {Id = 938,Force_Atk = 11.4,Force_Hp = 34.3},--幻
			[39] = {Id = 939,Force_Atk = 11.7,Force_Hp = 35},--幻
			[40] = {Id = 940,Force_Atk = 12.3,Force_Hp = 36.8},--幻
			[41] = {Id = 941,Force_Atk = 12.6,Force_Hp = 38},--幻
			[42] = {Id = 942,Force_Atk = 13.6,Force_Hp = 40.8},--幻
			[43] = {Id = 943,Force_Atk = 15.4,Force_Hp = 46.2},--幻
			[44] = {Id = 944,Force_Atk = 16.6,Force_Hp = 49.8},--幻
			[45] = {Id = 945,Force_Atk = 18.2,Force_Hp = 54.5},--幻
			[46] = {Id = 946,Force_Atk = 19.7,Force_Hp = 59.2},--幻
			[47] = {Id = 947,Force_Atk = 21.2,Force_Hp = 63.7},--幻
			[48] = {Id = 948,Force_Atk = 24.1,Force_Hp = 72.2},--幻
			[49] = {Id = 949,Force_Atk = 26,Force_Hp = 78},--幻
			[50] = {Id = 950,Force_Atk = 27.2,Force_Hp = 81.6}--幻
		}
	},--幻
	[1101023] = {
		Siege = 48,
		Tanlent_Ids = {13,25,12},
		Card_Cost = 7,
		DominanceLv = {
			[1] = {Id = 951,Force_Atk = 2.1,Force_Hp = 7.2},--朱童
			[2] = {Id = 952,Force_Atk = 2.2,Force_Hp = 7.3},--朱童
			[3] = {Id = 953,Force_Atk = 2.3,Force_Hp = 7.4},--朱童
			[4] = {Id = 954,Force_Atk = 2.4,Force_Hp = 7.5},--朱童
			[5] = {Id = 955,Force_Atk = 2.5,Force_Hp = 7.6},--朱童
			[6] = {Id = 956,Force_Atk = 2.6,Force_Hp = 7.7},--朱童
			[7] = {Id = 957,Force_Atk = 2.7,Force_Hp = 7.8},--朱童
			[8] = {Id = 958,Force_Atk = 2.8,Force_Hp = 7.9},--朱童
			[9] = {Id = 959,Force_Atk = 2.9,Force_Hp = 8},--朱童
			[10] = {Id = 960,Force_Atk = 3,Force_Hp = 8.3},--朱童
			[11] = {Id = 961,Force_Atk = 3.1,Force_Hp = 8.5},--朱童
			[12] = {Id = 962,Force_Atk = 3.2,Force_Hp = 8.6},--朱童
			[13] = {Id = 963,Force_Atk = 3.3,Force_Hp = 9.7},--朱童
			[14] = {Id = 964,Force_Atk = 3.4,Force_Hp = 9.9},--朱童
			[15] = {Id = 965,Force_Atk = 3.6,Force_Hp = 11},--朱童
			[16] = {Id = 966,Force_Atk = 3.7,Force_Hp = 11.2},--朱童
			[17] = {Id = 967,Force_Atk = 3.8,Force_Hp = 11.4},--朱童
			[18] = {Id = 968,Force_Atk = 4.1,Force_Hp = 12},--朱童
			[19] = {Id = 969,Force_Atk = 4.2,Force_Hp = 12.4},--朱童
			[20] = {Id = 970,Force_Atk = 4.3,Force_Hp = 12.6},--朱童
			[21] = {Id = 971,Force_Atk = 4.5,Force_Hp = 12.8},--朱童
			[22] = {Id = 972,Force_Atk = 4.6,Force_Hp = 13.2},--朱童
			[23] = {Id = 973,Force_Atk = 4.9,Force_Hp = 14.9},--朱童
			[24] = {Id = 974,Force_Atk = 5.1,Force_Hp = 15.5},--朱童
			[25] = {Id = 975,Force_Atk = 5.7,Force_Hp = 17.1},--朱童
			[26] = {Id = 976,Force_Atk = 6,Force_Hp = 18.2},--朱童
			[27] = {Id = 977,Force_Atk = 6.4,Force_Hp = 19.2},--朱童
			[28] = {Id = 978,Force_Atk = 6.8,Force_Hp = 20},--朱童
			[29] = {Id = 979,Force_Atk = 7.2,Force_Hp = 21.5},--朱童
			[30] = {Id = 980,Force_Atk = 7.5,Force_Hp = 22.7},--朱童
			[31] = {Id = 981,Force_Atk = 7.7,Force_Hp = 23.1},--朱童
			[32] = {Id = 982,Force_Atk = 8.2,Force_Hp = 24.6},--朱童
			[33] = {Id = 983,Force_Atk = 9.2,Force_Hp = 27.6},--朱童
			[34] = {Id = 984,Force_Atk = 9.8,Force_Hp = 29.6},--朱童
			[35] = {Id = 985,Force_Atk = 9.9,Force_Hp = 29.8},--朱童
			[36] = {Id = 986,Force_Atk = 10.7,Force_Hp = 32.1},--朱童
			[37] = {Id = 987,Force_Atk = 11.4,Force_Hp = 34.4},--朱童
			[38] = {Id = 988,Force_Atk = 12.9,Force_Hp = 38.7},--朱童
			[39] = {Id = 989,Force_Atk = 13.2,Force_Hp = 39.6},--朱童
			[40] = {Id = 990,Force_Atk = 13.9,Force_Hp = 41.6},--朱童
			[41] = {Id = 991,Force_Atk = 14.3,Force_Hp = 42.9},--朱童
			[42] = {Id = 992,Force_Atk = 15.4,Force_Hp = 46.1},--朱童
			[43] = {Id = 993,Force_Atk = 17.4,Force_Hp = 52.2},--朱童
			[44] = {Id = 994,Force_Atk = 18.8,Force_Hp = 56.3},--朱童
			[45] = {Id = 995,Force_Atk = 20.5,Force_Hp = 61.7},--朱童
			[46] = {Id = 996,Force_Atk = 22.3,Force_Hp = 66.9},--朱童
			[47] = {Id = 997,Force_Atk = 24,Force_Hp = 72},--朱童
			[48] = {Id = 998,Force_Atk = 27.2,Force_Hp = 81.6},--朱童
			[49] = {Id = 999,Force_Atk = 29.4,Force_Hp = 88.2},--朱童
			[50] = {Id = 1000,Force_Atk = 30.8,Force_Hp = 92.3}--朱童
		}
	},--朱童
	[1101026] = {
		Siege = 70,
		Tanlent_Ids = {21,25,23},
		Card_Cost = 8,
		DominanceLv = {
			[1] = {Id = 1001,Force_Atk = 2.7,Force_Hp = 8.1},--貂灵芸
			[2] = {Id = 1002,Force_Atk = 2.8,Force_Hp = 8.3},--貂灵芸
			[3] = {Id = 1003,Force_Atk = 2.9,Force_Hp = 8.5},--貂灵芸
			[4] = {Id = 1004,Force_Atk = 3,Force_Hp = 8.7},--貂灵芸
			[5] = {Id = 1005,Force_Atk = 3.1,Force_Hp = 8.9},--貂灵芸
			[6] = {Id = 1006,Force_Atk = 3.2,Force_Hp = 9.1},--貂灵芸
			[7] = {Id = 1007,Force_Atk = 3.3,Force_Hp = 9.3},--貂灵芸
			[8] = {Id = 1008,Force_Atk = 3.4,Force_Hp = 9.5},--貂灵芸
			[9] = {Id = 1009,Force_Atk = 3.5,Force_Hp = 9.7},--貂灵芸
			[10] = {Id = 1010,Force_Atk = 3.6,Force_Hp = 9.9},--貂灵芸
			[11] = {Id = 1011,Force_Atk = 3.7,Force_Hp = 10.1},--貂灵芸
			[12] = {Id = 1012,Force_Atk = 3.8,Force_Hp = 10.3},--貂灵芸
			[13] = {Id = 1013,Force_Atk = 3.9,Force_Hp = 11.2},--貂灵芸
			[14] = {Id = 1014,Force_Atk = 4,Force_Hp = 11.4},--貂灵芸
			[15] = {Id = 1015,Force_Atk = 4.2,Force_Hp = 12.7},--貂灵芸
			[16] = {Id = 1016,Force_Atk = 4.3,Force_Hp = 13},--貂灵芸
			[17] = {Id = 1017,Force_Atk = 4.4,Force_Hp = 13.2},--貂灵芸
			[18] = {Id = 1018,Force_Atk = 4.6,Force_Hp = 14},--貂灵芸
			[19] = {Id = 1019,Force_Atk = 4.7,Force_Hp = 14.3},--貂灵芸
			[20] = {Id = 1020,Force_Atk = 4.8,Force_Hp = 14.5},--貂灵芸
			[21] = {Id = 1021,Force_Atk = 4.9,Force_Hp = 14.8},--貂灵芸
			[22] = {Id = 1022,Force_Atk = 5,Force_Hp = 15.2},--貂灵芸
			[23] = {Id = 1023,Force_Atk = 5.7,Force_Hp = 17.2},--貂灵芸
			[24] = {Id = 1024,Force_Atk = 5.9,Force_Hp = 17.8},--貂灵芸
			[25] = {Id = 1025,Force_Atk = 6.6,Force_Hp = 19.7},--貂灵芸
			[26] = {Id = 1026,Force_Atk = 7,Force_Hp = 21},--貂灵芸
			[27] = {Id = 1027,Force_Atk = 7.4,Force_Hp = 22.2},--貂灵芸
			[28] = {Id = 1028,Force_Atk = 8.2,Force_Hp = 24},--貂灵芸
			[29] = {Id = 1029,Force_Atk = 8.5,Force_Hp = 24.8},--貂灵芸
			[30] = {Id = 1030,Force_Atk = 8.7,Force_Hp = 26},--貂灵芸
			[31] = {Id = 1031,Force_Atk = 8.9,Force_Hp = 26.7},--貂灵芸
			[32] = {Id = 1032,Force_Atk = 9.4,Force_Hp = 28.4},--貂灵芸
			[33] = {Id = 1033,Force_Atk = 10.6,Force_Hp = 31.9},--貂灵芸
			[34] = {Id = 1034,Force_Atk = 11.4,Force_Hp = 34.1},--貂灵芸
			[35] = {Id = 1035,Force_Atk = 11.8,Force_Hp = 35},--貂灵芸
			[36] = {Id = 1036,Force_Atk = 12.3,Force_Hp = 37.1},--貂灵芸
			[37] = {Id = 1037,Force_Atk = 13.2,Force_Hp = 39.7},--貂灵芸
			[38] = {Id = 1038,Force_Atk = 14.9,Force_Hp = 44.7},--貂灵芸
			[39] = {Id = 1039,Force_Atk = 15.2,Force_Hp = 45.7},--貂灵芸
			[40] = {Id = 1040,Force_Atk = 16,Force_Hp = 48.1},--貂灵芸
			[41] = {Id = 1041,Force_Atk = 16.5,Force_Hp = 49.5},--貂灵芸
			[42] = {Id = 1042,Force_Atk = 17.7,Force_Hp = 53.2},--貂灵芸
			[43] = {Id = 1043,Force_Atk = 20.1,Force_Hp = 60.2},--貂灵芸
			[44] = {Id = 1044,Force_Atk = 21.7,Force_Hp = 65},--貂灵芸
			[45] = {Id = 1045,Force_Atk = 23.7,Force_Hp = 71.1},--貂灵芸
			[46] = {Id = 1046,Force_Atk = 25.7,Force_Hp = 77.2},--貂灵芸
			[47] = {Id = 1047,Force_Atk = 27.7,Force_Hp = 83.1},--貂灵芸
			[48] = {Id = 1048,Force_Atk = 31.4,Force_Hp = 94.2},--貂灵芸
			[49] = {Id = 1049,Force_Atk = 33.9,Force_Hp = 101.8},--貂灵芸
			[50] = {Id = 1050,Force_Atk = 35.5,Force_Hp = 106.5}--貂灵芸
		}
	},--貂灵芸
	[1101030] = {
		Siege = 58,
		Tanlent_Ids = {13,14,15},
		Card_Cost = 7,
		DominanceLv = {
			[1] = {Id = 1051,Force_Atk = 2.1,Force_Hp = 7.2},--卢天佑
			[2] = {Id = 1052,Force_Atk = 2.2,Force_Hp = 7.3},--卢天佑
			[3] = {Id = 1053,Force_Atk = 2.3,Force_Hp = 7.4},--卢天佑
			[4] = {Id = 1054,Force_Atk = 2.4,Force_Hp = 7.5},--卢天佑
			[5] = {Id = 1055,Force_Atk = 2.5,Force_Hp = 7.6},--卢天佑
			[6] = {Id = 1056,Force_Atk = 2.6,Force_Hp = 7.7},--卢天佑
			[7] = {Id = 1057,Force_Atk = 2.7,Force_Hp = 7.8},--卢天佑
			[8] = {Id = 1058,Force_Atk = 2.8,Force_Hp = 7.9},--卢天佑
			[9] = {Id = 1059,Force_Atk = 2.9,Force_Hp = 8},--卢天佑
			[10] = {Id = 1060,Force_Atk = 3,Force_Hp = 8.3},--卢天佑
			[11] = {Id = 1061,Force_Atk = 3.1,Force_Hp = 8.5},--卢天佑
			[12] = {Id = 1062,Force_Atk = 3.2,Force_Hp = 8.6},--卢天佑
			[13] = {Id = 1063,Force_Atk = 3.3,Force_Hp = 9.7},--卢天佑
			[14] = {Id = 1064,Force_Atk = 3.4,Force_Hp = 9.9},--卢天佑
			[15] = {Id = 1065,Force_Atk = 3.6,Force_Hp = 11},--卢天佑
			[16] = {Id = 1066,Force_Atk = 3.7,Force_Hp = 11.2},--卢天佑
			[17] = {Id = 1067,Force_Atk = 3.8,Force_Hp = 11.4},--卢天佑
			[18] = {Id = 1068,Force_Atk = 4.1,Force_Hp = 12},--卢天佑
			[19] = {Id = 1069,Force_Atk = 4.2,Force_Hp = 12.4},--卢天佑
			[20] = {Id = 1070,Force_Atk = 4.3,Force_Hp = 12.6},--卢天佑
			[21] = {Id = 1071,Force_Atk = 4.5,Force_Hp = 12.8},--卢天佑
			[22] = {Id = 1072,Force_Atk = 4.6,Force_Hp = 13.2},--卢天佑
			[23] = {Id = 1073,Force_Atk = 4.9,Force_Hp = 14.9},--卢天佑
			[24] = {Id = 1074,Force_Atk = 5.1,Force_Hp = 15.5},--卢天佑
			[25] = {Id = 1075,Force_Atk = 5.7,Force_Hp = 17.1},--卢天佑
			[26] = {Id = 1076,Force_Atk = 6,Force_Hp = 18.2},--卢天佑
			[27] = {Id = 1077,Force_Atk = 6.4,Force_Hp = 19.2},--卢天佑
			[28] = {Id = 1078,Force_Atk = 6.8,Force_Hp = 20},--卢天佑
			[29] = {Id = 1079,Force_Atk = 7.2,Force_Hp = 21.5},--卢天佑
			[30] = {Id = 1080,Force_Atk = 7.5,Force_Hp = 22.7},--卢天佑
			[31] = {Id = 1081,Force_Atk = 7.7,Force_Hp = 23.1},--卢天佑
			[32] = {Id = 1082,Force_Atk = 8.2,Force_Hp = 24.6},--卢天佑
			[33] = {Id = 1083,Force_Atk = 9.2,Force_Hp = 27.6},--卢天佑
			[34] = {Id = 1084,Force_Atk = 9.8,Force_Hp = 29.6},--卢天佑
			[35] = {Id = 1085,Force_Atk = 9.9,Force_Hp = 29.8},--卢天佑
			[36] = {Id = 1086,Force_Atk = 10.7,Force_Hp = 32.1},--卢天佑
			[37] = {Id = 1087,Force_Atk = 11.4,Force_Hp = 34.4},--卢天佑
			[38] = {Id = 1088,Force_Atk = 12.9,Force_Hp = 38.7},--卢天佑
			[39] = {Id = 1089,Force_Atk = 13.2,Force_Hp = 39.6},--卢天佑
			[40] = {Id = 1090,Force_Atk = 13.9,Force_Hp = 41.6},--卢天佑
			[41] = {Id = 1091,Force_Atk = 14.3,Force_Hp = 42.9},--卢天佑
			[42] = {Id = 1092,Force_Atk = 15.4,Force_Hp = 46.1},--卢天佑
			[43] = {Id = 1093,Force_Atk = 17.4,Force_Hp = 52.2},--卢天佑
			[44] = {Id = 1094,Force_Atk = 18.8,Force_Hp = 56.3},--卢天佑
			[45] = {Id = 1095,Force_Atk = 20.5,Force_Hp = 61.7},--卢天佑
			[46] = {Id = 1096,Force_Atk = 22.3,Force_Hp = 66.9},--卢天佑
			[47] = {Id = 1097,Force_Atk = 24,Force_Hp = 72},--卢天佑
			[48] = {Id = 1098,Force_Atk = 27.2,Force_Hp = 81.6},--卢天佑
			[49] = {Id = 1099,Force_Atk = 29.4,Force_Hp = 88.2},--卢天佑
			[50] = {Id = 1100,Force_Atk = 30.8,Force_Hp = 92.3}--卢天佑
		}
	},--卢天佑
	[1101042] = {
		Siege = 25,
		Tanlent_Ids = {21,22,12},
		Card_Cost = 6,
		DominanceLv = {
			[1] = {Id = 751,Force_Atk = 1.6,Force_Hp = 6},--都市青年
			[2] = {Id = 752,Force_Atk = 1.7,Force_Hp = 6.1},--都市青年
			[3] = {Id = 753,Force_Atk = 1.8,Force_Hp = 6.2},--都市青年
			[4] = {Id = 754,Force_Atk = 1.9,Force_Hp = 6.3},--都市青年
			[5] = {Id = 755,Force_Atk = 2,Force_Hp = 6.4},--都市青年
			[6] = {Id = 756,Force_Atk = 2.1,Force_Hp = 6.5},--都市青年
			[7] = {Id = 757,Force_Atk = 2.2,Force_Hp = 6.6},--都市青年
			[8] = {Id = 758,Force_Atk = 2.3,Force_Hp = 6.7},--都市青年
			[9] = {Id = 759,Force_Atk = 2.4,Force_Hp = 6.8},--都市青年
			[10] = {Id = 760,Force_Atk = 2.5,Force_Hp = 7.4},--都市青年
			[11] = {Id = 761,Force_Atk = 2.6,Force_Hp = 7.5},--都市青年
			[12] = {Id = 762,Force_Atk = 2.7,Force_Hp = 7.6},--都市青年
			[13] = {Id = 763,Force_Atk = 2.8,Force_Hp = 8.6},--都市青年
			[14] = {Id = 764,Force_Atk = 2.9,Force_Hp = 8.8},--都市青年
			[15] = {Id = 765,Force_Atk = 3.2,Force_Hp = 9.7},--都市青年
			[16] = {Id = 766,Force_Atk = 3.3,Force_Hp = 9.9},--都市青年
			[17] = {Id = 767,Force_Atk = 3.4,Force_Hp = 10.1},--都市青年
			[18] = {Id = 768,Force_Atk = 3.5,Force_Hp = 11.1},--都市青年
			[19] = {Id = 769,Force_Atk = 3.7,Force_Hp = 11.3},--都市青年
			[20] = {Id = 770,Force_Atk = 3.7,Force_Hp = 11.5},--都市青年
			[21] = {Id = 771,Force_Atk = 3.8,Force_Hp = 11.6},--都市青年
			[22] = {Id = 772,Force_Atk = 3.9,Force_Hp = 11.7},--都市青年
			[23] = {Id = 773,Force_Atk = 4.4,Force_Hp = 13.2},--都市青年
			[24] = {Id = 774,Force_Atk = 4.5,Force_Hp = 13.7},--都市青年
			[25] = {Id = 775,Force_Atk = 5,Force_Hp = 15.1},--都市青年
			[26] = {Id = 776,Force_Atk = 5.3,Force_Hp = 16.1},--都市青年
			[27] = {Id = 777,Force_Atk = 5.6,Force_Hp = 17},--都市青年
			[28] = {Id = 778,Force_Atk = 6,Force_Hp = 18},--都市青年
			[29] = {Id = 779,Force_Atk = 6.5,Force_Hp = 19},--都市青年
			[30] = {Id = 780,Force_Atk = 6.7,Force_Hp = 20.1},--都市青年
			[31] = {Id = 781,Force_Atk = 6.8,Force_Hp = 20.4},--都市青年
			[32] = {Id = 782,Force_Atk = 7.2,Force_Hp = 21.8},--都市青年
			[33] = {Id = 783,Force_Atk = 8.1,Force_Hp = 24.4},--都市青年
			[34] = {Id = 784,Force_Atk = 8.7,Force_Hp = 26.2},--都市青年
			[35] = {Id = 785,Force_Atk = 8.8,Force_Hp = 26.3},--都市青年
			[36] = {Id = 786,Force_Atk = 9.5,Force_Hp = 28.4},--都市青年
			[37] = {Id = 787,Force_Atk = 10.1,Force_Hp = 30.4},--都市青年
			[38] = {Id = 788,Force_Atk = 11.4,Force_Hp = 34.3},--都市青年
			[39] = {Id = 789,Force_Atk = 11.7,Force_Hp = 35},--都市青年
			[40] = {Id = 790,Force_Atk = 12.3,Force_Hp = 36.8},--都市青年
			[41] = {Id = 791,Force_Atk = 12.6,Force_Hp = 38},--都市青年
			[42] = {Id = 792,Force_Atk = 13.6,Force_Hp = 40.8},--都市青年
			[43] = {Id = 793,Force_Atk = 15.4,Force_Hp = 46.2},--都市青年
			[44] = {Id = 794,Force_Atk = 16.6,Force_Hp = 49.8},--都市青年
			[45] = {Id = 795,Force_Atk = 18.2,Force_Hp = 54.5},--都市青年
			[46] = {Id = 796,Force_Atk = 19.7,Force_Hp = 59.2},--都市青年
			[47] = {Id = 797,Force_Atk = 21.2,Force_Hp = 63.7},--都市青年
			[48] = {Id = 798,Force_Atk = 24.1,Force_Hp = 72.2},--都市青年
			[49] = {Id = 799,Force_Atk = 26,Force_Hp = 78},--都市青年
			[50] = {Id = 800,Force_Atk = 27.2,Force_Hp = 81.6}--都市青年
		}
	},--都市青年
	[1101043] = {
		Siege = 50,
		Tanlent_Ids = {8,18,3},
		Card_Cost = 8,
		DominanceLv = {
			[1] = {Id = 1101,Force_Atk = 2.7,Force_Hp = 8.1},--少年曹玄亮
			[2] = {Id = 1102,Force_Atk = 2.8,Force_Hp = 8.3},--少年曹玄亮
			[3] = {Id = 1103,Force_Atk = 2.9,Force_Hp = 8.5},--少年曹玄亮
			[4] = {Id = 1104,Force_Atk = 3,Force_Hp = 8.7},--少年曹玄亮
			[5] = {Id = 1105,Force_Atk = 3.1,Force_Hp = 8.9},--少年曹玄亮
			[6] = {Id = 1106,Force_Atk = 3.2,Force_Hp = 9.1},--少年曹玄亮
			[7] = {Id = 1107,Force_Atk = 3.3,Force_Hp = 9.3},--少年曹玄亮
			[8] = {Id = 1108,Force_Atk = 3.4,Force_Hp = 9.5},--少年曹玄亮
			[9] = {Id = 1109,Force_Atk = 3.5,Force_Hp = 9.7},--少年曹玄亮
			[10] = {Id = 1110,Force_Atk = 3.6,Force_Hp = 9.9},--少年曹玄亮
			[11] = {Id = 1111,Force_Atk = 3.7,Force_Hp = 10.1},--少年曹玄亮
			[12] = {Id = 1112,Force_Atk = 3.8,Force_Hp = 10.3},--少年曹玄亮
			[13] = {Id = 1113,Force_Atk = 3.9,Force_Hp = 11.2},--少年曹玄亮
			[14] = {Id = 1114,Force_Atk = 4,Force_Hp = 11.4},--少年曹玄亮
			[15] = {Id = 1115,Force_Atk = 4.2,Force_Hp = 12.7},--少年曹玄亮
			[16] = {Id = 1116,Force_Atk = 4.3,Force_Hp = 13},--少年曹玄亮
			[17] = {Id = 1117,Force_Atk = 4.4,Force_Hp = 13.2},--少年曹玄亮
			[18] = {Id = 1118,Force_Atk = 4.6,Force_Hp = 14},--少年曹玄亮
			[19] = {Id = 1119,Force_Atk = 4.7,Force_Hp = 14.3},--少年曹玄亮
			[20] = {Id = 1120,Force_Atk = 4.8,Force_Hp = 14.5},--少年曹玄亮
			[21] = {Id = 1121,Force_Atk = 4.9,Force_Hp = 14.8},--少年曹玄亮
			[22] = {Id = 1122,Force_Atk = 5,Force_Hp = 15.2},--少年曹玄亮
			[23] = {Id = 1123,Force_Atk = 5.7,Force_Hp = 17.2},--少年曹玄亮
			[24] = {Id = 1124,Force_Atk = 5.9,Force_Hp = 17.8},--少年曹玄亮
			[25] = {Id = 1125,Force_Atk = 6.6,Force_Hp = 19.7},--少年曹玄亮
			[26] = {Id = 1126,Force_Atk = 7,Force_Hp = 21},--少年曹玄亮
			[27] = {Id = 1127,Force_Atk = 7.4,Force_Hp = 22.2},--少年曹玄亮
			[28] = {Id = 1128,Force_Atk = 8.2,Force_Hp = 24},--少年曹玄亮
			[29] = {Id = 1129,Force_Atk = 8.5,Force_Hp = 24.8},--少年曹玄亮
			[30] = {Id = 1130,Force_Atk = 8.7,Force_Hp = 26},--少年曹玄亮
			[31] = {Id = 1131,Force_Atk = 8.9,Force_Hp = 26.7},--少年曹玄亮
			[32] = {Id = 1132,Force_Atk = 9.4,Force_Hp = 28.4},--少年曹玄亮
			[33] = {Id = 1133,Force_Atk = 10.6,Force_Hp = 31.9},--少年曹玄亮
			[34] = {Id = 1134,Force_Atk = 11.4,Force_Hp = 34.1},--少年曹玄亮
			[35] = {Id = 1135,Force_Atk = 11.8,Force_Hp = 35},--少年曹玄亮
			[36] = {Id = 1136,Force_Atk = 12.3,Force_Hp = 37.1},--少年曹玄亮
			[37] = {Id = 1137,Force_Atk = 13.2,Force_Hp = 39.7},--少年曹玄亮
			[38] = {Id = 1138,Force_Atk = 14.9,Force_Hp = 44.7},--少年曹玄亮
			[39] = {Id = 1139,Force_Atk = 15.2,Force_Hp = 45.7},--少年曹玄亮
			[40] = {Id = 1140,Force_Atk = 16,Force_Hp = 48.1},--少年曹玄亮
			[41] = {Id = 1141,Force_Atk = 16.5,Force_Hp = 49.5},--少年曹玄亮
			[42] = {Id = 1142,Force_Atk = 17.7,Force_Hp = 53.2},--少年曹玄亮
			[43] = {Id = 1143,Force_Atk = 20.1,Force_Hp = 60.2},--少年曹玄亮
			[44] = {Id = 1144,Force_Atk = 21.7,Force_Hp = 65},--少年曹玄亮
			[45] = {Id = 1145,Force_Atk = 23.7,Force_Hp = 71.1},--少年曹玄亮
			[46] = {Id = 1146,Force_Atk = 25.7,Force_Hp = 77.2},--少年曹玄亮
			[47] = {Id = 1147,Force_Atk = 27.7,Force_Hp = 83.1},--少年曹玄亮
			[48] = {Id = 1148,Force_Atk = 31.4,Force_Hp = 94.2},--少年曹玄亮
			[49] = {Id = 1149,Force_Atk = 33.9,Force_Hp = 101.8},--少年曹玄亮
			[50] = {Id = 1150,Force_Atk = 35.5,Force_Hp = 106.5}--少年曹玄亮
		}
	},--少年曹玄亮
	[1102001] = {
		Siege = 43,
		Tanlent_Ids = {1,2,3},
		Card_Cost = 8,
		DominanceLv = {
			[1] = {Id = 1151,Force_Atk = 2.7,Force_Hp = 8.1},--关羽
			[2] = {Id = 1152,Force_Atk = 2.8,Force_Hp = 8.3},--关羽
			[3] = {Id = 1153,Force_Atk = 2.9,Force_Hp = 8.5},--关羽
			[4] = {Id = 1154,Force_Atk = 3,Force_Hp = 8.7},--关羽
			[5] = {Id = 1155,Force_Atk = 3.1,Force_Hp = 8.9},--关羽
			[6] = {Id = 1156,Force_Atk = 3.2,Force_Hp = 9.1},--关羽
			[7] = {Id = 1157,Force_Atk = 3.3,Force_Hp = 9.3},--关羽
			[8] = {Id = 1158,Force_Atk = 3.4,Force_Hp = 9.5},--关羽
			[9] = {Id = 1159,Force_Atk = 3.5,Force_Hp = 9.7},--关羽
			[10] = {Id = 1160,Force_Atk = 3.6,Force_Hp = 9.9},--关羽
			[11] = {Id = 1161,Force_Atk = 3.7,Force_Hp = 10.1},--关羽
			[12] = {Id = 1162,Force_Atk = 3.8,Force_Hp = 10.3},--关羽
			[13] = {Id = 1163,Force_Atk = 3.9,Force_Hp = 11.2},--关羽
			[14] = {Id = 1164,Force_Atk = 4,Force_Hp = 11.4},--关羽
			[15] = {Id = 1165,Force_Atk = 4.2,Force_Hp = 12.7},--关羽
			[16] = {Id = 1166,Force_Atk = 4.3,Force_Hp = 13},--关羽
			[17] = {Id = 1167,Force_Atk = 4.4,Force_Hp = 13.2},--关羽
			[18] = {Id = 1168,Force_Atk = 4.6,Force_Hp = 14},--关羽
			[19] = {Id = 1169,Force_Atk = 4.7,Force_Hp = 14.3},--关羽
			[20] = {Id = 1170,Force_Atk = 4.8,Force_Hp = 14.5},--关羽
			[21] = {Id = 1171,Force_Atk = 4.9,Force_Hp = 14.8},--关羽
			[22] = {Id = 1172,Force_Atk = 5,Force_Hp = 15.2},--关羽
			[23] = {Id = 1173,Force_Atk = 5.7,Force_Hp = 17.2},--关羽
			[24] = {Id = 1174,Force_Atk = 5.9,Force_Hp = 17.8},--关羽
			[25] = {Id = 1175,Force_Atk = 6.6,Force_Hp = 19.7},--关羽
			[26] = {Id = 1176,Force_Atk = 7,Force_Hp = 21},--关羽
			[27] = {Id = 1177,Force_Atk = 7.4,Force_Hp = 22.2},--关羽
			[28] = {Id = 1178,Force_Atk = 8.2,Force_Hp = 24},--关羽
			[29] = {Id = 1179,Force_Atk = 8.5,Force_Hp = 24.8},--关羽
			[30] = {Id = 1180,Force_Atk = 8.7,Force_Hp = 26},--关羽
			[31] = {Id = 1181,Force_Atk = 8.9,Force_Hp = 26.7},--关羽
			[32] = {Id = 1182,Force_Atk = 9.4,Force_Hp = 28.4},--关羽
			[33] = {Id = 1183,Force_Atk = 10.6,Force_Hp = 31.9},--关羽
			[34] = {Id = 1184,Force_Atk = 11.4,Force_Hp = 34.1},--关羽
			[35] = {Id = 1185,Force_Atk = 11.8,Force_Hp = 35},--关羽
			[36] = {Id = 1186,Force_Atk = 12.3,Force_Hp = 37.1},--关羽
			[37] = {Id = 1187,Force_Atk = 13.2,Force_Hp = 39.7},--关羽
			[38] = {Id = 1188,Force_Atk = 14.9,Force_Hp = 44.7},--关羽
			[39] = {Id = 1189,Force_Atk = 15.2,Force_Hp = 45.7},--关羽
			[40] = {Id = 1190,Force_Atk = 16,Force_Hp = 48.1},--关羽
			[41] = {Id = 1191,Force_Atk = 16.5,Force_Hp = 49.5},--关羽
			[42] = {Id = 1192,Force_Atk = 17.7,Force_Hp = 53.2},--关羽
			[43] = {Id = 1193,Force_Atk = 20.1,Force_Hp = 60.2},--关羽
			[44] = {Id = 1194,Force_Atk = 21.7,Force_Hp = 65},--关羽
			[45] = {Id = 1195,Force_Atk = 23.7,Force_Hp = 71.1},--关羽
			[46] = {Id = 1196,Force_Atk = 25.7,Force_Hp = 77.2},--关羽
			[47] = {Id = 1197,Force_Atk = 27.7,Force_Hp = 83.1},--关羽
			[48] = {Id = 1198,Force_Atk = 31.4,Force_Hp = 94.2},--关羽
			[49] = {Id = 1199,Force_Atk = 33.9,Force_Hp = 101.8},--关羽
			[50] = {Id = 1200,Force_Atk = 35.5,Force_Hp = 106.5}--关羽
		}
	},--关羽
	[1102002] = {
		Siege = 33,
		Tanlent_Ids = {4,5,6},
		Card_Cost = 7,
		DominanceLv = {
			[1] = {Id = 1201,Force_Atk = 2.1,Force_Hp = 7.2},--许褚
			[2] = {Id = 1202,Force_Atk = 2.2,Force_Hp = 7.3},--许褚
			[3] = {Id = 1203,Force_Atk = 2.3,Force_Hp = 7.4},--许褚
			[4] = {Id = 1204,Force_Atk = 2.4,Force_Hp = 7.5},--许褚
			[5] = {Id = 1205,Force_Atk = 2.5,Force_Hp = 7.6},--许褚
			[6] = {Id = 1206,Force_Atk = 2.6,Force_Hp = 7.7},--许褚
			[7] = {Id = 1207,Force_Atk = 2.7,Force_Hp = 7.8},--许褚
			[8] = {Id = 1208,Force_Atk = 2.8,Force_Hp = 7.9},--许褚
			[9] = {Id = 1209,Force_Atk = 2.9,Force_Hp = 8},--许褚
			[10] = {Id = 1210,Force_Atk = 3,Force_Hp = 8.3},--许褚
			[11] = {Id = 1211,Force_Atk = 3.1,Force_Hp = 8.5},--许褚
			[12] = {Id = 1212,Force_Atk = 3.2,Force_Hp = 8.6},--许褚
			[13] = {Id = 1213,Force_Atk = 3.3,Force_Hp = 9.7},--许褚
			[14] = {Id = 1214,Force_Atk = 3.4,Force_Hp = 9.9},--许褚
			[15] = {Id = 1215,Force_Atk = 3.6,Force_Hp = 11},--许褚
			[16] = {Id = 1216,Force_Atk = 3.7,Force_Hp = 11.2},--许褚
			[17] = {Id = 1217,Force_Atk = 3.8,Force_Hp = 11.4},--许褚
			[18] = {Id = 1218,Force_Atk = 4.1,Force_Hp = 12},--许褚
			[19] = {Id = 1219,Force_Atk = 4.2,Force_Hp = 12.4},--许褚
			[20] = {Id = 1220,Force_Atk = 4.3,Force_Hp = 12.6},--许褚
			[21] = {Id = 1221,Force_Atk = 4.5,Force_Hp = 12.8},--许褚
			[22] = {Id = 1222,Force_Atk = 4.6,Force_Hp = 13.2},--许褚
			[23] = {Id = 1223,Force_Atk = 4.9,Force_Hp = 14.9},--许褚
			[24] = {Id = 1224,Force_Atk = 5.1,Force_Hp = 15.5},--许褚
			[25] = {Id = 1225,Force_Atk = 5.7,Force_Hp = 17.1},--许褚
			[26] = {Id = 1226,Force_Atk = 6,Force_Hp = 18.2},--许褚
			[27] = {Id = 1227,Force_Atk = 6.4,Force_Hp = 19.2},--许褚
			[28] = {Id = 1228,Force_Atk = 6.8,Force_Hp = 20},--许褚
			[29] = {Id = 1229,Force_Atk = 7.2,Force_Hp = 21.5},--许褚
			[30] = {Id = 1230,Force_Atk = 7.5,Force_Hp = 22.7},--许褚
			[31] = {Id = 1231,Force_Atk = 7.7,Force_Hp = 23.1},--许褚
			[32] = {Id = 1232,Force_Atk = 8.2,Force_Hp = 24.6},--许褚
			[33] = {Id = 1233,Force_Atk = 9.2,Force_Hp = 27.6},--许褚
			[34] = {Id = 1234,Force_Atk = 9.8,Force_Hp = 29.6},--许褚
			[35] = {Id = 1235,Force_Atk = 9.9,Force_Hp = 29.8},--许褚
			[36] = {Id = 1236,Force_Atk = 10.7,Force_Hp = 32.1},--许褚
			[37] = {Id = 1237,Force_Atk = 11.4,Force_Hp = 34.4},--许褚
			[38] = {Id = 1238,Force_Atk = 12.9,Force_Hp = 38.7},--许褚
			[39] = {Id = 1239,Force_Atk = 13.2,Force_Hp = 39.6},--许褚
			[40] = {Id = 1240,Force_Atk = 13.9,Force_Hp = 41.6},--许褚
			[41] = {Id = 1241,Force_Atk = 14.3,Force_Hp = 42.9},--许褚
			[42] = {Id = 1242,Force_Atk = 15.4,Force_Hp = 46.1},--许褚
			[43] = {Id = 1243,Force_Atk = 17.4,Force_Hp = 52.2},--许褚
			[44] = {Id = 1244,Force_Atk = 18.8,Force_Hp = 56.3},--许褚
			[45] = {Id = 1245,Force_Atk = 20.5,Force_Hp = 61.7},--许褚
			[46] = {Id = 1246,Force_Atk = 22.3,Force_Hp = 66.9},--许褚
			[47] = {Id = 1247,Force_Atk = 24,Force_Hp = 72},--许褚
			[48] = {Id = 1248,Force_Atk = 27.2,Force_Hp = 81.6},--许褚
			[49] = {Id = 1249,Force_Atk = 29.4,Force_Hp = 88.2},--许褚
			[50] = {Id = 1250,Force_Atk = 30.8,Force_Hp = 92.3}--许褚
		}
	},--许褚
	[1102003] = {
		Siege = 70,
		Tanlent_Ids = {7,8,9},
		Card_Cost = 8,
		DominanceLv = {
			[1] = {Id = 1251,Force_Atk = 2.7,Force_Hp = 8.1},--典韦
			[2] = {Id = 1252,Force_Atk = 2.8,Force_Hp = 8.3},--典韦
			[3] = {Id = 1253,Force_Atk = 2.9,Force_Hp = 8.5},--典韦
			[4] = {Id = 1254,Force_Atk = 3,Force_Hp = 8.7},--典韦
			[5] = {Id = 1255,Force_Atk = 3.1,Force_Hp = 8.9},--典韦
			[6] = {Id = 1256,Force_Atk = 3.2,Force_Hp = 9.1},--典韦
			[7] = {Id = 1257,Force_Atk = 3.3,Force_Hp = 9.3},--典韦
			[8] = {Id = 1258,Force_Atk = 3.4,Force_Hp = 9.5},--典韦
			[9] = {Id = 1259,Force_Atk = 3.5,Force_Hp = 9.7},--典韦
			[10] = {Id = 1260,Force_Atk = 3.6,Force_Hp = 9.9},--典韦
			[11] = {Id = 1261,Force_Atk = 3.7,Force_Hp = 10.1},--典韦
			[12] = {Id = 1262,Force_Atk = 3.8,Force_Hp = 10.3},--典韦
			[13] = {Id = 1263,Force_Atk = 3.9,Force_Hp = 11.2},--典韦
			[14] = {Id = 1264,Force_Atk = 4,Force_Hp = 11.4},--典韦
			[15] = {Id = 1265,Force_Atk = 4.2,Force_Hp = 12.7},--典韦
			[16] = {Id = 1266,Force_Atk = 4.3,Force_Hp = 13},--典韦
			[17] = {Id = 1267,Force_Atk = 4.4,Force_Hp = 13.2},--典韦
			[18] = {Id = 1268,Force_Atk = 4.6,Force_Hp = 14},--典韦
			[19] = {Id = 1269,Force_Atk = 4.7,Force_Hp = 14.3},--典韦
			[20] = {Id = 1270,Force_Atk = 4.8,Force_Hp = 14.5},--典韦
			[21] = {Id = 1271,Force_Atk = 4.9,Force_Hp = 14.8},--典韦
			[22] = {Id = 1272,Force_Atk = 5,Force_Hp = 15.2},--典韦
			[23] = {Id = 1273,Force_Atk = 5.7,Force_Hp = 17.2},--典韦
			[24] = {Id = 1274,Force_Atk = 5.9,Force_Hp = 17.8},--典韦
			[25] = {Id = 1275,Force_Atk = 6.6,Force_Hp = 19.7},--典韦
			[26] = {Id = 1276,Force_Atk = 7,Force_Hp = 21},--典韦
			[27] = {Id = 1277,Force_Atk = 7.4,Force_Hp = 22.2},--典韦
			[28] = {Id = 1278,Force_Atk = 8.2,Force_Hp = 24},--典韦
			[29] = {Id = 1279,Force_Atk = 8.5,Force_Hp = 24.8},--典韦
			[30] = {Id = 1280,Force_Atk = 8.7,Force_Hp = 26},--典韦
			[31] = {Id = 1281,Force_Atk = 8.9,Force_Hp = 26.7},--典韦
			[32] = {Id = 1282,Force_Atk = 9.4,Force_Hp = 28.4},--典韦
			[33] = {Id = 1283,Force_Atk = 10.6,Force_Hp = 31.9},--典韦
			[34] = {Id = 1284,Force_Atk = 11.4,Force_Hp = 34.1},--典韦
			[35] = {Id = 1285,Force_Atk = 11.8,Force_Hp = 35},--典韦
			[36] = {Id = 1286,Force_Atk = 12.3,Force_Hp = 37.1},--典韦
			[37] = {Id = 1287,Force_Atk = 13.2,Force_Hp = 39.7},--典韦
			[38] = {Id = 1288,Force_Atk = 14.9,Force_Hp = 44.7},--典韦
			[39] = {Id = 1289,Force_Atk = 15.2,Force_Hp = 45.7},--典韦
			[40] = {Id = 1290,Force_Atk = 16,Force_Hp = 48.1},--典韦
			[41] = {Id = 1291,Force_Atk = 16.5,Force_Hp = 49.5},--典韦
			[42] = {Id = 1292,Force_Atk = 17.7,Force_Hp = 53.2},--典韦
			[43] = {Id = 1293,Force_Atk = 20.1,Force_Hp = 60.2},--典韦
			[44] = {Id = 1294,Force_Atk = 21.7,Force_Hp = 65},--典韦
			[45] = {Id = 1295,Force_Atk = 23.7,Force_Hp = 71.1},--典韦
			[46] = {Id = 1296,Force_Atk = 25.7,Force_Hp = 77.2},--典韦
			[47] = {Id = 1297,Force_Atk = 27.7,Force_Hp = 83.1},--典韦
			[48] = {Id = 1298,Force_Atk = 31.4,Force_Hp = 94.2},--典韦
			[49] = {Id = 1299,Force_Atk = 33.9,Force_Hp = 101.8},--典韦
			[50] = {Id = 1300,Force_Atk = 35.5,Force_Hp = 106.5}--典韦
		}
	},--典韦
	[1102004] = {
		Siege = 97,
		Tanlent_Ids = {10,11,12},
		Card_Cost = 6,
		DominanceLv = {
			[1] = {Id = 1301,Force_Atk = 1.6,Force_Hp = 6},--唐流雨
			[2] = {Id = 1302,Force_Atk = 1.7,Force_Hp = 6.1},--唐流雨
			[3] = {Id = 1303,Force_Atk = 1.8,Force_Hp = 6.2},--唐流雨
			[4] = {Id = 1304,Force_Atk = 1.9,Force_Hp = 6.3},--唐流雨
			[5] = {Id = 1305,Force_Atk = 2,Force_Hp = 6.4},--唐流雨
			[6] = {Id = 1306,Force_Atk = 2.1,Force_Hp = 6.5},--唐流雨
			[7] = {Id = 1307,Force_Atk = 2.2,Force_Hp = 6.6},--唐流雨
			[8] = {Id = 1308,Force_Atk = 2.3,Force_Hp = 6.7},--唐流雨
			[9] = {Id = 1309,Force_Atk = 2.4,Force_Hp = 6.8},--唐流雨
			[10] = {Id = 1310,Force_Atk = 2.5,Force_Hp = 7.4},--唐流雨
			[11] = {Id = 1311,Force_Atk = 2.6,Force_Hp = 7.5},--唐流雨
			[12] = {Id = 1312,Force_Atk = 2.7,Force_Hp = 7.6},--唐流雨
			[13] = {Id = 1313,Force_Atk = 2.8,Force_Hp = 8.6},--唐流雨
			[14] = {Id = 1314,Force_Atk = 2.9,Force_Hp = 8.8},--唐流雨
			[15] = {Id = 1315,Force_Atk = 3.2,Force_Hp = 9.7},--唐流雨
			[16] = {Id = 1316,Force_Atk = 3.3,Force_Hp = 9.9},--唐流雨
			[17] = {Id = 1317,Force_Atk = 3.4,Force_Hp = 10.1},--唐流雨
			[18] = {Id = 1318,Force_Atk = 3.5,Force_Hp = 11.1},--唐流雨
			[19] = {Id = 1319,Force_Atk = 3.7,Force_Hp = 11.3},--唐流雨
			[20] = {Id = 1320,Force_Atk = 3.7,Force_Hp = 11.5},--唐流雨
			[21] = {Id = 1321,Force_Atk = 3.8,Force_Hp = 11.6},--唐流雨
			[22] = {Id = 1322,Force_Atk = 3.9,Force_Hp = 11.7},--唐流雨
			[23] = {Id = 1323,Force_Atk = 4.4,Force_Hp = 13.2},--唐流雨
			[24] = {Id = 1324,Force_Atk = 4.5,Force_Hp = 13.7},--唐流雨
			[25] = {Id = 1325,Force_Atk = 5,Force_Hp = 15.1},--唐流雨
			[26] = {Id = 1326,Force_Atk = 5.3,Force_Hp = 16.1},--唐流雨
			[27] = {Id = 1327,Force_Atk = 5.6,Force_Hp = 17},--唐流雨
			[28] = {Id = 1328,Force_Atk = 6,Force_Hp = 18},--唐流雨
			[29] = {Id = 1329,Force_Atk = 6.5,Force_Hp = 19},--唐流雨
			[30] = {Id = 1330,Force_Atk = 6.7,Force_Hp = 20.1},--唐流雨
			[31] = {Id = 1331,Force_Atk = 6.8,Force_Hp = 20.4},--唐流雨
			[32] = {Id = 1332,Force_Atk = 7.2,Force_Hp = 21.8},--唐流雨
			[33] = {Id = 1333,Force_Atk = 8.1,Force_Hp = 24.4},--唐流雨
			[34] = {Id = 1334,Force_Atk = 8.7,Force_Hp = 26.2},--唐流雨
			[35] = {Id = 1335,Force_Atk = 8.8,Force_Hp = 26.3},--唐流雨
			[36] = {Id = 1336,Force_Atk = 9.5,Force_Hp = 28.4},--唐流雨
			[37] = {Id = 1337,Force_Atk = 10.1,Force_Hp = 30.4},--唐流雨
			[38] = {Id = 1338,Force_Atk = 11.4,Force_Hp = 34.3},--唐流雨
			[39] = {Id = 1339,Force_Atk = 11.7,Force_Hp = 35},--唐流雨
			[40] = {Id = 1340,Force_Atk = 12.3,Force_Hp = 36.8},--唐流雨
			[41] = {Id = 1341,Force_Atk = 12.6,Force_Hp = 38},--唐流雨
			[42] = {Id = 1342,Force_Atk = 13.6,Force_Hp = 40.8},--唐流雨
			[43] = {Id = 1343,Force_Atk = 15.4,Force_Hp = 46.2},--唐流雨
			[44] = {Id = 1344,Force_Atk = 16.6,Force_Hp = 49.8},--唐流雨
			[45] = {Id = 1345,Force_Atk = 18.2,Force_Hp = 54.5},--唐流雨
			[46] = {Id = 1346,Force_Atk = 19.7,Force_Hp = 59.2},--唐流雨
			[47] = {Id = 1347,Force_Atk = 21.2,Force_Hp = 63.7},--唐流雨
			[48] = {Id = 1348,Force_Atk = 24.1,Force_Hp = 72.2},--唐流雨
			[49] = {Id = 1349,Force_Atk = 26,Force_Hp = 78},--唐流雨
			[50] = {Id = 1350,Force_Atk = 27.2,Force_Hp = 81.6}--唐流雨
		}
	},--唐流雨
	[1102005] = {
		Siege = 83,
		Tanlent_Ids = {13,14,15},
		Card_Cost = 7,
		DominanceLv = {
			[1] = {Id = 1351,Force_Atk = 2.5,Force_Hp = 17},--李轩辕
			[2] = {Id = 1352,Force_Atk = 2.6,Force_Hp = 17.2},--李轩辕
			[3] = {Id = 1353,Force_Atk = 2.7,Force_Hp = 17.4},--李轩辕
			[4] = {Id = 1354,Force_Atk = 2.8,Force_Hp = 17.6},--李轩辕
			[5] = {Id = 1355,Force_Atk = 2.9,Force_Hp = 17.8},--李轩辕
			[6] = {Id = 1356,Force_Atk = 3,Force_Hp = 18},--李轩辕
			[7] = {Id = 1357,Force_Atk = 3.1,Force_Hp = 18.2},--李轩辕
			[8] = {Id = 1358,Force_Atk = 3.2,Force_Hp = 18.4},--李轩辕
			[9] = {Id = 1359,Force_Atk = 3.3,Force_Hp = 18.6},--李轩辕
			[10] = {Id = 1360,Force_Atk = 3.4,Force_Hp = 18.8},--李轩辕
			[11] = {Id = 1361,Force_Atk = 3.5,Force_Hp = 19},--李轩辕
			[12] = {Id = 1362,Force_Atk = 3.6,Force_Hp = 19.2},--李轩辕
			[13] = {Id = 1363,Force_Atk = 3.7,Force_Hp = 20},--李轩辕
			[14] = {Id = 1364,Force_Atk = 3.8,Force_Hp = 20.4},--李轩辕
			[15] = {Id = 1365,Force_Atk = 3.9,Force_Hp = 20.8},--李轩辕
			[16] = {Id = 1366,Force_Atk = 4,Force_Hp = 21},--李轩辕
			[17] = {Id = 1367,Force_Atk = 4.1,Force_Hp = 22.4},--李轩辕
			[18] = {Id = 1368,Force_Atk = 4.2,Force_Hp = 22.8},--李轩辕
			[19] = {Id = 1369,Force_Atk = 4.3,Force_Hp = 23.2},--李轩辕
			[20] = {Id = 1370,Force_Atk = 4.4,Force_Hp = 23.7},--李轩辕
			[21] = {Id = 1371,Force_Atk = 4.5,Force_Hp = 24.1},--李轩辕
			[22] = {Id = 1372,Force_Atk = 4.7,Force_Hp = 24.5},--李轩辕
			[23] = {Id = 1373,Force_Atk = 5,Force_Hp = 27.7},--李轩辕
			[24] = {Id = 1374,Force_Atk = 5.2,Force_Hp = 28.3},--李轩辕
			[25] = {Id = 1375,Force_Atk = 5.8,Force_Hp = 32.4},--李轩辕
			[26] = {Id = 1376,Force_Atk = 6.1,Force_Hp = 33.8},--李轩辕
			[27] = {Id = 1377,Force_Atk = 6.5,Force_Hp = 35.2},--李轩辕
			[28] = {Id = 1378,Force_Atk = 7,Force_Hp = 37},--李轩辕
			[29] = {Id = 1379,Force_Atk = 7.4,Force_Hp = 39},--李轩辕
			[30] = {Id = 1380,Force_Atk = 7.6,Force_Hp = 41},--李轩辕
			[31] = {Id = 1381,Force_Atk = 7.7,Force_Hp = 42.1},--李轩辕
			[32] = {Id = 1382,Force_Atk = 8.2,Force_Hp = 44.2},--李轩辕
			[33] = {Id = 1383,Force_Atk = 9.2,Force_Hp = 50.4},--李轩辕
			[34] = {Id = 1384,Force_Atk = 9.5,Force_Hp = 53.1},--李轩辕
			[35] = {Id = 1385,Force_Atk = 10,Force_Hp = 54.5},--李轩辕
			[36] = {Id = 1386,Force_Atk = 10.7,Force_Hp = 57.9},--李轩辕
			[37] = {Id = 1387,Force_Atk = 11.5,Force_Hp = 61},--李轩辕
			[38] = {Id = 1388,Force_Atk = 12.9,Force_Hp = 70},--李轩辕
			[39] = {Id = 1389,Force_Atk = 13.2,Force_Hp = 72},--李轩辕
			[40] = {Id = 1390,Force_Atk = 13.9,Force_Hp = 74},--李轩辕
			[41] = {Id = 1391,Force_Atk = 14.3,Force_Hp = 76.8},--李轩辕
			[42] = {Id = 1392,Force_Atk = 15.4,Force_Hp = 81.4},--李轩辕
			[43] = {Id = 1393,Force_Atk = 17.4,Force_Hp = 93.9},--李轩辕
			[44] = {Id = 1394,Force_Atk = 18.8,Force_Hp = 99.9},--李轩辕
			[45] = {Id = 1395,Force_Atk = 20.6,Force_Hp = 111.6},--李轩辕
			[46] = {Id = 1396,Force_Atk = 22.3,Force_Hp = 119.2},--李轩辕
			[47] = {Id = 1397,Force_Atk = 24,Force_Hp = 126.7},--李轩辕
			[48] = {Id = 1398,Force_Atk = 27.2,Force_Hp = 146.4},--李轩辕
			[49] = {Id = 1399,Force_Atk = 29.4,Force_Hp = 156},--李轩辕
			[50] = {Id = 1400,Force_Atk = 30.8,Force_Hp = 161.2}--李轩辕
		}
	},--李轩辕
	[1102006] = {
		Siege = 19,
		Tanlent_Ids = {16,17,18},
		Card_Cost = 8,
		DominanceLv = {
			[1] = {Id = 1401,Force_Atk = 3,Force_Hp = 22},--项羽
			[2] = {Id = 1402,Force_Atk = 3.1,Force_Hp = 22.3},--项羽
			[3] = {Id = 1403,Force_Atk = 3.2,Force_Hp = 22.6},--项羽
			[4] = {Id = 1404,Force_Atk = 3.3,Force_Hp = 22.9},--项羽
			[5] = {Id = 1405,Force_Atk = 3.4,Force_Hp = 23.2},--项羽
			[6] = {Id = 1406,Force_Atk = 3.5,Force_Hp = 23.5},--项羽
			[7] = {Id = 1407,Force_Atk = 3.6,Force_Hp = 23.8},--项羽
			[8] = {Id = 1408,Force_Atk = 3.7,Force_Hp = 24.1},--项羽
			[9] = {Id = 1409,Force_Atk = 3.8,Force_Hp = 24.4},--项羽
			[10] = {Id = 1410,Force_Atk = 3.9,Force_Hp = 24.7},--项羽
			[11] = {Id = 1411,Force_Atk = 4,Force_Hp = 25},--项羽
			[12] = {Id = 1412,Force_Atk = 4.1,Force_Hp = 25.3},--项羽
			[13] = {Id = 1413,Force_Atk = 4.2,Force_Hp = 25.6},--项羽
			[14] = {Id = 1414,Force_Atk = 4.3,Force_Hp = 25.9},--项羽
			[15] = {Id = 1415,Force_Atk = 4.4,Force_Hp = 26.2},--项羽
			[16] = {Id = 1416,Force_Atk = 4.5,Force_Hp = 26.5},--项羽
			[17] = {Id = 1417,Force_Atk = 4.7,Force_Hp = 26.8},--项羽
			[18] = {Id = 1418,Force_Atk = 4.9,Force_Hp = 27.1},--项羽
			[19] = {Id = 1419,Force_Atk = 5,Force_Hp = 27.4},--项羽
			[20] = {Id = 1420,Force_Atk = 5.1,Force_Hp = 27.7},--项羽
			[21] = {Id = 1421,Force_Atk = 5.2,Force_Hp = 28},--项羽
			[22] = {Id = 1422,Force_Atk = 5.4,Force_Hp = 28.3},--项羽
			[23] = {Id = 1423,Force_Atk = 5.8,Force_Hp = 32},--项羽
			[24] = {Id = 1424,Force_Atk = 6,Force_Hp = 32.7},--项羽
			[25] = {Id = 1425,Force_Atk = 6.7,Force_Hp = 37.4},--项羽
			[26] = {Id = 1426,Force_Atk = 7.1,Force_Hp = 39},--项羽
			[27] = {Id = 1427,Force_Atk = 7.5,Force_Hp = 40.6},--项羽
			[28] = {Id = 1428,Force_Atk = 7.8,Force_Hp = 44.4},--项羽
			[29] = {Id = 1429,Force_Atk = 8.3,Force_Hp = 46.1},--项羽
			[30] = {Id = 1430,Force_Atk = 8.7,Force_Hp = 47.9},--项羽
			[31] = {Id = 1431,Force_Atk = 8.9,Force_Hp = 48.6},--项羽
			[32] = {Id = 1432,Force_Atk = 9.5,Force_Hp = 51},--项羽
			[33] = {Id = 1433,Force_Atk = 10.7,Force_Hp = 58.2},--项羽
			[34] = {Id = 1434,Force_Atk = 11.4,Force_Hp = 61.3},--项羽
			[35] = {Id = 1435,Force_Atk = 11.5,Force_Hp = 62.9},--项羽
			[36] = {Id = 1436,Force_Atk = 12.4,Force_Hp = 66.8},--项羽
			[37] = {Id = 1437,Force_Atk = 13.3,Force_Hp = 70.4},--项羽
			[38] = {Id = 1438,Force_Atk = 14.9,Force_Hp = 80.8},--项羽
			[39] = {Id = 1439,Force_Atk = 15.3,Force_Hp = 83.1},--项羽
			[40] = {Id = 1440,Force_Atk = 16.1,Force_Hp = 85.6},--项羽
			[41] = {Id = 1441,Force_Atk = 16.5,Force_Hp = 88.6},--项羽
			[42] = {Id = 1442,Force_Atk = 17.8,Force_Hp = 93.9},--项羽
			[43] = {Id = 1443,Force_Atk = 20.1,Force_Hp = 108.3},--项羽
			[44] = {Id = 1444,Force_Atk = 21.7,Force_Hp = 115.3},--项羽
			[45] = {Id = 1445,Force_Atk = 23.7,Force_Hp = 128.8},--项羽
			[46] = {Id = 1446,Force_Atk = 25.8,Force_Hp = 137.6},--项羽
			[47] = {Id = 1447,Force_Atk = 27.7,Force_Hp = 146.1},--项羽
			[48] = {Id = 1448,Force_Atk = 31.4,Force_Hp = 168.9},--项羽
			[49] = {Id = 1449,Force_Atk = 34,Force_Hp = 180},--项羽
			[50] = {Id = 1450,Force_Atk = 35.5,Force_Hp = 186}--项羽
		}
	},--项羽
	[1102007] = {
		Siege = 55,
		Tanlent_Ids = {21,22,23},
		Card_Cost = 8,
		DominanceLv = {
			[1] = {Id = 1451,Force_Atk = 3,Force_Hp = 22},--天使缇娜
			[2] = {Id = 1452,Force_Atk = 3.1,Force_Hp = 22.3},--天使缇娜
			[3] = {Id = 1453,Force_Atk = 3.2,Force_Hp = 22.6},--天使缇娜
			[4] = {Id = 1454,Force_Atk = 3.3,Force_Hp = 22.9},--天使缇娜
			[5] = {Id = 1455,Force_Atk = 3.4,Force_Hp = 23.2},--天使缇娜
			[6] = {Id = 1456,Force_Atk = 3.5,Force_Hp = 23.5},--天使缇娜
			[7] = {Id = 1457,Force_Atk = 3.6,Force_Hp = 23.8},--天使缇娜
			[8] = {Id = 1458,Force_Atk = 3.7,Force_Hp = 24.1},--天使缇娜
			[9] = {Id = 1459,Force_Atk = 3.8,Force_Hp = 24.4},--天使缇娜
			[10] = {Id = 1460,Force_Atk = 3.9,Force_Hp = 24.7},--天使缇娜
			[11] = {Id = 1461,Force_Atk = 4,Force_Hp = 25},--天使缇娜
			[12] = {Id = 1462,Force_Atk = 4.1,Force_Hp = 25.3},--天使缇娜
			[13] = {Id = 1463,Force_Atk = 4.2,Force_Hp = 25.6},--天使缇娜
			[14] = {Id = 1464,Force_Atk = 4.3,Force_Hp = 25.9},--天使缇娜
			[15] = {Id = 1465,Force_Atk = 4.4,Force_Hp = 26.2},--天使缇娜
			[16] = {Id = 1466,Force_Atk = 4.5,Force_Hp = 26.5},--天使缇娜
			[17] = {Id = 1467,Force_Atk = 4.7,Force_Hp = 26.8},--天使缇娜
			[18] = {Id = 1468,Force_Atk = 4.9,Force_Hp = 27.1},--天使缇娜
			[19] = {Id = 1469,Force_Atk = 5,Force_Hp = 27.4},--天使缇娜
			[20] = {Id = 1470,Force_Atk = 5.1,Force_Hp = 27.7},--天使缇娜
			[21] = {Id = 1471,Force_Atk = 5.2,Force_Hp = 28},--天使缇娜
			[22] = {Id = 1472,Force_Atk = 5.4,Force_Hp = 28.3},--天使缇娜
			[23] = {Id = 1473,Force_Atk = 5.8,Force_Hp = 32},--天使缇娜
			[24] = {Id = 1474,Force_Atk = 6,Force_Hp = 32.7},--天使缇娜
			[25] = {Id = 1475,Force_Atk = 6.7,Force_Hp = 37.4},--天使缇娜
			[26] = {Id = 1476,Force_Atk = 7.1,Force_Hp = 39},--天使缇娜
			[27] = {Id = 1477,Force_Atk = 7.5,Force_Hp = 40.6},--天使缇娜
			[28] = {Id = 1478,Force_Atk = 7.8,Force_Hp = 44.4},--天使缇娜
			[29] = {Id = 1479,Force_Atk = 8.3,Force_Hp = 46.1},--天使缇娜
			[30] = {Id = 1480,Force_Atk = 8.7,Force_Hp = 47.9},--天使缇娜
			[31] = {Id = 1481,Force_Atk = 8.9,Force_Hp = 48.6},--天使缇娜
			[32] = {Id = 1482,Force_Atk = 9.5,Force_Hp = 51},--天使缇娜
			[33] = {Id = 1483,Force_Atk = 10.7,Force_Hp = 58.2},--天使缇娜
			[34] = {Id = 1484,Force_Atk = 11.4,Force_Hp = 61.3},--天使缇娜
			[35] = {Id = 1485,Force_Atk = 11.5,Force_Hp = 62.9},--天使缇娜
			[36] = {Id = 1486,Force_Atk = 12.4,Force_Hp = 66.8},--天使缇娜
			[37] = {Id = 1487,Force_Atk = 13.3,Force_Hp = 70.4},--天使缇娜
			[38] = {Id = 1488,Force_Atk = 14.9,Force_Hp = 80.8},--天使缇娜
			[39] = {Id = 1489,Force_Atk = 15.3,Force_Hp = 83.1},--天使缇娜
			[40] = {Id = 1490,Force_Atk = 16.1,Force_Hp = 85.6},--天使缇娜
			[41] = {Id = 1491,Force_Atk = 16.5,Force_Hp = 88.6},--天使缇娜
			[42] = {Id = 1492,Force_Atk = 17.8,Force_Hp = 93.9},--天使缇娜
			[43] = {Id = 1493,Force_Atk = 20.1,Force_Hp = 108.3},--天使缇娜
			[44] = {Id = 1494,Force_Atk = 21.7,Force_Hp = 115.3},--天使缇娜
			[45] = {Id = 1495,Force_Atk = 23.7,Force_Hp = 128.8},--天使缇娜
			[46] = {Id = 1496,Force_Atk = 25.8,Force_Hp = 137.6},--天使缇娜
			[47] = {Id = 1497,Force_Atk = 27.7,Force_Hp = 146.1},--天使缇娜
			[48] = {Id = 1498,Force_Atk = 31.4,Force_Hp = 168.9},--天使缇娜
			[49] = {Id = 1499,Force_Atk = 34,Force_Hp = 180},--天使缇娜
			[50] = {Id = 1500,Force_Atk = 35.5,Force_Hp = 186}--天使缇娜
		}
	},--天使缇娜
	[1102008] = {
		Siege = 87,
		Tanlent_Ids = {24,25,23},
		Card_Cost = 8,
		DominanceLv = {
			[1] = {Id = 1501,Force_Atk = 3,Force_Hp = 22},--夏侯渊
			[2] = {Id = 1502,Force_Atk = 3.1,Force_Hp = 22.3},--夏侯渊
			[3] = {Id = 1503,Force_Atk = 3.2,Force_Hp = 22.6},--夏侯渊
			[4] = {Id = 1504,Force_Atk = 3.3,Force_Hp = 22.9},--夏侯渊
			[5] = {Id = 1505,Force_Atk = 3.4,Force_Hp = 23.2},--夏侯渊
			[6] = {Id = 1506,Force_Atk = 3.5,Force_Hp = 23.5},--夏侯渊
			[7] = {Id = 1507,Force_Atk = 3.6,Force_Hp = 23.8},--夏侯渊
			[8] = {Id = 1508,Force_Atk = 3.7,Force_Hp = 24.1},--夏侯渊
			[9] = {Id = 1509,Force_Atk = 3.8,Force_Hp = 24.4},--夏侯渊
			[10] = {Id = 1510,Force_Atk = 3.9,Force_Hp = 24.7},--夏侯渊
			[11] = {Id = 1511,Force_Atk = 4,Force_Hp = 25},--夏侯渊
			[12] = {Id = 1512,Force_Atk = 4.1,Force_Hp = 25.3},--夏侯渊
			[13] = {Id = 1513,Force_Atk = 4.2,Force_Hp = 25.6},--夏侯渊
			[14] = {Id = 1514,Force_Atk = 4.3,Force_Hp = 25.9},--夏侯渊
			[15] = {Id = 1515,Force_Atk = 4.4,Force_Hp = 26.2},--夏侯渊
			[16] = {Id = 1516,Force_Atk = 4.5,Force_Hp = 26.5},--夏侯渊
			[17] = {Id = 1517,Force_Atk = 4.7,Force_Hp = 26.8},--夏侯渊
			[18] = {Id = 1518,Force_Atk = 4.9,Force_Hp = 27.1},--夏侯渊
			[19] = {Id = 1519,Force_Atk = 5,Force_Hp = 27.4},--夏侯渊
			[20] = {Id = 1520,Force_Atk = 5.1,Force_Hp = 27.7},--夏侯渊
			[21] = {Id = 1521,Force_Atk = 5.2,Force_Hp = 28},--夏侯渊
			[22] = {Id = 1522,Force_Atk = 5.4,Force_Hp = 28.3},--夏侯渊
			[23] = {Id = 1523,Force_Atk = 5.8,Force_Hp = 32},--夏侯渊
			[24] = {Id = 1524,Force_Atk = 6,Force_Hp = 32.7},--夏侯渊
			[25] = {Id = 1525,Force_Atk = 6.7,Force_Hp = 37.4},--夏侯渊
			[26] = {Id = 1526,Force_Atk = 7.1,Force_Hp = 39},--夏侯渊
			[27] = {Id = 1527,Force_Atk = 7.5,Force_Hp = 40.6},--夏侯渊
			[28] = {Id = 1528,Force_Atk = 7.8,Force_Hp = 44.4},--夏侯渊
			[29] = {Id = 1529,Force_Atk = 8.3,Force_Hp = 46.1},--夏侯渊
			[30] = {Id = 1530,Force_Atk = 8.7,Force_Hp = 47.9},--夏侯渊
			[31] = {Id = 1531,Force_Atk = 8.9,Force_Hp = 48.6},--夏侯渊
			[32] = {Id = 1532,Force_Atk = 9.5,Force_Hp = 51},--夏侯渊
			[33] = {Id = 1533,Force_Atk = 10.7,Force_Hp = 58.2},--夏侯渊
			[34] = {Id = 1534,Force_Atk = 11.4,Force_Hp = 61.3},--夏侯渊
			[35] = {Id = 1535,Force_Atk = 11.5,Force_Hp = 62.9},--夏侯渊
			[36] = {Id = 1536,Force_Atk = 12.4,Force_Hp = 66.8},--夏侯渊
			[37] = {Id = 1537,Force_Atk = 13.3,Force_Hp = 70.4},--夏侯渊
			[38] = {Id = 1538,Force_Atk = 14.9,Force_Hp = 80.8},--夏侯渊
			[39] = {Id = 1539,Force_Atk = 15.3,Force_Hp = 83.1},--夏侯渊
			[40] = {Id = 1540,Force_Atk = 16.1,Force_Hp = 85.6},--夏侯渊
			[41] = {Id = 1541,Force_Atk = 16.5,Force_Hp = 88.6},--夏侯渊
			[42] = {Id = 1542,Force_Atk = 17.8,Force_Hp = 93.9},--夏侯渊
			[43] = {Id = 1543,Force_Atk = 20.1,Force_Hp = 108.3},--夏侯渊
			[44] = {Id = 1544,Force_Atk = 21.7,Force_Hp = 115.3},--夏侯渊
			[45] = {Id = 1545,Force_Atk = 23.7,Force_Hp = 128.8},--夏侯渊
			[46] = {Id = 1546,Force_Atk = 25.8,Force_Hp = 137.6},--夏侯渊
			[47] = {Id = 1547,Force_Atk = 27.7,Force_Hp = 146.1},--夏侯渊
			[48] = {Id = 1548,Force_Atk = 31.4,Force_Hp = 168.9},--夏侯渊
			[49] = {Id = 1549,Force_Atk = 34,Force_Hp = 180},--夏侯渊
			[50] = {Id = 1550,Force_Atk = 35.5,Force_Hp = 186}--夏侯渊
		}
	},--夏侯渊
	[1102009] = {
		Siege = 76,
		Tanlent_Ids = {24,25,1},
		Card_Cost = 8,
		DominanceLv = {
			[1] = {Id = 1551,Force_Atk = 3,Force_Hp = 22},--徐晃
			[2] = {Id = 1552,Force_Atk = 3.1,Force_Hp = 22.3},--徐晃
			[3] = {Id = 1553,Force_Atk = 3.2,Force_Hp = 22.6},--徐晃
			[4] = {Id = 1554,Force_Atk = 3.3,Force_Hp = 22.9},--徐晃
			[5] = {Id = 1555,Force_Atk = 3.4,Force_Hp = 23.2},--徐晃
			[6] = {Id = 1556,Force_Atk = 3.5,Force_Hp = 23.5},--徐晃
			[7] = {Id = 1557,Force_Atk = 3.6,Force_Hp = 23.8},--徐晃
			[8] = {Id = 1558,Force_Atk = 3.7,Force_Hp = 24.1},--徐晃
			[9] = {Id = 1559,Force_Atk = 3.8,Force_Hp = 24.4},--徐晃
			[10] = {Id = 1560,Force_Atk = 3.9,Force_Hp = 24.7},--徐晃
			[11] = {Id = 1561,Force_Atk = 4,Force_Hp = 25},--徐晃
			[12] = {Id = 1562,Force_Atk = 4.1,Force_Hp = 25.3},--徐晃
			[13] = {Id = 1563,Force_Atk = 4.2,Force_Hp = 25.6},--徐晃
			[14] = {Id = 1564,Force_Atk = 4.3,Force_Hp = 25.9},--徐晃
			[15] = {Id = 1565,Force_Atk = 4.4,Force_Hp = 26.2},--徐晃
			[16] = {Id = 1566,Force_Atk = 4.5,Force_Hp = 26.5},--徐晃
			[17] = {Id = 1567,Force_Atk = 4.7,Force_Hp = 26.8},--徐晃
			[18] = {Id = 1568,Force_Atk = 4.9,Force_Hp = 27.1},--徐晃
			[19] = {Id = 1569,Force_Atk = 5,Force_Hp = 27.4},--徐晃
			[20] = {Id = 1570,Force_Atk = 5.1,Force_Hp = 27.7},--徐晃
			[21] = {Id = 1571,Force_Atk = 5.2,Force_Hp = 28},--徐晃
			[22] = {Id = 1572,Force_Atk = 5.4,Force_Hp = 28.3},--徐晃
			[23] = {Id = 1573,Force_Atk = 5.8,Force_Hp = 32},--徐晃
			[24] = {Id = 1574,Force_Atk = 6,Force_Hp = 32.7},--徐晃
			[25] = {Id = 1575,Force_Atk = 6.7,Force_Hp = 37.4},--徐晃
			[26] = {Id = 1576,Force_Atk = 7.1,Force_Hp = 39},--徐晃
			[27] = {Id = 1577,Force_Atk = 7.5,Force_Hp = 40.6},--徐晃
			[28] = {Id = 1578,Force_Atk = 7.8,Force_Hp = 44.4},--徐晃
			[29] = {Id = 1579,Force_Atk = 8.3,Force_Hp = 46.1},--徐晃
			[30] = {Id = 1580,Force_Atk = 8.7,Force_Hp = 47.9},--徐晃
			[31] = {Id = 1581,Force_Atk = 8.9,Force_Hp = 48.6},--徐晃
			[32] = {Id = 1582,Force_Atk = 9.5,Force_Hp = 51},--徐晃
			[33] = {Id = 1583,Force_Atk = 10.7,Force_Hp = 58.2},--徐晃
			[34] = {Id = 1584,Force_Atk = 11.4,Force_Hp = 61.3},--徐晃
			[35] = {Id = 1585,Force_Atk = 11.5,Force_Hp = 62.9},--徐晃
			[36] = {Id = 1586,Force_Atk = 12.4,Force_Hp = 66.8},--徐晃
			[37] = {Id = 1587,Force_Atk = 13.3,Force_Hp = 70.4},--徐晃
			[38] = {Id = 1588,Force_Atk = 14.9,Force_Hp = 80.8},--徐晃
			[39] = {Id = 1589,Force_Atk = 15.3,Force_Hp = 83.1},--徐晃
			[40] = {Id = 1590,Force_Atk = 16.1,Force_Hp = 85.6},--徐晃
			[41] = {Id = 1591,Force_Atk = 16.5,Force_Hp = 88.6},--徐晃
			[42] = {Id = 1592,Force_Atk = 17.8,Force_Hp = 93.9},--徐晃
			[43] = {Id = 1593,Force_Atk = 20.1,Force_Hp = 108.3},--徐晃
			[44] = {Id = 1594,Force_Atk = 21.7,Force_Hp = 115.3},--徐晃
			[45] = {Id = 1595,Force_Atk = 23.7,Force_Hp = 128.8},--徐晃
			[46] = {Id = 1596,Force_Atk = 25.8,Force_Hp = 137.6},--徐晃
			[47] = {Id = 1597,Force_Atk = 27.7,Force_Hp = 146.1},--徐晃
			[48] = {Id = 1598,Force_Atk = 31.4,Force_Hp = 168.9},--徐晃
			[49] = {Id = 1599,Force_Atk = 34,Force_Hp = 180},--徐晃
			[50] = {Id = 1600,Force_Atk = 35.5,Force_Hp = 186}--徐晃
		}
	},--徐晃
	[1102010] = {
		Siege = 14,
		Tanlent_Ids = {1,2,3},
		Card_Cost = 8,
		DominanceLv = {
			[1] = {Id = 1601,Force_Atk = 3,Force_Hp = 22},--张郃
			[2] = {Id = 1602,Force_Atk = 3.1,Force_Hp = 22.3},--张郃
			[3] = {Id = 1603,Force_Atk = 3.2,Force_Hp = 22.6},--张郃
			[4] = {Id = 1604,Force_Atk = 3.3,Force_Hp = 22.9},--张郃
			[5] = {Id = 1605,Force_Atk = 3.4,Force_Hp = 23.2},--张郃
			[6] = {Id = 1606,Force_Atk = 3.5,Force_Hp = 23.5},--张郃
			[7] = {Id = 1607,Force_Atk = 3.6,Force_Hp = 23.8},--张郃
			[8] = {Id = 1608,Force_Atk = 3.7,Force_Hp = 24.1},--张郃
			[9] = {Id = 1609,Force_Atk = 3.8,Force_Hp = 24.4},--张郃
			[10] = {Id = 1610,Force_Atk = 3.9,Force_Hp = 24.7},--张郃
			[11] = {Id = 1611,Force_Atk = 4,Force_Hp = 25},--张郃
			[12] = {Id = 1612,Force_Atk = 4.1,Force_Hp = 25.3},--张郃
			[13] = {Id = 1613,Force_Atk = 4.2,Force_Hp = 25.6},--张郃
			[14] = {Id = 1614,Force_Atk = 4.3,Force_Hp = 25.9},--张郃
			[15] = {Id = 1615,Force_Atk = 4.4,Force_Hp = 26.2},--张郃
			[16] = {Id = 1616,Force_Atk = 4.5,Force_Hp = 26.5},--张郃
			[17] = {Id = 1617,Force_Atk = 4.7,Force_Hp = 26.8},--张郃
			[18] = {Id = 1618,Force_Atk = 4.9,Force_Hp = 27.1},--张郃
			[19] = {Id = 1619,Force_Atk = 5,Force_Hp = 27.4},--张郃
			[20] = {Id = 1620,Force_Atk = 5.1,Force_Hp = 27.7},--张郃
			[21] = {Id = 1621,Force_Atk = 5.2,Force_Hp = 28},--张郃
			[22] = {Id = 1622,Force_Atk = 5.4,Force_Hp = 28.3},--张郃
			[23] = {Id = 1623,Force_Atk = 5.8,Force_Hp = 32},--张郃
			[24] = {Id = 1624,Force_Atk = 6,Force_Hp = 32.7},--张郃
			[25] = {Id = 1625,Force_Atk = 6.7,Force_Hp = 37.4},--张郃
			[26] = {Id = 1626,Force_Atk = 7.1,Force_Hp = 39},--张郃
			[27] = {Id = 1627,Force_Atk = 7.5,Force_Hp = 40.6},--张郃
			[28] = {Id = 1628,Force_Atk = 7.8,Force_Hp = 44.4},--张郃
			[29] = {Id = 1629,Force_Atk = 8.3,Force_Hp = 46.1},--张郃
			[30] = {Id = 1630,Force_Atk = 8.7,Force_Hp = 47.9},--张郃
			[31] = {Id = 1631,Force_Atk = 8.9,Force_Hp = 48.6},--张郃
			[32] = {Id = 1632,Force_Atk = 9.5,Force_Hp = 51},--张郃
			[33] = {Id = 1633,Force_Atk = 10.7,Force_Hp = 58.2},--张郃
			[34] = {Id = 1634,Force_Atk = 11.4,Force_Hp = 61.3},--张郃
			[35] = {Id = 1635,Force_Atk = 11.5,Force_Hp = 62.9},--张郃
			[36] = {Id = 1636,Force_Atk = 12.4,Force_Hp = 66.8},--张郃
			[37] = {Id = 1637,Force_Atk = 13.3,Force_Hp = 70.4},--张郃
			[38] = {Id = 1638,Force_Atk = 14.9,Force_Hp = 80.8},--张郃
			[39] = {Id = 1639,Force_Atk = 15.3,Force_Hp = 83.1},--张郃
			[40] = {Id = 1640,Force_Atk = 16.1,Force_Hp = 85.6},--张郃
			[41] = {Id = 1641,Force_Atk = 16.5,Force_Hp = 88.6},--张郃
			[42] = {Id = 1642,Force_Atk = 17.8,Force_Hp = 93.9},--张郃
			[43] = {Id = 1643,Force_Atk = 20.1,Force_Hp = 108.3},--张郃
			[44] = {Id = 1644,Force_Atk = 21.7,Force_Hp = 115.3},--张郃
			[45] = {Id = 1645,Force_Atk = 23.7,Force_Hp = 128.8},--张郃
			[46] = {Id = 1646,Force_Atk = 25.8,Force_Hp = 137.6},--张郃
			[47] = {Id = 1647,Force_Atk = 27.7,Force_Hp = 146.1},--张郃
			[48] = {Id = 1648,Force_Atk = 31.4,Force_Hp = 168.9},--张郃
			[49] = {Id = 1649,Force_Atk = 34,Force_Hp = 180},--张郃
			[50] = {Id = 1650,Force_Atk = 35.5,Force_Hp = 186}--张郃
		}
	},--张郃
	[1102011] = {
		Siege = 33,
		Tanlent_Ids = {4,5,6},
		Card_Cost = 8,
		DominanceLv = {
			[1] = {Id = 1651,Force_Atk = 3,Force_Hp = 22},--张飞
			[2] = {Id = 1652,Force_Atk = 3.1,Force_Hp = 22.3},--张飞
			[3] = {Id = 1653,Force_Atk = 3.2,Force_Hp = 22.6},--张飞
			[4] = {Id = 1654,Force_Atk = 3.3,Force_Hp = 22.9},--张飞
			[5] = {Id = 1655,Force_Atk = 3.4,Force_Hp = 23.2},--张飞
			[6] = {Id = 1656,Force_Atk = 3.5,Force_Hp = 23.5},--张飞
			[7] = {Id = 1657,Force_Atk = 3.6,Force_Hp = 23.8},--张飞
			[8] = {Id = 1658,Force_Atk = 3.7,Force_Hp = 24.1},--张飞
			[9] = {Id = 1659,Force_Atk = 3.8,Force_Hp = 24.4},--张飞
			[10] = {Id = 1660,Force_Atk = 3.9,Force_Hp = 24.7},--张飞
			[11] = {Id = 1661,Force_Atk = 4,Force_Hp = 25},--张飞
			[12] = {Id = 1662,Force_Atk = 4.1,Force_Hp = 25.3},--张飞
			[13] = {Id = 1663,Force_Atk = 4.2,Force_Hp = 25.6},--张飞
			[14] = {Id = 1664,Force_Atk = 4.3,Force_Hp = 25.9},--张飞
			[15] = {Id = 1665,Force_Atk = 4.4,Force_Hp = 26.2},--张飞
			[16] = {Id = 1666,Force_Atk = 4.5,Force_Hp = 26.5},--张飞
			[17] = {Id = 1667,Force_Atk = 4.7,Force_Hp = 26.8},--张飞
			[18] = {Id = 1668,Force_Atk = 4.9,Force_Hp = 27.1},--张飞
			[19] = {Id = 1669,Force_Atk = 5,Force_Hp = 27.4},--张飞
			[20] = {Id = 1670,Force_Atk = 5.1,Force_Hp = 27.7},--张飞
			[21] = {Id = 1671,Force_Atk = 5.2,Force_Hp = 28},--张飞
			[22] = {Id = 1672,Force_Atk = 5.4,Force_Hp = 28.3},--张飞
			[23] = {Id = 1673,Force_Atk = 5.8,Force_Hp = 32},--张飞
			[24] = {Id = 1674,Force_Atk = 6,Force_Hp = 32.7},--张飞
			[25] = {Id = 1675,Force_Atk = 6.7,Force_Hp = 37.4},--张飞
			[26] = {Id = 1676,Force_Atk = 7.1,Force_Hp = 39},--张飞
			[27] = {Id = 1677,Force_Atk = 7.5,Force_Hp = 40.6},--张飞
			[28] = {Id = 1678,Force_Atk = 7.8,Force_Hp = 44.4},--张飞
			[29] = {Id = 1679,Force_Atk = 8.3,Force_Hp = 46.1},--张飞
			[30] = {Id = 1680,Force_Atk = 8.7,Force_Hp = 47.9},--张飞
			[31] = {Id = 1681,Force_Atk = 8.9,Force_Hp = 48.6},--张飞
			[32] = {Id = 1682,Force_Atk = 9.5,Force_Hp = 51},--张飞
			[33] = {Id = 1683,Force_Atk = 10.7,Force_Hp = 58.2},--张飞
			[34] = {Id = 1684,Force_Atk = 11.4,Force_Hp = 61.3},--张飞
			[35] = {Id = 1685,Force_Atk = 11.5,Force_Hp = 62.9},--张飞
			[36] = {Id = 1686,Force_Atk = 12.4,Force_Hp = 66.8},--张飞
			[37] = {Id = 1687,Force_Atk = 13.3,Force_Hp = 70.4},--张飞
			[38] = {Id = 1688,Force_Atk = 14.9,Force_Hp = 80.8},--张飞
			[39] = {Id = 1689,Force_Atk = 15.3,Force_Hp = 83.1},--张飞
			[40] = {Id = 1690,Force_Atk = 16.1,Force_Hp = 85.6},--张飞
			[41] = {Id = 1691,Force_Atk = 16.5,Force_Hp = 88.6},--张飞
			[42] = {Id = 1692,Force_Atk = 17.8,Force_Hp = 93.9},--张飞
			[43] = {Id = 1693,Force_Atk = 20.1,Force_Hp = 108.3},--张飞
			[44] = {Id = 1694,Force_Atk = 21.7,Force_Hp = 115.3},--张飞
			[45] = {Id = 1695,Force_Atk = 23.7,Force_Hp = 128.8},--张飞
			[46] = {Id = 1696,Force_Atk = 25.8,Force_Hp = 137.6},--张飞
			[47] = {Id = 1697,Force_Atk = 27.7,Force_Hp = 146.1},--张飞
			[48] = {Id = 1698,Force_Atk = 31.4,Force_Hp = 168.9},--张飞
			[49] = {Id = 1699,Force_Atk = 34,Force_Hp = 180},--张飞
			[50] = {Id = 1700,Force_Atk = 35.5,Force_Hp = 186}--张飞
		}
	},--张飞
	[1102012] = {
		Siege = 26,
		Tanlent_Ids = {7,8,9},
		Card_Cost = 8,
		DominanceLv = {
			[1] = {Id = 1701,Force_Atk = 3,Force_Hp = 22},--夏侯惇
			[2] = {Id = 1702,Force_Atk = 3.1,Force_Hp = 22.3},--夏侯惇
			[3] = {Id = 1703,Force_Atk = 3.2,Force_Hp = 22.6},--夏侯惇
			[4] = {Id = 1704,Force_Atk = 3.3,Force_Hp = 22.9},--夏侯惇
			[5] = {Id = 1705,Force_Atk = 3.4,Force_Hp = 23.2},--夏侯惇
			[6] = {Id = 1706,Force_Atk = 3.5,Force_Hp = 23.5},--夏侯惇
			[7] = {Id = 1707,Force_Atk = 3.6,Force_Hp = 23.8},--夏侯惇
			[8] = {Id = 1708,Force_Atk = 3.7,Force_Hp = 24.1},--夏侯惇
			[9] = {Id = 1709,Force_Atk = 3.8,Force_Hp = 24.4},--夏侯惇
			[10] = {Id = 1710,Force_Atk = 3.9,Force_Hp = 24.7},--夏侯惇
			[11] = {Id = 1711,Force_Atk = 4,Force_Hp = 25},--夏侯惇
			[12] = {Id = 1712,Force_Atk = 4.1,Force_Hp = 25.3},--夏侯惇
			[13] = {Id = 1713,Force_Atk = 4.2,Force_Hp = 25.6},--夏侯惇
			[14] = {Id = 1714,Force_Atk = 4.3,Force_Hp = 25.9},--夏侯惇
			[15] = {Id = 1715,Force_Atk = 4.4,Force_Hp = 26.2},--夏侯惇
			[16] = {Id = 1716,Force_Atk = 4.5,Force_Hp = 26.5},--夏侯惇
			[17] = {Id = 1717,Force_Atk = 4.7,Force_Hp = 26.8},--夏侯惇
			[18] = {Id = 1718,Force_Atk = 4.9,Force_Hp = 27.1},--夏侯惇
			[19] = {Id = 1719,Force_Atk = 5,Force_Hp = 27.4},--夏侯惇
			[20] = {Id = 1720,Force_Atk = 5.1,Force_Hp = 27.7},--夏侯惇
			[21] = {Id = 1721,Force_Atk = 5.2,Force_Hp = 28},--夏侯惇
			[22] = {Id = 1722,Force_Atk = 5.4,Force_Hp = 28.3},--夏侯惇
			[23] = {Id = 1723,Force_Atk = 5.8,Force_Hp = 32},--夏侯惇
			[24] = {Id = 1724,Force_Atk = 6,Force_Hp = 32.7},--夏侯惇
			[25] = {Id = 1725,Force_Atk = 6.7,Force_Hp = 37.4},--夏侯惇
			[26] = {Id = 1726,Force_Atk = 7.1,Force_Hp = 39},--夏侯惇
			[27] = {Id = 1727,Force_Atk = 7.5,Force_Hp = 40.6},--夏侯惇
			[28] = {Id = 1728,Force_Atk = 7.8,Force_Hp = 44.4},--夏侯惇
			[29] = {Id = 1729,Force_Atk = 8.3,Force_Hp = 46.1},--夏侯惇
			[30] = {Id = 1730,Force_Atk = 8.7,Force_Hp = 47.9},--夏侯惇
			[31] = {Id = 1731,Force_Atk = 8.9,Force_Hp = 48.6},--夏侯惇
			[32] = {Id = 1732,Force_Atk = 9.5,Force_Hp = 51},--夏侯惇
			[33] = {Id = 1733,Force_Atk = 10.7,Force_Hp = 58.2},--夏侯惇
			[34] = {Id = 1734,Force_Atk = 11.4,Force_Hp = 61.3},--夏侯惇
			[35] = {Id = 1735,Force_Atk = 11.5,Force_Hp = 62.9},--夏侯惇
			[36] = {Id = 1736,Force_Atk = 12.4,Force_Hp = 66.8},--夏侯惇
			[37] = {Id = 1737,Force_Atk = 13.3,Force_Hp = 70.4},--夏侯惇
			[38] = {Id = 1738,Force_Atk = 14.9,Force_Hp = 80.8},--夏侯惇
			[39] = {Id = 1739,Force_Atk = 15.3,Force_Hp = 83.1},--夏侯惇
			[40] = {Id = 1740,Force_Atk = 16.1,Force_Hp = 85.6},--夏侯惇
			[41] = {Id = 1741,Force_Atk = 16.5,Force_Hp = 88.6},--夏侯惇
			[42] = {Id = 1742,Force_Atk = 17.8,Force_Hp = 93.9},--夏侯惇
			[43] = {Id = 1743,Force_Atk = 20.1,Force_Hp = 108.3},--夏侯惇
			[44] = {Id = 1744,Force_Atk = 21.7,Force_Hp = 115.3},--夏侯惇
			[45] = {Id = 1745,Force_Atk = 23.7,Force_Hp = 128.8},--夏侯惇
			[46] = {Id = 1746,Force_Atk = 25.8,Force_Hp = 137.6},--夏侯惇
			[47] = {Id = 1747,Force_Atk = 27.7,Force_Hp = 146.1},--夏侯惇
			[48] = {Id = 1748,Force_Atk = 31.4,Force_Hp = 168.9},--夏侯惇
			[49] = {Id = 1749,Force_Atk = 34,Force_Hp = 180},--夏侯惇
			[50] = {Id = 1750,Force_Atk = 35.5,Force_Hp = 186}--夏侯惇
		}
	},--夏侯惇
	[1102013] = {
		Siege = 43,
		Tanlent_Ids = {10,11,12},
		Card_Cost = 6,
		DominanceLv = {
			[1] = {Id = 1751,Force_Atk = 2.2,Force_Hp = 15.2},--塞伯罗斯
			[2] = {Id = 1752,Force_Atk = 2.3,Force_Hp = 15.4},--塞伯罗斯
			[3] = {Id = 1753,Force_Atk = 2.4,Force_Hp = 15.6},--塞伯罗斯
			[4] = {Id = 1754,Force_Atk = 2.5,Force_Hp = 15.8},--塞伯罗斯
			[5] = {Id = 1755,Force_Atk = 2.6,Force_Hp = 16},--塞伯罗斯
			[6] = {Id = 1756,Force_Atk = 2.7,Force_Hp = 16.2},--塞伯罗斯
			[7] = {Id = 1757,Force_Atk = 2.8,Force_Hp = 16.4},--塞伯罗斯
			[8] = {Id = 1758,Force_Atk = 2.9,Force_Hp = 16.6},--塞伯罗斯
			[9] = {Id = 1759,Force_Atk = 3,Force_Hp = 16.8},--塞伯罗斯
			[10] = {Id = 1760,Force_Atk = 3.1,Force_Hp = 17},--塞伯罗斯
			[11] = {Id = 1761,Force_Atk = 3.2,Force_Hp = 17.2},--塞伯罗斯
			[12] = {Id = 1762,Force_Atk = 3.3,Force_Hp = 17.4},--塞伯罗斯
			[13] = {Id = 1763,Force_Atk = 3.4,Force_Hp = 17.6},--塞伯罗斯
			[14] = {Id = 1764,Force_Atk = 3.5,Force_Hp = 18},--塞伯罗斯
			[15] = {Id = 1765,Force_Atk = 3.6,Force_Hp = 18.6},--塞伯罗斯
			[16] = {Id = 1766,Force_Atk = 3.7,Force_Hp = 19.2},--塞伯罗斯
			[17] = {Id = 1767,Force_Atk = 3.8,Force_Hp = 19.8},--塞伯罗斯
			[18] = {Id = 1768,Force_Atk = 3.9,Force_Hp = 20.9},--塞伯罗斯
			[19] = {Id = 1769,Force_Atk = 4,Force_Hp = 21.3},--塞伯罗斯
			[20] = {Id = 1770,Force_Atk = 4.1,Force_Hp = 21.5},--塞伯罗斯
			[21] = {Id = 1771,Force_Atk = 4.2,Force_Hp = 21.7},--塞伯罗斯
			[22] = {Id = 1772,Force_Atk = 4.3,Force_Hp = 22.3},--塞伯罗斯
			[23] = {Id = 1773,Force_Atk = 4.5,Force_Hp = 24.5},--塞伯罗斯
			[24] = {Id = 1774,Force_Atk = 4.6,Force_Hp = 25.1},--塞伯罗斯
			[25] = {Id = 1775,Force_Atk = 5.1,Force_Hp = 28.7},--塞伯罗斯
			[26] = {Id = 1776,Force_Atk = 5.4,Force_Hp = 29.9},--塞伯罗斯
			[27] = {Id = 1777,Force_Atk = 5.7,Force_Hp = 31.1},--塞伯罗斯
			[28] = {Id = 1778,Force_Atk = 6,Force_Hp = 33},--塞伯罗斯
			[29] = {Id = 1779,Force_Atk = 6.4,Force_Hp = 34.3},--塞伯罗斯
			[30] = {Id = 1780,Force_Atk = 6.7,Force_Hp = 35.3},--塞伯罗斯
			[31] = {Id = 1781,Force_Atk = 6.9,Force_Hp = 37.2},--塞伯罗斯
			[32] = {Id = 1782,Force_Atk = 7.3,Force_Hp = 39.1},--塞伯罗斯
			[33] = {Id = 1783,Force_Atk = 8.2,Force_Hp = 44.6},--塞伯罗斯
			[34] = {Id = 1784,Force_Atk = 8.8,Force_Hp = 47},--塞伯罗斯
			[35] = {Id = 1785,Force_Atk = 9,Force_Hp = 48.2},--塞伯罗斯
			[36] = {Id = 1786,Force_Atk = 9.5,Force_Hp = 51.2},--塞伯罗斯
			[37] = {Id = 1787,Force_Atk = 10.2,Force_Hp = 54},--塞伯罗斯
			[38] = {Id = 1788,Force_Atk = 11.5,Force_Hp = 62},--塞伯罗斯
			[39] = {Id = 1789,Force_Atk = 11.7,Force_Hp = 63.7},--塞伯罗斯
			[40] = {Id = 1790,Force_Atk = 12.3,Force_Hp = 65.6},--塞伯罗斯
			[41] = {Id = 1791,Force_Atk = 12.7,Force_Hp = 67.9},--塞伯罗斯
			[42] = {Id = 1792,Force_Atk = 13.6,Force_Hp = 72},--塞伯罗斯
			[43] = {Id = 1793,Force_Atk = 15.4,Force_Hp = 83.1},--塞伯罗斯
			[44] = {Id = 1794,Force_Atk = 16.6,Force_Hp = 88.4},--塞伯罗斯
			[45] = {Id = 1795,Force_Atk = 18.2,Force_Hp = 98.8},--塞伯罗斯
			[46] = {Id = 1796,Force_Atk = 19.8,Force_Hp = 105.5},--塞伯罗斯
			[47] = {Id = 1797,Force_Atk = 21.3,Force_Hp = 112},--塞伯罗斯
			[48] = {Id = 1798,Force_Atk = 24.1,Force_Hp = 129.5},--塞伯罗斯
			[49] = {Id = 1799,Force_Atk = 26,Force_Hp = 138},--塞伯罗斯
			[50] = {Id = 1800,Force_Atk = 27.2,Force_Hp = 142.6}--塞伯罗斯
		}
	},--塞伯罗斯
	[1102014] = {
		Siege = 33,
		Tanlent_Ids = {13,14,15},
		Card_Cost = 7,
		DominanceLv = {
			[1] = {Id = 1801,Force_Atk = 2.5,Force_Hp = 17},--石灵明
			[2] = {Id = 1802,Force_Atk = 2.6,Force_Hp = 17.2},--石灵明
			[3] = {Id = 1803,Force_Atk = 2.7,Force_Hp = 17.4},--石灵明
			[4] = {Id = 1804,Force_Atk = 2.8,Force_Hp = 17.6},--石灵明
			[5] = {Id = 1805,Force_Atk = 2.9,Force_Hp = 17.8},--石灵明
			[6] = {Id = 1806,Force_Atk = 3,Force_Hp = 18},--石灵明
			[7] = {Id = 1807,Force_Atk = 3.1,Force_Hp = 18.2},--石灵明
			[8] = {Id = 1808,Force_Atk = 3.2,Force_Hp = 18.4},--石灵明
			[9] = {Id = 1809,Force_Atk = 3.3,Force_Hp = 18.6},--石灵明
			[10] = {Id = 1810,Force_Atk = 3.4,Force_Hp = 18.8},--石灵明
			[11] = {Id = 1811,Force_Atk = 3.5,Force_Hp = 19},--石灵明
			[12] = {Id = 1812,Force_Atk = 3.6,Force_Hp = 19.2},--石灵明
			[13] = {Id = 1813,Force_Atk = 3.7,Force_Hp = 20},--石灵明
			[14] = {Id = 1814,Force_Atk = 3.8,Force_Hp = 20.4},--石灵明
			[15] = {Id = 1815,Force_Atk = 3.9,Force_Hp = 20.8},--石灵明
			[16] = {Id = 1816,Force_Atk = 4,Force_Hp = 21},--石灵明
			[17] = {Id = 1817,Force_Atk = 4.1,Force_Hp = 22.4},--石灵明
			[18] = {Id = 1818,Force_Atk = 4.2,Force_Hp = 22.8},--石灵明
			[19] = {Id = 1819,Force_Atk = 4.3,Force_Hp = 23.2},--石灵明
			[20] = {Id = 1820,Force_Atk = 4.4,Force_Hp = 23.7},--石灵明
			[21] = {Id = 1821,Force_Atk = 4.5,Force_Hp = 24.1},--石灵明
			[22] = {Id = 1822,Force_Atk = 4.7,Force_Hp = 24.5},--石灵明
			[23] = {Id = 1823,Force_Atk = 5,Force_Hp = 27.7},--石灵明
			[24] = {Id = 1824,Force_Atk = 5.2,Force_Hp = 28.3},--石灵明
			[25] = {Id = 1825,Force_Atk = 5.8,Force_Hp = 32.4},--石灵明
			[26] = {Id = 1826,Force_Atk = 6.1,Force_Hp = 33.8},--石灵明
			[27] = {Id = 1827,Force_Atk = 6.5,Force_Hp = 35.2},--石灵明
			[28] = {Id = 1828,Force_Atk = 7,Force_Hp = 37},--石灵明
			[29] = {Id = 1829,Force_Atk = 7.4,Force_Hp = 39},--石灵明
			[30] = {Id = 1830,Force_Atk = 7.6,Force_Hp = 41},--石灵明
			[31] = {Id = 1831,Force_Atk = 7.7,Force_Hp = 42.1},--石灵明
			[32] = {Id = 1832,Force_Atk = 8.2,Force_Hp = 44.2},--石灵明
			[33] = {Id = 1833,Force_Atk = 9.2,Force_Hp = 50.4},--石灵明
			[34] = {Id = 1834,Force_Atk = 9.5,Force_Hp = 53.1},--石灵明
			[35] = {Id = 1835,Force_Atk = 10,Force_Hp = 54.5},--石灵明
			[36] = {Id = 1836,Force_Atk = 10.7,Force_Hp = 57.9},--石灵明
			[37] = {Id = 1837,Force_Atk = 11.5,Force_Hp = 61},--石灵明
			[38] = {Id = 1838,Force_Atk = 12.9,Force_Hp = 70},--石灵明
			[39] = {Id = 1839,Force_Atk = 13.2,Force_Hp = 72},--石灵明
			[40] = {Id = 1840,Force_Atk = 13.9,Force_Hp = 74},--石灵明
			[41] = {Id = 1841,Force_Atk = 14.3,Force_Hp = 76.8},--石灵明
			[42] = {Id = 1842,Force_Atk = 15.4,Force_Hp = 81.4},--石灵明
			[43] = {Id = 1843,Force_Atk = 17.4,Force_Hp = 93.9},--石灵明
			[44] = {Id = 1844,Force_Atk = 18.8,Force_Hp = 99.9},--石灵明
			[45] = {Id = 1845,Force_Atk = 20.6,Force_Hp = 111.6},--石灵明
			[46] = {Id = 1846,Force_Atk = 22.3,Force_Hp = 119.2},--石灵明
			[47] = {Id = 1847,Force_Atk = 24,Force_Hp = 126.7},--石灵明
			[48] = {Id = 1848,Force_Atk = 27.2,Force_Hp = 146.4},--石灵明
			[49] = {Id = 1849,Force_Atk = 29.4,Force_Hp = 156},--石灵明
			[50] = {Id = 1850,Force_Atk = 30.8,Force_Hp = 161.2}--石灵明
		}
	},--石灵明
	[1102015] = {
		Siege = 70,
		Tanlent_Ids = {16,17,18},
		Card_Cost = 6,
		DominanceLv = {
			[1] = {Id = 1851,Force_Atk = 2.2,Force_Hp = 15.2},--于禁
			[2] = {Id = 1852,Force_Atk = 2.3,Force_Hp = 15.4},--于禁
			[3] = {Id = 1853,Force_Atk = 2.4,Force_Hp = 15.6},--于禁
			[4] = {Id = 1854,Force_Atk = 2.5,Force_Hp = 15.8},--于禁
			[5] = {Id = 1855,Force_Atk = 2.6,Force_Hp = 16},--于禁
			[6] = {Id = 1856,Force_Atk = 2.7,Force_Hp = 16.2},--于禁
			[7] = {Id = 1857,Force_Atk = 2.8,Force_Hp = 16.4},--于禁
			[8] = {Id = 1858,Force_Atk = 2.9,Force_Hp = 16.6},--于禁
			[9] = {Id = 1859,Force_Atk = 3,Force_Hp = 16.8},--于禁
			[10] = {Id = 1860,Force_Atk = 3.1,Force_Hp = 17},--于禁
			[11] = {Id = 1861,Force_Atk = 3.2,Force_Hp = 17.2},--于禁
			[12] = {Id = 1862,Force_Atk = 3.3,Force_Hp = 17.4},--于禁
			[13] = {Id = 1863,Force_Atk = 3.4,Force_Hp = 17.6},--于禁
			[14] = {Id = 1864,Force_Atk = 3.5,Force_Hp = 18},--于禁
			[15] = {Id = 1865,Force_Atk = 3.6,Force_Hp = 18.6},--于禁
			[16] = {Id = 1866,Force_Atk = 3.7,Force_Hp = 19.2},--于禁
			[17] = {Id = 1867,Force_Atk = 3.8,Force_Hp = 19.8},--于禁
			[18] = {Id = 1868,Force_Atk = 3.9,Force_Hp = 20.9},--于禁
			[19] = {Id = 1869,Force_Atk = 4,Force_Hp = 21.3},--于禁
			[20] = {Id = 1870,Force_Atk = 4.1,Force_Hp = 21.5},--于禁
			[21] = {Id = 1871,Force_Atk = 4.2,Force_Hp = 21.7},--于禁
			[22] = {Id = 1872,Force_Atk = 4.3,Force_Hp = 22.3},--于禁
			[23] = {Id = 1873,Force_Atk = 4.5,Force_Hp = 24.5},--于禁
			[24] = {Id = 1874,Force_Atk = 4.6,Force_Hp = 25.1},--于禁
			[25] = {Id = 1875,Force_Atk = 5.1,Force_Hp = 28.7},--于禁
			[26] = {Id = 1876,Force_Atk = 5.4,Force_Hp = 29.9},--于禁
			[27] = {Id = 1877,Force_Atk = 5.7,Force_Hp = 31.1},--于禁
			[28] = {Id = 1878,Force_Atk = 6,Force_Hp = 33},--于禁
			[29] = {Id = 1879,Force_Atk = 6.4,Force_Hp = 34.3},--于禁
			[30] = {Id = 1880,Force_Atk = 6.7,Force_Hp = 35.3},--于禁
			[31] = {Id = 1881,Force_Atk = 6.9,Force_Hp = 37.2},--于禁
			[32] = {Id = 1882,Force_Atk = 7.3,Force_Hp = 39.1},--于禁
			[33] = {Id = 1883,Force_Atk = 8.2,Force_Hp = 44.6},--于禁
			[34] = {Id = 1884,Force_Atk = 8.8,Force_Hp = 47},--于禁
			[35] = {Id = 1885,Force_Atk = 9,Force_Hp = 48.2},--于禁
			[36] = {Id = 1886,Force_Atk = 9.5,Force_Hp = 51.2},--于禁
			[37] = {Id = 1887,Force_Atk = 10.2,Force_Hp = 54},--于禁
			[38] = {Id = 1888,Force_Atk = 11.5,Force_Hp = 62},--于禁
			[39] = {Id = 1889,Force_Atk = 11.7,Force_Hp = 63.7},--于禁
			[40] = {Id = 1890,Force_Atk = 12.3,Force_Hp = 65.6},--于禁
			[41] = {Id = 1891,Force_Atk = 12.7,Force_Hp = 67.9},--于禁
			[42] = {Id = 1892,Force_Atk = 13.6,Force_Hp = 72},--于禁
			[43] = {Id = 1893,Force_Atk = 15.4,Force_Hp = 83.1},--于禁
			[44] = {Id = 1894,Force_Atk = 16.6,Force_Hp = 88.4},--于禁
			[45] = {Id = 1895,Force_Atk = 18.2,Force_Hp = 98.8},--于禁
			[46] = {Id = 1896,Force_Atk = 19.8,Force_Hp = 105.5},--于禁
			[47] = {Id = 1897,Force_Atk = 21.3,Force_Hp = 112},--于禁
			[48] = {Id = 1898,Force_Atk = 24.1,Force_Hp = 129.5},--于禁
			[49] = {Id = 1899,Force_Atk = 26,Force_Hp = 138},--于禁
			[50] = {Id = 1900,Force_Atk = 27.2,Force_Hp = 142.6}--于禁
		}
	},--于禁
	[1102016] = {
		Siege = 97,
		Tanlent_Ids = {21,22,23},
		Card_Cost = 8,
		DominanceLv = {
			[1] = {Id = 1901,Force_Atk = 3,Force_Hp = 22},--西方龙
			[2] = {Id = 1902,Force_Atk = 3.1,Force_Hp = 22.3},--西方龙
			[3] = {Id = 1903,Force_Atk = 3.2,Force_Hp = 22.6},--西方龙
			[4] = {Id = 1904,Force_Atk = 3.3,Force_Hp = 22.9},--西方龙
			[5] = {Id = 1905,Force_Atk = 3.4,Force_Hp = 23.2},--西方龙
			[6] = {Id = 1906,Force_Atk = 3.5,Force_Hp = 23.5},--西方龙
			[7] = {Id = 1907,Force_Atk = 3.6,Force_Hp = 23.8},--西方龙
			[8] = {Id = 1908,Force_Atk = 3.7,Force_Hp = 24.1},--西方龙
			[9] = {Id = 1909,Force_Atk = 3.8,Force_Hp = 24.4},--西方龙
			[10] = {Id = 1910,Force_Atk = 3.9,Force_Hp = 24.7},--西方龙
			[11] = {Id = 1911,Force_Atk = 4,Force_Hp = 25},--西方龙
			[12] = {Id = 1912,Force_Atk = 4.1,Force_Hp = 25.3},--西方龙
			[13] = {Id = 1913,Force_Atk = 4.2,Force_Hp = 25.6},--西方龙
			[14] = {Id = 1914,Force_Atk = 4.3,Force_Hp = 25.9},--西方龙
			[15] = {Id = 1915,Force_Atk = 4.4,Force_Hp = 26.2},--西方龙
			[16] = {Id = 1916,Force_Atk = 4.5,Force_Hp = 26.5},--西方龙
			[17] = {Id = 1917,Force_Atk = 4.7,Force_Hp = 26.8},--西方龙
			[18] = {Id = 1918,Force_Atk = 4.9,Force_Hp = 27.1},--西方龙
			[19] = {Id = 1919,Force_Atk = 5,Force_Hp = 27.4},--西方龙
			[20] = {Id = 1920,Force_Atk = 5.1,Force_Hp = 27.7},--西方龙
			[21] = {Id = 1921,Force_Atk = 5.2,Force_Hp = 28},--西方龙
			[22] = {Id = 1922,Force_Atk = 5.4,Force_Hp = 28.3},--西方龙
			[23] = {Id = 1923,Force_Atk = 5.8,Force_Hp = 32},--西方龙
			[24] = {Id = 1924,Force_Atk = 6,Force_Hp = 32.7},--西方龙
			[25] = {Id = 1925,Force_Atk = 6.7,Force_Hp = 37.4},--西方龙
			[26] = {Id = 1926,Force_Atk = 7.1,Force_Hp = 39},--西方龙
			[27] = {Id = 1927,Force_Atk = 7.5,Force_Hp = 40.6},--西方龙
			[28] = {Id = 1928,Force_Atk = 7.8,Force_Hp = 44.4},--西方龙
			[29] = {Id = 1929,Force_Atk = 8.3,Force_Hp = 46.1},--西方龙
			[30] = {Id = 1930,Force_Atk = 8.7,Force_Hp = 47.9},--西方龙
			[31] = {Id = 1931,Force_Atk = 8.9,Force_Hp = 48.6},--西方龙
			[32] = {Id = 1932,Force_Atk = 9.5,Force_Hp = 51},--西方龙
			[33] = {Id = 1933,Force_Atk = 10.7,Force_Hp = 58.2},--西方龙
			[34] = {Id = 1934,Force_Atk = 11.4,Force_Hp = 61.3},--西方龙
			[35] = {Id = 1935,Force_Atk = 11.5,Force_Hp = 62.9},--西方龙
			[36] = {Id = 1936,Force_Atk = 12.4,Force_Hp = 66.8},--西方龙
			[37] = {Id = 1937,Force_Atk = 13.3,Force_Hp = 70.4},--西方龙
			[38] = {Id = 1938,Force_Atk = 14.9,Force_Hp = 80.8},--西方龙
			[39] = {Id = 1939,Force_Atk = 15.3,Force_Hp = 83.1},--西方龙
			[40] = {Id = 1940,Force_Atk = 16.1,Force_Hp = 85.6},--西方龙
			[41] = {Id = 1941,Force_Atk = 16.5,Force_Hp = 88.6},--西方龙
			[42] = {Id = 1942,Force_Atk = 17.8,Force_Hp = 93.9},--西方龙
			[43] = {Id = 1943,Force_Atk = 20.1,Force_Hp = 108.3},--西方龙
			[44] = {Id = 1944,Force_Atk = 21.7,Force_Hp = 115.3},--西方龙
			[45] = {Id = 1945,Force_Atk = 23.7,Force_Hp = 128.8},--西方龙
			[46] = {Id = 1946,Force_Atk = 25.8,Force_Hp = 137.6},--西方龙
			[47] = {Id = 1947,Force_Atk = 27.7,Force_Hp = 146.1},--西方龙
			[48] = {Id = 1948,Force_Atk = 31.4,Force_Hp = 168.9},--西方龙
			[49] = {Id = 1949,Force_Atk = 34,Force_Hp = 180},--西方龙
			[50] = {Id = 1950,Force_Atk = 35.5,Force_Hp = 186}--西方龙
		}
	},--西方龙
	[1102017] = {
		Siege = 83,
		Tanlent_Ids = {24,25,1},
		Card_Cost = 7,
		DominanceLv = {
			[1] = {Id = 1951,Force_Atk = 2.5,Force_Hp = 17},--飞廉
			[2] = {Id = 1952,Force_Atk = 2.6,Force_Hp = 17.2},--飞廉
			[3] = {Id = 1953,Force_Atk = 2.7,Force_Hp = 17.4},--飞廉
			[4] = {Id = 1954,Force_Atk = 2.8,Force_Hp = 17.6},--飞廉
			[5] = {Id = 1955,Force_Atk = 2.9,Force_Hp = 17.8},--飞廉
			[6] = {Id = 1956,Force_Atk = 3,Force_Hp = 18},--飞廉
			[7] = {Id = 1957,Force_Atk = 3.1,Force_Hp = 18.2},--飞廉
			[8] = {Id = 1958,Force_Atk = 3.2,Force_Hp = 18.4},--飞廉
			[9] = {Id = 1959,Force_Atk = 3.3,Force_Hp = 18.6},--飞廉
			[10] = {Id = 1960,Force_Atk = 3.4,Force_Hp = 18.8},--飞廉
			[11] = {Id = 1961,Force_Atk = 3.5,Force_Hp = 19},--飞廉
			[12] = {Id = 1962,Force_Atk = 3.6,Force_Hp = 19.2},--飞廉
			[13] = {Id = 1963,Force_Atk = 3.7,Force_Hp = 20},--飞廉
			[14] = {Id = 1964,Force_Atk = 3.8,Force_Hp = 20.4},--飞廉
			[15] = {Id = 1965,Force_Atk = 3.9,Force_Hp = 20.8},--飞廉
			[16] = {Id = 1966,Force_Atk = 4,Force_Hp = 21},--飞廉
			[17] = {Id = 1967,Force_Atk = 4.1,Force_Hp = 22.4},--飞廉
			[18] = {Id = 1968,Force_Atk = 4.2,Force_Hp = 22.8},--飞廉
			[19] = {Id = 1969,Force_Atk = 4.3,Force_Hp = 23.2},--飞廉
			[20] = {Id = 1970,Force_Atk = 4.4,Force_Hp = 23.7},--飞廉
			[21] = {Id = 1971,Force_Atk = 4.5,Force_Hp = 24.1},--飞廉
			[22] = {Id = 1972,Force_Atk = 4.7,Force_Hp = 24.5},--飞廉
			[23] = {Id = 1973,Force_Atk = 5,Force_Hp = 27.7},--飞廉
			[24] = {Id = 1974,Force_Atk = 5.2,Force_Hp = 28.3},--飞廉
			[25] = {Id = 1975,Force_Atk = 5.8,Force_Hp = 32.4},--飞廉
			[26] = {Id = 1976,Force_Atk = 6.1,Force_Hp = 33.8},--飞廉
			[27] = {Id = 1977,Force_Atk = 6.5,Force_Hp = 35.2},--飞廉
			[28] = {Id = 1978,Force_Atk = 7,Force_Hp = 37},--飞廉
			[29] = {Id = 1979,Force_Atk = 7.4,Force_Hp = 39},--飞廉
			[30] = {Id = 1980,Force_Atk = 7.6,Force_Hp = 41},--飞廉
			[31] = {Id = 1981,Force_Atk = 7.7,Force_Hp = 42.1},--飞廉
			[32] = {Id = 1982,Force_Atk = 8.2,Force_Hp = 44.2},--飞廉
			[33] = {Id = 1983,Force_Atk = 9.2,Force_Hp = 50.4},--飞廉
			[34] = {Id = 1984,Force_Atk = 9.5,Force_Hp = 53.1},--飞廉
			[35] = {Id = 1985,Force_Atk = 10,Force_Hp = 54.5},--飞廉
			[36] = {Id = 1986,Force_Atk = 10.7,Force_Hp = 57.9},--飞廉
			[37] = {Id = 1987,Force_Atk = 11.5,Force_Hp = 61},--飞廉
			[38] = {Id = 1988,Force_Atk = 12.9,Force_Hp = 70},--飞廉
			[39] = {Id = 1989,Force_Atk = 13.2,Force_Hp = 72},--飞廉
			[40] = {Id = 1990,Force_Atk = 13.9,Force_Hp = 74},--飞廉
			[41] = {Id = 1991,Force_Atk = 14.3,Force_Hp = 76.8},--飞廉
			[42] = {Id = 1992,Force_Atk = 15.4,Force_Hp = 81.4},--飞廉
			[43] = {Id = 1993,Force_Atk = 17.4,Force_Hp = 93.9},--飞廉
			[44] = {Id = 1994,Force_Atk = 18.8,Force_Hp = 99.9},--飞廉
			[45] = {Id = 1995,Force_Atk = 20.6,Force_Hp = 111.6},--飞廉
			[46] = {Id = 1996,Force_Atk = 22.3,Force_Hp = 119.2},--飞廉
			[47] = {Id = 1997,Force_Atk = 24,Force_Hp = 126.7},--飞廉
			[48] = {Id = 1998,Force_Atk = 27.2,Force_Hp = 146.4},--飞廉
			[49] = {Id = 1999,Force_Atk = 29.4,Force_Hp = 156},--飞廉
			[50] = {Id = 2000,Force_Atk = 30.8,Force_Hp = 161.2}--飞廉
		}
	},--飞廉
	[1102018] = {
		Siege = 19,
		Tanlent_Ids = {1,2,3},
		Card_Cost = 6,
		DominanceLv = {
			[1] = {Id = 2001,Force_Atk = 2.2,Force_Hp = 15.2},--噬日
			[2] = {Id = 2002,Force_Atk = 2.3,Force_Hp = 15.4},--噬日
			[3] = {Id = 2003,Force_Atk = 2.4,Force_Hp = 15.6},--噬日
			[4] = {Id = 2004,Force_Atk = 2.5,Force_Hp = 15.8},--噬日
			[5] = {Id = 2005,Force_Atk = 2.6,Force_Hp = 16},--噬日
			[6] = {Id = 2006,Force_Atk = 2.7,Force_Hp = 16.2},--噬日
			[7] = {Id = 2007,Force_Atk = 2.8,Force_Hp = 16.4},--噬日
			[8] = {Id = 2008,Force_Atk = 2.9,Force_Hp = 16.6},--噬日
			[9] = {Id = 2009,Force_Atk = 3,Force_Hp = 16.8},--噬日
			[10] = {Id = 2010,Force_Atk = 3.1,Force_Hp = 17},--噬日
			[11] = {Id = 2011,Force_Atk = 3.2,Force_Hp = 17.2},--噬日
			[12] = {Id = 2012,Force_Atk = 3.3,Force_Hp = 17.4},--噬日
			[13] = {Id = 2013,Force_Atk = 3.4,Force_Hp = 17.6},--噬日
			[14] = {Id = 2014,Force_Atk = 3.5,Force_Hp = 18},--噬日
			[15] = {Id = 2015,Force_Atk = 3.6,Force_Hp = 18.6},--噬日
			[16] = {Id = 2016,Force_Atk = 3.7,Force_Hp = 19.2},--噬日
			[17] = {Id = 2017,Force_Atk = 3.8,Force_Hp = 19.8},--噬日
			[18] = {Id = 2018,Force_Atk = 3.9,Force_Hp = 20.9},--噬日
			[19] = {Id = 2019,Force_Atk = 4,Force_Hp = 21.3},--噬日
			[20] = {Id = 2020,Force_Atk = 4.1,Force_Hp = 21.5},--噬日
			[21] = {Id = 2021,Force_Atk = 4.2,Force_Hp = 21.7},--噬日
			[22] = {Id = 2022,Force_Atk = 4.3,Force_Hp = 22.3},--噬日
			[23] = {Id = 2023,Force_Atk = 4.5,Force_Hp = 24.5},--噬日
			[24] = {Id = 2024,Force_Atk = 4.6,Force_Hp = 25.1},--噬日
			[25] = {Id = 2025,Force_Atk = 5.1,Force_Hp = 28.7},--噬日
			[26] = {Id = 2026,Force_Atk = 5.4,Force_Hp = 29.9},--噬日
			[27] = {Id = 2027,Force_Atk = 5.7,Force_Hp = 31.1},--噬日
			[28] = {Id = 2028,Force_Atk = 6,Force_Hp = 33},--噬日
			[29] = {Id = 2029,Force_Atk = 6.4,Force_Hp = 34.3},--噬日
			[30] = {Id = 2030,Force_Atk = 6.7,Force_Hp = 35.3},--噬日
			[31] = {Id = 2031,Force_Atk = 6.9,Force_Hp = 37.2},--噬日
			[32] = {Id = 2032,Force_Atk = 7.3,Force_Hp = 39.1},--噬日
			[33] = {Id = 2033,Force_Atk = 8.2,Force_Hp = 44.6},--噬日
			[34] = {Id = 2034,Force_Atk = 8.8,Force_Hp = 47},--噬日
			[35] = {Id = 2035,Force_Atk = 9,Force_Hp = 48.2},--噬日
			[36] = {Id = 2036,Force_Atk = 9.5,Force_Hp = 51.2},--噬日
			[37] = {Id = 2037,Force_Atk = 10.2,Force_Hp = 54},--噬日
			[38] = {Id = 2038,Force_Atk = 11.5,Force_Hp = 62},--噬日
			[39] = {Id = 2039,Force_Atk = 11.7,Force_Hp = 63.7},--噬日
			[40] = {Id = 2040,Force_Atk = 12.3,Force_Hp = 65.6},--噬日
			[41] = {Id = 2041,Force_Atk = 12.7,Force_Hp = 67.9},--噬日
			[42] = {Id = 2042,Force_Atk = 13.6,Force_Hp = 72},--噬日
			[43] = {Id = 2043,Force_Atk = 15.4,Force_Hp = 83.1},--噬日
			[44] = {Id = 2044,Force_Atk = 16.6,Force_Hp = 88.4},--噬日
			[45] = {Id = 2045,Force_Atk = 18.2,Force_Hp = 98.8},--噬日
			[46] = {Id = 2046,Force_Atk = 19.8,Force_Hp = 105.5},--噬日
			[47] = {Id = 2047,Force_Atk = 21.3,Force_Hp = 112},--噬日
			[48] = {Id = 2048,Force_Atk = 24.1,Force_Hp = 129.5},--噬日
			[49] = {Id = 2049,Force_Atk = 26,Force_Hp = 138},--噬日
			[50] = {Id = 2050,Force_Atk = 27.2,Force_Hp = 142.6}--噬日
		}
	},--噬日
	[1102019] = {
		Siege = 55,
		Tanlent_Ids = {4,5,6},
		Card_Cost = 6,
		DominanceLv = {
			[1] = {Id = 2051,Force_Atk = 2.2,Force_Hp = 15.2},--食火蜥
			[2] = {Id = 2052,Force_Atk = 2.3,Force_Hp = 15.4},--食火蜥
			[3] = {Id = 2053,Force_Atk = 2.4,Force_Hp = 15.6},--食火蜥
			[4] = {Id = 2054,Force_Atk = 2.5,Force_Hp = 15.8},--食火蜥
			[5] = {Id = 2055,Force_Atk = 2.6,Force_Hp = 16},--食火蜥
			[6] = {Id = 2056,Force_Atk = 2.7,Force_Hp = 16.2},--食火蜥
			[7] = {Id = 2057,Force_Atk = 2.8,Force_Hp = 16.4},--食火蜥
			[8] = {Id = 2058,Force_Atk = 2.9,Force_Hp = 16.6},--食火蜥
			[9] = {Id = 2059,Force_Atk = 3,Force_Hp = 16.8},--食火蜥
			[10] = {Id = 2060,Force_Atk = 3.1,Force_Hp = 17},--食火蜥
			[11] = {Id = 2061,Force_Atk = 3.2,Force_Hp = 17.2},--食火蜥
			[12] = {Id = 2062,Force_Atk = 3.3,Force_Hp = 17.4},--食火蜥
			[13] = {Id = 2063,Force_Atk = 3.4,Force_Hp = 17.6},--食火蜥
			[14] = {Id = 2064,Force_Atk = 3.5,Force_Hp = 18},--食火蜥
			[15] = {Id = 2065,Force_Atk = 3.6,Force_Hp = 18.6},--食火蜥
			[16] = {Id = 2066,Force_Atk = 3.7,Force_Hp = 19.2},--食火蜥
			[17] = {Id = 2067,Force_Atk = 3.8,Force_Hp = 19.8},--食火蜥
			[18] = {Id = 2068,Force_Atk = 3.9,Force_Hp = 20.9},--食火蜥
			[19] = {Id = 2069,Force_Atk = 4,Force_Hp = 21.3},--食火蜥
			[20] = {Id = 2070,Force_Atk = 4.1,Force_Hp = 21.5},--食火蜥
			[21] = {Id = 2071,Force_Atk = 4.2,Force_Hp = 21.7},--食火蜥
			[22] = {Id = 2072,Force_Atk = 4.3,Force_Hp = 22.3},--食火蜥
			[23] = {Id = 2073,Force_Atk = 4.5,Force_Hp = 24.5},--食火蜥
			[24] = {Id = 2074,Force_Atk = 4.6,Force_Hp = 25.1},--食火蜥
			[25] = {Id = 2075,Force_Atk = 5.1,Force_Hp = 28.7},--食火蜥
			[26] = {Id = 2076,Force_Atk = 5.4,Force_Hp = 29.9},--食火蜥
			[27] = {Id = 2077,Force_Atk = 5.7,Force_Hp = 31.1},--食火蜥
			[28] = {Id = 2078,Force_Atk = 6,Force_Hp = 33},--食火蜥
			[29] = {Id = 2079,Force_Atk = 6.4,Force_Hp = 34.3},--食火蜥
			[30] = {Id = 2080,Force_Atk = 6.7,Force_Hp = 35.3},--食火蜥
			[31] = {Id = 2081,Force_Atk = 6.9,Force_Hp = 37.2},--食火蜥
			[32] = {Id = 2082,Force_Atk = 7.3,Force_Hp = 39.1},--食火蜥
			[33] = {Id = 2083,Force_Atk = 8.2,Force_Hp = 44.6},--食火蜥
			[34] = {Id = 2084,Force_Atk = 8.8,Force_Hp = 47},--食火蜥
			[35] = {Id = 2085,Force_Atk = 9,Force_Hp = 48.2},--食火蜥
			[36] = {Id = 2086,Force_Atk = 9.5,Force_Hp = 51.2},--食火蜥
			[37] = {Id = 2087,Force_Atk = 10.2,Force_Hp = 54},--食火蜥
			[38] = {Id = 2088,Force_Atk = 11.5,Force_Hp = 62},--食火蜥
			[39] = {Id = 2089,Force_Atk = 11.7,Force_Hp = 63.7},--食火蜥
			[40] = {Id = 2090,Force_Atk = 12.3,Force_Hp = 65.6},--食火蜥
			[41] = {Id = 2091,Force_Atk = 12.7,Force_Hp = 67.9},--食火蜥
			[42] = {Id = 2092,Force_Atk = 13.6,Force_Hp = 72},--食火蜥
			[43] = {Id = 2093,Force_Atk = 15.4,Force_Hp = 83.1},--食火蜥
			[44] = {Id = 2094,Force_Atk = 16.6,Force_Hp = 88.4},--食火蜥
			[45] = {Id = 2095,Force_Atk = 18.2,Force_Hp = 98.8},--食火蜥
			[46] = {Id = 2096,Force_Atk = 19.8,Force_Hp = 105.5},--食火蜥
			[47] = {Id = 2097,Force_Atk = 21.3,Force_Hp = 112},--食火蜥
			[48] = {Id = 2098,Force_Atk = 24.1,Force_Hp = 129.5},--食火蜥
			[49] = {Id = 2099,Force_Atk = 26,Force_Hp = 138},--食火蜥
			[50] = {Id = 2100,Force_Atk = 27.2,Force_Hp = 142.6}--食火蜥
		}
	},--食火蜥
	[1102020] = {
		Siege = 40,
		Tanlent_Ids = {7,8,9},
		Card_Cost = 7,
		DominanceLv = {
			[1] = {Id = 2101,Force_Atk = 2.5,Force_Hp = 17},--高顺
			[2] = {Id = 2102,Force_Atk = 2.6,Force_Hp = 17.2},--高顺
			[3] = {Id = 2103,Force_Atk = 2.7,Force_Hp = 17.4},--高顺
			[4] = {Id = 2104,Force_Atk = 2.8,Force_Hp = 17.6},--高顺
			[5] = {Id = 2105,Force_Atk = 2.9,Force_Hp = 17.8},--高顺
			[6] = {Id = 2106,Force_Atk = 3,Force_Hp = 18},--高顺
			[7] = {Id = 2107,Force_Atk = 3.1,Force_Hp = 18.2},--高顺
			[8] = {Id = 2108,Force_Atk = 3.2,Force_Hp = 18.4},--高顺
			[9] = {Id = 2109,Force_Atk = 3.3,Force_Hp = 18.6},--高顺
			[10] = {Id = 2110,Force_Atk = 3.4,Force_Hp = 18.8},--高顺
			[11] = {Id = 2111,Force_Atk = 3.5,Force_Hp = 19},--高顺
			[12] = {Id = 2112,Force_Atk = 3.6,Force_Hp = 19.2},--高顺
			[13] = {Id = 2113,Force_Atk = 3.7,Force_Hp = 20},--高顺
			[14] = {Id = 2114,Force_Atk = 3.8,Force_Hp = 20.4},--高顺
			[15] = {Id = 2115,Force_Atk = 3.9,Force_Hp = 20.8},--高顺
			[16] = {Id = 2116,Force_Atk = 4,Force_Hp = 21},--高顺
			[17] = {Id = 2117,Force_Atk = 4.1,Force_Hp = 22.4},--高顺
			[18] = {Id = 2118,Force_Atk = 4.2,Force_Hp = 22.8},--高顺
			[19] = {Id = 2119,Force_Atk = 4.3,Force_Hp = 23.2},--高顺
			[20] = {Id = 2120,Force_Atk = 4.4,Force_Hp = 23.7},--高顺
			[21] = {Id = 2121,Force_Atk = 4.5,Force_Hp = 24.1},--高顺
			[22] = {Id = 2122,Force_Atk = 4.7,Force_Hp = 24.5},--高顺
			[23] = {Id = 2123,Force_Atk = 5,Force_Hp = 27.7},--高顺
			[24] = {Id = 2124,Force_Atk = 5.2,Force_Hp = 28.3},--高顺
			[25] = {Id = 2125,Force_Atk = 5.8,Force_Hp = 32.4},--高顺
			[26] = {Id = 2126,Force_Atk = 6.1,Force_Hp = 33.8},--高顺
			[27] = {Id = 2127,Force_Atk = 6.5,Force_Hp = 35.2},--高顺
			[28] = {Id = 2128,Force_Atk = 7,Force_Hp = 37},--高顺
			[29] = {Id = 2129,Force_Atk = 7.4,Force_Hp = 39},--高顺
			[30] = {Id = 2130,Force_Atk = 7.6,Force_Hp = 41},--高顺
			[31] = {Id = 2131,Force_Atk = 7.7,Force_Hp = 42.1},--高顺
			[32] = {Id = 2132,Force_Atk = 8.2,Force_Hp = 44.2},--高顺
			[33] = {Id = 2133,Force_Atk = 9.2,Force_Hp = 50.4},--高顺
			[34] = {Id = 2134,Force_Atk = 9.5,Force_Hp = 53.1},--高顺
			[35] = {Id = 2135,Force_Atk = 10,Force_Hp = 54.5},--高顺
			[36] = {Id = 2136,Force_Atk = 10.7,Force_Hp = 57.9},--高顺
			[37] = {Id = 2137,Force_Atk = 11.5,Force_Hp = 61},--高顺
			[38] = {Id = 2138,Force_Atk = 12.9,Force_Hp = 70},--高顺
			[39] = {Id = 2139,Force_Atk = 13.2,Force_Hp = 72},--高顺
			[40] = {Id = 2140,Force_Atk = 13.9,Force_Hp = 74},--高顺
			[41] = {Id = 2141,Force_Atk = 14.3,Force_Hp = 76.8},--高顺
			[42] = {Id = 2142,Force_Atk = 15.4,Force_Hp = 81.4},--高顺
			[43] = {Id = 2143,Force_Atk = 17.4,Force_Hp = 93.9},--高顺
			[44] = {Id = 2144,Force_Atk = 18.8,Force_Hp = 99.9},--高顺
			[45] = {Id = 2145,Force_Atk = 20.6,Force_Hp = 111.6},--高顺
			[46] = {Id = 2146,Force_Atk = 22.3,Force_Hp = 119.2},--高顺
			[47] = {Id = 2147,Force_Atk = 24,Force_Hp = 126.7},--高顺
			[48] = {Id = 2148,Force_Atk = 27.2,Force_Hp = 146.4},--高顺
			[49] = {Id = 2149,Force_Atk = 29.4,Force_Hp = 156},--高顺
			[50] = {Id = 2150,Force_Atk = 30.8,Force_Hp = 161.2}--高顺
		}
	},--高顺
	[1102021] = {
		Siege = 76,
		Tanlent_Ids = {10,11,12},
		Card_Cost = 7,
		DominanceLv = {
			[1] = {Id = 2151,Force_Atk = 2.5,Force_Hp = 17},--烈风螳螂
			[2] = {Id = 2152,Force_Atk = 2.6,Force_Hp = 17.2},--烈风螳螂
			[3] = {Id = 2153,Force_Atk = 2.7,Force_Hp = 17.4},--烈风螳螂
			[4] = {Id = 2154,Force_Atk = 2.8,Force_Hp = 17.6},--烈风螳螂
			[5] = {Id = 2155,Force_Atk = 2.9,Force_Hp = 17.8},--烈风螳螂
			[6] = {Id = 2156,Force_Atk = 3,Force_Hp = 18},--烈风螳螂
			[7] = {Id = 2157,Force_Atk = 3.1,Force_Hp = 18.2},--烈风螳螂
			[8] = {Id = 2158,Force_Atk = 3.2,Force_Hp = 18.4},--烈风螳螂
			[9] = {Id = 2159,Force_Atk = 3.3,Force_Hp = 18.6},--烈风螳螂
			[10] = {Id = 2160,Force_Atk = 3.4,Force_Hp = 18.8},--烈风螳螂
			[11] = {Id = 2161,Force_Atk = 3.5,Force_Hp = 19},--烈风螳螂
			[12] = {Id = 2162,Force_Atk = 3.6,Force_Hp = 19.2},--烈风螳螂
			[13] = {Id = 2163,Force_Atk = 3.7,Force_Hp = 20},--烈风螳螂
			[14] = {Id = 2164,Force_Atk = 3.8,Force_Hp = 20.4},--烈风螳螂
			[15] = {Id = 2165,Force_Atk = 3.9,Force_Hp = 20.8},--烈风螳螂
			[16] = {Id = 2166,Force_Atk = 4,Force_Hp = 21},--烈风螳螂
			[17] = {Id = 2167,Force_Atk = 4.1,Force_Hp = 22.4},--烈风螳螂
			[18] = {Id = 2168,Force_Atk = 4.2,Force_Hp = 22.8},--烈风螳螂
			[19] = {Id = 2169,Force_Atk = 4.3,Force_Hp = 23.2},--烈风螳螂
			[20] = {Id = 2170,Force_Atk = 4.4,Force_Hp = 23.7},--烈风螳螂
			[21] = {Id = 2171,Force_Atk = 4.5,Force_Hp = 24.1},--烈风螳螂
			[22] = {Id = 2172,Force_Atk = 4.7,Force_Hp = 24.5},--烈风螳螂
			[23] = {Id = 2173,Force_Atk = 5,Force_Hp = 27.7},--烈风螳螂
			[24] = {Id = 2174,Force_Atk = 5.2,Force_Hp = 28.3},--烈风螳螂
			[25] = {Id = 2175,Force_Atk = 5.8,Force_Hp = 32.4},--烈风螳螂
			[26] = {Id = 2176,Force_Atk = 6.1,Force_Hp = 33.8},--烈风螳螂
			[27] = {Id = 2177,Force_Atk = 6.5,Force_Hp = 35.2},--烈风螳螂
			[28] = {Id = 2178,Force_Atk = 7,Force_Hp = 37},--烈风螳螂
			[29] = {Id = 2179,Force_Atk = 7.4,Force_Hp = 39},--烈风螳螂
			[30] = {Id = 2180,Force_Atk = 7.6,Force_Hp = 41},--烈风螳螂
			[31] = {Id = 2181,Force_Atk = 7.7,Force_Hp = 42.1},--烈风螳螂
			[32] = {Id = 2182,Force_Atk = 8.2,Force_Hp = 44.2},--烈风螳螂
			[33] = {Id = 2183,Force_Atk = 9.2,Force_Hp = 50.4},--烈风螳螂
			[34] = {Id = 2184,Force_Atk = 9.5,Force_Hp = 53.1},--烈风螳螂
			[35] = {Id = 2185,Force_Atk = 10,Force_Hp = 54.5},--烈风螳螂
			[36] = {Id = 2186,Force_Atk = 10.7,Force_Hp = 57.9},--烈风螳螂
			[37] = {Id = 2187,Force_Atk = 11.5,Force_Hp = 61},--烈风螳螂
			[38] = {Id = 2188,Force_Atk = 12.9,Force_Hp = 70},--烈风螳螂
			[39] = {Id = 2189,Force_Atk = 13.2,Force_Hp = 72},--烈风螳螂
			[40] = {Id = 2190,Force_Atk = 13.9,Force_Hp = 74},--烈风螳螂
			[41] = {Id = 2191,Force_Atk = 14.3,Force_Hp = 76.8},--烈风螳螂
			[42] = {Id = 2192,Force_Atk = 15.4,Force_Hp = 81.4},--烈风螳螂
			[43] = {Id = 2193,Force_Atk = 17.4,Force_Hp = 93.9},--烈风螳螂
			[44] = {Id = 2194,Force_Atk = 18.8,Force_Hp = 99.9},--烈风螳螂
			[45] = {Id = 2195,Force_Atk = 20.6,Force_Hp = 111.6},--烈风螳螂
			[46] = {Id = 2196,Force_Atk = 22.3,Force_Hp = 119.2},--烈风螳螂
			[47] = {Id = 2197,Force_Atk = 24,Force_Hp = 126.7},--烈风螳螂
			[48] = {Id = 2198,Force_Atk = 27.2,Force_Hp = 146.4},--烈风螳螂
			[49] = {Id = 2199,Force_Atk = 29.4,Force_Hp = 156},--烈风螳螂
			[50] = {Id = 2200,Force_Atk = 30.8,Force_Hp = 161.2}--烈风螳螂
		}
	},--烈风螳螂
	[1102023] = {
		Siege = 67,
		Tanlent_Ids = {16,14,12},
		Card_Cost = 6,
		DominanceLv = {
			[1] = {Id = 2251,Force_Atk = 2.2,Force_Hp = 15.2},--异邦刀客
			[2] = {Id = 2252,Force_Atk = 2.3,Force_Hp = 15.4},--异邦刀客
			[3] = {Id = 2253,Force_Atk = 2.4,Force_Hp = 15.6},--异邦刀客
			[4] = {Id = 2254,Force_Atk = 2.5,Force_Hp = 15.8},--异邦刀客
			[5] = {Id = 2255,Force_Atk = 2.6,Force_Hp = 16},--异邦刀客
			[6] = {Id = 2256,Force_Atk = 2.7,Force_Hp = 16.2},--异邦刀客
			[7] = {Id = 2257,Force_Atk = 2.8,Force_Hp = 16.4},--异邦刀客
			[8] = {Id = 2258,Force_Atk = 2.9,Force_Hp = 16.6},--异邦刀客
			[9] = {Id = 2259,Force_Atk = 3,Force_Hp = 16.8},--异邦刀客
			[10] = {Id = 2260,Force_Atk = 3.1,Force_Hp = 17},--异邦刀客
			[11] = {Id = 2261,Force_Atk = 3.2,Force_Hp = 17.2},--异邦刀客
			[12] = {Id = 2262,Force_Atk = 3.3,Force_Hp = 17.4},--异邦刀客
			[13] = {Id = 2263,Force_Atk = 3.4,Force_Hp = 17.6},--异邦刀客
			[14] = {Id = 2264,Force_Atk = 3.5,Force_Hp = 18},--异邦刀客
			[15] = {Id = 2265,Force_Atk = 3.6,Force_Hp = 18.6},--异邦刀客
			[16] = {Id = 2266,Force_Atk = 3.7,Force_Hp = 19.2},--异邦刀客
			[17] = {Id = 2267,Force_Atk = 3.8,Force_Hp = 19.8},--异邦刀客
			[18] = {Id = 2268,Force_Atk = 3.9,Force_Hp = 20.9},--异邦刀客
			[19] = {Id = 2269,Force_Atk = 4,Force_Hp = 21.3},--异邦刀客
			[20] = {Id = 2270,Force_Atk = 4.1,Force_Hp = 21.5},--异邦刀客
			[21] = {Id = 2271,Force_Atk = 4.2,Force_Hp = 21.7},--异邦刀客
			[22] = {Id = 2272,Force_Atk = 4.3,Force_Hp = 22.3},--异邦刀客
			[23] = {Id = 2273,Force_Atk = 4.5,Force_Hp = 24.5},--异邦刀客
			[24] = {Id = 2274,Force_Atk = 4.6,Force_Hp = 25.1},--异邦刀客
			[25] = {Id = 2275,Force_Atk = 5.1,Force_Hp = 28.7},--异邦刀客
			[26] = {Id = 2276,Force_Atk = 5.4,Force_Hp = 29.9},--异邦刀客
			[27] = {Id = 2277,Force_Atk = 5.7,Force_Hp = 31.1},--异邦刀客
			[28] = {Id = 2278,Force_Atk = 6,Force_Hp = 33},--异邦刀客
			[29] = {Id = 2279,Force_Atk = 6.4,Force_Hp = 34.3},--异邦刀客
			[30] = {Id = 2280,Force_Atk = 6.7,Force_Hp = 35.3},--异邦刀客
			[31] = {Id = 2281,Force_Atk = 6.9,Force_Hp = 37.2},--异邦刀客
			[32] = {Id = 2282,Force_Atk = 7.3,Force_Hp = 39.1},--异邦刀客
			[33] = {Id = 2283,Force_Atk = 8.2,Force_Hp = 44.6},--异邦刀客
			[34] = {Id = 2284,Force_Atk = 8.8,Force_Hp = 47},--异邦刀客
			[35] = {Id = 2285,Force_Atk = 9,Force_Hp = 48.2},--异邦刀客
			[36] = {Id = 2286,Force_Atk = 9.5,Force_Hp = 51.2},--异邦刀客
			[37] = {Id = 2287,Force_Atk = 10.2,Force_Hp = 54},--异邦刀客
			[38] = {Id = 2288,Force_Atk = 11.5,Force_Hp = 62},--异邦刀客
			[39] = {Id = 2289,Force_Atk = 11.7,Force_Hp = 63.7},--异邦刀客
			[40] = {Id = 2290,Force_Atk = 12.3,Force_Hp = 65.6},--异邦刀客
			[41] = {Id = 2291,Force_Atk = 12.7,Force_Hp = 67.9},--异邦刀客
			[42] = {Id = 2292,Force_Atk = 13.6,Force_Hp = 72},--异邦刀客
			[43] = {Id = 2293,Force_Atk = 15.4,Force_Hp = 83.1},--异邦刀客
			[44] = {Id = 2294,Force_Atk = 16.6,Force_Hp = 88.4},--异邦刀客
			[45] = {Id = 2295,Force_Atk = 18.2,Force_Hp = 98.8},--异邦刀客
			[46] = {Id = 2296,Force_Atk = 19.8,Force_Hp = 105.5},--异邦刀客
			[47] = {Id = 2297,Force_Atk = 21.3,Force_Hp = 112},--异邦刀客
			[48] = {Id = 2298,Force_Atk = 24.1,Force_Hp = 129.5},--异邦刀客
			[49] = {Id = 2299,Force_Atk = 26,Force_Hp = 138},--异邦刀客
			[50] = {Id = 2300,Force_Atk = 27.2,Force_Hp = 142.6}--异邦刀客
		}
	},--异邦刀客
	[1102024] = {
		Siege = 75,
		Tanlent_Ids = {21,22,15},
		Card_Cost = 7,
		DominanceLv = {
			[1] = {Id = 2301,Force_Atk = 2.5,Force_Hp = 17},--朱仙
			[2] = {Id = 2302,Force_Atk = 2.6,Force_Hp = 17.2},--朱仙
			[3] = {Id = 2303,Force_Atk = 2.7,Force_Hp = 17.4},--朱仙
			[4] = {Id = 2304,Force_Atk = 2.8,Force_Hp = 17.6},--朱仙
			[5] = {Id = 2305,Force_Atk = 2.9,Force_Hp = 17.8},--朱仙
			[6] = {Id = 2306,Force_Atk = 3,Force_Hp = 18},--朱仙
			[7] = {Id = 2307,Force_Atk = 3.1,Force_Hp = 18.2},--朱仙
			[8] = {Id = 2308,Force_Atk = 3.2,Force_Hp = 18.4},--朱仙
			[9] = {Id = 2309,Force_Atk = 3.3,Force_Hp = 18.6},--朱仙
			[10] = {Id = 2310,Force_Atk = 3.4,Force_Hp = 18.8},--朱仙
			[11] = {Id = 2311,Force_Atk = 3.5,Force_Hp = 19},--朱仙
			[12] = {Id = 2312,Force_Atk = 3.6,Force_Hp = 19.2},--朱仙
			[13] = {Id = 2313,Force_Atk = 3.7,Force_Hp = 20},--朱仙
			[14] = {Id = 2314,Force_Atk = 3.8,Force_Hp = 20.4},--朱仙
			[15] = {Id = 2315,Force_Atk = 3.9,Force_Hp = 20.8},--朱仙
			[16] = {Id = 2316,Force_Atk = 4,Force_Hp = 21},--朱仙
			[17] = {Id = 2317,Force_Atk = 4.1,Force_Hp = 22.4},--朱仙
			[18] = {Id = 2318,Force_Atk = 4.2,Force_Hp = 22.8},--朱仙
			[19] = {Id = 2319,Force_Atk = 4.3,Force_Hp = 23.2},--朱仙
			[20] = {Id = 2320,Force_Atk = 4.4,Force_Hp = 23.7},--朱仙
			[21] = {Id = 2321,Force_Atk = 4.5,Force_Hp = 24.1},--朱仙
			[22] = {Id = 2322,Force_Atk = 4.7,Force_Hp = 24.5},--朱仙
			[23] = {Id = 2323,Force_Atk = 5,Force_Hp = 27.7},--朱仙
			[24] = {Id = 2324,Force_Atk = 5.2,Force_Hp = 28.3},--朱仙
			[25] = {Id = 2325,Force_Atk = 5.8,Force_Hp = 32.4},--朱仙
			[26] = {Id = 2326,Force_Atk = 6.1,Force_Hp = 33.8},--朱仙
			[27] = {Id = 2327,Force_Atk = 6.5,Force_Hp = 35.2},--朱仙
			[28] = {Id = 2328,Force_Atk = 7,Force_Hp = 37},--朱仙
			[29] = {Id = 2329,Force_Atk = 7.4,Force_Hp = 39},--朱仙
			[30] = {Id = 2330,Force_Atk = 7.6,Force_Hp = 41},--朱仙
			[31] = {Id = 2331,Force_Atk = 7.7,Force_Hp = 42.1},--朱仙
			[32] = {Id = 2332,Force_Atk = 8.2,Force_Hp = 44.2},--朱仙
			[33] = {Id = 2333,Force_Atk = 9.2,Force_Hp = 50.4},--朱仙
			[34] = {Id = 2334,Force_Atk = 9.5,Force_Hp = 53.1},--朱仙
			[35] = {Id = 2335,Force_Atk = 10,Force_Hp = 54.5},--朱仙
			[36] = {Id = 2336,Force_Atk = 10.7,Force_Hp = 57.9},--朱仙
			[37] = {Id = 2337,Force_Atk = 11.5,Force_Hp = 61},--朱仙
			[38] = {Id = 2338,Force_Atk = 12.9,Force_Hp = 70},--朱仙
			[39] = {Id = 2339,Force_Atk = 13.2,Force_Hp = 72},--朱仙
			[40] = {Id = 2340,Force_Atk = 13.9,Force_Hp = 74},--朱仙
			[41] = {Id = 2341,Force_Atk = 14.3,Force_Hp = 76.8},--朱仙
			[42] = {Id = 2342,Force_Atk = 15.4,Force_Hp = 81.4},--朱仙
			[43] = {Id = 2343,Force_Atk = 17.4,Force_Hp = 93.9},--朱仙
			[44] = {Id = 2344,Force_Atk = 18.8,Force_Hp = 99.9},--朱仙
			[45] = {Id = 2345,Force_Atk = 20.6,Force_Hp = 111.6},--朱仙
			[46] = {Id = 2346,Force_Atk = 22.3,Force_Hp = 119.2},--朱仙
			[47] = {Id = 2347,Force_Atk = 24,Force_Hp = 126.7},--朱仙
			[48] = {Id = 2348,Force_Atk = 27.2,Force_Hp = 146.4},--朱仙
			[49] = {Id = 2349,Force_Atk = 29.4,Force_Hp = 156},--朱仙
			[50] = {Id = 2350,Force_Atk = 30.8,Force_Hp = 161.2}--朱仙
		}
	},--朱仙
	[1102026] = {
		Siege = 84,
		Tanlent_Ids = {21,22,18},
		Card_Cost = 7,
		DominanceLv = {
			[1] = {Id = 2351,Force_Atk = 2.5,Force_Hp = 17},--雷震子
			[2] = {Id = 2352,Force_Atk = 2.6,Force_Hp = 17.2},--雷震子
			[3] = {Id = 2353,Force_Atk = 2.7,Force_Hp = 17.4},--雷震子
			[4] = {Id = 2354,Force_Atk = 2.8,Force_Hp = 17.6},--雷震子
			[5] = {Id = 2355,Force_Atk = 2.9,Force_Hp = 17.8},--雷震子
			[6] = {Id = 2356,Force_Atk = 3,Force_Hp = 18},--雷震子
			[7] = {Id = 2357,Force_Atk = 3.1,Force_Hp = 18.2},--雷震子
			[8] = {Id = 2358,Force_Atk = 3.2,Force_Hp = 18.4},--雷震子
			[9] = {Id = 2359,Force_Atk = 3.3,Force_Hp = 18.6},--雷震子
			[10] = {Id = 2360,Force_Atk = 3.4,Force_Hp = 18.8},--雷震子
			[11] = {Id = 2361,Force_Atk = 3.5,Force_Hp = 19},--雷震子
			[12] = {Id = 2362,Force_Atk = 3.6,Force_Hp = 19.2},--雷震子
			[13] = {Id = 2363,Force_Atk = 3.7,Force_Hp = 20},--雷震子
			[14] = {Id = 2364,Force_Atk = 3.8,Force_Hp = 20.4},--雷震子
			[15] = {Id = 2365,Force_Atk = 3.9,Force_Hp = 20.8},--雷震子
			[16] = {Id = 2366,Force_Atk = 4,Force_Hp = 21},--雷震子
			[17] = {Id = 2367,Force_Atk = 4.1,Force_Hp = 22.4},--雷震子
			[18] = {Id = 2368,Force_Atk = 4.2,Force_Hp = 22.8},--雷震子
			[19] = {Id = 2369,Force_Atk = 4.3,Force_Hp = 23.2},--雷震子
			[20] = {Id = 2370,Force_Atk = 4.4,Force_Hp = 23.7},--雷震子
			[21] = {Id = 2371,Force_Atk = 4.5,Force_Hp = 24.1},--雷震子
			[22] = {Id = 2372,Force_Atk = 4.7,Force_Hp = 24.5},--雷震子
			[23] = {Id = 2373,Force_Atk = 5,Force_Hp = 27.7},--雷震子
			[24] = {Id = 2374,Force_Atk = 5.2,Force_Hp = 28.3},--雷震子
			[25] = {Id = 2375,Force_Atk = 5.8,Force_Hp = 32.4},--雷震子
			[26] = {Id = 2376,Force_Atk = 6.1,Force_Hp = 33.8},--雷震子
			[27] = {Id = 2377,Force_Atk = 6.5,Force_Hp = 35.2},--雷震子
			[28] = {Id = 2378,Force_Atk = 7,Force_Hp = 37},--雷震子
			[29] = {Id = 2379,Force_Atk = 7.4,Force_Hp = 39},--雷震子
			[30] = {Id = 2380,Force_Atk = 7.6,Force_Hp = 41},--雷震子
			[31] = {Id = 2381,Force_Atk = 7.7,Force_Hp = 42.1},--雷震子
			[32] = {Id = 2382,Force_Atk = 8.2,Force_Hp = 44.2},--雷震子
			[33] = {Id = 2383,Force_Atk = 9.2,Force_Hp = 50.4},--雷震子
			[34] = {Id = 2384,Force_Atk = 9.5,Force_Hp = 53.1},--雷震子
			[35] = {Id = 2385,Force_Atk = 10,Force_Hp = 54.5},--雷震子
			[36] = {Id = 2386,Force_Atk = 10.7,Force_Hp = 57.9},--雷震子
			[37] = {Id = 2387,Force_Atk = 11.5,Force_Hp = 61},--雷震子
			[38] = {Id = 2388,Force_Atk = 12.9,Force_Hp = 70},--雷震子
			[39] = {Id = 2389,Force_Atk = 13.2,Force_Hp = 72},--雷震子
			[40] = {Id = 2390,Force_Atk = 13.9,Force_Hp = 74},--雷震子
			[41] = {Id = 2391,Force_Atk = 14.3,Force_Hp = 76.8},--雷震子
			[42] = {Id = 2392,Force_Atk = 15.4,Force_Hp = 81.4},--雷震子
			[43] = {Id = 2393,Force_Atk = 17.4,Force_Hp = 93.9},--雷震子
			[44] = {Id = 2394,Force_Atk = 18.8,Force_Hp = 99.9},--雷震子
			[45] = {Id = 2395,Force_Atk = 20.6,Force_Hp = 111.6},--雷震子
			[46] = {Id = 2396,Force_Atk = 22.3,Force_Hp = 119.2},--雷震子
			[47] = {Id = 2397,Force_Atk = 24,Force_Hp = 126.7},--雷震子
			[48] = {Id = 2398,Force_Atk = 27.2,Force_Hp = 146.4},--雷震子
			[49] = {Id = 2399,Force_Atk = 29.4,Force_Hp = 156},--雷震子
			[50] = {Id = 2400,Force_Atk = 30.8,Force_Hp = 161.2}--雷震子
		}
	},--雷震子
	[1102030] = {
		Siege = 64,
		Tanlent_Ids = {24,22,18},
		Card_Cost = 7,
		DominanceLv = {
			[1] = {Id = 2451,Force_Atk = 2.5,Force_Hp = 17},--燕青
			[2] = {Id = 2452,Force_Atk = 2.6,Force_Hp = 17.2},--燕青
			[3] = {Id = 2453,Force_Atk = 2.7,Force_Hp = 17.4},--燕青
			[4] = {Id = 2454,Force_Atk = 2.8,Force_Hp = 17.6},--燕青
			[5] = {Id = 2455,Force_Atk = 2.9,Force_Hp = 17.8},--燕青
			[6] = {Id = 2456,Force_Atk = 3,Force_Hp = 18},--燕青
			[7] = {Id = 2457,Force_Atk = 3.1,Force_Hp = 18.2},--燕青
			[8] = {Id = 2458,Force_Atk = 3.2,Force_Hp = 18.4},--燕青
			[9] = {Id = 2459,Force_Atk = 3.3,Force_Hp = 18.6},--燕青
			[10] = {Id = 2460,Force_Atk = 3.4,Force_Hp = 18.8},--燕青
			[11] = {Id = 2461,Force_Atk = 3.5,Force_Hp = 19},--燕青
			[12] = {Id = 2462,Force_Atk = 3.6,Force_Hp = 19.2},--燕青
			[13] = {Id = 2463,Force_Atk = 3.7,Force_Hp = 20},--燕青
			[14] = {Id = 2464,Force_Atk = 3.8,Force_Hp = 20.4},--燕青
			[15] = {Id = 2465,Force_Atk = 3.9,Force_Hp = 20.8},--燕青
			[16] = {Id = 2466,Force_Atk = 4,Force_Hp = 21},--燕青
			[17] = {Id = 2467,Force_Atk = 4.1,Force_Hp = 22.4},--燕青
			[18] = {Id = 2468,Force_Atk = 4.2,Force_Hp = 22.8},--燕青
			[19] = {Id = 2469,Force_Atk = 4.3,Force_Hp = 23.2},--燕青
			[20] = {Id = 2470,Force_Atk = 4.4,Force_Hp = 23.7},--燕青
			[21] = {Id = 2471,Force_Atk = 4.5,Force_Hp = 24.1},--燕青
			[22] = {Id = 2472,Force_Atk = 4.7,Force_Hp = 24.5},--燕青
			[23] = {Id = 2473,Force_Atk = 5,Force_Hp = 27.7},--燕青
			[24] = {Id = 2474,Force_Atk = 5.2,Force_Hp = 28.3},--燕青
			[25] = {Id = 2475,Force_Atk = 5.8,Force_Hp = 32.4},--燕青
			[26] = {Id = 2476,Force_Atk = 6.1,Force_Hp = 33.8},--燕青
			[27] = {Id = 2477,Force_Atk = 6.5,Force_Hp = 35.2},--燕青
			[28] = {Id = 2478,Force_Atk = 7,Force_Hp = 37},--燕青
			[29] = {Id = 2479,Force_Atk = 7.4,Force_Hp = 39},--燕青
			[30] = {Id = 2480,Force_Atk = 7.6,Force_Hp = 41},--燕青
			[31] = {Id = 2481,Force_Atk = 7.7,Force_Hp = 42.1},--燕青
			[32] = {Id = 2482,Force_Atk = 8.2,Force_Hp = 44.2},--燕青
			[33] = {Id = 2483,Force_Atk = 9.2,Force_Hp = 50.4},--燕青
			[34] = {Id = 2484,Force_Atk = 9.5,Force_Hp = 53.1},--燕青
			[35] = {Id = 2485,Force_Atk = 10,Force_Hp = 54.5},--燕青
			[36] = {Id = 2486,Force_Atk = 10.7,Force_Hp = 57.9},--燕青
			[37] = {Id = 2487,Force_Atk = 11.5,Force_Hp = 61},--燕青
			[38] = {Id = 2488,Force_Atk = 12.9,Force_Hp = 70},--燕青
			[39] = {Id = 2489,Force_Atk = 13.2,Force_Hp = 72},--燕青
			[40] = {Id = 2490,Force_Atk = 13.9,Force_Hp = 74},--燕青
			[41] = {Id = 2491,Force_Atk = 14.3,Force_Hp = 76.8},--燕青
			[42] = {Id = 2492,Force_Atk = 15.4,Force_Hp = 81.4},--燕青
			[43] = {Id = 2493,Force_Atk = 17.4,Force_Hp = 93.9},--燕青
			[44] = {Id = 2494,Force_Atk = 18.8,Force_Hp = 99.9},--燕青
			[45] = {Id = 2495,Force_Atk = 20.6,Force_Hp = 111.6},--燕青
			[46] = {Id = 2496,Force_Atk = 22.3,Force_Hp = 119.2},--燕青
			[47] = {Id = 2497,Force_Atk = 24,Force_Hp = 126.7},--燕青
			[48] = {Id = 2498,Force_Atk = 27.2,Force_Hp = 146.4},--燕青
			[49] = {Id = 2499,Force_Atk = 29.4,Force_Hp = 156},--燕青
			[50] = {Id = 2500,Force_Atk = 30.8,Force_Hp = 161.2}--燕青
		}
	},--燕青
	[1102031] = {
		Siege = 53,
		Tanlent_Ids = {21,22,18},
		Card_Cost = 8,
		DominanceLv = {
			[1] = {Id = 2501,Force_Atk = 3,Force_Hp = 22},--秦琼
			[2] = {Id = 2502,Force_Atk = 3.1,Force_Hp = 22.3},--秦琼
			[3] = {Id = 2503,Force_Atk = 3.2,Force_Hp = 22.6},--秦琼
			[4] = {Id = 2504,Force_Atk = 3.3,Force_Hp = 22.9},--秦琼
			[5] = {Id = 2505,Force_Atk = 3.4,Force_Hp = 23.2},--秦琼
			[6] = {Id = 2506,Force_Atk = 3.5,Force_Hp = 23.5},--秦琼
			[7] = {Id = 2507,Force_Atk = 3.6,Force_Hp = 23.8},--秦琼
			[8] = {Id = 2508,Force_Atk = 3.7,Force_Hp = 24.1},--秦琼
			[9] = {Id = 2509,Force_Atk = 3.8,Force_Hp = 24.4},--秦琼
			[10] = {Id = 2510,Force_Atk = 3.9,Force_Hp = 24.7},--秦琼
			[11] = {Id = 2511,Force_Atk = 4,Force_Hp = 25},--秦琼
			[12] = {Id = 2512,Force_Atk = 4.1,Force_Hp = 25.3},--秦琼
			[13] = {Id = 2513,Force_Atk = 4.2,Force_Hp = 25.6},--秦琼
			[14] = {Id = 2514,Force_Atk = 4.3,Force_Hp = 25.9},--秦琼
			[15] = {Id = 2515,Force_Atk = 4.4,Force_Hp = 26.2},--秦琼
			[16] = {Id = 2516,Force_Atk = 4.5,Force_Hp = 26.5},--秦琼
			[17] = {Id = 2517,Force_Atk = 4.7,Force_Hp = 26.8},--秦琼
			[18] = {Id = 2518,Force_Atk = 4.9,Force_Hp = 27.1},--秦琼
			[19] = {Id = 2519,Force_Atk = 5,Force_Hp = 27.4},--秦琼
			[20] = {Id = 2520,Force_Atk = 5.1,Force_Hp = 27.7},--秦琼
			[21] = {Id = 2521,Force_Atk = 5.2,Force_Hp = 28},--秦琼
			[22] = {Id = 2522,Force_Atk = 5.4,Force_Hp = 28.3},--秦琼
			[23] = {Id = 2523,Force_Atk = 5.8,Force_Hp = 32},--秦琼
			[24] = {Id = 2524,Force_Atk = 6,Force_Hp = 32.7},--秦琼
			[25] = {Id = 2525,Force_Atk = 6.7,Force_Hp = 37.4},--秦琼
			[26] = {Id = 2526,Force_Atk = 7.1,Force_Hp = 39},--秦琼
			[27] = {Id = 2527,Force_Atk = 7.5,Force_Hp = 40.6},--秦琼
			[28] = {Id = 2528,Force_Atk = 7.8,Force_Hp = 44.4},--秦琼
			[29] = {Id = 2529,Force_Atk = 8.3,Force_Hp = 46.1},--秦琼
			[30] = {Id = 2530,Force_Atk = 8.7,Force_Hp = 47.9},--秦琼
			[31] = {Id = 2531,Force_Atk = 8.9,Force_Hp = 48.6},--秦琼
			[32] = {Id = 2532,Force_Atk = 9.5,Force_Hp = 51},--秦琼
			[33] = {Id = 2533,Force_Atk = 10.7,Force_Hp = 58.2},--秦琼
			[34] = {Id = 2534,Force_Atk = 11.4,Force_Hp = 61.3},--秦琼
			[35] = {Id = 2535,Force_Atk = 11.5,Force_Hp = 62.9},--秦琼
			[36] = {Id = 2536,Force_Atk = 12.4,Force_Hp = 66.8},--秦琼
			[37] = {Id = 2537,Force_Atk = 13.3,Force_Hp = 70.4},--秦琼
			[38] = {Id = 2538,Force_Atk = 14.9,Force_Hp = 80.8},--秦琼
			[39] = {Id = 2539,Force_Atk = 15.3,Force_Hp = 83.1},--秦琼
			[40] = {Id = 2540,Force_Atk = 16.1,Force_Hp = 85.6},--秦琼
			[41] = {Id = 2541,Force_Atk = 16.5,Force_Hp = 88.6},--秦琼
			[42] = {Id = 2542,Force_Atk = 17.8,Force_Hp = 93.9},--秦琼
			[43] = {Id = 2543,Force_Atk = 20.1,Force_Hp = 108.3},--秦琼
			[44] = {Id = 2544,Force_Atk = 21.7,Force_Hp = 115.3},--秦琼
			[45] = {Id = 2545,Force_Atk = 23.7,Force_Hp = 128.8},--秦琼
			[46] = {Id = 2546,Force_Atk = 25.8,Force_Hp = 137.6},--秦琼
			[47] = {Id = 2547,Force_Atk = 27.7,Force_Hp = 146.1},--秦琼
			[48] = {Id = 2548,Force_Atk = 31.4,Force_Hp = 168.9},--秦琼
			[49] = {Id = 2549,Force_Atk = 34,Force_Hp = 180},--秦琼
			[50] = {Id = 2550,Force_Atk = 35.5,Force_Hp = 186}--秦琼
		}
	},--秦琼
	[1102050] = {
		Siege = 40,
		Tanlent_Ids = {13,14,15},
		Card_Cost = 6,
		DominanceLv = {
			[1] = {Id = 2201,Force_Atk = 2.2,Force_Hp = 15.2},--柠檬精
			[2] = {Id = 2202,Force_Atk = 2.3,Force_Hp = 15.4},--柠檬精
			[3] = {Id = 2203,Force_Atk = 2.4,Force_Hp = 15.6},--柠檬精
			[4] = {Id = 2204,Force_Atk = 2.5,Force_Hp = 15.8},--柠檬精
			[5] = {Id = 2205,Force_Atk = 2.6,Force_Hp = 16},--柠檬精
			[6] = {Id = 2206,Force_Atk = 2.7,Force_Hp = 16.2},--柠檬精
			[7] = {Id = 2207,Force_Atk = 2.8,Force_Hp = 16.4},--柠檬精
			[8] = {Id = 2208,Force_Atk = 2.9,Force_Hp = 16.6},--柠檬精
			[9] = {Id = 2209,Force_Atk = 3,Force_Hp = 16.8},--柠檬精
			[10] = {Id = 2210,Force_Atk = 3.1,Force_Hp = 17},--柠檬精
			[11] = {Id = 2211,Force_Atk = 3.2,Force_Hp = 17.2},--柠檬精
			[12] = {Id = 2212,Force_Atk = 3.3,Force_Hp = 17.4},--柠檬精
			[13] = {Id = 2213,Force_Atk = 3.4,Force_Hp = 17.6},--柠檬精
			[14] = {Id = 2214,Force_Atk = 3.5,Force_Hp = 18},--柠檬精
			[15] = {Id = 2215,Force_Atk = 3.6,Force_Hp = 18.6},--柠檬精
			[16] = {Id = 2216,Force_Atk = 3.7,Force_Hp = 19.2},--柠檬精
			[17] = {Id = 2217,Force_Atk = 3.8,Force_Hp = 19.8},--柠檬精
			[18] = {Id = 2218,Force_Atk = 3.9,Force_Hp = 20.9},--柠檬精
			[19] = {Id = 2219,Force_Atk = 4,Force_Hp = 21.3},--柠檬精
			[20] = {Id = 2220,Force_Atk = 4.1,Force_Hp = 21.5},--柠檬精
			[21] = {Id = 2221,Force_Atk = 4.2,Force_Hp = 21.7},--柠檬精
			[22] = {Id = 2222,Force_Atk = 4.3,Force_Hp = 22.3},--柠檬精
			[23] = {Id = 2223,Force_Atk = 4.5,Force_Hp = 24.5},--柠檬精
			[24] = {Id = 2224,Force_Atk = 4.6,Force_Hp = 25.1},--柠檬精
			[25] = {Id = 2225,Force_Atk = 5.1,Force_Hp = 28.7},--柠檬精
			[26] = {Id = 2226,Force_Atk = 5.4,Force_Hp = 29.9},--柠檬精
			[27] = {Id = 2227,Force_Atk = 5.7,Force_Hp = 31.1},--柠檬精
			[28] = {Id = 2228,Force_Atk = 6,Force_Hp = 33},--柠檬精
			[29] = {Id = 2229,Force_Atk = 6.4,Force_Hp = 34.3},--柠檬精
			[30] = {Id = 2230,Force_Atk = 6.7,Force_Hp = 35.3},--柠檬精
			[31] = {Id = 2231,Force_Atk = 6.9,Force_Hp = 37.2},--柠檬精
			[32] = {Id = 2232,Force_Atk = 7.3,Force_Hp = 39.1},--柠檬精
			[33] = {Id = 2233,Force_Atk = 8.2,Force_Hp = 44.6},--柠檬精
			[34] = {Id = 2234,Force_Atk = 8.8,Force_Hp = 47},--柠檬精
			[35] = {Id = 2235,Force_Atk = 9,Force_Hp = 48.2},--柠檬精
			[36] = {Id = 2236,Force_Atk = 9.5,Force_Hp = 51.2},--柠檬精
			[37] = {Id = 2237,Force_Atk = 10.2,Force_Hp = 54},--柠檬精
			[38] = {Id = 2238,Force_Atk = 11.5,Force_Hp = 62},--柠檬精
			[39] = {Id = 2239,Force_Atk = 11.7,Force_Hp = 63.7},--柠檬精
			[40] = {Id = 2240,Force_Atk = 12.3,Force_Hp = 65.6},--柠檬精
			[41] = {Id = 2241,Force_Atk = 12.7,Force_Hp = 67.9},--柠檬精
			[42] = {Id = 2242,Force_Atk = 13.6,Force_Hp = 72},--柠檬精
			[43] = {Id = 2243,Force_Atk = 15.4,Force_Hp = 83.1},--柠檬精
			[44] = {Id = 2244,Force_Atk = 16.6,Force_Hp = 88.4},--柠檬精
			[45] = {Id = 2245,Force_Atk = 18.2,Force_Hp = 98.8},--柠檬精
			[46] = {Id = 2246,Force_Atk = 19.8,Force_Hp = 105.5},--柠檬精
			[47] = {Id = 2247,Force_Atk = 21.3,Force_Hp = 112},--柠檬精
			[48] = {Id = 2248,Force_Atk = 24.1,Force_Hp = 129.5},--柠檬精
			[49] = {Id = 2249,Force_Atk = 26,Force_Hp = 138},--柠檬精
			[50] = {Id = 2250,Force_Atk = 27.2,Force_Hp = 142.6}--柠檬精
		}
	}--柠檬精
}
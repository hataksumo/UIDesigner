--[[
--note:

colums:
{group,组} ,{loc,位置} ,{type,类型} ,{cardId,卡牌ID} ,{lv,等级} ,{bklv,突破} ,{star,星级}
primary key:
#0 [卡牌组]: group,loc,type
]]
return{
	[1] = {
		[1] = {
			jlr = {cardId = 1101001,lv = 8,bklv = 1,star = 1},
			shl = {cardId = 1102002,lv = 5,bklv = 1,star = 1}
		}
	},
	[2] = {
		[1] = {
			jlr = {cardId = 1101001,lv = 8,bklv = 1,star = 1},
			shl = {cardId = 1102002,lv = 5,bklv = 1,star = 1}
		},
		[2] = {
			jlr = {cardId = 1101002,lv = 14,bklv = 2,star = 1},
			shl = {cardId = 1102004,lv = 14,bklv = 2,star = 1}
		},
		[3] = {
			jlr = {cardId = 1101003,lv = 4,bklv = 1,star = 1},
			shl = {cardId = 1102005,lv = 4,bklv = 1,star = 1}
		}
	},
	[3] = {
		[1] = {
			jlr = {cardId = 1101001,lv = 1,bklv = 1,star = 1},
			shl = {cardId = 1102002,lv = 1,bklv = 1,star = 1}
		},
		[2] = {
			jlr = {cardId = 1101002,lv = 1,bklv = 1,star = 1},
			shl = {cardId = 1102004,lv = 1,bklv = 1,star = 1}
		},
		[3] = {
			jlr = {cardId = 1101003,lv = 1,bklv = 1,star = 1},
			shl = {cardId = 1102005,lv = 1,bklv = 1,star = 1}
		}
	}
}
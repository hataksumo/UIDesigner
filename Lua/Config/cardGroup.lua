--[[
--note:

colums:
{cha,章节} ,{lvId,关卡} ,{group,组} ,{loc,位置} ,{type,类型} ,{cardId,卡牌ID} ,{lv,等级} ,{bklv,突破} ,{star,星级} ,{mon.id,怪物模组ID} ,{mon.desc,备注} ,{mon.bsFac,战力系数} ,{mon.rou,相对肉度} ,{monId,怪物模组ID} ,{BsFac,战力系数} ,{Rou,肉度}
primary key:
#0 [卡牌组]: group,loc,type
#1 [挂机卡牌组]: group,loc,type
#2 [芦花卡牌组]: group,loc,type
#3 [世界BOSS]: group,loc,type
]]
return{
	[101] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 1,bklv = 1,star = 1}
		},
		[2] = {
			jlr = {cardId = 1101002,lv = 1,bklv = 1,star = 1}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 1,bklv = 1,star = 1}
		}
	},
	[102] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 5,bklv = 1,star = 1}
		},
		[2] = {
			jlr = {cardId = 1101002,lv = 5,bklv = 1,star = 1}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 5,bklv = 1,star = 1}
		}
	},
	[103] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 7,bklv = 1,star = 1}
		},
		[2] = {
			jlr = {cardId = 1101002,lv = 7,bklv = 1,star = 1},
			shl = {cardId = 1102004,lv = 7,bklv = 1,star = 1}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 7,bklv = 1,star = 1},
			shl = {cardId = 1102015,lv = 7,bklv = 1,star = 1}
		}
	},
	[104] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 10,bklv = 1,star = 1},
			shl = {cardId = 1102005,lv = 10,bklv = 1,star = 1}
		},
		[2] = {
			jlr = {cardId = 1101002,lv = 10,bklv = 1,star = 1},
			shl = {cardId = 1102004,lv = 10,bklv = 1,star = 1}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 10,bklv = 1,star = 1},
			shl = {cardId = 1102015,lv = 10,bklv = 1,star = 1}
		}
	},
	[201] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 11,bklv = 1,star = 1},
			shl = {cardId = 1102005,lv = 11,bklv = 1,star = 1}
		},
		[2] = {
			jlr = {cardId = 1101002,lv = 11,bklv = 1,star = 1},
			shl = {cardId = 1102004,lv = 11,bklv = 1,star = 1}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 11,bklv = 1,star = 1},
			shl = {cardId = 1102015,lv = 11,bklv = 1,star = 1}
		}
	},
	[202] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 12,bklv = 1,star = 1},
			shl = {cardId = 1102005,lv = 12,bklv = 1,star = 1}
		},
		[2] = {
			jlr = {cardId = 1101002,lv = 12,bklv = 1,star = 1},
			shl = {cardId = 1102004,lv = 12,bklv = 1,star = 1}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 12,bklv = 1,star = 1},
			shl = {cardId = 1102015,lv = 12,bklv = 1,star = 1}
		}
	},
	[203] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 14,bklv = 1,star = 1},
			shl = {cardId = 1102005,lv = 14,bklv = 1,star = 1}
		},
		[2] = {
			jlr = {cardId = 1101002,lv = 14,bklv = 1,star = 1},
			shl = {cardId = 1102004,lv = 14,bklv = 1,star = 1}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 14,bklv = 1,star = 1},
			shl = {cardId = 1102015,lv = 14,bklv = 1,star = 1}
		}
	},
	[204] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 15,bklv = 1,star = 1},
			shl = {cardId = 1102005,lv = 15,bklv = 1,star = 1}
		},
		[2] = {
			jlr = {cardId = 1101002,lv = 15,bklv = 1,star = 1},
			shl = {cardId = 1102004,lv = 15,bklv = 1,star = 1}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 15,bklv = 1,star = 1},
			shl = {cardId = 1102015,lv = 15,bklv = 1,star = 1}
		}
	},
	[205] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 20,bklv = 2,star = 1},
			shl = {cardId = 1102005,lv = 15,bklv = 1,star = 1}
		},
		[2] = {
			jlr = {cardId = 1101002,lv = 20,bklv = 2,star = 1},
			shl = {cardId = 1102004,lv = 15,bklv = 1,star = 1}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 15,bklv = 1,star = 1},
			shl = {cardId = 1102015,lv = 15,bklv = 1,star = 1}
		}
	},
	[206] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 20,bklv = 2,star = 1},
			shl = {cardId = 1102005,lv = 15,bklv = 1,star = 1}
		},
		[2] = {
			jlr = {cardId = 1101002,lv = 20,bklv = 2,star = 1},
			shl = {cardId = 1102004,lv = 15,bklv = 1,star = 1}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 20,bklv = 2,star = 1},
			shl = {cardId = 1102015,lv = 20,bklv = 2,star = 1}
		}
	},
	[207] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 20,bklv = 2,star = 1},
			shl = {cardId = 1102005,lv = 20,bklv = 2,star = 1}
		},
		[2] = {
			jlr = {cardId = 1101002,lv = 20,bklv = 2,star = 1},
			shl = {cardId = 1102004,lv = 20,bklv = 2,star = 1}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 20,bklv = 2,star = 1},
			shl = {cardId = 1102015,lv = 20,bklv = 2,star = 1}
		}
	},
	[208] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 20,bklv = 2,star = 2},
			shl = {cardId = 1102005,lv = 20,bklv = 2,star = 1}
		},
		[2] = {
			jlr = {cardId = 1101002,lv = 20,bklv = 2,star = 1},
			shl = {cardId = 1102004,lv = 20,bklv = 2,star = 1}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 20,bklv = 2,star = 1},
			shl = {cardId = 1102015,lv = 20,bklv = 2,star = 1}
		}
	},
	[301] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 20,bklv = 2,star = 2},
			shl = {cardId = 1102005,lv = 20,bklv = 2,star = 1}
		},
		[2] = {
			jlr = {cardId = 1101002,lv = 20,bklv = 2,star = 1},
			shl = {cardId = 1102004,lv = 20,bklv = 2,star = 1}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 20,bklv = 2,star = 1},
			shl = {cardId = 1102015,lv = 20,bklv = 2,star = 1}
		}
	},
	[302] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 25,bklv = 2,star = 2},
			shl = {cardId = 1102005,lv = 20,bklv = 2,star = 1}
		},
		[2] = {
			jlr = {cardId = 1101002,lv = 25,bklv = 2,star = 1},
			shl = {cardId = 1102004,lv = 20,bklv = 2,star = 1}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 25,bklv = 2,star = 1},
			shl = {cardId = 1102015,lv = 20,bklv = 2,star = 1}
		}
	},
	[303] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 25,bklv = 2,star = 2},
			shl = {cardId = 1102005,lv = 25,bklv = 2,star = 1}
		},
		[2] = {
			jlr = {cardId = 1101002,lv = 25,bklv = 2,star = 1},
			shl = {cardId = 1102004,lv = 25,bklv = 2,star = 1}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 25,bklv = 2,star = 1},
			shl = {cardId = 1102015,lv = 25,bklv = 2,star = 1}
		}
	},
	[304] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 30,bklv = 3,star = 2},
			shl = {cardId = 1102005,lv = 25,bklv = 2,star = 1}
		},
		[2] = {
			jlr = {cardId = 1101002,lv = 25,bklv = 3,star = 1},
			shl = {cardId = 1102004,lv = 30,bklv = 3,star = 1}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 25,bklv = 3,star = 1},
			shl = {cardId = 1102015,lv = 25,bklv = 2,star = 1}
		}
	},
	[305] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 30,bklv = 3,star = 2},
			shl = {cardId = 1102005,lv = 25,bklv = 2,star = 1}
		},
		[2] = {
			jlr = {cardId = 1101002,lv = 30,bklv = 3,star = 1},
			shl = {cardId = 1102004,lv = 30,bklv = 3,star = 1}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 30,bklv = 3,star = 1},
			shl = {cardId = 1102015,lv = 25,bklv = 2,star = 1}
		}
	},
	[306] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 30,bklv = 3,star = 2},
			shl = {cardId = 1102005,lv = 30,bklv = 3,star = 1}
		},
		[2] = {
			jlr = {cardId = 1101002,lv = 30,bklv = 3,star = 1},
			shl = {cardId = 1102004,lv = 30,bklv = 3,star = 1}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 30,bklv = 3,star = 1},
			shl = {cardId = 1102015,lv = 30,bklv = 3,star = 1}
		}
	},
	[307] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 35,bklv = 3,star = 2},
			shl = {cardId = 1102005,lv = 35,bklv = 3,star = 1}
		},
		[2] = {
			jlr = {cardId = 1101002,lv = 35,bklv = 3,star = 1},
			shl = {cardId = 1102004,lv = 35,bklv = 3,star = 1}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 35,bklv = 3,star = 1},
			shl = {cardId = 1102015,lv = 35,bklv = 3,star = 1}
		}
	},
	[308] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 35,bklv = 3,star = 2},
			shl = {cardId = 1102005,lv = 35,bklv = 3,star = 1}
		},
		[2] = {
			jlr = {cardId = 1101002,lv = 35,bklv = 3,star = 2},
			shl = {cardId = 1102004,lv = 35,bklv = 3,star = 1}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 35,bklv = 3,star = 1},
			shl = {cardId = 1102002,lv = 35,bklv = 3,star = 1}
		}
	},
	[309] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 35,bklv = 3,star = 2},
			shl = {cardId = 1102005,lv = 35,bklv = 3,star = 1}
		},
		[2] = {
			jlr = {cardId = 1101002,lv = 35,bklv = 3,star = 2},
			shl = {cardId = 1102004,lv = 35,bklv = 3,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 35,bklv = 3,star = 1},
			shl = {cardId = 1102002,lv = 35,bklv = 3,star = 1}
		}
	},
	[310] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 35,bklv = 3,star = 2},
			shl = {cardId = 1102005,lv = 35,bklv = 3,star = 1}
		},
		[2] = {
			jlr = {cardId = 1101002,lv = 35,bklv = 3,star = 2},
			shl = {cardId = 1102004,lv = 35,bklv = 3,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 35,bklv = 3,star = 2},
			shl = {cardId = 1102002,lv = 35,bklv = 3,star = 1}
		}
	},
	[311] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 35,bklv = 3,star = 2},
			shl = {cardId = 1102005,lv = 35,bklv = 3,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101002,lv = 35,bklv = 3,star = 2},
			shl = {cardId = 1102004,lv = 35,bklv = 3,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 35,bklv = 3,star = 2},
			shl = {cardId = 1102002,lv = 35,bklv = 3,star = 1}
		}
	},
	[312] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 35,bklv = 3,star = 2},
			shl = {cardId = 1102005,lv = 35,bklv = 3,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101002,lv = 35,bklv = 3,star = 2},
			shl = {cardId = 1102004,lv = 35,bklv = 3,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 35,bklv = 3,star = 2},
			shl = {cardId = 1102002,lv = 35,bklv = 3,star = 1}
		}
	},
	[401] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 36,bklv = 3,star = 2},
			shl = {cardId = 1102005,lv = 36,bklv = 3,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101002,lv = 36,bklv = 3,star = 2},
			shl = {cardId = 1102004,lv = 36,bklv = 3,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 36,bklv = 3,star = 2},
			shl = {cardId = 1102002,lv = 36,bklv = 3,star = 1}
		}
	},
	[402] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 37,bklv = 3,star = 2},
			shl = {cardId = 1102005,lv = 37,bklv = 3,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101002,lv = 37,bklv = 3,star = 2},
			shl = {cardId = 1102004,lv = 37,bklv = 3,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 37,bklv = 3,star = 2},
			shl = {cardId = 1102002,lv = 37,bklv = 3,star = 1}
		}
	},
	[403] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 38,bklv = 3,star = 2},
			shl = {cardId = 1102005,lv = 38,bklv = 3,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101002,lv = 38,bklv = 3,star = 2},
			shl = {cardId = 1102004,lv = 38,bklv = 3,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 38,bklv = 3,star = 2},
			shl = {cardId = 1102002,lv = 38,bklv = 3,star = 1}
		}
	},
	[404] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 39,bklv = 3,star = 2},
			shl = {cardId = 1102005,lv = 39,bklv = 3,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101002,lv = 39,bklv = 3,star = 2},
			shl = {cardId = 1102004,lv = 39,bklv = 3,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 39,bklv = 3,star = 2},
			shl = {cardId = 1102002,lv = 39,bklv = 3,star = 1}
		}
	},
	[405] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 40,bklv = 3,star = 2},
			shl = {cardId = 1102005,lv = 40,bklv = 3,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101002,lv = 40,bklv = 3,star = 2},
			shl = {cardId = 1102004,lv = 40,bklv = 3,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 40,bklv = 3,star = 2},
			shl = {cardId = 1102002,lv = 40,bklv = 3,star = 1}
		}
	},
	[406] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 40,bklv = 4,star = 2},
			shl = {cardId = 1102005,lv = 40,bklv = 3,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101002,lv = 40,bklv = 4,star = 2},
			shl = {cardId = 1102004,lv = 40,bklv = 3,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 40,bklv = 3,star = 2},
			shl = {cardId = 1102002,lv = 40,bklv = 3,star = 1}
		}
	},
	[407] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 40,bklv = 4,star = 2},
			shl = {cardId = 1102005,lv = 40,bklv = 3,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101002,lv = 40,bklv = 4,star = 2},
			shl = {cardId = 1102004,lv = 40,bklv = 4,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 40,bklv = 4,star = 2},
			shl = {cardId = 1102002,lv = 40,bklv = 3,star = 1}
		}
	},
	[408] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 42,bklv = 4,star = 2},
			shl = {cardId = 1102005,lv = 42,bklv = 4,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101002,lv = 42,bklv = 4,star = 2},
			shl = {cardId = 1102004,lv = 42,bklv = 4,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 42,bklv = 4,star = 2},
			shl = {cardId = 1102002,lv = 42,bklv = 4,star = 1}
		}
	},
	[409] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 42,bklv = 4,star = 2},
			shl = {cardId = 1102005,lv = 42,bklv = 4,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101002,lv = 42,bklv = 4,star = 2},
			shl = {cardId = 1102004,lv = 42,bklv = 4,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 42,bklv = 4,star = 2},
			shl = {cardId = 1102002,lv = 42,bklv = 4,star = 2}
		}
	},
	[410] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 42,bklv = 4,star = 2},
			shl = {cardId = 1102005,lv = 42,bklv = 4,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 42,bklv = 4,star = 2},
			shl = {cardId = 1102004,lv = 42,bklv = 4,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 42,bklv = 4,star = 2},
			shl = {cardId = 1102002,lv = 42,bklv = 4,star = 2}
		}
	},
	[411] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 42,bklv = 4,star = 2},
			shl = {cardId = 1102005,lv = 42,bklv = 4,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 42,bklv = 4,star = 2},
			shl = {cardId = 1102017,lv = 42,bklv = 4,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 42,bklv = 4,star = 2},
			shl = {cardId = 1102002,lv = 42,bklv = 4,star = 2}
		}
	},
	[412] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 43,bklv = 4,star = 2},
			shl = {cardId = 1102005,lv = 43,bklv = 4,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 43,bklv = 4,star = 2},
			shl = {cardId = 1102017,lv = 43,bklv = 4,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 43,bklv = 4,star = 2},
			shl = {cardId = 1102002,lv = 43,bklv = 4,star = 2}
		}
	},
	[413] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 44,bklv = 4,star = 2},
			shl = {cardId = 1102005,lv = 44,bklv = 4,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 44,bklv = 4,star = 2},
			shl = {cardId = 1102017,lv = 44,bklv = 4,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 44,bklv = 4,star = 2},
			shl = {cardId = 1102002,lv = 44,bklv = 4,star = 2}
		}
	},
	[414] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 45,bklv = 4,star = 2},
			shl = {cardId = 1102005,lv = 45,bklv = 4,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 45,bklv = 4,star = 2},
			shl = {cardId = 1102017,lv = 45,bklv = 4,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 45,bklv = 4,star = 2},
			shl = {cardId = 1102002,lv = 45,bklv = 4,star = 2}
		}
	},
	[415] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 45,bklv = 4,star = 2},
			shl = {cardId = 1102005,lv = 45,bklv = 4,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 45,bklv = 4,star = 2},
			shl = {cardId = 1102017,lv = 45,bklv = 4,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 45,bklv = 4,star = 2},
			shl = {cardId = 1102002,lv = 45,bklv = 4,star = 2}
		}
	},
	[501] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 46,bklv = 4,star = 2},
			shl = {cardId = 1102005,lv = 46,bklv = 4,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 45,bklv = 4,star = 2},
			shl = {cardId = 1102017,lv = 45,bklv = 4,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 45,bklv = 4,star = 2},
			shl = {cardId = 1102002,lv = 45,bklv = 4,star = 2}
		}
	},
	[502] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 46,bklv = 4,star = 2},
			shl = {cardId = 1102005,lv = 46,bklv = 4,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 46,bklv = 4,star = 2},
			shl = {cardId = 1102017,lv = 46,bklv = 4,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 45,bklv = 4,star = 2},
			shl = {cardId = 1102002,lv = 45,bklv = 4,star = 2}
		}
	},
	[503] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 46,bklv = 4,star = 2},
			shl = {cardId = 1102005,lv = 46,bklv = 4,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 46,bklv = 4,star = 2},
			shl = {cardId = 1102017,lv = 46,bklv = 4,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 46,bklv = 4,star = 2},
			shl = {cardId = 1102002,lv = 46,bklv = 4,star = 2}
		}
	},
	[504] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 47,bklv = 4,star = 2},
			shl = {cardId = 1102005,lv = 47,bklv = 4,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 46,bklv = 4,star = 2},
			shl = {cardId = 1102017,lv = 46,bklv = 4,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 46,bklv = 4,star = 2},
			shl = {cardId = 1102002,lv = 46,bklv = 4,star = 2}
		}
	},
	[505] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 47,bklv = 4,star = 2},
			shl = {cardId = 1102005,lv = 47,bklv = 4,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 47,bklv = 4,star = 2},
			shl = {cardId = 1102017,lv = 47,bklv = 4,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 46,bklv = 4,star = 2},
			shl = {cardId = 1102002,lv = 46,bklv = 4,star = 2}
		}
	},
	[506] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 47,bklv = 4,star = 2},
			shl = {cardId = 1102005,lv = 47,bklv = 4,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 47,bklv = 4,star = 2},
			shl = {cardId = 1102017,lv = 47,bklv = 4,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 47,bklv = 4,star = 2},
			shl = {cardId = 1102002,lv = 47,bklv = 4,star = 2}
		}
	},
	[507] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 48,bklv = 4,star = 2},
			shl = {cardId = 1102005,lv = 48,bklv = 4,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 48,bklv = 4,star = 2},
			shl = {cardId = 1102017,lv = 48,bklv = 4,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 48,bklv = 4,star = 2},
			shl = {cardId = 1102002,lv = 48,bklv = 4,star = 2}
		}
	},
	[508] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 49,bklv = 4,star = 2},
			shl = {cardId = 1102005,lv = 49,bklv = 4,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 49,bklv = 4,star = 2},
			shl = {cardId = 1102017,lv = 49,bklv = 4,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 49,bklv = 4,star = 2},
			shl = {cardId = 1102002,lv = 49,bklv = 4,star = 2}
		}
	},
	[509] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 50,bklv = 4,star = 2},
			shl = {cardId = 1102005,lv = 50,bklv = 4,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 50,bklv = 4,star = 2},
			shl = {cardId = 1102017,lv = 50,bklv = 4,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 50,bklv = 4,star = 2},
			shl = {cardId = 1102002,lv = 50,bklv = 4,star = 2}
		}
	},
	[510] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 52,bklv = 5,star = 2},
			shl = {cardId = 1102005,lv = 50,bklv = 4,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 52,bklv = 5,star = 2},
			shl = {cardId = 1102017,lv = 50,bklv = 4,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 50,bklv = 4,star = 2},
			shl = {cardId = 1102002,lv = 50,bklv = 4,star = 2}
		}
	},
	[511] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 52,bklv = 5,star = 2},
			shl = {cardId = 1102005,lv = 52,bklv = 5,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 52,bklv = 5,star = 2},
			shl = {cardId = 1102017,lv = 50,bklv = 4,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 52,bklv = 5,star = 2},
			shl = {cardId = 1102002,lv = 50,bklv = 4,star = 2}
		}
	},
	[512] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 52,bklv = 5,star = 2},
			shl = {cardId = 1102005,lv = 52,bklv = 5,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 52,bklv = 5,star = 2},
			shl = {cardId = 1102017,lv = 52,bklv = 5,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 52,bklv = 5,star = 2},
			shl = {cardId = 1102002,lv = 52,bklv = 5,star = 2}
		}
	},
	[513] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 53,bklv = 5,star = 2},
			shl = {cardId = 1102005,lv = 53,bklv = 5,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 53,bklv = 5,star = 2},
			shl = {cardId = 1102017,lv = 53,bklv = 5,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 53,bklv = 5,star = 2},
			shl = {cardId = 1102002,lv = 53,bklv = 5,star = 2}
		}
	},
	[514] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 54,bklv = 5,star = 2},
			shl = {cardId = 1102005,lv = 54,bklv = 5,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 54,bklv = 5,star = 2},
			shl = {cardId = 1102017,lv = 54,bklv = 5,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 54,bklv = 5,star = 2},
			shl = {cardId = 1102002,lv = 54,bklv = 5,star = 2}
		}
	},
	[515] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 55,bklv = 5,star = 2},
			shl = {cardId = 1102005,lv = 55,bklv = 5,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 55,bklv = 5,star = 2},
			shl = {cardId = 1102017,lv = 55,bklv = 5,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 55,bklv = 5,star = 2},
			shl = {cardId = 1102002,lv = 55,bklv = 5,star = 2}
		}
	},
	[601] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 56,bklv = 5,star = 2},
			shl = {cardId = 1102005,lv = 56,bklv = 5,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 56,bklv = 5,star = 2},
			shl = {cardId = 1102017,lv = 56,bklv = 5,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 56,bklv = 5,star = 2},
			shl = {cardId = 1102002,lv = 56,bklv = 5,star = 2}
		}
	},
	[602] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 57,bklv = 5,star = 2},
			shl = {cardId = 1102005,lv = 56,bklv = 5,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 57,bklv = 5,star = 2},
			shl = {cardId = 1102017,lv = 56,bklv = 5,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 56,bklv = 5,star = 2},
			shl = {cardId = 1102002,lv = 56,bklv = 5,star = 2}
		}
	},
	[603] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 57,bklv = 5,star = 2},
			shl = {cardId = 1102005,lv = 56,bklv = 5,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 57,bklv = 5,star = 2},
			shl = {cardId = 1102017,lv = 57,bklv = 5,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 57,bklv = 5,star = 2},
			shl = {cardId = 1102002,lv = 56,bklv = 5,star = 2}
		}
	},
	[604] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 57,bklv = 5,star = 2},
			shl = {cardId = 1102005,lv = 57,bklv = 5,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 57,bklv = 5,star = 2},
			shl = {cardId = 1102017,lv = 57,bklv = 5,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 57,bklv = 5,star = 2},
			shl = {cardId = 1102002,lv = 57,bklv = 5,star = 2}
		}
	},
	[605] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 58,bklv = 5,star = 2},
			shl = {cardId = 1102005,lv = 57,bklv = 5,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 58,bklv = 5,star = 2},
			shl = {cardId = 1102017,lv = 57,bklv = 5,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 57,bklv = 5,star = 2},
			shl = {cardId = 1102002,lv = 57,bklv = 5,star = 2}
		}
	},
	[606] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 58,bklv = 5,star = 2},
			shl = {cardId = 1102005,lv = 57,bklv = 5,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 58,bklv = 5,star = 2},
			shl = {cardId = 1102017,lv = 58,bklv = 5,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 58,bklv = 5,star = 2},
			shl = {cardId = 1102002,lv = 57,bklv = 5,star = 2}
		}
	},
	[607] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 58,bklv = 5,star = 2},
			shl = {cardId = 1102005,lv = 58,bklv = 5,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 58,bklv = 5,star = 2},
			shl = {cardId = 1102017,lv = 58,bklv = 5,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 58,bklv = 5,star = 2},
			shl = {cardId = 1102002,lv = 58,bklv = 5,star = 2}
		}
	},
	[608] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 59,bklv = 5,star = 2},
			shl = {cardId = 1102005,lv = 59,bklv = 5,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 59,bklv = 5,star = 2},
			shl = {cardId = 1102017,lv = 59,bklv = 5,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 59,bklv = 5,star = 2},
			shl = {cardId = 1102002,lv = 59,bklv = 5,star = 2}
		}
	},
	[609] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 60,bklv = 5,star = 2},
			shl = {cardId = 1102005,lv = 60,bklv = 5,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 60,bklv = 5,star = 2},
			shl = {cardId = 1102017,lv = 60,bklv = 5,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 60,bklv = 5,star = 2},
			shl = {cardId = 1102002,lv = 60,bklv = 5,star = 2}
		}
	},
	[610] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 62,bklv = 6,star = 2},
			shl = {cardId = 1102005,lv = 60,bklv = 5,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 60,bklv = 5,star = 2},
			shl = {cardId = 1102017,lv = 60,bklv = 5,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 60,bklv = 5,star = 2},
			shl = {cardId = 1102002,lv = 60,bklv = 5,star = 2}
		}
	},
	[611] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 62,bklv = 6,star = 2},
			shl = {cardId = 1102005,lv = 60,bklv = 5,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 60,bklv = 5,star = 2},
			shl = {cardId = 1102017,lv = 62,bklv = 6,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 60,bklv = 5,star = 2},
			shl = {cardId = 1102002,lv = 60,bklv = 5,star = 2}
		}
	},
	[612] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 62,bklv = 6,star = 2},
			shl = {cardId = 1102005,lv = 60,bklv = 5,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 60,bklv = 5,star = 2},
			shl = {cardId = 1102017,lv = 62,bklv = 6,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 62,bklv = 6,star = 2},
			shl = {cardId = 1102002,lv = 60,bklv = 5,star = 2}
		}
	},
	[613] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 62,bklv = 6,star = 2},
			shl = {cardId = 1102005,lv = 60,bklv = 5,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 62,bklv = 6,star = 2},
			shl = {cardId = 1102017,lv = 62,bklv = 6,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 62,bklv = 6,star = 2},
			shl = {cardId = 1102002,lv = 60,bklv = 5,star = 2}
		}
	},
	[614] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 62,bklv = 6,star = 2},
			shl = {cardId = 1102005,lv = 62,bklv = 6,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 62,bklv = 6,star = 2},
			shl = {cardId = 1102017,lv = 62,bklv = 6,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 62,bklv = 6,star = 2},
			shl = {cardId = 1102002,lv = 60,bklv = 5,star = 2}
		}
	},
	[615] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 62,bklv = 6,star = 2},
			shl = {cardId = 1102005,lv = 62,bklv = 6,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 62,bklv = 6,star = 2},
			shl = {cardId = 1102017,lv = 62,bklv = 6,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 62,bklv = 6,star = 2},
			shl = {cardId = 1102002,lv = 62,bklv = 6,star = 2}
		}
	},
	[701] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 63,bklv = 6,star = 2},
			shl = {cardId = 1102005,lv = 63,bklv = 6,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 62,bklv = 6,star = 2},
			shl = {cardId = 1102017,lv = 62,bklv = 6,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 62,bklv = 6,star = 2},
			shl = {cardId = 1102002,lv = 62,bklv = 6,star = 2}
		}
	},
	[702] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 63,bklv = 6,star = 2},
			shl = {cardId = 1102005,lv = 63,bklv = 6,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 63,bklv = 6,star = 2},
			shl = {cardId = 1102017,lv = 63,bklv = 6,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 63,bklv = 6,star = 2},
			shl = {cardId = 1102002,lv = 63,bklv = 6,star = 2}
		}
	},
	[703] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 64,bklv = 6,star = 2},
			shl = {cardId = 1102005,lv = 64,bklv = 6,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 64,bklv = 6,star = 2},
			shl = {cardId = 1102017,lv = 64,bklv = 6,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 64,bklv = 6,star = 2},
			shl = {cardId = 1102002,lv = 64,bklv = 6,star = 2}
		}
	},
	[704] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 66,bklv = 6,star = 2},
			shl = {cardId = 1102005,lv = 66,bklv = 6,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 66,bklv = 6,star = 2},
			shl = {cardId = 1102017,lv = 66,bklv = 6,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 66,bklv = 6,star = 2},
			shl = {cardId = 1102002,lv = 66,bklv = 6,star = 2}
		}
	},
	[705] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 68,bklv = 6,star = 2},
			shl = {cardId = 1102005,lv = 68,bklv = 6,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 68,bklv = 6,star = 2},
			shl = {cardId = 1102017,lv = 68,bklv = 6,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 68,bklv = 6,star = 2},
			shl = {cardId = 1102002,lv = 68,bklv = 6,star = 2}
		}
	},
	[706] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 70,bklv = 6,star = 2},
			shl = {cardId = 1102005,lv = 70,bklv = 6,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 70,bklv = 6,star = 2},
			shl = {cardId = 1102017,lv = 70,bklv = 6,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 70,bklv = 6,star = 2},
			shl = {cardId = 1102002,lv = 70,bklv = 6,star = 2}
		}
	},
	[707] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 70,bklv = 7,star = 2},
			shl = {cardId = 1102005,lv = 70,bklv = 6,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 70,bklv = 7,star = 2},
			shl = {cardId = 1102017,lv = 70,bklv = 7,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 70,bklv = 7,star = 2},
			shl = {cardId = 1102002,lv = 70,bklv = 6,star = 2}
		}
	},
	[708] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 70,bklv = 7,star = 2},
			shl = {cardId = 1102005,lv = 70,bklv = 7,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 70,bklv = 7,star = 2},
			shl = {cardId = 1102017,lv = 70,bklv = 7,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 70,bklv = 7,star = 2},
			shl = {cardId = 1102002,lv = 70,bklv = 7,star = 2}
		}
	},
	[709] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 70,bklv = 7,star = 3},
			shl = {cardId = 1102005,lv = 70,bklv = 7,star = 2}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 70,bklv = 7,star = 2},
			shl = {cardId = 1102017,lv = 70,bklv = 7,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 70,bklv = 7,star = 2},
			shl = {cardId = 1102002,lv = 70,bklv = 7,star = 2}
		}
	},
	[710] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 70,bklv = 7,star = 3},
			shl = {cardId = 1102005,lv = 70,bklv = 7,star = 3}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 70,bklv = 7,star = 2},
			shl = {cardId = 1102017,lv = 70,bklv = 7,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 70,bklv = 7,star = 2},
			shl = {cardId = 1102002,lv = 70,bklv = 7,star = 2}
		}
	},
	[711] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 70,bklv = 7,star = 3},
			shl = {cardId = 1102005,lv = 70,bklv = 7,star = 3}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 70,bklv = 7,star = 3},
			shl = {cardId = 1102017,lv = 70,bklv = 7,star = 2}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 70,bklv = 7,star = 2},
			shl = {cardId = 1102002,lv = 70,bklv = 7,star = 2}
		}
	},
	[712] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 70,bklv = 7,star = 3},
			shl = {cardId = 1102005,lv = 70,bklv = 7,star = 3}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 70,bklv = 7,star = 3},
			shl = {cardId = 1102017,lv = 70,bklv = 7,star = 3}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 70,bklv = 7,star = 2},
			shl = {cardId = 1102002,lv = 70,bklv = 7,star = 2}
		}
	},
	[713] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 70,bklv = 7,star = 3},
			shl = {cardId = 1102005,lv = 70,bklv = 7,star = 3}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 70,bklv = 7,star = 3},
			shl = {cardId = 1102017,lv = 70,bklv = 7,star = 3}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 70,bklv = 7,star = 3},
			shl = {cardId = 1102002,lv = 70,bklv = 7,star = 2}
		}
	},
	[714] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 70,bklv = 7,star = 3},
			shl = {cardId = 1102005,lv = 70,bklv = 7,star = 3}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 70,bklv = 7,star = 3},
			shl = {cardId = 1102017,lv = 70,bklv = 7,star = 3}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 70,bklv = 7,star = 3},
			shl = {cardId = 1102002,lv = 70,bklv = 7,star = 3}
		}
	},
	[715] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 70,bklv = 7,star = 3},
			shl = {cardId = 1102005,lv = 70,bklv = 7,star = 3}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 70,bklv = 7,star = 3},
			shl = {cardId = 1102017,lv = 70,bklv = 7,star = 3}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 70,bklv = 7,star = 3},
			shl = {cardId = 1102002,lv = 70,bklv = 7,star = 3}
		}
	},
	[801] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 71,bklv = 7,star = 3},
			shl = {cardId = 1102005,lv = 71,bklv = 7,star = 3}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 71,bklv = 7,star = 3},
			shl = {cardId = 1102017,lv = 71,bklv = 7,star = 3}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 71,bklv = 7,star = 3},
			shl = {cardId = 1102002,lv = 71,bklv = 7,star = 3}
		}
	},
	[802] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 72,bklv = 7,star = 3},
			shl = {cardId = 1102005,lv = 72,bklv = 7,star = 3}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 72,bklv = 7,star = 3},
			shl = {cardId = 1102017,lv = 72,bklv = 7,star = 3}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 72,bklv = 7,star = 3},
			shl = {cardId = 1102002,lv = 72,bklv = 7,star = 3}
		}
	},
	[803] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 73,bklv = 7,star = 3},
			shl = {cardId = 1102005,lv = 73,bklv = 7,star = 3}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 73,bklv = 7,star = 3},
			shl = {cardId = 1102017,lv = 73,bklv = 7,star = 3}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 73,bklv = 7,star = 3},
			shl = {cardId = 1102002,lv = 73,bklv = 7,star = 3}
		}
	},
	[804] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 74,bklv = 7,star = 3},
			shl = {cardId = 1102005,lv = 74,bklv = 7,star = 3}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 74,bklv = 7,star = 3},
			shl = {cardId = 1102017,lv = 74,bklv = 7,star = 3}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 74,bklv = 7,star = 3},
			shl = {cardId = 1102002,lv = 74,bklv = 7,star = 3}
		}
	},
	[805] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 75,bklv = 7,star = 3},
			shl = {cardId = 1102005,lv = 75,bklv = 7,star = 3}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 75,bklv = 7,star = 3},
			shl = {cardId = 1102017,lv = 75,bklv = 7,star = 3}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 75,bklv = 7,star = 3},
			shl = {cardId = 1102002,lv = 75,bklv = 7,star = 3}
		}
	},
	[806] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 76,bklv = 7,star = 3},
			shl = {cardId = 1102005,lv = 76,bklv = 7,star = 3}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 76,bklv = 7,star = 3},
			shl = {cardId = 1102017,lv = 76,bklv = 7,star = 3}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 76,bklv = 7,star = 3},
			shl = {cardId = 1102002,lv = 76,bklv = 7,star = 3}
		}
	},
	[807] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 77,bklv = 7,star = 3},
			shl = {cardId = 1102005,lv = 77,bklv = 7,star = 3}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 77,bklv = 7,star = 3},
			shl = {cardId = 1102017,lv = 77,bklv = 7,star = 3}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 77,bklv = 7,star = 3},
			shl = {cardId = 1102002,lv = 77,bklv = 7,star = 3}
		}
	},
	[808] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 78,bklv = 7,star = 3},
			shl = {cardId = 1102005,lv = 78,bklv = 7,star = 3}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 78,bklv = 7,star = 3},
			shl = {cardId = 1102017,lv = 78,bklv = 7,star = 3}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 78,bklv = 7,star = 3},
			shl = {cardId = 1102002,lv = 78,bklv = 7,star = 3}
		}
	},
	[809] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 79,bklv = 7,star = 3},
			shl = {cardId = 1102005,lv = 79,bklv = 7,star = 3}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 79,bklv = 7,star = 3},
			shl = {cardId = 1102017,lv = 79,bklv = 7,star = 3}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 79,bklv = 7,star = 3},
			shl = {cardId = 1102002,lv = 79,bklv = 7,star = 3}
		}
	},
	[810] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 80,bklv = 7,star = 3},
			shl = {cardId = 1102005,lv = 80,bklv = 7,star = 3}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 80,bklv = 7,star = 3},
			shl = {cardId = 1102017,lv = 80,bklv = 7,star = 3}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 80,bklv = 7,star = 3},
			shl = {cardId = 1102002,lv = 80,bklv = 7,star = 3}
		}
	},
	[811] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 82,bklv = 8,star = 3},
			shl = {cardId = 1102005,lv = 80,bklv = 7,star = 3}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 80,bklv = 7,star = 3},
			shl = {cardId = 1102017,lv = 80,bklv = 7,star = 3}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 80,bklv = 7,star = 3},
			shl = {cardId = 1102002,lv = 80,bklv = 7,star = 3}
		}
	},
	[812] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 82,bklv = 8,star = 3},
			shl = {cardId = 1102005,lv = 82,bklv = 8,star = 3}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 80,bklv = 7,star = 3},
			shl = {cardId = 1102017,lv = 80,bklv = 7,star = 3}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 80,bklv = 7,star = 3},
			shl = {cardId = 1102002,lv = 80,bklv = 7,star = 3}
		}
	},
	[813] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 82,bklv = 8,star = 3},
			shl = {cardId = 1102005,lv = 82,bklv = 8,star = 3}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 82,bklv = 8,star = 3},
			shl = {cardId = 1102017,lv = 80,bklv = 7,star = 3}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 80,bklv = 7,star = 3},
			shl = {cardId = 1102002,lv = 80,bklv = 7,star = 3}
		}
	},
	[814] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 82,bklv = 8,star = 3},
			shl = {cardId = 1102005,lv = 82,bklv = 8,star = 3}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 82,bklv = 8,star = 3},
			shl = {cardId = 1102017,lv = 82,bklv = 8,star = 3}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 80,bklv = 7,star = 3},
			shl = {cardId = 1102002,lv = 80,bklv = 7,star = 3}
		}
	},
	[815] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 82,bklv = 8,star = 3},
			shl = {cardId = 1102005,lv = 82,bklv = 8,star = 3}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 82,bklv = 8,star = 3},
			shl = {cardId = 1102017,lv = 82,bklv = 8,star = 3}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 82,bklv = 8,star = 3},
			shl = {cardId = 1102002,lv = 82,bklv = 8,star = 3}
		}
	},
	[901] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 83,bklv = 8,star = 3},
			shl = {cardId = 1102005,lv = 83,bklv = 8,star = 3}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 82,bklv = 8,star = 3},
			shl = {cardId = 1102017,lv = 82,bklv = 8,star = 3}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 82,bklv = 8,star = 3},
			shl = {cardId = 1102002,lv = 82,bklv = 8,star = 3}
		}
	},
	[902] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 83,bklv = 8,star = 3},
			shl = {cardId = 1102005,lv = 83,bklv = 8,star = 3}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 83,bklv = 8,star = 3},
			shl = {cardId = 1102017,lv = 83,bklv = 8,star = 3}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 82,bklv = 8,star = 3},
			shl = {cardId = 1102002,lv = 82,bklv = 8,star = 3}
		}
	},
	[903] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 83,bklv = 8,star = 3},
			shl = {cardId = 1102005,lv = 83,bklv = 8,star = 3}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 83,bklv = 8,star = 3},
			shl = {cardId = 1102017,lv = 83,bklv = 8,star = 3}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 83,bklv = 8,star = 3},
			shl = {cardId = 1102002,lv = 83,bklv = 8,star = 3}
		}
	},
	[904] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 84,bklv = 8,star = 3},
			shl = {cardId = 1102005,lv = 84,bklv = 8,star = 3}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 84,bklv = 8,star = 3},
			shl = {cardId = 1102017,lv = 84,bklv = 8,star = 3}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 84,bklv = 8,star = 3},
			shl = {cardId = 1102002,lv = 84,bklv = 8,star = 3}
		}
	},
	[905] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 85,bklv = 8,star = 3},
			shl = {cardId = 1102005,lv = 85,bklv = 8,star = 3}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 85,bklv = 8,star = 3},
			shl = {cardId = 1102017,lv = 85,bklv = 8,star = 3}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 85,bklv = 8,star = 3},
			shl = {cardId = 1102002,lv = 85,bklv = 8,star = 3}
		}
	},
	[906] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 86,bklv = 8,star = 3},
			shl = {cardId = 1102005,lv = 86,bklv = 8,star = 3}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 86,bklv = 8,star = 3},
			shl = {cardId = 1102017,lv = 86,bklv = 8,star = 3}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 86,bklv = 8,star = 3},
			shl = {cardId = 1102002,lv = 86,bklv = 8,star = 3}
		}
	},
	[907] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 87,bklv = 8,star = 3},
			shl = {cardId = 1102005,lv = 87,bklv = 8,star = 3}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 87,bklv = 8,star = 3},
			shl = {cardId = 1102017,lv = 87,bklv = 8,star = 3}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 87,bklv = 8,star = 3},
			shl = {cardId = 1102002,lv = 87,bklv = 8,star = 3}
		}
	},
	[908] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 88,bklv = 8,star = 3},
			shl = {cardId = 1102005,lv = 88,bklv = 8,star = 3}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 88,bklv = 8,star = 3},
			shl = {cardId = 1102017,lv = 88,bklv = 8,star = 3}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 88,bklv = 8,star = 3},
			shl = {cardId = 1102002,lv = 88,bklv = 8,star = 3}
		}
	},
	[909] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 89,bklv = 8,star = 3},
			shl = {cardId = 1102005,lv = 89,bklv = 8,star = 3}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 89,bklv = 8,star = 3},
			shl = {cardId = 1102017,lv = 89,bklv = 8,star = 3}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 89,bklv = 8,star = 3},
			shl = {cardId = 1102002,lv = 89,bklv = 8,star = 3}
		}
	},
	[910] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 90,bklv = 8,star = 3},
			shl = {cardId = 1102005,lv = 90,bklv = 8,star = 3}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 90,bklv = 8,star = 3},
			shl = {cardId = 1102017,lv = 90,bklv = 8,star = 3}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 90,bklv = 8,star = 3},
			shl = {cardId = 1102002,lv = 90,bklv = 8,star = 3}
		}
	},
	[911] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 92,bklv = 9,star = 3},
			shl = {cardId = 1102005,lv = 90,bklv = 8,star = 3}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 90,bklv = 8,star = 3},
			shl = {cardId = 1102017,lv = 90,bklv = 8,star = 3}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 90,bklv = 8,star = 3},
			shl = {cardId = 1102002,lv = 90,bklv = 8,star = 3}
		}
	},
	[912] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 92,bklv = 9,star = 3},
			shl = {cardId = 1102005,lv = 92,bklv = 9,star = 3}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 90,bklv = 8,star = 3},
			shl = {cardId = 1102017,lv = 90,bklv = 8,star = 3}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 90,bklv = 8,star = 3},
			shl = {cardId = 1102002,lv = 90,bklv = 8,star = 3}
		}
	},
	[913] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 92,bklv = 9,star = 3},
			shl = {cardId = 1102005,lv = 92,bklv = 9,star = 3}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 92,bklv = 9,star = 3},
			shl = {cardId = 1102017,lv = 90,bklv = 8,star = 3}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 90,bklv = 8,star = 3},
			shl = {cardId = 1102002,lv = 90,bklv = 8,star = 3}
		}
	},
	[914] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 92,bklv = 9,star = 3},
			shl = {cardId = 1102005,lv = 92,bklv = 9,star = 3}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 92,bklv = 9,star = 3},
			shl = {cardId = 1102017,lv = 92,bklv = 9,star = 3}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 90,bklv = 8,star = 3},
			shl = {cardId = 1102002,lv = 90,bklv = 8,star = 3}
		}
	},
	[915] = {
		[1] = {
			jlr = {cardId = 1101003,lv = 92,bklv = 9,star = 3},
			shl = {cardId = 1102005,lv = 92,bklv = 9,star = 3}
		},
		[2] = {
			jlr = {cardId = 1101011,lv = 92,bklv = 9,star = 3},
			shl = {cardId = 1102017,lv = 92,bklv = 9,star = 3}
		},
		[3] = {
			jlr = {cardId = 1101007,lv = 92,bklv = 9,star = 3},
			shl = {cardId = 1102002,lv = 92,bklv = 9,star = 3}
		}
	},
	[10101] = {
		[1] = {
			jlr = {cha = "pt-1",lvId = "1",cardId = 1101001,lv = 1,bklv = 1,star = 1,mon = {id = 101,desc = "pt-1-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-1",lvId = "1",cardId = 1102015,lv = 1,bklv = 1,star = 1}
		},
		[2] = {
			jlr = {cha = "pt-1",lvId = "1",cardId = 1101002,lv = 1,bklv = 1,star = 1},
			shl = {cha = "pt-1",lvId = "1",cardId = 1102004,lv = 1,bklv = 1,star = 1}
		}
	},
	[10102] = {
		[1] = {
			jlr = {cha = "pt-1",lvId = "2",cardId = 1101001,lv = 1,bklv = 1,star = 1,mon = {id = 101,desc = "pt-1-2-jlr-loc1",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-1",lvId = "2",cardId = 1102015,lv = 1,bklv = 1,star = 1,mon = {id = 102,desc = "pt-1-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-1",lvId = "2",cardId = 1101002,lv = 1,bklv = 1,star = 1},
			shl = {cha = "pt-1",lvId = "2",cardId = 1102004,lv = 1,bklv = 1,star = 1}
		},
		[3] = {
			jlr = {cha = "pt-1",lvId = "2",cardId = 1101003,lv = 1,bklv = 1,star = 1},
			shl = {cha = "pt-1",lvId = "2",cardId = 1102005,lv = 1,bklv = 1,star = 1}
		}
	},
	[10103] = {
		[1] = {
			jlr = {cha = "pt-1",lvId = "3",cardId = 1101001,lv = 2,bklv = 1,star = 1},
			shl = {cha = "pt-1",lvId = "3",cardId = 1102015,lv = 2,bklv = 1,star = 1}
		},
		[2] = {
			jlr = {cha = "pt-1",lvId = "3",cardId = 1101002,lv = 2,bklv = 1,star = 1},
			shl = {cha = "pt-1",lvId = "3",cardId = 1102004,lv = 2,bklv = 1,star = 1}
		},
		[3] = {
			jlr = {cha = "pt-1",lvId = "3",cardId = 1101003,lv = 2,bklv = 1,star = 1,mon = {id = 207,desc = "pt-1-3-jlr-loc3",bsFac = 5,rou = 1.3}},
			shl = {cha = "pt-1",lvId = "3",cardId = 1102005,lv = 2,bklv = 1,star = 1}
		}
	},
	[10104] = {
		[1] = {
			jlr = {cha = "pt-1",lvId = "3",cardId = 1101001,lv = 2,bklv = 1,star = 1},
			shl = {cha = "pt-1",lvId = "3",cardId = 1102015,lv = 2,bklv = 1,star = 1}
		},
		[2] = {
			jlr = {cha = "pt-1",lvId = "3",cardId = 1101002,lv = 2,bklv = 1,star = 1},
			shl = {cha = "pt-1",lvId = "3",cardId = 1102004,lv = 2,bklv = 1,star = 1}
		},
		[3] = {
			jlr = {cha = "pt-1",lvId = "3",cardId = 1101003,lv = 2,bklv = 1,star = 1},
			shl = {cha = "pt-1",lvId = "3",cardId = 1102005,lv = 2,bklv = 1,star = 1}
		}
	},
	[10105] = {
		[1] = {
			jlr = {cha = "pt-1",lvId = "5",cardId = 1101001,lv = 3,bklv = 1,star = 1,mon = {id = 208,desc = "pt-1-5-jlr-loc1",bsFac = 1,rou = 0.75}},
			shl = {cha = "pt-1",lvId = "5",cardId = 1102015,lv = 3,bklv = 1,star = 1,mon = {id = 231,desc = "pt-1-5-shl-loc1",bsFac = 0.85,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-1",lvId = "5",cardId = 1101002,lv = 3,bklv = 1,star = 1,mon = {id = 213,desc = "pt-1-5-jlr-loc2",bsFac = 1,rou = 0.75}},
			shl = {cha = "pt-1",lvId = "5",cardId = 1102004,lv = 3,bklv = 1,star = 1,mon = {id = 237,desc = "pt-1-5-shl-loc2",bsFac = 0.85,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-1",lvId = "5",cardId = 1101003,lv = 3,bklv = 1,star = 1},
			shl = {cha = "pt-1",lvId = "5",cardId = 1102005,lv = 3,bklv = 1,star = 1}
		}
	},
	[10106] = {
		[1] = {
			jlr = {cha = "pt-1",lvId = "6",cardId = 1101001,lv = 3,bklv = 1,star = 1,mon = {id = 101,desc = "pt-1-6-jlr-loc1",bsFac = 0.9,rou = 0.8}},
			shl = {cha = "pt-1",lvId = "6",cardId = 1102015,lv = 3,bklv = 1,star = 1,mon = {id = 102,desc = "pt-1-6-shl-loc1",bsFac = 0.8,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-1",lvId = "6",cardId = 1101002,lv = 3,bklv = 1,star = 1,mon = {id = 103,desc = "pt-1-6-jlr-loc2",bsFac = 0.9,rou = 0.8}},
			shl = {cha = "pt-1",lvId = "6",cardId = 1102004,lv = 3,bklv = 1,star = 1,mon = {id = 104,desc = "pt-1-6-shl-loc2",bsFac = 0.8,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-1",lvId = "6",cardId = 1101003,lv = 3,bklv = 1,star = 1,mon = {id = 105,desc = "pt-1-6-jlr-loc3",bsFac = 0.9,rou = 0.8}},
			shl = {cha = "pt-1",lvId = "6",cardId = 1102005,lv = 3,bklv = 1,star = 1,mon = {id = 106,desc = "pt-1-6-shl-loc3",bsFac = 0.7,rou = 1}}
		}
	},
	[10107] = {
		[1] = {
			jlr = {cha = "pt-1",lvId = "6",cardId = 1101001,lv = 3,bklv = 1,star = 1},
			shl = {cha = "pt-1",lvId = "6",cardId = 1102015,lv = 3,bklv = 1,star = 1}
		},
		[2] = {
			jlr = {cha = "pt-1",lvId = "6",cardId = 1101002,lv = 3,bklv = 1,star = 1},
			shl = {cha = "pt-1",lvId = "6",cardId = 1102004,lv = 3,bklv = 1,star = 1}
		},
		[3] = {
			jlr = {cha = "pt-1",lvId = "6",cardId = 1101003,lv = 3,bklv = 1,star = 1},
			shl = {cha = "pt-1",lvId = "6",cardId = 1102005,lv = 3,bklv = 1,star = 1}
		}
	},
	[10108] = {
		[1] = {
			jlr = {cha = "pt-1",lvId = "8",cardId = 1101001,lv = 4,bklv = 1,star = 1,mon = {id = 212,desc = "pt-1-8-jlr-loc1",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-1",lvId = "8",cardId = 1102015,lv = 4,bklv = 1,star = 1,mon = {id = 236,desc = "pt-1-8-shl-loc1",bsFac = 0.85,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-1",lvId = "8",cardId = 1101002,lv = 4,bklv = 1,star = 1,mon = {id = 208,desc = "pt-1-8-jlr-loc2",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-1",lvId = "8",cardId = 1102005,lv = 4,bklv = 1,star = 1,mon = {id = 231,desc = "pt-1-8-shl-loc2",bsFac = 0.85,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-1",lvId = "8",cardId = 1101003,lv = 4,bklv = 1,star = 1,mon = {id = 209,desc = "pt-1-8-jlr-loc3",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-1",lvId = "8",cardId = 1102005,lv = 4,bklv = 1,star = 1,mon = {id = 232,desc = "pt-1-8-shl-loc3",bsFac = 0.7,rou = 1}}
		}
	},
	[10109] = {
		[1] = {
			jlr = {cha = "pt-1",lvId = "9",cardId = 1101001,lv = 5,bklv = 2,star = 1,mon = {id = 261,desc = "pt-1-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-1",lvId = "9",cardId = 1102015,lv = 5,bklv = 2,star = 1}
		},
		[2] = {
			jlr = {cha = "pt-1",lvId = "9",cardId = 1101002,lv = 5,bklv = 2,star = 1,mon = {id = 261,desc = "pt-1-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-1",lvId = "9",cardId = 1102005,lv = 5,bklv = 2,star = 1}
		},
		[3] = {
			jlr = {cha = "pt-1",lvId = "9",cardId = 1101003,lv = 5,bklv = 2,star = 1,mon = {id = 207,desc = "pt-1-9-jlr-loc2",bsFac = 2,rou = 1.5}},
			shl = {cha = "pt-1",lvId = "9",cardId = 1102005,lv = 5,bklv = 2,star = 1,mon = {id = 241,desc = "pt-1-9-shl-loc2",bsFac = 1.5,rou = 1.5}}
		}
	},
	[10201] = {
		[1] = {
			jlr = {cha = "pt-2",lvId = "1",cardId = 1101001,lv = 5,bklv = 2,star = 1,mon = {id = 212,desc = "pt-2-1-jlr-loc1",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "1",cardId = 1102015,lv = 5,bklv = 2,star = 1,mon = {id = 236,desc = "pt-2-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-2",lvId = "1",cardId = 1101003,lv = 5,bklv = 2,star = 1,mon = {id = 208,desc = "pt-2-1-jlr-loc2",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "1",cardId = 1102005,lv = 5,bklv = 2,star = 1,mon = {id = 231,desc = "pt-2-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-2",lvId = "1",cardId = 1101002,lv = 5,bklv = 2,star = 1,mon = {id = 209,desc = "pt-2-1-jlr-loc3",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "1",cardId = 1102004,lv = 5,bklv = 2,star = 1,mon = {id = 232,desc = "pt-2-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10202] = {
		[1] = {
			jlr = {cha = "pt-2",lvId = "2",cardId = 1101001,lv = 5,bklv = 2,star = 1,mon = {id = 201,desc = "pt-2-2-jlr-loc1",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "2",cardId = 1102015,lv = 5,bklv = 2,star = 1,mon = {id = 220,desc = "pt-2-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-2",lvId = "2",cardId = 1101003,lv = 5,bklv = 2,star = 1,mon = {id = 203,desc = "pt-2-2-jlr-loc2",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "2",cardId = 1102005,lv = 5,bklv = 2,star = 1,mon = {id = 223,desc = "pt-2-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-2",lvId = "2",cardId = 1101002,lv = 5,bklv = 2,star = 1,mon = {id = 214,desc = "pt-2-2-jlr-loc3",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "2",cardId = 1102004,lv = 5,bklv = 2,star = 1,mon = {id = 238,desc = "pt-2-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10203] = {
		[1] = {
			jlr = {cha = "pt-2",lvId = "3",cardId = 1101001,lv = 6,bklv = 2,star = 1,mon = {id = 212,desc = "pt-2-3-jlr-loc1",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "3",cardId = 1102015,lv = 6,bklv = 2,star = 1,mon = {id = 236,desc = "pt-2-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-2",lvId = "3",cardId = 1101003,lv = 6,bklv = 2,star = 1,mon = {id = 208,desc = "pt-2-3-jlr-loc2",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "3",cardId = 1102005,lv = 6,bklv = 2,star = 1,mon = {id = 231,desc = "pt-2-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-2",lvId = "3",cardId = 1101002,lv = 6,bklv = 2,star = 1,mon = {id = 209,desc = "pt-2-3-jlr-loc3",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "3",cardId = 1102004,lv = 6,bklv = 2,star = 1,mon = {id = 232,desc = "pt-2-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10204] = {
		[1] = {
			jlr = {cha = "pt-2",lvId = "4",cardId = 1101001,lv = 7,bklv = 2,star = 1,mon = {id = 215,desc = "pt-2-4-jlr-loc1",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "4",cardId = 1102015,lv = 7,bklv = 2,star = 1,mon = {id = 239,desc = "pt-2-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-2",lvId = "4",cardId = 1101003,lv = 7,bklv = 2,star = 1,mon = {id = 201,desc = "pt-2-4-jlr-loc2",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "4",cardId = 1102005,lv = 7,bklv = 2,star = 1,mon = {id = 227,desc = "pt-2-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-2",lvId = "4",cardId = 1101002,lv = 7,bklv = 2,star = 1,mon = {id = 211,desc = "pt-2-4-jlr-loc3",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "4",cardId = 1102004,lv = 7,bklv = 2,star = 1,mon = {id = 235,desc = "pt-2-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10205] = {
		[1] = {
			jlr = {cha = "pt-2",lvId = "5",cardId = 1101001,lv = 8,bklv = 2,star = 1,mon = {id = 206,desc = "pt-2-5-jlr-loc1",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "5",cardId = 1102015,lv = 8,bklv = 2,star = 1,mon = {id = 225,desc = "pt-2-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-2",lvId = "5",cardId = 1101003,lv = 8,bklv = 2,star = 1,mon = {id = 203,desc = "pt-2-5-jlr-loc2",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "5",cardId = 1102005,lv = 8,bklv = 2,star = 1,mon = {id = 223,desc = "pt-2-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-2",lvId = "5",cardId = 1101002,lv = 8,bklv = 2,star = 1,mon = {id = 212,desc = "pt-2-5-jlr-loc3",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "5",cardId = 1102004,lv = 8,bklv = 2,star = 1,mon = {id = 236,desc = "pt-2-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10206] = {
		[1] = {
			jlr = {cha = "pt-2",lvId = "6",cardId = 1101001,lv = 9,bklv = 2,star = 1,mon = {id = 209,desc = "pt-2-6-jlr-loc1",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "6",cardId = 1102015,lv = 9,bklv = 2,star = 1,mon = {id = 232,desc = "pt-2-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-2",lvId = "6",cardId = 1101003,lv = 9,bklv = 2,star = 1,mon = {id = 208,desc = "pt-2-6-jlr-loc2",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "6",cardId = 1102005,lv = 9,bklv = 2,star = 1,mon = {id = 231,desc = "pt-2-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-2",lvId = "6",cardId = 1101002,lv = 9,bklv = 2,star = 1,mon = {id = 212,desc = "pt-2-6-jlr-loc3",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "6",cardId = 1102004,lv = 9,bklv = 2,star = 1,mon = {id = 236,desc = "pt-2-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10207] = {
		[1] = {
			jlr = {cha = "pt-2",lvId = "7",cardId = 1101001,lv = 10,bklv = 2,star = 1,mon = {id = 213,desc = "pt-2-7-jlr-loc1",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "7",cardId = 1102015,lv = 10,bklv = 2,star = 1,mon = {id = 237,desc = "pt-2-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-2",lvId = "7",cardId = 1101003,lv = 10,bklv = 2,star = 1,mon = {id = 207,desc = "pt-2-7-jlr-loc2",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "7",cardId = 1102005,lv = 10,bklv = 2,star = 1,mon = {id = 221,desc = "pt-2-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-2",lvId = "7",cardId = 1101002,lv = 10,bklv = 2,star = 1,mon = {id = 211,desc = "pt-2-7-jlr-loc3",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "7",cardId = 1102004,lv = 10,bklv = 2,star = 1,mon = {id = 235,desc = "pt-2-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10208] = {
		[1] = {
			jlr = {cha = "pt-2",lvId = "8",cardId = 1101001,lv = 11,bklv = 2,star = 1,mon = {id = 209,desc = "pt-2-8-jlr-loc1",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "8",cardId = 1102015,lv = 11,bklv = 2,star = 1,mon = {id = 232,desc = "pt-2-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-2",lvId = "8",cardId = 1101003,lv = 11,bklv = 2,star = 1,mon = {id = 208,desc = "pt-2-8-jlr-loc2",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "8",cardId = 1102005,lv = 11,bklv = 2,star = 1,mon = {id = 231,desc = "pt-2-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-2",lvId = "8",cardId = 1101002,lv = 11,bklv = 2,star = 1,mon = {id = 212,desc = "pt-2-8-jlr-loc3",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "8",cardId = 1102004,lv = 11,bklv = 2,star = 1,mon = {id = 236,desc = "pt-2-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10209] = {
		[1] = {
			jlr = {cha = "pt-2",lvId = "9",cardId = 1101001,lv = 12,bklv = 2,star = 1,mon = {id = 207,desc = "pt-2-9-jlr-loc1",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "9",cardId = 1102015,lv = 12,bklv = 2,star = 1,mon = {id = 230,desc = "pt-2-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-2",lvId = "9",cardId = 1101003,lv = 12,bklv = 2,star = 1,mon = {id = 205,desc = "pt-2-9-jlr-loc2",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "9",cardId = 1102005,lv = 12,bklv = 2,star = 1,mon = {id = 229,desc = "pt-2-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-2",lvId = "9",cardId = 1101002,lv = 12,bklv = 2,star = 1,mon = {id = 210,desc = "pt-2-9-jlr-loc3",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "9",cardId = 1102004,lv = 12,bklv = 2,star = 1,mon = {id = 234,desc = "pt-2-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10301] = {
		[1] = {
			jlr = {cha = "pt-3",lvId = "1",cardId = 1101001,lv = 20,bklv = 3,star = 1,mon = {id = 212,desc = "pt-3-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "1",cardId = 1102002,lv = 20,bklv = 3,star = 1,mon = {id = 236,desc = "pt-3-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-3",lvId = "1",cardId = 1101003,lv = 20,bklv = 3,star = 1,mon = {id = 208,desc = "pt-3-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "1",cardId = 1102005,lv = 20,bklv = 3,star = 1,mon = {id = 231,desc = "pt-3-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-3",lvId = "1",cardId = 1101002,lv = 20,bklv = 3,star = 1,mon = {id = 209,desc = "pt-3-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "1",cardId = 1102004,lv = 20,bklv = 3,star = 1,mon = {id = 232,desc = "pt-3-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10302] = {
		[1] = {
			jlr = {cha = "pt-3",lvId = "2",cardId = 1101001,lv = 21,bklv = 3,star = 1,mon = {id = 201,desc = "pt-3-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "2",cardId = 1102002,lv = 21,bklv = 3,star = 1,mon = {id = 220,desc = "pt-3-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-3",lvId = "2",cardId = 1101003,lv = 21,bklv = 3,star = 1,mon = {id = 203,desc = "pt-3-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "2",cardId = 1102005,lv = 21,bklv = 3,star = 1,mon = {id = 223,desc = "pt-3-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-3",lvId = "2",cardId = 1101002,lv = 21,bklv = 3,star = 1,mon = {id = 214,desc = "pt-3-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "2",cardId = 1102004,lv = 21,bklv = 3,star = 1,mon = {id = 238,desc = "pt-3-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10303] = {
		[1] = {
			jlr = {cha = "pt-3",lvId = "3",cardId = 1101001,lv = 21,bklv = 3,star = 1,mon = {id = 212,desc = "pt-3-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "3",cardId = 1102002,lv = 21,bklv = 3,star = 1,mon = {id = 236,desc = "pt-3-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-3",lvId = "3",cardId = 1101003,lv = 21,bklv = 3,star = 1,mon = {id = 208,desc = "pt-3-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "3",cardId = 1102005,lv = 21,bklv = 3,star = 1,mon = {id = 231,desc = "pt-3-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-3",lvId = "3",cardId = 1101002,lv = 21,bklv = 3,star = 1,mon = {id = 209,desc = "pt-3-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "3",cardId = 1102004,lv = 21,bklv = 3,star = 1,mon = {id = 232,desc = "pt-3-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10304] = {
		[1] = {
			jlr = {cha = "pt-3",lvId = "4",cardId = 1101001,lv = 22,bklv = 3,star = 1,mon = {id = 215,desc = "pt-3-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "4",cardId = 1102002,lv = 22,bklv = 3,star = 1,mon = {id = 239,desc = "pt-3-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-3",lvId = "4",cardId = 1101003,lv = 22,bklv = 3,star = 1,mon = {id = 201,desc = "pt-3-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "4",cardId = 1102005,lv = 22,bklv = 3,star = 1,mon = {id = 227,desc = "pt-3-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-3",lvId = "4",cardId = 1101002,lv = 22,bklv = 3,star = 1,mon = {id = 211,desc = "pt-3-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "4",cardId = 1102004,lv = 22,bklv = 3,star = 1,mon = {id = 235,desc = "pt-3-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10305] = {
		[1] = {
			jlr = {cha = "pt-3",lvId = "5",cardId = 1101001,lv = 22,bklv = 3,star = 1,mon = {id = 206,desc = "pt-3-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "5",cardId = 1102002,lv = 22,bklv = 3,star = 1,mon = {id = 225,desc = "pt-3-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-3",lvId = "5",cardId = 1101003,lv = 22,bklv = 3,star = 1,mon = {id = 203,desc = "pt-3-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "5",cardId = 1102005,lv = 22,bklv = 3,star = 1,mon = {id = 223,desc = "pt-3-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-3",lvId = "5",cardId = 1101002,lv = 22,bklv = 3,star = 1,mon = {id = 212,desc = "pt-3-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "5",cardId = 1102004,lv = 22,bklv = 3,star = 1,mon = {id = 236,desc = "pt-3-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10306] = {
		[1] = {
			jlr = {cha = "pt-3",lvId = "6",cardId = 1101001,lv = 23,bklv = 3,star = 1,mon = {id = 209,desc = "pt-3-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "6",cardId = 1102002,lv = 23,bklv = 3,star = 1,mon = {id = 232,desc = "pt-3-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-3",lvId = "6",cardId = 1101003,lv = 23,bklv = 3,star = 1,mon = {id = 208,desc = "pt-3-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "6",cardId = 1102005,lv = 23,bklv = 3,star = 1,mon = {id = 231,desc = "pt-3-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-3",lvId = "6",cardId = 1101002,lv = 23,bklv = 3,star = 1,mon = {id = 212,desc = "pt-3-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "6",cardId = 1102004,lv = 23,bklv = 3,star = 1,mon = {id = 236,desc = "pt-3-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10307] = {
		[1] = {
			jlr = {cha = "pt-3",lvId = "7",cardId = 1101001,lv = 23,bklv = 3,star = 1,mon = {id = 213,desc = "pt-3-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "7",cardId = 1102002,lv = 23,bklv = 3,star = 1,mon = {id = 237,desc = "pt-3-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-3",lvId = "7",cardId = 1101003,lv = 23,bklv = 3,star = 1,mon = {id = 207,desc = "pt-3-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "7",cardId = 1102005,lv = 23,bklv = 3,star = 1,mon = {id = 221,desc = "pt-3-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-3",lvId = "7",cardId = 1101002,lv = 23,bklv = 3,star = 1,mon = {id = 211,desc = "pt-3-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "7",cardId = 1102004,lv = 23,bklv = 3,star = 1,mon = {id = 235,desc = "pt-3-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10308] = {
		[1] = {
			jlr = {cha = "pt-3",lvId = "8",cardId = 1101001,lv = 24,bklv = 3,star = 1,mon = {id = 206,desc = "pt-3-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "8",cardId = 1102002,lv = 24,bklv = 3,star = 1,mon = {id = 225,desc = "pt-3-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-3",lvId = "8",cardId = 1101003,lv = 24,bklv = 3,star = 1,mon = {id = 205,desc = "pt-3-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "8",cardId = 1102005,lv = 24,bklv = 3,star = 1,mon = {id = 229,desc = "pt-3-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-3",lvId = "8",cardId = 1101002,lv = 24,bklv = 3,star = 1,mon = {id = 207,desc = "pt-3-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "8",cardId = 1102004,lv = 24,bklv = 3,star = 1,mon = {id = 228,desc = "pt-3-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10309] = {
		[1] = {
			jlr = {cha = "pt-3",lvId = "9",cardId = 1101001,lv = 24,bklv = 3,star = 1,mon = {id = 212,desc = "pt-3-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "9",cardId = 1102002,lv = 24,bklv = 3,star = 1,mon = {id = 236,desc = "pt-3-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-3",lvId = "9",cardId = 1101003,lv = 24,bklv = 3,star = 1,mon = {id = 208,desc = "pt-3-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "9",cardId = 1102005,lv = 24,bklv = 3,star = 1,mon = {id = 231,desc = "pt-3-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-3",lvId = "9",cardId = 1101002,lv = 24,bklv = 3,star = 1,mon = {id = 209,desc = "pt-3-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "9",cardId = 1102004,lv = 24,bklv = 3,star = 1,mon = {id = 232,desc = "pt-3-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10401] = {
		[1] = {
			jlr = {cha = "pt-4",lvId = "1",cardId = 1101001,lv = 30,bklv = 4,star = 2,mon = {id = 212,desc = "pt-4-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "1",cardId = 1102002,lv = 30,bklv = 4,star = 2,mon = {id = 236,desc = "pt-4-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-4",lvId = "1",cardId = 1101003,lv = 30,bklv = 4,star = 2,mon = {id = 208,desc = "pt-4-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "1",cardId = 1102005,lv = 30,bklv = 4,star = 2,mon = {id = 231,desc = "pt-4-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-4",lvId = "1",cardId = 1101014,lv = 30,bklv = 4,star = 2,mon = {id = 213,desc = "pt-4-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "1",cardId = 1102020,lv = 30,bklv = 4,star = 2,mon = {id = 237,desc = "pt-4-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10402] = {
		[1] = {
			jlr = {cha = "pt-4",lvId = "2",cardId = 1101001,lv = 31,bklv = 4,star = 2,mon = {id = 201,desc = "pt-4-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "2",cardId = 1102002,lv = 31,bklv = 4,star = 2,mon = {id = 220,desc = "pt-4-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-4",lvId = "2",cardId = 1101003,lv = 31,bklv = 4,star = 2,mon = {id = 203,desc = "pt-4-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "2",cardId = 1102005,lv = 31,bklv = 4,star = 2,mon = {id = 223,desc = "pt-4-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-4",lvId = "2",cardId = 1101014,lv = 31,bklv = 4,star = 2,mon = {id = 214,desc = "pt-4-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "2",cardId = 1102020,lv = 31,bklv = 4,star = 2,mon = {id = 238,desc = "pt-4-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10403] = {
		[1] = {
			jlr = {cha = "pt-4",lvId = "3",cardId = 1101001,lv = 31,bklv = 4,star = 2,mon = {id = 212,desc = "pt-4-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "3",cardId = 1102002,lv = 31,bklv = 4,star = 2,mon = {id = 236,desc = "pt-4-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-4",lvId = "3",cardId = 1101003,lv = 31,bklv = 4,star = 2,mon = {id = 208,desc = "pt-4-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "3",cardId = 1102005,lv = 31,bklv = 4,star = 2,mon = {id = 231,desc = "pt-4-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-4",lvId = "3",cardId = 1101014,lv = 31,bklv = 4,star = 2,mon = {id = 209,desc = "pt-4-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "3",cardId = 1102020,lv = 31,bklv = 4,star = 2,mon = {id = 232,desc = "pt-4-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10404] = {
		[1] = {
			jlr = {cha = "pt-4",lvId = "4",cardId = 1101001,lv = 32,bklv = 4,star = 2,mon = {id = 215,desc = "pt-4-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "4",cardId = 1102002,lv = 32,bklv = 4,star = 2,mon = {id = 239,desc = "pt-4-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-4",lvId = "4",cardId = 1101003,lv = 32,bklv = 4,star = 2,mon = {id = 201,desc = "pt-4-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "4",cardId = 1102005,lv = 32,bklv = 4,star = 2,mon = {id = 227,desc = "pt-4-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-4",lvId = "4",cardId = 1101014,lv = 32,bklv = 4,star = 2,mon = {id = 211,desc = "pt-4-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "4",cardId = 1102020,lv = 32,bklv = 4,star = 2,mon = {id = 235,desc = "pt-4-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10405] = {
		[1] = {
			jlr = {cha = "pt-4",lvId = "5",cardId = 1101001,lv = 32,bklv = 4,star = 2,mon = {id = 206,desc = "pt-4-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "5",cardId = 1102002,lv = 32,bklv = 4,star = 2,mon = {id = 225,desc = "pt-4-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-4",lvId = "5",cardId = 1101003,lv = 32,bklv = 4,star = 2,mon = {id = 203,desc = "pt-4-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "5",cardId = 1102005,lv = 32,bklv = 4,star = 2,mon = {id = 223,desc = "pt-4-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-4",lvId = "5",cardId = 1101014,lv = 32,bklv = 4,star = 2,mon = {id = 212,desc = "pt-4-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "5",cardId = 1102020,lv = 32,bklv = 4,star = 2,mon = {id = 236,desc = "pt-4-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10406] = {
		[1] = {
			jlr = {cha = "pt-4",lvId = "6",cardId = 1101001,lv = 33,bklv = 4,star = 2,mon = {id = 209,desc = "pt-4-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "6",cardId = 1102002,lv = 33,bklv = 4,star = 2,mon = {id = 232,desc = "pt-4-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-4",lvId = "6",cardId = 1101003,lv = 33,bklv = 4,star = 2,mon = {id = 208,desc = "pt-4-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "6",cardId = 1102005,lv = 33,bklv = 4,star = 2,mon = {id = 231,desc = "pt-4-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-4",lvId = "6",cardId = 1101014,lv = 33,bklv = 4,star = 2,mon = {id = 212,desc = "pt-4-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "6",cardId = 1102020,lv = 33,bklv = 4,star = 2,mon = {id = 236,desc = "pt-4-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10407] = {
		[1] = {
			jlr = {cha = "pt-4",lvId = "7",cardId = 1101001,lv = 33,bklv = 4,star = 2,mon = {id = 207,desc = "pt-4-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "7",cardId = 1102002,lv = 33,bklv = 4,star = 2,mon = {id = 227,desc = "pt-4-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-4",lvId = "7",cardId = 1101003,lv = 33,bklv = 4,star = 2,mon = {id = 207,desc = "pt-4-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "7",cardId = 1102005,lv = 33,bklv = 4,star = 2,mon = {id = 221,desc = "pt-4-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-4",lvId = "7",cardId = 1101014,lv = 33,bklv = 4,star = 2,mon = {id = 211,desc = "pt-4-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "7",cardId = 1102020,lv = 33,bklv = 4,star = 2,mon = {id = 235,desc = "pt-4-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10408] = {
		[1] = {
			jlr = {cha = "pt-4",lvId = "8",cardId = 1101001,lv = 34,bklv = 4,star = 2,mon = {id = 207,desc = "pt-4-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "8",cardId = 1102002,lv = 34,bklv = 4,star = 2,mon = {id = 230,desc = "pt-4-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-4",lvId = "8",cardId = 1101003,lv = 34,bklv = 4,star = 2,mon = {id = 205,desc = "pt-4-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "8",cardId = 1102005,lv = 34,bklv = 4,star = 2,mon = {id = 229,desc = "pt-4-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-4",lvId = "8",cardId = 1101014,lv = 34,bklv = 4,star = 2,mon = {id = 210,desc = "pt-4-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "8",cardId = 1102020,lv = 34,bklv = 4,star = 2,mon = {id = 234,desc = "pt-4-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10409] = {
		[1] = {
			jlr = {cha = "pt-4",lvId = "9",cardId = 1101001,lv = 34,bklv = 4,star = 2,mon = {id = 212,desc = "pt-4-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "9",cardId = 1102002,lv = 34,bklv = 4,star = 2,mon = {id = 236,desc = "pt-4-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-4",lvId = "9",cardId = 1101003,lv = 34,bklv = 4,star = 2,mon = {id = 208,desc = "pt-4-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "9",cardId = 1102005,lv = 34,bklv = 4,star = 2,mon = {id = 231,desc = "pt-4-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-4",lvId = "9",cardId = 1101014,lv = 34,bklv = 4,star = 2,mon = {id = 209,desc = "pt-4-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "9",cardId = 1102020,lv = 34,bklv = 4,star = 2,mon = {id = 232,desc = "pt-4-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10501] = {
		[1] = {
			jlr = {cha = "pt-5",lvId = "1",cardId = 1101007,lv = 40,bklv = 5,star = 2,mon = {id = 212,desc = "pt-5-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "1",cardId = 1102002,lv = 40,bklv = 5,star = 2,mon = {id = 236,desc = "pt-5-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-5",lvId = "1",cardId = 1101003,lv = 40,bklv = 5,star = 2,mon = {id = 208,desc = "pt-5-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "1",cardId = 1102005,lv = 40,bklv = 5,star = 2,mon = {id = 231,desc = "pt-5-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-5",lvId = "1",cardId = 1101014,lv = 40,bklv = 5,star = 2,mon = {id = 209,desc = "pt-5-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "1",cardId = 1102020,lv = 40,bklv = 5,star = 2,mon = {id = 232,desc = "pt-5-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10502] = {
		[1] = {
			jlr = {cha = "pt-5",lvId = "2",cardId = 1101007,lv = 40,bklv = 5,star = 2,mon = {id = 201,desc = "pt-5-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "2",cardId = 1102002,lv = 40,bklv = 5,star = 2,mon = {id = 220,desc = "pt-5-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-5",lvId = "2",cardId = 1101003,lv = 40,bklv = 5,star = 2,mon = {id = 203,desc = "pt-5-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "2",cardId = 1102005,lv = 40,bklv = 5,star = 2,mon = {id = 223,desc = "pt-5-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-5",lvId = "2",cardId = 1101014,lv = 40,bklv = 5,star = 2,mon = {id = 214,desc = "pt-5-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "2",cardId = 1102020,lv = 40,bklv = 5,star = 2,mon = {id = 238,desc = "pt-5-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10503] = {
		[1] = {
			jlr = {cha = "pt-5",lvId = "3",cardId = 1101007,lv = 40,bklv = 5,star = 2,mon = {id = 212,desc = "pt-5-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "3",cardId = 1102002,lv = 40,bklv = 5,star = 2,mon = {id = 236,desc = "pt-5-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-5",lvId = "3",cardId = 1101003,lv = 40,bklv = 5,star = 2,mon = {id = 208,desc = "pt-5-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "3",cardId = 1102005,lv = 40,bklv = 5,star = 2,mon = {id = 231,desc = "pt-5-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-5",lvId = "3",cardId = 1101014,lv = 40,bklv = 5,star = 2,mon = {id = 209,desc = "pt-5-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "3",cardId = 1102020,lv = 40,bklv = 5,star = 2,mon = {id = 232,desc = "pt-5-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10504] = {
		[1] = {
			jlr = {cha = "pt-5",lvId = "4",cardId = 1101007,lv = 41,bklv = 5,star = 2,mon = {id = 215,desc = "pt-5-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "4",cardId = 1102002,lv = 41,bklv = 5,star = 2,mon = {id = 239,desc = "pt-5-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-5",lvId = "4",cardId = 1101003,lv = 41,bklv = 5,star = 2,mon = {id = 201,desc = "pt-5-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "4",cardId = 1102005,lv = 41,bklv = 5,star = 2,mon = {id = 227,desc = "pt-5-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-5",lvId = "4",cardId = 1101014,lv = 41,bklv = 5,star = 2,mon = {id = 211,desc = "pt-5-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "4",cardId = 1102020,lv = 41,bklv = 5,star = 2,mon = {id = 235,desc = "pt-5-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10505] = {
		[1] = {
			jlr = {cha = "pt-5",lvId = "5",cardId = 1101007,lv = 41,bklv = 5,star = 2,mon = {id = 206,desc = "pt-5-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "5",cardId = 1102002,lv = 41,bklv = 5,star = 2,mon = {id = 225,desc = "pt-5-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-5",lvId = "5",cardId = 1101003,lv = 41,bklv = 5,star = 2,mon = {id = 203,desc = "pt-5-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "5",cardId = 1102005,lv = 41,bklv = 5,star = 2,mon = {id = 223,desc = "pt-5-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-5",lvId = "5",cardId = 1101014,lv = 41,bklv = 5,star = 2,mon = {id = 212,desc = "pt-5-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "5",cardId = 1102020,lv = 41,bklv = 5,star = 2,mon = {id = 236,desc = "pt-5-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10506] = {
		[1] = {
			jlr = {cha = "pt-5",lvId = "6",cardId = 1101007,lv = 41,bklv = 5,star = 2,mon = {id = 209,desc = "pt-5-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "6",cardId = 1102002,lv = 41,bklv = 5,star = 2,mon = {id = 232,desc = "pt-5-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-5",lvId = "6",cardId = 1101003,lv = 41,bklv = 5,star = 2,mon = {id = 208,desc = "pt-5-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "6",cardId = 1102005,lv = 41,bklv = 5,star = 2,mon = {id = 231,desc = "pt-5-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-5",lvId = "6",cardId = 1101014,lv = 41,bklv = 5,star = 2,mon = {id = 212,desc = "pt-5-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "6",cardId = 1102020,lv = 41,bklv = 5,star = 2,mon = {id = 236,desc = "pt-5-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10507] = {
		[1] = {
			jlr = {cha = "pt-5",lvId = "7",cardId = 1101007,lv = 42,bklv = 5,star = 2,mon = {id = 213,desc = "pt-5-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "7",cardId = 1102002,lv = 42,bklv = 5,star = 2,mon = {id = 237,desc = "pt-5-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-5",lvId = "7",cardId = 1101003,lv = 42,bklv = 5,star = 2,mon = {id = 207,desc = "pt-5-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "7",cardId = 1102005,lv = 42,bklv = 5,star = 2,mon = {id = 221,desc = "pt-5-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-5",lvId = "7",cardId = 1101014,lv = 42,bklv = 5,star = 2,mon = {id = 211,desc = "pt-5-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "7",cardId = 1102020,lv = 42,bklv = 5,star = 2,mon = {id = 235,desc = "pt-5-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10508] = {
		[1] = {
			jlr = {cha = "pt-5",lvId = "8",cardId = 1101007,lv = 42,bklv = 5,star = 2,mon = {id = 206,desc = "pt-5-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "8",cardId = 1102002,lv = 42,bklv = 5,star = 2,mon = {id = 225,desc = "pt-5-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-5",lvId = "8",cardId = 1101003,lv = 42,bklv = 5,star = 2,mon = {id = 205,desc = "pt-5-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "8",cardId = 1102005,lv = 42,bklv = 5,star = 2,mon = {id = 229,desc = "pt-5-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-5",lvId = "8",cardId = 1101014,lv = 42,bklv = 5,star = 2,mon = {id = 207,desc = "pt-5-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "8",cardId = 1102020,lv = 42,bklv = 5,star = 2,mon = {id = 228,desc = "pt-5-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10509] = {
		[1] = {
			jlr = {cha = "pt-5",lvId = "9",cardId = 1101007,lv = 42,bklv = 5,star = 2,mon = {id = 212,desc = "pt-5-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "9",cardId = 1102002,lv = 42,bklv = 5,star = 2,mon = {id = 236,desc = "pt-5-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-5",lvId = "9",cardId = 1101003,lv = 42,bklv = 5,star = 2,mon = {id = 208,desc = "pt-5-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "9",cardId = 1102005,lv = 42,bklv = 5,star = 2,mon = {id = 231,desc = "pt-5-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-5",lvId = "9",cardId = 1101014,lv = 42,bklv = 5,star = 2,mon = {id = 209,desc = "pt-5-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "9",cardId = 1102020,lv = 42,bklv = 5,star = 2,mon = {id = 232,desc = "pt-5-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10510] = {
		[1] = {
			jlr = {cha = "pt-5",lvId = "10",cardId = 1101007,lv = 43,bklv = 5,star = 2,mon = {id = 201,desc = "pt-5-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "10",cardId = 1102002,lv = 43,bklv = 5,star = 2,mon = {id = 220,desc = "pt-5-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-5",lvId = "10",cardId = 1101003,lv = 43,bklv = 5,star = 2,mon = {id = 203,desc = "pt-5-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "10",cardId = 1102005,lv = 43,bklv = 5,star = 2,mon = {id = 223,desc = "pt-5-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-5",lvId = "10",cardId = 1101014,lv = 43,bklv = 5,star = 2,mon = {id = 214,desc = "pt-5-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "10",cardId = 1102020,lv = 43,bklv = 5,star = 2,mon = {id = 238,desc = "pt-5-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10511] = {
		[1] = {
			jlr = {cha = "pt-5",lvId = "11",cardId = 1101007,lv = 43,bklv = 5,star = 2,mon = {id = 212,desc = "pt-5-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "11",cardId = 1102002,lv = 43,bklv = 5,star = 2,mon = {id = 236,desc = "pt-5-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-5",lvId = "11",cardId = 1101003,lv = 43,bklv = 5,star = 2,mon = {id = 208,desc = "pt-5-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "11",cardId = 1102005,lv = 43,bklv = 5,star = 2,mon = {id = 231,desc = "pt-5-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-5",lvId = "11",cardId = 1101014,lv = 43,bklv = 5,star = 2,mon = {id = 209,desc = "pt-5-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "11",cardId = 1102020,lv = 43,bklv = 5,star = 2,mon = {id = 232,desc = "pt-5-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10512] = {
		[1] = {
			jlr = {cha = "pt-5",lvId = "12",cardId = 1101007,lv = 43,bklv = 5,star = 2,mon = {id = 215,desc = "pt-5-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "12",cardId = 1102002,lv = 43,bklv = 5,star = 2,mon = {id = 239,desc = "pt-5-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-5",lvId = "12",cardId = 1101003,lv = 43,bklv = 5,star = 2,mon = {id = 201,desc = "pt-5-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "12",cardId = 1102005,lv = 43,bklv = 5,star = 2,mon = {id = 227,desc = "pt-5-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-5",lvId = "12",cardId = 1101014,lv = 43,bklv = 5,star = 2,mon = {id = 211,desc = "pt-5-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "12",cardId = 1102020,lv = 43,bklv = 5,star = 2,mon = {id = 235,desc = "pt-5-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10513] = {
		[1] = {
			jlr = {cha = "pt-5",lvId = "13",cardId = 1101007,lv = 44,bklv = 5,star = 2,mon = {id = 209,desc = "pt-5-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "13",cardId = 1102002,lv = 44,bklv = 5,star = 2,mon = {id = 232,desc = "pt-5-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-5",lvId = "13",cardId = 1101003,lv = 44,bklv = 5,star = 2,mon = {id = 208,desc = "pt-5-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "13",cardId = 1102005,lv = 44,bklv = 5,star = 2,mon = {id = 231,desc = "pt-5-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-5",lvId = "13",cardId = 1101014,lv = 44,bklv = 5,star = 2,mon = {id = 212,desc = "pt-5-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "13",cardId = 1102020,lv = 44,bklv = 5,star = 2,mon = {id = 236,desc = "pt-5-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10514] = {
		[1] = {
			jlr = {cha = "pt-5",lvId = "14",cardId = 1101007,lv = 44,bklv = 5,star = 2,mon = {id = 213,desc = "pt-5-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "14",cardId = 1102002,lv = 44,bklv = 5,star = 2,mon = {id = 237,desc = "pt-5-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-5",lvId = "14",cardId = 1101003,lv = 44,bklv = 5,star = 2,mon = {id = 207,desc = "pt-5-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "14",cardId = 1102005,lv = 44,bklv = 5,star = 2,mon = {id = 221,desc = "pt-5-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-5",lvId = "14",cardId = 1101014,lv = 44,bklv = 5,star = 2,mon = {id = 211,desc = "pt-5-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "14",cardId = 1102020,lv = 44,bklv = 5,star = 2,mon = {id = 235,desc = "pt-5-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10515] = {
		[1] = {
			jlr = {cha = "pt-5",lvId = "15",cardId = 1101007,lv = 44,bklv = 5,star = 2,mon = {id = 205,desc = "pt-5-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "15",cardId = 1102002,lv = 44,bklv = 5,star = 2,mon = {id = 219,desc = "pt-5-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-5",lvId = "15",cardId = 1101003,lv = 44,bklv = 5,star = 2,mon = {id = 204,desc = "pt-5-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "15",cardId = 1102005,lv = 44,bklv = 5,star = 2,mon = {id = 224,desc = "pt-5-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-5",lvId = "15",cardId = 1101014,lv = 44,bklv = 5,star = 2,mon = {id = 207,desc = "pt-5-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "15",cardId = 1102020,lv = 44,bklv = 5,star = 2,mon = {id = 228,desc = "pt-5-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10601] = {
		[1] = {
			jlr = {cha = "pt-6",lvId = "1",cardId = 1101007,lv = 50,bklv = 6,star = 2,mon = {id = 212,desc = "pt-6-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "1",cardId = 1102012,lv = 50,bklv = 6,star = 2,mon = {id = 236,desc = "pt-6-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-6",lvId = "1",cardId = 1101003,lv = 50,bklv = 6,star = 2,mon = {id = 208,desc = "pt-6-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "1",cardId = 1102005,lv = 50,bklv = 6,star = 2,mon = {id = 231,desc = "pt-6-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-6",lvId = "1",cardId = 1101014,lv = 50,bklv = 6,star = 2,mon = {id = 213,desc = "pt-6-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "1",cardId = 1102020,lv = 50,bklv = 6,star = 2,mon = {id = 237,desc = "pt-6-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10602] = {
		[1] = {
			jlr = {cha = "pt-6",lvId = "2",cardId = 1101007,lv = 50,bklv = 6,star = 2,mon = {id = 201,desc = "pt-6-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "2",cardId = 1102012,lv = 50,bklv = 6,star = 2,mon = {id = 220,desc = "pt-6-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-6",lvId = "2",cardId = 1101003,lv = 50,bklv = 6,star = 2,mon = {id = 203,desc = "pt-6-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "2",cardId = 1102005,lv = 50,bklv = 6,star = 2,mon = {id = 223,desc = "pt-6-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-6",lvId = "2",cardId = 1101014,lv = 50,bklv = 6,star = 2,mon = {id = 214,desc = "pt-6-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "2",cardId = 1102020,lv = 50,bklv = 6,star = 2,mon = {id = 238,desc = "pt-6-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10603] = {
		[1] = {
			jlr = {cha = "pt-6",lvId = "3",cardId = 1101007,lv = 50,bklv = 6,star = 2,mon = {id = 212,desc = "pt-6-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "3",cardId = 1102012,lv = 50,bklv = 6,star = 2,mon = {id = 236,desc = "pt-6-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-6",lvId = "3",cardId = 1101003,lv = 50,bklv = 6,star = 2,mon = {id = 208,desc = "pt-6-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "3",cardId = 1102005,lv = 50,bklv = 6,star = 2,mon = {id = 231,desc = "pt-6-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-6",lvId = "3",cardId = 1101014,lv = 50,bklv = 6,star = 2,mon = {id = 209,desc = "pt-6-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "3",cardId = 1102020,lv = 50,bklv = 6,star = 2,mon = {id = 232,desc = "pt-6-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10604] = {
		[1] = {
			jlr = {cha = "pt-6",lvId = "4",cardId = 1101007,lv = 51,bklv = 6,star = 2,mon = {id = 215,desc = "pt-6-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "4",cardId = 1102012,lv = 51,bklv = 6,star = 2,mon = {id = 239,desc = "pt-6-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-6",lvId = "4",cardId = 1101003,lv = 51,bklv = 6,star = 2,mon = {id = 201,desc = "pt-6-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "4",cardId = 1102005,lv = 51,bklv = 6,star = 2,mon = {id = 227,desc = "pt-6-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-6",lvId = "4",cardId = 1101014,lv = 51,bklv = 6,star = 2,mon = {id = 211,desc = "pt-6-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "4",cardId = 1102020,lv = 51,bklv = 6,star = 2,mon = {id = 235,desc = "pt-6-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10605] = {
		[1] = {
			jlr = {cha = "pt-6",lvId = "5",cardId = 1101007,lv = 51,bklv = 6,star = 2,mon = {id = 206,desc = "pt-6-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "5",cardId = 1102012,lv = 51,bklv = 6,star = 2,mon = {id = 225,desc = "pt-6-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-6",lvId = "5",cardId = 1101003,lv = 51,bklv = 6,star = 2,mon = {id = 203,desc = "pt-6-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "5",cardId = 1102005,lv = 51,bklv = 6,star = 2,mon = {id = 223,desc = "pt-6-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-6",lvId = "5",cardId = 1101014,lv = 51,bklv = 6,star = 2,mon = {id = 212,desc = "pt-6-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "5",cardId = 1102020,lv = 51,bklv = 6,star = 2,mon = {id = 236,desc = "pt-6-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10606] = {
		[1] = {
			jlr = {cha = "pt-6",lvId = "6",cardId = 1101007,lv = 51,bklv = 6,star = 2,mon = {id = 209,desc = "pt-6-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "6",cardId = 1102012,lv = 51,bklv = 6,star = 2,mon = {id = 232,desc = "pt-6-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-6",lvId = "6",cardId = 1101003,lv = 51,bklv = 6,star = 2,mon = {id = 208,desc = "pt-6-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "6",cardId = 1102005,lv = 51,bklv = 6,star = 2,mon = {id = 231,desc = "pt-6-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-6",lvId = "6",cardId = 1101014,lv = 51,bklv = 6,star = 2,mon = {id = 212,desc = "pt-6-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "6",cardId = 1102020,lv = 51,bklv = 6,star = 2,mon = {id = 236,desc = "pt-6-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10607] = {
		[1] = {
			jlr = {cha = "pt-6",lvId = "7",cardId = 1101007,lv = 52,bklv = 6,star = 2,mon = {id = 207,desc = "pt-6-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "7",cardId = 1102012,lv = 52,bklv = 6,star = 2,mon = {id = 227,desc = "pt-6-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-6",lvId = "7",cardId = 1101003,lv = 52,bklv = 6,star = 2,mon = {id = 207,desc = "pt-6-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "7",cardId = 1102005,lv = 52,bklv = 6,star = 2,mon = {id = 221,desc = "pt-6-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-6",lvId = "7",cardId = 1101014,lv = 52,bklv = 6,star = 2,mon = {id = 211,desc = "pt-6-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "7",cardId = 1102020,lv = 52,bklv = 6,star = 2,mon = {id = 235,desc = "pt-6-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10608] = {
		[1] = {
			jlr = {cha = "pt-6",lvId = "8",cardId = 1101007,lv = 52,bklv = 6,star = 2,mon = {id = 207,desc = "pt-6-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "8",cardId = 1102012,lv = 52,bklv = 6,star = 2,mon = {id = 230,desc = "pt-6-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-6",lvId = "8",cardId = 1101003,lv = 52,bklv = 6,star = 2,mon = {id = 205,desc = "pt-6-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "8",cardId = 1102005,lv = 52,bklv = 6,star = 2,mon = {id = 229,desc = "pt-6-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-6",lvId = "8",cardId = 1101014,lv = 52,bklv = 6,star = 2,mon = {id = 210,desc = "pt-6-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "8",cardId = 1102020,lv = 52,bklv = 6,star = 2,mon = {id = 234,desc = "pt-6-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10609] = {
		[1] = {
			jlr = {cha = "pt-6",lvId = "9",cardId = 1101007,lv = 52,bklv = 6,star = 2,mon = {id = 212,desc = "pt-6-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "9",cardId = 1102012,lv = 52,bklv = 6,star = 2,mon = {id = 236,desc = "pt-6-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-6",lvId = "9",cardId = 1101003,lv = 52,bklv = 6,star = 2,mon = {id = 208,desc = "pt-6-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "9",cardId = 1102005,lv = 52,bklv = 6,star = 2,mon = {id = 231,desc = "pt-6-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-6",lvId = "9",cardId = 1101014,lv = 52,bklv = 6,star = 2,mon = {id = 209,desc = "pt-6-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "9",cardId = 1102020,lv = 52,bklv = 6,star = 2,mon = {id = 232,desc = "pt-6-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10610] = {
		[1] = {
			jlr = {cha = "pt-6",lvId = "10",cardId = 1101007,lv = 53,bklv = 6,star = 2,mon = {id = 201,desc = "pt-6-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "10",cardId = 1102012,lv = 53,bklv = 6,star = 2,mon = {id = 220,desc = "pt-6-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-6",lvId = "10",cardId = 1101003,lv = 53,bklv = 6,star = 2,mon = {id = 203,desc = "pt-6-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "10",cardId = 1102005,lv = 53,bklv = 6,star = 2,mon = {id = 223,desc = "pt-6-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-6",lvId = "10",cardId = 1101014,lv = 53,bklv = 6,star = 2,mon = {id = 214,desc = "pt-6-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "10",cardId = 1102020,lv = 53,bklv = 6,star = 2,mon = {id = 238,desc = "pt-6-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10611] = {
		[1] = {
			jlr = {cha = "pt-6",lvId = "11",cardId = 1101007,lv = 53,bklv = 6,star = 2,mon = {id = 212,desc = "pt-6-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "11",cardId = 1102012,lv = 53,bklv = 6,star = 2,mon = {id = 236,desc = "pt-6-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-6",lvId = "11",cardId = 1101003,lv = 53,bklv = 6,star = 2,mon = {id = 208,desc = "pt-6-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "11",cardId = 1102005,lv = 53,bklv = 6,star = 2,mon = {id = 231,desc = "pt-6-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-6",lvId = "11",cardId = 1101014,lv = 53,bklv = 6,star = 2,mon = {id = 209,desc = "pt-6-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "11",cardId = 1102020,lv = 53,bklv = 6,star = 2,mon = {id = 232,desc = "pt-6-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10612] = {
		[1] = {
			jlr = {cha = "pt-6",lvId = "12",cardId = 1101007,lv = 53,bklv = 6,star = 2,mon = {id = 215,desc = "pt-6-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "12",cardId = 1102012,lv = 53,bklv = 6,star = 2,mon = {id = 239,desc = "pt-6-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-6",lvId = "12",cardId = 1101003,lv = 53,bklv = 6,star = 2,mon = {id = 201,desc = "pt-6-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "12",cardId = 1102005,lv = 53,bklv = 6,star = 2,mon = {id = 227,desc = "pt-6-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-6",lvId = "12",cardId = 1101014,lv = 53,bklv = 6,star = 2,mon = {id = 211,desc = "pt-6-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "12",cardId = 1102020,lv = 53,bklv = 6,star = 2,mon = {id = 235,desc = "pt-6-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10613] = {
		[1] = {
			jlr = {cha = "pt-6",lvId = "13",cardId = 1101007,lv = 54,bklv = 6,star = 2,mon = {id = 209,desc = "pt-6-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "13",cardId = 1102012,lv = 54,bklv = 6,star = 2,mon = {id = 232,desc = "pt-6-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-6",lvId = "13",cardId = 1101003,lv = 54,bklv = 6,star = 2,mon = {id = 208,desc = "pt-6-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "13",cardId = 1102005,lv = 54,bklv = 6,star = 2,mon = {id = 231,desc = "pt-6-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-6",lvId = "13",cardId = 1101014,lv = 54,bklv = 6,star = 2,mon = {id = 212,desc = "pt-6-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "13",cardId = 1102020,lv = 54,bklv = 6,star = 2,mon = {id = 236,desc = "pt-6-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10614] = {
		[1] = {
			jlr = {cha = "pt-6",lvId = "14",cardId = 1101007,lv = 54,bklv = 6,star = 2,mon = {id = 207,desc = "pt-6-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "14",cardId = 1102012,lv = 54,bklv = 6,star = 2,mon = {id = 227,desc = "pt-6-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-6",lvId = "14",cardId = 1101003,lv = 54,bklv = 6,star = 2,mon = {id = 207,desc = "pt-6-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "14",cardId = 1102005,lv = 54,bklv = 6,star = 2,mon = {id = 221,desc = "pt-6-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-6",lvId = "14",cardId = 1101014,lv = 54,bklv = 6,star = 2,mon = {id = 211,desc = "pt-6-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "14",cardId = 1102020,lv = 54,bklv = 6,star = 2,mon = {id = 235,desc = "pt-6-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10615] = {
		[1] = {
			jlr = {cha = "pt-6",lvId = "15",cardId = 1101007,lv = 54,bklv = 6,star = 2,mon = {id = 205,desc = "pt-6-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "15",cardId = 1102012,lv = 54,bklv = 6,star = 2,mon = {id = 219,desc = "pt-6-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-6",lvId = "15",cardId = 1101003,lv = 54,bklv = 6,star = 2,mon = {id = 204,desc = "pt-6-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "15",cardId = 1102005,lv = 54,bklv = 6,star = 2,mon = {id = 224,desc = "pt-6-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-6",lvId = "15",cardId = 1101014,lv = 54,bklv = 6,star = 2,mon = {id = 207,desc = "pt-6-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "15",cardId = 1102020,lv = 54,bklv = 6,star = 2,mon = {id = 228,desc = "pt-6-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10701] = {
		[1] = {
			jlr = {cha = "pt-7",lvId = "1",cardId = 1101007,lv = 60,bklv = 7,star = 2,mon = {id = 212,desc = "pt-7-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",lvId = "1",cardId = 1102012,lv = 60,bklv = 7,star = 2,mon = {id = 236,desc = "pt-7-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-7",lvId = "1",cardId = 1101003,lv = 60,bklv = 7,star = 2,mon = {id = 208,desc = "pt-7-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",lvId = "1",cardId = 1102005,lv = 60,bklv = 7,star = 2,mon = {id = 231,desc = "pt-7-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-7",lvId = "1",cardId = 1101014,lv = 60,bklv = 7,star = 2,mon = {id = 213,desc = "pt-7-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",lvId = "1",cardId = 1102020,lv = 60,bklv = 7,star = 2,mon = {id = 237,desc = "pt-7-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10702] = {
		[1] = {
			jlr = {cha = "pt-7",lvId = "2",cardId = 1101007,lv = 60,bklv = 7,star = 2,mon = {id = 201,desc = "pt-7-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",lvId = "2",cardId = 1102012,lv = 60,bklv = 7,star = 2,mon = {id = 220,desc = "pt-7-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-7",lvId = "2",cardId = 1101003,lv = 60,bklv = 7,star = 2,mon = {id = 203,desc = "pt-7-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",lvId = "2",cardId = 1102005,lv = 60,bklv = 7,star = 2,mon = {id = 223,desc = "pt-7-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-7",lvId = "2",cardId = 1101014,lv = 60,bklv = 7,star = 2,mon = {id = 214,desc = "pt-7-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",lvId = "2",cardId = 1102020,lv = 60,bklv = 7,star = 2,mon = {id = 238,desc = "pt-7-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10703] = {
		[1] = {
			jlr = {cha = "pt-7",lvId = "3",cardId = 1101007,lv = 60,bklv = 7,star = 2,mon = {id = 212,desc = "pt-7-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",lvId = "3",cardId = 1102012,lv = 60,bklv = 7,star = 2,mon = {id = 236,desc = "pt-7-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-7",lvId = "3",cardId = 1101003,lv = 60,bklv = 7,star = 2,mon = {id = 208,desc = "pt-7-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",lvId = "3",cardId = 1102005,lv = 60,bklv = 7,star = 2,mon = {id = 231,desc = "pt-7-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-7",lvId = "3",cardId = 1101014,lv = 60,bklv = 7,star = 2,mon = {id = 209,desc = "pt-7-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",lvId = "3",cardId = 1102020,lv = 60,bklv = 7,star = 2,mon = {id = 232,desc = "pt-7-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10704] = {
		[1] = {
			jlr = {cha = "pt-7",lvId = "4",cardId = 1101007,lv = 61,bklv = 7,star = 2,mon = {id = 215,desc = "pt-7-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",lvId = "4",cardId = 1102012,lv = 61,bklv = 7,star = 2,mon = {id = 239,desc = "pt-7-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-7",lvId = "4",cardId = 1101003,lv = 61,bklv = 7,star = 2,mon = {id = 201,desc = "pt-7-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",lvId = "4",cardId = 1102005,lv = 61,bklv = 7,star = 2,mon = {id = 227,desc = "pt-7-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-7",lvId = "4",cardId = 1101014,lv = 61,bklv = 7,star = 2,mon = {id = 211,desc = "pt-7-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",lvId = "4",cardId = 1102020,lv = 61,bklv = 7,star = 2,mon = {id = 235,desc = "pt-7-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10705] = {
		[1] = {
			jlr = {cha = "pt-7",lvId = "5",cardId = 1101007,lv = 61,bklv = 7,star = 2,mon = {id = 206,desc = "pt-7-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",lvId = "5",cardId = 1102012,lv = 61,bklv = 7,star = 2,mon = {id = 225,desc = "pt-7-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-7",lvId = "5",cardId = 1101003,lv = 61,bklv = 7,star = 2,mon = {id = 203,desc = "pt-7-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",lvId = "5",cardId = 1102005,lv = 61,bklv = 7,star = 2,mon = {id = 223,desc = "pt-7-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-7",lvId = "5",cardId = 1101014,lv = 61,bklv = 7,star = 2,mon = {id = 212,desc = "pt-7-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",lvId = "5",cardId = 1102020,lv = 61,bklv = 7,star = 2,mon = {id = 236,desc = "pt-7-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10706] = {
		[1] = {
			jlr = {cha = "pt-7",lvId = "6",cardId = 1101007,lv = 61,bklv = 7,star = 2,mon = {id = 209,desc = "pt-7-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",lvId = "6",cardId = 1102012,lv = 61,bklv = 7,star = 2,mon = {id = 232,desc = "pt-7-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-7",lvId = "6",cardId = 1101003,lv = 61,bklv = 7,star = 2,mon = {id = 208,desc = "pt-7-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",lvId = "6",cardId = 1102005,lv = 61,bklv = 7,star = 2,mon = {id = 231,desc = "pt-7-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-7",lvId = "6",cardId = 1101014,lv = 61,bklv = 7,star = 2,mon = {id = 212,desc = "pt-7-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",lvId = "6",cardId = 1102020,lv = 61,bklv = 7,star = 2,mon = {id = 236,desc = "pt-7-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10707] = {
		[1] = {
			jlr = {cha = "pt-7",lvId = "7",cardId = 1101007,lv = 62,bklv = 7,star = 2,mon = {id = 207,desc = "pt-7-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",lvId = "7",cardId = 1102012,lv = 62,bklv = 7,star = 2,mon = {id = 227,desc = "pt-7-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-7",lvId = "7",cardId = 1101003,lv = 62,bklv = 7,star = 2,mon = {id = 207,desc = "pt-7-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",lvId = "7",cardId = 1102005,lv = 62,bklv = 7,star = 2,mon = {id = 221,desc = "pt-7-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-7",lvId = "7",cardId = 1101014,lv = 62,bklv = 7,star = 2,mon = {id = 211,desc = "pt-7-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",lvId = "7",cardId = 1102020,lv = 62,bklv = 7,star = 2,mon = {id = 235,desc = "pt-7-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10708] = {
		[1] = {
			jlr = {cha = "pt-7",lvId = "8",cardId = 1101007,lv = 62,bklv = 7,star = 2,mon = {id = 207,desc = "pt-7-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",lvId = "8",cardId = 1102012,lv = 62,bklv = 7,star = 2,mon = {id = 230,desc = "pt-7-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-7",lvId = "8",cardId = 1101003,lv = 62,bklv = 7,star = 2,mon = {id = 205,desc = "pt-7-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",lvId = "8",cardId = 1102005,lv = 62,bklv = 7,star = 2,mon = {id = 229,desc = "pt-7-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-7",lvId = "8",cardId = 1101014,lv = 62,bklv = 7,star = 2,mon = {id = 210,desc = "pt-7-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",lvId = "8",cardId = 1102020,lv = 62,bklv = 7,star = 2,mon = {id = 234,desc = "pt-7-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10709] = {
		[1] = {
			jlr = {cha = "pt-7",lvId = "9",cardId = 1101007,lv = 62,bklv = 7,star = 2,mon = {id = 212,desc = "pt-7-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",lvId = "9",cardId = 1102012,lv = 62,bklv = 7,star = 2,mon = {id = 236,desc = "pt-7-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-7",lvId = "9",cardId = 1101003,lv = 62,bklv = 7,star = 2,mon = {id = 208,desc = "pt-7-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",lvId = "9",cardId = 1102005,lv = 62,bklv = 7,star = 2,mon = {id = 231,desc = "pt-7-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-7",lvId = "9",cardId = 1101014,lv = 62,bklv = 7,star = 2,mon = {id = 209,desc = "pt-7-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",lvId = "9",cardId = 1102020,lv = 62,bklv = 7,star = 2,mon = {id = 232,desc = "pt-7-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10710] = {
		[1] = {
			jlr = {cha = "pt-7",lvId = "10",cardId = 1101007,lv = 63,bklv = 7,star = 2,mon = {id = 201,desc = "pt-7-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",lvId = "10",cardId = 1102012,lv = 63,bklv = 7,star = 2,mon = {id = 220,desc = "pt-7-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-7",lvId = "10",cardId = 1101003,lv = 63,bklv = 7,star = 2,mon = {id = 203,desc = "pt-7-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",lvId = "10",cardId = 1102005,lv = 63,bklv = 7,star = 2,mon = {id = 223,desc = "pt-7-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-7",lvId = "10",cardId = 1101014,lv = 63,bklv = 7,star = 2,mon = {id = 214,desc = "pt-7-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",lvId = "10",cardId = 1102020,lv = 63,bklv = 7,star = 2,mon = {id = 238,desc = "pt-7-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10711] = {
		[1] = {
			jlr = {cha = "pt-7",lvId = "11",cardId = 1101007,lv = 63,bklv = 7,star = 2,mon = {id = 212,desc = "pt-7-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",lvId = "11",cardId = 1102012,lv = 63,bklv = 7,star = 2,mon = {id = 236,desc = "pt-7-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-7",lvId = "11",cardId = 1101003,lv = 63,bklv = 7,star = 2,mon = {id = 208,desc = "pt-7-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",lvId = "11",cardId = 1102005,lv = 63,bklv = 7,star = 2,mon = {id = 231,desc = "pt-7-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-7",lvId = "11",cardId = 1101014,lv = 63,bklv = 7,star = 2,mon = {id = 209,desc = "pt-7-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",lvId = "11",cardId = 1102020,lv = 63,bklv = 7,star = 2,mon = {id = 232,desc = "pt-7-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10712] = {
		[1] = {
			jlr = {cha = "pt-7",lvId = "12",cardId = 1101007,lv = 63,bklv = 7,star = 2,mon = {id = 215,desc = "pt-7-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",lvId = "12",cardId = 1102012,lv = 63,bklv = 7,star = 2,mon = {id = 239,desc = "pt-7-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-7",lvId = "12",cardId = 1101003,lv = 63,bklv = 7,star = 2,mon = {id = 201,desc = "pt-7-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",lvId = "12",cardId = 1102005,lv = 63,bklv = 7,star = 2,mon = {id = 227,desc = "pt-7-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-7",lvId = "12",cardId = 1101014,lv = 63,bklv = 7,star = 2,mon = {id = 211,desc = "pt-7-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",lvId = "12",cardId = 1102020,lv = 63,bklv = 7,star = 2,mon = {id = 235,desc = "pt-7-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10713] = {
		[1] = {
			jlr = {cha = "pt-7",lvId = "13",cardId = 1101007,lv = 64,bklv = 7,star = 2,mon = {id = 209,desc = "pt-7-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",lvId = "13",cardId = 1102012,lv = 64,bklv = 7,star = 2,mon = {id = 232,desc = "pt-7-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-7",lvId = "13",cardId = 1101003,lv = 64,bklv = 7,star = 2,mon = {id = 208,desc = "pt-7-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",lvId = "13",cardId = 1102005,lv = 64,bklv = 7,star = 2,mon = {id = 231,desc = "pt-7-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-7",lvId = "13",cardId = 1101014,lv = 64,bklv = 7,star = 2,mon = {id = 212,desc = "pt-7-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",lvId = "13",cardId = 1102020,lv = 64,bklv = 7,star = 2,mon = {id = 236,desc = "pt-7-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10714] = {
		[1] = {
			jlr = {cha = "pt-7",lvId = "14",cardId = 1101007,lv = 64,bklv = 7,star = 2,mon = {id = 207,desc = "pt-7-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",lvId = "14",cardId = 1102012,lv = 64,bklv = 7,star = 2,mon = {id = 227,desc = "pt-7-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-7",lvId = "14",cardId = 1101003,lv = 64,bklv = 7,star = 2,mon = {id = 207,desc = "pt-7-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",lvId = "14",cardId = 1102005,lv = 64,bklv = 7,star = 2,mon = {id = 221,desc = "pt-7-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-7",lvId = "14",cardId = 1101014,lv = 64,bklv = 7,star = 2,mon = {id = 211,desc = "pt-7-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",lvId = "14",cardId = 1102020,lv = 64,bklv = 7,star = 2,mon = {id = 235,desc = "pt-7-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10715] = {
		[1] = {
			jlr = {cha = "pt-7",lvId = "15",cardId = 1101007,lv = 64,bklv = 7,star = 2,mon = {id = 205,desc = "pt-7-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",lvId = "15",cardId = 1102012,lv = 64,bklv = 7,star = 2,mon = {id = 219,desc = "pt-7-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-7",lvId = "15",cardId = 1101003,lv = 64,bklv = 7,star = 2,mon = {id = 204,desc = "pt-7-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",lvId = "15",cardId = 1102005,lv = 64,bklv = 7,star = 2,mon = {id = 224,desc = "pt-7-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-7",lvId = "15",cardId = 1101014,lv = 64,bklv = 7,star = 2,mon = {id = 207,desc = "pt-7-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",lvId = "15",cardId = 1102020,lv = 64,bklv = 7,star = 2,mon = {id = 228,desc = "pt-7-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10801] = {
		[1] = {
			jlr = {cha = "pt-8",lvId = "1",cardId = 1101007,lv = 70,bklv = 8,star = 2,mon = {id = 212,desc = "pt-8-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",lvId = "1",cardId = 1102012,lv = 70,bklv = 8,star = 2,mon = {id = 236,desc = "pt-8-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-8",lvId = "1",cardId = 1101003,lv = 70,bklv = 8,star = 2,mon = {id = 208,desc = "pt-8-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",lvId = "1",cardId = 1102005,lv = 70,bklv = 8,star = 2,mon = {id = 231,desc = "pt-8-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-8",lvId = "1",cardId = 1101014,lv = 70,bklv = 8,star = 2,mon = {id = 213,desc = "pt-8-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",lvId = "1",cardId = 1102020,lv = 70,bklv = 8,star = 2,mon = {id = 237,desc = "pt-8-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10802] = {
		[1] = {
			jlr = {cha = "pt-8",lvId = "2",cardId = 1101007,lv = 70,bklv = 8,star = 2,mon = {id = 201,desc = "pt-8-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",lvId = "2",cardId = 1102012,lv = 70,bklv = 8,star = 2,mon = {id = 220,desc = "pt-8-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-8",lvId = "2",cardId = 1101003,lv = 70,bklv = 8,star = 2,mon = {id = 203,desc = "pt-8-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",lvId = "2",cardId = 1102005,lv = 70,bklv = 8,star = 2,mon = {id = 223,desc = "pt-8-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-8",lvId = "2",cardId = 1101014,lv = 70,bklv = 8,star = 2,mon = {id = 214,desc = "pt-8-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",lvId = "2",cardId = 1102020,lv = 70,bklv = 8,star = 2,mon = {id = 238,desc = "pt-8-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10803] = {
		[1] = {
			jlr = {cha = "pt-8",lvId = "3",cardId = 1101007,lv = 70,bklv = 8,star = 2,mon = {id = 212,desc = "pt-8-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",lvId = "3",cardId = 1102012,lv = 70,bklv = 8,star = 2,mon = {id = 236,desc = "pt-8-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-8",lvId = "3",cardId = 1101003,lv = 70,bklv = 8,star = 2,mon = {id = 208,desc = "pt-8-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",lvId = "3",cardId = 1102005,lv = 70,bklv = 8,star = 2,mon = {id = 231,desc = "pt-8-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-8",lvId = "3",cardId = 1101014,lv = 70,bklv = 8,star = 2,mon = {id = 209,desc = "pt-8-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",lvId = "3",cardId = 1102020,lv = 70,bklv = 8,star = 2,mon = {id = 232,desc = "pt-8-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10804] = {
		[1] = {
			jlr = {cha = "pt-8",lvId = "4",cardId = 1101007,lv = 71,bklv = 8,star = 2,mon = {id = 215,desc = "pt-8-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",lvId = "4",cardId = 1102012,lv = 71,bklv = 8,star = 2,mon = {id = 239,desc = "pt-8-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-8",lvId = "4",cardId = 1101003,lv = 71,bklv = 8,star = 2,mon = {id = 201,desc = "pt-8-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",lvId = "4",cardId = 1102005,lv = 71,bklv = 8,star = 2,mon = {id = 227,desc = "pt-8-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-8",lvId = "4",cardId = 1101014,lv = 71,bklv = 8,star = 2,mon = {id = 211,desc = "pt-8-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",lvId = "4",cardId = 1102020,lv = 71,bklv = 8,star = 2,mon = {id = 235,desc = "pt-8-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10805] = {
		[1] = {
			jlr = {cha = "pt-8",lvId = "5",cardId = 1101007,lv = 71,bklv = 8,star = 2,mon = {id = 206,desc = "pt-8-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",lvId = "5",cardId = 1102012,lv = 71,bklv = 8,star = 2,mon = {id = 225,desc = "pt-8-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-8",lvId = "5",cardId = 1101003,lv = 71,bklv = 8,star = 2,mon = {id = 203,desc = "pt-8-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",lvId = "5",cardId = 1102005,lv = 71,bklv = 8,star = 2,mon = {id = 223,desc = "pt-8-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-8",lvId = "5",cardId = 1101014,lv = 71,bklv = 8,star = 2,mon = {id = 212,desc = "pt-8-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",lvId = "5",cardId = 1102020,lv = 71,bklv = 8,star = 2,mon = {id = 236,desc = "pt-8-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10806] = {
		[1] = {
			jlr = {cha = "pt-8",lvId = "6",cardId = 1101007,lv = 71,bklv = 8,star = 2,mon = {id = 209,desc = "pt-8-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",lvId = "6",cardId = 1102012,lv = 71,bklv = 8,star = 2,mon = {id = 232,desc = "pt-8-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-8",lvId = "6",cardId = 1101003,lv = 71,bklv = 8,star = 2,mon = {id = 208,desc = "pt-8-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",lvId = "6",cardId = 1102005,lv = 71,bklv = 8,star = 2,mon = {id = 231,desc = "pt-8-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-8",lvId = "6",cardId = 1101014,lv = 71,bklv = 8,star = 2,mon = {id = 212,desc = "pt-8-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",lvId = "6",cardId = 1102020,lv = 71,bklv = 8,star = 2,mon = {id = 236,desc = "pt-8-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10807] = {
		[1] = {
			jlr = {cha = "pt-8",lvId = "7",cardId = 1101007,lv = 72,bklv = 8,star = 2,mon = {id = 207,desc = "pt-8-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",lvId = "7",cardId = 1102012,lv = 72,bklv = 8,star = 2,mon = {id = 227,desc = "pt-8-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-8",lvId = "7",cardId = 1101003,lv = 72,bklv = 8,star = 2,mon = {id = 207,desc = "pt-8-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",lvId = "7",cardId = 1102005,lv = 72,bklv = 8,star = 2,mon = {id = 221,desc = "pt-8-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-8",lvId = "7",cardId = 1101014,lv = 72,bklv = 8,star = 2,mon = {id = 211,desc = "pt-8-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",lvId = "7",cardId = 1102020,lv = 72,bklv = 8,star = 2,mon = {id = 235,desc = "pt-8-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10808] = {
		[1] = {
			jlr = {cha = "pt-8",lvId = "8",cardId = 1101007,lv = 72,bklv = 8,star = 2,mon = {id = 207,desc = "pt-8-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",lvId = "8",cardId = 1102012,lv = 72,bklv = 8,star = 2,mon = {id = 230,desc = "pt-8-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-8",lvId = "8",cardId = 1101003,lv = 72,bklv = 8,star = 2,mon = {id = 205,desc = "pt-8-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",lvId = "8",cardId = 1102005,lv = 72,bklv = 8,star = 2,mon = {id = 229,desc = "pt-8-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-8",lvId = "8",cardId = 1101014,lv = 72,bklv = 8,star = 2,mon = {id = 210,desc = "pt-8-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",lvId = "8",cardId = 1102020,lv = 72,bklv = 8,star = 2,mon = {id = 234,desc = "pt-8-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10809] = {
		[1] = {
			jlr = {cha = "pt-8",lvId = "9",cardId = 1101007,lv = 72,bklv = 8,star = 2,mon = {id = 212,desc = "pt-8-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",lvId = "9",cardId = 1102012,lv = 72,bklv = 8,star = 2,mon = {id = 236,desc = "pt-8-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-8",lvId = "9",cardId = 1101003,lv = 72,bklv = 8,star = 2,mon = {id = 208,desc = "pt-8-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",lvId = "9",cardId = 1102005,lv = 72,bklv = 8,star = 2,mon = {id = 231,desc = "pt-8-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-8",lvId = "9",cardId = 1101014,lv = 72,bklv = 8,star = 2,mon = {id = 209,desc = "pt-8-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",lvId = "9",cardId = 1102020,lv = 72,bklv = 8,star = 2,mon = {id = 232,desc = "pt-8-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10810] = {
		[1] = {
			jlr = {cha = "pt-8",lvId = "10",cardId = 1101007,lv = 73,bklv = 8,star = 2,mon = {id = 201,desc = "pt-8-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",lvId = "10",cardId = 1102012,lv = 73,bklv = 8,star = 2,mon = {id = 220,desc = "pt-8-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-8",lvId = "10",cardId = 1101003,lv = 73,bklv = 8,star = 2,mon = {id = 203,desc = "pt-8-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",lvId = "10",cardId = 1102005,lv = 73,bklv = 8,star = 2,mon = {id = 223,desc = "pt-8-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-8",lvId = "10",cardId = 1101014,lv = 73,bklv = 8,star = 2,mon = {id = 214,desc = "pt-8-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",lvId = "10",cardId = 1102020,lv = 73,bklv = 8,star = 2,mon = {id = 238,desc = "pt-8-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10811] = {
		[1] = {
			jlr = {cha = "pt-8",lvId = "11",cardId = 1101007,lv = 73,bklv = 8,star = 2,mon = {id = 212,desc = "pt-8-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",lvId = "11",cardId = 1102012,lv = 73,bklv = 8,star = 2,mon = {id = 236,desc = "pt-8-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-8",lvId = "11",cardId = 1101003,lv = 73,bklv = 8,star = 2,mon = {id = 208,desc = "pt-8-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",lvId = "11",cardId = 1102005,lv = 73,bklv = 8,star = 2,mon = {id = 231,desc = "pt-8-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-8",lvId = "11",cardId = 1101014,lv = 73,bklv = 8,star = 2,mon = {id = 209,desc = "pt-8-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",lvId = "11",cardId = 1102020,lv = 73,bklv = 8,star = 2,mon = {id = 232,desc = "pt-8-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10812] = {
		[1] = {
			jlr = {cha = "pt-8",lvId = "12",cardId = 1101007,lv = 73,bklv = 8,star = 2,mon = {id = 215,desc = "pt-8-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",lvId = "12",cardId = 1102012,lv = 73,bklv = 8,star = 2,mon = {id = 239,desc = "pt-8-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-8",lvId = "12",cardId = 1101003,lv = 73,bklv = 8,star = 2,mon = {id = 201,desc = "pt-8-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",lvId = "12",cardId = 1102005,lv = 73,bklv = 8,star = 2,mon = {id = 227,desc = "pt-8-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-8",lvId = "12",cardId = 1101014,lv = 73,bklv = 8,star = 2,mon = {id = 211,desc = "pt-8-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",lvId = "12",cardId = 1102020,lv = 73,bklv = 8,star = 2,mon = {id = 235,desc = "pt-8-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10813] = {
		[1] = {
			jlr = {cha = "pt-8",lvId = "13",cardId = 1101007,lv = 74,bklv = 8,star = 2,mon = {id = 209,desc = "pt-8-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",lvId = "13",cardId = 1102012,lv = 74,bklv = 8,star = 2,mon = {id = 232,desc = "pt-8-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-8",lvId = "13",cardId = 1101003,lv = 74,bklv = 8,star = 2,mon = {id = 208,desc = "pt-8-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",lvId = "13",cardId = 1102005,lv = 74,bklv = 8,star = 2,mon = {id = 231,desc = "pt-8-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-8",lvId = "13",cardId = 1101014,lv = 74,bklv = 8,star = 2,mon = {id = 212,desc = "pt-8-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",lvId = "13",cardId = 1102020,lv = 74,bklv = 8,star = 2,mon = {id = 236,desc = "pt-8-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10814] = {
		[1] = {
			jlr = {cha = "pt-8",lvId = "14",cardId = 1101007,lv = 74,bklv = 8,star = 2,mon = {id = 207,desc = "pt-8-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",lvId = "14",cardId = 1102012,lv = 74,bklv = 8,star = 2,mon = {id = 227,desc = "pt-8-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-8",lvId = "14",cardId = 1101003,lv = 74,bklv = 8,star = 2,mon = {id = 207,desc = "pt-8-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",lvId = "14",cardId = 1102005,lv = 74,bklv = 8,star = 2,mon = {id = 221,desc = "pt-8-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-8",lvId = "14",cardId = 1101014,lv = 74,bklv = 8,star = 2,mon = {id = 211,desc = "pt-8-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",lvId = "14",cardId = 1102020,lv = 74,bklv = 8,star = 2,mon = {id = 235,desc = "pt-8-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10815] = {
		[1] = {
			jlr = {cha = "pt-8",lvId = "15",cardId = 1101007,lv = 74,bklv = 8,star = 2,mon = {id = 205,desc = "pt-8-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",lvId = "15",cardId = 1102012,lv = 74,bklv = 8,star = 2,mon = {id = 219,desc = "pt-8-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-8",lvId = "15",cardId = 1101003,lv = 74,bklv = 8,star = 2,mon = {id = 204,desc = "pt-8-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",lvId = "15",cardId = 1102005,lv = 74,bklv = 8,star = 2,mon = {id = 224,desc = "pt-8-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-8",lvId = "15",cardId = 1101014,lv = 74,bklv = 8,star = 2,mon = {id = 207,desc = "pt-8-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",lvId = "15",cardId = 1102020,lv = 74,bklv = 8,star = 2,mon = {id = 228,desc = "pt-8-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10901] = {
		[1] = {
			jlr = {cha = "pt-9",lvId = "1",cardId = 1101007,lv = 80,bklv = 9,star = 3,mon = {id = 212,desc = "pt-9-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",lvId = "1",cardId = 1102012,lv = 80,bklv = 9,star = 3,mon = {id = 236,desc = "pt-9-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-9",lvId = "1",cardId = 1101003,lv = 80,bklv = 9,star = 3,mon = {id = 208,desc = "pt-9-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",lvId = "1",cardId = 1102005,lv = 80,bklv = 9,star = 3,mon = {id = 231,desc = "pt-9-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-9",lvId = "1",cardId = 1101014,lv = 80,bklv = 9,star = 3,mon = {id = 213,desc = "pt-9-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",lvId = "1",cardId = 1102020,lv = 80,bklv = 9,star = 3,mon = {id = 237,desc = "pt-9-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10902] = {
		[1] = {
			jlr = {cha = "pt-9",lvId = "2",cardId = 1101007,lv = 80,bklv = 9,star = 3,mon = {id = 201,desc = "pt-9-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",lvId = "2",cardId = 1102012,lv = 80,bklv = 9,star = 3,mon = {id = 220,desc = "pt-9-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-9",lvId = "2",cardId = 1101003,lv = 80,bklv = 9,star = 3,mon = {id = 203,desc = "pt-9-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",lvId = "2",cardId = 1102005,lv = 80,bklv = 9,star = 3,mon = {id = 223,desc = "pt-9-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-9",lvId = "2",cardId = 1101014,lv = 80,bklv = 9,star = 3,mon = {id = 214,desc = "pt-9-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",lvId = "2",cardId = 1102020,lv = 80,bklv = 9,star = 3,mon = {id = 238,desc = "pt-9-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10903] = {
		[1] = {
			jlr = {cha = "pt-9",lvId = "3",cardId = 1101007,lv = 80,bklv = 9,star = 3,mon = {id = 212,desc = "pt-9-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",lvId = "3",cardId = 1102012,lv = 80,bklv = 9,star = 3,mon = {id = 236,desc = "pt-9-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-9",lvId = "3",cardId = 1101003,lv = 80,bklv = 9,star = 3,mon = {id = 208,desc = "pt-9-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",lvId = "3",cardId = 1102005,lv = 80,bklv = 9,star = 3,mon = {id = 231,desc = "pt-9-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-9",lvId = "3",cardId = 1101014,lv = 80,bklv = 9,star = 3,mon = {id = 209,desc = "pt-9-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",lvId = "3",cardId = 1102020,lv = 80,bklv = 9,star = 3,mon = {id = 232,desc = "pt-9-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10904] = {
		[1] = {
			jlr = {cha = "pt-9",lvId = "4",cardId = 1101007,lv = 81,bklv = 9,star = 3,mon = {id = 215,desc = "pt-9-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",lvId = "4",cardId = 1102012,lv = 81,bklv = 9,star = 3,mon = {id = 239,desc = "pt-9-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-9",lvId = "4",cardId = 1101003,lv = 81,bklv = 9,star = 3,mon = {id = 201,desc = "pt-9-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",lvId = "4",cardId = 1102005,lv = 81,bklv = 9,star = 3,mon = {id = 227,desc = "pt-9-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-9",lvId = "4",cardId = 1101014,lv = 81,bklv = 9,star = 3,mon = {id = 211,desc = "pt-9-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",lvId = "4",cardId = 1102020,lv = 81,bklv = 9,star = 3,mon = {id = 235,desc = "pt-9-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10905] = {
		[1] = {
			jlr = {cha = "pt-9",lvId = "5",cardId = 1101007,lv = 81,bklv = 9,star = 3,mon = {id = 206,desc = "pt-9-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",lvId = "5",cardId = 1102012,lv = 81,bklv = 9,star = 3,mon = {id = 225,desc = "pt-9-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-9",lvId = "5",cardId = 1101003,lv = 81,bklv = 9,star = 3,mon = {id = 203,desc = "pt-9-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",lvId = "5",cardId = 1102005,lv = 81,bklv = 9,star = 3,mon = {id = 223,desc = "pt-9-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-9",lvId = "5",cardId = 1101014,lv = 81,bklv = 9,star = 3,mon = {id = 212,desc = "pt-9-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",lvId = "5",cardId = 1102020,lv = 81,bklv = 9,star = 3,mon = {id = 236,desc = "pt-9-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10906] = {
		[1] = {
			jlr = {cha = "pt-9",lvId = "6",cardId = 1101007,lv = 81,bklv = 9,star = 3,mon = {id = 209,desc = "pt-9-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",lvId = "6",cardId = 1102012,lv = 81,bklv = 9,star = 3,mon = {id = 232,desc = "pt-9-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-9",lvId = "6",cardId = 1101003,lv = 81,bklv = 9,star = 3,mon = {id = 208,desc = "pt-9-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",lvId = "6",cardId = 1102005,lv = 81,bklv = 9,star = 3,mon = {id = 231,desc = "pt-9-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-9",lvId = "6",cardId = 1101014,lv = 81,bklv = 9,star = 3,mon = {id = 212,desc = "pt-9-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",lvId = "6",cardId = 1102020,lv = 81,bklv = 9,star = 3,mon = {id = 236,desc = "pt-9-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10907] = {
		[1] = {
			jlr = {cha = "pt-9",lvId = "7",cardId = 1101007,lv = 82,bklv = 9,star = 3,mon = {id = 207,desc = "pt-9-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",lvId = "7",cardId = 1102012,lv = 82,bklv = 9,star = 3,mon = {id = 227,desc = "pt-9-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-9",lvId = "7",cardId = 1101003,lv = 82,bklv = 9,star = 3,mon = {id = 207,desc = "pt-9-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",lvId = "7",cardId = 1102005,lv = 82,bklv = 9,star = 3,mon = {id = 221,desc = "pt-9-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-9",lvId = "7",cardId = 1101014,lv = 82,bklv = 9,star = 3,mon = {id = 211,desc = "pt-9-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",lvId = "7",cardId = 1102020,lv = 82,bklv = 9,star = 3,mon = {id = 235,desc = "pt-9-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10908] = {
		[1] = {
			jlr = {cha = "pt-9",lvId = "8",cardId = 1101007,lv = 82,bklv = 9,star = 3,mon = {id = 207,desc = "pt-9-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",lvId = "8",cardId = 1102012,lv = 82,bklv = 9,star = 3,mon = {id = 230,desc = "pt-9-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-9",lvId = "8",cardId = 1101003,lv = 82,bklv = 9,star = 3,mon = {id = 205,desc = "pt-9-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",lvId = "8",cardId = 1102005,lv = 82,bklv = 9,star = 3,mon = {id = 229,desc = "pt-9-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-9",lvId = "8",cardId = 1101014,lv = 82,bklv = 9,star = 3,mon = {id = 210,desc = "pt-9-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",lvId = "8",cardId = 1102020,lv = 82,bklv = 9,star = 3,mon = {id = 234,desc = "pt-9-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10909] = {
		[1] = {
			jlr = {cha = "pt-9",lvId = "9",cardId = 1101007,lv = 82,bklv = 9,star = 3,mon = {id = 212,desc = "pt-9-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",lvId = "9",cardId = 1102012,lv = 82,bklv = 9,star = 3,mon = {id = 236,desc = "pt-9-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-9",lvId = "9",cardId = 1101003,lv = 82,bklv = 9,star = 3,mon = {id = 208,desc = "pt-9-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",lvId = "9",cardId = 1102005,lv = 82,bklv = 9,star = 3,mon = {id = 231,desc = "pt-9-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-9",lvId = "9",cardId = 1101014,lv = 82,bklv = 9,star = 3,mon = {id = 209,desc = "pt-9-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",lvId = "9",cardId = 1102020,lv = 82,bklv = 9,star = 3,mon = {id = 232,desc = "pt-9-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10910] = {
		[1] = {
			jlr = {cha = "pt-9",lvId = "10",cardId = 1101007,lv = 83,bklv = 9,star = 3,mon = {id = 201,desc = "pt-9-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",lvId = "10",cardId = 1102012,lv = 83,bklv = 9,star = 3,mon = {id = 220,desc = "pt-9-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-9",lvId = "10",cardId = 1101003,lv = 83,bklv = 9,star = 3,mon = {id = 203,desc = "pt-9-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",lvId = "10",cardId = 1102005,lv = 83,bklv = 9,star = 3,mon = {id = 223,desc = "pt-9-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-9",lvId = "10",cardId = 1101014,lv = 83,bklv = 9,star = 3,mon = {id = 214,desc = "pt-9-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",lvId = "10",cardId = 1102020,lv = 83,bklv = 9,star = 3,mon = {id = 238,desc = "pt-9-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10911] = {
		[1] = {
			jlr = {cha = "pt-9",lvId = "11",cardId = 1101007,lv = 83,bklv = 9,star = 3,mon = {id = 212,desc = "pt-9-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",lvId = "11",cardId = 1102012,lv = 83,bklv = 9,star = 3,mon = {id = 236,desc = "pt-9-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-9",lvId = "11",cardId = 1101003,lv = 83,bklv = 9,star = 3,mon = {id = 208,desc = "pt-9-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",lvId = "11",cardId = 1102005,lv = 83,bklv = 9,star = 3,mon = {id = 231,desc = "pt-9-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-9",lvId = "11",cardId = 1101014,lv = 83,bklv = 9,star = 3,mon = {id = 209,desc = "pt-9-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",lvId = "11",cardId = 1102020,lv = 83,bklv = 9,star = 3,mon = {id = 232,desc = "pt-9-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10912] = {
		[1] = {
			jlr = {cha = "pt-9",lvId = "12",cardId = 1101007,lv = 83,bklv = 9,star = 3,mon = {id = 215,desc = "pt-9-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",lvId = "12",cardId = 1102012,lv = 83,bklv = 9,star = 3,mon = {id = 239,desc = "pt-9-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-9",lvId = "12",cardId = 1101003,lv = 83,bklv = 9,star = 3,mon = {id = 201,desc = "pt-9-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",lvId = "12",cardId = 1102005,lv = 83,bklv = 9,star = 3,mon = {id = 227,desc = "pt-9-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-9",lvId = "12",cardId = 1101014,lv = 83,bklv = 9,star = 3,mon = {id = 211,desc = "pt-9-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",lvId = "12",cardId = 1102020,lv = 83,bklv = 9,star = 3,mon = {id = 235,desc = "pt-9-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10913] = {
		[1] = {
			jlr = {cha = "pt-9",lvId = "13",cardId = 1101007,lv = 84,bklv = 9,star = 3,mon = {id = 209,desc = "pt-9-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",lvId = "13",cardId = 1102012,lv = 84,bklv = 9,star = 3,mon = {id = 232,desc = "pt-9-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-9",lvId = "13",cardId = 1101003,lv = 84,bklv = 9,star = 3,mon = {id = 208,desc = "pt-9-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",lvId = "13",cardId = 1102005,lv = 84,bklv = 9,star = 3,mon = {id = 231,desc = "pt-9-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-9",lvId = "13",cardId = 1101014,lv = 84,bklv = 9,star = 3,mon = {id = 212,desc = "pt-9-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",lvId = "13",cardId = 1102020,lv = 84,bklv = 9,star = 3,mon = {id = 236,desc = "pt-9-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10914] = {
		[1] = {
			jlr = {cha = "pt-9",lvId = "14",cardId = 1101007,lv = 84,bklv = 9,star = 3,mon = {id = 207,desc = "pt-9-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",lvId = "14",cardId = 1102012,lv = 84,bklv = 9,star = 3,mon = {id = 227,desc = "pt-9-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-9",lvId = "14",cardId = 1101003,lv = 84,bklv = 9,star = 3,mon = {id = 207,desc = "pt-9-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",lvId = "14",cardId = 1102005,lv = 84,bklv = 9,star = 3,mon = {id = 221,desc = "pt-9-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-9",lvId = "14",cardId = 1101014,lv = 84,bklv = 9,star = 3,mon = {id = 211,desc = "pt-9-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",lvId = "14",cardId = 1102020,lv = 84,bklv = 9,star = 3,mon = {id = 235,desc = "pt-9-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10915] = {
		[1] = {
			jlr = {cha = "pt-9",lvId = "15",cardId = 1101007,lv = 84,bklv = 9,star = 3,mon = {id = 205,desc = "pt-9-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",lvId = "15",cardId = 1102012,lv = 84,bklv = 9,star = 3,mon = {id = 219,desc = "pt-9-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-9",lvId = "15",cardId = 1101003,lv = 84,bklv = 9,star = 3,mon = {id = 204,desc = "pt-9-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",lvId = "15",cardId = 1102005,lv = 84,bklv = 9,star = 3,mon = {id = 224,desc = "pt-9-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-9",lvId = "15",cardId = 1101014,lv = 84,bklv = 9,star = 3,mon = {id = 207,desc = "pt-9-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",lvId = "15",cardId = 1102020,lv = 84,bklv = 9,star = 3,mon = {id = 228,desc = "pt-9-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11001] = {
		[1] = {
			jlr = {cha = "pt-10",lvId = "1",cardId = 1101007,lv = 90,bklv = 11,star = 3,mon = {id = 212,desc = "pt-10-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",lvId = "1",cardId = 1102012,lv = 90,bklv = 11,star = 3,mon = {id = 236,desc = "pt-10-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-10",lvId = "1",cardId = 1101003,lv = 90,bklv = 11,star = 3,mon = {id = 208,desc = "pt-10-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",lvId = "1",cardId = 1102005,lv = 90,bklv = 11,star = 3,mon = {id = 231,desc = "pt-10-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-10",lvId = "1",cardId = 1101014,lv = 90,bklv = 11,star = 3,mon = {id = 213,desc = "pt-10-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",lvId = "1",cardId = 1102020,lv = 90,bklv = 11,star = 3,mon = {id = 237,desc = "pt-10-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11002] = {
		[1] = {
			jlr = {cha = "pt-10",lvId = "2",cardId = 1101007,lv = 90,bklv = 11,star = 3,mon = {id = 201,desc = "pt-10-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",lvId = "2",cardId = 1102012,lv = 90,bklv = 11,star = 3,mon = {id = 220,desc = "pt-10-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-10",lvId = "2",cardId = 1101003,lv = 90,bklv = 11,star = 3,mon = {id = 203,desc = "pt-10-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",lvId = "2",cardId = 1102005,lv = 90,bklv = 11,star = 3,mon = {id = 223,desc = "pt-10-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-10",lvId = "2",cardId = 1101014,lv = 90,bklv = 11,star = 3,mon = {id = 214,desc = "pt-10-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",lvId = "2",cardId = 1102020,lv = 90,bklv = 11,star = 3,mon = {id = 238,desc = "pt-10-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11003] = {
		[1] = {
			jlr = {cha = "pt-10",lvId = "3",cardId = 1101007,lv = 90,bklv = 11,star = 3,mon = {id = 212,desc = "pt-10-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",lvId = "3",cardId = 1102012,lv = 90,bklv = 11,star = 3,mon = {id = 236,desc = "pt-10-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-10",lvId = "3",cardId = 1101003,lv = 90,bklv = 11,star = 3,mon = {id = 208,desc = "pt-10-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",lvId = "3",cardId = 1102005,lv = 90,bklv = 11,star = 3,mon = {id = 231,desc = "pt-10-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-10",lvId = "3",cardId = 1101014,lv = 90,bklv = 11,star = 3,mon = {id = 209,desc = "pt-10-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",lvId = "3",cardId = 1102020,lv = 90,bklv = 11,star = 3,mon = {id = 232,desc = "pt-10-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11004] = {
		[1] = {
			jlr = {cha = "pt-10",lvId = "4",cardId = 1101007,lv = 91,bklv = 11,star = 3,mon = {id = 215,desc = "pt-10-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",lvId = "4",cardId = 1102012,lv = 91,bklv = 11,star = 3,mon = {id = 239,desc = "pt-10-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-10",lvId = "4",cardId = 1101003,lv = 91,bklv = 11,star = 3,mon = {id = 201,desc = "pt-10-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",lvId = "4",cardId = 1102005,lv = 91,bklv = 11,star = 3,mon = {id = 227,desc = "pt-10-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-10",lvId = "4",cardId = 1101014,lv = 91,bklv = 11,star = 3,mon = {id = 211,desc = "pt-10-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",lvId = "4",cardId = 1102020,lv = 91,bklv = 11,star = 3,mon = {id = 235,desc = "pt-10-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11005] = {
		[1] = {
			jlr = {cha = "pt-10",lvId = "5",cardId = 1101007,lv = 91,bklv = 11,star = 3,mon = {id = 206,desc = "pt-10-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",lvId = "5",cardId = 1102012,lv = 91,bklv = 11,star = 3,mon = {id = 225,desc = "pt-10-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-10",lvId = "5",cardId = 1101003,lv = 91,bklv = 11,star = 3,mon = {id = 203,desc = "pt-10-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",lvId = "5",cardId = 1102005,lv = 91,bklv = 11,star = 3,mon = {id = 223,desc = "pt-10-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-10",lvId = "5",cardId = 1101014,lv = 91,bklv = 11,star = 3,mon = {id = 212,desc = "pt-10-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",lvId = "5",cardId = 1102020,lv = 91,bklv = 11,star = 3,mon = {id = 236,desc = "pt-10-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11006] = {
		[1] = {
			jlr = {cha = "pt-10",lvId = "6",cardId = 1101007,lv = 91,bklv = 11,star = 3,mon = {id = 209,desc = "pt-10-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",lvId = "6",cardId = 1102012,lv = 91,bklv = 11,star = 3,mon = {id = 232,desc = "pt-10-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-10",lvId = "6",cardId = 1101003,lv = 91,bklv = 11,star = 3,mon = {id = 208,desc = "pt-10-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",lvId = "6",cardId = 1102005,lv = 91,bklv = 11,star = 3,mon = {id = 231,desc = "pt-10-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-10",lvId = "6",cardId = 1101014,lv = 91,bklv = 11,star = 3,mon = {id = 212,desc = "pt-10-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",lvId = "6",cardId = 1102020,lv = 91,bklv = 11,star = 3,mon = {id = 236,desc = "pt-10-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11007] = {
		[1] = {
			jlr = {cha = "pt-10",lvId = "7",cardId = 1101007,lv = 92,bklv = 11,star = 3,mon = {id = 207,desc = "pt-10-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",lvId = "7",cardId = 1102012,lv = 92,bklv = 11,star = 3,mon = {id = 227,desc = "pt-10-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-10",lvId = "7",cardId = 1101003,lv = 92,bklv = 11,star = 3,mon = {id = 207,desc = "pt-10-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",lvId = "7",cardId = 1102005,lv = 92,bklv = 11,star = 3,mon = {id = 221,desc = "pt-10-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-10",lvId = "7",cardId = 1101014,lv = 92,bklv = 11,star = 3,mon = {id = 211,desc = "pt-10-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",lvId = "7",cardId = 1102020,lv = 92,bklv = 11,star = 3,mon = {id = 235,desc = "pt-10-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11008] = {
		[1] = {
			jlr = {cha = "pt-10",lvId = "8",cardId = 1101007,lv = 92,bklv = 11,star = 3,mon = {id = 207,desc = "pt-10-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",lvId = "8",cardId = 1102012,lv = 92,bklv = 11,star = 3,mon = {id = 230,desc = "pt-10-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-10",lvId = "8",cardId = 1101003,lv = 92,bklv = 11,star = 3,mon = {id = 205,desc = "pt-10-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",lvId = "8",cardId = 1102005,lv = 92,bklv = 11,star = 3,mon = {id = 229,desc = "pt-10-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-10",lvId = "8",cardId = 1101014,lv = 92,bklv = 11,star = 3,mon = {id = 210,desc = "pt-10-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",lvId = "8",cardId = 1102020,lv = 92,bklv = 11,star = 3,mon = {id = 234,desc = "pt-10-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11009] = {
		[1] = {
			jlr = {cha = "pt-10",lvId = "9",cardId = 1101007,lv = 92,bklv = 11,star = 3,mon = {id = 212,desc = "pt-10-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",lvId = "9",cardId = 1102012,lv = 92,bklv = 11,star = 3,mon = {id = 236,desc = "pt-10-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-10",lvId = "9",cardId = 1101003,lv = 92,bklv = 11,star = 3,mon = {id = 208,desc = "pt-10-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",lvId = "9",cardId = 1102005,lv = 92,bklv = 11,star = 3,mon = {id = 231,desc = "pt-10-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-10",lvId = "9",cardId = 1101014,lv = 92,bklv = 11,star = 3,mon = {id = 209,desc = "pt-10-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",lvId = "9",cardId = 1102020,lv = 92,bklv = 11,star = 3,mon = {id = 232,desc = "pt-10-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11010] = {
		[1] = {
			jlr = {cha = "pt-10",lvId = "10",cardId = 1101007,lv = 93,bklv = 11,star = 3,mon = {id = 201,desc = "pt-10-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",lvId = "10",cardId = 1102012,lv = 93,bklv = 11,star = 3,mon = {id = 220,desc = "pt-10-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-10",lvId = "10",cardId = 1101003,lv = 93,bklv = 11,star = 3,mon = {id = 203,desc = "pt-10-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",lvId = "10",cardId = 1102005,lv = 93,bklv = 11,star = 3,mon = {id = 223,desc = "pt-10-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-10",lvId = "10",cardId = 1101014,lv = 93,bklv = 11,star = 3,mon = {id = 214,desc = "pt-10-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",lvId = "10",cardId = 1102020,lv = 93,bklv = 11,star = 3,mon = {id = 238,desc = "pt-10-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11011] = {
		[1] = {
			jlr = {cha = "pt-10",lvId = "11",cardId = 1101007,lv = 93,bklv = 11,star = 3,mon = {id = 212,desc = "pt-10-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",lvId = "11",cardId = 1102012,lv = 93,bklv = 11,star = 3,mon = {id = 236,desc = "pt-10-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-10",lvId = "11",cardId = 1101003,lv = 93,bklv = 11,star = 3,mon = {id = 208,desc = "pt-10-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",lvId = "11",cardId = 1102005,lv = 93,bklv = 11,star = 3,mon = {id = 231,desc = "pt-10-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-10",lvId = "11",cardId = 1101014,lv = 93,bklv = 11,star = 3,mon = {id = 209,desc = "pt-10-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",lvId = "11",cardId = 1102020,lv = 93,bklv = 11,star = 3,mon = {id = 232,desc = "pt-10-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11012] = {
		[1] = {
			jlr = {cha = "pt-10",lvId = "12",cardId = 1101007,lv = 93,bklv = 11,star = 3,mon = {id = 215,desc = "pt-10-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",lvId = "12",cardId = 1102012,lv = 93,bklv = 11,star = 3,mon = {id = 239,desc = "pt-10-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-10",lvId = "12",cardId = 1101003,lv = 93,bklv = 11,star = 3,mon = {id = 201,desc = "pt-10-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",lvId = "12",cardId = 1102005,lv = 93,bklv = 11,star = 3,mon = {id = 227,desc = "pt-10-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-10",lvId = "12",cardId = 1101014,lv = 93,bklv = 11,star = 3,mon = {id = 211,desc = "pt-10-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",lvId = "12",cardId = 1102020,lv = 93,bklv = 11,star = 3,mon = {id = 235,desc = "pt-10-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11013] = {
		[1] = {
			jlr = {cha = "pt-10",lvId = "13",cardId = 1101007,lv = 94,bklv = 11,star = 3,mon = {id = 209,desc = "pt-10-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",lvId = "13",cardId = 1102012,lv = 94,bklv = 11,star = 3,mon = {id = 232,desc = "pt-10-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-10",lvId = "13",cardId = 1101003,lv = 94,bklv = 11,star = 3,mon = {id = 208,desc = "pt-10-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",lvId = "13",cardId = 1102005,lv = 94,bklv = 11,star = 3,mon = {id = 231,desc = "pt-10-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-10",lvId = "13",cardId = 1101014,lv = 94,bklv = 11,star = 3,mon = {id = 212,desc = "pt-10-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",lvId = "13",cardId = 1102020,lv = 94,bklv = 11,star = 3,mon = {id = 236,desc = "pt-10-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11014] = {
		[1] = {
			jlr = {cha = "pt-10",lvId = "14",cardId = 1101007,lv = 94,bklv = 11,star = 3,mon = {id = 207,desc = "pt-10-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",lvId = "14",cardId = 1102012,lv = 94,bklv = 11,star = 3,mon = {id = 227,desc = "pt-10-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-10",lvId = "14",cardId = 1101003,lv = 94,bklv = 11,star = 3,mon = {id = 207,desc = "pt-10-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",lvId = "14",cardId = 1102005,lv = 94,bklv = 11,star = 3,mon = {id = 221,desc = "pt-10-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-10",lvId = "14",cardId = 1101014,lv = 94,bklv = 11,star = 3,mon = {id = 211,desc = "pt-10-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",lvId = "14",cardId = 1102020,lv = 94,bklv = 11,star = 3,mon = {id = 235,desc = "pt-10-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11015] = {
		[1] = {
			jlr = {cha = "pt-10",lvId = "15",cardId = 1101007,lv = 94,bklv = 11,star = 3,mon = {id = 205,desc = "pt-10-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",lvId = "15",cardId = 1102012,lv = 94,bklv = 11,star = 3,mon = {id = 219,desc = "pt-10-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-10",lvId = "15",cardId = 1101003,lv = 94,bklv = 11,star = 3,mon = {id = 204,desc = "pt-10-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",lvId = "15",cardId = 1102005,lv = 94,bklv = 11,star = 3,mon = {id = 224,desc = "pt-10-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-10",lvId = "15",cardId = 1101014,lv = 94,bklv = 11,star = 3,mon = {id = 207,desc = "pt-10-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",lvId = "15",cardId = 1102020,lv = 94,bklv = 11,star = 3,mon = {id = 228,desc = "pt-10-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11101] = {
		[1] = {
			jlr = {cha = "pt-11",lvId = "1",cardId = 1101007,lv = 100,bklv = 13,star = 3,mon = {id = 212,desc = "pt-11-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",lvId = "1",cardId = 1102012,lv = 100,bklv = 13,star = 3,mon = {id = 236,desc = "pt-11-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-11",lvId = "1",cardId = 1101003,lv = 100,bklv = 13,star = 3,mon = {id = 208,desc = "pt-11-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",lvId = "1",cardId = 1102005,lv = 100,bklv = 13,star = 3,mon = {id = 231,desc = "pt-11-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-11",lvId = "1",cardId = 1101014,lv = 100,bklv = 13,star = 3,mon = {id = 213,desc = "pt-11-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",lvId = "1",cardId = 1102020,lv = 100,bklv = 13,star = 3,mon = {id = 237,desc = "pt-11-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11102] = {
		[1] = {
			jlr = {cha = "pt-11",lvId = "2",cardId = 1101007,lv = 100,bklv = 13,star = 3,mon = {id = 201,desc = "pt-11-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",lvId = "2",cardId = 1102012,lv = 100,bklv = 13,star = 3,mon = {id = 220,desc = "pt-11-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-11",lvId = "2",cardId = 1101003,lv = 100,bklv = 13,star = 3,mon = {id = 203,desc = "pt-11-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",lvId = "2",cardId = 1102005,lv = 100,bklv = 13,star = 3,mon = {id = 223,desc = "pt-11-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-11",lvId = "2",cardId = 1101014,lv = 100,bklv = 13,star = 3,mon = {id = 214,desc = "pt-11-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",lvId = "2",cardId = 1102020,lv = 100,bklv = 13,star = 3,mon = {id = 238,desc = "pt-11-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11103] = {
		[1] = {
			jlr = {cha = "pt-11",lvId = "3",cardId = 1101007,lv = 100,bklv = 13,star = 3,mon = {id = 212,desc = "pt-11-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",lvId = "3",cardId = 1102012,lv = 100,bklv = 13,star = 3,mon = {id = 236,desc = "pt-11-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-11",lvId = "3",cardId = 1101003,lv = 100,bklv = 13,star = 3,mon = {id = 208,desc = "pt-11-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",lvId = "3",cardId = 1102005,lv = 100,bklv = 13,star = 3,mon = {id = 231,desc = "pt-11-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-11",lvId = "3",cardId = 1101014,lv = 100,bklv = 13,star = 3,mon = {id = 209,desc = "pt-11-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",lvId = "3",cardId = 1102020,lv = 100,bklv = 13,star = 3,mon = {id = 232,desc = "pt-11-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11104] = {
		[1] = {
			jlr = {cha = "pt-11",lvId = "4",cardId = 1101007,lv = 101,bklv = 13,star = 3,mon = {id = 215,desc = "pt-11-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",lvId = "4",cardId = 1102012,lv = 101,bklv = 13,star = 3,mon = {id = 239,desc = "pt-11-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-11",lvId = "4",cardId = 1101003,lv = 101,bklv = 13,star = 3,mon = {id = 201,desc = "pt-11-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",lvId = "4",cardId = 1102005,lv = 101,bklv = 13,star = 3,mon = {id = 227,desc = "pt-11-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-11",lvId = "4",cardId = 1101014,lv = 101,bklv = 13,star = 3,mon = {id = 211,desc = "pt-11-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",lvId = "4",cardId = 1102020,lv = 101,bklv = 13,star = 3,mon = {id = 235,desc = "pt-11-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11105] = {
		[1] = {
			jlr = {cha = "pt-11",lvId = "5",cardId = 1101007,lv = 101,bklv = 13,star = 3,mon = {id = 206,desc = "pt-11-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",lvId = "5",cardId = 1102012,lv = 101,bklv = 13,star = 3,mon = {id = 225,desc = "pt-11-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-11",lvId = "5",cardId = 1101003,lv = 101,bklv = 13,star = 3,mon = {id = 203,desc = "pt-11-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",lvId = "5",cardId = 1102005,lv = 101,bklv = 13,star = 3,mon = {id = 223,desc = "pt-11-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-11",lvId = "5",cardId = 1101014,lv = 101,bklv = 13,star = 3,mon = {id = 212,desc = "pt-11-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",lvId = "5",cardId = 1102020,lv = 101,bklv = 13,star = 3,mon = {id = 236,desc = "pt-11-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11106] = {
		[1] = {
			jlr = {cha = "pt-11",lvId = "6",cardId = 1101007,lv = 101,bklv = 13,star = 3,mon = {id = 209,desc = "pt-11-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",lvId = "6",cardId = 1102012,lv = 101,bklv = 13,star = 3,mon = {id = 232,desc = "pt-11-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-11",lvId = "6",cardId = 1101003,lv = 101,bklv = 13,star = 3,mon = {id = 208,desc = "pt-11-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",lvId = "6",cardId = 1102005,lv = 101,bklv = 13,star = 3,mon = {id = 231,desc = "pt-11-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-11",lvId = "6",cardId = 1101014,lv = 101,bklv = 13,star = 3,mon = {id = 212,desc = "pt-11-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",lvId = "6",cardId = 1102020,lv = 101,bklv = 13,star = 3,mon = {id = 236,desc = "pt-11-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11107] = {
		[1] = {
			jlr = {cha = "pt-11",lvId = "7",cardId = 1101007,lv = 102,bklv = 13,star = 3,mon = {id = 207,desc = "pt-11-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",lvId = "7",cardId = 1102012,lv = 102,bklv = 13,star = 3,mon = {id = 227,desc = "pt-11-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-11",lvId = "7",cardId = 1101003,lv = 102,bklv = 13,star = 3,mon = {id = 207,desc = "pt-11-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",lvId = "7",cardId = 1102005,lv = 102,bklv = 13,star = 3,mon = {id = 221,desc = "pt-11-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-11",lvId = "7",cardId = 1101014,lv = 102,bklv = 13,star = 3,mon = {id = 211,desc = "pt-11-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",lvId = "7",cardId = 1102020,lv = 102,bklv = 13,star = 3,mon = {id = 235,desc = "pt-11-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11108] = {
		[1] = {
			jlr = {cha = "pt-11",lvId = "8",cardId = 1101007,lv = 102,bklv = 13,star = 3,mon = {id = 207,desc = "pt-11-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",lvId = "8",cardId = 1102012,lv = 102,bklv = 13,star = 3,mon = {id = 230,desc = "pt-11-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-11",lvId = "8",cardId = 1101003,lv = 102,bklv = 13,star = 3,mon = {id = 205,desc = "pt-11-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",lvId = "8",cardId = 1102005,lv = 102,bklv = 13,star = 3,mon = {id = 229,desc = "pt-11-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-11",lvId = "8",cardId = 1101014,lv = 102,bklv = 13,star = 3,mon = {id = 210,desc = "pt-11-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",lvId = "8",cardId = 1102020,lv = 102,bklv = 13,star = 3,mon = {id = 234,desc = "pt-11-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11109] = {
		[1] = {
			jlr = {cha = "pt-11",lvId = "9",cardId = 1101007,lv = 102,bklv = 13,star = 3,mon = {id = 212,desc = "pt-11-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",lvId = "9",cardId = 1102012,lv = 102,bklv = 13,star = 3,mon = {id = 236,desc = "pt-11-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-11",lvId = "9",cardId = 1101003,lv = 102,bklv = 13,star = 3,mon = {id = 208,desc = "pt-11-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",lvId = "9",cardId = 1102005,lv = 102,bklv = 13,star = 3,mon = {id = 231,desc = "pt-11-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-11",lvId = "9",cardId = 1101014,lv = 102,bklv = 13,star = 3,mon = {id = 209,desc = "pt-11-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",lvId = "9",cardId = 1102020,lv = 102,bklv = 13,star = 3,mon = {id = 232,desc = "pt-11-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11110] = {
		[1] = {
			jlr = {cha = "pt-11",lvId = "10",cardId = 1101007,lv = 103,bklv = 13,star = 3,mon = {id = 201,desc = "pt-11-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",lvId = "10",cardId = 1102012,lv = 103,bklv = 13,star = 3,mon = {id = 220,desc = "pt-11-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-11",lvId = "10",cardId = 1101003,lv = 103,bklv = 13,star = 3,mon = {id = 203,desc = "pt-11-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",lvId = "10",cardId = 1102005,lv = 103,bklv = 13,star = 3,mon = {id = 223,desc = "pt-11-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-11",lvId = "10",cardId = 1101014,lv = 103,bklv = 13,star = 3,mon = {id = 214,desc = "pt-11-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",lvId = "10",cardId = 1102020,lv = 103,bklv = 13,star = 3,mon = {id = 238,desc = "pt-11-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11111] = {
		[1] = {
			jlr = {cha = "pt-11",lvId = "11",cardId = 1101007,lv = 103,bklv = 13,star = 3,mon = {id = 212,desc = "pt-11-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",lvId = "11",cardId = 1102012,lv = 103,bklv = 13,star = 3,mon = {id = 236,desc = "pt-11-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-11",lvId = "11",cardId = 1101003,lv = 103,bklv = 13,star = 3,mon = {id = 208,desc = "pt-11-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",lvId = "11",cardId = 1102005,lv = 103,bklv = 13,star = 3,mon = {id = 231,desc = "pt-11-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-11",lvId = "11",cardId = 1101014,lv = 103,bklv = 13,star = 3,mon = {id = 209,desc = "pt-11-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",lvId = "11",cardId = 1102020,lv = 103,bklv = 13,star = 3,mon = {id = 232,desc = "pt-11-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11112] = {
		[1] = {
			jlr = {cha = "pt-11",lvId = "12",cardId = 1101007,lv = 103,bklv = 13,star = 3,mon = {id = 215,desc = "pt-11-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",lvId = "12",cardId = 1102012,lv = 103,bklv = 13,star = 3,mon = {id = 239,desc = "pt-11-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-11",lvId = "12",cardId = 1101003,lv = 103,bklv = 13,star = 3,mon = {id = 201,desc = "pt-11-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",lvId = "12",cardId = 1102005,lv = 103,bklv = 13,star = 3,mon = {id = 227,desc = "pt-11-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-11",lvId = "12",cardId = 1101014,lv = 103,bklv = 13,star = 3,mon = {id = 211,desc = "pt-11-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",lvId = "12",cardId = 1102020,lv = 103,bklv = 13,star = 3,mon = {id = 235,desc = "pt-11-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11113] = {
		[1] = {
			jlr = {cha = "pt-11",lvId = "13",cardId = 1101007,lv = 104,bklv = 13,star = 3,mon = {id = 209,desc = "pt-11-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",lvId = "13",cardId = 1102012,lv = 104,bklv = 13,star = 3,mon = {id = 232,desc = "pt-11-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-11",lvId = "13",cardId = 1101003,lv = 104,bklv = 13,star = 3,mon = {id = 208,desc = "pt-11-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",lvId = "13",cardId = 1102005,lv = 104,bklv = 13,star = 3,mon = {id = 231,desc = "pt-11-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-11",lvId = "13",cardId = 1101014,lv = 104,bklv = 13,star = 3,mon = {id = 212,desc = "pt-11-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",lvId = "13",cardId = 1102020,lv = 104,bklv = 13,star = 3,mon = {id = 236,desc = "pt-11-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11114] = {
		[1] = {
			jlr = {cha = "pt-11",lvId = "14",cardId = 1101007,lv = 104,bklv = 13,star = 3,mon = {id = 207,desc = "pt-11-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",lvId = "14",cardId = 1102012,lv = 104,bklv = 13,star = 3,mon = {id = 227,desc = "pt-11-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-11",lvId = "14",cardId = 1101003,lv = 104,bklv = 13,star = 3,mon = {id = 207,desc = "pt-11-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",lvId = "14",cardId = 1102005,lv = 104,bklv = 13,star = 3,mon = {id = 221,desc = "pt-11-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-11",lvId = "14",cardId = 1101014,lv = 104,bklv = 13,star = 3,mon = {id = 211,desc = "pt-11-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",lvId = "14",cardId = 1102020,lv = 104,bklv = 13,star = 3,mon = {id = 235,desc = "pt-11-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11115] = {
		[1] = {
			jlr = {cha = "pt-11",lvId = "15",cardId = 1101007,lv = 104,bklv = 13,star = 3,mon = {id = 205,desc = "pt-11-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",lvId = "15",cardId = 1102012,lv = 104,bklv = 13,star = 3,mon = {id = 219,desc = "pt-11-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-11",lvId = "15",cardId = 1101003,lv = 104,bklv = 13,star = 3,mon = {id = 204,desc = "pt-11-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",lvId = "15",cardId = 1102005,lv = 104,bklv = 13,star = 3,mon = {id = 224,desc = "pt-11-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-11",lvId = "15",cardId = 1101014,lv = 104,bklv = 13,star = 3,mon = {id = 207,desc = "pt-11-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",lvId = "15",cardId = 1102020,lv = 104,bklv = 13,star = 3,mon = {id = 228,desc = "pt-11-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11201] = {
		[1] = {
			jlr = {cha = "pt-12",lvId = "1",cardId = 1101007,lv = 110,bklv = 15,star = 3,mon = {id = 212,desc = "pt-12-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",lvId = "1",cardId = 1102012,lv = 110,bklv = 15,star = 3,mon = {id = 236,desc = "pt-12-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-12",lvId = "1",cardId = 1101003,lv = 110,bklv = 15,star = 3,mon = {id = 208,desc = "pt-12-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",lvId = "1",cardId = 1102005,lv = 110,bklv = 15,star = 3,mon = {id = 231,desc = "pt-12-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-12",lvId = "1",cardId = 1101014,lv = 110,bklv = 15,star = 3,mon = {id = 213,desc = "pt-12-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",lvId = "1",cardId = 1102020,lv = 110,bklv = 15,star = 3,mon = {id = 237,desc = "pt-12-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11202] = {
		[1] = {
			jlr = {cha = "pt-12",lvId = "2",cardId = 1101007,lv = 110,bklv = 15,star = 3,mon = {id = 201,desc = "pt-12-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",lvId = "2",cardId = 1102012,lv = 110,bklv = 15,star = 3,mon = {id = 220,desc = "pt-12-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-12",lvId = "2",cardId = 1101003,lv = 110,bklv = 15,star = 3,mon = {id = 203,desc = "pt-12-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",lvId = "2",cardId = 1102005,lv = 110,bklv = 15,star = 3,mon = {id = 223,desc = "pt-12-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-12",lvId = "2",cardId = 1101014,lv = 110,bklv = 15,star = 3,mon = {id = 214,desc = "pt-12-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",lvId = "2",cardId = 1102020,lv = 110,bklv = 15,star = 3,mon = {id = 238,desc = "pt-12-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11203] = {
		[1] = {
			jlr = {cha = "pt-12",lvId = "3",cardId = 1101007,lv = 110,bklv = 15,star = 3,mon = {id = 212,desc = "pt-12-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",lvId = "3",cardId = 1102012,lv = 110,bklv = 15,star = 3,mon = {id = 236,desc = "pt-12-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-12",lvId = "3",cardId = 1101003,lv = 110,bklv = 15,star = 3,mon = {id = 208,desc = "pt-12-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",lvId = "3",cardId = 1102005,lv = 110,bklv = 15,star = 3,mon = {id = 231,desc = "pt-12-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-12",lvId = "3",cardId = 1101014,lv = 110,bklv = 15,star = 3,mon = {id = 209,desc = "pt-12-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",lvId = "3",cardId = 1102020,lv = 110,bklv = 15,star = 3,mon = {id = 232,desc = "pt-12-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11204] = {
		[1] = {
			jlr = {cha = "pt-12",lvId = "4",cardId = 1101007,lv = 111,bklv = 15,star = 3,mon = {id = 215,desc = "pt-12-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",lvId = "4",cardId = 1102012,lv = 111,bklv = 15,star = 3,mon = {id = 239,desc = "pt-12-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-12",lvId = "4",cardId = 1101003,lv = 111,bklv = 15,star = 3,mon = {id = 201,desc = "pt-12-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",lvId = "4",cardId = 1102005,lv = 111,bklv = 15,star = 3,mon = {id = 227,desc = "pt-12-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-12",lvId = "4",cardId = 1101014,lv = 111,bklv = 15,star = 3,mon = {id = 211,desc = "pt-12-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",lvId = "4",cardId = 1102020,lv = 111,bklv = 15,star = 3,mon = {id = 235,desc = "pt-12-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11205] = {
		[1] = {
			jlr = {cha = "pt-12",lvId = "5",cardId = 1101007,lv = 111,bklv = 15,star = 3,mon = {id = 206,desc = "pt-12-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",lvId = "5",cardId = 1102012,lv = 111,bklv = 15,star = 3,mon = {id = 225,desc = "pt-12-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-12",lvId = "5",cardId = 1101003,lv = 111,bklv = 15,star = 3,mon = {id = 203,desc = "pt-12-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",lvId = "5",cardId = 1102005,lv = 111,bklv = 15,star = 3,mon = {id = 223,desc = "pt-12-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-12",lvId = "5",cardId = 1101014,lv = 111,bklv = 15,star = 3,mon = {id = 212,desc = "pt-12-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",lvId = "5",cardId = 1102020,lv = 111,bklv = 15,star = 3,mon = {id = 236,desc = "pt-12-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11206] = {
		[1] = {
			jlr = {cha = "pt-12",lvId = "6",cardId = 1101007,lv = 111,bklv = 15,star = 3,mon = {id = 209,desc = "pt-12-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",lvId = "6",cardId = 1102012,lv = 111,bklv = 15,star = 3,mon = {id = 232,desc = "pt-12-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-12",lvId = "6",cardId = 1101003,lv = 111,bklv = 15,star = 3,mon = {id = 208,desc = "pt-12-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",lvId = "6",cardId = 1102005,lv = 111,bklv = 15,star = 3,mon = {id = 231,desc = "pt-12-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-12",lvId = "6",cardId = 1101014,lv = 111,bklv = 15,star = 3,mon = {id = 212,desc = "pt-12-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",lvId = "6",cardId = 1102020,lv = 111,bklv = 15,star = 3,mon = {id = 236,desc = "pt-12-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11207] = {
		[1] = {
			jlr = {cha = "pt-12",lvId = "7",cardId = 1101007,lv = 112,bklv = 15,star = 3,mon = {id = 207,desc = "pt-12-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",lvId = "7",cardId = 1102012,lv = 112,bklv = 15,star = 3,mon = {id = 227,desc = "pt-12-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-12",lvId = "7",cardId = 1101003,lv = 112,bklv = 15,star = 3,mon = {id = 207,desc = "pt-12-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",lvId = "7",cardId = 1102005,lv = 112,bklv = 15,star = 3,mon = {id = 221,desc = "pt-12-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-12",lvId = "7",cardId = 1101014,lv = 112,bklv = 15,star = 3,mon = {id = 211,desc = "pt-12-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",lvId = "7",cardId = 1102020,lv = 112,bklv = 15,star = 3,mon = {id = 235,desc = "pt-12-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11208] = {
		[1] = {
			jlr = {cha = "pt-12",lvId = "8",cardId = 1101007,lv = 112,bklv = 15,star = 3,mon = {id = 207,desc = "pt-12-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",lvId = "8",cardId = 1102012,lv = 112,bklv = 15,star = 3,mon = {id = 230,desc = "pt-12-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-12",lvId = "8",cardId = 1101003,lv = 112,bklv = 15,star = 3,mon = {id = 205,desc = "pt-12-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",lvId = "8",cardId = 1102005,lv = 112,bklv = 15,star = 3,mon = {id = 229,desc = "pt-12-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-12",lvId = "8",cardId = 1101014,lv = 112,bklv = 15,star = 3,mon = {id = 210,desc = "pt-12-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",lvId = "8",cardId = 1102020,lv = 112,bklv = 15,star = 3,mon = {id = 234,desc = "pt-12-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11209] = {
		[1] = {
			jlr = {cha = "pt-12",lvId = "9",cardId = 1101007,lv = 112,bklv = 15,star = 3,mon = {id = 212,desc = "pt-12-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",lvId = "9",cardId = 1102012,lv = 112,bklv = 15,star = 3,mon = {id = 236,desc = "pt-12-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-12",lvId = "9",cardId = 1101003,lv = 112,bklv = 15,star = 3,mon = {id = 208,desc = "pt-12-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",lvId = "9",cardId = 1102005,lv = 112,bklv = 15,star = 3,mon = {id = 231,desc = "pt-12-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-12",lvId = "9",cardId = 1101014,lv = 112,bklv = 15,star = 3,mon = {id = 209,desc = "pt-12-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",lvId = "9",cardId = 1102020,lv = 112,bklv = 15,star = 3,mon = {id = 232,desc = "pt-12-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11210] = {
		[1] = {
			jlr = {cha = "pt-12",lvId = "10",cardId = 1101007,lv = 113,bklv = 15,star = 3,mon = {id = 201,desc = "pt-12-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",lvId = "10",cardId = 1102012,lv = 113,bklv = 15,star = 3,mon = {id = 220,desc = "pt-12-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-12",lvId = "10",cardId = 1101003,lv = 113,bklv = 15,star = 3,mon = {id = 203,desc = "pt-12-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",lvId = "10",cardId = 1102005,lv = 113,bklv = 15,star = 3,mon = {id = 223,desc = "pt-12-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-12",lvId = "10",cardId = 1101014,lv = 113,bklv = 15,star = 3,mon = {id = 214,desc = "pt-12-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",lvId = "10",cardId = 1102020,lv = 113,bklv = 15,star = 3,mon = {id = 238,desc = "pt-12-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11211] = {
		[1] = {
			jlr = {cha = "pt-12",lvId = "11",cardId = 1101007,lv = 113,bklv = 15,star = 3,mon = {id = 212,desc = "pt-12-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",lvId = "11",cardId = 1102012,lv = 113,bklv = 15,star = 3,mon = {id = 236,desc = "pt-12-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-12",lvId = "11",cardId = 1101003,lv = 113,bklv = 15,star = 3,mon = {id = 208,desc = "pt-12-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",lvId = "11",cardId = 1102005,lv = 113,bklv = 15,star = 3,mon = {id = 231,desc = "pt-12-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-12",lvId = "11",cardId = 1101014,lv = 113,bklv = 15,star = 3,mon = {id = 209,desc = "pt-12-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",lvId = "11",cardId = 1102020,lv = 113,bklv = 15,star = 3,mon = {id = 232,desc = "pt-12-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11212] = {
		[1] = {
			jlr = {cha = "pt-12",lvId = "12",cardId = 1101007,lv = 113,bklv = 15,star = 3,mon = {id = 215,desc = "pt-12-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",lvId = "12",cardId = 1102012,lv = 113,bklv = 15,star = 3,mon = {id = 239,desc = "pt-12-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-12",lvId = "12",cardId = 1101003,lv = 113,bklv = 15,star = 3,mon = {id = 201,desc = "pt-12-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",lvId = "12",cardId = 1102005,lv = 113,bklv = 15,star = 3,mon = {id = 227,desc = "pt-12-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-12",lvId = "12",cardId = 1101014,lv = 113,bklv = 15,star = 3,mon = {id = 211,desc = "pt-12-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",lvId = "12",cardId = 1102020,lv = 113,bklv = 15,star = 3,mon = {id = 235,desc = "pt-12-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11213] = {
		[1] = {
			jlr = {cha = "pt-12",lvId = "13",cardId = 1101007,lv = 114,bklv = 15,star = 3,mon = {id = 209,desc = "pt-12-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",lvId = "13",cardId = 1102012,lv = 114,bklv = 15,star = 3,mon = {id = 232,desc = "pt-12-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-12",lvId = "13",cardId = 1101003,lv = 114,bklv = 15,star = 3,mon = {id = 208,desc = "pt-12-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",lvId = "13",cardId = 1102005,lv = 114,bklv = 15,star = 3,mon = {id = 231,desc = "pt-12-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-12",lvId = "13",cardId = 1101014,lv = 114,bklv = 15,star = 3,mon = {id = 212,desc = "pt-12-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",lvId = "13",cardId = 1102020,lv = 114,bklv = 15,star = 3,mon = {id = 236,desc = "pt-12-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11214] = {
		[1] = {
			jlr = {cha = "pt-12",lvId = "14",cardId = 1101007,lv = 114,bklv = 15,star = 3,mon = {id = 207,desc = "pt-12-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",lvId = "14",cardId = 1102012,lv = 114,bklv = 15,star = 3,mon = {id = 227,desc = "pt-12-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-12",lvId = "14",cardId = 1101003,lv = 114,bklv = 15,star = 3,mon = {id = 207,desc = "pt-12-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",lvId = "14",cardId = 1102005,lv = 114,bklv = 15,star = 3,mon = {id = 221,desc = "pt-12-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-12",lvId = "14",cardId = 1101014,lv = 114,bklv = 15,star = 3,mon = {id = 211,desc = "pt-12-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",lvId = "14",cardId = 1102020,lv = 114,bklv = 15,star = 3,mon = {id = 235,desc = "pt-12-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11215] = {
		[1] = {
			jlr = {cha = "pt-12",lvId = "15",cardId = 1101007,lv = 114,bklv = 15,star = 3,mon = {id = 205,desc = "pt-12-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",lvId = "15",cardId = 1102012,lv = 114,bklv = 15,star = 3,mon = {id = 219,desc = "pt-12-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-12",lvId = "15",cardId = 1101003,lv = 114,bklv = 15,star = 3,mon = {id = 204,desc = "pt-12-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",lvId = "15",cardId = 1102005,lv = 114,bklv = 15,star = 3,mon = {id = 224,desc = "pt-12-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-12",lvId = "15",cardId = 1101014,lv = 114,bklv = 15,star = 3,mon = {id = 207,desc = "pt-12-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",lvId = "15",cardId = 1102020,lv = 114,bklv = 15,star = 3,mon = {id = 228,desc = "pt-12-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11301] = {
		[1] = {
			jlr = {cha = "pt-13",lvId = "1",cardId = 1101007,lv = 120,bklv = 17,star = 4,mon = {id = 212,desc = "pt-13-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",lvId = "1",cardId = 1102012,lv = 120,bklv = 17,star = 4,mon = {id = 236,desc = "pt-13-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-13",lvId = "1",cardId = 1101003,lv = 120,bklv = 17,star = 4,mon = {id = 208,desc = "pt-13-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",lvId = "1",cardId = 1102005,lv = 120,bklv = 17,star = 4,mon = {id = 231,desc = "pt-13-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-13",lvId = "1",cardId = 1101014,lv = 120,bklv = 17,star = 4,mon = {id = 213,desc = "pt-13-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",lvId = "1",cardId = 1102020,lv = 120,bklv = 17,star = 4,mon = {id = 237,desc = "pt-13-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11302] = {
		[1] = {
			jlr = {cha = "pt-13",lvId = "2",cardId = 1101007,lv = 120,bklv = 17,star = 4,mon = {id = 201,desc = "pt-13-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",lvId = "2",cardId = 1102012,lv = 120,bklv = 17,star = 4,mon = {id = 220,desc = "pt-13-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-13",lvId = "2",cardId = 1101003,lv = 120,bklv = 17,star = 4,mon = {id = 203,desc = "pt-13-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",lvId = "2",cardId = 1102005,lv = 120,bklv = 17,star = 4,mon = {id = 223,desc = "pt-13-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-13",lvId = "2",cardId = 1101014,lv = 120,bklv = 17,star = 4,mon = {id = 214,desc = "pt-13-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",lvId = "2",cardId = 1102020,lv = 120,bklv = 17,star = 4,mon = {id = 238,desc = "pt-13-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11303] = {
		[1] = {
			jlr = {cha = "pt-13",lvId = "3",cardId = 1101007,lv = 120,bklv = 17,star = 4,mon = {id = 212,desc = "pt-13-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",lvId = "3",cardId = 1102012,lv = 120,bklv = 17,star = 4,mon = {id = 236,desc = "pt-13-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-13",lvId = "3",cardId = 1101003,lv = 120,bklv = 17,star = 4,mon = {id = 208,desc = "pt-13-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",lvId = "3",cardId = 1102005,lv = 120,bklv = 17,star = 4,mon = {id = 231,desc = "pt-13-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-13",lvId = "3",cardId = 1101014,lv = 120,bklv = 17,star = 4,mon = {id = 209,desc = "pt-13-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",lvId = "3",cardId = 1102020,lv = 120,bklv = 17,star = 4,mon = {id = 232,desc = "pt-13-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11304] = {
		[1] = {
			jlr = {cha = "pt-13",lvId = "4",cardId = 1101007,lv = 121,bklv = 17,star = 4,mon = {id = 215,desc = "pt-13-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",lvId = "4",cardId = 1102012,lv = 121,bklv = 17,star = 4,mon = {id = 239,desc = "pt-13-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-13",lvId = "4",cardId = 1101003,lv = 121,bklv = 17,star = 4,mon = {id = 201,desc = "pt-13-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",lvId = "4",cardId = 1102005,lv = 121,bklv = 17,star = 4,mon = {id = 227,desc = "pt-13-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-13",lvId = "4",cardId = 1101014,lv = 121,bklv = 17,star = 4,mon = {id = 211,desc = "pt-13-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",lvId = "4",cardId = 1102020,lv = 121,bklv = 17,star = 4,mon = {id = 235,desc = "pt-13-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11305] = {
		[1] = {
			jlr = {cha = "pt-13",lvId = "5",cardId = 1101007,lv = 121,bklv = 17,star = 4,mon = {id = 206,desc = "pt-13-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",lvId = "5",cardId = 1102012,lv = 121,bklv = 17,star = 4,mon = {id = 225,desc = "pt-13-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-13",lvId = "5",cardId = 1101003,lv = 121,bklv = 17,star = 4,mon = {id = 203,desc = "pt-13-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",lvId = "5",cardId = 1102005,lv = 121,bklv = 17,star = 4,mon = {id = 223,desc = "pt-13-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-13",lvId = "5",cardId = 1101014,lv = 121,bklv = 17,star = 4,mon = {id = 212,desc = "pt-13-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",lvId = "5",cardId = 1102020,lv = 121,bklv = 17,star = 4,mon = {id = 236,desc = "pt-13-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11306] = {
		[1] = {
			jlr = {cha = "pt-13",lvId = "6",cardId = 1101007,lv = 121,bklv = 17,star = 4,mon = {id = 209,desc = "pt-13-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",lvId = "6",cardId = 1102012,lv = 121,bklv = 17,star = 4,mon = {id = 232,desc = "pt-13-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-13",lvId = "6",cardId = 1101003,lv = 121,bklv = 17,star = 4,mon = {id = 208,desc = "pt-13-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",lvId = "6",cardId = 1102005,lv = 121,bklv = 17,star = 4,mon = {id = 231,desc = "pt-13-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-13",lvId = "6",cardId = 1101014,lv = 121,bklv = 17,star = 4,mon = {id = 212,desc = "pt-13-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",lvId = "6",cardId = 1102020,lv = 121,bklv = 17,star = 4,mon = {id = 236,desc = "pt-13-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11307] = {
		[1] = {
			jlr = {cha = "pt-13",lvId = "7",cardId = 1101007,lv = 122,bklv = 17,star = 4,mon = {id = 207,desc = "pt-13-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",lvId = "7",cardId = 1102012,lv = 122,bklv = 17,star = 4,mon = {id = 227,desc = "pt-13-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-13",lvId = "7",cardId = 1101003,lv = 122,bklv = 17,star = 4,mon = {id = 207,desc = "pt-13-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",lvId = "7",cardId = 1102005,lv = 122,bklv = 17,star = 4,mon = {id = 221,desc = "pt-13-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-13",lvId = "7",cardId = 1101014,lv = 122,bklv = 17,star = 4,mon = {id = 211,desc = "pt-13-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",lvId = "7",cardId = 1102020,lv = 122,bklv = 17,star = 4,mon = {id = 235,desc = "pt-13-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11308] = {
		[1] = {
			jlr = {cha = "pt-13",lvId = "8",cardId = 1101007,lv = 122,bklv = 17,star = 4,mon = {id = 207,desc = "pt-13-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",lvId = "8",cardId = 1102012,lv = 122,bklv = 17,star = 4,mon = {id = 230,desc = "pt-13-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-13",lvId = "8",cardId = 1101003,lv = 122,bklv = 17,star = 4,mon = {id = 205,desc = "pt-13-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",lvId = "8",cardId = 1102005,lv = 122,bklv = 17,star = 4,mon = {id = 229,desc = "pt-13-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-13",lvId = "8",cardId = 1101014,lv = 122,bklv = 17,star = 4,mon = {id = 210,desc = "pt-13-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",lvId = "8",cardId = 1102020,lv = 122,bklv = 17,star = 4,mon = {id = 234,desc = "pt-13-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11309] = {
		[1] = {
			jlr = {cha = "pt-13",lvId = "9",cardId = 1101007,lv = 122,bklv = 17,star = 4,mon = {id = 212,desc = "pt-13-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",lvId = "9",cardId = 1102012,lv = 122,bklv = 17,star = 4,mon = {id = 236,desc = "pt-13-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-13",lvId = "9",cardId = 1101003,lv = 122,bklv = 17,star = 4,mon = {id = 208,desc = "pt-13-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",lvId = "9",cardId = 1102005,lv = 122,bklv = 17,star = 4,mon = {id = 231,desc = "pt-13-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-13",lvId = "9",cardId = 1101014,lv = 122,bklv = 17,star = 4,mon = {id = 209,desc = "pt-13-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",lvId = "9",cardId = 1102020,lv = 122,bklv = 17,star = 4,mon = {id = 232,desc = "pt-13-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11310] = {
		[1] = {
			jlr = {cha = "pt-13",lvId = "10",cardId = 1101007,lv = 123,bklv = 17,star = 4,mon = {id = 201,desc = "pt-13-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",lvId = "10",cardId = 1102012,lv = 123,bklv = 17,star = 4,mon = {id = 220,desc = "pt-13-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-13",lvId = "10",cardId = 1101003,lv = 123,bklv = 17,star = 4,mon = {id = 203,desc = "pt-13-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",lvId = "10",cardId = 1102005,lv = 123,bklv = 17,star = 4,mon = {id = 223,desc = "pt-13-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-13",lvId = "10",cardId = 1101014,lv = 123,bklv = 17,star = 4,mon = {id = 214,desc = "pt-13-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",lvId = "10",cardId = 1102020,lv = 123,bklv = 17,star = 4,mon = {id = 238,desc = "pt-13-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11311] = {
		[1] = {
			jlr = {cha = "pt-13",lvId = "11",cardId = 1101007,lv = 123,bklv = 17,star = 4,mon = {id = 212,desc = "pt-13-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",lvId = "11",cardId = 1102012,lv = 123,bklv = 17,star = 4,mon = {id = 236,desc = "pt-13-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-13",lvId = "11",cardId = 1101003,lv = 123,bklv = 17,star = 4,mon = {id = 208,desc = "pt-13-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",lvId = "11",cardId = 1102005,lv = 123,bklv = 17,star = 4,mon = {id = 231,desc = "pt-13-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-13",lvId = "11",cardId = 1101014,lv = 123,bklv = 17,star = 4,mon = {id = 209,desc = "pt-13-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",lvId = "11",cardId = 1102020,lv = 123,bklv = 17,star = 4,mon = {id = 232,desc = "pt-13-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11312] = {
		[1] = {
			jlr = {cha = "pt-13",lvId = "12",cardId = 1101007,lv = 123,bklv = 17,star = 4,mon = {id = 215,desc = "pt-13-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",lvId = "12",cardId = 1102012,lv = 123,bklv = 17,star = 4,mon = {id = 239,desc = "pt-13-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-13",lvId = "12",cardId = 1101003,lv = 123,bklv = 17,star = 4,mon = {id = 201,desc = "pt-13-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",lvId = "12",cardId = 1102005,lv = 123,bklv = 17,star = 4,mon = {id = 227,desc = "pt-13-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-13",lvId = "12",cardId = 1101014,lv = 123,bklv = 17,star = 4,mon = {id = 211,desc = "pt-13-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",lvId = "12",cardId = 1102020,lv = 123,bklv = 17,star = 4,mon = {id = 235,desc = "pt-13-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11313] = {
		[1] = {
			jlr = {cha = "pt-13",lvId = "13",cardId = 1101007,lv = 124,bklv = 17,star = 4,mon = {id = 209,desc = "pt-13-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",lvId = "13",cardId = 1102012,lv = 124,bklv = 17,star = 4,mon = {id = 232,desc = "pt-13-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-13",lvId = "13",cardId = 1101003,lv = 124,bklv = 17,star = 4,mon = {id = 208,desc = "pt-13-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",lvId = "13",cardId = 1102005,lv = 124,bklv = 17,star = 4,mon = {id = 231,desc = "pt-13-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-13",lvId = "13",cardId = 1101014,lv = 124,bklv = 17,star = 4,mon = {id = 212,desc = "pt-13-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",lvId = "13",cardId = 1102020,lv = 124,bklv = 17,star = 4,mon = {id = 236,desc = "pt-13-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11314] = {
		[1] = {
			jlr = {cha = "pt-13",lvId = "14",cardId = 1101007,lv = 124,bklv = 17,star = 4,mon = {id = 207,desc = "pt-13-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",lvId = "14",cardId = 1102012,lv = 124,bklv = 17,star = 4,mon = {id = 227,desc = "pt-13-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-13",lvId = "14",cardId = 1101003,lv = 124,bklv = 17,star = 4,mon = {id = 207,desc = "pt-13-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",lvId = "14",cardId = 1102005,lv = 124,bklv = 17,star = 4,mon = {id = 221,desc = "pt-13-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-13",lvId = "14",cardId = 1101014,lv = 124,bklv = 17,star = 4,mon = {id = 211,desc = "pt-13-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",lvId = "14",cardId = 1102020,lv = 124,bklv = 17,star = 4,mon = {id = 235,desc = "pt-13-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11315] = {
		[1] = {
			jlr = {cha = "pt-13",lvId = "15",cardId = 1101007,lv = 124,bklv = 17,star = 4,mon = {id = 205,desc = "pt-13-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",lvId = "15",cardId = 1102012,lv = 124,bklv = 17,star = 4,mon = {id = 219,desc = "pt-13-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-13",lvId = "15",cardId = 1101003,lv = 124,bklv = 17,star = 4,mon = {id = 204,desc = "pt-13-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",lvId = "15",cardId = 1102005,lv = 124,bklv = 17,star = 4,mon = {id = 224,desc = "pt-13-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-13",lvId = "15",cardId = 1101014,lv = 124,bklv = 17,star = 4,mon = {id = 207,desc = "pt-13-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",lvId = "15",cardId = 1102020,lv = 124,bklv = 17,star = 4,mon = {id = 228,desc = "pt-13-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11401] = {
		[1] = {
			jlr = {cha = "pt-14",lvId = "1",cardId = 1101007,lv = 130,bklv = 19,star = 4,mon = {id = 212,desc = "pt-14-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",lvId = "1",cardId = 1102012,lv = 130,bklv = 19,star = 4,mon = {id = 236,desc = "pt-14-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-14",lvId = "1",cardId = 1101003,lv = 130,bklv = 19,star = 4,mon = {id = 208,desc = "pt-14-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",lvId = "1",cardId = 1102005,lv = 130,bklv = 19,star = 4,mon = {id = 231,desc = "pt-14-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-14",lvId = "1",cardId = 1101014,lv = 130,bklv = 19,star = 4,mon = {id = 213,desc = "pt-14-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",lvId = "1",cardId = 1102020,lv = 130,bklv = 19,star = 4,mon = {id = 237,desc = "pt-14-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11402] = {
		[1] = {
			jlr = {cha = "pt-14",lvId = "2",cardId = 1101007,lv = 130,bklv = 19,star = 4,mon = {id = 201,desc = "pt-14-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",lvId = "2",cardId = 1102012,lv = 130,bklv = 19,star = 4,mon = {id = 220,desc = "pt-14-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-14",lvId = "2",cardId = 1101003,lv = 130,bklv = 19,star = 4,mon = {id = 203,desc = "pt-14-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",lvId = "2",cardId = 1102005,lv = 130,bklv = 19,star = 4,mon = {id = 223,desc = "pt-14-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-14",lvId = "2",cardId = 1101014,lv = 130,bklv = 19,star = 4,mon = {id = 214,desc = "pt-14-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",lvId = "2",cardId = 1102020,lv = 130,bklv = 19,star = 4,mon = {id = 238,desc = "pt-14-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11403] = {
		[1] = {
			jlr = {cha = "pt-14",lvId = "3",cardId = 1101007,lv = 130,bklv = 19,star = 4,mon = {id = 212,desc = "pt-14-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",lvId = "3",cardId = 1102012,lv = 130,bklv = 19,star = 4,mon = {id = 236,desc = "pt-14-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-14",lvId = "3",cardId = 1101003,lv = 130,bklv = 19,star = 4,mon = {id = 208,desc = "pt-14-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",lvId = "3",cardId = 1102005,lv = 130,bklv = 19,star = 4,mon = {id = 231,desc = "pt-14-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-14",lvId = "3",cardId = 1101014,lv = 130,bklv = 19,star = 4,mon = {id = 209,desc = "pt-14-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",lvId = "3",cardId = 1102020,lv = 130,bklv = 19,star = 4,mon = {id = 232,desc = "pt-14-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11404] = {
		[1] = {
			jlr = {cha = "pt-14",lvId = "4",cardId = 1101007,lv = 131,bklv = 19,star = 4,mon = {id = 215,desc = "pt-14-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",lvId = "4",cardId = 1102012,lv = 131,bklv = 19,star = 4,mon = {id = 239,desc = "pt-14-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-14",lvId = "4",cardId = 1101003,lv = 131,bklv = 19,star = 4,mon = {id = 201,desc = "pt-14-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",lvId = "4",cardId = 1102005,lv = 131,bklv = 19,star = 4,mon = {id = 227,desc = "pt-14-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-14",lvId = "4",cardId = 1101014,lv = 131,bklv = 19,star = 4,mon = {id = 211,desc = "pt-14-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",lvId = "4",cardId = 1102020,lv = 131,bklv = 19,star = 4,mon = {id = 235,desc = "pt-14-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11405] = {
		[1] = {
			jlr = {cha = "pt-14",lvId = "5",cardId = 1101007,lv = 131,bklv = 19,star = 4,mon = {id = 206,desc = "pt-14-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",lvId = "5",cardId = 1102012,lv = 131,bklv = 19,star = 4,mon = {id = 225,desc = "pt-14-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-14",lvId = "5",cardId = 1101003,lv = 131,bklv = 19,star = 4,mon = {id = 203,desc = "pt-14-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",lvId = "5",cardId = 1102005,lv = 131,bklv = 19,star = 4,mon = {id = 223,desc = "pt-14-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-14",lvId = "5",cardId = 1101014,lv = 131,bklv = 19,star = 4,mon = {id = 212,desc = "pt-14-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",lvId = "5",cardId = 1102020,lv = 131,bklv = 19,star = 4,mon = {id = 236,desc = "pt-14-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11406] = {
		[1] = {
			jlr = {cha = "pt-14",lvId = "6",cardId = 1101007,lv = 131,bklv = 19,star = 4,mon = {id = 209,desc = "pt-14-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",lvId = "6",cardId = 1102012,lv = 131,bklv = 19,star = 4,mon = {id = 232,desc = "pt-14-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-14",lvId = "6",cardId = 1101003,lv = 131,bklv = 19,star = 4,mon = {id = 208,desc = "pt-14-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",lvId = "6",cardId = 1102005,lv = 131,bklv = 19,star = 4,mon = {id = 231,desc = "pt-14-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-14",lvId = "6",cardId = 1101014,lv = 131,bklv = 19,star = 4,mon = {id = 212,desc = "pt-14-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",lvId = "6",cardId = 1102020,lv = 131,bklv = 19,star = 4,mon = {id = 236,desc = "pt-14-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11407] = {
		[1] = {
			jlr = {cha = "pt-14",lvId = "7",cardId = 1101007,lv = 132,bklv = 19,star = 4,mon = {id = 207,desc = "pt-14-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",lvId = "7",cardId = 1102012,lv = 132,bklv = 19,star = 4,mon = {id = 227,desc = "pt-14-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-14",lvId = "7",cardId = 1101003,lv = 132,bklv = 19,star = 4,mon = {id = 207,desc = "pt-14-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",lvId = "7",cardId = 1102005,lv = 132,bklv = 19,star = 4,mon = {id = 221,desc = "pt-14-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-14",lvId = "7",cardId = 1101014,lv = 132,bklv = 19,star = 4,mon = {id = 211,desc = "pt-14-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",lvId = "7",cardId = 1102020,lv = 132,bklv = 19,star = 4,mon = {id = 235,desc = "pt-14-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11408] = {
		[1] = {
			jlr = {cha = "pt-14",lvId = "8",cardId = 1101007,lv = 132,bklv = 19,star = 4,mon = {id = 207,desc = "pt-14-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",lvId = "8",cardId = 1102012,lv = 132,bklv = 19,star = 4,mon = {id = 230,desc = "pt-14-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-14",lvId = "8",cardId = 1101003,lv = 132,bklv = 19,star = 4,mon = {id = 205,desc = "pt-14-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",lvId = "8",cardId = 1102005,lv = 132,bklv = 19,star = 4,mon = {id = 229,desc = "pt-14-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-14",lvId = "8",cardId = 1101014,lv = 132,bklv = 19,star = 4,mon = {id = 210,desc = "pt-14-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",lvId = "8",cardId = 1102020,lv = 132,bklv = 19,star = 4,mon = {id = 234,desc = "pt-14-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11409] = {
		[1] = {
			jlr = {cha = "pt-14",lvId = "9",cardId = 1101007,lv = 132,bklv = 19,star = 4,mon = {id = 212,desc = "pt-14-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",lvId = "9",cardId = 1102012,lv = 132,bklv = 19,star = 4,mon = {id = 236,desc = "pt-14-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-14",lvId = "9",cardId = 1101003,lv = 132,bklv = 19,star = 4,mon = {id = 208,desc = "pt-14-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",lvId = "9",cardId = 1102005,lv = 132,bklv = 19,star = 4,mon = {id = 231,desc = "pt-14-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-14",lvId = "9",cardId = 1101014,lv = 132,bklv = 19,star = 4,mon = {id = 209,desc = "pt-14-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",lvId = "9",cardId = 1102020,lv = 132,bklv = 19,star = 4,mon = {id = 232,desc = "pt-14-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11410] = {
		[1] = {
			jlr = {cha = "pt-14",lvId = "10",cardId = 1101007,lv = 133,bklv = 19,star = 4,mon = {id = 201,desc = "pt-14-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",lvId = "10",cardId = 1102012,lv = 133,bklv = 19,star = 4,mon = {id = 220,desc = "pt-14-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-14",lvId = "10",cardId = 1101003,lv = 133,bklv = 19,star = 4,mon = {id = 203,desc = "pt-14-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",lvId = "10",cardId = 1102005,lv = 133,bklv = 19,star = 4,mon = {id = 223,desc = "pt-14-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-14",lvId = "10",cardId = 1101014,lv = 133,bklv = 19,star = 4,mon = {id = 214,desc = "pt-14-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",lvId = "10",cardId = 1102020,lv = 133,bklv = 19,star = 4,mon = {id = 238,desc = "pt-14-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11411] = {
		[1] = {
			jlr = {cha = "pt-14",lvId = "11",cardId = 1101007,lv = 133,bklv = 19,star = 4,mon = {id = 212,desc = "pt-14-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",lvId = "11",cardId = 1102012,lv = 133,bklv = 19,star = 4,mon = {id = 236,desc = "pt-14-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-14",lvId = "11",cardId = 1101003,lv = 133,bklv = 19,star = 4,mon = {id = 208,desc = "pt-14-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",lvId = "11",cardId = 1102005,lv = 133,bklv = 19,star = 4,mon = {id = 231,desc = "pt-14-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-14",lvId = "11",cardId = 1101014,lv = 133,bklv = 19,star = 4,mon = {id = 209,desc = "pt-14-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",lvId = "11",cardId = 1102020,lv = 133,bklv = 19,star = 4,mon = {id = 232,desc = "pt-14-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11412] = {
		[1] = {
			jlr = {cha = "pt-14",lvId = "12",cardId = 1101007,lv = 133,bklv = 19,star = 4,mon = {id = 215,desc = "pt-14-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",lvId = "12",cardId = 1102012,lv = 133,bklv = 19,star = 4,mon = {id = 239,desc = "pt-14-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-14",lvId = "12",cardId = 1101003,lv = 133,bklv = 19,star = 4,mon = {id = 201,desc = "pt-14-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",lvId = "12",cardId = 1102005,lv = 133,bklv = 19,star = 4,mon = {id = 227,desc = "pt-14-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-14",lvId = "12",cardId = 1101014,lv = 133,bklv = 19,star = 4,mon = {id = 211,desc = "pt-14-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",lvId = "12",cardId = 1102020,lv = 133,bklv = 19,star = 4,mon = {id = 235,desc = "pt-14-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11413] = {
		[1] = {
			jlr = {cha = "pt-14",lvId = "13",cardId = 1101007,lv = 134,bklv = 19,star = 4,mon = {id = 209,desc = "pt-14-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",lvId = "13",cardId = 1102012,lv = 134,bklv = 19,star = 4,mon = {id = 232,desc = "pt-14-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-14",lvId = "13",cardId = 1101003,lv = 134,bklv = 19,star = 4,mon = {id = 208,desc = "pt-14-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",lvId = "13",cardId = 1102005,lv = 134,bklv = 19,star = 4,mon = {id = 231,desc = "pt-14-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-14",lvId = "13",cardId = 1101014,lv = 134,bklv = 19,star = 4,mon = {id = 212,desc = "pt-14-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",lvId = "13",cardId = 1102020,lv = 134,bklv = 19,star = 4,mon = {id = 236,desc = "pt-14-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11414] = {
		[1] = {
			jlr = {cha = "pt-14",lvId = "14",cardId = 1101007,lv = 134,bklv = 19,star = 4,mon = {id = 207,desc = "pt-14-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",lvId = "14",cardId = 1102012,lv = 134,bklv = 19,star = 4,mon = {id = 227,desc = "pt-14-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-14",lvId = "14",cardId = 1101003,lv = 134,bklv = 19,star = 4,mon = {id = 207,desc = "pt-14-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",lvId = "14",cardId = 1102005,lv = 134,bklv = 19,star = 4,mon = {id = 221,desc = "pt-14-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-14",lvId = "14",cardId = 1101014,lv = 134,bklv = 19,star = 4,mon = {id = 211,desc = "pt-14-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",lvId = "14",cardId = 1102020,lv = 134,bklv = 19,star = 4,mon = {id = 235,desc = "pt-14-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11415] = {
		[1] = {
			jlr = {cha = "pt-14",lvId = "15",cardId = 1101007,lv = 134,bklv = 19,star = 4,mon = {id = 205,desc = "pt-14-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",lvId = "15",cardId = 1102012,lv = 134,bklv = 19,star = 4,mon = {id = 219,desc = "pt-14-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-14",lvId = "15",cardId = 1101003,lv = 134,bklv = 19,star = 4,mon = {id = 204,desc = "pt-14-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",lvId = "15",cardId = 1102005,lv = 134,bklv = 19,star = 4,mon = {id = 224,desc = "pt-14-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-14",lvId = "15",cardId = 1101014,lv = 134,bklv = 19,star = 4,mon = {id = 207,desc = "pt-14-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",lvId = "15",cardId = 1102020,lv = 134,bklv = 19,star = 4,mon = {id = 228,desc = "pt-14-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11501] = {
		[1] = {
			jlr = {cha = "pt-15",lvId = "1",cardId = 1101007,lv = 140,bklv = 21,star = 4,mon = {id = 212,desc = "pt-15-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",lvId = "1",cardId = 1102012,lv = 140,bklv = 21,star = 4,mon = {id = 236,desc = "pt-15-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-15",lvId = "1",cardId = 1101003,lv = 140,bklv = 21,star = 4,mon = {id = 208,desc = "pt-15-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",lvId = "1",cardId = 1102005,lv = 140,bklv = 21,star = 4,mon = {id = 231,desc = "pt-15-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-15",lvId = "1",cardId = 1101014,lv = 140,bklv = 21,star = 4,mon = {id = 213,desc = "pt-15-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",lvId = "1",cardId = 1102020,lv = 140,bklv = 21,star = 4,mon = {id = 237,desc = "pt-15-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11502] = {
		[1] = {
			jlr = {cha = "pt-15",lvId = "2",cardId = 1101007,lv = 140,bklv = 21,star = 4,mon = {id = 201,desc = "pt-15-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",lvId = "2",cardId = 1102012,lv = 140,bklv = 21,star = 4,mon = {id = 220,desc = "pt-15-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-15",lvId = "2",cardId = 1101003,lv = 140,bklv = 21,star = 4,mon = {id = 203,desc = "pt-15-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",lvId = "2",cardId = 1102005,lv = 140,bklv = 21,star = 4,mon = {id = 223,desc = "pt-15-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-15",lvId = "2",cardId = 1101014,lv = 140,bklv = 21,star = 4,mon = {id = 214,desc = "pt-15-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",lvId = "2",cardId = 1102020,lv = 140,bklv = 21,star = 4,mon = {id = 238,desc = "pt-15-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11503] = {
		[1] = {
			jlr = {cha = "pt-15",lvId = "3",cardId = 1101007,lv = 140,bklv = 21,star = 4,mon = {id = 212,desc = "pt-15-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",lvId = "3",cardId = 1102012,lv = 140,bklv = 21,star = 4,mon = {id = 236,desc = "pt-15-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-15",lvId = "3",cardId = 1101003,lv = 140,bklv = 21,star = 4,mon = {id = 208,desc = "pt-15-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",lvId = "3",cardId = 1102005,lv = 140,bklv = 21,star = 4,mon = {id = 231,desc = "pt-15-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-15",lvId = "3",cardId = 1101014,lv = 140,bklv = 21,star = 4,mon = {id = 209,desc = "pt-15-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",lvId = "3",cardId = 1102020,lv = 140,bklv = 21,star = 4,mon = {id = 232,desc = "pt-15-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11504] = {
		[1] = {
			jlr = {cha = "pt-15",lvId = "4",cardId = 1101007,lv = 141,bklv = 21,star = 4,mon = {id = 215,desc = "pt-15-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",lvId = "4",cardId = 1102012,lv = 141,bklv = 21,star = 4,mon = {id = 239,desc = "pt-15-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-15",lvId = "4",cardId = 1101003,lv = 141,bklv = 21,star = 4,mon = {id = 201,desc = "pt-15-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",lvId = "4",cardId = 1102005,lv = 141,bklv = 21,star = 4,mon = {id = 227,desc = "pt-15-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-15",lvId = "4",cardId = 1101014,lv = 141,bklv = 21,star = 4,mon = {id = 211,desc = "pt-15-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",lvId = "4",cardId = 1102020,lv = 141,bklv = 21,star = 4,mon = {id = 235,desc = "pt-15-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11505] = {
		[1] = {
			jlr = {cha = "pt-15",lvId = "5",cardId = 1101007,lv = 141,bklv = 21,star = 4,mon = {id = 206,desc = "pt-15-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",lvId = "5",cardId = 1102012,lv = 141,bklv = 21,star = 4,mon = {id = 225,desc = "pt-15-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-15",lvId = "5",cardId = 1101003,lv = 141,bklv = 21,star = 4,mon = {id = 203,desc = "pt-15-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",lvId = "5",cardId = 1102005,lv = 141,bklv = 21,star = 4,mon = {id = 223,desc = "pt-15-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-15",lvId = "5",cardId = 1101014,lv = 141,bklv = 21,star = 4,mon = {id = 212,desc = "pt-15-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",lvId = "5",cardId = 1102020,lv = 141,bklv = 21,star = 4,mon = {id = 236,desc = "pt-15-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11506] = {
		[1] = {
			jlr = {cha = "pt-15",lvId = "6",cardId = 1101007,lv = 141,bklv = 21,star = 4,mon = {id = 209,desc = "pt-15-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",lvId = "6",cardId = 1102012,lv = 141,bklv = 21,star = 4,mon = {id = 232,desc = "pt-15-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-15",lvId = "6",cardId = 1101003,lv = 141,bklv = 21,star = 4,mon = {id = 208,desc = "pt-15-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",lvId = "6",cardId = 1102005,lv = 141,bklv = 21,star = 4,mon = {id = 231,desc = "pt-15-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-15",lvId = "6",cardId = 1101014,lv = 141,bklv = 21,star = 4,mon = {id = 212,desc = "pt-15-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",lvId = "6",cardId = 1102020,lv = 141,bklv = 21,star = 4,mon = {id = 236,desc = "pt-15-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11507] = {
		[1] = {
			jlr = {cha = "pt-15",lvId = "7",cardId = 1101007,lv = 142,bklv = 21,star = 4,mon = {id = 207,desc = "pt-15-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",lvId = "7",cardId = 1102012,lv = 142,bklv = 21,star = 4,mon = {id = 227,desc = "pt-15-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-15",lvId = "7",cardId = 1101003,lv = 142,bklv = 21,star = 4,mon = {id = 207,desc = "pt-15-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",lvId = "7",cardId = 1102005,lv = 142,bklv = 21,star = 4,mon = {id = 221,desc = "pt-15-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-15",lvId = "7",cardId = 1101014,lv = 142,bklv = 21,star = 4,mon = {id = 211,desc = "pt-15-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",lvId = "7",cardId = 1102020,lv = 142,bklv = 21,star = 4,mon = {id = 235,desc = "pt-15-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11508] = {
		[1] = {
			jlr = {cha = "pt-15",lvId = "8",cardId = 1101007,lv = 142,bklv = 21,star = 4,mon = {id = 207,desc = "pt-15-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",lvId = "8",cardId = 1102012,lv = 142,bklv = 21,star = 4,mon = {id = 230,desc = "pt-15-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-15",lvId = "8",cardId = 1101003,lv = 142,bklv = 21,star = 4,mon = {id = 205,desc = "pt-15-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",lvId = "8",cardId = 1102005,lv = 142,bklv = 21,star = 4,mon = {id = 229,desc = "pt-15-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-15",lvId = "8",cardId = 1101014,lv = 142,bklv = 21,star = 4,mon = {id = 210,desc = "pt-15-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",lvId = "8",cardId = 1102020,lv = 142,bklv = 21,star = 4,mon = {id = 234,desc = "pt-15-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11509] = {
		[1] = {
			jlr = {cha = "pt-15",lvId = "9",cardId = 1101007,lv = 142,bklv = 21,star = 4,mon = {id = 212,desc = "pt-15-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",lvId = "9",cardId = 1102012,lv = 142,bklv = 21,star = 4,mon = {id = 236,desc = "pt-15-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-15",lvId = "9",cardId = 1101003,lv = 142,bklv = 21,star = 4,mon = {id = 208,desc = "pt-15-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",lvId = "9",cardId = 1102005,lv = 142,bklv = 21,star = 4,mon = {id = 231,desc = "pt-15-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-15",lvId = "9",cardId = 1101014,lv = 142,bklv = 21,star = 4,mon = {id = 209,desc = "pt-15-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",lvId = "9",cardId = 1102020,lv = 142,bklv = 21,star = 4,mon = {id = 232,desc = "pt-15-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11510] = {
		[1] = {
			jlr = {cha = "pt-15",lvId = "10",cardId = 1101007,lv = 143,bklv = 21,star = 4,mon = {id = 201,desc = "pt-15-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",lvId = "10",cardId = 1102012,lv = 143,bklv = 21,star = 4,mon = {id = 220,desc = "pt-15-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-15",lvId = "10",cardId = 1101003,lv = 143,bklv = 21,star = 4,mon = {id = 203,desc = "pt-15-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",lvId = "10",cardId = 1102005,lv = 143,bklv = 21,star = 4,mon = {id = 223,desc = "pt-15-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-15",lvId = "10",cardId = 1101014,lv = 143,bklv = 21,star = 4,mon = {id = 214,desc = "pt-15-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",lvId = "10",cardId = 1102020,lv = 143,bklv = 21,star = 4,mon = {id = 238,desc = "pt-15-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11511] = {
		[1] = {
			jlr = {cha = "pt-15",lvId = "11",cardId = 1101007,lv = 143,bklv = 21,star = 4,mon = {id = 212,desc = "pt-15-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",lvId = "11",cardId = 1102012,lv = 143,bklv = 21,star = 4,mon = {id = 236,desc = "pt-15-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-15",lvId = "11",cardId = 1101003,lv = 143,bklv = 21,star = 4,mon = {id = 208,desc = "pt-15-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",lvId = "11",cardId = 1102005,lv = 143,bklv = 21,star = 4,mon = {id = 231,desc = "pt-15-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-15",lvId = "11",cardId = 1101014,lv = 143,bklv = 21,star = 4,mon = {id = 209,desc = "pt-15-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",lvId = "11",cardId = 1102020,lv = 143,bklv = 21,star = 4,mon = {id = 232,desc = "pt-15-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11512] = {
		[1] = {
			jlr = {cha = "pt-15",lvId = "12",cardId = 1101007,lv = 143,bklv = 21,star = 4,mon = {id = 215,desc = "pt-15-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",lvId = "12",cardId = 1102012,lv = 143,bklv = 21,star = 4,mon = {id = 239,desc = "pt-15-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-15",lvId = "12",cardId = 1101003,lv = 143,bklv = 21,star = 4,mon = {id = 201,desc = "pt-15-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",lvId = "12",cardId = 1102005,lv = 143,bklv = 21,star = 4,mon = {id = 227,desc = "pt-15-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-15",lvId = "12",cardId = 1101014,lv = 143,bklv = 21,star = 4,mon = {id = 211,desc = "pt-15-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",lvId = "12",cardId = 1102020,lv = 143,bklv = 21,star = 4,mon = {id = 235,desc = "pt-15-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11513] = {
		[1] = {
			jlr = {cha = "pt-15",lvId = "13",cardId = 1101007,lv = 144,bklv = 21,star = 4,mon = {id = 209,desc = "pt-15-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",lvId = "13",cardId = 1102012,lv = 144,bklv = 21,star = 4,mon = {id = 232,desc = "pt-15-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-15",lvId = "13",cardId = 1101003,lv = 144,bklv = 21,star = 4,mon = {id = 208,desc = "pt-15-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",lvId = "13",cardId = 1102005,lv = 144,bklv = 21,star = 4,mon = {id = 231,desc = "pt-15-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-15",lvId = "13",cardId = 1101014,lv = 144,bklv = 21,star = 4,mon = {id = 212,desc = "pt-15-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",lvId = "13",cardId = 1102020,lv = 144,bklv = 21,star = 4,mon = {id = 236,desc = "pt-15-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11514] = {
		[1] = {
			jlr = {cha = "pt-15",lvId = "14",cardId = 1101007,lv = 144,bklv = 21,star = 4,mon = {id = 207,desc = "pt-15-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",lvId = "14",cardId = 1102012,lv = 144,bklv = 21,star = 4,mon = {id = 227,desc = "pt-15-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-15",lvId = "14",cardId = 1101003,lv = 144,bklv = 21,star = 4,mon = {id = 207,desc = "pt-15-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",lvId = "14",cardId = 1102005,lv = 144,bklv = 21,star = 4,mon = {id = 221,desc = "pt-15-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-15",lvId = "14",cardId = 1101014,lv = 144,bklv = 21,star = 4,mon = {id = 211,desc = "pt-15-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",lvId = "14",cardId = 1102020,lv = 144,bklv = 21,star = 4,mon = {id = 235,desc = "pt-15-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11515] = {
		[1] = {
			jlr = {cha = "pt-15",lvId = "15",cardId = 1101007,lv = 144,bklv = 21,star = 4,mon = {id = 205,desc = "pt-15-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",lvId = "15",cardId = 1102012,lv = 144,bklv = 21,star = 4,mon = {id = 219,desc = "pt-15-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-15",lvId = "15",cardId = 1101003,lv = 144,bklv = 21,star = 4,mon = {id = 204,desc = "pt-15-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",lvId = "15",cardId = 1102005,lv = 144,bklv = 21,star = 4,mon = {id = 224,desc = "pt-15-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-15",lvId = "15",cardId = 1101014,lv = 144,bklv = 21,star = 4,mon = {id = 207,desc = "pt-15-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",lvId = "15",cardId = 1102020,lv = 144,bklv = 21,star = 4,mon = {id = 228,desc = "pt-15-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20101] = {
		[1] = {
			jlr = {cha = "kn-1",lvId = "1",cardId = 1101001,lv = 10,bklv = 2,star = 1,mon = {id = 212,desc = "kn-1-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "1",cardId = 1102015,lv = 10,bklv = 2,star = 1,mon = {id = 257,desc = "kn-1-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-1",lvId = "1",cardId = 1101003,lv = 10,bklv = 2,star = 1,mon = {id = 208,desc = "kn-1-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "1",cardId = 1102005,lv = 10,bklv = 2,star = 1,mon = {id = 252,desc = "kn-1-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-1",lvId = "1",cardId = 1101002,lv = 10,bklv = 2,star = 1,mon = {id = 209,desc = "kn-1-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "1",cardId = 1102004,lv = 10,bklv = 2,star = 1,mon = {id = 253,desc = "kn-1-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20102] = {
		[1] = {
			jlr = {cha = "kn-1",lvId = "2",cardId = 1101001,lv = 11,bklv = 2,star = 1,mon = {id = 201,desc = "kn-1-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "2",cardId = 1102015,lv = 11,bklv = 2,star = 1,mon = {id = 241,desc = "kn-1-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-1",lvId = "2",cardId = 1101003,lv = 11,bklv = 2,star = 1,mon = {id = 203,desc = "kn-1-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "2",cardId = 1102005,lv = 11,bklv = 2,star = 1,mon = {id = 244,desc = "kn-1-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-1",lvId = "2",cardId = 1101002,lv = 11,bklv = 2,star = 1,mon = {id = 214,desc = "kn-1-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "2",cardId = 1102004,lv = 11,bklv = 2,star = 1,mon = {id = 259,desc = "kn-1-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20103] = {
		[1] = {
			jlr = {cha = "kn-1",lvId = "3",cardId = 1101001,lv = 12,bklv = 2,star = 1,mon = {id = 212,desc = "kn-1-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "3",cardId = 1102015,lv = 12,bklv = 2,star = 1,mon = {id = 257,desc = "kn-1-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-1",lvId = "3",cardId = 1101003,lv = 12,bklv = 2,star = 1,mon = {id = 208,desc = "kn-1-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "3",cardId = 1102005,lv = 12,bklv = 2,star = 1,mon = {id = 252,desc = "kn-1-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-1",lvId = "3",cardId = 1101002,lv = 12,bklv = 2,star = 1,mon = {id = 209,desc = "kn-1-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "3",cardId = 1102004,lv = 12,bklv = 2,star = 1,mon = {id = 253,desc = "kn-1-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20104] = {
		[1] = {
			jlr = {cha = "kn-1",lvId = "4",cardId = 1101001,lv = 12,bklv = 2,star = 1,mon = {id = 215,desc = "kn-1-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "4",cardId = 1102015,lv = 12,bklv = 2,star = 1,mon = {id = 260,desc = "kn-1-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-1",lvId = "4",cardId = 1101003,lv = 12,bklv = 2,star = 1,mon = {id = 201,desc = "kn-1-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "4",cardId = 1102005,lv = 12,bklv = 2,star = 1,mon = {id = 248,desc = "kn-1-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-1",lvId = "4",cardId = 1101002,lv = 12,bklv = 2,star = 1,mon = {id = 211,desc = "kn-1-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "4",cardId = 1102004,lv = 12,bklv = 2,star = 1,mon = {id = 256,desc = "kn-1-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20105] = {
		[1] = {
			jlr = {cha = "kn-1",lvId = "5",cardId = 1101001,lv = 13,bklv = 2,star = 1,mon = {id = 206,desc = "kn-1-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "5",cardId = 1102015,lv = 13,bklv = 2,star = 1,mon = {id = 246,desc = "kn-1-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-1",lvId = "5",cardId = 1101003,lv = 13,bklv = 2,star = 1,mon = {id = 203,desc = "kn-1-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "5",cardId = 1102005,lv = 13,bklv = 2,star = 1,mon = {id = 244,desc = "kn-1-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-1",lvId = "5",cardId = 1101002,lv = 13,bklv = 2,star = 1,mon = {id = 212,desc = "kn-1-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "5",cardId = 1102004,lv = 13,bklv = 2,star = 1,mon = {id = 257,desc = "kn-1-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20106] = {
		[1] = {
			jlr = {cha = "kn-1",lvId = "6",cardId = 1101001,lv = 13,bklv = 2,star = 1,mon = {id = 209,desc = "kn-1-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "6",cardId = 1102015,lv = 13,bklv = 2,star = 1,mon = {id = 253,desc = "kn-1-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-1",lvId = "6",cardId = 1101003,lv = 13,bklv = 2,star = 1,mon = {id = 208,desc = "kn-1-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "6",cardId = 1102005,lv = 13,bklv = 2,star = 1,mon = {id = 252,desc = "kn-1-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-1",lvId = "6",cardId = 1101002,lv = 13,bklv = 2,star = 1,mon = {id = 212,desc = "kn-1-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "6",cardId = 1102004,lv = 13,bklv = 2,star = 1,mon = {id = 257,desc = "kn-1-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20107] = {
		[1] = {
			jlr = {cha = "kn-1",lvId = "7",cardId = 1101001,lv = 14,bklv = 2,star = 1,mon = {id = 213,desc = "kn-1-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "7",cardId = 1102015,lv = 14,bklv = 2,star = 1,mon = {id = 258,desc = "kn-1-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-1",lvId = "7",cardId = 1101003,lv = 14,bklv = 2,star = 1,mon = {id = 207,desc = "kn-1-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "7",cardId = 1102005,lv = 14,bklv = 2,star = 1,mon = {id = 242,desc = "kn-1-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-1",lvId = "7",cardId = 1101002,lv = 14,bklv = 2,star = 1,mon = {id = 211,desc = "kn-1-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "7",cardId = 1102004,lv = 14,bklv = 2,star = 1,mon = {id = 256,desc = "kn-1-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20108] = {
		[1] = {
			jlr = {cha = "kn-1",lvId = "8",cardId = 1101001,lv = 14,bklv = 2,star = 1,mon = {id = 209,desc = "kn-1-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "8",cardId = 1102015,lv = 14,bklv = 2,star = 1,mon = {id = 253,desc = "kn-1-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-1",lvId = "8",cardId = 1101003,lv = 14,bklv = 2,star = 1,mon = {id = 208,desc = "kn-1-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "8",cardId = 1102005,lv = 14,bklv = 2,star = 1,mon = {id = 252,desc = "kn-1-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-1",lvId = "8",cardId = 1101002,lv = 14,bklv = 2,star = 1,mon = {id = 212,desc = "kn-1-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "8",cardId = 1102004,lv = 14,bklv = 2,star = 1,mon = {id = 257,desc = "kn-1-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20109] = {
		[1] = {
			jlr = {cha = "kn-1",lvId = "9",cardId = 1101001,lv = 15,bklv = 3,star = 1,mon = {id = 207,desc = "kn-1-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "9",cardId = 1102015,lv = 15,bklv = 3,star = 1,mon = {id = 251,desc = "kn-1-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-1",lvId = "9",cardId = 1101003,lv = 15,bklv = 3,star = 1,mon = {id = 205,desc = "kn-1-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "9",cardId = 1102005,lv = 15,bklv = 3,star = 1,mon = {id = 250,desc = "kn-1-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-1",lvId = "9",cardId = 1101002,lv = 15,bklv = 3,star = 1,mon = {id = 210,desc = "kn-1-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "9",cardId = 1102004,lv = 15,bklv = 3,star = 1,mon = {id = 255,desc = "kn-1-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20201] = {
		[1] = {
			jlr = {cha = "kn-2",lvId = "1",cardId = 1101001,lv = 15,bklv = 3,star = 2,mon = {id = 212,desc = "kn-2-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "1",cardId = 1102002,lv = 15,bklv = 3,star = 2,mon = {id = 257,desc = "kn-2-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-2",lvId = "1",cardId = 1101003,lv = 15,bklv = 3,star = 2,mon = {id = 208,desc = "kn-2-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "1",cardId = 1102005,lv = 15,bklv = 3,star = 2,mon = {id = 252,desc = "kn-2-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-2",lvId = "1",cardId = 1101002,lv = 15,bklv = 3,star = 2,mon = {id = 209,desc = "kn-2-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "1",cardId = 1102004,lv = 15,bklv = 3,star = 2,mon = {id = 253,desc = "kn-2-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20202] = {
		[1] = {
			jlr = {cha = "kn-2",lvId = "2",cardId = 1101001,lv = 16,bklv = 3,star = 2,mon = {id = 201,desc = "kn-2-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "2",cardId = 1102002,lv = 16,bklv = 3,star = 2,mon = {id = 241,desc = "kn-2-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-2",lvId = "2",cardId = 1101003,lv = 16,bklv = 3,star = 2,mon = {id = 203,desc = "kn-2-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "2",cardId = 1102005,lv = 16,bklv = 3,star = 2,mon = {id = 244,desc = "kn-2-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-2",lvId = "2",cardId = 1101002,lv = 16,bklv = 3,star = 2,mon = {id = 214,desc = "kn-2-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "2",cardId = 1102004,lv = 16,bklv = 3,star = 2,mon = {id = 259,desc = "kn-2-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20203] = {
		[1] = {
			jlr = {cha = "kn-2",lvId = "3",cardId = 1101001,lv = 17,bklv = 3,star = 2,mon = {id = 212,desc = "kn-2-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "3",cardId = 1102002,lv = 17,bklv = 3,star = 2,mon = {id = 257,desc = "kn-2-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-2",lvId = "3",cardId = 1101003,lv = 17,bklv = 3,star = 2,mon = {id = 208,desc = "kn-2-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "3",cardId = 1102005,lv = 17,bklv = 3,star = 2,mon = {id = 252,desc = "kn-2-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-2",lvId = "3",cardId = 1101002,lv = 17,bklv = 3,star = 2,mon = {id = 209,desc = "kn-2-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "3",cardId = 1102004,lv = 17,bklv = 3,star = 2,mon = {id = 253,desc = "kn-2-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20204] = {
		[1] = {
			jlr = {cha = "kn-2",lvId = "4",cardId = 1101001,lv = 18,bklv = 3,star = 2,mon = {id = 215,desc = "kn-2-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "4",cardId = 1102002,lv = 18,bklv = 3,star = 2,mon = {id = 260,desc = "kn-2-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-2",lvId = "4",cardId = 1101003,lv = 18,bklv = 3,star = 2,mon = {id = 201,desc = "kn-2-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "4",cardId = 1102005,lv = 18,bklv = 3,star = 2,mon = {id = 248,desc = "kn-2-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-2",lvId = "4",cardId = 1101002,lv = 18,bklv = 3,star = 2,mon = {id = 211,desc = "kn-2-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "4",cardId = 1102004,lv = 18,bklv = 3,star = 2,mon = {id = 256,desc = "kn-2-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20205] = {
		[1] = {
			jlr = {cha = "kn-2",lvId = "5",cardId = 1101001,lv = 19,bklv = 3,star = 2,mon = {id = 206,desc = "kn-2-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "5",cardId = 1102002,lv = 19,bklv = 3,star = 2,mon = {id = 246,desc = "kn-2-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-2",lvId = "5",cardId = 1101003,lv = 19,bklv = 3,star = 2,mon = {id = 203,desc = "kn-2-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "5",cardId = 1102005,lv = 19,bklv = 3,star = 2,mon = {id = 244,desc = "kn-2-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-2",lvId = "5",cardId = 1101002,lv = 19,bklv = 3,star = 2,mon = {id = 212,desc = "kn-2-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "5",cardId = 1102004,lv = 19,bklv = 3,star = 2,mon = {id = 257,desc = "kn-2-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20206] = {
		[1] = {
			jlr = {cha = "kn-2",lvId = "6",cardId = 1101001,lv = 20,bklv = 3,star = 2,mon = {id = 209,desc = "kn-2-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "6",cardId = 1102002,lv = 20,bklv = 3,star = 2,mon = {id = 253,desc = "kn-2-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-2",lvId = "6",cardId = 1101003,lv = 20,bklv = 3,star = 2,mon = {id = 208,desc = "kn-2-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "6",cardId = 1102005,lv = 20,bklv = 3,star = 2,mon = {id = 252,desc = "kn-2-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-2",lvId = "6",cardId = 1101002,lv = 20,bklv = 3,star = 2,mon = {id = 212,desc = "kn-2-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "6",cardId = 1102004,lv = 20,bklv = 3,star = 2,mon = {id = 257,desc = "kn-2-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20207] = {
		[1] = {
			jlr = {cha = "kn-2",lvId = "7",cardId = 1101001,lv = 21,bklv = 3,star = 2,mon = {id = 207,desc = "kn-2-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "7",cardId = 1102002,lv = 21,bklv = 3,star = 2,mon = {id = 248,desc = "kn-2-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-2",lvId = "7",cardId = 1101003,lv = 21,bklv = 3,star = 2,mon = {id = 207,desc = "kn-2-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "7",cardId = 1102005,lv = 21,bklv = 3,star = 2,mon = {id = 242,desc = "kn-2-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-2",lvId = "7",cardId = 1101002,lv = 21,bklv = 3,star = 2,mon = {id = 211,desc = "kn-2-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "7",cardId = 1102004,lv = 21,bklv = 3,star = 2,mon = {id = 256,desc = "kn-2-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20208] = {
		[1] = {
			jlr = {cha = "kn-2",lvId = "8",cardId = 1101001,lv = 22,bklv = 3,star = 2,mon = {id = 209,desc = "kn-2-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "8",cardId = 1102002,lv = 22,bklv = 3,star = 2,mon = {id = 253,desc = "kn-2-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-2",lvId = "8",cardId = 1101003,lv = 22,bklv = 3,star = 2,mon = {id = 208,desc = "kn-2-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "8",cardId = 1102005,lv = 22,bklv = 3,star = 2,mon = {id = 252,desc = "kn-2-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-2",lvId = "8",cardId = 1101002,lv = 22,bklv = 3,star = 2,mon = {id = 212,desc = "kn-2-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "8",cardId = 1102004,lv = 22,bklv = 3,star = 2,mon = {id = 257,desc = "kn-2-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20209] = {
		[1] = {
			jlr = {cha = "kn-2",lvId = "9",cardId = 1101001,lv = 23,bklv = 3,star = 2,mon = {id = 207,desc = "kn-2-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "9",cardId = 1102002,lv = 23,bklv = 3,star = 2,mon = {id = 251,desc = "kn-2-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-2",lvId = "9",cardId = 1101003,lv = 23,bklv = 3,star = 2,mon = {id = 205,desc = "kn-2-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "9",cardId = 1102005,lv = 23,bklv = 3,star = 2,mon = {id = 250,desc = "kn-2-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-2",lvId = "9",cardId = 1101014,lv = 23,bklv = 3,star = 2,mon = {id = 210,desc = "kn-2-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "9",cardId = 1102004,lv = 23,bklv = 3,star = 2,mon = {id = 255,desc = "kn-2-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20301] = {
		[1] = {
			jlr = {cha = "kn-3",lvId = "1",cardId = 1101001,lv = 25,bklv = 3,star = 2,mon = {id = 212,desc = "kn-3-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "1",cardId = 1102002,lv = 25,bklv = 3,star = 2,mon = {id = 257,desc = "kn-3-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-3",lvId = "1",cardId = 1101003,lv = 25,bklv = 3,star = 2,mon = {id = 208,desc = "kn-3-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "1",cardId = 1102005,lv = 25,bklv = 3,star = 2,mon = {id = 252,desc = "kn-3-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-3",lvId = "1",cardId = 1101014,lv = 25,bklv = 3,star = 2,mon = {id = 209,desc = "kn-3-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "1",cardId = 1102020,lv = 25,bklv = 3,star = 2,mon = {id = 253,desc = "kn-3-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20302] = {
		[1] = {
			jlr = {cha = "kn-3",lvId = "2",cardId = 1101001,lv = 26,bklv = 3,star = 2,mon = {id = 201,desc = "kn-3-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "2",cardId = 1102002,lv = 26,bklv = 3,star = 2,mon = {id = 241,desc = "kn-3-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-3",lvId = "2",cardId = 1101003,lv = 26,bklv = 3,star = 2,mon = {id = 203,desc = "kn-3-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "2",cardId = 1102005,lv = 26,bklv = 3,star = 2,mon = {id = 244,desc = "kn-3-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-3",lvId = "2",cardId = 1101014,lv = 26,bklv = 3,star = 2,mon = {id = 214,desc = "kn-3-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "2",cardId = 1102020,lv = 26,bklv = 3,star = 2,mon = {id = 259,desc = "kn-3-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20303] = {
		[1] = {
			jlr = {cha = "kn-3",lvId = "3",cardId = 1101001,lv = 27,bklv = 3,star = 2,mon = {id = 212,desc = "kn-3-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "3",cardId = 1102002,lv = 27,bklv = 3,star = 2,mon = {id = 257,desc = "kn-3-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-3",lvId = "3",cardId = 1101003,lv = 27,bklv = 3,star = 2,mon = {id = 208,desc = "kn-3-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "3",cardId = 1102005,lv = 27,bklv = 3,star = 2,mon = {id = 252,desc = "kn-3-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-3",lvId = "3",cardId = 1101014,lv = 27,bklv = 3,star = 2,mon = {id = 209,desc = "kn-3-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "3",cardId = 1102020,lv = 27,bklv = 3,star = 2,mon = {id = 253,desc = "kn-3-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20304] = {
		[1] = {
			jlr = {cha = "kn-3",lvId = "4",cardId = 1101001,lv = 28,bklv = 3,star = 2,mon = {id = 215,desc = "kn-3-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "4",cardId = 1102002,lv = 28,bklv = 3,star = 2,mon = {id = 260,desc = "kn-3-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-3",lvId = "4",cardId = 1101003,lv = 28,bklv = 3,star = 2,mon = {id = 201,desc = "kn-3-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "4",cardId = 1102005,lv = 28,bklv = 3,star = 2,mon = {id = 248,desc = "kn-3-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-3",lvId = "4",cardId = 1101014,lv = 28,bklv = 3,star = 2,mon = {id = 211,desc = "kn-3-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "4",cardId = 1102020,lv = 28,bklv = 3,star = 2,mon = {id = 256,desc = "kn-3-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20305] = {
		[1] = {
			jlr = {cha = "kn-3",lvId = "5",cardId = 1101001,lv = 29,bklv = 3,star = 2,mon = {id = 206,desc = "kn-3-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "5",cardId = 1102002,lv = 29,bklv = 3,star = 2,mon = {id = 246,desc = "kn-3-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-3",lvId = "5",cardId = 1101003,lv = 29,bklv = 3,star = 2,mon = {id = 203,desc = "kn-3-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "5",cardId = 1102005,lv = 29,bklv = 3,star = 2,mon = {id = 244,desc = "kn-3-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-3",lvId = "5",cardId = 1101014,lv = 29,bklv = 3,star = 2,mon = {id = 212,desc = "kn-3-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "5",cardId = 1102020,lv = 29,bklv = 3,star = 2,mon = {id = 257,desc = "kn-3-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20306] = {
		[1] = {
			jlr = {cha = "kn-3",lvId = "6",cardId = 1101001,lv = 30,bklv = 4,star = 2,mon = {id = 209,desc = "kn-3-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "6",cardId = 1102002,lv = 30,bklv = 4,star = 2,mon = {id = 253,desc = "kn-3-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-3",lvId = "6",cardId = 1101003,lv = 30,bklv = 4,star = 2,mon = {id = 208,desc = "kn-3-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "6",cardId = 1102005,lv = 30,bklv = 4,star = 2,mon = {id = 252,desc = "kn-3-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-3",lvId = "6",cardId = 1101014,lv = 30,bklv = 4,star = 2,mon = {id = 212,desc = "kn-3-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "6",cardId = 1102020,lv = 30,bklv = 4,star = 2,mon = {id = 257,desc = "kn-3-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20307] = {
		[1] = {
			jlr = {cha = "kn-3",lvId = "7",cardId = 1101001,lv = 31,bklv = 4,star = 2,mon = {id = 213,desc = "kn-3-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "7",cardId = 1102002,lv = 31,bklv = 4,star = 2,mon = {id = 258,desc = "kn-3-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-3",lvId = "7",cardId = 1101003,lv = 31,bklv = 4,star = 2,mon = {id = 207,desc = "kn-3-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "7",cardId = 1102005,lv = 31,bklv = 4,star = 2,mon = {id = 242,desc = "kn-3-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-3",lvId = "7",cardId = 1101014,lv = 31,bklv = 4,star = 2,mon = {id = 211,desc = "kn-3-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "7",cardId = 1102020,lv = 31,bklv = 4,star = 2,mon = {id = 256,desc = "kn-3-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20308] = {
		[1] = {
			jlr = {cha = "kn-3",lvId = "8",cardId = 1101001,lv = 32,bklv = 4,star = 2,mon = {id = 206,desc = "kn-3-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "8",cardId = 1102002,lv = 32,bklv = 4,star = 2,mon = {id = 246,desc = "kn-3-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-3",lvId = "8",cardId = 1101003,lv = 32,bklv = 4,star = 2,mon = {id = 205,desc = "kn-3-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "8",cardId = 1102005,lv = 32,bklv = 4,star = 2,mon = {id = 250,desc = "kn-3-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-3",lvId = "8",cardId = 1101014,lv = 32,bklv = 4,star = 2,mon = {id = 207,desc = "kn-3-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "8",cardId = 1102020,lv = 32,bklv = 4,star = 2,mon = {id = 249,desc = "kn-3-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20309] = {
		[1] = {
			jlr = {cha = "kn-3",lvId = "9",cardId = 1101001,lv = 33,bklv = 4,star = 2,mon = {id = 212,desc = "kn-3-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "9",cardId = 1102002,lv = 33,bklv = 4,star = 2,mon = {id = 257,desc = "kn-3-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-3",lvId = "9",cardId = 1101003,lv = 33,bklv = 4,star = 2,mon = {id = 208,desc = "kn-3-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "9",cardId = 1102005,lv = 33,bklv = 4,star = 2,mon = {id = 252,desc = "kn-3-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-3",lvId = "9",cardId = 1101014,lv = 33,bklv = 4,star = 2,mon = {id = 209,desc = "kn-3-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "9",cardId = 1102020,lv = 33,bklv = 4,star = 2,mon = {id = 253,desc = "kn-3-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20401] = {
		[1] = {
			jlr = {cha = "kn-4",lvId = "1",cardId = 1101001,lv = 35,bklv = 4,star = 3,mon = {id = 212,desc = "kn-4-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "1",cardId = 1102002,lv = 35,bklv = 4,star = 3,mon = {id = 257,desc = "kn-4-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-4",lvId = "1",cardId = 1101003,lv = 35,bklv = 4,star = 3,mon = {id = 208,desc = "kn-4-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "1",cardId = 1102005,lv = 35,bklv = 4,star = 3,mon = {id = 252,desc = "kn-4-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-4",lvId = "1",cardId = 1101014,lv = 35,bklv = 4,star = 3,mon = {id = 213,desc = "kn-4-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "1",cardId = 1102020,lv = 35,bklv = 4,star = 3,mon = {id = 258,desc = "kn-4-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20402] = {
		[1] = {
			jlr = {cha = "kn-4",lvId = "2",cardId = 1101001,lv = 36,bklv = 4,star = 3,mon = {id = 201,desc = "kn-4-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "2",cardId = 1102002,lv = 36,bklv = 4,star = 3,mon = {id = 241,desc = "kn-4-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-4",lvId = "2",cardId = 1101003,lv = 36,bklv = 4,star = 3,mon = {id = 203,desc = "kn-4-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "2",cardId = 1102005,lv = 36,bklv = 4,star = 3,mon = {id = 244,desc = "kn-4-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-4",lvId = "2",cardId = 1101014,lv = 36,bklv = 4,star = 3,mon = {id = 214,desc = "kn-4-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "2",cardId = 1102020,lv = 36,bklv = 4,star = 3,mon = {id = 259,desc = "kn-4-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20403] = {
		[1] = {
			jlr = {cha = "kn-4",lvId = "3",cardId = 1101001,lv = 37,bklv = 4,star = 3,mon = {id = 212,desc = "kn-4-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "3",cardId = 1102002,lv = 37,bklv = 4,star = 3,mon = {id = 257,desc = "kn-4-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-4",lvId = "3",cardId = 1101003,lv = 37,bklv = 4,star = 3,mon = {id = 208,desc = "kn-4-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "3",cardId = 1102005,lv = 37,bklv = 4,star = 3,mon = {id = 252,desc = "kn-4-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-4",lvId = "3",cardId = 1101014,lv = 37,bklv = 4,star = 3,mon = {id = 209,desc = "kn-4-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "3",cardId = 1102020,lv = 37,bklv = 4,star = 3,mon = {id = 253,desc = "kn-4-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20404] = {
		[1] = {
			jlr = {cha = "kn-4",lvId = "4",cardId = 1101001,lv = 38,bklv = 4,star = 3,mon = {id = 215,desc = "kn-4-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "4",cardId = 1102002,lv = 38,bklv = 4,star = 3,mon = {id = 260,desc = "kn-4-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-4",lvId = "4",cardId = 1101003,lv = 38,bklv = 4,star = 3,mon = {id = 201,desc = "kn-4-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "4",cardId = 1102005,lv = 38,bklv = 4,star = 3,mon = {id = 248,desc = "kn-4-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-4",lvId = "4",cardId = 1101014,lv = 38,bklv = 4,star = 3,mon = {id = 211,desc = "kn-4-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "4",cardId = 1102020,lv = 38,bklv = 4,star = 3,mon = {id = 256,desc = "kn-4-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20405] = {
		[1] = {
			jlr = {cha = "kn-4",lvId = "5",cardId = 1101001,lv = 39,bklv = 4,star = 3,mon = {id = 206,desc = "kn-4-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "5",cardId = 1102002,lv = 39,bklv = 4,star = 3,mon = {id = 246,desc = "kn-4-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-4",lvId = "5",cardId = 1101003,lv = 39,bklv = 4,star = 3,mon = {id = 203,desc = "kn-4-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "5",cardId = 1102005,lv = 39,bklv = 4,star = 3,mon = {id = 244,desc = "kn-4-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-4",lvId = "5",cardId = 1101014,lv = 39,bklv = 4,star = 3,mon = {id = 212,desc = "kn-4-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "5",cardId = 1102020,lv = 39,bklv = 4,star = 3,mon = {id = 257,desc = "kn-4-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20406] = {
		[1] = {
			jlr = {cha = "kn-4",lvId = "6",cardId = 1101001,lv = 40,bklv = 5,star = 3,mon = {id = 209,desc = "kn-4-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "6",cardId = 1102002,lv = 40,bklv = 5,star = 3,mon = {id = 253,desc = "kn-4-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-4",lvId = "6",cardId = 1101003,lv = 40,bklv = 5,star = 3,mon = {id = 208,desc = "kn-4-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "6",cardId = 1102005,lv = 40,bklv = 5,star = 3,mon = {id = 252,desc = "kn-4-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-4",lvId = "6",cardId = 1101014,lv = 40,bklv = 5,star = 3,mon = {id = 212,desc = "kn-4-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "6",cardId = 1102020,lv = 40,bklv = 5,star = 3,mon = {id = 257,desc = "kn-4-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20407] = {
		[1] = {
			jlr = {cha = "kn-4",lvId = "7",cardId = 1101001,lv = 41,bklv = 5,star = 3,mon = {id = 213,desc = "kn-4-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "7",cardId = 1102002,lv = 41,bklv = 5,star = 3,mon = {id = 258,desc = "kn-4-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-4",lvId = "7",cardId = 1101003,lv = 41,bklv = 5,star = 3,mon = {id = 207,desc = "kn-4-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "7",cardId = 1102005,lv = 41,bklv = 5,star = 3,mon = {id = 242,desc = "kn-4-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-4",lvId = "7",cardId = 1101014,lv = 41,bklv = 5,star = 3,mon = {id = 211,desc = "kn-4-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "7",cardId = 1102020,lv = 41,bklv = 5,star = 3,mon = {id = 256,desc = "kn-4-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20408] = {
		[1] = {
			jlr = {cha = "kn-4",lvId = "8",cardId = 1101001,lv = 42,bklv = 5,star = 3,mon = {id = 207,desc = "kn-4-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "8",cardId = 1102002,lv = 42,bklv = 5,star = 3,mon = {id = 251,desc = "kn-4-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-4",lvId = "8",cardId = 1101003,lv = 42,bklv = 5,star = 3,mon = {id = 205,desc = "kn-4-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "8",cardId = 1102005,lv = 42,bklv = 5,star = 3,mon = {id = 250,desc = "kn-4-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-4",lvId = "8",cardId = 1101014,lv = 42,bklv = 5,star = 3,mon = {id = 210,desc = "kn-4-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "8",cardId = 1102020,lv = 42,bklv = 5,star = 3,mon = {id = 255,desc = "kn-4-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20409] = {
		[1] = {
			jlr = {cha = "kn-4",lvId = "9",cardId = 1101001,lv = 43,bklv = 5,star = 3,mon = {id = 212,desc = "kn-4-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "9",cardId = 1102002,lv = 43,bklv = 5,star = 3,mon = {id = 257,desc = "kn-4-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-4",lvId = "9",cardId = 1101003,lv = 43,bklv = 5,star = 3,mon = {id = 208,desc = "kn-4-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "9",cardId = 1102005,lv = 43,bklv = 5,star = 3,mon = {id = 252,desc = "kn-4-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-4",lvId = "9",cardId = 1101014,lv = 43,bklv = 5,star = 3,mon = {id = 209,desc = "kn-4-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "9",cardId = 1102020,lv = 43,bklv = 5,star = 3,mon = {id = 253,desc = "kn-4-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20501] = {
		[1] = {
			jlr = {cha = "kn-5",lvId = "1",cardId = 1101007,lv = 45,bklv = 5,star = 3,mon = {id = 212,desc = "kn-5-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "1",cardId = 1102012,lv = 45,bklv = 5,star = 3,mon = {id = 257,desc = "kn-5-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-5",lvId = "1",cardId = 1101003,lv = 45,bklv = 5,star = 3,mon = {id = 208,desc = "kn-5-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "1",cardId = 1102005,lv = 45,bklv = 5,star = 3,mon = {id = 252,desc = "kn-5-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-5",lvId = "1",cardId = 1101014,lv = 45,bklv = 5,star = 3,mon = {id = 209,desc = "kn-5-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "1",cardId = 1102020,lv = 45,bklv = 5,star = 3,mon = {id = 253,desc = "kn-5-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20502] = {
		[1] = {
			jlr = {cha = "kn-5",lvId = "2",cardId = 1101007,lv = 46,bklv = 5,star = 3,mon = {id = 201,desc = "kn-5-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "2",cardId = 1102012,lv = 46,bklv = 5,star = 3,mon = {id = 241,desc = "kn-5-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-5",lvId = "2",cardId = 1101003,lv = 46,bklv = 5,star = 3,mon = {id = 203,desc = "kn-5-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "2",cardId = 1102005,lv = 46,bklv = 5,star = 3,mon = {id = 244,desc = "kn-5-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-5",lvId = "2",cardId = 1101014,lv = 46,bklv = 5,star = 3,mon = {id = 214,desc = "kn-5-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "2",cardId = 1102020,lv = 46,bklv = 5,star = 3,mon = {id = 259,desc = "kn-5-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20503] = {
		[1] = {
			jlr = {cha = "kn-5",lvId = "3",cardId = 1101007,lv = 46,bklv = 5,star = 3,mon = {id = 212,desc = "kn-5-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "3",cardId = 1102012,lv = 46,bklv = 5,star = 3,mon = {id = 257,desc = "kn-5-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-5",lvId = "3",cardId = 1101003,lv = 46,bklv = 5,star = 3,mon = {id = 208,desc = "kn-5-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "3",cardId = 1102005,lv = 46,bklv = 5,star = 3,mon = {id = 252,desc = "kn-5-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-5",lvId = "3",cardId = 1101014,lv = 46,bklv = 5,star = 3,mon = {id = 209,desc = "kn-5-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "3",cardId = 1102020,lv = 46,bklv = 5,star = 3,mon = {id = 253,desc = "kn-5-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20504] = {
		[1] = {
			jlr = {cha = "kn-5",lvId = "4",cardId = 1101007,lv = 47,bklv = 5,star = 3,mon = {id = 215,desc = "kn-5-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "4",cardId = 1102012,lv = 47,bklv = 5,star = 3,mon = {id = 260,desc = "kn-5-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-5",lvId = "4",cardId = 1101003,lv = 47,bklv = 5,star = 3,mon = {id = 201,desc = "kn-5-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "4",cardId = 1102005,lv = 47,bklv = 5,star = 3,mon = {id = 248,desc = "kn-5-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-5",lvId = "4",cardId = 1101014,lv = 47,bklv = 5,star = 3,mon = {id = 211,desc = "kn-5-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "4",cardId = 1102020,lv = 47,bklv = 5,star = 3,mon = {id = 256,desc = "kn-5-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20505] = {
		[1] = {
			jlr = {cha = "kn-5",lvId = "5",cardId = 1101007,lv = 47,bklv = 5,star = 3,mon = {id = 206,desc = "kn-5-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "5",cardId = 1102012,lv = 47,bklv = 5,star = 3,mon = {id = 246,desc = "kn-5-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-5",lvId = "5",cardId = 1101003,lv = 47,bklv = 5,star = 3,mon = {id = 203,desc = "kn-5-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "5",cardId = 1102005,lv = 47,bklv = 5,star = 3,mon = {id = 244,desc = "kn-5-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-5",lvId = "5",cardId = 1101014,lv = 47,bklv = 5,star = 3,mon = {id = 212,desc = "kn-5-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "5",cardId = 1102020,lv = 47,bklv = 5,star = 3,mon = {id = 257,desc = "kn-5-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20506] = {
		[1] = {
			jlr = {cha = "kn-5",lvId = "6",cardId = 1101007,lv = 48,bklv = 5,star = 3,mon = {id = 209,desc = "kn-5-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "6",cardId = 1102012,lv = 48,bklv = 5,star = 3,mon = {id = 253,desc = "kn-5-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-5",lvId = "6",cardId = 1101003,lv = 48,bklv = 5,star = 3,mon = {id = 208,desc = "kn-5-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "6",cardId = 1102005,lv = 48,bklv = 5,star = 3,mon = {id = 252,desc = "kn-5-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-5",lvId = "6",cardId = 1101014,lv = 48,bklv = 5,star = 3,mon = {id = 212,desc = "kn-5-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "6",cardId = 1102020,lv = 48,bklv = 5,star = 3,mon = {id = 257,desc = "kn-5-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20507] = {
		[1] = {
			jlr = {cha = "kn-5",lvId = "7",cardId = 1101007,lv = 48,bklv = 5,star = 3,mon = {id = 213,desc = "kn-5-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "7",cardId = 1102012,lv = 48,bklv = 5,star = 3,mon = {id = 258,desc = "kn-5-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-5",lvId = "7",cardId = 1101003,lv = 48,bklv = 5,star = 3,mon = {id = 207,desc = "kn-5-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "7",cardId = 1102005,lv = 48,bklv = 5,star = 3,mon = {id = 242,desc = "kn-5-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-5",lvId = "7",cardId = 1101014,lv = 48,bklv = 5,star = 3,mon = {id = 211,desc = "kn-5-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "7",cardId = 1102020,lv = 48,bklv = 5,star = 3,mon = {id = 256,desc = "kn-5-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20508] = {
		[1] = {
			jlr = {cha = "kn-5",lvId = "8",cardId = 1101007,lv = 49,bklv = 5,star = 3,mon = {id = 206,desc = "kn-5-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "8",cardId = 1102012,lv = 49,bklv = 5,star = 3,mon = {id = 246,desc = "kn-5-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-5",lvId = "8",cardId = 1101003,lv = 49,bklv = 5,star = 3,mon = {id = 205,desc = "kn-5-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "8",cardId = 1102005,lv = 49,bklv = 5,star = 3,mon = {id = 250,desc = "kn-5-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-5",lvId = "8",cardId = 1101014,lv = 49,bklv = 5,star = 3,mon = {id = 207,desc = "kn-5-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "8",cardId = 1102020,lv = 49,bklv = 5,star = 3,mon = {id = 249,desc = "kn-5-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20509] = {
		[1] = {
			jlr = {cha = "kn-5",lvId = "9",cardId = 1101007,lv = 50,bklv = 6,star = 3,mon = {id = 212,desc = "kn-5-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "9",cardId = 1102012,lv = 50,bklv = 6,star = 3,mon = {id = 257,desc = "kn-5-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-5",lvId = "9",cardId = 1101003,lv = 50,bklv = 6,star = 3,mon = {id = 208,desc = "kn-5-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "9",cardId = 1102005,lv = 50,bklv = 6,star = 3,mon = {id = 252,desc = "kn-5-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-5",lvId = "9",cardId = 1101014,lv = 50,bklv = 6,star = 3,mon = {id = 209,desc = "kn-5-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "9",cardId = 1102020,lv = 50,bklv = 6,star = 3,mon = {id = 253,desc = "kn-5-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20510] = {
		[1] = {
			jlr = {cha = "kn-5",lvId = "10",cardId = 1101007,lv = 50,bklv = 6,star = 3,mon = {id = 201,desc = "kn-5-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "10",cardId = 1102012,lv = 50,bklv = 6,star = 3,mon = {id = 241,desc = "kn-5-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-5",lvId = "10",cardId = 1101003,lv = 50,bklv = 6,star = 3,mon = {id = 203,desc = "kn-5-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "10",cardId = 1102005,lv = 50,bklv = 6,star = 3,mon = {id = 244,desc = "kn-5-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-5",lvId = "10",cardId = 1101014,lv = 50,bklv = 6,star = 3,mon = {id = 214,desc = "kn-5-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "10",cardId = 1102020,lv = 50,bklv = 6,star = 3,mon = {id = 259,desc = "kn-5-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20511] = {
		[1] = {
			jlr = {cha = "kn-5",lvId = "11",cardId = 1101007,lv = 50,bklv = 6,star = 3,mon = {id = 212,desc = "kn-5-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "11",cardId = 1102012,lv = 50,bklv = 6,star = 3,mon = {id = 257,desc = "kn-5-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-5",lvId = "11",cardId = 1101003,lv = 50,bklv = 6,star = 3,mon = {id = 208,desc = "kn-5-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "11",cardId = 1102005,lv = 50,bklv = 6,star = 3,mon = {id = 252,desc = "kn-5-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-5",lvId = "11",cardId = 1101014,lv = 50,bklv = 6,star = 3,mon = {id = 209,desc = "kn-5-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "11",cardId = 1102020,lv = 50,bklv = 6,star = 3,mon = {id = 253,desc = "kn-5-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20512] = {
		[1] = {
			jlr = {cha = "kn-5",lvId = "12",cardId = 1101007,lv = 51,bklv = 6,star = 3,mon = {id = 215,desc = "kn-5-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "12",cardId = 1102012,lv = 51,bklv = 6,star = 3,mon = {id = 260,desc = "kn-5-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-5",lvId = "12",cardId = 1101003,lv = 51,bklv = 6,star = 3,mon = {id = 201,desc = "kn-5-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "12",cardId = 1102005,lv = 51,bklv = 6,star = 3,mon = {id = 248,desc = "kn-5-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-5",lvId = "12",cardId = 1101014,lv = 51,bklv = 6,star = 3,mon = {id = 211,desc = "kn-5-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "12",cardId = 1102020,lv = 51,bklv = 6,star = 3,mon = {id = 256,desc = "kn-5-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20513] = {
		[1] = {
			jlr = {cha = "kn-5",lvId = "13",cardId = 1101007,lv = 52,bklv = 6,star = 3,mon = {id = 209,desc = "kn-5-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "13",cardId = 1102012,lv = 52,bklv = 6,star = 3,mon = {id = 253,desc = "kn-5-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-5",lvId = "13",cardId = 1101003,lv = 52,bklv = 6,star = 3,mon = {id = 208,desc = "kn-5-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "13",cardId = 1102005,lv = 52,bklv = 6,star = 3,mon = {id = 252,desc = "kn-5-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-5",lvId = "13",cardId = 1101014,lv = 52,bklv = 6,star = 3,mon = {id = 212,desc = "kn-5-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "13",cardId = 1102020,lv = 52,bklv = 6,star = 3,mon = {id = 257,desc = "kn-5-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20514] = {
		[1] = {
			jlr = {cha = "kn-5",lvId = "14",cardId = 1101007,lv = 53,bklv = 6,star = 3,mon = {id = 207,desc = "kn-5-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "14",cardId = 1102012,lv = 53,bklv = 6,star = 3,mon = {id = 248,desc = "kn-5-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-5",lvId = "14",cardId = 1101003,lv = 53,bklv = 6,star = 3,mon = {id = 207,desc = "kn-5-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "14",cardId = 1102005,lv = 53,bklv = 6,star = 3,mon = {id = 242,desc = "kn-5-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-5",lvId = "14",cardId = 1101014,lv = 53,bklv = 6,star = 3,mon = {id = 211,desc = "kn-5-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "14",cardId = 1102020,lv = 53,bklv = 6,star = 3,mon = {id = 256,desc = "kn-5-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20515] = {
		[1] = {
			jlr = {cha = "kn-5",lvId = "15",cardId = 1101007,lv = 54,bklv = 6,star = 3,mon = {id = 205,desc = "kn-5-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "15",cardId = 1102012,lv = 54,bklv = 6,star = 3,mon = {id = 240,desc = "kn-5-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-5",lvId = "15",cardId = 1101003,lv = 54,bklv = 6,star = 3,mon = {id = 204,desc = "kn-5-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "15",cardId = 1102005,lv = 54,bklv = 6,star = 3,mon = {id = 245,desc = "kn-5-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-5",lvId = "15",cardId = 1101014,lv = 54,bklv = 6,star = 3,mon = {id = 207,desc = "kn-5-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "15",cardId = 1102020,lv = 54,bklv = 6,star = 3,mon = {id = 249,desc = "kn-5-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20601] = {
		[1] = {
			jlr = {cha = "kn-6",lvId = "1",cardId = 1101007,lv = 55,bklv = 6,star = 3,mon = {id = 212,desc = "kn-6-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "1",cardId = 1102012,lv = 55,bklv = 6,star = 3,mon = {id = 257,desc = "kn-6-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-6",lvId = "1",cardId = 1101003,lv = 55,bklv = 6,star = 3,mon = {id = 208,desc = "kn-6-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "1",cardId = 1102005,lv = 55,bklv = 6,star = 3,mon = {id = 252,desc = "kn-6-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-6",lvId = "1",cardId = 1101014,lv = 55,bklv = 6,star = 3,mon = {id = 213,desc = "kn-6-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "1",cardId = 1102020,lv = 55,bklv = 6,star = 3,mon = {id = 258,desc = "kn-6-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20602] = {
		[1] = {
			jlr = {cha = "kn-6",lvId = "2",cardId = 1101007,lv = 56,bklv = 6,star = 3,mon = {id = 201,desc = "kn-6-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "2",cardId = 1102012,lv = 56,bklv = 6,star = 3,mon = {id = 241,desc = "kn-6-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-6",lvId = "2",cardId = 1101003,lv = 56,bklv = 6,star = 3,mon = {id = 203,desc = "kn-6-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "2",cardId = 1102005,lv = 56,bklv = 6,star = 3,mon = {id = 244,desc = "kn-6-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-6",lvId = "2",cardId = 1101014,lv = 56,bklv = 6,star = 3,mon = {id = 214,desc = "kn-6-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "2",cardId = 1102020,lv = 56,bklv = 6,star = 3,mon = {id = 259,desc = "kn-6-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20603] = {
		[1] = {
			jlr = {cha = "kn-6",lvId = "3",cardId = 1101007,lv = 56,bklv = 6,star = 3,mon = {id = 212,desc = "kn-6-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "3",cardId = 1102012,lv = 56,bklv = 6,star = 3,mon = {id = 257,desc = "kn-6-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-6",lvId = "3",cardId = 1101003,lv = 56,bklv = 6,star = 3,mon = {id = 208,desc = "kn-6-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "3",cardId = 1102005,lv = 56,bklv = 6,star = 3,mon = {id = 252,desc = "kn-6-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-6",lvId = "3",cardId = 1101014,lv = 56,bklv = 6,star = 3,mon = {id = 209,desc = "kn-6-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "3",cardId = 1102020,lv = 56,bklv = 6,star = 3,mon = {id = 253,desc = "kn-6-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20604] = {
		[1] = {
			jlr = {cha = "kn-6",lvId = "4",cardId = 1101007,lv = 57,bklv = 6,star = 3,mon = {id = 215,desc = "kn-6-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "4",cardId = 1102012,lv = 57,bklv = 6,star = 3,mon = {id = 260,desc = "kn-6-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-6",lvId = "4",cardId = 1101003,lv = 57,bklv = 6,star = 3,mon = {id = 201,desc = "kn-6-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "4",cardId = 1102005,lv = 57,bklv = 6,star = 3,mon = {id = 248,desc = "kn-6-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-6",lvId = "4",cardId = 1101014,lv = 57,bklv = 6,star = 3,mon = {id = 211,desc = "kn-6-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "4",cardId = 1102020,lv = 57,bklv = 6,star = 3,mon = {id = 256,desc = "kn-6-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20605] = {
		[1] = {
			jlr = {cha = "kn-6",lvId = "5",cardId = 1101007,lv = 57,bklv = 6,star = 3,mon = {id = 206,desc = "kn-6-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "5",cardId = 1102012,lv = 57,bklv = 6,star = 3,mon = {id = 246,desc = "kn-6-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-6",lvId = "5",cardId = 1101003,lv = 57,bklv = 6,star = 3,mon = {id = 203,desc = "kn-6-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "5",cardId = 1102005,lv = 57,bklv = 6,star = 3,mon = {id = 244,desc = "kn-6-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-6",lvId = "5",cardId = 1101014,lv = 57,bklv = 6,star = 3,mon = {id = 212,desc = "kn-6-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "5",cardId = 1102020,lv = 57,bklv = 6,star = 3,mon = {id = 257,desc = "kn-6-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20606] = {
		[1] = {
			jlr = {cha = "kn-6",lvId = "6",cardId = 1101007,lv = 58,bklv = 6,star = 3,mon = {id = 209,desc = "kn-6-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "6",cardId = 1102012,lv = 58,bklv = 6,star = 3,mon = {id = 253,desc = "kn-6-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-6",lvId = "6",cardId = 1101003,lv = 58,bklv = 6,star = 3,mon = {id = 208,desc = "kn-6-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "6",cardId = 1102005,lv = 58,bklv = 6,star = 3,mon = {id = 252,desc = "kn-6-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-6",lvId = "6",cardId = 1101014,lv = 58,bklv = 6,star = 3,mon = {id = 212,desc = "kn-6-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "6",cardId = 1102020,lv = 58,bklv = 6,star = 3,mon = {id = 257,desc = "kn-6-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20607] = {
		[1] = {
			jlr = {cha = "kn-6",lvId = "7",cardId = 1101007,lv = 58,bklv = 6,star = 3,mon = {id = 207,desc = "kn-6-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "7",cardId = 1102012,lv = 58,bklv = 6,star = 3,mon = {id = 248,desc = "kn-6-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-6",lvId = "7",cardId = 1101003,lv = 58,bklv = 6,star = 3,mon = {id = 207,desc = "kn-6-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "7",cardId = 1102005,lv = 58,bklv = 6,star = 3,mon = {id = 242,desc = "kn-6-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-6",lvId = "7",cardId = 1101014,lv = 58,bklv = 6,star = 3,mon = {id = 211,desc = "kn-6-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "7",cardId = 1102020,lv = 58,bklv = 6,star = 3,mon = {id = 256,desc = "kn-6-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20608] = {
		[1] = {
			jlr = {cha = "kn-6",lvId = "8",cardId = 1101007,lv = 59,bklv = 6,star = 3,mon = {id = 207,desc = "kn-6-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "8",cardId = 1102012,lv = 59,bklv = 6,star = 3,mon = {id = 251,desc = "kn-6-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-6",lvId = "8",cardId = 1101003,lv = 59,bklv = 6,star = 3,mon = {id = 205,desc = "kn-6-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "8",cardId = 1102005,lv = 59,bklv = 6,star = 3,mon = {id = 250,desc = "kn-6-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-6",lvId = "8",cardId = 1101014,lv = 59,bklv = 6,star = 3,mon = {id = 210,desc = "kn-6-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "8",cardId = 1102020,lv = 59,bklv = 6,star = 3,mon = {id = 255,desc = "kn-6-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20609] = {
		[1] = {
			jlr = {cha = "kn-6",lvId = "9",cardId = 1101007,lv = 60,bklv = 7,star = 3,mon = {id = 212,desc = "kn-6-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "9",cardId = 1102012,lv = 60,bklv = 7,star = 3,mon = {id = 257,desc = "kn-6-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-6",lvId = "9",cardId = 1101003,lv = 60,bklv = 7,star = 3,mon = {id = 208,desc = "kn-6-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "9",cardId = 1102005,lv = 60,bklv = 7,star = 3,mon = {id = 252,desc = "kn-6-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-6",lvId = "9",cardId = 1101014,lv = 60,bklv = 7,star = 3,mon = {id = 209,desc = "kn-6-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "9",cardId = 1102020,lv = 60,bklv = 7,star = 3,mon = {id = 253,desc = "kn-6-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20610] = {
		[1] = {
			jlr = {cha = "kn-6",lvId = "10",cardId = 1101007,lv = 60,bklv = 7,star = 3,mon = {id = 201,desc = "kn-6-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "10",cardId = 1102012,lv = 60,bklv = 7,star = 3,mon = {id = 241,desc = "kn-6-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-6",lvId = "10",cardId = 1101003,lv = 60,bklv = 7,star = 3,mon = {id = 203,desc = "kn-6-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "10",cardId = 1102005,lv = 60,bklv = 7,star = 3,mon = {id = 244,desc = "kn-6-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-6",lvId = "10",cardId = 1101014,lv = 60,bklv = 7,star = 3,mon = {id = 214,desc = "kn-6-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "10",cardId = 1102020,lv = 60,bklv = 7,star = 3,mon = {id = 259,desc = "kn-6-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20611] = {
		[1] = {
			jlr = {cha = "kn-6",lvId = "11",cardId = 1101007,lv = 60,bklv = 7,star = 3,mon = {id = 212,desc = "kn-6-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "11",cardId = 1102012,lv = 60,bklv = 7,star = 3,mon = {id = 257,desc = "kn-6-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-6",lvId = "11",cardId = 1101003,lv = 60,bklv = 7,star = 3,mon = {id = 208,desc = "kn-6-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "11",cardId = 1102005,lv = 60,bklv = 7,star = 3,mon = {id = 252,desc = "kn-6-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-6",lvId = "11",cardId = 1101014,lv = 60,bklv = 7,star = 3,mon = {id = 209,desc = "kn-6-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "11",cardId = 1102020,lv = 60,bklv = 7,star = 3,mon = {id = 253,desc = "kn-6-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20612] = {
		[1] = {
			jlr = {cha = "kn-6",lvId = "12",cardId = 1101007,lv = 61,bklv = 7,star = 3,mon = {id = 215,desc = "kn-6-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "12",cardId = 1102012,lv = 61,bklv = 7,star = 3,mon = {id = 260,desc = "kn-6-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-6",lvId = "12",cardId = 1101003,lv = 61,bklv = 7,star = 3,mon = {id = 201,desc = "kn-6-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "12",cardId = 1102005,lv = 61,bklv = 7,star = 3,mon = {id = 248,desc = "kn-6-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-6",lvId = "12",cardId = 1101014,lv = 61,bklv = 7,star = 3,mon = {id = 211,desc = "kn-6-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "12",cardId = 1102020,lv = 61,bklv = 7,star = 3,mon = {id = 256,desc = "kn-6-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20613] = {
		[1] = {
			jlr = {cha = "kn-6",lvId = "13",cardId = 1101007,lv = 62,bklv = 7,star = 3,mon = {id = 209,desc = "kn-6-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "13",cardId = 1102012,lv = 62,bklv = 7,star = 3,mon = {id = 253,desc = "kn-6-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-6",lvId = "13",cardId = 1101003,lv = 62,bklv = 7,star = 3,mon = {id = 208,desc = "kn-6-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "13",cardId = 1102005,lv = 62,bklv = 7,star = 3,mon = {id = 252,desc = "kn-6-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-6",lvId = "13",cardId = 1101014,lv = 62,bklv = 7,star = 3,mon = {id = 212,desc = "kn-6-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "13",cardId = 1102020,lv = 62,bklv = 7,star = 3,mon = {id = 257,desc = "kn-6-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20614] = {
		[1] = {
			jlr = {cha = "kn-6",lvId = "14",cardId = 1101007,lv = 63,bklv = 7,star = 3,mon = {id = 207,desc = "kn-6-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "14",cardId = 1102012,lv = 63,bklv = 7,star = 3,mon = {id = 248,desc = "kn-6-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-6",lvId = "14",cardId = 1101005,lv = 63,bklv = 7,star = 3,mon = {id = 207,desc = "kn-6-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "14",cardId = 1102011,lv = 63,bklv = 7,star = 3,mon = {id = 242,desc = "kn-6-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-6",lvId = "14",cardId = 1101003,lv = 63,bklv = 7,star = 3,mon = {id = 211,desc = "kn-6-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "14",cardId = 1102005,lv = 63,bklv = 7,star = 3,mon = {id = 256,desc = "kn-6-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20615] = {
		[1] = {
			jlr = {cha = "kn-6",lvId = "15",cardId = 1101007,lv = 64,bklv = 7,star = 3,mon = {id = 205,desc = "kn-6-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "15",cardId = 1102012,lv = 64,bklv = 7,star = 3,mon = {id = 240,desc = "kn-6-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-6",lvId = "15",cardId = 1101005,lv = 64,bklv = 7,star = 3,mon = {id = 204,desc = "kn-6-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "15",cardId = 1102011,lv = 64,bklv = 7,star = 3,mon = {id = 245,desc = "kn-6-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-6",lvId = "15",cardId = 1101010,lv = 64,bklv = 7,star = 3,mon = {id = 207,desc = "kn-6-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "15",cardId = 1102016,lv = 64,bklv = 7,star = 3,mon = {id = 249,desc = "kn-6-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20701] = {
		[1] = {
			jlr = {cha = "kn-7",lvId = "1",cardId = 1101007,lv = 65,bklv = 7,star = 3,mon = {id = 212,desc = "kn-7-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",lvId = "1",cardId = 1102012,lv = 65,bklv = 7,star = 3,mon = {id = 257,desc = "kn-7-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-7",lvId = "1",cardId = 1101003,lv = 65,bklv = 7,star = 3,mon = {id = 208,desc = "kn-7-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",lvId = "1",cardId = 1102005,lv = 65,bklv = 7,star = 3,mon = {id = 252,desc = "kn-7-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-7",lvId = "1",cardId = 1101014,lv = 65,bklv = 7,star = 3,mon = {id = 213,desc = "kn-7-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",lvId = "1",cardId = 1102020,lv = 65,bklv = 7,star = 3,mon = {id = 258,desc = "kn-7-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20702] = {
		[1] = {
			jlr = {cha = "kn-7",lvId = "2",cardId = 1101007,lv = 66,bklv = 7,star = 3,mon = {id = 201,desc = "kn-7-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",lvId = "2",cardId = 1102012,lv = 66,bklv = 7,star = 3,mon = {id = 241,desc = "kn-7-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-7",lvId = "2",cardId = 1101003,lv = 66,bklv = 7,star = 3,mon = {id = 203,desc = "kn-7-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",lvId = "2",cardId = 1102005,lv = 66,bklv = 7,star = 3,mon = {id = 244,desc = "kn-7-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-7",lvId = "2",cardId = 1101014,lv = 66,bklv = 7,star = 3,mon = {id = 214,desc = "kn-7-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",lvId = "2",cardId = 1102020,lv = 66,bklv = 7,star = 3,mon = {id = 259,desc = "kn-7-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20703] = {
		[1] = {
			jlr = {cha = "kn-7",lvId = "3",cardId = 1101007,lv = 66,bklv = 7,star = 3,mon = {id = 212,desc = "kn-7-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",lvId = "3",cardId = 1102012,lv = 66,bklv = 7,star = 3,mon = {id = 257,desc = "kn-7-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-7",lvId = "3",cardId = 1101003,lv = 66,bklv = 7,star = 3,mon = {id = 208,desc = "kn-7-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",lvId = "3",cardId = 1102005,lv = 66,bklv = 7,star = 3,mon = {id = 252,desc = "kn-7-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-7",lvId = "3",cardId = 1101014,lv = 66,bklv = 7,star = 3,mon = {id = 209,desc = "kn-7-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",lvId = "3",cardId = 1102020,lv = 66,bklv = 7,star = 3,mon = {id = 253,desc = "kn-7-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20704] = {
		[1] = {
			jlr = {cha = "kn-7",lvId = "4",cardId = 1101007,lv = 67,bklv = 7,star = 3,mon = {id = 215,desc = "kn-7-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",lvId = "4",cardId = 1102012,lv = 67,bklv = 7,star = 3,mon = {id = 260,desc = "kn-7-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-7",lvId = "4",cardId = 1101003,lv = 67,bklv = 7,star = 3,mon = {id = 201,desc = "kn-7-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",lvId = "4",cardId = 1102005,lv = 67,bklv = 7,star = 3,mon = {id = 248,desc = "kn-7-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-7",lvId = "4",cardId = 1101014,lv = 67,bklv = 7,star = 3,mon = {id = 211,desc = "kn-7-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",lvId = "4",cardId = 1102020,lv = 67,bklv = 7,star = 3,mon = {id = 256,desc = "kn-7-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20705] = {
		[1] = {
			jlr = {cha = "kn-7",lvId = "5",cardId = 1101007,lv = 67,bklv = 7,star = 3,mon = {id = 206,desc = "kn-7-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",lvId = "5",cardId = 1102012,lv = 67,bklv = 7,star = 3,mon = {id = 246,desc = "kn-7-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-7",lvId = "5",cardId = 1101003,lv = 67,bklv = 7,star = 3,mon = {id = 203,desc = "kn-7-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",lvId = "5",cardId = 1102005,lv = 67,bklv = 7,star = 3,mon = {id = 244,desc = "kn-7-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-7",lvId = "5",cardId = 1101014,lv = 67,bklv = 7,star = 3,mon = {id = 212,desc = "kn-7-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",lvId = "5",cardId = 1102020,lv = 67,bklv = 7,star = 3,mon = {id = 257,desc = "kn-7-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20706] = {
		[1] = {
			jlr = {cha = "kn-7",lvId = "6",cardId = 1101007,lv = 68,bklv = 7,star = 3,mon = {id = 209,desc = "kn-7-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",lvId = "6",cardId = 1102012,lv = 68,bklv = 7,star = 3,mon = {id = 253,desc = "kn-7-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-7",lvId = "6",cardId = 1101003,lv = 68,bklv = 7,star = 3,mon = {id = 208,desc = "kn-7-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",lvId = "6",cardId = 1102005,lv = 68,bklv = 7,star = 3,mon = {id = 252,desc = "kn-7-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-7",lvId = "6",cardId = 1101014,lv = 68,bklv = 7,star = 3,mon = {id = 212,desc = "kn-7-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",lvId = "6",cardId = 1102020,lv = 68,bklv = 7,star = 3,mon = {id = 257,desc = "kn-7-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20707] = {
		[1] = {
			jlr = {cha = "kn-7",lvId = "7",cardId = 1101007,lv = 68,bklv = 7,star = 3,mon = {id = 207,desc = "kn-7-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",lvId = "7",cardId = 1102012,lv = 68,bklv = 7,star = 3,mon = {id = 248,desc = "kn-7-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-7",lvId = "7",cardId = 1101003,lv = 68,bklv = 7,star = 3,mon = {id = 207,desc = "kn-7-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",lvId = "7",cardId = 1102005,lv = 68,bklv = 7,star = 3,mon = {id = 242,desc = "kn-7-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-7",lvId = "7",cardId = 1101014,lv = 68,bklv = 7,star = 3,mon = {id = 211,desc = "kn-7-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",lvId = "7",cardId = 1102020,lv = 68,bklv = 7,star = 3,mon = {id = 256,desc = "kn-7-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20708] = {
		[1] = {
			jlr = {cha = "kn-7",lvId = "8",cardId = 1101007,lv = 69,bklv = 7,star = 3,mon = {id = 207,desc = "kn-7-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",lvId = "8",cardId = 1102012,lv = 69,bklv = 7,star = 3,mon = {id = 251,desc = "kn-7-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-7",lvId = "8",cardId = 1101003,lv = 69,bklv = 7,star = 3,mon = {id = 205,desc = "kn-7-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",lvId = "8",cardId = 1102005,lv = 69,bklv = 7,star = 3,mon = {id = 250,desc = "kn-7-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-7",lvId = "8",cardId = 1101014,lv = 69,bklv = 7,star = 3,mon = {id = 210,desc = "kn-7-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",lvId = "8",cardId = 1102020,lv = 69,bklv = 7,star = 3,mon = {id = 255,desc = "kn-7-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20709] = {
		[1] = {
			jlr = {cha = "kn-7",lvId = "9",cardId = 1101007,lv = 70,bklv = 8,star = 3,mon = {id = 212,desc = "kn-7-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",lvId = "9",cardId = 1102012,lv = 70,bklv = 8,star = 3,mon = {id = 257,desc = "kn-7-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-7",lvId = "9",cardId = 1101003,lv = 70,bklv = 8,star = 3,mon = {id = 208,desc = "kn-7-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",lvId = "9",cardId = 1102005,lv = 70,bklv = 8,star = 3,mon = {id = 252,desc = "kn-7-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-7",lvId = "9",cardId = 1101014,lv = 70,bklv = 8,star = 3,mon = {id = 209,desc = "kn-7-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",lvId = "9",cardId = 1102020,lv = 70,bklv = 8,star = 3,mon = {id = 253,desc = "kn-7-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20710] = {
		[1] = {
			jlr = {cha = "kn-7",lvId = "10",cardId = 1101007,lv = 70,bklv = 8,star = 3,mon = {id = 201,desc = "kn-7-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",lvId = "10",cardId = 1102012,lv = 70,bklv = 8,star = 3,mon = {id = 241,desc = "kn-7-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-7",lvId = "10",cardId = 1101003,lv = 70,bklv = 8,star = 3,mon = {id = 203,desc = "kn-7-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",lvId = "10",cardId = 1102005,lv = 70,bklv = 8,star = 3,mon = {id = 244,desc = "kn-7-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-7",lvId = "10",cardId = 1101014,lv = 70,bklv = 8,star = 3,mon = {id = 214,desc = "kn-7-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",lvId = "10",cardId = 1102020,lv = 70,bklv = 8,star = 3,mon = {id = 259,desc = "kn-7-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20711] = {
		[1] = {
			jlr = {cha = "kn-7",lvId = "11",cardId = 1101007,lv = 70,bklv = 8,star = 3,mon = {id = 212,desc = "kn-7-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",lvId = "11",cardId = 1102012,lv = 70,bklv = 8,star = 3,mon = {id = 257,desc = "kn-7-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-7",lvId = "11",cardId = 1101003,lv = 70,bklv = 8,star = 3,mon = {id = 208,desc = "kn-7-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",lvId = "11",cardId = 1102005,lv = 70,bklv = 8,star = 3,mon = {id = 252,desc = "kn-7-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-7",lvId = "11",cardId = 1101014,lv = 70,bklv = 8,star = 3,mon = {id = 209,desc = "kn-7-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",lvId = "11",cardId = 1102020,lv = 70,bklv = 8,star = 3,mon = {id = 253,desc = "kn-7-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20712] = {
		[1] = {
			jlr = {cha = "kn-7",lvId = "12",cardId = 1101007,lv = 71,bklv = 8,star = 3,mon = {id = 215,desc = "kn-7-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",lvId = "12",cardId = 1102012,lv = 71,bklv = 8,star = 3,mon = {id = 260,desc = "kn-7-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-7",lvId = "12",cardId = 1101003,lv = 71,bklv = 8,star = 3,mon = {id = 201,desc = "kn-7-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",lvId = "12",cardId = 1102005,lv = 71,bklv = 8,star = 3,mon = {id = 248,desc = "kn-7-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-7",lvId = "12",cardId = 1101014,lv = 71,bklv = 8,star = 3,mon = {id = 211,desc = "kn-7-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",lvId = "12",cardId = 1102020,lv = 71,bklv = 8,star = 3,mon = {id = 256,desc = "kn-7-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20713] = {
		[1] = {
			jlr = {cha = "kn-7",lvId = "13",cardId = 1101007,lv = 72,bklv = 8,star = 3,mon = {id = 209,desc = "kn-7-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",lvId = "13",cardId = 1102012,lv = 72,bklv = 8,star = 3,mon = {id = 253,desc = "kn-7-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-7",lvId = "13",cardId = 1101003,lv = 72,bklv = 8,star = 3,mon = {id = 208,desc = "kn-7-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",lvId = "13",cardId = 1102005,lv = 72,bklv = 8,star = 3,mon = {id = 252,desc = "kn-7-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-7",lvId = "13",cardId = 1101014,lv = 72,bklv = 8,star = 3,mon = {id = 212,desc = "kn-7-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",lvId = "13",cardId = 1102020,lv = 72,bklv = 8,star = 3,mon = {id = 257,desc = "kn-7-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20714] = {
		[1] = {
			jlr = {cha = "kn-7",lvId = "14",cardId = 1101007,lv = 73,bklv = 8,star = 3,mon = {id = 207,desc = "kn-7-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",lvId = "14",cardId = 1102012,lv = 73,bklv = 8,star = 3,mon = {id = 248,desc = "kn-7-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-7",lvId = "14",cardId = 1101005,lv = 73,bklv = 8,star = 3,mon = {id = 207,desc = "kn-7-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",lvId = "14",cardId = 1102011,lv = 73,bklv = 8,star = 3,mon = {id = 242,desc = "kn-7-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-7",lvId = "14",cardId = 1101003,lv = 73,bklv = 8,star = 3,mon = {id = 211,desc = "kn-7-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",lvId = "14",cardId = 1102005,lv = 73,bklv = 8,star = 3,mon = {id = 256,desc = "kn-7-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20715] = {
		[1] = {
			jlr = {cha = "kn-7",lvId = "15",cardId = 1101007,lv = 74,bklv = 8,star = 3,mon = {id = 205,desc = "kn-7-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",lvId = "15",cardId = 1102012,lv = 74,bklv = 8,star = 3,mon = {id = 240,desc = "kn-7-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-7",lvId = "15",cardId = 1101005,lv = 74,bklv = 8,star = 3,mon = {id = 204,desc = "kn-7-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",lvId = "15",cardId = 1102011,lv = 74,bklv = 8,star = 3,mon = {id = 245,desc = "kn-7-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-7",lvId = "15",cardId = 1101010,lv = 74,bklv = 8,star = 3,mon = {id = 207,desc = "kn-7-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",lvId = "15",cardId = 1102016,lv = 74,bklv = 8,star = 3,mon = {id = 249,desc = "kn-7-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20801] = {
		[1] = {
			jlr = {cha = "kn-8",lvId = "1",cardId = 1101007,lv = 75,bklv = 8,star = 3,mon = {id = 212,desc = "kn-8-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",lvId = "1",cardId = 1102012,lv = 75,bklv = 8,star = 3,mon = {id = 257,desc = "kn-8-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-8",lvId = "1",cardId = 1101003,lv = 75,bklv = 8,star = 3,mon = {id = 208,desc = "kn-8-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",lvId = "1",cardId = 1102005,lv = 75,bklv = 8,star = 3,mon = {id = 252,desc = "kn-8-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-8",lvId = "1",cardId = 1101014,lv = 75,bklv = 8,star = 3,mon = {id = 213,desc = "kn-8-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",lvId = "1",cardId = 1102020,lv = 75,bklv = 8,star = 3,mon = {id = 258,desc = "kn-8-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20802] = {
		[1] = {
			jlr = {cha = "kn-8",lvId = "2",cardId = 1101007,lv = 76,bklv = 8,star = 3,mon = {id = 201,desc = "kn-8-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",lvId = "2",cardId = 1102012,lv = 76,bklv = 8,star = 3,mon = {id = 241,desc = "kn-8-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-8",lvId = "2",cardId = 1101003,lv = 76,bklv = 8,star = 3,mon = {id = 203,desc = "kn-8-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",lvId = "2",cardId = 1102005,lv = 76,bklv = 8,star = 3,mon = {id = 244,desc = "kn-8-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-8",lvId = "2",cardId = 1101014,lv = 76,bklv = 8,star = 3,mon = {id = 214,desc = "kn-8-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",lvId = "2",cardId = 1102020,lv = 76,bklv = 8,star = 3,mon = {id = 259,desc = "kn-8-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20803] = {
		[1] = {
			jlr = {cha = "kn-8",lvId = "3",cardId = 1101007,lv = 76,bklv = 8,star = 3,mon = {id = 212,desc = "kn-8-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",lvId = "3",cardId = 1102012,lv = 76,bklv = 8,star = 3,mon = {id = 257,desc = "kn-8-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-8",lvId = "3",cardId = 1101003,lv = 76,bklv = 8,star = 3,mon = {id = 208,desc = "kn-8-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",lvId = "3",cardId = 1102005,lv = 76,bklv = 8,star = 3,mon = {id = 252,desc = "kn-8-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-8",lvId = "3",cardId = 1101014,lv = 76,bklv = 8,star = 3,mon = {id = 209,desc = "kn-8-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",lvId = "3",cardId = 1102020,lv = 76,bklv = 8,star = 3,mon = {id = 253,desc = "kn-8-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20804] = {
		[1] = {
			jlr = {cha = "kn-8",lvId = "4",cardId = 1101007,lv = 77,bklv = 8,star = 3,mon = {id = 215,desc = "kn-8-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",lvId = "4",cardId = 1102012,lv = 77,bklv = 8,star = 3,mon = {id = 260,desc = "kn-8-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-8",lvId = "4",cardId = 1101003,lv = 77,bklv = 8,star = 3,mon = {id = 201,desc = "kn-8-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",lvId = "4",cardId = 1102005,lv = 77,bklv = 8,star = 3,mon = {id = 248,desc = "kn-8-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-8",lvId = "4",cardId = 1101014,lv = 77,bklv = 8,star = 3,mon = {id = 211,desc = "kn-8-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",lvId = "4",cardId = 1102020,lv = 77,bklv = 8,star = 3,mon = {id = 256,desc = "kn-8-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20805] = {
		[1] = {
			jlr = {cha = "kn-8",lvId = "5",cardId = 1101007,lv = 77,bklv = 8,star = 3,mon = {id = 206,desc = "kn-8-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",lvId = "5",cardId = 1102012,lv = 77,bklv = 8,star = 3,mon = {id = 246,desc = "kn-8-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-8",lvId = "5",cardId = 1101003,lv = 77,bklv = 8,star = 3,mon = {id = 203,desc = "kn-8-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",lvId = "5",cardId = 1102005,lv = 77,bklv = 8,star = 3,mon = {id = 244,desc = "kn-8-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-8",lvId = "5",cardId = 1101014,lv = 77,bklv = 8,star = 3,mon = {id = 212,desc = "kn-8-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",lvId = "5",cardId = 1102020,lv = 77,bklv = 8,star = 3,mon = {id = 257,desc = "kn-8-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20806] = {
		[1] = {
			jlr = {cha = "kn-8",lvId = "6",cardId = 1101007,lv = 78,bklv = 8,star = 3,mon = {id = 209,desc = "kn-8-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",lvId = "6",cardId = 1102012,lv = 78,bklv = 8,star = 3,mon = {id = 253,desc = "kn-8-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-8",lvId = "6",cardId = 1101003,lv = 78,bklv = 8,star = 3,mon = {id = 208,desc = "kn-8-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",lvId = "6",cardId = 1102005,lv = 78,bklv = 8,star = 3,mon = {id = 252,desc = "kn-8-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-8",lvId = "6",cardId = 1101014,lv = 78,bklv = 8,star = 3,mon = {id = 212,desc = "kn-8-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",lvId = "6",cardId = 1102020,lv = 78,bklv = 8,star = 3,mon = {id = 257,desc = "kn-8-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20807] = {
		[1] = {
			jlr = {cha = "kn-8",lvId = "7",cardId = 1101007,lv = 78,bklv = 8,star = 3,mon = {id = 207,desc = "kn-8-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",lvId = "7",cardId = 1102012,lv = 78,bklv = 8,star = 3,mon = {id = 248,desc = "kn-8-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-8",lvId = "7",cardId = 1101003,lv = 78,bklv = 8,star = 3,mon = {id = 207,desc = "kn-8-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",lvId = "7",cardId = 1102005,lv = 78,bklv = 8,star = 3,mon = {id = 242,desc = "kn-8-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-8",lvId = "7",cardId = 1101014,lv = 78,bklv = 8,star = 3,mon = {id = 211,desc = "kn-8-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",lvId = "7",cardId = 1102020,lv = 78,bklv = 8,star = 3,mon = {id = 256,desc = "kn-8-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20808] = {
		[1] = {
			jlr = {cha = "kn-8",lvId = "8",cardId = 1101007,lv = 79,bklv = 8,star = 3,mon = {id = 207,desc = "kn-8-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",lvId = "8",cardId = 1102012,lv = 79,bklv = 8,star = 3,mon = {id = 251,desc = "kn-8-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-8",lvId = "8",cardId = 1101003,lv = 79,bklv = 8,star = 3,mon = {id = 205,desc = "kn-8-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",lvId = "8",cardId = 1102005,lv = 79,bklv = 8,star = 3,mon = {id = 250,desc = "kn-8-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-8",lvId = "8",cardId = 1101014,lv = 79,bklv = 8,star = 3,mon = {id = 210,desc = "kn-8-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",lvId = "8",cardId = 1102020,lv = 79,bklv = 8,star = 4,mon = {id = 255,desc = "kn-8-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20809] = {
		[1] = {
			jlr = {cha = "kn-8",lvId = "9",cardId = 1101007,lv = 80,bklv = 9,star = 4,mon = {id = 212,desc = "kn-8-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",lvId = "9",cardId = 1102012,lv = 80,bklv = 9,star = 4,mon = {id = 257,desc = "kn-8-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-8",lvId = "9",cardId = 1101003,lv = 80,bklv = 9,star = 4,mon = {id = 208,desc = "kn-8-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",lvId = "9",cardId = 1102005,lv = 80,bklv = 9,star = 4,mon = {id = 252,desc = "kn-8-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-8",lvId = "9",cardId = 1101014,lv = 80,bklv = 9,star = 4,mon = {id = 209,desc = "kn-8-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",lvId = "9",cardId = 1102020,lv = 80,bklv = 9,star = 4,mon = {id = 253,desc = "kn-8-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20810] = {
		[1] = {
			jlr = {cha = "kn-8",lvId = "10",cardId = 1101007,lv = 80,bklv = 9,star = 4,mon = {id = 201,desc = "kn-8-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",lvId = "10",cardId = 1102012,lv = 80,bklv = 9,star = 4,mon = {id = 241,desc = "kn-8-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-8",lvId = "10",cardId = 1101003,lv = 80,bklv = 9,star = 4,mon = {id = 203,desc = "kn-8-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",lvId = "10",cardId = 1102005,lv = 80,bklv = 9,star = 4,mon = {id = 244,desc = "kn-8-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-8",lvId = "10",cardId = 1101014,lv = 80,bklv = 9,star = 4,mon = {id = 214,desc = "kn-8-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",lvId = "10",cardId = 1102020,lv = 80,bklv = 9,star = 4,mon = {id = 259,desc = "kn-8-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20811] = {
		[1] = {
			jlr = {cha = "kn-8",lvId = "11",cardId = 1101007,lv = 80,bklv = 9,star = 4,mon = {id = 212,desc = "kn-8-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",lvId = "11",cardId = 1102012,lv = 80,bklv = 9,star = 4,mon = {id = 257,desc = "kn-8-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-8",lvId = "11",cardId = 1101003,lv = 80,bklv = 9,star = 4,mon = {id = 208,desc = "kn-8-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",lvId = "11",cardId = 1102005,lv = 80,bklv = 9,star = 4,mon = {id = 252,desc = "kn-8-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-8",lvId = "11",cardId = 1101014,lv = 80,bklv = 9,star = 4,mon = {id = 209,desc = "kn-8-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",lvId = "11",cardId = 1102020,lv = 80,bklv = 9,star = 4,mon = {id = 253,desc = "kn-8-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20812] = {
		[1] = {
			jlr = {cha = "kn-8",lvId = "12",cardId = 1101007,lv = 81,bklv = 9,star = 4,mon = {id = 215,desc = "kn-8-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",lvId = "12",cardId = 1102012,lv = 81,bklv = 9,star = 4,mon = {id = 260,desc = "kn-8-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-8",lvId = "12",cardId = 1101003,lv = 81,bklv = 9,star = 4,mon = {id = 201,desc = "kn-8-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",lvId = "12",cardId = 1102005,lv = 81,bklv = 9,star = 4,mon = {id = 248,desc = "kn-8-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-8",lvId = "12",cardId = 1101014,lv = 81,bklv = 9,star = 4,mon = {id = 211,desc = "kn-8-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",lvId = "12",cardId = 1102020,lv = 81,bklv = 9,star = 4,mon = {id = 256,desc = "kn-8-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20813] = {
		[1] = {
			jlr = {cha = "kn-8",lvId = "13",cardId = 1101007,lv = 82,bklv = 9,star = 4,mon = {id = 209,desc = "kn-8-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",lvId = "13",cardId = 1102012,lv = 82,bklv = 9,star = 4,mon = {id = 253,desc = "kn-8-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-8",lvId = "13",cardId = 1101003,lv = 82,bklv = 9,star = 4,mon = {id = 208,desc = "kn-8-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",lvId = "13",cardId = 1102005,lv = 82,bklv = 9,star = 4,mon = {id = 252,desc = "kn-8-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-8",lvId = "13",cardId = 1101014,lv = 82,bklv = 9,star = 4,mon = {id = 212,desc = "kn-8-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",lvId = "13",cardId = 1102020,lv = 82,bklv = 9,star = 4,mon = {id = 257,desc = "kn-8-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20814] = {
		[1] = {
			jlr = {cha = "kn-8",lvId = "14",cardId = 1101007,lv = 83,bklv = 9,star = 4,mon = {id = 207,desc = "kn-8-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",lvId = "14",cardId = 1102012,lv = 83,bklv = 9,star = 4,mon = {id = 248,desc = "kn-8-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-8",lvId = "14",cardId = 1101005,lv = 83,bklv = 9,star = 4,mon = {id = 207,desc = "kn-8-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",lvId = "14",cardId = 1102011,lv = 83,bklv = 9,star = 4,mon = {id = 242,desc = "kn-8-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-8",lvId = "14",cardId = 1101003,lv = 83,bklv = 9,star = 4,mon = {id = 211,desc = "kn-8-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",lvId = "14",cardId = 1102005,lv = 83,bklv = 9,star = 4,mon = {id = 256,desc = "kn-8-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20815] = {
		[1] = {
			jlr = {cha = "kn-8",lvId = "15",cardId = 1101007,lv = 84,bklv = 9,star = 4,mon = {id = 205,desc = "kn-8-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",lvId = "15",cardId = 1102012,lv = 84,bklv = 9,star = 4,mon = {id = 240,desc = "kn-8-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-8",lvId = "15",cardId = 1101005,lv = 84,bklv = 9,star = 4,mon = {id = 204,desc = "kn-8-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",lvId = "15",cardId = 1102011,lv = 84,bklv = 9,star = 4,mon = {id = 245,desc = "kn-8-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-8",lvId = "15",cardId = 1101010,lv = 84,bklv = 9,star = 4,mon = {id = 207,desc = "kn-8-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",lvId = "15",cardId = 1102016,lv = 84,bklv = 9,star = 3,mon = {id = 249,desc = "kn-8-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20901] = {
		[1] = {
			jlr = {cha = "kn-9",lvId = "1",cardId = 1101007,lv = 85,bklv = 10,star = 4,mon = {id = 212,desc = "kn-9-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",lvId = "1",cardId = 1102012,lv = 85,bklv = 10,star = 4,mon = {id = 257,desc = "kn-9-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-9",lvId = "1",cardId = 1101003,lv = 85,bklv = 10,star = 4,mon = {id = 208,desc = "kn-9-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",lvId = "1",cardId = 1102005,lv = 85,bklv = 10,star = 4,mon = {id = 252,desc = "kn-9-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-9",lvId = "1",cardId = 1101014,lv = 85,bklv = 10,star = 4,mon = {id = 213,desc = "kn-9-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",lvId = "1",cardId = 1102020,lv = 85,bklv = 10,star = 4,mon = {id = 258,desc = "kn-9-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20902] = {
		[1] = {
			jlr = {cha = "kn-9",lvId = "2",cardId = 1101007,lv = 86,bklv = 10,star = 4,mon = {id = 201,desc = "kn-9-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",lvId = "2",cardId = 1102012,lv = 86,bklv = 10,star = 4,mon = {id = 241,desc = "kn-9-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-9",lvId = "2",cardId = 1101003,lv = 86,bklv = 10,star = 4,mon = {id = 203,desc = "kn-9-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",lvId = "2",cardId = 1102005,lv = 86,bklv = 10,star = 4,mon = {id = 244,desc = "kn-9-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-9",lvId = "2",cardId = 1101014,lv = 86,bklv = 10,star = 4,mon = {id = 214,desc = "kn-9-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",lvId = "2",cardId = 1102020,lv = 86,bklv = 10,star = 4,mon = {id = 259,desc = "kn-9-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20903] = {
		[1] = {
			jlr = {cha = "kn-9",lvId = "3",cardId = 1101007,lv = 86,bklv = 10,star = 4,mon = {id = 212,desc = "kn-9-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",lvId = "3",cardId = 1102012,lv = 86,bklv = 10,star = 4,mon = {id = 257,desc = "kn-9-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-9",lvId = "3",cardId = 1101003,lv = 86,bklv = 10,star = 4,mon = {id = 208,desc = "kn-9-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",lvId = "3",cardId = 1102005,lv = 86,bklv = 10,star = 4,mon = {id = 252,desc = "kn-9-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-9",lvId = "3",cardId = 1101014,lv = 86,bklv = 10,star = 4,mon = {id = 209,desc = "kn-9-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",lvId = "3",cardId = 1102020,lv = 86,bklv = 10,star = 4,mon = {id = 253,desc = "kn-9-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20904] = {
		[1] = {
			jlr = {cha = "kn-9",lvId = "4",cardId = 1101007,lv = 87,bklv = 10,star = 4,mon = {id = 215,desc = "kn-9-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",lvId = "4",cardId = 1102012,lv = 87,bklv = 10,star = 4,mon = {id = 260,desc = "kn-9-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-9",lvId = "4",cardId = 1101003,lv = 87,bklv = 10,star = 4,mon = {id = 201,desc = "kn-9-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",lvId = "4",cardId = 1102005,lv = 87,bklv = 10,star = 4,mon = {id = 248,desc = "kn-9-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-9",lvId = "4",cardId = 1101014,lv = 87,bklv = 10,star = 4,mon = {id = 211,desc = "kn-9-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",lvId = "4",cardId = 1102020,lv = 87,bklv = 10,star = 4,mon = {id = 256,desc = "kn-9-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20905] = {
		[1] = {
			jlr = {cha = "kn-9",lvId = "5",cardId = 1101007,lv = 87,bklv = 10,star = 4,mon = {id = 206,desc = "kn-9-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",lvId = "5",cardId = 1102012,lv = 87,bklv = 10,star = 4,mon = {id = 246,desc = "kn-9-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-9",lvId = "5",cardId = 1101003,lv = 87,bklv = 10,star = 4,mon = {id = 203,desc = "kn-9-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",lvId = "5",cardId = 1102005,lv = 87,bklv = 10,star = 4,mon = {id = 244,desc = "kn-9-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-9",lvId = "5",cardId = 1101014,lv = 87,bklv = 10,star = 4,mon = {id = 212,desc = "kn-9-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",lvId = "5",cardId = 1102020,lv = 87,bklv = 10,star = 4,mon = {id = 257,desc = "kn-9-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20906] = {
		[1] = {
			jlr = {cha = "kn-9",lvId = "6",cardId = 1101007,lv = 88,bklv = 10,star = 4,mon = {id = 209,desc = "kn-9-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",lvId = "6",cardId = 1102012,lv = 88,bklv = 10,star = 4,mon = {id = 253,desc = "kn-9-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-9",lvId = "6",cardId = 1101003,lv = 88,bklv = 10,star = 4,mon = {id = 208,desc = "kn-9-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",lvId = "6",cardId = 1102005,lv = 88,bklv = 10,star = 4,mon = {id = 252,desc = "kn-9-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-9",lvId = "6",cardId = 1101014,lv = 88,bklv = 10,star = 4,mon = {id = 212,desc = "kn-9-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",lvId = "6",cardId = 1102020,lv = 88,bklv = 10,star = 4,mon = {id = 257,desc = "kn-9-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20907] = {
		[1] = {
			jlr = {cha = "kn-9",lvId = "7",cardId = 1101007,lv = 88,bklv = 10,star = 4,mon = {id = 207,desc = "kn-9-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",lvId = "7",cardId = 1102012,lv = 88,bklv = 10,star = 4,mon = {id = 248,desc = "kn-9-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-9",lvId = "7",cardId = 1101003,lv = 88,bklv = 10,star = 4,mon = {id = 207,desc = "kn-9-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",lvId = "7",cardId = 1102005,lv = 88,bklv = 10,star = 4,mon = {id = 242,desc = "kn-9-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-9",lvId = "7",cardId = 1101014,lv = 88,bklv = 10,star = 4,mon = {id = 211,desc = "kn-9-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",lvId = "7",cardId = 1102020,lv = 88,bklv = 10,star = 4,mon = {id = 256,desc = "kn-9-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20908] = {
		[1] = {
			jlr = {cha = "kn-9",lvId = "8",cardId = 1101007,lv = 89,bklv = 10,star = 4,mon = {id = 207,desc = "kn-9-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",lvId = "8",cardId = 1102012,lv = 89,bklv = 10,star = 4,mon = {id = 251,desc = "kn-9-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-9",lvId = "8",cardId = 1101003,lv = 89,bklv = 10,star = 4,mon = {id = 205,desc = "kn-9-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",lvId = "8",cardId = 1102005,lv = 89,bklv = 10,star = 4,mon = {id = 250,desc = "kn-9-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-9",lvId = "8",cardId = 1101014,lv = 89,bklv = 10,star = 4,mon = {id = 210,desc = "kn-9-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",lvId = "8",cardId = 1102020,lv = 89,bklv = 10,star = 4,mon = {id = 255,desc = "kn-9-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20909] = {
		[1] = {
			jlr = {cha = "kn-9",lvId = "9",cardId = 1101007,lv = 90,bklv = 11,star = 4,mon = {id = 212,desc = "kn-9-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",lvId = "9",cardId = 1102012,lv = 90,bklv = 11,star = 4,mon = {id = 257,desc = "kn-9-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-9",lvId = "9",cardId = 1101003,lv = 90,bklv = 11,star = 4,mon = {id = 208,desc = "kn-9-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",lvId = "9",cardId = 1102005,lv = 90,bklv = 11,star = 4,mon = {id = 252,desc = "kn-9-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-9",lvId = "9",cardId = 1101014,lv = 90,bklv = 11,star = 4,mon = {id = 209,desc = "kn-9-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",lvId = "9",cardId = 1102020,lv = 90,bklv = 11,star = 4,mon = {id = 253,desc = "kn-9-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20910] = {
		[1] = {
			jlr = {cha = "kn-9",lvId = "10",cardId = 1101007,lv = 90,bklv = 11,star = 4,mon = {id = 201,desc = "kn-9-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",lvId = "10",cardId = 1102012,lv = 90,bklv = 11,star = 4,mon = {id = 241,desc = "kn-9-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-9",lvId = "10",cardId = 1101003,lv = 90,bklv = 11,star = 4,mon = {id = 203,desc = "kn-9-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",lvId = "10",cardId = 1102005,lv = 90,bklv = 11,star = 4,mon = {id = 244,desc = "kn-9-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-9",lvId = "10",cardId = 1101014,lv = 90,bklv = 11,star = 4,mon = {id = 214,desc = "kn-9-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",lvId = "10",cardId = 1102020,lv = 90,bklv = 11,star = 4,mon = {id = 259,desc = "kn-9-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20911] = {
		[1] = {
			jlr = {cha = "kn-9",lvId = "11",cardId = 1101007,lv = 90,bklv = 11,star = 4,mon = {id = 212,desc = "kn-9-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",lvId = "11",cardId = 1102012,lv = 90,bklv = 11,star = 4,mon = {id = 257,desc = "kn-9-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-9",lvId = "11",cardId = 1101003,lv = 90,bklv = 11,star = 4,mon = {id = 208,desc = "kn-9-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",lvId = "11",cardId = 1102005,lv = 90,bklv = 11,star = 4,mon = {id = 252,desc = "kn-9-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-9",lvId = "11",cardId = 1101014,lv = 90,bklv = 11,star = 4,mon = {id = 209,desc = "kn-9-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",lvId = "11",cardId = 1102020,lv = 90,bklv = 11,star = 4,mon = {id = 253,desc = "kn-9-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20912] = {
		[1] = {
			jlr = {cha = "kn-9",lvId = "12",cardId = 1101007,lv = 91,bklv = 11,star = 4,mon = {id = 215,desc = "kn-9-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",lvId = "12",cardId = 1102012,lv = 91,bklv = 11,star = 4,mon = {id = 260,desc = "kn-9-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-9",lvId = "12",cardId = 1101003,lv = 91,bklv = 11,star = 4,mon = {id = 201,desc = "kn-9-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",lvId = "12",cardId = 1102005,lv = 91,bklv = 11,star = 4,mon = {id = 248,desc = "kn-9-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-9",lvId = "12",cardId = 1101014,lv = 91,bklv = 11,star = 4,mon = {id = 211,desc = "kn-9-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",lvId = "12",cardId = 1102020,lv = 91,bklv = 11,star = 4,mon = {id = 256,desc = "kn-9-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20913] = {
		[1] = {
			jlr = {cha = "kn-9",lvId = "13",cardId = 1101007,lv = 92,bklv = 11,star = 4,mon = {id = 209,desc = "kn-9-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",lvId = "13",cardId = 1102012,lv = 92,bklv = 11,star = 4,mon = {id = 253,desc = "kn-9-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-9",lvId = "13",cardId = 1101003,lv = 92,bklv = 11,star = 4,mon = {id = 208,desc = "kn-9-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",lvId = "13",cardId = 1102005,lv = 92,bklv = 11,star = 4,mon = {id = 252,desc = "kn-9-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-9",lvId = "13",cardId = 1101014,lv = 92,bklv = 11,star = 4,mon = {id = 212,desc = "kn-9-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",lvId = "13",cardId = 1102020,lv = 92,bklv = 11,star = 4,mon = {id = 257,desc = "kn-9-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20914] = {
		[1] = {
			jlr = {cha = "kn-9",lvId = "14",cardId = 1101007,lv = 93,bklv = 11,star = 4,mon = {id = 207,desc = "kn-9-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",lvId = "14",cardId = 1102012,lv = 93,bklv = 11,star = 4,mon = {id = 248,desc = "kn-9-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-9",lvId = "14",cardId = 1101005,lv = 93,bklv = 11,star = 4,mon = {id = 207,desc = "kn-9-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",lvId = "14",cardId = 1102011,lv = 93,bklv = 11,star = 4,mon = {id = 242,desc = "kn-9-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-9",lvId = "14",cardId = 1101003,lv = 93,bklv = 11,star = 4,mon = {id = 211,desc = "kn-9-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",lvId = "14",cardId = 1102005,lv = 93,bklv = 11,star = 4,mon = {id = 256,desc = "kn-9-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20915] = {
		[1] = {
			jlr = {cha = "kn-9",lvId = "15",cardId = 1101007,lv = 94,bklv = 11,star = 4,mon = {id = 205,desc = "kn-9-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",lvId = "15",cardId = 1102012,lv = 94,bklv = 11,star = 4,mon = {id = 240,desc = "kn-9-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-9",lvId = "15",cardId = 1101005,lv = 94,bklv = 11,star = 4,mon = {id = 204,desc = "kn-9-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",lvId = "15",cardId = 1102011,lv = 94,bklv = 11,star = 4,mon = {id = 245,desc = "kn-9-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-9",lvId = "15",cardId = 1101010,lv = 94,bklv = 11,star = 4,mon = {id = 207,desc = "kn-9-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",lvId = "15",cardId = 1102016,lv = 94,bklv = 11,star = 4,mon = {id = 249,desc = "kn-9-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21001] = {
		[1] = {
			jlr = {cha = "kn-10",lvId = "1",cardId = 1101007,lv = 95,bklv = 12,star = 4,mon = {id = 212,desc = "kn-10-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",lvId = "1",cardId = 1102012,lv = 95,bklv = 12,star = 4,mon = {id = 257,desc = "kn-10-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-10",lvId = "1",cardId = 1101003,lv = 95,bklv = 12,star = 4,mon = {id = 208,desc = "kn-10-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",lvId = "1",cardId = 1102005,lv = 95,bklv = 12,star = 4,mon = {id = 252,desc = "kn-10-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-10",lvId = "1",cardId = 1101014,lv = 95,bklv = 12,star = 4,mon = {id = 213,desc = "kn-10-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",lvId = "1",cardId = 1102020,lv = 95,bklv = 12,star = 4,mon = {id = 258,desc = "kn-10-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21002] = {
		[1] = {
			jlr = {cha = "kn-10",lvId = "2",cardId = 1101007,lv = 96,bklv = 12,star = 4,mon = {id = 201,desc = "kn-10-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",lvId = "2",cardId = 1102012,lv = 96,bklv = 12,star = 4,mon = {id = 241,desc = "kn-10-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-10",lvId = "2",cardId = 1101003,lv = 96,bklv = 12,star = 4,mon = {id = 203,desc = "kn-10-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",lvId = "2",cardId = 1102005,lv = 96,bklv = 12,star = 4,mon = {id = 244,desc = "kn-10-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-10",lvId = "2",cardId = 1101014,lv = 96,bklv = 12,star = 4,mon = {id = 214,desc = "kn-10-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",lvId = "2",cardId = 1102020,lv = 96,bklv = 12,star = 4,mon = {id = 259,desc = "kn-10-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21003] = {
		[1] = {
			jlr = {cha = "kn-10",lvId = "3",cardId = 1101007,lv = 96,bklv = 12,star = 4,mon = {id = 212,desc = "kn-10-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",lvId = "3",cardId = 1102012,lv = 96,bklv = 12,star = 4,mon = {id = 257,desc = "kn-10-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-10",lvId = "3",cardId = 1101003,lv = 96,bklv = 12,star = 4,mon = {id = 208,desc = "kn-10-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",lvId = "3",cardId = 1102005,lv = 96,bklv = 12,star = 4,mon = {id = 252,desc = "kn-10-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-10",lvId = "3",cardId = 1101014,lv = 96,bklv = 12,star = 4,mon = {id = 209,desc = "kn-10-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",lvId = "3",cardId = 1102020,lv = 96,bklv = 12,star = 4,mon = {id = 253,desc = "kn-10-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21004] = {
		[1] = {
			jlr = {cha = "kn-10",lvId = "4",cardId = 1101007,lv = 97,bklv = 12,star = 4,mon = {id = 215,desc = "kn-10-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",lvId = "4",cardId = 1102012,lv = 97,bklv = 12,star = 4,mon = {id = 260,desc = "kn-10-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-10",lvId = "4",cardId = 1101003,lv = 97,bklv = 12,star = 4,mon = {id = 201,desc = "kn-10-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",lvId = "4",cardId = 1102005,lv = 97,bklv = 12,star = 4,mon = {id = 248,desc = "kn-10-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-10",lvId = "4",cardId = 1101014,lv = 97,bklv = 12,star = 4,mon = {id = 211,desc = "kn-10-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",lvId = "4",cardId = 1102020,lv = 97,bklv = 12,star = 4,mon = {id = 256,desc = "kn-10-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21005] = {
		[1] = {
			jlr = {cha = "kn-10",lvId = "5",cardId = 1101007,lv = 97,bklv = 12,star = 4,mon = {id = 206,desc = "kn-10-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",lvId = "5",cardId = 1102012,lv = 97,bklv = 12,star = 4,mon = {id = 246,desc = "kn-10-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-10",lvId = "5",cardId = 1101003,lv = 97,bklv = 12,star = 4,mon = {id = 203,desc = "kn-10-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",lvId = "5",cardId = 1102005,lv = 97,bklv = 12,star = 4,mon = {id = 244,desc = "kn-10-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-10",lvId = "5",cardId = 1101014,lv = 97,bklv = 12,star = 4,mon = {id = 212,desc = "kn-10-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",lvId = "5",cardId = 1102020,lv = 97,bklv = 12,star = 4,mon = {id = 257,desc = "kn-10-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21006] = {
		[1] = {
			jlr = {cha = "kn-10",lvId = "6",cardId = 1101007,lv = 98,bklv = 12,star = 4,mon = {id = 209,desc = "kn-10-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",lvId = "6",cardId = 1102012,lv = 98,bklv = 12,star = 4,mon = {id = 253,desc = "kn-10-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-10",lvId = "6",cardId = 1101003,lv = 98,bklv = 12,star = 4,mon = {id = 208,desc = "kn-10-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",lvId = "6",cardId = 1102005,lv = 98,bklv = 12,star = 4,mon = {id = 252,desc = "kn-10-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-10",lvId = "6",cardId = 1101014,lv = 98,bklv = 12,star = 4,mon = {id = 212,desc = "kn-10-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",lvId = "6",cardId = 1102020,lv = 98,bklv = 12,star = 4,mon = {id = 257,desc = "kn-10-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21007] = {
		[1] = {
			jlr = {cha = "kn-10",lvId = "7",cardId = 1101007,lv = 98,bklv = 12,star = 4,mon = {id = 207,desc = "kn-10-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",lvId = "7",cardId = 1102012,lv = 98,bklv = 12,star = 4,mon = {id = 248,desc = "kn-10-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-10",lvId = "7",cardId = 1101003,lv = 98,bklv = 12,star = 4,mon = {id = 207,desc = "kn-10-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",lvId = "7",cardId = 1102005,lv = 98,bklv = 12,star = 4,mon = {id = 242,desc = "kn-10-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-10",lvId = "7",cardId = 1101014,lv = 98,bklv = 12,star = 4,mon = {id = 211,desc = "kn-10-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",lvId = "7",cardId = 1102020,lv = 98,bklv = 12,star = 4,mon = {id = 256,desc = "kn-10-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21008] = {
		[1] = {
			jlr = {cha = "kn-10",lvId = "8",cardId = 1101007,lv = 99,bklv = 12,star = 4,mon = {id = 207,desc = "kn-10-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",lvId = "8",cardId = 1102012,lv = 99,bklv = 12,star = 4,mon = {id = 251,desc = "kn-10-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-10",lvId = "8",cardId = 1101003,lv = 99,bklv = 12,star = 4,mon = {id = 205,desc = "kn-10-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",lvId = "8",cardId = 1102005,lv = 99,bklv = 12,star = 4,mon = {id = 250,desc = "kn-10-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-10",lvId = "8",cardId = 1101014,lv = 99,bklv = 12,star = 4,mon = {id = 210,desc = "kn-10-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",lvId = "8",cardId = 1102020,lv = 99,bklv = 12,star = 4,mon = {id = 255,desc = "kn-10-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21009] = {
		[1] = {
			jlr = {cha = "kn-10",lvId = "9",cardId = 1101007,lv = 100,bklv = 13,star = 4,mon = {id = 212,desc = "kn-10-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",lvId = "9",cardId = 1102012,lv = 100,bklv = 13,star = 4,mon = {id = 257,desc = "kn-10-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-10",lvId = "9",cardId = 1101003,lv = 100,bklv = 13,star = 4,mon = {id = 208,desc = "kn-10-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",lvId = "9",cardId = 1102005,lv = 100,bklv = 13,star = 4,mon = {id = 252,desc = "kn-10-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-10",lvId = "9",cardId = 1101014,lv = 100,bklv = 13,star = 4,mon = {id = 209,desc = "kn-10-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",lvId = "9",cardId = 1102020,lv = 100,bklv = 13,star = 4,mon = {id = 253,desc = "kn-10-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21010] = {
		[1] = {
			jlr = {cha = "kn-10",lvId = "10",cardId = 1101007,lv = 100,bklv = 13,star = 4,mon = {id = 201,desc = "kn-10-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",lvId = "10",cardId = 1102012,lv = 100,bklv = 13,star = 4,mon = {id = 241,desc = "kn-10-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-10",lvId = "10",cardId = 1101003,lv = 100,bklv = 13,star = 4,mon = {id = 203,desc = "kn-10-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",lvId = "10",cardId = 1102005,lv = 100,bklv = 13,star = 4,mon = {id = 244,desc = "kn-10-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-10",lvId = "10",cardId = 1101014,lv = 100,bklv = 13,star = 4,mon = {id = 214,desc = "kn-10-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",lvId = "10",cardId = 1102020,lv = 100,bklv = 13,star = 4,mon = {id = 259,desc = "kn-10-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21011] = {
		[1] = {
			jlr = {cha = "kn-10",lvId = "11",cardId = 1101007,lv = 100,bklv = 13,star = 4,mon = {id = 212,desc = "kn-10-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",lvId = "11",cardId = 1102012,lv = 100,bklv = 13,star = 4,mon = {id = 257,desc = "kn-10-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-10",lvId = "11",cardId = 1101003,lv = 100,bklv = 13,star = 4,mon = {id = 208,desc = "kn-10-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",lvId = "11",cardId = 1102005,lv = 100,bklv = 13,star = 4,mon = {id = 252,desc = "kn-10-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-10",lvId = "11",cardId = 1101014,lv = 100,bklv = 13,star = 4,mon = {id = 209,desc = "kn-10-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",lvId = "11",cardId = 1102020,lv = 100,bklv = 13,star = 4,mon = {id = 253,desc = "kn-10-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21012] = {
		[1] = {
			jlr = {cha = "kn-10",lvId = "12",cardId = 1101007,lv = 101,bklv = 13,star = 4,mon = {id = 215,desc = "kn-10-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",lvId = "12",cardId = 1102012,lv = 101,bklv = 13,star = 4,mon = {id = 260,desc = "kn-10-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-10",lvId = "12",cardId = 1101003,lv = 101,bklv = 13,star = 4,mon = {id = 201,desc = "kn-10-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",lvId = "12",cardId = 1102005,lv = 101,bklv = 13,star = 4,mon = {id = 248,desc = "kn-10-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-10",lvId = "12",cardId = 1101014,lv = 101,bklv = 13,star = 4,mon = {id = 211,desc = "kn-10-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",lvId = "12",cardId = 1102020,lv = 101,bklv = 13,star = 4,mon = {id = 256,desc = "kn-10-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21013] = {
		[1] = {
			jlr = {cha = "kn-10",lvId = "13",cardId = 1101007,lv = 102,bklv = 13,star = 4,mon = {id = 209,desc = "kn-10-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",lvId = "13",cardId = 1102012,lv = 102,bklv = 13,star = 4,mon = {id = 253,desc = "kn-10-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-10",lvId = "13",cardId = 1101003,lv = 102,bklv = 13,star = 4,mon = {id = 208,desc = "kn-10-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",lvId = "13",cardId = 1102005,lv = 102,bklv = 13,star = 4,mon = {id = 252,desc = "kn-10-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-10",lvId = "13",cardId = 1101014,lv = 102,bklv = 13,star = 4,mon = {id = 212,desc = "kn-10-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",lvId = "13",cardId = 1102020,lv = 102,bklv = 13,star = 4,mon = {id = 257,desc = "kn-10-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21014] = {
		[1] = {
			jlr = {cha = "kn-10",lvId = "14",cardId = 1101007,lv = 103,bklv = 13,star = 4,mon = {id = 207,desc = "kn-10-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",lvId = "14",cardId = 1102012,lv = 103,bklv = 13,star = 4,mon = {id = 248,desc = "kn-10-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-10",lvId = "14",cardId = 1101005,lv = 103,bklv = 13,star = 4,mon = {id = 207,desc = "kn-10-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",lvId = "14",cardId = 1102011,lv = 103,bklv = 13,star = 4,mon = {id = 242,desc = "kn-10-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-10",lvId = "14",cardId = 1101003,lv = 103,bklv = 13,star = 4,mon = {id = 211,desc = "kn-10-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",lvId = "14",cardId = 1102005,lv = 103,bklv = 13,star = 4,mon = {id = 256,desc = "kn-10-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21015] = {
		[1] = {
			jlr = {cha = "kn-10",lvId = "15",cardId = 1101007,lv = 104,bklv = 13,star = 4,mon = {id = 205,desc = "kn-10-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",lvId = "15",cardId = 1102012,lv = 104,bklv = 13,star = 4,mon = {id = 240,desc = "kn-10-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-10",lvId = "15",cardId = 1101005,lv = 104,bklv = 13,star = 4,mon = {id = 204,desc = "kn-10-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",lvId = "15",cardId = 1102011,lv = 104,bklv = 13,star = 4,mon = {id = 245,desc = "kn-10-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-10",lvId = "15",cardId = 1101010,lv = 104,bklv = 13,star = 4,mon = {id = 207,desc = "kn-10-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",lvId = "15",cardId = 1102016,lv = 104,bklv = 13,star = 4,mon = {id = 249,desc = "kn-10-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21101] = {
		[1] = {
			jlr = {cha = "kn-11",lvId = "1",cardId = 1101007,lv = 105,bklv = 14,star = 4,mon = {id = 212,desc = "kn-11-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",lvId = "1",cardId = 1102012,lv = 105,bklv = 14,star = 4,mon = {id = 257,desc = "kn-11-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-11",lvId = "1",cardId = 1101003,lv = 105,bklv = 14,star = 4,mon = {id = 208,desc = "kn-11-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",lvId = "1",cardId = 1102005,lv = 105,bklv = 14,star = 4,mon = {id = 252,desc = "kn-11-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-11",lvId = "1",cardId = 1101014,lv = 105,bklv = 14,star = 4,mon = {id = 213,desc = "kn-11-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",lvId = "1",cardId = 1102020,lv = 105,bklv = 14,star = 4,mon = {id = 258,desc = "kn-11-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21102] = {
		[1] = {
			jlr = {cha = "kn-11",lvId = "2",cardId = 1101007,lv = 106,bklv = 14,star = 4,mon = {id = 201,desc = "kn-11-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",lvId = "2",cardId = 1102012,lv = 106,bklv = 14,star = 4,mon = {id = 241,desc = "kn-11-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-11",lvId = "2",cardId = 1101003,lv = 106,bklv = 14,star = 4,mon = {id = 203,desc = "kn-11-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",lvId = "2",cardId = 1102005,lv = 106,bklv = 14,star = 4,mon = {id = 244,desc = "kn-11-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-11",lvId = "2",cardId = 1101014,lv = 106,bklv = 14,star = 4,mon = {id = 214,desc = "kn-11-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",lvId = "2",cardId = 1102020,lv = 106,bklv = 14,star = 4,mon = {id = 259,desc = "kn-11-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21103] = {
		[1] = {
			jlr = {cha = "kn-11",lvId = "3",cardId = 1101007,lv = 106,bklv = 14,star = 4,mon = {id = 212,desc = "kn-11-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",lvId = "3",cardId = 1102012,lv = 106,bklv = 14,star = 4,mon = {id = 257,desc = "kn-11-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-11",lvId = "3",cardId = 1101003,lv = 106,bklv = 14,star = 4,mon = {id = 208,desc = "kn-11-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",lvId = "3",cardId = 1102005,lv = 106,bklv = 14,star = 4,mon = {id = 252,desc = "kn-11-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-11",lvId = "3",cardId = 1101014,lv = 106,bklv = 14,star = 4,mon = {id = 209,desc = "kn-11-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",lvId = "3",cardId = 1102020,lv = 106,bklv = 14,star = 4,mon = {id = 253,desc = "kn-11-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21104] = {
		[1] = {
			jlr = {cha = "kn-11",lvId = "4",cardId = 1101007,lv = 107,bklv = 14,star = 4,mon = {id = 215,desc = "kn-11-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",lvId = "4",cardId = 1102012,lv = 107,bklv = 14,star = 4,mon = {id = 260,desc = "kn-11-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-11",lvId = "4",cardId = 1101003,lv = 107,bklv = 14,star = 4,mon = {id = 201,desc = "kn-11-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",lvId = "4",cardId = 1102005,lv = 107,bklv = 14,star = 4,mon = {id = 248,desc = "kn-11-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-11",lvId = "4",cardId = 1101014,lv = 107,bklv = 14,star = 4,mon = {id = 211,desc = "kn-11-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",lvId = "4",cardId = 1102020,lv = 107,bklv = 14,star = 4,mon = {id = 256,desc = "kn-11-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21105] = {
		[1] = {
			jlr = {cha = "kn-11",lvId = "5",cardId = 1101007,lv = 107,bklv = 14,star = 4,mon = {id = 206,desc = "kn-11-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",lvId = "5",cardId = 1102012,lv = 107,bklv = 14,star = 4,mon = {id = 246,desc = "kn-11-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-11",lvId = "5",cardId = 1101003,lv = 107,bklv = 14,star = 4,mon = {id = 203,desc = "kn-11-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",lvId = "5",cardId = 1102005,lv = 107,bklv = 14,star = 4,mon = {id = 244,desc = "kn-11-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-11",lvId = "5",cardId = 1101014,lv = 107,bklv = 14,star = 4,mon = {id = 212,desc = "kn-11-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",lvId = "5",cardId = 1102020,lv = 107,bklv = 14,star = 4,mon = {id = 257,desc = "kn-11-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21106] = {
		[1] = {
			jlr = {cha = "kn-11",lvId = "6",cardId = 1101007,lv = 108,bklv = 14,star = 4,mon = {id = 209,desc = "kn-11-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",lvId = "6",cardId = 1102012,lv = 108,bklv = 14,star = 4,mon = {id = 253,desc = "kn-11-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-11",lvId = "6",cardId = 1101003,lv = 108,bklv = 14,star = 4,mon = {id = 208,desc = "kn-11-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",lvId = "6",cardId = 1102005,lv = 108,bklv = 14,star = 4,mon = {id = 252,desc = "kn-11-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-11",lvId = "6",cardId = 1101014,lv = 108,bklv = 14,star = 4,mon = {id = 212,desc = "kn-11-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",lvId = "6",cardId = 1102020,lv = 108,bklv = 14,star = 4,mon = {id = 257,desc = "kn-11-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21107] = {
		[1] = {
			jlr = {cha = "kn-11",lvId = "7",cardId = 1101007,lv = 108,bklv = 14,star = 4,mon = {id = 207,desc = "kn-11-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",lvId = "7",cardId = 1102012,lv = 108,bklv = 14,star = 4,mon = {id = 248,desc = "kn-11-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-11",lvId = "7",cardId = 1101003,lv = 108,bklv = 14,star = 4,mon = {id = 207,desc = "kn-11-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",lvId = "7",cardId = 1102005,lv = 108,bklv = 14,star = 4,mon = {id = 242,desc = "kn-11-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-11",lvId = "7",cardId = 1101014,lv = 108,bklv = 14,star = 4,mon = {id = 211,desc = "kn-11-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",lvId = "7",cardId = 1102020,lv = 108,bklv = 14,star = 4,mon = {id = 256,desc = "kn-11-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21108] = {
		[1] = {
			jlr = {cha = "kn-11",lvId = "8",cardId = 1101007,lv = 109,bklv = 14,star = 4,mon = {id = 207,desc = "kn-11-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",lvId = "8",cardId = 1102012,lv = 109,bklv = 14,star = 4,mon = {id = 251,desc = "kn-11-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-11",lvId = "8",cardId = 1101003,lv = 109,bklv = 14,star = 4,mon = {id = 205,desc = "kn-11-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",lvId = "8",cardId = 1102005,lv = 109,bklv = 14,star = 4,mon = {id = 250,desc = "kn-11-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-11",lvId = "8",cardId = 1101014,lv = 109,bklv = 14,star = 4,mon = {id = 210,desc = "kn-11-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",lvId = "8",cardId = 1102020,lv = 109,bklv = 14,star = 4,mon = {id = 255,desc = "kn-11-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21109] = {
		[1] = {
			jlr = {cha = "kn-11",lvId = "9",cardId = 1101007,lv = 110,bklv = 15,star = 4,mon = {id = 212,desc = "kn-11-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",lvId = "9",cardId = 1102012,lv = 110,bklv = 15,star = 4,mon = {id = 257,desc = "kn-11-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-11",lvId = "9",cardId = 1101003,lv = 110,bklv = 15,star = 4,mon = {id = 208,desc = "kn-11-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",lvId = "9",cardId = 1102005,lv = 110,bklv = 15,star = 4,mon = {id = 252,desc = "kn-11-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-11",lvId = "9",cardId = 1101014,lv = 110,bklv = 15,star = 4,mon = {id = 209,desc = "kn-11-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",lvId = "9",cardId = 1102020,lv = 110,bklv = 15,star = 4,mon = {id = 253,desc = "kn-11-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21110] = {
		[1] = {
			jlr = {cha = "kn-11",lvId = "10",cardId = 1101007,lv = 110,bklv = 15,star = 4,mon = {id = 201,desc = "kn-11-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",lvId = "10",cardId = 1102012,lv = 110,bklv = 15,star = 4,mon = {id = 241,desc = "kn-11-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-11",lvId = "10",cardId = 1101003,lv = 110,bklv = 15,star = 4,mon = {id = 203,desc = "kn-11-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",lvId = "10",cardId = 1102005,lv = 110,bklv = 15,star = 4,mon = {id = 244,desc = "kn-11-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-11",lvId = "10",cardId = 1101014,lv = 110,bklv = 15,star = 4,mon = {id = 214,desc = "kn-11-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",lvId = "10",cardId = 1102020,lv = 110,bklv = 15,star = 4,mon = {id = 259,desc = "kn-11-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21111] = {
		[1] = {
			jlr = {cha = "kn-11",lvId = "11",cardId = 1101007,lv = 110,bklv = 15,star = 4,mon = {id = 212,desc = "kn-11-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",lvId = "11",cardId = 1102012,lv = 110,bklv = 15,star = 4,mon = {id = 257,desc = "kn-11-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-11",lvId = "11",cardId = 1101003,lv = 110,bklv = 15,star = 4,mon = {id = 208,desc = "kn-11-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",lvId = "11",cardId = 1102005,lv = 110,bklv = 15,star = 4,mon = {id = 252,desc = "kn-11-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-11",lvId = "11",cardId = 1101014,lv = 110,bklv = 15,star = 4,mon = {id = 209,desc = "kn-11-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",lvId = "11",cardId = 1102020,lv = 110,bklv = 15,star = 4,mon = {id = 253,desc = "kn-11-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21112] = {
		[1] = {
			jlr = {cha = "kn-11",lvId = "12",cardId = 1101007,lv = 111,bklv = 15,star = 4,mon = {id = 215,desc = "kn-11-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",lvId = "12",cardId = 1102012,lv = 111,bklv = 15,star = 4,mon = {id = 260,desc = "kn-11-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-11",lvId = "12",cardId = 1101003,lv = 111,bklv = 15,star = 4,mon = {id = 201,desc = "kn-11-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",lvId = "12",cardId = 1102005,lv = 111,bklv = 15,star = 4,mon = {id = 248,desc = "kn-11-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-11",lvId = "12",cardId = 1101014,lv = 111,bklv = 15,star = 4,mon = {id = 211,desc = "kn-11-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",lvId = "12",cardId = 1102020,lv = 111,bklv = 15,star = 4,mon = {id = 256,desc = "kn-11-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21113] = {
		[1] = {
			jlr = {cha = "kn-11",lvId = "13",cardId = 1101007,lv = 112,bklv = 15,star = 4,mon = {id = 209,desc = "kn-11-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",lvId = "13",cardId = 1102012,lv = 112,bklv = 15,star = 4,mon = {id = 253,desc = "kn-11-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-11",lvId = "13",cardId = 1101003,lv = 112,bklv = 15,star = 4,mon = {id = 208,desc = "kn-11-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",lvId = "13",cardId = 1102005,lv = 112,bklv = 15,star = 4,mon = {id = 252,desc = "kn-11-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-11",lvId = "13",cardId = 1101014,lv = 112,bklv = 15,star = 4,mon = {id = 212,desc = "kn-11-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",lvId = "13",cardId = 1102020,lv = 112,bklv = 15,star = 4,mon = {id = 257,desc = "kn-11-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21114] = {
		[1] = {
			jlr = {cha = "kn-11",lvId = "14",cardId = 1101007,lv = 113,bklv = 15,star = 4,mon = {id = 207,desc = "kn-11-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",lvId = "14",cardId = 1102012,lv = 113,bklv = 15,star = 4,mon = {id = 248,desc = "kn-11-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-11",lvId = "14",cardId = 1101005,lv = 113,bklv = 15,star = 4,mon = {id = 207,desc = "kn-11-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",lvId = "14",cardId = 1102011,lv = 113,bklv = 15,star = 4,mon = {id = 242,desc = "kn-11-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-11",lvId = "14",cardId = 1101003,lv = 113,bklv = 15,star = 4,mon = {id = 211,desc = "kn-11-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",lvId = "14",cardId = 1102005,lv = 113,bklv = 15,star = 4,mon = {id = 256,desc = "kn-11-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21115] = {
		[1] = {
			jlr = {cha = "kn-11",lvId = "15",cardId = 1101007,lv = 114,bklv = 15,star = 4,mon = {id = 205,desc = "kn-11-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",lvId = "15",cardId = 1102012,lv = 114,bklv = 15,star = 4,mon = {id = 240,desc = "kn-11-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-11",lvId = "15",cardId = 1101005,lv = 114,bklv = 15,star = 4,mon = {id = 204,desc = "kn-11-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",lvId = "15",cardId = 1102011,lv = 114,bklv = 15,star = 4,mon = {id = 245,desc = "kn-11-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-11",lvId = "15",cardId = 1101010,lv = 114,bklv = 15,star = 4,mon = {id = 207,desc = "kn-11-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",lvId = "15",cardId = 1102016,lv = 114,bklv = 15,star = 4,mon = {id = 249,desc = "kn-11-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21201] = {
		[1] = {
			jlr = {cha = "kn-12",lvId = "1",cardId = 1101007,lv = 115,bklv = 16,star = 4,mon = {id = 212,desc = "kn-12-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",lvId = "1",cardId = 1102012,lv = 115,bklv = 16,star = 4,mon = {id = 257,desc = "kn-12-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-12",lvId = "1",cardId = 1101003,lv = 115,bklv = 16,star = 4,mon = {id = 208,desc = "kn-12-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",lvId = "1",cardId = 1102005,lv = 115,bklv = 16,star = 4,mon = {id = 252,desc = "kn-12-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-12",lvId = "1",cardId = 1101014,lv = 115,bklv = 16,star = 4,mon = {id = 213,desc = "kn-12-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",lvId = "1",cardId = 1102020,lv = 115,bklv = 16,star = 4,mon = {id = 258,desc = "kn-12-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21202] = {
		[1] = {
			jlr = {cha = "kn-12",lvId = "2",cardId = 1101007,lv = 116,bklv = 16,star = 4,mon = {id = 201,desc = "kn-12-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",lvId = "2",cardId = 1102012,lv = 116,bklv = 16,star = 4,mon = {id = 241,desc = "kn-12-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-12",lvId = "2",cardId = 1101003,lv = 116,bklv = 16,star = 4,mon = {id = 203,desc = "kn-12-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",lvId = "2",cardId = 1102005,lv = 116,bklv = 16,star = 4,mon = {id = 244,desc = "kn-12-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-12",lvId = "2",cardId = 1101014,lv = 116,bklv = 16,star = 4,mon = {id = 214,desc = "kn-12-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",lvId = "2",cardId = 1102020,lv = 116,bklv = 16,star = 4,mon = {id = 259,desc = "kn-12-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21203] = {
		[1] = {
			jlr = {cha = "kn-12",lvId = "3",cardId = 1101007,lv = 116,bklv = 16,star = 4,mon = {id = 212,desc = "kn-12-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",lvId = "3",cardId = 1102012,lv = 116,bklv = 16,star = 4,mon = {id = 257,desc = "kn-12-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-12",lvId = "3",cardId = 1101003,lv = 116,bklv = 16,star = 4,mon = {id = 208,desc = "kn-12-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",lvId = "3",cardId = 1102005,lv = 116,bklv = 16,star = 4,mon = {id = 252,desc = "kn-12-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-12",lvId = "3",cardId = 1101014,lv = 116,bklv = 16,star = 4,mon = {id = 209,desc = "kn-12-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",lvId = "3",cardId = 1102020,lv = 116,bklv = 16,star = 4,mon = {id = 253,desc = "kn-12-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21204] = {
		[1] = {
			jlr = {cha = "kn-12",lvId = "4",cardId = 1101007,lv = 117,bklv = 16,star = 4,mon = {id = 215,desc = "kn-12-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",lvId = "4",cardId = 1102012,lv = 117,bklv = 16,star = 4,mon = {id = 260,desc = "kn-12-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-12",lvId = "4",cardId = 1101003,lv = 117,bklv = 16,star = 4,mon = {id = 201,desc = "kn-12-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",lvId = "4",cardId = 1102005,lv = 117,bklv = 16,star = 4,mon = {id = 248,desc = "kn-12-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-12",lvId = "4",cardId = 1101014,lv = 117,bklv = 16,star = 4,mon = {id = 211,desc = "kn-12-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",lvId = "4",cardId = 1102020,lv = 117,bklv = 16,star = 4,mon = {id = 256,desc = "kn-12-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21205] = {
		[1] = {
			jlr = {cha = "kn-12",lvId = "5",cardId = 1101007,lv = 117,bklv = 16,star = 4,mon = {id = 206,desc = "kn-12-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",lvId = "5",cardId = 1102012,lv = 117,bklv = 16,star = 4,mon = {id = 246,desc = "kn-12-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-12",lvId = "5",cardId = 1101003,lv = 117,bklv = 16,star = 4,mon = {id = 203,desc = "kn-12-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",lvId = "5",cardId = 1102005,lv = 117,bklv = 16,star = 4,mon = {id = 244,desc = "kn-12-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-12",lvId = "5",cardId = 1101014,lv = 117,bklv = 16,star = 4,mon = {id = 212,desc = "kn-12-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",lvId = "5",cardId = 1102020,lv = 117,bklv = 16,star = 4,mon = {id = 257,desc = "kn-12-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21206] = {
		[1] = {
			jlr = {cha = "kn-12",lvId = "6",cardId = 1101007,lv = 118,bklv = 16,star = 4,mon = {id = 209,desc = "kn-12-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",lvId = "6",cardId = 1102012,lv = 118,bklv = 16,star = 4,mon = {id = 253,desc = "kn-12-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-12",lvId = "6",cardId = 1101003,lv = 118,bklv = 16,star = 4,mon = {id = 208,desc = "kn-12-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",lvId = "6",cardId = 1102005,lv = 118,bklv = 16,star = 4,mon = {id = 252,desc = "kn-12-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-12",lvId = "6",cardId = 1101014,lv = 118,bklv = 16,star = 4,mon = {id = 212,desc = "kn-12-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",lvId = "6",cardId = 1102020,lv = 118,bklv = 16,star = 4,mon = {id = 257,desc = "kn-12-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21207] = {
		[1] = {
			jlr = {cha = "kn-12",lvId = "7",cardId = 1101007,lv = 118,bklv = 16,star = 4,mon = {id = 207,desc = "kn-12-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",lvId = "7",cardId = 1102012,lv = 118,bklv = 16,star = 4,mon = {id = 248,desc = "kn-12-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-12",lvId = "7",cardId = 1101003,lv = 118,bklv = 16,star = 4,mon = {id = 207,desc = "kn-12-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",lvId = "7",cardId = 1102005,lv = 118,bklv = 16,star = 4,mon = {id = 242,desc = "kn-12-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-12",lvId = "7",cardId = 1101014,lv = 118,bklv = 16,star = 4,mon = {id = 211,desc = "kn-12-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",lvId = "7",cardId = 1102020,lv = 118,bklv = 16,star = 4,mon = {id = 256,desc = "kn-12-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21208] = {
		[1] = {
			jlr = {cha = "kn-12",lvId = "8",cardId = 1101007,lv = 119,bklv = 16,star = 4,mon = {id = 207,desc = "kn-12-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",lvId = "8",cardId = 1102012,lv = 119,bklv = 16,star = 4,mon = {id = 251,desc = "kn-12-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-12",lvId = "8",cardId = 1101003,lv = 119,bklv = 16,star = 4,mon = {id = 205,desc = "kn-12-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",lvId = "8",cardId = 1102005,lv = 119,bklv = 16,star = 4,mon = {id = 250,desc = "kn-12-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-12",lvId = "8",cardId = 1101014,lv = 119,bklv = 16,star = 4,mon = {id = 210,desc = "kn-12-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",lvId = "8",cardId = 1102020,lv = 119,bklv = 16,star = 4,mon = {id = 255,desc = "kn-12-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21209] = {
		[1] = {
			jlr = {cha = "kn-12",lvId = "9",cardId = 1101007,lv = 120,bklv = 17,star = 4,mon = {id = 212,desc = "kn-12-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",lvId = "9",cardId = 1102012,lv = 120,bklv = 17,star = 4,mon = {id = 257,desc = "kn-12-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-12",lvId = "9",cardId = 1101003,lv = 120,bklv = 17,star = 4,mon = {id = 208,desc = "kn-12-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",lvId = "9",cardId = 1102005,lv = 120,bklv = 17,star = 4,mon = {id = 252,desc = "kn-12-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-12",lvId = "9",cardId = 1101014,lv = 120,bklv = 17,star = 4,mon = {id = 209,desc = "kn-12-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",lvId = "9",cardId = 1102020,lv = 120,bklv = 17,star = 4,mon = {id = 253,desc = "kn-12-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21210] = {
		[1] = {
			jlr = {cha = "kn-12",lvId = "10",cardId = 1101007,lv = 120,bklv = 17,star = 4,mon = {id = 201,desc = "kn-12-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",lvId = "10",cardId = 1102012,lv = 120,bklv = 17,star = 4,mon = {id = 241,desc = "kn-12-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-12",lvId = "10",cardId = 1101003,lv = 120,bklv = 17,star = 4,mon = {id = 203,desc = "kn-12-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",lvId = "10",cardId = 1102005,lv = 120,bklv = 17,star = 4,mon = {id = 244,desc = "kn-12-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-12",lvId = "10",cardId = 1101014,lv = 120,bklv = 17,star = 4,mon = {id = 214,desc = "kn-12-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",lvId = "10",cardId = 1102020,lv = 120,bklv = 17,star = 4,mon = {id = 259,desc = "kn-12-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21211] = {
		[1] = {
			jlr = {cha = "kn-12",lvId = "11",cardId = 1101007,lv = 120,bklv = 17,star = 4,mon = {id = 212,desc = "kn-12-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",lvId = "11",cardId = 1102012,lv = 120,bklv = 17,star = 4,mon = {id = 257,desc = "kn-12-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-12",lvId = "11",cardId = 1101003,lv = 120,bklv = 17,star = 4,mon = {id = 208,desc = "kn-12-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",lvId = "11",cardId = 1102005,lv = 120,bklv = 17,star = 4,mon = {id = 252,desc = "kn-12-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-12",lvId = "11",cardId = 1101014,lv = 120,bklv = 17,star = 4,mon = {id = 209,desc = "kn-12-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",lvId = "11",cardId = 1102020,lv = 120,bklv = 17,star = 4,mon = {id = 253,desc = "kn-12-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21212] = {
		[1] = {
			jlr = {cha = "kn-12",lvId = "12",cardId = 1101007,lv = 121,bklv = 17,star = 4,mon = {id = 215,desc = "kn-12-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",lvId = "12",cardId = 1102012,lv = 121,bklv = 17,star = 4,mon = {id = 260,desc = "kn-12-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-12",lvId = "12",cardId = 1101003,lv = 121,bklv = 17,star = 4,mon = {id = 201,desc = "kn-12-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",lvId = "12",cardId = 1102005,lv = 121,bklv = 17,star = 4,mon = {id = 248,desc = "kn-12-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-12",lvId = "12",cardId = 1101014,lv = 121,bklv = 17,star = 4,mon = {id = 211,desc = "kn-12-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",lvId = "12",cardId = 1102020,lv = 121,bklv = 17,star = 4,mon = {id = 256,desc = "kn-12-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21213] = {
		[1] = {
			jlr = {cha = "kn-12",lvId = "13",cardId = 1101007,lv = 122,bklv = 17,star = 4,mon = {id = 209,desc = "kn-12-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",lvId = "13",cardId = 1102012,lv = 122,bklv = 17,star = 4,mon = {id = 253,desc = "kn-12-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-12",lvId = "13",cardId = 1101003,lv = 122,bklv = 17,star = 4,mon = {id = 208,desc = "kn-12-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",lvId = "13",cardId = 1102005,lv = 122,bklv = 17,star = 4,mon = {id = 252,desc = "kn-12-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-12",lvId = "13",cardId = 1101014,lv = 122,bklv = 17,star = 4,mon = {id = 212,desc = "kn-12-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",lvId = "13",cardId = 1102020,lv = 122,bklv = 17,star = 4,mon = {id = 257,desc = "kn-12-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21214] = {
		[1] = {
			jlr = {cha = "kn-12",lvId = "14",cardId = 1101007,lv = 123,bklv = 17,star = 4,mon = {id = 207,desc = "kn-12-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",lvId = "14",cardId = 1102012,lv = 123,bklv = 17,star = 4,mon = {id = 248,desc = "kn-12-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-12",lvId = "14",cardId = 1101005,lv = 123,bklv = 17,star = 4,mon = {id = 207,desc = "kn-12-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",lvId = "14",cardId = 1102011,lv = 123,bklv = 17,star = 4,mon = {id = 242,desc = "kn-12-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-12",lvId = "14",cardId = 1101003,lv = 123,bklv = 17,star = 4,mon = {id = 211,desc = "kn-12-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",lvId = "14",cardId = 1102005,lv = 123,bklv = 17,star = 4,mon = {id = 256,desc = "kn-12-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21215] = {
		[1] = {
			jlr = {cha = "kn-12",lvId = "15",cardId = 1101007,lv = 124,bklv = 17,star = 4,mon = {id = 205,desc = "kn-12-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",lvId = "15",cardId = 1102012,lv = 124,bklv = 17,star = 4,mon = {id = 240,desc = "kn-12-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-12",lvId = "15",cardId = 1101005,lv = 124,bklv = 17,star = 4,mon = {id = 204,desc = "kn-12-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",lvId = "15",cardId = 1102011,lv = 124,bklv = 17,star = 4,mon = {id = 245,desc = "kn-12-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-12",lvId = "15",cardId = 1101010,lv = 124,bklv = 17,star = 4,mon = {id = 207,desc = "kn-12-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",lvId = "15",cardId = 1102016,lv = 124,bklv = 17,star = 4,mon = {id = 249,desc = "kn-12-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21301] = {
		[1] = {
			jlr = {cha = "kn-13",lvId = "1",cardId = 1101007,lv = 125,bklv = 18,star = 5,mon = {id = 212,desc = "kn-13-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",lvId = "1",cardId = 1102012,lv = 125,bklv = 18,star = 5,mon = {id = 257,desc = "kn-13-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-13",lvId = "1",cardId = 1101003,lv = 125,bklv = 18,star = 5,mon = {id = 208,desc = "kn-13-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",lvId = "1",cardId = 1102005,lv = 125,bklv = 18,star = 5,mon = {id = 252,desc = "kn-13-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-13",lvId = "1",cardId = 1101014,lv = 125,bklv = 18,star = 5,mon = {id = 213,desc = "kn-13-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",lvId = "1",cardId = 1102020,lv = 125,bklv = 18,star = 5,mon = {id = 258,desc = "kn-13-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21302] = {
		[1] = {
			jlr = {cha = "kn-13",lvId = "2",cardId = 1101007,lv = 126,bklv = 18,star = 5,mon = {id = 201,desc = "kn-13-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",lvId = "2",cardId = 1102012,lv = 126,bklv = 18,star = 5,mon = {id = 241,desc = "kn-13-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-13",lvId = "2",cardId = 1101003,lv = 126,bklv = 18,star = 5,mon = {id = 203,desc = "kn-13-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",lvId = "2",cardId = 1102005,lv = 126,bklv = 18,star = 5,mon = {id = 244,desc = "kn-13-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-13",lvId = "2",cardId = 1101014,lv = 126,bklv = 18,star = 5,mon = {id = 214,desc = "kn-13-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",lvId = "2",cardId = 1102020,lv = 126,bklv = 18,star = 5,mon = {id = 259,desc = "kn-13-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21303] = {
		[1] = {
			jlr = {cha = "kn-13",lvId = "3",cardId = 1101007,lv = 126,bklv = 18,star = 5,mon = {id = 212,desc = "kn-13-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",lvId = "3",cardId = 1102012,lv = 126,bklv = 18,star = 5,mon = {id = 257,desc = "kn-13-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-13",lvId = "3",cardId = 1101003,lv = 126,bklv = 18,star = 5,mon = {id = 208,desc = "kn-13-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",lvId = "3",cardId = 1102005,lv = 126,bklv = 18,star = 5,mon = {id = 252,desc = "kn-13-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-13",lvId = "3",cardId = 1101014,lv = 126,bklv = 18,star = 5,mon = {id = 209,desc = "kn-13-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",lvId = "3",cardId = 1102020,lv = 126,bklv = 18,star = 5,mon = {id = 253,desc = "kn-13-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21304] = {
		[1] = {
			jlr = {cha = "kn-13",lvId = "4",cardId = 1101007,lv = 127,bklv = 18,star = 5,mon = {id = 215,desc = "kn-13-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",lvId = "4",cardId = 1102012,lv = 127,bklv = 18,star = 5,mon = {id = 260,desc = "kn-13-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-13",lvId = "4",cardId = 1101003,lv = 127,bklv = 18,star = 5,mon = {id = 201,desc = "kn-13-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",lvId = "4",cardId = 1102005,lv = 127,bklv = 18,star = 5,mon = {id = 248,desc = "kn-13-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-13",lvId = "4",cardId = 1101014,lv = 127,bklv = 18,star = 5,mon = {id = 211,desc = "kn-13-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",lvId = "4",cardId = 1102020,lv = 127,bklv = 18,star = 5,mon = {id = 256,desc = "kn-13-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21305] = {
		[1] = {
			jlr = {cha = "kn-13",lvId = "5",cardId = 1101007,lv = 127,bklv = 18,star = 5,mon = {id = 206,desc = "kn-13-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",lvId = "5",cardId = 1102012,lv = 127,bklv = 18,star = 5,mon = {id = 246,desc = "kn-13-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-13",lvId = "5",cardId = 1101003,lv = 127,bklv = 18,star = 5,mon = {id = 203,desc = "kn-13-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",lvId = "5",cardId = 1102005,lv = 127,bklv = 18,star = 5,mon = {id = 244,desc = "kn-13-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-13",lvId = "5",cardId = 1101014,lv = 127,bklv = 18,star = 5,mon = {id = 212,desc = "kn-13-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",lvId = "5",cardId = 1102020,lv = 127,bklv = 18,star = 5,mon = {id = 257,desc = "kn-13-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21306] = {
		[1] = {
			jlr = {cha = "kn-13",lvId = "6",cardId = 1101007,lv = 128,bklv = 18,star = 5,mon = {id = 209,desc = "kn-13-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",lvId = "6",cardId = 1102012,lv = 128,bklv = 18,star = 5,mon = {id = 253,desc = "kn-13-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-13",lvId = "6",cardId = 1101003,lv = 128,bklv = 18,star = 5,mon = {id = 208,desc = "kn-13-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",lvId = "6",cardId = 1102005,lv = 128,bklv = 18,star = 5,mon = {id = 252,desc = "kn-13-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-13",lvId = "6",cardId = 1101014,lv = 128,bklv = 18,star = 5,mon = {id = 212,desc = "kn-13-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",lvId = "6",cardId = 1102020,lv = 128,bklv = 18,star = 5,mon = {id = 257,desc = "kn-13-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21307] = {
		[1] = {
			jlr = {cha = "kn-13",lvId = "7",cardId = 1101007,lv = 128,bklv = 18,star = 5,mon = {id = 207,desc = "kn-13-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",lvId = "7",cardId = 1102012,lv = 128,bklv = 18,star = 5,mon = {id = 248,desc = "kn-13-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-13",lvId = "7",cardId = 1101003,lv = 128,bklv = 18,star = 5,mon = {id = 207,desc = "kn-13-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",lvId = "7",cardId = 1102005,lv = 128,bklv = 18,star = 5,mon = {id = 242,desc = "kn-13-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-13",lvId = "7",cardId = 1101014,lv = 128,bklv = 18,star = 5,mon = {id = 211,desc = "kn-13-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",lvId = "7",cardId = 1102020,lv = 128,bklv = 18,star = 5,mon = {id = 256,desc = "kn-13-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21308] = {
		[1] = {
			jlr = {cha = "kn-13",lvId = "8",cardId = 1101007,lv = 129,bklv = 18,star = 5,mon = {id = 207,desc = "kn-13-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",lvId = "8",cardId = 1102012,lv = 129,bklv = 18,star = 5,mon = {id = 251,desc = "kn-13-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-13",lvId = "8",cardId = 1101003,lv = 129,bklv = 18,star = 5,mon = {id = 205,desc = "kn-13-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",lvId = "8",cardId = 1102005,lv = 129,bklv = 18,star = 5,mon = {id = 250,desc = "kn-13-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-13",lvId = "8",cardId = 1101014,lv = 129,bklv = 18,star = 5,mon = {id = 210,desc = "kn-13-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",lvId = "8",cardId = 1102020,lv = 129,bklv = 18,star = 5,mon = {id = 255,desc = "kn-13-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21309] = {
		[1] = {
			jlr = {cha = "kn-13",lvId = "9",cardId = 1101007,lv = 130,bklv = 19,star = 5,mon = {id = 212,desc = "kn-13-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",lvId = "9",cardId = 1102012,lv = 130,bklv = 19,star = 5,mon = {id = 257,desc = "kn-13-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-13",lvId = "9",cardId = 1101003,lv = 130,bklv = 19,star = 5,mon = {id = 208,desc = "kn-13-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",lvId = "9",cardId = 1102005,lv = 130,bklv = 19,star = 5,mon = {id = 252,desc = "kn-13-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-13",lvId = "9",cardId = 1101014,lv = 130,bklv = 19,star = 5,mon = {id = 209,desc = "kn-13-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",lvId = "9",cardId = 1102020,lv = 130,bklv = 19,star = 5,mon = {id = 253,desc = "kn-13-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21310] = {
		[1] = {
			jlr = {cha = "kn-13",lvId = "10",cardId = 1101007,lv = 130,bklv = 19,star = 5,mon = {id = 201,desc = "kn-13-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",lvId = "10",cardId = 1102012,lv = 130,bklv = 19,star = 5,mon = {id = 241,desc = "kn-13-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-13",lvId = "10",cardId = 1101003,lv = 130,bklv = 19,star = 5,mon = {id = 203,desc = "kn-13-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",lvId = "10",cardId = 1102005,lv = 130,bklv = 19,star = 5,mon = {id = 244,desc = "kn-13-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-13",lvId = "10",cardId = 1101014,lv = 130,bklv = 19,star = 5,mon = {id = 214,desc = "kn-13-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",lvId = "10",cardId = 1102020,lv = 130,bklv = 19,star = 5,mon = {id = 259,desc = "kn-13-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21311] = {
		[1] = {
			jlr = {cha = "kn-13",lvId = "11",cardId = 1101007,lv = 130,bklv = 19,star = 5,mon = {id = 212,desc = "kn-13-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",lvId = "11",cardId = 1102012,lv = 130,bklv = 19,star = 5,mon = {id = 257,desc = "kn-13-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-13",lvId = "11",cardId = 1101003,lv = 130,bklv = 19,star = 5,mon = {id = 208,desc = "kn-13-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",lvId = "11",cardId = 1102005,lv = 130,bklv = 19,star = 5,mon = {id = 252,desc = "kn-13-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-13",lvId = "11",cardId = 1101014,lv = 130,bklv = 19,star = 5,mon = {id = 209,desc = "kn-13-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",lvId = "11",cardId = 1102020,lv = 130,bklv = 19,star = 5,mon = {id = 253,desc = "kn-13-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21312] = {
		[1] = {
			jlr = {cha = "kn-13",lvId = "12",cardId = 1101007,lv = 131,bklv = 19,star = 5,mon = {id = 215,desc = "kn-13-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",lvId = "12",cardId = 1102012,lv = 131,bklv = 19,star = 5,mon = {id = 260,desc = "kn-13-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-13",lvId = "12",cardId = 1101003,lv = 131,bklv = 19,star = 5,mon = {id = 201,desc = "kn-13-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",lvId = "12",cardId = 1102005,lv = 131,bklv = 19,star = 5,mon = {id = 248,desc = "kn-13-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-13",lvId = "12",cardId = 1101014,lv = 131,bklv = 19,star = 5,mon = {id = 211,desc = "kn-13-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",lvId = "12",cardId = 1102020,lv = 131,bklv = 19,star = 5,mon = {id = 256,desc = "kn-13-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21313] = {
		[1] = {
			jlr = {cha = "kn-13",lvId = "13",cardId = 1101007,lv = 132,bklv = 19,star = 5,mon = {id = 209,desc = "kn-13-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",lvId = "13",cardId = 1102012,lv = 132,bklv = 19,star = 5,mon = {id = 253,desc = "kn-13-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-13",lvId = "13",cardId = 1101003,lv = 132,bklv = 19,star = 5,mon = {id = 208,desc = "kn-13-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",lvId = "13",cardId = 1102005,lv = 132,bklv = 19,star = 5,mon = {id = 252,desc = "kn-13-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-13",lvId = "13",cardId = 1101014,lv = 132,bklv = 19,star = 5,mon = {id = 212,desc = "kn-13-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",lvId = "13",cardId = 1102020,lv = 132,bklv = 19,star = 5,mon = {id = 257,desc = "kn-13-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21314] = {
		[1] = {
			jlr = {cha = "kn-13",lvId = "14",cardId = 1101007,lv = 133,bklv = 19,star = 5,mon = {id = 207,desc = "kn-13-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",lvId = "14",cardId = 1102012,lv = 133,bklv = 19,star = 5,mon = {id = 248,desc = "kn-13-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-13",lvId = "14",cardId = 1101005,lv = 133,bklv = 19,star = 5,mon = {id = 207,desc = "kn-13-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",lvId = "14",cardId = 1102011,lv = 133,bklv = 19,star = 5,mon = {id = 242,desc = "kn-13-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-13",lvId = "14",cardId = 1101003,lv = 133,bklv = 19,star = 5,mon = {id = 211,desc = "kn-13-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",lvId = "14",cardId = 1102005,lv = 133,bklv = 19,star = 5,mon = {id = 256,desc = "kn-13-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21315] = {
		[1] = {
			jlr = {cha = "kn-13",lvId = "15",cardId = 1101007,lv = 134,bklv = 19,star = 5,mon = {id = 205,desc = "kn-13-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",lvId = "15",cardId = 1102012,lv = 134,bklv = 19,star = 5,mon = {id = 240,desc = "kn-13-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-13",lvId = "15",cardId = 1101005,lv = 134,bklv = 19,star = 5,mon = {id = 204,desc = "kn-13-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",lvId = "15",cardId = 1102011,lv = 134,bklv = 19,star = 5,mon = {id = 245,desc = "kn-13-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-13",lvId = "15",cardId = 1101010,lv = 134,bklv = 19,star = 5,mon = {id = 207,desc = "kn-13-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",lvId = "15",cardId = 1102016,lv = 134,bklv = 19,star = 5,mon = {id = 249,desc = "kn-13-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21401] = {
		[1] = {
			jlr = {cha = "kn-14",lvId = "1",cardId = 1101007,lv = 135,bklv = 20,star = 5,mon = {id = 212,desc = "kn-14-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",lvId = "1",cardId = 1102012,lv = 135,bklv = 20,star = 5,mon = {id = 257,desc = "kn-14-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-14",lvId = "1",cardId = 1101003,lv = 135,bklv = 20,star = 5,mon = {id = 208,desc = "kn-14-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",lvId = "1",cardId = 1102005,lv = 135,bklv = 20,star = 5,mon = {id = 252,desc = "kn-14-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-14",lvId = "1",cardId = 1101014,lv = 135,bklv = 20,star = 5,mon = {id = 213,desc = "kn-14-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",lvId = "1",cardId = 1102020,lv = 135,bklv = 20,star = 5,mon = {id = 258,desc = "kn-14-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21402] = {
		[1] = {
			jlr = {cha = "kn-14",lvId = "2",cardId = 1101007,lv = 136,bklv = 20,star = 5,mon = {id = 201,desc = "kn-14-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",lvId = "2",cardId = 1102012,lv = 136,bklv = 20,star = 5,mon = {id = 241,desc = "kn-14-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-14",lvId = "2",cardId = 1101003,lv = 136,bklv = 20,star = 5,mon = {id = 203,desc = "kn-14-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",lvId = "2",cardId = 1102005,lv = 136,bklv = 20,star = 5,mon = {id = 244,desc = "kn-14-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-14",lvId = "2",cardId = 1101014,lv = 136,bklv = 20,star = 5,mon = {id = 214,desc = "kn-14-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",lvId = "2",cardId = 1102020,lv = 136,bklv = 20,star = 5,mon = {id = 259,desc = "kn-14-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21403] = {
		[1] = {
			jlr = {cha = "kn-14",lvId = "3",cardId = 1101007,lv = 136,bklv = 20,star = 5,mon = {id = 212,desc = "kn-14-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",lvId = "3",cardId = 1102012,lv = 136,bklv = 20,star = 5,mon = {id = 257,desc = "kn-14-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-14",lvId = "3",cardId = 1101003,lv = 136,bklv = 20,star = 5,mon = {id = 208,desc = "kn-14-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",lvId = "3",cardId = 1102005,lv = 136,bklv = 20,star = 5,mon = {id = 252,desc = "kn-14-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-14",lvId = "3",cardId = 1101014,lv = 136,bklv = 20,star = 5,mon = {id = 209,desc = "kn-14-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",lvId = "3",cardId = 1102020,lv = 136,bklv = 20,star = 5,mon = {id = 253,desc = "kn-14-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21404] = {
		[1] = {
			jlr = {cha = "kn-14",lvId = "4",cardId = 1101007,lv = 137,bklv = 20,star = 5,mon = {id = 215,desc = "kn-14-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",lvId = "4",cardId = 1102012,lv = 137,bklv = 20,star = 5,mon = {id = 260,desc = "kn-14-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-14",lvId = "4",cardId = 1101003,lv = 137,bklv = 20,star = 5,mon = {id = 201,desc = "kn-14-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",lvId = "4",cardId = 1102005,lv = 137,bklv = 20,star = 5,mon = {id = 248,desc = "kn-14-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-14",lvId = "4",cardId = 1101014,lv = 137,bklv = 20,star = 5,mon = {id = 211,desc = "kn-14-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",lvId = "4",cardId = 1102020,lv = 137,bklv = 20,star = 5,mon = {id = 256,desc = "kn-14-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21405] = {
		[1] = {
			jlr = {cha = "kn-14",lvId = "5",cardId = 1101007,lv = 137,bklv = 20,star = 5,mon = {id = 206,desc = "kn-14-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",lvId = "5",cardId = 1102012,lv = 137,bklv = 20,star = 5,mon = {id = 246,desc = "kn-14-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-14",lvId = "5",cardId = 1101003,lv = 137,bklv = 20,star = 5,mon = {id = 203,desc = "kn-14-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",lvId = "5",cardId = 1102005,lv = 137,bklv = 20,star = 5,mon = {id = 244,desc = "kn-14-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-14",lvId = "5",cardId = 1101014,lv = 137,bklv = 20,star = 5,mon = {id = 212,desc = "kn-14-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",lvId = "5",cardId = 1102020,lv = 137,bklv = 20,star = 5,mon = {id = 257,desc = "kn-14-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21406] = {
		[1] = {
			jlr = {cha = "kn-14",lvId = "6",cardId = 1101007,lv = 138,bklv = 20,star = 5,mon = {id = 209,desc = "kn-14-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",lvId = "6",cardId = 1102012,lv = 138,bklv = 20,star = 5,mon = {id = 253,desc = "kn-14-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-14",lvId = "6",cardId = 1101003,lv = 138,bklv = 20,star = 5,mon = {id = 208,desc = "kn-14-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",lvId = "6",cardId = 1102005,lv = 138,bklv = 20,star = 5,mon = {id = 252,desc = "kn-14-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-14",lvId = "6",cardId = 1101014,lv = 138,bklv = 20,star = 5,mon = {id = 212,desc = "kn-14-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",lvId = "6",cardId = 1102020,lv = 138,bklv = 20,star = 5,mon = {id = 257,desc = "kn-14-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21407] = {
		[1] = {
			jlr = {cha = "kn-14",lvId = "7",cardId = 1101007,lv = 138,bklv = 20,star = 5,mon = {id = 207,desc = "kn-14-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",lvId = "7",cardId = 1102012,lv = 138,bklv = 20,star = 5,mon = {id = 248,desc = "kn-14-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-14",lvId = "7",cardId = 1101003,lv = 138,bklv = 20,star = 5,mon = {id = 207,desc = "kn-14-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",lvId = "7",cardId = 1102005,lv = 138,bklv = 20,star = 5,mon = {id = 242,desc = "kn-14-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-14",lvId = "7",cardId = 1101014,lv = 138,bklv = 20,star = 5,mon = {id = 211,desc = "kn-14-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",lvId = "7",cardId = 1102020,lv = 138,bklv = 20,star = 5,mon = {id = 256,desc = "kn-14-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21408] = {
		[1] = {
			jlr = {cha = "kn-14",lvId = "8",cardId = 1101007,lv = 139,bklv = 20,star = 5,mon = {id = 207,desc = "kn-14-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",lvId = "8",cardId = 1102012,lv = 139,bklv = 20,star = 5,mon = {id = 251,desc = "kn-14-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-14",lvId = "8",cardId = 1101003,lv = 139,bklv = 20,star = 5,mon = {id = 205,desc = "kn-14-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",lvId = "8",cardId = 1102005,lv = 139,bklv = 20,star = 5,mon = {id = 250,desc = "kn-14-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-14",lvId = "8",cardId = 1101014,lv = 139,bklv = 20,star = 5,mon = {id = 210,desc = "kn-14-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",lvId = "8",cardId = 1102020,lv = 139,bklv = 20,star = 5,mon = {id = 255,desc = "kn-14-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21409] = {
		[1] = {
			jlr = {cha = "kn-14",lvId = "9",cardId = 1101007,lv = 140,bklv = 21,star = 5,mon = {id = 212,desc = "kn-14-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",lvId = "9",cardId = 1102012,lv = 140,bklv = 21,star = 5,mon = {id = 257,desc = "kn-14-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-14",lvId = "9",cardId = 1101003,lv = 140,bklv = 21,star = 5,mon = {id = 208,desc = "kn-14-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",lvId = "9",cardId = 1102005,lv = 140,bklv = 21,star = 5,mon = {id = 252,desc = "kn-14-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-14",lvId = "9",cardId = 1101014,lv = 140,bklv = 21,star = 5,mon = {id = 209,desc = "kn-14-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",lvId = "9",cardId = 1102020,lv = 140,bklv = 21,star = 5,mon = {id = 253,desc = "kn-14-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21410] = {
		[1] = {
			jlr = {cha = "kn-14",lvId = "10",cardId = 1101007,lv = 140,bklv = 21,star = 5,mon = {id = 201,desc = "kn-14-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",lvId = "10",cardId = 1102012,lv = 140,bklv = 21,star = 5,mon = {id = 241,desc = "kn-14-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-14",lvId = "10",cardId = 1101003,lv = 140,bklv = 21,star = 5,mon = {id = 203,desc = "kn-14-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",lvId = "10",cardId = 1102005,lv = 140,bklv = 21,star = 5,mon = {id = 244,desc = "kn-14-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-14",lvId = "10",cardId = 1101014,lv = 140,bklv = 21,star = 5,mon = {id = 214,desc = "kn-14-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",lvId = "10",cardId = 1102020,lv = 140,bklv = 21,star = 5,mon = {id = 259,desc = "kn-14-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21411] = {
		[1] = {
			jlr = {cha = "kn-14",lvId = "11",cardId = 1101007,lv = 140,bklv = 21,star = 5,mon = {id = 212,desc = "kn-14-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",lvId = "11",cardId = 1102012,lv = 140,bklv = 21,star = 5,mon = {id = 257,desc = "kn-14-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-14",lvId = "11",cardId = 1101003,lv = 140,bklv = 21,star = 5,mon = {id = 208,desc = "kn-14-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",lvId = "11",cardId = 1102005,lv = 140,bklv = 21,star = 5,mon = {id = 252,desc = "kn-14-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-14",lvId = "11",cardId = 1101014,lv = 140,bklv = 21,star = 5,mon = {id = 209,desc = "kn-14-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",lvId = "11",cardId = 1102020,lv = 140,bklv = 21,star = 5,mon = {id = 253,desc = "kn-14-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21412] = {
		[1] = {
			jlr = {cha = "kn-14",lvId = "12",cardId = 1101007,lv = 141,bklv = 21,star = 5,mon = {id = 215,desc = "kn-14-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",lvId = "12",cardId = 1102012,lv = 141,bklv = 21,star = 5,mon = {id = 260,desc = "kn-14-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-14",lvId = "12",cardId = 1101003,lv = 141,bklv = 21,star = 5,mon = {id = 201,desc = "kn-14-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",lvId = "12",cardId = 1102005,lv = 141,bklv = 21,star = 5,mon = {id = 248,desc = "kn-14-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-14",lvId = "12",cardId = 1101014,lv = 141,bklv = 21,star = 5,mon = {id = 211,desc = "kn-14-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",lvId = "12",cardId = 1102020,lv = 141,bklv = 21,star = 5,mon = {id = 256,desc = "kn-14-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21413] = {
		[1] = {
			jlr = {cha = "kn-14",lvId = "13",cardId = 1101007,lv = 142,bklv = 21,star = 5,mon = {id = 209,desc = "kn-14-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",lvId = "13",cardId = 1102012,lv = 142,bklv = 21,star = 5,mon = {id = 253,desc = "kn-14-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-14",lvId = "13",cardId = 1101003,lv = 142,bklv = 21,star = 5,mon = {id = 208,desc = "kn-14-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",lvId = "13",cardId = 1102005,lv = 142,bklv = 21,star = 5,mon = {id = 252,desc = "kn-14-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-14",lvId = "13",cardId = 1101014,lv = 142,bklv = 21,star = 5,mon = {id = 212,desc = "kn-14-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",lvId = "13",cardId = 1102020,lv = 142,bklv = 21,star = 5,mon = {id = 257,desc = "kn-14-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21414] = {
		[1] = {
			jlr = {cha = "kn-14",lvId = "14",cardId = 1101007,lv = 143,bklv = 21,star = 5,mon = {id = 207,desc = "kn-14-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",lvId = "14",cardId = 1102012,lv = 143,bklv = 21,star = 5,mon = {id = 248,desc = "kn-14-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-14",lvId = "14",cardId = 1101005,lv = 143,bklv = 21,star = 5,mon = {id = 207,desc = "kn-14-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",lvId = "14",cardId = 1102011,lv = 143,bklv = 21,star = 5,mon = {id = 242,desc = "kn-14-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-14",lvId = "14",cardId = 1101003,lv = 143,bklv = 21,star = 5,mon = {id = 211,desc = "kn-14-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",lvId = "14",cardId = 1102005,lv = 143,bklv = 21,star = 5,mon = {id = 256,desc = "kn-14-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21415] = {
		[1] = {
			jlr = {cha = "kn-14",lvId = "15",cardId = 1101007,lv = 144,bklv = 21,star = 5,mon = {id = 205,desc = "kn-14-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",lvId = "15",cardId = 1102012,lv = 144,bklv = 21,star = 5,mon = {id = 240,desc = "kn-14-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-14",lvId = "15",cardId = 1101005,lv = 144,bklv = 21,star = 5,mon = {id = 204,desc = "kn-14-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",lvId = "15",cardId = 1102011,lv = 144,bklv = 21,star = 5,mon = {id = 245,desc = "kn-14-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-14",lvId = "15",cardId = 1101010,lv = 144,bklv = 21,star = 5,mon = {id = 207,desc = "kn-14-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",lvId = "15",cardId = 1102016,lv = 144,bklv = 21,star = 5,mon = {id = 249,desc = "kn-14-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21501] = {
		[1] = {
			jlr = {cha = "kn-15",lvId = "1",cardId = 1101007,lv = 145,bklv = 21,star = 5,mon = {id = 212,desc = "kn-15-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",lvId = "1",cardId = 1102012,lv = 145,bklv = 21,star = 5,mon = {id = 257,desc = "kn-15-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-15",lvId = "1",cardId = 1101003,lv = 145,bklv = 21,star = 5,mon = {id = 208,desc = "kn-15-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",lvId = "1",cardId = 1102005,lv = 145,bklv = 21,star = 5,mon = {id = 252,desc = "kn-15-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-15",lvId = "1",cardId = 1101014,lv = 145,bklv = 21,star = 5,mon = {id = 213,desc = "kn-15-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",lvId = "1",cardId = 1102020,lv = 145,bklv = 21,star = 5,mon = {id = 258,desc = "kn-15-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21502] = {
		[1] = {
			jlr = {cha = "kn-15",lvId = "2",cardId = 1101007,lv = 146,bklv = 21,star = 5,mon = {id = 201,desc = "kn-15-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",lvId = "2",cardId = 1102012,lv = 146,bklv = 21,star = 5,mon = {id = 241,desc = "kn-15-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-15",lvId = "2",cardId = 1101003,lv = 146,bklv = 21,star = 5,mon = {id = 203,desc = "kn-15-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",lvId = "2",cardId = 1102005,lv = 146,bklv = 21,star = 5,mon = {id = 244,desc = "kn-15-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-15",lvId = "2",cardId = 1101014,lv = 146,bklv = 21,star = 5,mon = {id = 214,desc = "kn-15-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",lvId = "2",cardId = 1102020,lv = 146,bklv = 21,star = 5,mon = {id = 259,desc = "kn-15-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21503] = {
		[1] = {
			jlr = {cha = "kn-15",lvId = "3",cardId = 1101007,lv = 146,bklv = 21,star = 5,mon = {id = 212,desc = "kn-15-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",lvId = "3",cardId = 1102012,lv = 146,bklv = 21,star = 5,mon = {id = 257,desc = "kn-15-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-15",lvId = "3",cardId = 1101003,lv = 146,bklv = 21,star = 5,mon = {id = 208,desc = "kn-15-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",lvId = "3",cardId = 1102005,lv = 146,bklv = 21,star = 5,mon = {id = 252,desc = "kn-15-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-15",lvId = "3",cardId = 1101014,lv = 146,bklv = 21,star = 5,mon = {id = 209,desc = "kn-15-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",lvId = "3",cardId = 1102020,lv = 146,bklv = 21,star = 5,mon = {id = 253,desc = "kn-15-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21504] = {
		[1] = {
			jlr = {cha = "kn-15",lvId = "4",cardId = 1101007,lv = 147,bklv = 21,star = 5,mon = {id = 215,desc = "kn-15-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",lvId = "4",cardId = 1102012,lv = 147,bklv = 21,star = 5,mon = {id = 260,desc = "kn-15-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-15",lvId = "4",cardId = 1101003,lv = 147,bklv = 21,star = 5,mon = {id = 201,desc = "kn-15-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",lvId = "4",cardId = 1102005,lv = 147,bklv = 21,star = 5,mon = {id = 248,desc = "kn-15-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-15",lvId = "4",cardId = 1101014,lv = 147,bklv = 21,star = 5,mon = {id = 211,desc = "kn-15-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",lvId = "4",cardId = 1102020,lv = 147,bklv = 21,star = 5,mon = {id = 256,desc = "kn-15-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21505] = {
		[1] = {
			jlr = {cha = "kn-15",lvId = "5",cardId = 1101007,lv = 147,bklv = 21,star = 5,mon = {id = 206,desc = "kn-15-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",lvId = "5",cardId = 1102012,lv = 147,bklv = 21,star = 5,mon = {id = 246,desc = "kn-15-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-15",lvId = "5",cardId = 1101003,lv = 147,bklv = 21,star = 5,mon = {id = 203,desc = "kn-15-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",lvId = "5",cardId = 1102005,lv = 147,bklv = 21,star = 5,mon = {id = 244,desc = "kn-15-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-15",lvId = "5",cardId = 1101014,lv = 147,bklv = 21,star = 5,mon = {id = 212,desc = "kn-15-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",lvId = "5",cardId = 1102020,lv = 147,bklv = 21,star = 5,mon = {id = 257,desc = "kn-15-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21506] = {
		[1] = {
			jlr = {cha = "kn-15",lvId = "6",cardId = 1101007,lv = 148,bklv = 21,star = 5,mon = {id = 209,desc = "kn-15-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",lvId = "6",cardId = 1102012,lv = 148,bklv = 21,star = 5,mon = {id = 253,desc = "kn-15-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-15",lvId = "6",cardId = 1101003,lv = 148,bklv = 21,star = 5,mon = {id = 208,desc = "kn-15-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",lvId = "6",cardId = 1102005,lv = 148,bklv = 21,star = 5,mon = {id = 252,desc = "kn-15-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-15",lvId = "6",cardId = 1101014,lv = 148,bklv = 21,star = 5,mon = {id = 212,desc = "kn-15-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",lvId = "6",cardId = 1102020,lv = 148,bklv = 21,star = 5,mon = {id = 257,desc = "kn-15-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21507] = {
		[1] = {
			jlr = {cha = "kn-15",lvId = "7",cardId = 1101007,lv = 148,bklv = 21,star = 5,mon = {id = 207,desc = "kn-15-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",lvId = "7",cardId = 1102012,lv = 148,bklv = 21,star = 5,mon = {id = 248,desc = "kn-15-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-15",lvId = "7",cardId = 1101003,lv = 148,bklv = 21,star = 5,mon = {id = 207,desc = "kn-15-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",lvId = "7",cardId = 1102005,lv = 148,bklv = 21,star = 5,mon = {id = 242,desc = "kn-15-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-15",lvId = "7",cardId = 1101014,lv = 148,bklv = 21,star = 5,mon = {id = 211,desc = "kn-15-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",lvId = "7",cardId = 1102020,lv = 148,bklv = 21,star = 5,mon = {id = 256,desc = "kn-15-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21508] = {
		[1] = {
			jlr = {cha = "kn-15",lvId = "8",cardId = 1101007,lv = 149,bklv = 21,star = 5,mon = {id = 207,desc = "kn-15-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",lvId = "8",cardId = 1102012,lv = 149,bklv = 21,star = 5,mon = {id = 251,desc = "kn-15-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-15",lvId = "8",cardId = 1101003,lv = 149,bklv = 21,star = 5,mon = {id = 205,desc = "kn-15-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",lvId = "8",cardId = 1102005,lv = 149,bklv = 21,star = 5,mon = {id = 250,desc = "kn-15-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-15",lvId = "8",cardId = 1101014,lv = 149,bklv = 21,star = 5,mon = {id = 210,desc = "kn-15-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",lvId = "8",cardId = 1102020,lv = 149,bklv = 21,star = 5,mon = {id = 255,desc = "kn-15-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21509] = {
		[1] = {
			jlr = {cha = "kn-15",lvId = "9",cardId = 1101007,lv = 150,bklv = 21,star = 5,mon = {id = 212,desc = "kn-15-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",lvId = "9",cardId = 1102012,lv = 150,bklv = 21,star = 5,mon = {id = 257,desc = "kn-15-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-15",lvId = "9",cardId = 1101003,lv = 150,bklv = 21,star = 5,mon = {id = 208,desc = "kn-15-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",lvId = "9",cardId = 1102005,lv = 150,bklv = 21,star = 5,mon = {id = 252,desc = "kn-15-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-15",lvId = "9",cardId = 1101014,lv = 150,bklv = 21,star = 5,mon = {id = 209,desc = "kn-15-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",lvId = "9",cardId = 1102020,lv = 150,bklv = 21,star = 5,mon = {id = 253,desc = "kn-15-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21510] = {
		[1] = {
			jlr = {cha = "kn-15",lvId = "10",cardId = 1101007,lv = 150,bklv = 21,star = 5,mon = {id = 201,desc = "kn-15-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",lvId = "10",cardId = 1102012,lv = 150,bklv = 21,star = 5,mon = {id = 241,desc = "kn-15-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-15",lvId = "10",cardId = 1101003,lv = 150,bklv = 21,star = 5,mon = {id = 203,desc = "kn-15-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",lvId = "10",cardId = 1102005,lv = 150,bklv = 21,star = 5,mon = {id = 244,desc = "kn-15-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-15",lvId = "10",cardId = 1101014,lv = 150,bklv = 21,star = 5,mon = {id = 214,desc = "kn-15-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",lvId = "10",cardId = 1102020,lv = 150,bklv = 21,star = 5,mon = {id = 259,desc = "kn-15-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21511] = {
		[1] = {
			jlr = {cha = "kn-15",lvId = "11",cardId = 1101007,lv = 150,bklv = 21,star = 5,mon = {id = 212,desc = "kn-15-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",lvId = "11",cardId = 1102012,lv = 150,bklv = 21,star = 5,mon = {id = 257,desc = "kn-15-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-15",lvId = "11",cardId = 1101003,lv = 150,bklv = 21,star = 5,mon = {id = 208,desc = "kn-15-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",lvId = "11",cardId = 1102005,lv = 150,bklv = 21,star = 5,mon = {id = 252,desc = "kn-15-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-15",lvId = "11",cardId = 1101014,lv = 150,bklv = 21,star = 5,mon = {id = 209,desc = "kn-15-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",lvId = "11",cardId = 1102020,lv = 150,bklv = 21,star = 5,mon = {id = 253,desc = "kn-15-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21512] = {
		[1] = {
			jlr = {cha = "kn-15",lvId = "12",cardId = 1101007,lv = 151,bklv = 21,star = 5,mon = {id = 215,desc = "kn-15-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",lvId = "12",cardId = 1102012,lv = 151,bklv = 21,star = 5,mon = {id = 260,desc = "kn-15-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-15",lvId = "12",cardId = 1101003,lv = 151,bklv = 21,star = 5,mon = {id = 201,desc = "kn-15-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",lvId = "12",cardId = 1102005,lv = 151,bklv = 21,star = 5,mon = {id = 248,desc = "kn-15-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-15",lvId = "12",cardId = 1101014,lv = 151,bklv = 21,star = 5,mon = {id = 211,desc = "kn-15-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",lvId = "12",cardId = 1102020,lv = 151,bklv = 21,star = 5,mon = {id = 256,desc = "kn-15-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21513] = {
		[1] = {
			jlr = {cha = "kn-15",lvId = "13",cardId = 1101007,lv = 152,bklv = 21,star = 5,mon = {id = 209,desc = "kn-15-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",lvId = "13",cardId = 1102012,lv = 152,bklv = 21,star = 5,mon = {id = 253,desc = "kn-15-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-15",lvId = "13",cardId = 1101003,lv = 152,bklv = 21,star = 5,mon = {id = 208,desc = "kn-15-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",lvId = "13",cardId = 1102005,lv = 152,bklv = 21,star = 5,mon = {id = 252,desc = "kn-15-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-15",lvId = "13",cardId = 1101014,lv = 152,bklv = 21,star = 5,mon = {id = 212,desc = "kn-15-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",lvId = "13",cardId = 1102020,lv = 152,bklv = 21,star = 5,mon = {id = 257,desc = "kn-15-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21514] = {
		[1] = {
			jlr = {cha = "kn-15",lvId = "14",cardId = 1101007,lv = 153,bklv = 21,star = 5,mon = {id = 207,desc = "kn-15-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",lvId = "14",cardId = 1102012,lv = 153,bklv = 21,star = 5,mon = {id = 248,desc = "kn-15-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-15",lvId = "14",cardId = 1101005,lv = 153,bklv = 21,star = 5,mon = {id = 207,desc = "kn-15-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",lvId = "14",cardId = 1102011,lv = 153,bklv = 21,star = 5,mon = {id = 242,desc = "kn-15-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-15",lvId = "14",cardId = 1101003,lv = 153,bklv = 21,star = 5,mon = {id = 211,desc = "kn-15-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",lvId = "14",cardId = 1102005,lv = 153,bklv = 21,star = 5,mon = {id = 256,desc = "kn-15-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21515] = {
		[1] = {
			jlr = {cha = "kn-15",lvId = "15",cardId = 1101007,lv = 154,bklv = 21,star = 5,mon = {id = 205,desc = "kn-15-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",lvId = "15",cardId = 1102012,lv = 154,bklv = 21,star = 5,mon = {id = 240,desc = "kn-15-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-15",lvId = "15",cardId = 1101005,lv = 154,bklv = 21,star = 5,mon = {id = 204,desc = "kn-15-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",lvId = "15",cardId = 1102011,lv = 154,bklv = 21,star = 5,mon = {id = 245,desc = "kn-15-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-15",lvId = "15",cardId = 1101010,lv = 154,bklv = 21,star = 5,mon = {id = 207,desc = "kn-15-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",lvId = "15",cardId = 1102016,lv = 154,bklv = 21,star = 5,mon = {id = 249,desc = "kn-15-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30001] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "1",cardId = 1101001,lv = 5,bklv = 1,star = 1,mon = {id = 212,desc = "tw-f-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "1",cardId = 1102015,lv = 5,bklv = 1,star = 1,mon = {id = 257,desc = "tw-f-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "1",cardId = 1101002,lv = 5,bklv = 1,star = 1,mon = {id = 208,desc = "tw-f-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "1",cardId = 1102004,lv = 5,bklv = 1,star = 1,mon = {id = 252,desc = "tw-f-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "1",cardId = 1101003,lv = 5,bklv = 1,star = 1,mon = {id = 209,desc = "tw-f-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "1",cardId = 1102005,lv = 5,bklv = 1,star = 1,mon = {id = 253,desc = "tw-f-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30002] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "2",cardId = 1101001,lv = 10,bklv = 1,star = 1,mon = {id = 201,desc = "tw-f-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "2",cardId = 1102015,lv = 10,bklv = 1,star = 1,mon = {id = 241,desc = "tw-f-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "2",cardId = 1101002,lv = 10,bklv = 1,star = 1,mon = {id = 203,desc = "tw-f-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "2",cardId = 1102004,lv = 10,bklv = 1,star = 1,mon = {id = 244,desc = "tw-f-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "2",cardId = 1101003,lv = 10,bklv = 1,star = 1,mon = {id = 214,desc = "tw-f-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "2",cardId = 1102005,lv = 10,bklv = 1,star = 1,mon = {id = 259,desc = "tw-f-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30003] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "3",cardId = 1101001,lv = 15,bklv = 1,star = 1,mon = {id = 212,desc = "tw-f-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "3",cardId = 1102015,lv = 15,bklv = 1,star = 1,mon = {id = 257,desc = "tw-f-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "3",cardId = 1101002,lv = 15,bklv = 1,star = 1,mon = {id = 208,desc = "tw-f-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "3",cardId = 1102004,lv = 15,bklv = 1,star = 1,mon = {id = 252,desc = "tw-f-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "3",cardId = 1101003,lv = 15,bklv = 1,star = 1,mon = {id = 209,desc = "tw-f-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "3",cardId = 1102005,lv = 15,bklv = 1,star = 1,mon = {id = 253,desc = "tw-f-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30004] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "4",cardId = 1101001,lv = 15,bklv = 2,star = 1,mon = {id = 215,desc = "tw-f-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "4",cardId = 1102015,lv = 15,bklv = 2,star = 1,mon = {id = 260,desc = "tw-f-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "4",cardId = 1101002,lv = 15,bklv = 2,star = 1,mon = {id = 201,desc = "tw-f-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "4",cardId = 1102004,lv = 15,bklv = 2,star = 1,mon = {id = 248,desc = "tw-f-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "4",cardId = 1101003,lv = 15,bklv = 2,star = 1,mon = {id = 211,desc = "tw-f-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "4",cardId = 1102005,lv = 15,bklv = 2,star = 1,mon = {id = 256,desc = "tw-f-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30005] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "5",cardId = 1101001,lv = 20,bklv = 2,star = 1,mon = {id = 206,desc = "tw-f-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "5",cardId = 1102015,lv = 20,bklv = 2,star = 1,mon = {id = 246,desc = "tw-f-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "5",cardId = 1101002,lv = 20,bklv = 2,star = 1,mon = {id = 203,desc = "tw-f-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "5",cardId = 1102004,lv = 20,bklv = 2,star = 1,mon = {id = 244,desc = "tw-f-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "5",cardId = 1101003,lv = 20,bklv = 2,star = 1,mon = {id = 212,desc = "tw-f-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "5",cardId = 1102005,lv = 20,bklv = 2,star = 1,mon = {id = 257,desc = "tw-f-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30006] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "6",cardId = 1101001,lv = 25,bklv = 2,star = 1,mon = {id = 209,desc = "tw-f-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "6",cardId = 1102015,lv = 25,bklv = 2,star = 1,mon = {id = 253,desc = "tw-f-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "6",cardId = 1101002,lv = 25,bklv = 2,star = 1,mon = {id = 208,desc = "tw-f-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "6",cardId = 1102004,lv = 25,bklv = 2,star = 1,mon = {id = 252,desc = "tw-f-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "6",cardId = 1101003,lv = 25,bklv = 2,star = 1,mon = {id = 212,desc = "tw-f-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "6",cardId = 1102005,lv = 25,bklv = 2,star = 1,mon = {id = 257,desc = "tw-f-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30007] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "7",cardId = 1101001,lv = 30,bklv = 2,star = 1,mon = {id = 213,desc = "tw-f-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "7",cardId = 1102015,lv = 30,bklv = 2,star = 1,mon = {id = 258,desc = "tw-f-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "7",cardId = 1101002,lv = 30,bklv = 2,star = 1,mon = {id = 207,desc = "tw-f-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "7",cardId = 1102004,lv = 30,bklv = 2,star = 1,mon = {id = 242,desc = "tw-f-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "7",cardId = 1101003,lv = 30,bklv = 2,star = 1,mon = {id = 211,desc = "tw-f-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "7",cardId = 1102005,lv = 30,bklv = 2,star = 1,mon = {id = 256,desc = "tw-f-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30008] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "8",cardId = 1101001,lv = 30,bklv = 3,star = 1,mon = {id = 209,desc = "tw-f-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "8",cardId = 1102002,lv = 30,bklv = 3,star = 1,mon = {id = 253,desc = "tw-f-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "8",cardId = 1101012,lv = 30,bklv = 3,star = 1,mon = {id = 208,desc = "tw-f-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "8",cardId = 1102018,lv = 30,bklv = 3,star = 1,mon = {id = 252,desc = "tw-f-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "8",cardId = 1101003,lv = 30,bklv = 3,star = 1,mon = {id = 212,desc = "tw-f-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "8",cardId = 1102005,lv = 30,bklv = 3,star = 1,mon = {id = 257,desc = "tw-f-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30009] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "9",cardId = 1101001,lv = 35,bklv = 3,star = 1,mon = {id = 207,desc = "tw-f-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "9",cardId = 1102002,lv = 35,bklv = 3,star = 1,mon = {id = 251,desc = "tw-f-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "9",cardId = 1101012,lv = 35,bklv = 3,star = 1,mon = {id = 205,desc = "tw-f-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "9",cardId = 1102018,lv = 35,bklv = 3,star = 1,mon = {id = 250,desc = "tw-f-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "9",cardId = 1101003,lv = 35,bklv = 3,star = 1,mon = {id = 210,desc = "tw-f-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "9",cardId = 1102005,lv = 35,bklv = 3,star = 1,mon = {id = 255,desc = "tw-f-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30010] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "10",cardId = 1101001,lv = 40,bklv = 3,star = 2,mon = {id = 212,desc = "tw-f-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "10",cardId = 1102002,lv = 40,bklv = 3,star = 2,mon = {id = 257,desc = "tw-f-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "10",cardId = 1101012,lv = 40,bklv = 3,star = 2,mon = {id = 208,desc = "tw-f-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "10",cardId = 1102018,lv = 40,bklv = 3,star = 2,mon = {id = 252,desc = "tw-f-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "10",cardId = 1101003,lv = 40,bklv = 3,star = 2,mon = {id = 209,desc = "tw-f-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "10",cardId = 1102005,lv = 40,bklv = 3,star = 2,mon = {id = 253,desc = "tw-f-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30011] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "11",cardId = 1101001,lv = 40,bklv = 4,star = 2,mon = {id = 201,desc = "tw-f-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "11",cardId = 1102002,lv = 40,bklv = 4,star = 2,mon = {id = 241,desc = "tw-f-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "11",cardId = 1101012,lv = 40,bklv = 4,star = 2,mon = {id = 203,desc = "tw-f-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "11",cardId = 1102018,lv = 40,bklv = 4,star = 2,mon = {id = 244,desc = "tw-f-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "11",cardId = 1101003,lv = 40,bklv = 4,star = 2,mon = {id = 214,desc = "tw-f-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "11",cardId = 1102005,lv = 40,bklv = 4,star = 2,mon = {id = 259,desc = "tw-f-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30012] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "12",cardId = 1101001,lv = 45,bklv = 4,star = 2,mon = {id = 212,desc = "tw-f-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "12",cardId = 1102002,lv = 45,bklv = 4,star = 2,mon = {id = 257,desc = "tw-f-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "12",cardId = 1101012,lv = 45,bklv = 4,star = 2,mon = {id = 208,desc = "tw-f-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "12",cardId = 1102018,lv = 45,bklv = 4,star = 2,mon = {id = 252,desc = "tw-f-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "12",cardId = 1101003,lv = 45,bklv = 4,star = 2,mon = {id = 209,desc = "tw-f-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "12",cardId = 1102005,lv = 45,bklv = 4,star = 2,mon = {id = 253,desc = "tw-f-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30013] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "13",cardId = 1101001,lv = 47,bklv = 4,star = 2,mon = {id = 215,desc = "tw-f-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "13",cardId = 1102002,lv = 47,bklv = 4,star = 2,mon = {id = 260,desc = "tw-f-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "13",cardId = 1101012,lv = 47,bklv = 4,star = 2,mon = {id = 201,desc = "tw-f-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "13",cardId = 1102018,lv = 47,bklv = 4,star = 2,mon = {id = 248,desc = "tw-f-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "13",cardId = 1101003,lv = 47,bklv = 4,star = 2,mon = {id = 211,desc = "tw-f-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "13",cardId = 1102005,lv = 47,bklv = 4,star = 2,mon = {id = 256,desc = "tw-f-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30014] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "14",cardId = 1101001,lv = 50,bklv = 4,star = 2,mon = {id = 206,desc = "tw-f-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "14",cardId = 1102002,lv = 50,bklv = 4,star = 2,mon = {id = 246,desc = "tw-f-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "14",cardId = 1101012,lv = 50,bklv = 4,star = 2,mon = {id = 203,desc = "tw-f-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "14",cardId = 1102018,lv = 50,bklv = 4,star = 2,mon = {id = 244,desc = "tw-f-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "14",cardId = 1101003,lv = 50,bklv = 4,star = 2,mon = {id = 212,desc = "tw-f-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "14",cardId = 1102005,lv = 50,bklv = 4,star = 2,mon = {id = 257,desc = "tw-f-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30015] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "15",cardId = 1101001,lv = 50,bklv = 5,star = 2,mon = {id = 209,desc = "tw-f-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "15",cardId = 1102002,lv = 50,bklv = 5,star = 2,mon = {id = 253,desc = "tw-f-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "15",cardId = 1101012,lv = 50,bklv = 5,star = 2,mon = {id = 208,desc = "tw-f-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "15",cardId = 1102018,lv = 50,bklv = 5,star = 2,mon = {id = 252,desc = "tw-f-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "15",cardId = 1101003,lv = 50,bklv = 5,star = 2,mon = {id = 212,desc = "tw-f-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "15",cardId = 1102005,lv = 50,bklv = 5,star = 2,mon = {id = 257,desc = "tw-f-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30016] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "16",cardId = 1101001,lv = 52,bklv = 5,star = 2,mon = {id = 207,desc = "tw-f-16-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "16",cardId = 1102002,lv = 52,bklv = 5,star = 2,mon = {id = 248,desc = "tw-f-16-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "16",cardId = 1101014,lv = 52,bklv = 5,star = 2,mon = {id = 207,desc = "tw-f-16-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "16",cardId = 1102020,lv = 52,bklv = 5,star = 2,mon = {id = 242,desc = "tw-f-16-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "16",cardId = 1101003,lv = 52,bklv = 5,star = 2,mon = {id = 211,desc = "tw-f-16-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "16",cardId = 1102005,lv = 52,bklv = 5,star = 2,mon = {id = 256,desc = "tw-f-16-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30017] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "17",cardId = 1101001,lv = 54,bklv = 5,star = 2,mon = {id = 209,desc = "tw-f-17-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "17",cardId = 1102002,lv = 54,bklv = 5,star = 2,mon = {id = 253,desc = "tw-f-17-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "17",cardId = 1101014,lv = 54,bklv = 5,star = 2,mon = {id = 208,desc = "tw-f-17-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "17",cardId = 1102020,lv = 54,bklv = 5,star = 2,mon = {id = 252,desc = "tw-f-17-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "17",cardId = 1101003,lv = 54,bklv = 5,star = 2,mon = {id = 212,desc = "tw-f-17-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "17",cardId = 1102005,lv = 54,bklv = 5,star = 2,mon = {id = 257,desc = "tw-f-17-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30018] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "18",cardId = 1101001,lv = 56,bklv = 5,star = 2,mon = {id = 207,desc = "tw-f-18-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "18",cardId = 1102002,lv = 56,bklv = 5,star = 2,mon = {id = 251,desc = "tw-f-18-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "18",cardId = 1101014,lv = 56,bklv = 5,star = 2,mon = {id = 205,desc = "tw-f-18-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "18",cardId = 1102020,lv = 56,bklv = 5,star = 2,mon = {id = 250,desc = "tw-f-18-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "18",cardId = 1101003,lv = 56,bklv = 5,star = 2,mon = {id = 210,desc = "tw-f-18-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "18",cardId = 1102005,lv = 56,bklv = 5,star = 2,mon = {id = 255,desc = "tw-f-18-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30019] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "19",cardId = 1101001,lv = 58,bklv = 5,star = 2,mon = {id = 212,desc = "tw-f-19-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "19",cardId = 1102002,lv = 58,bklv = 5,star = 2,mon = {id = 257,desc = "tw-f-19-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "19",cardId = 1101014,lv = 58,bklv = 5,star = 2,mon = {id = 208,desc = "tw-f-19-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "19",cardId = 1102020,lv = 58,bklv = 5,star = 2,mon = {id = 252,desc = "tw-f-19-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "19",cardId = 1101003,lv = 58,bklv = 5,star = 2,mon = {id = 209,desc = "tw-f-19-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "19",cardId = 1102005,lv = 58,bklv = 5,star = 2,mon = {id = 253,desc = "tw-f-19-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30020] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "20",cardId = 1101007,lv = 60,bklv = 6,star = 2,mon = {id = 201,desc = "tw-f-20-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "20",cardId = 1102002,lv = 60,bklv = 6,star = 2,mon = {id = 241,desc = "tw-f-20-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "20",cardId = 1101014,lv = 60,bklv = 6,star = 2,mon = {id = 203,desc = "tw-f-20-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "20",cardId = 1102020,lv = 60,bklv = 6,star = 2,mon = {id = 244,desc = "tw-f-20-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "20",cardId = 1101003,lv = 60,bklv = 6,star = 2,mon = {id = 214,desc = "tw-f-20-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "20",cardId = 1102005,lv = 60,bklv = 6,star = 2,mon = {id = 259,desc = "tw-f-20-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30021] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "21",cardId = 1101007,lv = 62,bklv = 6,star = 2,mon = {id = 212,desc = "tw-f-21-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "21",cardId = 1102002,lv = 62,bklv = 6,star = 2,mon = {id = 257,desc = "tw-f-21-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "21",cardId = 1101014,lv = 62,bklv = 6,star = 2,mon = {id = 208,desc = "tw-f-21-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "21",cardId = 1102020,lv = 62,bklv = 6,star = 2,mon = {id = 252,desc = "tw-f-21-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "21",cardId = 1101003,lv = 62,bklv = 6,star = 2,mon = {id = 209,desc = "tw-f-21-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "21",cardId = 1102005,lv = 62,bklv = 6,star = 2,mon = {id = 253,desc = "tw-f-21-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30022] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "22",cardId = 1101007,lv = 64,bklv = 6,star = 2,mon = {id = 215,desc = "tw-f-22-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "22",cardId = 1102002,lv = 64,bklv = 6,star = 2,mon = {id = 260,desc = "tw-f-22-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "22",cardId = 1101014,lv = 64,bklv = 6,star = 2,mon = {id = 201,desc = "tw-f-22-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "22",cardId = 1102020,lv = 64,bklv = 6,star = 2,mon = {id = 248,desc = "tw-f-22-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "22",cardId = 1101003,lv = 64,bklv = 6,star = 2,mon = {id = 211,desc = "tw-f-22-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "22",cardId = 1102005,lv = 64,bklv = 6,star = 2,mon = {id = 256,desc = "tw-f-22-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30023] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "23",cardId = 1101007,lv = 66,bklv = 6,star = 2,mon = {id = 206,desc = "tw-f-23-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "23",cardId = 1102002,lv = 66,bklv = 6,star = 2,mon = {id = 246,desc = "tw-f-23-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "23",cardId = 1101014,lv = 66,bklv = 6,star = 2,mon = {id = 203,desc = "tw-f-23-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "23",cardId = 1102020,lv = 66,bklv = 6,star = 2,mon = {id = 244,desc = "tw-f-23-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "23",cardId = 1101003,lv = 66,bklv = 6,star = 2,mon = {id = 212,desc = "tw-f-23-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "23",cardId = 1102005,lv = 66,bklv = 6,star = 2,mon = {id = 257,desc = "tw-f-23-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30024] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "24",cardId = 1101007,lv = 68,bklv = 6,star = 2,mon = {id = 209,desc = "tw-f-24-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "24",cardId = 1102002,lv = 68,bklv = 6,star = 2,mon = {id = 253,desc = "tw-f-24-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "24",cardId = 1101014,lv = 68,bklv = 6,star = 2,mon = {id = 208,desc = "tw-f-24-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "24",cardId = 1102020,lv = 68,bklv = 6,star = 2,mon = {id = 252,desc = "tw-f-24-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "24",cardId = 1101003,lv = 68,bklv = 6,star = 2,mon = {id = 212,desc = "tw-f-24-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "24",cardId = 1102005,lv = 68,bklv = 6,star = 2,mon = {id = 257,desc = "tw-f-24-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30025] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "25",cardId = 1101007,lv = 70,bklv = 7,star = 3,mon = {id = 213,desc = "tw-f-25-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "25",cardId = 1102002,lv = 70,bklv = 7,star = 3,mon = {id = 258,desc = "tw-f-25-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "25",cardId = 1101014,lv = 70,bklv = 7,star = 3,mon = {id = 207,desc = "tw-f-25-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "25",cardId = 1102020,lv = 70,bklv = 7,star = 3,mon = {id = 242,desc = "tw-f-25-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "25",cardId = 1101003,lv = 70,bklv = 7,star = 3,mon = {id = 211,desc = "tw-f-25-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "25",cardId = 1102005,lv = 70,bklv = 7,star = 3,mon = {id = 256,desc = "tw-f-25-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30026] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "26",cardId = 1101007,lv = 72,bklv = 7,star = 3,mon = {id = 206,desc = "tw-f-26-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "26",cardId = 1102002,lv = 72,bklv = 7,star = 3,mon = {id = 246,desc = "tw-f-26-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "26",cardId = 1101014,lv = 72,bklv = 7,star = 3,mon = {id = 205,desc = "tw-f-26-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "26",cardId = 1102020,lv = 72,bklv = 7,star = 3,mon = {id = 250,desc = "tw-f-26-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "26",cardId = 1101003,lv = 72,bklv = 7,star = 3,mon = {id = 207,desc = "tw-f-26-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "26",cardId = 1102005,lv = 72,bklv = 7,star = 3,mon = {id = 249,desc = "tw-f-26-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30027] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "27",cardId = 1101007,lv = 74,bklv = 7,star = 3,mon = {id = 212,desc = "tw-f-27-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "27",cardId = 1102002,lv = 74,bklv = 7,star = 3,mon = {id = 257,desc = "tw-f-27-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "27",cardId = 1101014,lv = 74,bklv = 7,star = 3,mon = {id = 208,desc = "tw-f-27-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "27",cardId = 1102020,lv = 74,bklv = 7,star = 3,mon = {id = 252,desc = "tw-f-27-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "27",cardId = 1101003,lv = 74,bklv = 7,star = 3,mon = {id = 209,desc = "tw-f-27-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "27",cardId = 1102005,lv = 74,bklv = 7,star = 3,mon = {id = 253,desc = "tw-f-27-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30028] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "28",cardId = 1101007,lv = 76,bklv = 7,star = 3,mon = {id = 201,desc = "tw-f-28-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "28",cardId = 1102002,lv = 76,bklv = 7,star = 3,mon = {id = 241,desc = "tw-f-28-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "28",cardId = 1101014,lv = 76,bklv = 7,star = 3,mon = {id = 203,desc = "tw-f-28-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "28",cardId = 1102020,lv = 76,bklv = 7,star = 3,mon = {id = 244,desc = "tw-f-28-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "28",cardId = 1101003,lv = 76,bklv = 7,star = 3,mon = {id = 214,desc = "tw-f-28-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "28",cardId = 1102005,lv = 76,bklv = 7,star = 3,mon = {id = 259,desc = "tw-f-28-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30029] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "29",cardId = 1101007,lv = 78,bklv = 7,star = 3,mon = {id = 212,desc = "tw-f-29-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "29",cardId = 1102002,lv = 78,bklv = 7,star = 3,mon = {id = 257,desc = "tw-f-29-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "29",cardId = 1101014,lv = 78,bklv = 7,star = 3,mon = {id = 208,desc = "tw-f-29-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "29",cardId = 1102020,lv = 78,bklv = 7,star = 3,mon = {id = 252,desc = "tw-f-29-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "29",cardId = 1101003,lv = 78,bklv = 7,star = 3,mon = {id = 209,desc = "tw-f-29-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "29",cardId = 1102005,lv = 78,bklv = 7,star = 3,mon = {id = 253,desc = "tw-f-29-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30030] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "30",cardId = 1101009,lv = 80,bklv = 8,star = 3,mon = {id = 215,desc = "tw-f-30-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "30",cardId = 1102014,lv = 80,bklv = 8,star = 3,mon = {id = 260,desc = "tw-f-30-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "30",cardId = 1101007,lv = 80,bklv = 8,star = 3,mon = {id = 201,desc = "tw-f-30-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "30",cardId = 1102003,lv = 80,bklv = 8,star = 3,mon = {id = 248,desc = "tw-f-30-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "30",cardId = 1101011,lv = 80,bklv = 8,star = 3,mon = {id = 211,desc = "tw-f-30-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "30",cardId = 1102017,lv = 80,bklv = 8,star = 3,mon = {id = 256,desc = "tw-f-30-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30031] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "31",cardId = 1101009,lv = 81,bklv = 8,star = 3,mon = {id = 209,desc = "tw-f-31-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "31",cardId = 1102014,lv = 81,bklv = 8,star = 3,mon = {id = 253,desc = "tw-f-31-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "31",cardId = 1101007,lv = 81,bklv = 8,star = 3,mon = {id = 208,desc = "tw-f-31-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "31",cardId = 1102003,lv = 81,bklv = 8,star = 3,mon = {id = 252,desc = "tw-f-31-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "31",cardId = 1101011,lv = 81,bklv = 8,star = 3,mon = {id = 212,desc = "tw-f-31-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "31",cardId = 1102017,lv = 81,bklv = 8,star = 3,mon = {id = 257,desc = "tw-f-31-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30032] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "32",cardId = 1101009,lv = 82,bklv = 8,star = 3,mon = {id = 213,desc = "tw-f-32-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "32",cardId = 1102014,lv = 82,bklv = 8,star = 3,mon = {id = 258,desc = "tw-f-32-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "32",cardId = 1101007,lv = 82,bklv = 8,star = 3,mon = {id = 207,desc = "tw-f-32-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "32",cardId = 1102003,lv = 82,bklv = 8,star = 3,mon = {id = 242,desc = "tw-f-32-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "32",cardId = 1101011,lv = 82,bklv = 8,star = 3,mon = {id = 211,desc = "tw-f-32-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "32",cardId = 1102017,lv = 82,bklv = 8,star = 3,mon = {id = 256,desc = "tw-f-32-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30033] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "33",cardId = 1101009,lv = 83,bklv = 8,star = 3,mon = {id = 205,desc = "tw-f-33-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "33",cardId = 1102014,lv = 83,bklv = 8,star = 3,mon = {id = 240,desc = "tw-f-33-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "33",cardId = 1101007,lv = 83,bklv = 8,star = 3,mon = {id = 204,desc = "tw-f-33-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "33",cardId = 1102003,lv = 83,bklv = 8,star = 3,mon = {id = 245,desc = "tw-f-33-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "33",cardId = 1101011,lv = 83,bklv = 8,star = 3,mon = {id = 207,desc = "tw-f-33-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "33",cardId = 1102017,lv = 83,bklv = 8,star = 3,mon = {id = 249,desc = "tw-f-33-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30034] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "34",cardId = 1101009,lv = 84,bklv = 8,star = 3,mon = {id = 212,desc = "tw-f-34-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "34",cardId = 1102014,lv = 84,bklv = 8,star = 3,mon = {id = 257,desc = "tw-f-34-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "34",cardId = 1101007,lv = 84,bklv = 8,star = 3,mon = {id = 208,desc = "tw-f-34-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "34",cardId = 1102003,lv = 84,bklv = 8,star = 3,mon = {id = 252,desc = "tw-f-34-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "34",cardId = 1101011,lv = 84,bklv = 8,star = 3,mon = {id = 213,desc = "tw-f-34-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "34",cardId = 1102017,lv = 84,bklv = 8,star = 3,mon = {id = 258,desc = "tw-f-34-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30035] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "35",cardId = 1101009,lv = 85,bklv = 9,star = 3,mon = {id = 201,desc = "tw-f-35-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "35",cardId = 1102014,lv = 85,bklv = 9,star = 3,mon = {id = 241,desc = "tw-f-35-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "35",cardId = 1101007,lv = 85,bklv = 9,star = 3,mon = {id = 203,desc = "tw-f-35-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "35",cardId = 1102003,lv = 85,bklv = 9,star = 3,mon = {id = 244,desc = "tw-f-35-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "35",cardId = 1101011,lv = 85,bklv = 9,star = 3,mon = {id = 214,desc = "tw-f-35-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "35",cardId = 1102017,lv = 85,bklv = 9,star = 3,mon = {id = 259,desc = "tw-f-35-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30036] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "36",cardId = 1101009,lv = 86,bklv = 9,star = 3,mon = {id = 212,desc = "tw-f-36-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "36",cardId = 1102014,lv = 86,bklv = 9,star = 3,mon = {id = 257,desc = "tw-f-36-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "36",cardId = 1101007,lv = 86,bklv = 9,star = 3,mon = {id = 208,desc = "tw-f-36-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "36",cardId = 1102003,lv = 86,bklv = 9,star = 3,mon = {id = 252,desc = "tw-f-36-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "36",cardId = 1101011,lv = 86,bklv = 9,star = 3,mon = {id = 209,desc = "tw-f-36-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "36",cardId = 1102017,lv = 86,bklv = 9,star = 3,mon = {id = 253,desc = "tw-f-36-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30037] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "37",cardId = 1101009,lv = 87,bklv = 9,star = 3,mon = {id = 215,desc = "tw-f-37-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "37",cardId = 1102014,lv = 87,bklv = 9,star = 3,mon = {id = 260,desc = "tw-f-37-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "37",cardId = 1101007,lv = 87,bklv = 9,star = 3,mon = {id = 201,desc = "tw-f-37-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "37",cardId = 1102003,lv = 87,bklv = 9,star = 3,mon = {id = 248,desc = "tw-f-37-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "37",cardId = 1101011,lv = 87,bklv = 9,star = 3,mon = {id = 211,desc = "tw-f-37-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "37",cardId = 1102017,lv = 87,bklv = 9,star = 3,mon = {id = 256,desc = "tw-f-37-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30038] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "38",cardId = 1101009,lv = 88,bklv = 9,star = 3,mon = {id = 206,desc = "tw-f-38-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "38",cardId = 1102014,lv = 88,bklv = 9,star = 3,mon = {id = 246,desc = "tw-f-38-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "38",cardId = 1101007,lv = 88,bklv = 9,star = 3,mon = {id = 203,desc = "tw-f-38-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "38",cardId = 1102003,lv = 88,bklv = 9,star = 3,mon = {id = 244,desc = "tw-f-38-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "38",cardId = 1101011,lv = 88,bklv = 9,star = 3,mon = {id = 212,desc = "tw-f-38-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "38",cardId = 1102017,lv = 88,bklv = 9,star = 3,mon = {id = 257,desc = "tw-f-38-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30039] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "39",cardId = 1101009,lv = 89,bklv = 9,star = 3,mon = {id = 209,desc = "tw-f-39-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "39",cardId = 1102014,lv = 89,bklv = 9,star = 3,mon = {id = 253,desc = "tw-f-39-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "39",cardId = 1101007,lv = 89,bklv = 9,star = 3,mon = {id = 208,desc = "tw-f-39-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "39",cardId = 1102003,lv = 89,bklv = 9,star = 3,mon = {id = 252,desc = "tw-f-39-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "39",cardId = 1101011,lv = 89,bklv = 9,star = 3,mon = {id = 212,desc = "tw-f-39-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "39",cardId = 1102017,lv = 89,bklv = 9,star = 3,mon = {id = 257,desc = "tw-f-39-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30040] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "40",cardId = 1101009,lv = 90,bklv = 10,star = 3,mon = {id = 213,desc = "tw-f-40-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "40",cardId = 1102014,lv = 90,bklv = 10,star = 3,mon = {id = 258,desc = "tw-f-40-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "40",cardId = 1101007,lv = 90,bklv = 10,star = 3,mon = {id = 207,desc = "tw-f-40-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "40",cardId = 1102003,lv = 90,bklv = 10,star = 3,mon = {id = 242,desc = "tw-f-40-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "40",cardId = 1101011,lv = 90,bklv = 10,star = 3,mon = {id = 211,desc = "tw-f-40-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "40",cardId = 1102017,lv = 90,bklv = 10,star = 3,mon = {id = 256,desc = "tw-f-40-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30041] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "41",cardId = 1101009,lv = 91,bklv = 10,star = 3,mon = {id = 207,desc = "tw-f-41-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "41",cardId = 1102014,lv = 91,bklv = 10,star = 3,mon = {id = 251,desc = "tw-f-41-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "41",cardId = 1101007,lv = 91,bklv = 10,star = 3,mon = {id = 205,desc = "tw-f-41-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "41",cardId = 1102003,lv = 91,bklv = 10,star = 3,mon = {id = 250,desc = "tw-f-41-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "41",cardId = 1101011,lv = 91,bklv = 10,star = 3,mon = {id = 210,desc = "tw-f-41-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "41",cardId = 1102017,lv = 91,bklv = 10,star = 3,mon = {id = 255,desc = "tw-f-41-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30042] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "42",cardId = 1101009,lv = 92,bklv = 10,star = 3,mon = {id = 212,desc = "tw-f-42-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "42",cardId = 1102014,lv = 92,bklv = 10,star = 3,mon = {id = 257,desc = "tw-f-42-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "42",cardId = 1101007,lv = 92,bklv = 10,star = 3,mon = {id = 208,desc = "tw-f-42-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "42",cardId = 1102003,lv = 92,bklv = 10,star = 3,mon = {id = 252,desc = "tw-f-42-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "42",cardId = 1101011,lv = 92,bklv = 10,star = 3,mon = {id = 209,desc = "tw-f-42-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "42",cardId = 1102017,lv = 92,bklv = 10,star = 3,mon = {id = 253,desc = "tw-f-42-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30043] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "43",cardId = 1101009,lv = 93,bklv = 10,star = 3,mon = {id = 201,desc = "tw-f-43-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "43",cardId = 1102014,lv = 93,bklv = 10,star = 3,mon = {id = 241,desc = "tw-f-43-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "43",cardId = 1101007,lv = 93,bklv = 10,star = 3,mon = {id = 203,desc = "tw-f-43-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "43",cardId = 1102003,lv = 93,bklv = 10,star = 3,mon = {id = 244,desc = "tw-f-43-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "43",cardId = 1101011,lv = 93,bklv = 10,star = 3,mon = {id = 214,desc = "tw-f-43-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "43",cardId = 1102017,lv = 93,bklv = 10,star = 3,mon = {id = 259,desc = "tw-f-43-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30044] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "44",cardId = 1101009,lv = 94,bklv = 10,star = 3,mon = {id = 212,desc = "tw-f-44-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "44",cardId = 1102014,lv = 94,bklv = 10,star = 3,mon = {id = 257,desc = "tw-f-44-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "44",cardId = 1101007,lv = 94,bklv = 10,star = 3,mon = {id = 208,desc = "tw-f-44-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "44",cardId = 1102003,lv = 94,bklv = 10,star = 3,mon = {id = 252,desc = "tw-f-44-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "44",cardId = 1101011,lv = 94,bklv = 10,star = 3,mon = {id = 209,desc = "tw-f-44-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "44",cardId = 1102017,lv = 94,bklv = 10,star = 3,mon = {id = 253,desc = "tw-f-44-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30045] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "45",cardId = 1101009,lv = 95,bklv = 11,star = 3,mon = {id = 215,desc = "tw-f-45-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "45",cardId = 1102014,lv = 95,bklv = 11,star = 3,mon = {id = 260,desc = "tw-f-45-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "45",cardId = 1101007,lv = 95,bklv = 11,star = 3,mon = {id = 201,desc = "tw-f-45-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "45",cardId = 1102003,lv = 95,bklv = 11,star = 3,mon = {id = 248,desc = "tw-f-45-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "45",cardId = 1101011,lv = 95,bklv = 11,star = 3,mon = {id = 211,desc = "tw-f-45-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "45",cardId = 1102017,lv = 95,bklv = 11,star = 3,mon = {id = 256,desc = "tw-f-45-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30046] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "46",cardId = 1101009,lv = 96,bklv = 11,star = 3,mon = {id = 209,desc = "tw-f-46-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "46",cardId = 1102014,lv = 96,bklv = 11,star = 3,mon = {id = 253,desc = "tw-f-46-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "46",cardId = 1101007,lv = 96,bklv = 11,star = 3,mon = {id = 208,desc = "tw-f-46-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "46",cardId = 1102003,lv = 96,bklv = 11,star = 3,mon = {id = 252,desc = "tw-f-46-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "46",cardId = 1101011,lv = 96,bklv = 11,star = 3,mon = {id = 212,desc = "tw-f-46-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "46",cardId = 1102017,lv = 96,bklv = 11,star = 3,mon = {id = 257,desc = "tw-f-46-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30047] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "47",cardId = 1101009,lv = 97,bklv = 11,star = 3,mon = {id = 207,desc = "tw-f-47-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "47",cardId = 1102014,lv = 97,bklv = 11,star = 3,mon = {id = 248,desc = "tw-f-47-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "47",cardId = 1101007,lv = 97,bklv = 11,star = 3,mon = {id = 207,desc = "tw-f-47-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "47",cardId = 1102003,lv = 97,bklv = 11,star = 3,mon = {id = 242,desc = "tw-f-47-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "47",cardId = 1101011,lv = 97,bklv = 11,star = 3,mon = {id = 211,desc = "tw-f-47-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "47",cardId = 1102017,lv = 97,bklv = 11,star = 3,mon = {id = 256,desc = "tw-f-47-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30048] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "48",cardId = 1101009,lv = 98,bklv = 11,star = 3,mon = {id = 205,desc = "tw-f-48-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "48",cardId = 1102014,lv = 98,bklv = 11,star = 3,mon = {id = 240,desc = "tw-f-48-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "48",cardId = 1101007,lv = 98,bklv = 11,star = 3,mon = {id = 204,desc = "tw-f-48-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "48",cardId = 1102003,lv = 98,bklv = 11,star = 3,mon = {id = 245,desc = "tw-f-48-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "48",cardId = 1101011,lv = 98,bklv = 11,star = 3,mon = {id = 207,desc = "tw-f-48-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "48",cardId = 1102017,lv = 98,bklv = 11,star = 3,mon = {id = 249,desc = "tw-f-48-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30049] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "49",cardId = 1101009,lv = 99,bklv = 11,star = 3,mon = {id = 212,desc = "tw-f-49-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "49",cardId = 1102014,lv = 99,bklv = 11,star = 3,mon = {id = 257,desc = "tw-f-49-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "49",cardId = 1101007,lv = 99,bklv = 11,star = 3,mon = {id = 208,desc = "tw-f-49-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "49",cardId = 1102003,lv = 99,bklv = 11,star = 3,mon = {id = 252,desc = "tw-f-49-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "49",cardId = 1101011,lv = 99,bklv = 11,star = 3,mon = {id = 209,desc = "tw-f-49-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "49",cardId = 1102017,lv = 99,bklv = 11,star = 3,mon = {id = 253,desc = "tw-f-49-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30050] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "50",cardId = 1101009,lv = 100,bklv = 12,star = 3,mon = {id = 201,desc = "tw-f-50-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "50",cardId = 1102014,lv = 100,bklv = 12,star = 3,mon = {id = 241,desc = "tw-f-50-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "50",cardId = 1101007,lv = 100,bklv = 12,star = 3,mon = {id = 203,desc = "tw-f-50-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "50",cardId = 1102003,lv = 100,bklv = 12,star = 3,mon = {id = 244,desc = "tw-f-50-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "50",cardId = 1101011,lv = 100,bklv = 12,star = 3,mon = {id = 214,desc = "tw-f-50-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "50",cardId = 1102017,lv = 100,bklv = 12,star = 3,mon = {id = 259,desc = "tw-f-50-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30051] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "51",cardId = 1101007,lv = 101,bklv = 12,star = 3,mon = {id = 212,desc = "tw-f-51-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "51",cardId = 1102012,lv = 101,bklv = 12,star = 3,mon = {id = 257,desc = "tw-f-51-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "51",cardId = 1101005,lv = 101,bklv = 12,star = 3,mon = {id = 208,desc = "tw-f-51-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "51",cardId = 1102011,lv = 101,bklv = 12,star = 3,mon = {id = 252,desc = "tw-f-51-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "51",cardId = 1101010,lv = 101,bklv = 12,star = 3,mon = {id = 209,desc = "tw-f-51-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "51",cardId = 1102016,lv = 101,bklv = 12,star = 3,mon = {id = 253,desc = "tw-f-51-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30052] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "52",cardId = 1101007,lv = 102,bklv = 12,star = 3,mon = {id = 215,desc = "tw-f-52-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "52",cardId = 1102012,lv = 102,bklv = 12,star = 3,mon = {id = 260,desc = "tw-f-52-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "52",cardId = 1101005,lv = 102,bklv = 12,star = 3,mon = {id = 201,desc = "tw-f-52-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "52",cardId = 1102011,lv = 102,bklv = 12,star = 3,mon = {id = 248,desc = "tw-f-52-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "52",cardId = 1101010,lv = 102,bklv = 12,star = 3,mon = {id = 211,desc = "tw-f-52-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "52",cardId = 1102016,lv = 102,bklv = 12,star = 3,mon = {id = 256,desc = "tw-f-52-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30053] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "53",cardId = 1101007,lv = 103,bklv = 12,star = 3,mon = {id = 206,desc = "tw-f-53-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "53",cardId = 1102012,lv = 103,bklv = 12,star = 3,mon = {id = 246,desc = "tw-f-53-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "53",cardId = 1101005,lv = 103,bklv = 12,star = 3,mon = {id = 203,desc = "tw-f-53-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "53",cardId = 1102011,lv = 103,bklv = 12,star = 3,mon = {id = 244,desc = "tw-f-53-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "53",cardId = 1101010,lv = 103,bklv = 12,star = 3,mon = {id = 212,desc = "tw-f-53-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "53",cardId = 1102016,lv = 103,bklv = 12,star = 3,mon = {id = 257,desc = "tw-f-53-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30054] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "54",cardId = 1101007,lv = 104,bklv = 12,star = 3,mon = {id = 209,desc = "tw-f-54-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "54",cardId = 1102012,lv = 104,bklv = 12,star = 3,mon = {id = 253,desc = "tw-f-54-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "54",cardId = 1101005,lv = 104,bklv = 12,star = 3,mon = {id = 208,desc = "tw-f-54-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "54",cardId = 1102011,lv = 104,bklv = 12,star = 3,mon = {id = 252,desc = "tw-f-54-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "54",cardId = 1101010,lv = 104,bklv = 12,star = 3,mon = {id = 212,desc = "tw-f-54-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "54",cardId = 1102016,lv = 104,bklv = 12,star = 3,mon = {id = 257,desc = "tw-f-54-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30055] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "55",cardId = 1101007,lv = 105,bklv = 13,star = 3,mon = {id = 213,desc = "tw-f-55-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "55",cardId = 1102012,lv = 105,bklv = 13,star = 3,mon = {id = 258,desc = "tw-f-55-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "55",cardId = 1101005,lv = 105,bklv = 13,star = 3,mon = {id = 207,desc = "tw-f-55-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "55",cardId = 1102011,lv = 105,bklv = 13,star = 3,mon = {id = 242,desc = "tw-f-55-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "55",cardId = 1101010,lv = 105,bklv = 13,star = 3,mon = {id = 211,desc = "tw-f-55-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "55",cardId = 1102016,lv = 105,bklv = 13,star = 3,mon = {id = 256,desc = "tw-f-55-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30056] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "56",cardId = 1101007,lv = 106,bklv = 13,star = 3,mon = {id = 206,desc = "tw-f-56-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "56",cardId = 1102012,lv = 106,bklv = 13,star = 3,mon = {id = 246,desc = "tw-f-56-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "56",cardId = 1101005,lv = 106,bklv = 13,star = 3,mon = {id = 205,desc = "tw-f-56-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "56",cardId = 1102011,lv = 106,bklv = 13,star = 3,mon = {id = 250,desc = "tw-f-56-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "56",cardId = 1101010,lv = 106,bklv = 13,star = 3,mon = {id = 207,desc = "tw-f-56-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "56",cardId = 1102016,lv = 106,bklv = 13,star = 3,mon = {id = 249,desc = "tw-f-56-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30057] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "57",cardId = 1101007,lv = 107,bklv = 13,star = 3,mon = {id = 212,desc = "tw-f-57-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "57",cardId = 1102012,lv = 107,bklv = 13,star = 3,mon = {id = 257,desc = "tw-f-57-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "57",cardId = 1101005,lv = 107,bklv = 13,star = 3,mon = {id = 208,desc = "tw-f-57-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "57",cardId = 1102011,lv = 107,bklv = 13,star = 3,mon = {id = 252,desc = "tw-f-57-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "57",cardId = 1101010,lv = 107,bklv = 13,star = 3,mon = {id = 209,desc = "tw-f-57-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "57",cardId = 1102016,lv = 107,bklv = 13,star = 3,mon = {id = 253,desc = "tw-f-57-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30058] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "58",cardId = 1101007,lv = 108,bklv = 13,star = 3,mon = {id = 201,desc = "tw-f-58-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "58",cardId = 1102012,lv = 108,bklv = 13,star = 3,mon = {id = 241,desc = "tw-f-58-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "58",cardId = 1101005,lv = 108,bklv = 13,star = 3,mon = {id = 203,desc = "tw-f-58-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "58",cardId = 1102011,lv = 108,bklv = 13,star = 3,mon = {id = 244,desc = "tw-f-58-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "58",cardId = 1101010,lv = 108,bklv = 13,star = 3,mon = {id = 214,desc = "tw-f-58-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "58",cardId = 1102016,lv = 108,bklv = 13,star = 3,mon = {id = 259,desc = "tw-f-58-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30059] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "59",cardId = 1101007,lv = 109,bklv = 13,star = 3,mon = {id = 212,desc = "tw-f-59-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "59",cardId = 1102012,lv = 109,bklv = 13,star = 3,mon = {id = 257,desc = "tw-f-59-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "59",cardId = 1101005,lv = 109,bklv = 13,star = 3,mon = {id = 208,desc = "tw-f-59-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "59",cardId = 1102011,lv = 109,bklv = 13,star = 3,mon = {id = 252,desc = "tw-f-59-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "59",cardId = 1101010,lv = 109,bklv = 13,star = 3,mon = {id = 209,desc = "tw-f-59-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "59",cardId = 1102016,lv = 109,bklv = 13,star = 3,mon = {id = 253,desc = "tw-f-59-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30060] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "60",cardId = 1101007,lv = 110,bklv = 14,star = 3,mon = {id = 215,desc = "tw-f-60-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "60",cardId = 1102012,lv = 110,bklv = 14,star = 3,mon = {id = 260,desc = "tw-f-60-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "60",cardId = 1101005,lv = 110,bklv = 14,star = 3,mon = {id = 201,desc = "tw-f-60-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "60",cardId = 1102011,lv = 110,bklv = 14,star = 3,mon = {id = 248,desc = "tw-f-60-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "60",cardId = 1101010,lv = 110,bklv = 14,star = 3,mon = {id = 211,desc = "tw-f-60-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "60",cardId = 1102016,lv = 110,bklv = 14,star = 3,mon = {id = 256,desc = "tw-f-60-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30061] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "61",cardId = 1101007,lv = 111,bklv = 14,star = 4,mon = {id = 209,desc = "tw-f-61-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "61",cardId = 1102012,lv = 111,bklv = 14,star = 4,mon = {id = 253,desc = "tw-f-61-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "61",cardId = 1101005,lv = 111,bklv = 14,star = 4,mon = {id = 208,desc = "tw-f-61-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "61",cardId = 1102011,lv = 111,bklv = 14,star = 4,mon = {id = 252,desc = "tw-f-61-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "61",cardId = 1101010,lv = 111,bklv = 14,star = 4,mon = {id = 212,desc = "tw-f-61-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "61",cardId = 1102016,lv = 111,bklv = 14,star = 4,mon = {id = 257,desc = "tw-f-61-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30062] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "62",cardId = 1101007,lv = 112,bklv = 14,star = 4,mon = {id = 207,desc = "tw-f-62-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "62",cardId = 1102012,lv = 112,bklv = 14,star = 4,mon = {id = 248,desc = "tw-f-62-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "62",cardId = 1101005,lv = 112,bklv = 14,star = 4,mon = {id = 207,desc = "tw-f-62-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "62",cardId = 1102011,lv = 112,bklv = 14,star = 4,mon = {id = 242,desc = "tw-f-62-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "62",cardId = 1101010,lv = 112,bklv = 14,star = 4,mon = {id = 211,desc = "tw-f-62-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "62",cardId = 1102016,lv = 112,bklv = 14,star = 4,mon = {id = 256,desc = "tw-f-62-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30063] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "63",cardId = 1101007,lv = 113,bklv = 14,star = 4,mon = {id = 205,desc = "tw-f-63-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "63",cardId = 1102012,lv = 113,bklv = 14,star = 4,mon = {id = 240,desc = "tw-f-63-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "63",cardId = 1101005,lv = 113,bklv = 14,star = 4,mon = {id = 204,desc = "tw-f-63-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "63",cardId = 1102011,lv = 113,bklv = 14,star = 4,mon = {id = 245,desc = "tw-f-63-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "63",cardId = 1101010,lv = 113,bklv = 14,star = 4,mon = {id = 207,desc = "tw-f-63-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "63",cardId = 1102016,lv = 113,bklv = 14,star = 4,mon = {id = 249,desc = "tw-f-63-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30064] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "64",cardId = 1101007,lv = 114,bklv = 14,star = 4,mon = {id = 212,desc = "tw-f-64-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "64",cardId = 1102012,lv = 114,bklv = 14,star = 4,mon = {id = 257,desc = "tw-f-64-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "64",cardId = 1101005,lv = 114,bklv = 14,star = 4,mon = {id = 208,desc = "tw-f-64-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "64",cardId = 1102011,lv = 114,bklv = 14,star = 4,mon = {id = 252,desc = "tw-f-64-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "64",cardId = 1101010,lv = 114,bklv = 14,star = 4,mon = {id = 213,desc = "tw-f-64-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "64",cardId = 1102016,lv = 114,bklv = 14,star = 4,mon = {id = 258,desc = "tw-f-64-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30065] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "65",cardId = 1101007,lv = 115,bklv = 15,star = 4,mon = {id = 201,desc = "tw-f-65-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "65",cardId = 1102012,lv = 115,bklv = 15,star = 4,mon = {id = 241,desc = "tw-f-65-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "65",cardId = 1101005,lv = 115,bklv = 15,star = 4,mon = {id = 203,desc = "tw-f-65-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "65",cardId = 1102011,lv = 115,bklv = 15,star = 4,mon = {id = 244,desc = "tw-f-65-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "65",cardId = 1101010,lv = 115,bklv = 15,star = 4,mon = {id = 214,desc = "tw-f-65-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "65",cardId = 1102016,lv = 115,bklv = 15,star = 4,mon = {id = 259,desc = "tw-f-65-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30066] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "66",cardId = 1101007,lv = 116,bklv = 15,star = 4,mon = {id = 212,desc = "tw-f-66-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "66",cardId = 1102012,lv = 116,bklv = 15,star = 4,mon = {id = 257,desc = "tw-f-66-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "66",cardId = 1101005,lv = 116,bklv = 15,star = 4,mon = {id = 208,desc = "tw-f-66-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "66",cardId = 1102011,lv = 116,bklv = 15,star = 4,mon = {id = 252,desc = "tw-f-66-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "66",cardId = 1101010,lv = 116,bklv = 15,star = 4,mon = {id = 209,desc = "tw-f-66-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "66",cardId = 1102016,lv = 116,bklv = 15,star = 4,mon = {id = 253,desc = "tw-f-66-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30067] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "67",cardId = 1101007,lv = 117,bklv = 15,star = 4,mon = {id = 215,desc = "tw-f-67-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "67",cardId = 1102012,lv = 117,bklv = 15,star = 4,mon = {id = 260,desc = "tw-f-67-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "67",cardId = 1101005,lv = 117,bklv = 15,star = 4,mon = {id = 201,desc = "tw-f-67-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "67",cardId = 1102011,lv = 117,bklv = 15,star = 4,mon = {id = 248,desc = "tw-f-67-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "67",cardId = 1101010,lv = 117,bklv = 15,star = 4,mon = {id = 211,desc = "tw-f-67-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "67",cardId = 1102016,lv = 117,bklv = 15,star = 4,mon = {id = 256,desc = "tw-f-67-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30068] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "68",cardId = 1101007,lv = 118,bklv = 15,star = 4,mon = {id = 206,desc = "tw-f-68-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "68",cardId = 1102012,lv = 118,bklv = 15,star = 4,mon = {id = 246,desc = "tw-f-68-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "68",cardId = 1101005,lv = 118,bklv = 15,star = 4,mon = {id = 203,desc = "tw-f-68-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "68",cardId = 1102011,lv = 118,bklv = 15,star = 4,mon = {id = 244,desc = "tw-f-68-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "68",cardId = 1101010,lv = 118,bklv = 15,star = 4,mon = {id = 212,desc = "tw-f-68-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "68",cardId = 1102016,lv = 118,bklv = 15,star = 4,mon = {id = 257,desc = "tw-f-68-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30069] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "69",cardId = 1101007,lv = 119,bklv = 15,star = 4,mon = {id = 209,desc = "tw-f-69-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "69",cardId = 1102012,lv = 119,bklv = 15,star = 4,mon = {id = 253,desc = "tw-f-69-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "69",cardId = 1101005,lv = 119,bklv = 15,star = 4,mon = {id = 208,desc = "tw-f-69-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "69",cardId = 1102011,lv = 119,bklv = 15,star = 4,mon = {id = 252,desc = "tw-f-69-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "69",cardId = 1101010,lv = 119,bklv = 15,star = 4,mon = {id = 212,desc = "tw-f-69-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "69",cardId = 1102016,lv = 119,bklv = 15,star = 4,mon = {id = 257,desc = "tw-f-69-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30070] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "70",cardId = 1101007,lv = 120,bklv = 16,star = 4,mon = {id = 207,desc = "tw-f-70-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "70",cardId = 1102012,lv = 120,bklv = 16,star = 4,mon = {id = 248,desc = "tw-f-70-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "70",cardId = 1101005,lv = 120,bklv = 16,star = 4,mon = {id = 207,desc = "tw-f-70-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "70",cardId = 1102011,lv = 120,bklv = 16,star = 4,mon = {id = 242,desc = "tw-f-70-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "70",cardId = 1101010,lv = 120,bklv = 16,star = 4,mon = {id = 211,desc = "tw-f-70-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "70",cardId = 1102016,lv = 120,bklv = 16,star = 4,mon = {id = 256,desc = "tw-f-70-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30071] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "71",cardId = 1101007,lv = 121,bklv = 16,star = 4,mon = {id = 207,desc = "tw-f-71-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "71",cardId = 1102012,lv = 121,bklv = 16,star = 4,mon = {id = 251,desc = "tw-f-71-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "71",cardId = 1101005,lv = 121,bklv = 16,star = 4,mon = {id = 205,desc = "tw-f-71-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "71",cardId = 1102011,lv = 121,bklv = 16,star = 4,mon = {id = 250,desc = "tw-f-71-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "71",cardId = 1101010,lv = 121,bklv = 16,star = 4,mon = {id = 210,desc = "tw-f-71-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "71",cardId = 1102016,lv = 121,bklv = 16,star = 4,mon = {id = 255,desc = "tw-f-71-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30072] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "72",cardId = 1101007,lv = 122,bklv = 16,star = 4,mon = {id = 212,desc = "tw-f-72-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "72",cardId = 1102012,lv = 122,bklv = 16,star = 4,mon = {id = 257,desc = "tw-f-72-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "72",cardId = 1101005,lv = 122,bklv = 16,star = 4,mon = {id = 208,desc = "tw-f-72-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "72",cardId = 1102011,lv = 122,bklv = 16,star = 4,mon = {id = 252,desc = "tw-f-72-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "72",cardId = 1101010,lv = 122,bklv = 16,star = 4,mon = {id = 209,desc = "tw-f-72-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "72",cardId = 1102016,lv = 122,bklv = 16,star = 4,mon = {id = 253,desc = "tw-f-72-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30073] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "73",cardId = 1101007,lv = 123,bklv = 16,star = 4,mon = {id = 201,desc = "tw-f-73-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "73",cardId = 1102012,lv = 123,bklv = 16,star = 4,mon = {id = 241,desc = "tw-f-73-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "73",cardId = 1101005,lv = 123,bklv = 16,star = 4,mon = {id = 203,desc = "tw-f-73-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "73",cardId = 1102011,lv = 123,bklv = 16,star = 4,mon = {id = 244,desc = "tw-f-73-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "73",cardId = 1101010,lv = 123,bklv = 16,star = 4,mon = {id = 214,desc = "tw-f-73-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "73",cardId = 1102016,lv = 123,bklv = 16,star = 4,mon = {id = 259,desc = "tw-f-73-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30074] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "74",cardId = 1101007,lv = 124,bklv = 16,star = 4,mon = {id = 212,desc = "tw-f-74-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "74",cardId = 1102012,lv = 124,bklv = 16,star = 4,mon = {id = 257,desc = "tw-f-74-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "74",cardId = 1101005,lv = 124,bklv = 16,star = 4,mon = {id = 208,desc = "tw-f-74-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "74",cardId = 1102011,lv = 124,bklv = 16,star = 4,mon = {id = 252,desc = "tw-f-74-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "74",cardId = 1101010,lv = 124,bklv = 16,star = 4,mon = {id = 209,desc = "tw-f-74-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "74",cardId = 1102016,lv = 124,bklv = 16,star = 4,mon = {id = 253,desc = "tw-f-74-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30075] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "75",cardId = 1101007,lv = 125,bklv = 17,star = 4,mon = {id = 215,desc = "tw-f-75-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "75",cardId = 1102012,lv = 125,bklv = 17,star = 4,mon = {id = 260,desc = "tw-f-75-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "75",cardId = 1101005,lv = 125,bklv = 17,star = 4,mon = {id = 201,desc = "tw-f-75-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "75",cardId = 1102011,lv = 125,bklv = 17,star = 4,mon = {id = 248,desc = "tw-f-75-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "75",cardId = 1101010,lv = 125,bklv = 17,star = 4,mon = {id = 211,desc = "tw-f-75-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "75",cardId = 1102016,lv = 125,bklv = 17,star = 4,mon = {id = 256,desc = "tw-f-75-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30076] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "76",cardId = 1101007,lv = 126,bklv = 17,star = 4,mon = {id = 209,desc = "tw-f-76-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "76",cardId = 1102012,lv = 126,bklv = 17,star = 4,mon = {id = 253,desc = "tw-f-76-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "76",cardId = 1101005,lv = 126,bklv = 17,star = 4,mon = {id = 208,desc = "tw-f-76-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "76",cardId = 1102011,lv = 126,bklv = 17,star = 4,mon = {id = 252,desc = "tw-f-76-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "76",cardId = 1101010,lv = 126,bklv = 17,star = 4,mon = {id = 212,desc = "tw-f-76-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "76",cardId = 1102016,lv = 126,bklv = 17,star = 4,mon = {id = 257,desc = "tw-f-76-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30077] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "77",cardId = 1101007,lv = 127,bklv = 17,star = 4,mon = {id = 207,desc = "tw-f-77-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "77",cardId = 1102012,lv = 127,bklv = 17,star = 4,mon = {id = 248,desc = "tw-f-77-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "77",cardId = 1101005,lv = 127,bklv = 17,star = 4,mon = {id = 207,desc = "tw-f-77-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "77",cardId = 1102011,lv = 127,bklv = 17,star = 4,mon = {id = 242,desc = "tw-f-77-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "77",cardId = 1101010,lv = 127,bklv = 17,star = 4,mon = {id = 211,desc = "tw-f-77-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "77",cardId = 1102016,lv = 127,bklv = 17,star = 4,mon = {id = 256,desc = "tw-f-77-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30078] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "78",cardId = 1101007,lv = 128,bklv = 17,star = 4,mon = {id = 205,desc = "tw-f-78-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "78",cardId = 1102012,lv = 128,bklv = 17,star = 4,mon = {id = 240,desc = "tw-f-78-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "78",cardId = 1101005,lv = 128,bklv = 17,star = 4,mon = {id = 204,desc = "tw-f-78-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "78",cardId = 1102011,lv = 128,bklv = 17,star = 4,mon = {id = 245,desc = "tw-f-78-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "78",cardId = 1101010,lv = 128,bklv = 17,star = 4,mon = {id = 207,desc = "tw-f-78-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "78",cardId = 1102016,lv = 128,bklv = 17,star = 4,mon = {id = 249,desc = "tw-f-78-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30079] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "79",cardId = 1101007,lv = 129,bklv = 17,star = 4,mon = {id = 201,desc = "tw-f-79-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "79",cardId = 1102012,lv = 129,bklv = 17,star = 4,mon = {id = 241,desc = "tw-f-79-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "79",cardId = 1101005,lv = 129,bklv = 17,star = 4,mon = {id = 203,desc = "tw-f-79-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "79",cardId = 1102011,lv = 129,bklv = 17,star = 4,mon = {id = 244,desc = "tw-f-79-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "79",cardId = 1101010,lv = 129,bklv = 17,star = 4,mon = {id = 214,desc = "tw-f-79-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "79",cardId = 1102016,lv = 129,bklv = 17,star = 4,mon = {id = 259,desc = "tw-f-79-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30080] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "80",cardId = 1101007,lv = 130,bklv = 18,star = 5,mon = {id = 212,desc = "tw-f-80-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "80",cardId = 1102012,lv = 130,bklv = 18,star = 5,mon = {id = 257,desc = "tw-f-80-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "80",cardId = 1101005,lv = 130,bklv = 18,star = 5,mon = {id = 208,desc = "tw-f-80-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "80",cardId = 1102011,lv = 130,bklv = 18,star = 5,mon = {id = 252,desc = "tw-f-80-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "80",cardId = 1101010,lv = 130,bklv = 18,star = 5,mon = {id = 209,desc = "tw-f-80-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "80",cardId = 1102016,lv = 130,bklv = 18,star = 5,mon = {id = 253,desc = "tw-f-80-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30081] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "81",cardId = 1101007,lv = 131,bklv = 18,star = 5,mon = {id = 215,desc = "tw-f-81-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "81",cardId = 1102012,lv = 131,bklv = 18,star = 5,mon = {id = 260,desc = "tw-f-81-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "81",cardId = 1101005,lv = 131,bklv = 18,star = 5,mon = {id = 201,desc = "tw-f-81-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "81",cardId = 1102011,lv = 131,bklv = 18,star = 5,mon = {id = 248,desc = "tw-f-81-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "81",cardId = 1101010,lv = 131,bklv = 18,star = 5,mon = {id = 211,desc = "tw-f-81-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "81",cardId = 1102016,lv = 131,bklv = 18,star = 5,mon = {id = 256,desc = "tw-f-81-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30082] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "82",cardId = 1101007,lv = 132,bklv = 18,star = 5,mon = {id = 206,desc = "tw-f-82-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "82",cardId = 1102012,lv = 132,bklv = 18,star = 5,mon = {id = 246,desc = "tw-f-82-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "82",cardId = 1101005,lv = 132,bklv = 18,star = 5,mon = {id = 203,desc = "tw-f-82-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "82",cardId = 1102011,lv = 132,bklv = 18,star = 5,mon = {id = 244,desc = "tw-f-82-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "82",cardId = 1101010,lv = 132,bklv = 18,star = 5,mon = {id = 212,desc = "tw-f-82-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "82",cardId = 1102016,lv = 132,bklv = 18,star = 5,mon = {id = 257,desc = "tw-f-82-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30083] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "83",cardId = 1101007,lv = 133,bklv = 18,star = 5,mon = {id = 209,desc = "tw-f-83-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "83",cardId = 1102012,lv = 133,bklv = 18,star = 5,mon = {id = 253,desc = "tw-f-83-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "83",cardId = 1101005,lv = 133,bklv = 18,star = 5,mon = {id = 208,desc = "tw-f-83-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "83",cardId = 1102011,lv = 133,bklv = 18,star = 5,mon = {id = 252,desc = "tw-f-83-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "83",cardId = 1101010,lv = 133,bklv = 18,star = 5,mon = {id = 212,desc = "tw-f-83-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "83",cardId = 1102016,lv = 133,bklv = 18,star = 5,mon = {id = 257,desc = "tw-f-83-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30084] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "84",cardId = 1101007,lv = 134,bklv = 18,star = 5,mon = {id = 213,desc = "tw-f-84-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "84",cardId = 1102012,lv = 134,bklv = 18,star = 5,mon = {id = 258,desc = "tw-f-84-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "84",cardId = 1101005,lv = 134,bklv = 18,star = 5,mon = {id = 207,desc = "tw-f-84-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "84",cardId = 1102011,lv = 134,bklv = 18,star = 5,mon = {id = 242,desc = "tw-f-84-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "84",cardId = 1101010,lv = 134,bklv = 18,star = 5,mon = {id = 211,desc = "tw-f-84-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "84",cardId = 1102016,lv = 134,bklv = 18,star = 5,mon = {id = 256,desc = "tw-f-84-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30085] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "85",cardId = 1101007,lv = 135,bklv = 19,star = 5,mon = {id = 206,desc = "tw-f-85-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "85",cardId = 1102012,lv = 135,bklv = 19,star = 5,mon = {id = 246,desc = "tw-f-85-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "85",cardId = 1101005,lv = 135,bklv = 19,star = 5,mon = {id = 205,desc = "tw-f-85-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "85",cardId = 1102011,lv = 135,bklv = 19,star = 5,mon = {id = 250,desc = "tw-f-85-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "85",cardId = 1101010,lv = 135,bklv = 19,star = 5,mon = {id = 207,desc = "tw-f-85-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "85",cardId = 1102016,lv = 135,bklv = 19,star = 5,mon = {id = 249,desc = "tw-f-85-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30086] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "86",cardId = 1101007,lv = 136,bklv = 19,star = 5,mon = {id = 212,desc = "tw-f-86-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "86",cardId = 1102012,lv = 136,bklv = 19,star = 5,mon = {id = 257,desc = "tw-f-86-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "86",cardId = 1101005,lv = 136,bklv = 19,star = 5,mon = {id = 208,desc = "tw-f-86-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "86",cardId = 1102011,lv = 136,bklv = 19,star = 5,mon = {id = 252,desc = "tw-f-86-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "86",cardId = 1101010,lv = 136,bklv = 19,star = 5,mon = {id = 209,desc = "tw-f-86-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "86",cardId = 1102016,lv = 136,bklv = 19,star = 5,mon = {id = 253,desc = "tw-f-86-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30087] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "87",cardId = 1101007,lv = 137,bklv = 19,star = 5,mon = {id = 201,desc = "tw-f-87-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "87",cardId = 1102012,lv = 137,bklv = 19,star = 5,mon = {id = 241,desc = "tw-f-87-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "87",cardId = 1101005,lv = 137,bklv = 19,star = 5,mon = {id = 203,desc = "tw-f-87-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "87",cardId = 1102011,lv = 137,bklv = 19,star = 5,mon = {id = 244,desc = "tw-f-87-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "87",cardId = 1101010,lv = 137,bklv = 19,star = 5,mon = {id = 214,desc = "tw-f-87-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "87",cardId = 1102016,lv = 137,bklv = 19,star = 5,mon = {id = 259,desc = "tw-f-87-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30088] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "88",cardId = 1101007,lv = 138,bklv = 19,star = 5,mon = {id = 212,desc = "tw-f-88-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "88",cardId = 1102012,lv = 138,bklv = 19,star = 5,mon = {id = 257,desc = "tw-f-88-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "88",cardId = 1101005,lv = 138,bklv = 19,star = 5,mon = {id = 208,desc = "tw-f-88-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "88",cardId = 1102011,lv = 138,bklv = 19,star = 5,mon = {id = 252,desc = "tw-f-88-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "88",cardId = 1101010,lv = 138,bklv = 19,star = 5,mon = {id = 209,desc = "tw-f-88-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "88",cardId = 1102016,lv = 138,bklv = 19,star = 5,mon = {id = 253,desc = "tw-f-88-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30089] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "89",cardId = 1101007,lv = 139,bklv = 19,star = 5,mon = {id = 215,desc = "tw-f-89-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "89",cardId = 1102012,lv = 139,bklv = 19,star = 5,mon = {id = 260,desc = "tw-f-89-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "89",cardId = 1101005,lv = 139,bklv = 19,star = 5,mon = {id = 201,desc = "tw-f-89-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "89",cardId = 1102011,lv = 139,bklv = 19,star = 5,mon = {id = 248,desc = "tw-f-89-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "89",cardId = 1101010,lv = 139,bklv = 19,star = 5,mon = {id = 211,desc = "tw-f-89-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "89",cardId = 1102016,lv = 139,bklv = 19,star = 5,mon = {id = 256,desc = "tw-f-89-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30090] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "90",cardId = 1101007,lv = 140,bklv = 20,star = 5,mon = {id = 209,desc = "tw-f-90-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "90",cardId = 1102012,lv = 140,bklv = 20,star = 5,mon = {id = 253,desc = "tw-f-90-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "90",cardId = 1101005,lv = 140,bklv = 20,star = 5,mon = {id = 208,desc = "tw-f-90-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "90",cardId = 1102011,lv = 140,bklv = 20,star = 5,mon = {id = 252,desc = "tw-f-90-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "90",cardId = 1101010,lv = 140,bklv = 20,star = 5,mon = {id = 212,desc = "tw-f-90-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "90",cardId = 1102016,lv = 140,bklv = 20,star = 5,mon = {id = 257,desc = "tw-f-90-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30091] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "91",cardId = 1101007,lv = 141,bklv = 20,star = 5,mon = {id = 207,desc = "tw-f-91-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "91",cardId = 1102012,lv = 141,bklv = 20,star = 5,mon = {id = 248,desc = "tw-f-91-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "91",cardId = 1101005,lv = 141,bklv = 20,star = 5,mon = {id = 207,desc = "tw-f-91-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "91",cardId = 1102011,lv = 141,bklv = 20,star = 5,mon = {id = 242,desc = "tw-f-91-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "91",cardId = 1101010,lv = 141,bklv = 20,star = 5,mon = {id = 211,desc = "tw-f-91-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "91",cardId = 1102016,lv = 141,bklv = 20,star = 5,mon = {id = 256,desc = "tw-f-91-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30092] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "92",cardId = 1101007,lv = 142,bklv = 20,star = 5,mon = {id = 205,desc = "tw-f-92-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "92",cardId = 1102012,lv = 142,bklv = 20,star = 5,mon = {id = 240,desc = "tw-f-92-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "92",cardId = 1101005,lv = 142,bklv = 20,star = 5,mon = {id = 204,desc = "tw-f-92-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "92",cardId = 1102011,lv = 142,bklv = 20,star = 5,mon = {id = 245,desc = "tw-f-92-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "92",cardId = 1101010,lv = 142,bklv = 20,star = 5,mon = {id = 207,desc = "tw-f-92-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "92",cardId = 1102016,lv = 142,bklv = 20,star = 5,mon = {id = 249,desc = "tw-f-92-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30093] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "93",cardId = 1101007,lv = 143,bklv = 20,star = 5,mon = {id = 212,desc = "tw-f-93-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "93",cardId = 1102012,lv = 143,bklv = 20,star = 5,mon = {id = 257,desc = "tw-f-93-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "93",cardId = 1101005,lv = 143,bklv = 20,star = 5,mon = {id = 208,desc = "tw-f-93-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "93",cardId = 1102011,lv = 143,bklv = 20,star = 5,mon = {id = 252,desc = "tw-f-93-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "93",cardId = 1101010,lv = 143,bklv = 20,star = 5,mon = {id = 213,desc = "tw-f-93-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "93",cardId = 1102016,lv = 143,bklv = 20,star = 5,mon = {id = 258,desc = "tw-f-93-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30094] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "94",cardId = 1101007,lv = 144,bklv = 20,star = 5,mon = {id = 201,desc = "tw-f-94-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "94",cardId = 1102012,lv = 144,bklv = 20,star = 5,mon = {id = 241,desc = "tw-f-94-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "94",cardId = 1101005,lv = 144,bklv = 20,star = 5,mon = {id = 203,desc = "tw-f-94-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "94",cardId = 1102011,lv = 144,bklv = 20,star = 5,mon = {id = 244,desc = "tw-f-94-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "94",cardId = 1101010,lv = 144,bklv = 20,star = 5,mon = {id = 214,desc = "tw-f-94-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "94",cardId = 1102016,lv = 144,bklv = 20,star = 5,mon = {id = 259,desc = "tw-f-94-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30095] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "95",cardId = 1101007,lv = 145,bklv = 20,star = 5,mon = {id = 212,desc = "tw-f-95-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "95",cardId = 1102012,lv = 145,bklv = 20,star = 5,mon = {id = 257,desc = "tw-f-95-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "95",cardId = 1101005,lv = 145,bklv = 20,star = 5,mon = {id = 208,desc = "tw-f-95-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "95",cardId = 1102011,lv = 145,bklv = 20,star = 5,mon = {id = 252,desc = "tw-f-95-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "95",cardId = 1101010,lv = 145,bklv = 20,star = 5,mon = {id = 209,desc = "tw-f-95-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "95",cardId = 1102016,lv = 145,bklv = 20,star = 5,mon = {id = 253,desc = "tw-f-95-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30096] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "96",cardId = 1101007,lv = 146,bklv = 20,star = 5,mon = {id = 215,desc = "tw-f-96-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "96",cardId = 1102012,lv = 146,bklv = 20,star = 5,mon = {id = 260,desc = "tw-f-96-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "96",cardId = 1101005,lv = 146,bklv = 20,star = 5,mon = {id = 201,desc = "tw-f-96-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "96",cardId = 1102011,lv = 146,bklv = 20,star = 5,mon = {id = 248,desc = "tw-f-96-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "96",cardId = 1101010,lv = 146,bklv = 20,star = 5,mon = {id = 211,desc = "tw-f-96-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "96",cardId = 1102016,lv = 146,bklv = 20,star = 5,mon = {id = 256,desc = "tw-f-96-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30097] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "97",cardId = 1101007,lv = 147,bklv = 20,star = 5,mon = {id = 206,desc = "tw-f-97-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "97",cardId = 1102012,lv = 147,bklv = 20,star = 5,mon = {id = 246,desc = "tw-f-97-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "97",cardId = 1101005,lv = 147,bklv = 20,star = 5,mon = {id = 203,desc = "tw-f-97-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "97",cardId = 1102011,lv = 147,bklv = 20,star = 5,mon = {id = 244,desc = "tw-f-97-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "97",cardId = 1101010,lv = 147,bklv = 20,star = 5,mon = {id = 212,desc = "tw-f-97-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "97",cardId = 1102016,lv = 147,bklv = 20,star = 5,mon = {id = 257,desc = "tw-f-97-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30098] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "98",cardId = 1101007,lv = 148,bklv = 20,star = 5,mon = {id = 209,desc = "tw-f-98-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "98",cardId = 1102012,lv = 148,bklv = 20,star = 5,mon = {id = 253,desc = "tw-f-98-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "98",cardId = 1101005,lv = 148,bklv = 20,star = 5,mon = {id = 208,desc = "tw-f-98-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "98",cardId = 1102011,lv = 148,bklv = 20,star = 5,mon = {id = 252,desc = "tw-f-98-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "98",cardId = 1101010,lv = 148,bklv = 20,star = 5,mon = {id = 212,desc = "tw-f-98-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "98",cardId = 1102016,lv = 148,bklv = 20,star = 5,mon = {id = 257,desc = "tw-f-98-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30099] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "99",cardId = 1101007,lv = 149,bklv = 20,star = 5,mon = {id = 207,desc = "tw-f-99-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "99",cardId = 1102012,lv = 149,bklv = 20,star = 5,mon = {id = 248,desc = "tw-f-99-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "99",cardId = 1101005,lv = 149,bklv = 20,star = 5,mon = {id = 207,desc = "tw-f-99-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "99",cardId = 1102011,lv = 149,bklv = 20,star = 5,mon = {id = 242,desc = "tw-f-99-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "99",cardId = 1101010,lv = 149,bklv = 20,star = 5,mon = {id = 211,desc = "tw-f-99-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "99",cardId = 1102016,lv = 149,bklv = 20,star = 5,mon = {id = 256,desc = "tw-f-99-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30100] = {
		[1] = {
			jlr = {cha = "tw-f",lvId = "100",cardId = 1101007,lv = 150,bklv = 20,star = 5,mon = {id = 207,desc = "tw-f-100-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "100",cardId = 1102012,lv = 150,bklv = 20,star = 5,mon = {id = 251,desc = "tw-f-100-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",lvId = "100",cardId = 1101005,lv = 150,bklv = 20,star = 5,mon = {id = 205,desc = "tw-f-100-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "100",cardId = 1102011,lv = 150,bklv = 20,star = 5,mon = {id = 250,desc = "tw-f-100-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",lvId = "100",cardId = 1101010,lv = 150,bklv = 20,star = 5,mon = {id = 210,desc = "tw-f-100-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",lvId = "100",cardId = 1102016,lv = 150,bklv = 20,star = 5,mon = {id = 255,desc = "tw-f-100-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[40001] = {
		[1] = {
			jlr = {cha = "ds1",lvId = "1",cardId = 1101007,lv = 40,bklv = 3,star = 1,mon = {id = 212,desc = "ds1-loc1-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds1",lvId = "1",cardId = 1102002,lv = 40,bklv = 3,star = 1,mon = {id = 236,desc = "ds1-loc1-shl",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "ds1",lvId = "1",cardId = 1101014,lv = 40,bklv = 3,star = 1,mon = {id = 208,desc = "ds1-loc2-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds1",lvId = "1",cardId = 1102020,lv = 40,bklv = 3,star = 1,mon = {id = 231,desc = "ds1-loc2-shl",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "ds1",lvId = "1",cardId = 1101003,lv = 40,bklv = 3,star = 1,mon = {id = 209,desc = "ds1-loc3-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds1",lvId = "1",cardId = 1102005,lv = 40,bklv = 3,star = 1,mon = {id = 232,desc = "ds1-loc3-shl",bsFac = 1,rou = 1}}
		}
	},
	[40002] = {
		[1] = {
			jlr = {cha = "ds2",lvId = "1",cardId = 1101007,lv = 45,bklv = 4,star = 1,mon = {id = 212,desc = "ds2-loc1-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds2",lvId = "1",cardId = 1102002,lv = 45,bklv = 4,star = 1,mon = {id = 236,desc = "ds2-loc1-shl",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "ds2",lvId = "1",cardId = 1101014,lv = 45,bklv = 4,star = 1,mon = {id = 208,desc = "ds2-loc2-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds2",lvId = "1",cardId = 1102020,lv = 45,bklv = 4,star = 1,mon = {id = 231,desc = "ds2-loc2-shl",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "ds2",lvId = "1",cardId = 1101003,lv = 45,bklv = 4,star = 1,mon = {id = 209,desc = "ds2-loc3-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds2",lvId = "1",cardId = 1102005,lv = 45,bklv = 4,star = 1,mon = {id = 232,desc = "ds2-loc3-shl",bsFac = 1,rou = 1}}
		}
	},
	[40003] = {
		[1] = {
			jlr = {cha = "ds3",lvId = "1",cardId = 1101007,lv = 50,bklv = 5,star = 2,mon = {id = 212,desc = "ds3-loc1-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds3",lvId = "1",cardId = 1102002,lv = 50,bklv = 5,star = 2,mon = {id = 236,desc = "ds3-loc1-shl",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "ds3",lvId = "1",cardId = 1101014,lv = 50,bklv = 5,star = 2,mon = {id = 208,desc = "ds3-loc2-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds3",lvId = "1",cardId = 1102020,lv = 50,bklv = 5,star = 2,mon = {id = 231,desc = "ds3-loc2-shl",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "ds3",lvId = "1",cardId = 1101003,lv = 50,bklv = 5,star = 2,mon = {id = 209,desc = "ds3-loc3-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds3",lvId = "1",cardId = 1102005,lv = 50,bklv = 5,star = 2,mon = {id = 232,desc = "ds3-loc3-shl",bsFac = 1,rou = 1}}
		}
	},
	[40004] = {
		[1] = {
			jlr = {cha = "ds4",lvId = "1",cardId = 1101007,lv = 60,bklv = 6,star = 2,mon = {id = 212,desc = "ds4-loc1-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds4",lvId = "1",cardId = 1102002,lv = 60,bklv = 6,star = 2,mon = {id = 236,desc = "ds4-loc1-shl",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "ds4",lvId = "1",cardId = 1101014,lv = 60,bklv = 6,star = 2,mon = {id = 208,desc = "ds4-loc2-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds4",lvId = "1",cardId = 1102020,lv = 60,bklv = 6,star = 2,mon = {id = 231,desc = "ds4-loc2-shl",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "ds4",lvId = "1",cardId = 1101003,lv = 60,bklv = 6,star = 2,mon = {id = 209,desc = "ds4-loc3-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds4",lvId = "1",cardId = 1102005,lv = 60,bklv = 6,star = 2,mon = {id = 232,desc = "ds4-loc3-shl",bsFac = 1,rou = 1}}
		}
	},
	[40005] = {
		[1] = {
			jlr = {cha = "ds5",lvId = "1",cardId = 1101007,lv = 70,bklv = 7,star = 2,mon = {id = 212,desc = "ds5-loc1-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds5",lvId = "1",cardId = 1102002,lv = 70,bklv = 7,star = 2,mon = {id = 236,desc = "ds5-loc1-shl",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "ds5",lvId = "1",cardId = 1101014,lv = 70,bklv = 7,star = 2,mon = {id = 208,desc = "ds5-loc2-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds5",lvId = "1",cardId = 1102020,lv = 70,bklv = 7,star = 2,mon = {id = 231,desc = "ds5-loc2-shl",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "ds5",lvId = "1",cardId = 1101003,lv = 70,bklv = 7,star = 2,mon = {id = 209,desc = "ds5-loc3-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds5",lvId = "1",cardId = 1102005,lv = 70,bklv = 7,star = 2,mon = {id = 232,desc = "ds5-loc3-shl",bsFac = 1,rou = 1}}
		}
	},
	[40006] = {
		[1] = {
			jlr = {cha = "ds6",lvId = "1",cardId = 1101007,lv = 80,bklv = 8,star = 3,mon = {id = 212,desc = "ds6-loc1-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds6",lvId = "1",cardId = 1102002,lv = 80,bklv = 8,star = 3,mon = {id = 236,desc = "ds6-loc1-shl",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "ds6",lvId = "1",cardId = 1101014,lv = 80,bklv = 8,star = 3,mon = {id = 208,desc = "ds6-loc2-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds6",lvId = "1",cardId = 1102020,lv = 80,bklv = 8,star = 3,mon = {id = 231,desc = "ds6-loc2-shl",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "ds6",lvId = "1",cardId = 1101003,lv = 80,bklv = 8,star = 3,mon = {id = 209,desc = "ds6-loc3-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds6",lvId = "1",cardId = 1102005,lv = 80,bklv = 8,star = 3,mon = {id = 232,desc = "ds6-loc3-shl",bsFac = 1,rou = 1}}
		}
	},
	[40007] = {
		[1] = {
			jlr = {cha = "ds7",lvId = "1",cardId = 1101007,lv = 80,bklv = 8,star = 3,mon = {id = 212,desc = "ds7-loc1-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds7",lvId = "1",cardId = 1102002,lv = 80,bklv = 8,star = 3,mon = {id = 236,desc = "ds7-loc1-shl",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "ds7",lvId = "1",cardId = 1101014,lv = 80,bklv = 8,star = 3,mon = {id = 208,desc = "ds7-loc2-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds7",lvId = "1",cardId = 1102020,lv = 80,bklv = 8,star = 3,mon = {id = 231,desc = "ds7-loc2-shl",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "ds7",lvId = "1",cardId = 1101003,lv = 80,bklv = 8,star = 3,mon = {id = 209,desc = "ds7-loc3-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds7",lvId = "1",cardId = 1102005,lv = 80,bklv = 8,star = 3,mon = {id = 232,desc = "ds7-loc3-shl",bsFac = 1,rou = 1}}
		}
	},
	[40008] = {
		[1] = {
			jlr = {cha = "ds8",lvId = "1",cardId = 1101007,lv = 80,bklv = 8,star = 3,mon = {id = 212,desc = "ds8-loc1-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds8",lvId = "1",cardId = 1102002,lv = 80,bklv = 8,star = 3,mon = {id = 236,desc = "ds8-loc1-shl",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "ds8",lvId = "1",cardId = 1101014,lv = 80,bklv = 8,star = 3,mon = {id = 208,desc = "ds8-loc2-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds8",lvId = "1",cardId = 1102020,lv = 80,bklv = 8,star = 3,mon = {id = 231,desc = "ds8-loc2-shl",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "ds8",lvId = "1",cardId = 1101003,lv = 80,bklv = 8,star = 3,mon = {id = 209,desc = "ds8-loc3-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds8",lvId = "1",cardId = 1102005,lv = 80,bklv = 8,star = 3,mon = {id = 232,desc = "ds8-loc3-shl",bsFac = 1,rou = 1}}
		}
	},
	[40009] = {
		[1] = {
			jlr = {cha = "ds9",lvId = "1",cardId = 1101007,lv = 90,bklv = 10,star = 3,mon = {id = 212,desc = "ds9-loc1-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds9",lvId = "1",cardId = 1102002,lv = 90,bklv = 10,star = 3,mon = {id = 236,desc = "ds9-loc1-shl",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "ds9",lvId = "1",cardId = 1101014,lv = 90,bklv = 10,star = 3,mon = {id = 208,desc = "ds9-loc2-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds9",lvId = "1",cardId = 1102020,lv = 90,bklv = 10,star = 3,mon = {id = 231,desc = "ds9-loc2-shl",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "ds9",lvId = "1",cardId = 1101003,lv = 90,bklv = 10,star = 3,mon = {id = 209,desc = "ds9-loc3-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds9",lvId = "1",cardId = 1102005,lv = 90,bklv = 10,star = 3,mon = {id = 232,desc = "ds9-loc3-shl",bsFac = 1,rou = 1}}
		}
	},
	[40010] = {
		[1] = {
			jlr = {cha = "tg1",lvId = "1",cardId = 1101007,lv = 100,bklv = 12,star = 4,mon = {id = 212,desc = "tg1-loc1-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "tg1",lvId = "1",cardId = 1102002,lv = 100,bklv = 12,star = 4,mon = {id = 236,desc = "tg1-loc1-shl",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tg1",lvId = "1",cardId = 1101014,lv = 100,bklv = 12,star = 4,mon = {id = 208,desc = "tg1-loc2-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "tg1",lvId = "1",cardId = 1102020,lv = 100,bklv = 12,star = 4,mon = {id = 231,desc = "tg1-loc2-shl",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tg1",lvId = "1",cardId = 1101003,lv = 100,bklv = 12,star = 4,mon = {id = 209,desc = "tg1-loc3-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "tg1",lvId = "1",cardId = 1102005,lv = 100,bklv = 12,star = 4,mon = {id = 232,desc = "tg1-loc3-shl",bsFac = 1,rou = 1}}
		}
	},
	[40011] = {
		[1] = {
			jlr = {cha = "tg2",lvId = "1",cardId = 1101007,lv = 100,bklv = 12,star = 4,mon = {id = 212,desc = "tg2-loc1-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "tg2",lvId = "1",cardId = 1102002,lv = 100,bklv = 12,star = 4,mon = {id = 236,desc = "tg2-loc1-shl",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tg2",lvId = "1",cardId = 1101014,lv = 100,bklv = 12,star = 4,mon = {id = 208,desc = "tg2-loc2-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "tg2",lvId = "1",cardId = 1102020,lv = 100,bklv = 12,star = 4,mon = {id = 231,desc = "tg2-loc2-shl",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tg2",lvId = "1",cardId = 1101003,lv = 100,bklv = 12,star = 4,mon = {id = 209,desc = "tg2-loc3-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "tg2",lvId = "1",cardId = 1102005,lv = 100,bklv = 12,star = 4,mon = {id = 232,desc = "tg2-loc3-shl",bsFac = 1,rou = 1}}
		}
	},
	[40012] = {
		[1] = {
			jlr = {cha = "tg3",lvId = "1",cardId = 1101007,lv = 100,bklv = 12,star = 5,mon = {id = 212,desc = "tg3-loc1-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "tg3",lvId = "1",cardId = 1102002,lv = 100,bklv = 12,star = 5,mon = {id = 236,desc = "tg3-loc1-shl",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tg3",lvId = "1",cardId = 1101014,lv = 100,bklv = 12,star = 5,mon = {id = 208,desc = "tg3-loc2-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "tg3",lvId = "1",cardId = 1102020,lv = 100,bklv = 12,star = 5,mon = {id = 231,desc = "tg3-loc2-shl",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tg3",lvId = "1",cardId = 1101003,lv = 100,bklv = 12,star = 5,mon = {id = 209,desc = "tg3-loc3-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "tg3",lvId = "1",cardId = 1102005,lv = 100,bklv = 12,star = 5,mon = {id = 232,desc = "tg3-loc3-shl",bsFac = 1,rou = 1}}
		}
	},
	[40013] = {
		[1] = {
			jlr = {cha = "tg4",lvId = "1",cardId = 1101007,lv = 110,bklv = 14,star = 5,mon = {id = 212,desc = "tg4-loc1-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "tg4",lvId = "1",cardId = 1102002,lv = 110,bklv = 14,star = 5,mon = {id = 236,desc = "tg4-loc1-shl",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tg4",lvId = "1",cardId = 1101014,lv = 110,bklv = 14,star = 5,mon = {id = 208,desc = "tg4-loc2-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "tg4",lvId = "1",cardId = 1102020,lv = 110,bklv = 14,star = 5,mon = {id = 231,desc = "tg4-loc2-shl",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tg4",lvId = "1",cardId = 1101003,lv = 110,bklv = 14,star = 5,mon = {id = 209,desc = "tg4-loc3-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "tg4",lvId = "1",cardId = 1102005,lv = 110,bklv = 14,star = 5,mon = {id = 232,desc = "tg4-loc3-shl",bsFac = 1,rou = 1}}
		}
	},
	[40014] = {
		[1] = {
			jlr = {cha = "tg5",lvId = "1",cardId = 1101007,lv = 120,bklv = 16,star = 5,mon = {id = 212,desc = "tg5-loc1-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "tg5",lvId = "1",cardId = 1102002,lv = 120,bklv = 16,star = 5,mon = {id = 236,desc = "tg5-loc1-shl",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tg5",lvId = "1",cardId = 1101014,lv = 120,bklv = 16,star = 5,mon = {id = 208,desc = "tg5-loc2-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "tg5",lvId = "1",cardId = 1102020,lv = 120,bklv = 16,star = 5,mon = {id = 231,desc = "tg5-loc2-shl",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tg5",lvId = "1",cardId = 1101003,lv = 120,bklv = 16,star = 5,mon = {id = 209,desc = "tg5-loc3-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "tg5",lvId = "1",cardId = 1102005,lv = 120,bklv = 16,star = 5,mon = {id = 232,desc = "tg5-loc3-shl",bsFac = 1,rou = 1}}
		}
	},
	[40015] = {
		[1] = {
			jlr = {cha = "tg6",lvId = "1",cardId = 1101007,lv = 130,bklv = 18,star = 5,mon = {id = 212,desc = "tg6-loc1-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "tg6",lvId = "1",cardId = 1102002,lv = 130,bklv = 18,star = 5,mon = {id = 236,desc = "tg6-loc1-shl",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tg6",lvId = "1",cardId = 1101014,lv = 130,bklv = 18,star = 5,mon = {id = 208,desc = "tg6-loc2-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "tg6",lvId = "1",cardId = 1102020,lv = 130,bklv = 18,star = 5,mon = {id = 231,desc = "tg6-loc2-shl",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tg6",lvId = "1",cardId = 1101003,lv = 130,bklv = 18,star = 5,mon = {id = 209,desc = "tg6-loc3-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "tg6",lvId = "1",cardId = 1102005,lv = 130,bklv = 18,star = 5,mon = {id = 232,desc = "tg6-loc3-shl",bsFac = 1,rou = 1}}
		}
	},
	[40016] = {
		[1] = {
			jlr = {cha = "xy",lvId = "1",cardId = 1101007,lv = 140,bklv = 20,star = 5,mon = {id = 212,desc = "xy-loc1-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "xy",lvId = "1",cardId = 1102002,lv = 140,bklv = 20,star = 5,mon = {id = 236,desc = "xy-loc1-shl",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "xy",lvId = "1",cardId = 1101014,lv = 140,bklv = 20,star = 5,mon = {id = 208,desc = "xy-loc2-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "xy",lvId = "1",cardId = 1102020,lv = 140,bklv = 20,star = 5,mon = {id = 231,desc = "xy-loc2-shl",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "xy",lvId = "1",cardId = 1101003,lv = 140,bklv = 20,star = 5,mon = {id = 209,desc = "xy-loc3-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "xy",lvId = "1",cardId = 1102005,lv = 140,bklv = 20,star = 5,mon = {id = 232,desc = "xy-loc3-shl",bsFac = 1,rou = 1}}
		}
	}
}
--[[
--note:

colums:
{cha,章节} ,{lvId,关卡} ,{group,组} ,{loc,位置} ,{type,类型} ,{cardId,卡牌ID} ,{lv,等级} ,{bklv,突破} ,{star,星级} ,{mon.id,怪物模组ID} ,{mon.desc,备注} ,{mon.bsFac,战力系数} ,{mon.rou,相对肉度} ,{monId,怪物模组ID} ,{BsFac,战力系数} ,{Rou,肉度}
primary key:
#0 [卡牌组]: group,loc,type
#1 [挂机卡牌组]: group,loc,type
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
			shl = {cha = "pt-1",lvId = "2",cardId = 1102005,lv = 3,bklv = 1,star = 1}
		}
	},
	[10103] = {
		[1] = {
			jlr = {cha = "pt-1",lvId = "3",cardId = 1101001,lv = 1,bklv = 1,star = 1},
			shl = {cha = "pt-1",lvId = "3",cardId = 1102015,lv = 1,bklv = 1,star = 1}
		},
		[2] = {
			jlr = {cha = "pt-1",lvId = "3",cardId = 1101002,lv = 1,bklv = 1,star = 1},
			shl = {cha = "pt-1",lvId = "3",cardId = 1102004,lv = 1,bklv = 1,star = 1}
		},
		[3] = {
			jlr = {cha = "pt-1",lvId = "3",cardId = 1101003,lv = 2,bklv = 1,star = 1,mon = {id = 207,desc = "pt-1-3-jlr-loc3",bsFac = 5,rou = 1.3}},
			shl = {cha = "pt-1",lvId = "3",cardId = 1102005,lv = 3,bklv = 1,star = 1}
		}
	},
	[10105] = {
		[1] = {
			jlr = {cha = "pt-1",lvId = "5",cardId = 1101001,lv = 2,bklv = 1,star = 1,mon = {id = 208,desc = "pt-1-5-jlr-loc1",bsFac = 1,rou = 0.75}},
			shl = {cha = "pt-1",lvId = "5",cardId = 1102015,lv = 1,bklv = 1,star = 1,mon = {id = 228,desc = "pt-1-5-shl-loc1",bsFac = 0.85,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-1",lvId = "5",cardId = 1101002,lv = 2,bklv = 1,star = 1,mon = {id = 213,desc = "pt-1-5-jlr-loc2",bsFac = 1,rou = 0.75}},
			shl = {cha = "pt-1",lvId = "5",cardId = 1102004,lv = 1,bklv = 1,star = 1,mon = {id = 234,desc = "pt-1-5-shl-loc2",bsFac = 0.85,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-1",lvId = "5",cardId = 1101003,lv = 2,bklv = 1,star = 1},
			shl = {cha = "pt-1",lvId = "5",cardId = 1102005,lv = 5,bklv = 1,star = 1}
		}
	},
	[10106] = {
		[1] = {
			jlr = {cha = "pt-1",lvId = "6",cardId = 1101001,lv = 2,bklv = 1,star = 1,mon = {id = 101,desc = "pt-1-6-jlr-loc1",bsFac = 0.9,rou = 0.8}},
			shl = {cha = "pt-1",lvId = "6",cardId = 1102015,lv = 2,bklv = 1,star = 1,mon = {id = 102,desc = "pt-1-6-shl-loc1",bsFac = 0.8,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-1",lvId = "6",cardId = 1101002,lv = 2,bklv = 1,star = 1,mon = {id = 103,desc = "pt-1-6-jlr-loc2",bsFac = 0.9,rou = 0.8}},
			shl = {cha = "pt-1",lvId = "6",cardId = 1102004,lv = 2,bklv = 1,star = 1,mon = {id = 104,desc = "pt-1-6-shl-loc2",bsFac = 0.8,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-1",lvId = "6",cardId = 1101003,lv = 2,bklv = 1,star = 1,mon = {id = 105,desc = "pt-1-6-jlr-loc3",bsFac = 0.9,rou = 0.8}},
			shl = {cha = "pt-1",lvId = "6",cardId = 1102005,lv = 5,bklv = 1,star = 1,mon = {id = 106,desc = "pt-1-6-shl-loc3",bsFac = 0.7,rou = 1}}
		}
	},
	[10108] = {
		[1] = {
			jlr = {cha = "pt-1",lvId = "8",cardId = 1101001,lv = 3,bklv = 1,star = 1,mon = {id = 212,desc = "pt-1-8-jlr-loc1",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-1",lvId = "8",cardId = 1102015,lv = 3,bklv = 1,star = 1,mon = {id = 233,desc = "pt-1-8-shl-loc1",bsFac = 0.85,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-1",lvId = "8",cardId = 1101002,lv = 3,bklv = 1,star = 1,mon = {id = 208,desc = "pt-1-8-jlr-loc2",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-1",lvId = "8",cardId = 1102005,lv = 3,bklv = 1,star = 1,mon = {id = 228,desc = "pt-1-8-shl-loc2",bsFac = 0.85,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-1",lvId = "8",cardId = 1101003,lv = 3,bklv = 1,star = 1,mon = {id = 209,desc = "pt-1-8-jlr-loc3",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-1",lvId = "8",cardId = 1102005,lv = 7,bklv = 1,star = 1,mon = {id = 229,desc = "pt-1-8-shl-loc3",bsFac = 0.7,rou = 1}}
		}
	},
	[10109] = {
		[1] = {
			jlr = {cha = "pt-1",lvId = "9",cardId = 1101001,lv = 7,bklv = 1,star = 1},
			shl = {cha = "pt-1",lvId = "9",cardId = 1102015,lv = 7,bklv = 1,star = 1}
		},
		[2] = {
			jlr = {cha = "pt-1",lvId = "9",cardId = 1101002,lv = 7,bklv = 1,star = 1},
			shl = {cha = "pt-1",lvId = "9",cardId = 1102005,lv = 7,bklv = 1,star = 1}
		},
		[3] = {
			jlr = {cha = "pt-1",lvId = "9",cardId = 1101003,lv = 7,bklv = 1,star = 1,mon = {id = 207,desc = "pt-1-9-jlr-loc3",bsFac = 2.5,rou = 2}},
			shl = {cha = "pt-1",lvId = "9",cardId = 1102005,lv = 15,bklv = 1,star = 1,mon = {id = 302,desc = "pt-1-9-shl-loc3",bsFac = 2,rou = 1.5}}
		}
	},
	[10201] = {
		[1] = {
			jlr = {cha = "pt-2",lvId = "1",cardId = 1101001,lv = 7,bklv = 1,star = 1,mon = {id = 212,desc = "pt-2-1-jlr-loc1",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "1",cardId = 1102015,lv = 7,bklv = 1,star = 1,mon = {id = 233,desc = "pt-2-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-2",lvId = "1",cardId = 1101003,lv = 7,bklv = 1,star = 1,mon = {id = 208,desc = "pt-2-1-jlr-loc2",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "1",cardId = 1102005,lv = 7,bklv = 1,star = 1,mon = {id = 228,desc = "pt-2-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-2",lvId = "1",cardId = 1101002,lv = 7,bklv = 1,star = 1,mon = {id = 209,desc = "pt-2-1-jlr-loc3",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "1",cardId = 1102004,lv = 7,bklv = 1,star = 1,mon = {id = 229,desc = "pt-2-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10202] = {
		[1] = {
			jlr = {cha = "pt-2",lvId = "2",cardId = 1101001,lv = 8,bklv = 1,star = 1,mon = {id = 201,desc = "pt-2-2-jlr-loc1",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "2",cardId = 1102015,lv = 8,bklv = 1,star = 1,mon = {id = 217,desc = "pt-2-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-2",lvId = "2",cardId = 1101003,lv = 8,bklv = 1,star = 1,mon = {id = 203,desc = "pt-2-2-jlr-loc2",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "2",cardId = 1102005,lv = 8,bklv = 1,star = 1,mon = {id = 220,desc = "pt-2-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-2",lvId = "2",cardId = 1101002,lv = 8,bklv = 1,star = 1,mon = {id = 214,desc = "pt-2-2-jlr-loc3",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "2",cardId = 1102004,lv = 8,bklv = 1,star = 1,mon = {id = 235,desc = "pt-2-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10203] = {
		[1] = {
			jlr = {cha = "pt-2",lvId = "3",cardId = 1101001,lv = 10,bklv = 1,star = 1,mon = {id = 212,desc = "pt-2-3-jlr-loc1",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "3",cardId = 1102015,lv = 10,bklv = 1,star = 1,mon = {id = 233,desc = "pt-2-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-2",lvId = "3",cardId = 1101003,lv = 10,bklv = 1,star = 1,mon = {id = 208,desc = "pt-2-3-jlr-loc2",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "3",cardId = 1102005,lv = 10,bklv = 1,star = 1,mon = {id = 228,desc = "pt-2-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-2",lvId = "3",cardId = 1101002,lv = 10,bklv = 1,star = 1,mon = {id = 209,desc = "pt-2-3-jlr-loc3",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "3",cardId = 1102004,lv = 10,bklv = 1,star = 1,mon = {id = 229,desc = "pt-2-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10204] = {
		[1] = {
			jlr = {cha = "pt-2",lvId = "4",cardId = 1101001,lv = 12,bklv = 1,star = 1,mon = {id = 215,desc = "pt-2-4-jlr-loc1",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "4",cardId = 1102015,lv = 12,bklv = 1,star = 1,mon = {id = 236,desc = "pt-2-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-2",lvId = "4",cardId = 1101003,lv = 12,bklv = 1,star = 1,mon = {id = 201,desc = "pt-2-4-jlr-loc2",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "4",cardId = 1102005,lv = 12,bklv = 1,star = 1,mon = {id = 224,desc = "pt-2-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-2",lvId = "4",cardId = 1101002,lv = 12,bklv = 1,star = 1,mon = {id = 211,desc = "pt-2-4-jlr-loc3",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "4",cardId = 1102004,lv = 12,bklv = 1,star = 1,mon = {id = 232,desc = "pt-2-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10205] = {
		[1] = {
			jlr = {cha = "pt-2",lvId = "5",cardId = 1101001,lv = 13,bklv = 1,star = 1,mon = {id = 206,desc = "pt-2-5-jlr-loc1",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "5",cardId = 1102015,lv = 13,bklv = 1,star = 1,mon = {id = 222,desc = "pt-2-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-2",lvId = "5",cardId = 1101003,lv = 13,bklv = 1,star = 1,mon = {id = 203,desc = "pt-2-5-jlr-loc2",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "5",cardId = 1102005,lv = 13,bklv = 1,star = 1,mon = {id = 220,desc = "pt-2-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-2",lvId = "5",cardId = 1101002,lv = 13,bklv = 1,star = 1,mon = {id = 212,desc = "pt-2-5-jlr-loc3",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "5",cardId = 1102004,lv = 13,bklv = 1,star = 1,mon = {id = 233,desc = "pt-2-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10206] = {
		[1] = {
			jlr = {cha = "pt-2",lvId = "6",cardId = 1101001,lv = 15,bklv = 1,star = 1,mon = {id = 209,desc = "pt-2-6-jlr-loc1",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "6",cardId = 1102015,lv = 15,bklv = 1,star = 1,mon = {id = 229,desc = "pt-2-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-2",lvId = "6",cardId = 1101003,lv = 15,bklv = 1,star = 1,mon = {id = 208,desc = "pt-2-6-jlr-loc2",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "6",cardId = 1102005,lv = 15,bklv = 1,star = 1,mon = {id = 228,desc = "pt-2-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-2",lvId = "6",cardId = 1101002,lv = 15,bklv = 1,star = 1,mon = {id = 212,desc = "pt-2-6-jlr-loc3",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "6",cardId = 1102004,lv = 15,bklv = 1,star = 1,mon = {id = 233,desc = "pt-2-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10207] = {
		[1] = {
			jlr = {cha = "pt-2",lvId = "7",cardId = 1101001,lv = 15,bklv = 2,star = 1,mon = {id = 207,desc = "pt-2-7-jlr-loc1",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "7",cardId = 1102015,lv = 15,bklv = 1,star = 1,mon = {id = 224,desc = "pt-2-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-2",lvId = "7",cardId = 1101003,lv = 15,bklv = 2,star = 1,mon = {id = 207,desc = "pt-2-7-jlr-loc2",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "7",cardId = 1102005,lv = 15,bklv = 1,star = 1,mon = {id = 218,desc = "pt-2-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-2",lvId = "7",cardId = 1101002,lv = 15,bklv = 2,star = 1,mon = {id = 211,desc = "pt-2-7-jlr-loc3",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "7",cardId = 1102004,lv = 15,bklv = 1,star = 1,mon = {id = 232,desc = "pt-2-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10208] = {
		[1] = {
			jlr = {cha = "pt-2",lvId = "8",cardId = 1101001,lv = 15,bklv = 2,star = 1,mon = {id = 209,desc = "pt-2-8-jlr-loc1",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "8",cardId = 1102015,lv = 15,bklv = 2,star = 1,mon = {id = 229,desc = "pt-2-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-2",lvId = "8",cardId = 1101003,lv = 15,bklv = 2,star = 1,mon = {id = 208,desc = "pt-2-8-jlr-loc2",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "8",cardId = 1102005,lv = 15,bklv = 2,star = 1,mon = {id = 228,desc = "pt-2-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-2",lvId = "8",cardId = 1101002,lv = 15,bklv = 2,star = 1,mon = {id = 212,desc = "pt-2-8-jlr-loc3",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "8",cardId = 1102004,lv = 15,bklv = 2,star = 1,mon = {id = 233,desc = "pt-2-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10209] = {
		[1] = {
			jlr = {cha = "pt-2",lvId = "9",cardId = 1101001,lv = 18,bklv = 2,star = 1,mon = {id = 207,desc = "pt-2-9-jlr-loc1",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "9",cardId = 1102015,lv = 18,bklv = 2,star = 1,mon = {id = 227,desc = "pt-2-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-2",lvId = "9",cardId = 1101003,lv = 18,bklv = 2,star = 1,mon = {id = 205,desc = "pt-2-9-jlr-loc2",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "9",cardId = 1102005,lv = 18,bklv = 2,star = 1,mon = {id = 226,desc = "pt-2-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-2",lvId = "9",cardId = 1101002,lv = 18,bklv = 2,star = 1,mon = {id = 210,desc = "pt-2-9-jlr-loc3",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",lvId = "9",cardId = 1102004,lv = 18,bklv = 2,star = 1,mon = {id = 231,desc = "pt-2-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10301] = {
		[1] = {
			jlr = {cha = "pt-3",lvId = "1",cardId = 1101001,lv = 21,bklv = 2,star = 1,mon = {id = 212,desc = "pt-3-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "1",cardId = 1102002,lv = 21,bklv = 2,star = 1,mon = {id = 233,desc = "pt-3-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-3",lvId = "1",cardId = 1101003,lv = 21,bklv = 2,star = 1,mon = {id = 208,desc = "pt-3-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "1",cardId = 1102005,lv = 21,bklv = 2,star = 1,mon = {id = 228,desc = "pt-3-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-3",lvId = "1",cardId = 1101002,lv = 21,bklv = 2,star = 1,mon = {id = 209,desc = "pt-3-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "1",cardId = 1102004,lv = 21,bklv = 2,star = 1,mon = {id = 229,desc = "pt-3-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10302] = {
		[1] = {
			jlr = {cha = "pt-3",lvId = "2",cardId = 1101001,lv = 22,bklv = 2,star = 1,mon = {id = 201,desc = "pt-3-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "2",cardId = 1102002,lv = 22,bklv = 2,star = 1,mon = {id = 217,desc = "pt-3-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-3",lvId = "2",cardId = 1101003,lv = 22,bklv = 2,star = 1,mon = {id = 203,desc = "pt-3-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "2",cardId = 1102005,lv = 22,bklv = 2,star = 1,mon = {id = 220,desc = "pt-3-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-3",lvId = "2",cardId = 1101002,lv = 22,bklv = 2,star = 1,mon = {id = 214,desc = "pt-3-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "2",cardId = 1102004,lv = 22,bklv = 2,star = 1,mon = {id = 235,desc = "pt-3-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10303] = {
		[1] = {
			jlr = {cha = "pt-3",lvId = "3",cardId = 1101001,lv = 23,bklv = 2,star = 1,mon = {id = 212,desc = "pt-3-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "3",cardId = 1102002,lv = 23,bklv = 2,star = 1,mon = {id = 233,desc = "pt-3-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-3",lvId = "3",cardId = 1101003,lv = 23,bklv = 2,star = 1,mon = {id = 208,desc = "pt-3-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "3",cardId = 1102005,lv = 23,bklv = 2,star = 1,mon = {id = 228,desc = "pt-3-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-3",lvId = "3",cardId = 1101002,lv = 23,bklv = 2,star = 1,mon = {id = 209,desc = "pt-3-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "3",cardId = 1102004,lv = 23,bklv = 2,star = 1,mon = {id = 229,desc = "pt-3-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10304] = {
		[1] = {
			jlr = {cha = "pt-3",lvId = "4",cardId = 1101001,lv = 24,bklv = 2,star = 1,mon = {id = 215,desc = "pt-3-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "4",cardId = 1102002,lv = 24,bklv = 2,star = 1,mon = {id = 236,desc = "pt-3-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-3",lvId = "4",cardId = 1101003,lv = 24,bklv = 2,star = 1,mon = {id = 201,desc = "pt-3-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "4",cardId = 1102005,lv = 24,bklv = 2,star = 1,mon = {id = 224,desc = "pt-3-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-3",lvId = "4",cardId = 1101002,lv = 24,bklv = 2,star = 1,mon = {id = 211,desc = "pt-3-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "4",cardId = 1102004,lv = 24,bklv = 2,star = 1,mon = {id = 232,desc = "pt-3-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10305] = {
		[1] = {
			jlr = {cha = "pt-3",lvId = "5",cardId = 1101001,lv = 24,bklv = 2,star = 1,mon = {id = 206,desc = "pt-3-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "5",cardId = 1102002,lv = 24,bklv = 2,star = 1,mon = {id = 222,desc = "pt-3-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-3",lvId = "5",cardId = 1101003,lv = 24,bklv = 2,star = 1,mon = {id = 203,desc = "pt-3-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "5",cardId = 1102005,lv = 24,bklv = 2,star = 1,mon = {id = 220,desc = "pt-3-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-3",lvId = "5",cardId = 1101002,lv = 24,bklv = 2,star = 1,mon = {id = 212,desc = "pt-3-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "5",cardId = 1102004,lv = 24,bklv = 2,star = 1,mon = {id = 233,desc = "pt-3-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10306] = {
		[1] = {
			jlr = {cha = "pt-3",lvId = "6",cardId = 1101001,lv = 25,bklv = 2,star = 1,mon = {id = 209,desc = "pt-3-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "6",cardId = 1102002,lv = 25,bklv = 2,star = 1,mon = {id = 229,desc = "pt-3-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-3",lvId = "6",cardId = 1101003,lv = 25,bklv = 2,star = 1,mon = {id = 208,desc = "pt-3-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "6",cardId = 1102005,lv = 25,bklv = 2,star = 1,mon = {id = 228,desc = "pt-3-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-3",lvId = "6",cardId = 1101002,lv = 25,bklv = 2,star = 1,mon = {id = 212,desc = "pt-3-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "6",cardId = 1102004,lv = 25,bklv = 2,star = 1,mon = {id = 233,desc = "pt-3-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10307] = {
		[1] = {
			jlr = {cha = "pt-3",lvId = "7",cardId = 1101001,lv = 25,bklv = 2,star = 1,mon = {id = 207,desc = "pt-3-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "7",cardId = 1102002,lv = 25,bklv = 2,star = 1,mon = {id = 224,desc = "pt-3-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-3",lvId = "7",cardId = 1101003,lv = 25,bklv = 2,star = 1,mon = {id = 207,desc = "pt-3-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "7",cardId = 1102005,lv = 25,bklv = 2,star = 1,mon = {id = 218,desc = "pt-3-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-3",lvId = "7",cardId = 1101002,lv = 25,bklv = 2,star = 1,mon = {id = 211,desc = "pt-3-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "7",cardId = 1102004,lv = 25,bklv = 2,star = 1,mon = {id = 232,desc = "pt-3-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10308] = {
		[1] = {
			jlr = {cha = "pt-3",lvId = "8",cardId = 1101001,lv = 26,bklv = 2,star = 1,mon = {id = 206,desc = "pt-3-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "8",cardId = 1102002,lv = 26,bklv = 2,star = 1,mon = {id = 222,desc = "pt-3-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-3",lvId = "8",cardId = 1101003,lv = 26,bklv = 2,star = 1,mon = {id = 205,desc = "pt-3-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "8",cardId = 1102005,lv = 26,bklv = 2,star = 1,mon = {id = 226,desc = "pt-3-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-3",lvId = "8",cardId = 1101002,lv = 26,bklv = 2,star = 1,mon = {id = 207,desc = "pt-3-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "8",cardId = 1102004,lv = 26,bklv = 2,star = 1,mon = {id = 225,desc = "pt-3-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10309] = {
		[1] = {
			jlr = {cha = "pt-3",lvId = "9",cardId = 1101001,lv = 26,bklv = 2,star = 1,mon = {id = 212,desc = "pt-3-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "9",cardId = 1102002,lv = 26,bklv = 2,star = 1,mon = {id = 233,desc = "pt-3-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-3",lvId = "9",cardId = 1101003,lv = 26,bklv = 2,star = 1,mon = {id = 208,desc = "pt-3-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "9",cardId = 1102005,lv = 26,bklv = 2,star = 1,mon = {id = 228,desc = "pt-3-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-3",lvId = "9",cardId = 1101002,lv = 26,bklv = 2,star = 1,mon = {id = 209,desc = "pt-3-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "9",cardId = 1102004,lv = 26,bklv = 2,star = 1,mon = {id = 229,desc = "pt-3-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10310] = {
		[1] = {
			jlr = {cha = "pt-3",lvId = "10",cardId = 1101001,lv = 27,bklv = 2,star = 1,mon = {id = 201,desc = "pt-3-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "10",cardId = 1102002,lv = 27,bklv = 2,star = 1,mon = {id = 217,desc = "pt-3-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-3",lvId = "10",cardId = 1101003,lv = 27,bklv = 2,star = 1,mon = {id = 203,desc = "pt-3-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "10",cardId = 1102005,lv = 27,bklv = 2,star = 1,mon = {id = 220,desc = "pt-3-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-3",lvId = "10",cardId = 1101002,lv = 27,bklv = 2,star = 1,mon = {id = 214,desc = "pt-3-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "10",cardId = 1102004,lv = 27,bklv = 2,star = 1,mon = {id = 235,desc = "pt-3-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10311] = {
		[1] = {
			jlr = {cha = "pt-3",lvId = "11",cardId = 1101001,lv = 27,bklv = 2,star = 1,mon = {id = 212,desc = "pt-3-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "11",cardId = 1102002,lv = 27,bklv = 2,star = 1,mon = {id = 233,desc = "pt-3-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-3",lvId = "11",cardId = 1101003,lv = 27,bklv = 2,star = 1,mon = {id = 208,desc = "pt-3-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "11",cardId = 1102005,lv = 27,bklv = 2,star = 1,mon = {id = 228,desc = "pt-3-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-3",lvId = "11",cardId = 1101002,lv = 27,bklv = 2,star = 1,mon = {id = 209,desc = "pt-3-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "11",cardId = 1102004,lv = 27,bklv = 2,star = 1,mon = {id = 229,desc = "pt-3-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10312] = {
		[1] = {
			jlr = {cha = "pt-3",lvId = "12",cardId = 1101001,lv = 28,bklv = 2,star = 1,mon = {id = 215,desc = "pt-3-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "12",cardId = 1102002,lv = 28,bklv = 2,star = 1,mon = {id = 236,desc = "pt-3-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-3",lvId = "12",cardId = 1101003,lv = 28,bklv = 2,star = 1,mon = {id = 201,desc = "pt-3-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "12",cardId = 1102005,lv = 28,bklv = 2,star = 1,mon = {id = 224,desc = "pt-3-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-3",lvId = "12",cardId = 1101002,lv = 28,bklv = 2,star = 1,mon = {id = 211,desc = "pt-3-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "12",cardId = 1102004,lv = 28,bklv = 2,star = 1,mon = {id = 232,desc = "pt-3-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10313] = {
		[1] = {
			jlr = {cha = "pt-3",lvId = "13",cardId = 1101001,lv = 28,bklv = 2,star = 1,mon = {id = 209,desc = "pt-3-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "13",cardId = 1102002,lv = 28,bklv = 2,star = 1,mon = {id = 229,desc = "pt-3-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-3",lvId = "13",cardId = 1101003,lv = 28,bklv = 2,star = 1,mon = {id = 208,desc = "pt-3-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "13",cardId = 1102005,lv = 28,bklv = 2,star = 1,mon = {id = 228,desc = "pt-3-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-3",lvId = "13",cardId = 1101002,lv = 28,bklv = 2,star = 1,mon = {id = 212,desc = "pt-3-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "13",cardId = 1102020,lv = 28,bklv = 2,star = 1,mon = {id = 233,desc = "pt-3-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10314] = {
		[1] = {
			jlr = {cha = "pt-3",lvId = "14",cardId = 1101001,lv = 29,bklv = 2,star = 1,mon = {id = 207,desc = "pt-3-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "14",cardId = 1102002,lv = 29,bklv = 2,star = 1,mon = {id = 224,desc = "pt-3-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-3",lvId = "14",cardId = 1101003,lv = 29,bklv = 2,star = 1,mon = {id = 207,desc = "pt-3-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "14",cardId = 1102005,lv = 29,bklv = 2,star = 1,mon = {id = 218,desc = "pt-3-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-3",lvId = "14",cardId = 1101002,lv = 29,bklv = 2,star = 1,mon = {id = 211,desc = "pt-3-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "14",cardId = 1102020,lv = 29,bklv = 2,star = 1,mon = {id = 232,desc = "pt-3-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10315] = {
		[1] = {
			jlr = {cha = "pt-3",lvId = "15",cardId = 1101001,lv = 30,bklv = 2,star = 1,mon = {id = 205,desc = "pt-3-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "15",cardId = 1102002,lv = 30,bklv = 2,star = 1,mon = {id = 216,desc = "pt-3-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-3",lvId = "15",cardId = 1101003,lv = 30,bklv = 2,star = 1,mon = {id = 204,desc = "pt-3-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "15",cardId = 1102005,lv = 30,bklv = 2,star = 1,mon = {id = 221,desc = "pt-3-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-3",lvId = "15",cardId = 1101002,lv = 30,bklv = 2,star = 1,mon = {id = 207,desc = "pt-3-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",lvId = "15",cardId = 1102020,lv = 30,bklv = 2,star = 1,mon = {id = 225,desc = "pt-3-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10401] = {
		[1] = {
			jlr = {cha = "pt-4",lvId = "1",cardId = 1101001,lv = 30,bklv = 3,star = 1,mon = {id = 212,desc = "pt-4-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "1",cardId = 1102002,lv = 30,bklv = 2,star = 1,mon = {id = 233,desc = "pt-4-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-4",lvId = "1",cardId = 1101003,lv = 30,bklv = 2,star = 1,mon = {id = 208,desc = "pt-4-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "1",cardId = 1102005,lv = 30,bklv = 2,star = 1,mon = {id = 228,desc = "pt-4-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-4",lvId = "1",cardId = 1101014,lv = 30,bklv = 2,star = 1,mon = {id = 213,desc = "pt-4-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "1",cardId = 1102020,lv = 30,bklv = 2,star = 1,mon = {id = 234,desc = "pt-4-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10402] = {
		[1] = {
			jlr = {cha = "pt-4",lvId = "2",cardId = 1101001,lv = 30,bklv = 3,star = 1,mon = {id = 201,desc = "pt-4-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "2",cardId = 1102002,lv = 30,bklv = 2,star = 1,mon = {id = 217,desc = "pt-4-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-4",lvId = "2",cardId = 1101003,lv = 30,bklv = 2,star = 1,mon = {id = 203,desc = "pt-4-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "2",cardId = 1102005,lv = 30,bklv = 2,star = 1,mon = {id = 220,desc = "pt-4-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-4",lvId = "2",cardId = 1101014,lv = 30,bklv = 3,star = 1,mon = {id = 214,desc = "pt-4-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "2",cardId = 1102020,lv = 30,bklv = 2,star = 1,mon = {id = 235,desc = "pt-4-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10403] = {
		[1] = {
			jlr = {cha = "pt-4",lvId = "3",cardId = 1101001,lv = 30,bklv = 3,star = 1,mon = {id = 212,desc = "pt-4-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "3",cardId = 1102002,lv = 30,bklv = 2,star = 1,mon = {id = 233,desc = "pt-4-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-4",lvId = "3",cardId = 1101003,lv = 30,bklv = 3,star = 1,mon = {id = 208,desc = "pt-4-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "3",cardId = 1102005,lv = 30,bklv = 2,star = 1,mon = {id = 228,desc = "pt-4-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-4",lvId = "3",cardId = 1101014,lv = 30,bklv = 3,star = 1,mon = {id = 209,desc = "pt-4-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "3",cardId = 1102020,lv = 30,bklv = 2,star = 1,mon = {id = 229,desc = "pt-4-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10404] = {
		[1] = {
			jlr = {cha = "pt-4",lvId = "4",cardId = 1101001,lv = 32,bklv = 3,star = 1,mon = {id = 215,desc = "pt-4-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "4",cardId = 1102002,lv = 32,bklv = 3,star = 1,mon = {id = 236,desc = "pt-4-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-4",lvId = "4",cardId = 1101003,lv = 32,bklv = 3,star = 1,mon = {id = 201,desc = "pt-4-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "4",cardId = 1102005,lv = 30,bklv = 2,star = 1,mon = {id = 224,desc = "pt-4-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-4",lvId = "4",cardId = 1101014,lv = 32,bklv = 3,star = 1,mon = {id = 211,desc = "pt-4-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "4",cardId = 1102020,lv = 30,bklv = 2,star = 1,mon = {id = 232,desc = "pt-4-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10405] = {
		[1] = {
			jlr = {cha = "pt-4",lvId = "5",cardId = 1101001,lv = 33,bklv = 3,star = 1,mon = {id = 206,desc = "pt-4-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "5",cardId = 1102002,lv = 33,bklv = 3,star = 1,mon = {id = 222,desc = "pt-4-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-4",lvId = "5",cardId = 1101003,lv = 33,bklv = 3,star = 1,mon = {id = 203,desc = "pt-4-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "5",cardId = 1102005,lv = 30,bklv = 2,star = 1,mon = {id = 220,desc = "pt-4-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-4",lvId = "5",cardId = 1101014,lv = 33,bklv = 3,star = 1,mon = {id = 212,desc = "pt-4-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "5",cardId = 1102020,lv = 30,bklv = 2,star = 1,mon = {id = 233,desc = "pt-4-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10406] = {
		[1] = {
			jlr = {cha = "pt-4",lvId = "6",cardId = 1101001,lv = 33,bklv = 3,star = 1,mon = {id = 209,desc = "pt-4-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "6",cardId = 1102002,lv = 33,bklv = 3,star = 1,mon = {id = 229,desc = "pt-4-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-4",lvId = "6",cardId = 1101003,lv = 33,bklv = 3,star = 1,mon = {id = 208,desc = "pt-4-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "6",cardId = 1102005,lv = 30,bklv = 3,star = 1,mon = {id = 228,desc = "pt-4-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-4",lvId = "6",cardId = 1101014,lv = 33,bklv = 3,star = 1,mon = {id = 212,desc = "pt-4-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "6",cardId = 1102020,lv = 30,bklv = 2,star = 1,mon = {id = 233,desc = "pt-4-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10407] = {
		[1] = {
			jlr = {cha = "pt-4",lvId = "7",cardId = 1101001,lv = 34,bklv = 3,star = 1,mon = {id = 207,desc = "pt-4-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "7",cardId = 1102002,lv = 34,bklv = 3,star = 1,mon = {id = 224,desc = "pt-4-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-4",lvId = "7",cardId = 1101003,lv = 34,bklv = 3,star = 1,mon = {id = 207,desc = "pt-4-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "7",cardId = 1102005,lv = 34,bklv = 3,star = 1,mon = {id = 218,desc = "pt-4-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-4",lvId = "7",cardId = 1101014,lv = 34,bklv = 3,star = 1,mon = {id = 211,desc = "pt-4-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "7",cardId = 1102020,lv = 30,bklv = 2,star = 1,mon = {id = 232,desc = "pt-4-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10408] = {
		[1] = {
			jlr = {cha = "pt-4",lvId = "8",cardId = 1101001,lv = 35,bklv = 3,star = 1,mon = {id = 207,desc = "pt-4-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "8",cardId = 1102002,lv = 35,bklv = 3,star = 1,mon = {id = 227,desc = "pt-4-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-4",lvId = "8",cardId = 1101003,lv = 35,bklv = 3,star = 1,mon = {id = 205,desc = "pt-4-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "8",cardId = 1102005,lv = 35,bklv = 3,star = 1,mon = {id = 226,desc = "pt-4-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-4",lvId = "8",cardId = 1101014,lv = 35,bklv = 3,star = 1,mon = {id = 210,desc = "pt-4-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "8",cardId = 1102020,lv = 30,bklv = 2,star = 1,mon = {id = 231,desc = "pt-4-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10409] = {
		[1] = {
			jlr = {cha = "pt-4",lvId = "9",cardId = 1101001,lv = 35,bklv = 3,star = 1,mon = {id = 212,desc = "pt-4-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "9",cardId = 1102002,lv = 35,bklv = 3,star = 1,mon = {id = 233,desc = "pt-4-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-4",lvId = "9",cardId = 1101003,lv = 35,bklv = 3,star = 1,mon = {id = 208,desc = "pt-4-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "9",cardId = 1102005,lv = 35,bklv = 3,star = 1,mon = {id = 228,desc = "pt-4-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-4",lvId = "9",cardId = 1101014,lv = 35,bklv = 3,star = 1,mon = {id = 209,desc = "pt-4-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "9",cardId = 1102020,lv = 35,bklv = 3,star = 1,mon = {id = 229,desc = "pt-4-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10410] = {
		[1] = {
			jlr = {cha = "pt-4",lvId = "10",cardId = 1101001,lv = 36,bklv = 3,star = 1,mon = {id = 201,desc = "pt-4-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "10",cardId = 1102002,lv = 36,bklv = 3,star = 1,mon = {id = 217,desc = "pt-4-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-4",lvId = "10",cardId = 1101003,lv = 36,bklv = 3,star = 1,mon = {id = 203,desc = "pt-4-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "10",cardId = 1102005,lv = 36,bklv = 3,star = 1,mon = {id = 220,desc = "pt-4-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-4",lvId = "10",cardId = 1101014,lv = 36,bklv = 3,star = 1,mon = {id = 214,desc = "pt-4-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "10",cardId = 1102020,lv = 36,bklv = 3,star = 1,mon = {id = 235,desc = "pt-4-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10411] = {
		[1] = {
			jlr = {cha = "pt-4",lvId = "11",cardId = 1101001,lv = 36,bklv = 3,star = 1,mon = {id = 212,desc = "pt-4-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "11",cardId = 1102002,lv = 36,bklv = 3,star = 1,mon = {id = 233,desc = "pt-4-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-4",lvId = "11",cardId = 1101003,lv = 36,bklv = 3,star = 1,mon = {id = 208,desc = "pt-4-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "11",cardId = 1102005,lv = 36,bklv = 3,star = 1,mon = {id = 228,desc = "pt-4-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-4",lvId = "11",cardId = 1101014,lv = 36,bklv = 3,star = 1,mon = {id = 209,desc = "pt-4-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "11",cardId = 1102020,lv = 36,bklv = 3,star = 1,mon = {id = 229,desc = "pt-4-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10412] = {
		[1] = {
			jlr = {cha = "pt-4",lvId = "12",cardId = 1101001,lv = 37,bklv = 3,star = 1,mon = {id = 215,desc = "pt-4-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "12",cardId = 1102002,lv = 37,bklv = 3,star = 1,mon = {id = 236,desc = "pt-4-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-4",lvId = "12",cardId = 1101003,lv = 37,bklv = 3,star = 1,mon = {id = 201,desc = "pt-4-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "12",cardId = 1102005,lv = 37,bklv = 3,star = 1,mon = {id = 224,desc = "pt-4-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-4",lvId = "12",cardId = 1101014,lv = 37,bklv = 3,star = 1,mon = {id = 211,desc = "pt-4-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "12",cardId = 1102020,lv = 37,bklv = 3,star = 1,mon = {id = 232,desc = "pt-4-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10413] = {
		[1] = {
			jlr = {cha = "pt-4",lvId = "13",cardId = 1101001,lv = 38,bklv = 3,star = 1,mon = {id = 209,desc = "pt-4-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "13",cardId = 1102002,lv = 38,bklv = 3,star = 1,mon = {id = 229,desc = "pt-4-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-4",lvId = "13",cardId = 1101003,lv = 38,bklv = 3,star = 1,mon = {id = 208,desc = "pt-4-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "13",cardId = 1102005,lv = 38,bklv = 3,star = 1,mon = {id = 228,desc = "pt-4-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-4",lvId = "13",cardId = 1101014,lv = 38,bklv = 3,star = 1,mon = {id = 212,desc = "pt-4-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "13",cardId = 1102020,lv = 38,bklv = 3,star = 1,mon = {id = 233,desc = "pt-4-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10414] = {
		[1] = {
			jlr = {cha = "pt-4",lvId = "14",cardId = 1101001,lv = 39,bklv = 3,star = 1,mon = {id = 207,desc = "pt-4-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "14",cardId = 1102002,lv = 39,bklv = 3,star = 1,mon = {id = 224,desc = "pt-4-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-4",lvId = "14",cardId = 1101003,lv = 39,bklv = 3,star = 1,mon = {id = 207,desc = "pt-4-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "14",cardId = 1102005,lv = 39,bklv = 3,star = 1,mon = {id = 218,desc = "pt-4-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-4",lvId = "14",cardId = 1101014,lv = 39,bklv = 3,star = 1,mon = {id = 211,desc = "pt-4-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "14",cardId = 1102020,lv = 39,bklv = 3,star = 1,mon = {id = 232,desc = "pt-4-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10415] = {
		[1] = {
			jlr = {cha = "pt-4",lvId = "15",cardId = 1101001,lv = 40,bklv = 3,star = 1,mon = {id = 205,desc = "pt-4-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "15",cardId = 1102002,lv = 40,bklv = 3,star = 1,mon = {id = 216,desc = "pt-4-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-4",lvId = "15",cardId = 1101003,lv = 40,bklv = 3,star = 1,mon = {id = 204,desc = "pt-4-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "15",cardId = 1102005,lv = 40,bklv = 3,star = 1,mon = {id = 221,desc = "pt-4-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-4",lvId = "15",cardId = 1101014,lv = 40,bklv = 3,star = 1,mon = {id = 207,desc = "pt-4-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",lvId = "15",cardId = 1102020,lv = 40,bklv = 3,star = 1,mon = {id = 225,desc = "pt-4-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10501] = {
		[1] = {
			jlr = {cha = "pt-5",lvId = "1",cardId = 1101007,lv = 40,bklv = 4,star = 1,mon = {id = 212,desc = "pt-5-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "1",cardId = 1102002,lv = 40,bklv = 3,star = 1,mon = {id = 233,desc = "pt-5-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-5",lvId = "1",cardId = 1101003,lv = 40,bklv = 3,star = 1,mon = {id = 208,desc = "pt-5-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "1",cardId = 1102005,lv = 40,bklv = 3,star = 1,mon = {id = 228,desc = "pt-5-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-5",lvId = "1",cardId = 1101014,lv = 40,bklv = 3,star = 1,mon = {id = 209,desc = "pt-5-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "1",cardId = 1102020,lv = 40,bklv = 3,star = 1,mon = {id = 229,desc = "pt-5-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10502] = {
		[1] = {
			jlr = {cha = "pt-5",lvId = "2",cardId = 1101007,lv = 40,bklv = 4,star = 1,mon = {id = 201,desc = "pt-5-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "2",cardId = 1102002,lv = 40,bklv = 3,star = 1,mon = {id = 217,desc = "pt-5-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-5",lvId = "2",cardId = 1101003,lv = 40,bklv = 4,star = 1,mon = {id = 203,desc = "pt-5-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "2",cardId = 1102005,lv = 40,bklv = 3,star = 1,mon = {id = 220,desc = "pt-5-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-5",lvId = "2",cardId = 1101014,lv = 40,bklv = 3,star = 1,mon = {id = 214,desc = "pt-5-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "2",cardId = 1102020,lv = 40,bklv = 3,star = 1,mon = {id = 235,desc = "pt-5-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10503] = {
		[1] = {
			jlr = {cha = "pt-5",lvId = "3",cardId = 1101007,lv = 40,bklv = 4,star = 1,mon = {id = 212,desc = "pt-5-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "3",cardId = 1102002,lv = 40,bklv = 3,star = 1,mon = {id = 233,desc = "pt-5-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-5",lvId = "3",cardId = 1101003,lv = 40,bklv = 4,star = 1,mon = {id = 208,desc = "pt-5-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "3",cardId = 1102005,lv = 40,bklv = 3,star = 1,mon = {id = 228,desc = "pt-5-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-5",lvId = "3",cardId = 1101014,lv = 40,bklv = 4,star = 1,mon = {id = 209,desc = "pt-5-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "3",cardId = 1102020,lv = 40,bklv = 3,star = 1,mon = {id = 229,desc = "pt-5-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10504] = {
		[1] = {
			jlr = {cha = "pt-5",lvId = "4",cardId = 1101007,lv = 42,bklv = 4,star = 1,mon = {id = 215,desc = "pt-5-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "4",cardId = 1102002,lv = 40,bklv = 3,star = 1,mon = {id = 236,desc = "pt-5-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-5",lvId = "4",cardId = 1101003,lv = 42,bklv = 4,star = 1,mon = {id = 201,desc = "pt-5-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "4",cardId = 1102005,lv = 40,bklv = 3,star = 1,mon = {id = 224,desc = "pt-5-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-5",lvId = "4",cardId = 1101014,lv = 42,bklv = 4,star = 1,mon = {id = 211,desc = "pt-5-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "4",cardId = 1102020,lv = 40,bklv = 3,star = 1,mon = {id = 232,desc = "pt-5-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10505] = {
		[1] = {
			jlr = {cha = "pt-5",lvId = "5",cardId = 1101007,lv = 43,bklv = 4,star = 1,mon = {id = 206,desc = "pt-5-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "5",cardId = 1102002,lv = 43,bklv = 4,star = 1,mon = {id = 222,desc = "pt-5-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-5",lvId = "5",cardId = 1101003,lv = 43,bklv = 4,star = 1,mon = {id = 203,desc = "pt-5-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "5",cardId = 1102005,lv = 40,bklv = 3,star = 1,mon = {id = 220,desc = "pt-5-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-5",lvId = "5",cardId = 1101014,lv = 43,bklv = 4,star = 1,mon = {id = 212,desc = "pt-5-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "5",cardId = 1102020,lv = 40,bklv = 3,star = 1,mon = {id = 233,desc = "pt-5-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10506] = {
		[1] = {
			jlr = {cha = "pt-5",lvId = "6",cardId = 1101007,lv = 44,bklv = 4,star = 1,mon = {id = 209,desc = "pt-5-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "6",cardId = 1102002,lv = 44,bklv = 4,star = 1,mon = {id = 229,desc = "pt-5-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-5",lvId = "6",cardId = 1101003,lv = 44,bklv = 4,star = 1,mon = {id = 208,desc = "pt-5-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "6",cardId = 1102005,lv = 40,bklv = 3,star = 1,mon = {id = 228,desc = "pt-5-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-5",lvId = "6",cardId = 1101014,lv = 44,bklv = 4,star = 1,mon = {id = 212,desc = "pt-5-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "6",cardId = 1102020,lv = 40,bklv = 3,star = 1,mon = {id = 233,desc = "pt-5-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10507] = {
		[1] = {
			jlr = {cha = "pt-5",lvId = "7",cardId = 1101007,lv = 44,bklv = 4,star = 1,mon = {id = 207,desc = "pt-5-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "7",cardId = 1102002,lv = 44,bklv = 4,star = 1,mon = {id = 224,desc = "pt-5-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-5",lvId = "7",cardId = 1101003,lv = 44,bklv = 4,star = 1,mon = {id = 207,desc = "pt-5-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "7",cardId = 1102005,lv = 44,bklv = 4,star = 1,mon = {id = 218,desc = "pt-5-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-5",lvId = "7",cardId = 1101014,lv = 44,bklv = 4,star = 1,mon = {id = 211,desc = "pt-5-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "7",cardId = 1102020,lv = 40,bklv = 3,star = 1,mon = {id = 232,desc = "pt-5-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10508] = {
		[1] = {
			jlr = {cha = "pt-5",lvId = "8",cardId = 1101007,lv = 44,bklv = 4,star = 1,mon = {id = 206,desc = "pt-5-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "8",cardId = 1102002,lv = 44,bklv = 4,star = 1,mon = {id = 222,desc = "pt-5-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-5",lvId = "8",cardId = 1101003,lv = 44,bklv = 4,star = 1,mon = {id = 205,desc = "pt-5-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "8",cardId = 1102005,lv = 44,bklv = 4,star = 1,mon = {id = 226,desc = "pt-5-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-5",lvId = "8",cardId = 1101014,lv = 44,bklv = 4,star = 1,mon = {id = 207,desc = "pt-5-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "8",cardId = 1102020,lv = 40,bklv = 3,star = 1,mon = {id = 225,desc = "pt-5-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10509] = {
		[1] = {
			jlr = {cha = "pt-5",lvId = "9",cardId = 1101007,lv = 45,bklv = 4,star = 1,mon = {id = 212,desc = "pt-5-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "9",cardId = 1102002,lv = 45,bklv = 4,star = 1,mon = {id = 233,desc = "pt-5-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-5",lvId = "9",cardId = 1101003,lv = 45,bklv = 4,star = 1,mon = {id = 208,desc = "pt-5-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "9",cardId = 1102005,lv = 45,bklv = 4,star = 1,mon = {id = 228,desc = "pt-5-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-5",lvId = "9",cardId = 1101014,lv = 45,bklv = 4,star = 1,mon = {id = 209,desc = "pt-5-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "9",cardId = 1102020,lv = 45,bklv = 4,star = 1,mon = {id = 229,desc = "pt-5-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10510] = {
		[1] = {
			jlr = {cha = "pt-5",lvId = "10",cardId = 1101007,lv = 46,bklv = 4,star = 1,mon = {id = 201,desc = "pt-5-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "10",cardId = 1102002,lv = 46,bklv = 4,star = 1,mon = {id = 217,desc = "pt-5-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-5",lvId = "10",cardId = 1101003,lv = 46,bklv = 4,star = 1,mon = {id = 203,desc = "pt-5-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "10",cardId = 1102005,lv = 46,bklv = 4,star = 1,mon = {id = 220,desc = "pt-5-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-5",lvId = "10",cardId = 1101014,lv = 46,bklv = 4,star = 1,mon = {id = 214,desc = "pt-5-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "10",cardId = 1102020,lv = 46,bklv = 4,star = 1,mon = {id = 235,desc = "pt-5-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10511] = {
		[1] = {
			jlr = {cha = "pt-5",lvId = "11",cardId = 1101007,lv = 46,bklv = 4,star = 1,mon = {id = 212,desc = "pt-5-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "11",cardId = 1102002,lv = 46,bklv = 4,star = 1,mon = {id = 233,desc = "pt-5-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-5",lvId = "11",cardId = 1101003,lv = 46,bklv = 4,star = 1,mon = {id = 208,desc = "pt-5-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "11",cardId = 1102005,lv = 46,bklv = 4,star = 1,mon = {id = 228,desc = "pt-5-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-5",lvId = "11",cardId = 1101014,lv = 46,bklv = 4,star = 1,mon = {id = 209,desc = "pt-5-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "11",cardId = 1102020,lv = 46,bklv = 4,star = 1,mon = {id = 229,desc = "pt-5-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10512] = {
		[1] = {
			jlr = {cha = "pt-5",lvId = "12",cardId = 1101007,lv = 47,bklv = 4,star = 1,mon = {id = 215,desc = "pt-5-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "12",cardId = 1102002,lv = 47,bklv = 4,star = 1,mon = {id = 236,desc = "pt-5-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-5",lvId = "12",cardId = 1101003,lv = 47,bklv = 4,star = 1,mon = {id = 201,desc = "pt-5-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "12",cardId = 1102005,lv = 47,bklv = 4,star = 1,mon = {id = 224,desc = "pt-5-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-5",lvId = "12",cardId = 1101014,lv = 47,bklv = 4,star = 1,mon = {id = 211,desc = "pt-5-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "12",cardId = 1102020,lv = 47,bklv = 4,star = 1,mon = {id = 232,desc = "pt-5-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10513] = {
		[1] = {
			jlr = {cha = "pt-5",lvId = "13",cardId = 1101007,lv = 48,bklv = 4,star = 1,mon = {id = 209,desc = "pt-5-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "13",cardId = 1102002,lv = 48,bklv = 4,star = 1,mon = {id = 229,desc = "pt-5-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-5",lvId = "13",cardId = 1101003,lv = 48,bklv = 4,star = 1,mon = {id = 208,desc = "pt-5-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "13",cardId = 1102005,lv = 48,bklv = 4,star = 1,mon = {id = 228,desc = "pt-5-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-5",lvId = "13",cardId = 1101014,lv = 48,bklv = 4,star = 1,mon = {id = 212,desc = "pt-5-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "13",cardId = 1102020,lv = 48,bklv = 4,star = 1,mon = {id = 233,desc = "pt-5-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10514] = {
		[1] = {
			jlr = {cha = "pt-5",lvId = "14",cardId = 1101007,lv = 49,bklv = 4,star = 1,mon = {id = 207,desc = "pt-5-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "14",cardId = 1102002,lv = 49,bklv = 4,star = 1,mon = {id = 224,desc = "pt-5-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-5",lvId = "14",cardId = 1101003,lv = 49,bklv = 4,star = 1,mon = {id = 207,desc = "pt-5-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "14",cardId = 1102005,lv = 49,bklv = 4,star = 1,mon = {id = 218,desc = "pt-5-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-5",lvId = "14",cardId = 1101014,lv = 49,bklv = 4,star = 1,mon = {id = 211,desc = "pt-5-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "14",cardId = 1102020,lv = 49,bklv = 4,star = 1,mon = {id = 232,desc = "pt-5-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10515] = {
		[1] = {
			jlr = {cha = "pt-5",lvId = "15",cardId = 1101007,lv = 50,bklv = 4,star = 1,mon = {id = 205,desc = "pt-5-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "15",cardId = 1102002,lv = 50,bklv = 4,star = 1,mon = {id = 216,desc = "pt-5-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-5",lvId = "15",cardId = 1101003,lv = 50,bklv = 4,star = 1,mon = {id = 204,desc = "pt-5-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "15",cardId = 1102005,lv = 50,bklv = 4,star = 1,mon = {id = 221,desc = "pt-5-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-5",lvId = "15",cardId = 1101014,lv = 50,bklv = 4,star = 1,mon = {id = 207,desc = "pt-5-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",lvId = "15",cardId = 1102020,lv = 50,bklv = 4,star = 1,mon = {id = 225,desc = "pt-5-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10601] = {
		[1] = {
			jlr = {cha = "pt-6",lvId = "1",cardId = 1101007,lv = 50,bklv = 4,star = 2,mon = {id = 212,desc = "pt-6-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "1",cardId = 1102012,lv = 50,bklv = 4,star = 2,mon = {id = 233,desc = "pt-6-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-6",lvId = "1",cardId = 1101003,lv = 50,bklv = 4,star = 2,mon = {id = 208,desc = "pt-6-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "1",cardId = 1102005,lv = 50,bklv = 4,star = 2,mon = {id = 228,desc = "pt-6-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-6",lvId = "1",cardId = 1101014,lv = 50,bklv = 4,star = 2,mon = {id = 213,desc = "pt-6-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "1",cardId = 1102020,lv = 50,bklv = 4,star = 2,mon = {id = 234,desc = "pt-6-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10602] = {
		[1] = {
			jlr = {cha = "pt-6",lvId = "2",cardId = 1101007,lv = 50,bklv = 5,star = 2,mon = {id = 201,desc = "pt-6-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "2",cardId = 1102012,lv = 50,bklv = 4,star = 2,mon = {id = 217,desc = "pt-6-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-6",lvId = "2",cardId = 1101003,lv = 50,bklv = 4,star = 2,mon = {id = 203,desc = "pt-6-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "2",cardId = 1102005,lv = 50,bklv = 4,star = 2,mon = {id = 220,desc = "pt-6-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-6",lvId = "2",cardId = 1101014,lv = 50,bklv = 4,star = 2,mon = {id = 214,desc = "pt-6-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "2",cardId = 1102020,lv = 50,bklv = 4,star = 2,mon = {id = 235,desc = "pt-6-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10603] = {
		[1] = {
			jlr = {cha = "pt-6",lvId = "3",cardId = 1101007,lv = 50,bklv = 5,star = 2,mon = {id = 212,desc = "pt-6-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "3",cardId = 1102012,lv = 50,bklv = 4,star = 2,mon = {id = 233,desc = "pt-6-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-6",lvId = "3",cardId = 1101003,lv = 50,bklv = 5,star = 2,mon = {id = 208,desc = "pt-6-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "3",cardId = 1102005,lv = 50,bklv = 4,star = 2,mon = {id = 228,desc = "pt-6-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-6",lvId = "3",cardId = 1101014,lv = 50,bklv = 4,star = 2,mon = {id = 209,desc = "pt-6-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "3",cardId = 1102020,lv = 50,bklv = 4,star = 2,mon = {id = 229,desc = "pt-6-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10604] = {
		[1] = {
			jlr = {cha = "pt-6",lvId = "4",cardId = 1101007,lv = 50,bklv = 5,star = 2,mon = {id = 215,desc = "pt-6-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "4",cardId = 1102012,lv = 50,bklv = 4,star = 2,mon = {id = 236,desc = "pt-6-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-6",lvId = "4",cardId = 1101003,lv = 50,bklv = 5,star = 2,mon = {id = 201,desc = "pt-6-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "4",cardId = 1102005,lv = 50,bklv = 4,star = 2,mon = {id = 224,desc = "pt-6-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-6",lvId = "4",cardId = 1101014,lv = 50,bklv = 5,star = 2,mon = {id = 211,desc = "pt-6-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "4",cardId = 1102020,lv = 50,bklv = 4,star = 2,mon = {id = 232,desc = "pt-6-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10605] = {
		[1] = {
			jlr = {cha = "pt-6",lvId = "5",cardId = 1101007,lv = 52,bklv = 5,star = 2,mon = {id = 206,desc = "pt-6-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "5",cardId = 1102012,lv = 50,bklv = 4,star = 2,mon = {id = 222,desc = "pt-6-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-6",lvId = "5",cardId = 1101003,lv = 52,bklv = 5,star = 2,mon = {id = 203,desc = "pt-6-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "5",cardId = 1102005,lv = 50,bklv = 4,star = 2,mon = {id = 220,desc = "pt-6-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-6",lvId = "5",cardId = 1101014,lv = 52,bklv = 5,star = 2,mon = {id = 212,desc = "pt-6-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "5",cardId = 1102020,lv = 50,bklv = 4,star = 2,mon = {id = 233,desc = "pt-6-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10606] = {
		[1] = {
			jlr = {cha = "pt-6",lvId = "6",cardId = 1101007,lv = 52,bklv = 5,star = 2,mon = {id = 209,desc = "pt-6-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "6",cardId = 1102012,lv = 52,bklv = 5,star = 2,mon = {id = 229,desc = "pt-6-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-6",lvId = "6",cardId = 1101003,lv = 52,bklv = 5,star = 2,mon = {id = 208,desc = "pt-6-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "6",cardId = 1102005,lv = 50,bklv = 4,star = 2,mon = {id = 228,desc = "pt-6-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-6",lvId = "6",cardId = 1101014,lv = 52,bklv = 5,star = 2,mon = {id = 212,desc = "pt-6-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "6",cardId = 1102020,lv = 50,bklv = 4,star = 2,mon = {id = 233,desc = "pt-6-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10607] = {
		[1] = {
			jlr = {cha = "pt-6",lvId = "7",cardId = 1101007,lv = 54,bklv = 5,star = 2,mon = {id = 207,desc = "pt-6-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "7",cardId = 1102012,lv = 54,bklv = 5,star = 2,mon = {id = 224,desc = "pt-6-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-6",lvId = "7",cardId = 1101003,lv = 54,bklv = 5,star = 2,mon = {id = 207,desc = "pt-6-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "7",cardId = 1102005,lv = 50,bklv = 4,star = 2,mon = {id = 218,desc = "pt-6-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-6",lvId = "7",cardId = 1101014,lv = 54,bklv = 5,star = 2,mon = {id = 211,desc = "pt-6-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "7",cardId = 1102020,lv = 50,bklv = 4,star = 2,mon = {id = 232,desc = "pt-6-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10608] = {
		[1] = {
			jlr = {cha = "pt-6",lvId = "8",cardId = 1101007,lv = 54,bklv = 5,star = 2,mon = {id = 207,desc = "pt-6-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "8",cardId = 1102012,lv = 54,bklv = 5,star = 2,mon = {id = 227,desc = "pt-6-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-6",lvId = "8",cardId = 1101003,lv = 54,bklv = 5,star = 2,mon = {id = 205,desc = "pt-6-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "8",cardId = 1102005,lv = 50,bklv = 4,star = 2,mon = {id = 226,desc = "pt-6-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-6",lvId = "8",cardId = 1101014,lv = 54,bklv = 5,star = 2,mon = {id = 210,desc = "pt-6-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "8",cardId = 1102020,lv = 54,bklv = 5,star = 2,mon = {id = 231,desc = "pt-6-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10609] = {
		[1] = {
			jlr = {cha = "pt-6",lvId = "9",cardId = 1101007,lv = 55,bklv = 5,star = 2,mon = {id = 212,desc = "pt-6-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "9",cardId = 1102012,lv = 55,bklv = 5,star = 2,mon = {id = 233,desc = "pt-6-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-6",lvId = "9",cardId = 1101003,lv = 55,bklv = 5,star = 2,mon = {id = 208,desc = "pt-6-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "9",cardId = 1102005,lv = 50,bklv = 4,star = 2,mon = {id = 228,desc = "pt-6-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-6",lvId = "9",cardId = 1101014,lv = 55,bklv = 5,star = 2,mon = {id = 209,desc = "pt-6-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "9",cardId = 1102020,lv = 55,bklv = 5,star = 2,mon = {id = 229,desc = "pt-6-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10610] = {
		[1] = {
			jlr = {cha = "pt-6",lvId = "10",cardId = 1101007,lv = 55,bklv = 5,star = 2,mon = {id = 201,desc = "pt-6-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "10",cardId = 1102012,lv = 55,bklv = 5,star = 2,mon = {id = 217,desc = "pt-6-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-6",lvId = "10",cardId = 1101003,lv = 55,bklv = 5,star = 2,mon = {id = 203,desc = "pt-6-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "10",cardId = 1102005,lv = 55,bklv = 5,star = 2,mon = {id = 220,desc = "pt-6-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-6",lvId = "10",cardId = 1101014,lv = 55,bklv = 5,star = 2,mon = {id = 214,desc = "pt-6-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "10",cardId = 1102020,lv = 55,bklv = 5,star = 2,mon = {id = 235,desc = "pt-6-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10611] = {
		[1] = {
			jlr = {cha = "pt-6",lvId = "11",cardId = 1101007,lv = 56,bklv = 5,star = 2,mon = {id = 212,desc = "pt-6-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "11",cardId = 1102012,lv = 56,bklv = 5,star = 2,mon = {id = 233,desc = "pt-6-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-6",lvId = "11",cardId = 1101003,lv = 56,bklv = 5,star = 2,mon = {id = 208,desc = "pt-6-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "11",cardId = 1102005,lv = 56,bklv = 5,star = 2,mon = {id = 228,desc = "pt-6-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-6",lvId = "11",cardId = 1101014,lv = 56,bklv = 5,star = 2,mon = {id = 209,desc = "pt-6-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "11",cardId = 1102020,lv = 56,bklv = 5,star = 2,mon = {id = 229,desc = "pt-6-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10612] = {
		[1] = {
			jlr = {cha = "pt-6",lvId = "12",cardId = 1101007,lv = 57,bklv = 5,star = 2,mon = {id = 215,desc = "pt-6-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "12",cardId = 1102012,lv = 57,bklv = 5,star = 2,mon = {id = 236,desc = "pt-6-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-6",lvId = "12",cardId = 1101003,lv = 57,bklv = 5,star = 2,mon = {id = 201,desc = "pt-6-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "12",cardId = 1102005,lv = 57,bklv = 5,star = 2,mon = {id = 224,desc = "pt-6-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-6",lvId = "12",cardId = 1101014,lv = 57,bklv = 5,star = 2,mon = {id = 211,desc = "pt-6-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "12",cardId = 1102020,lv = 57,bklv = 5,star = 2,mon = {id = 232,desc = "pt-6-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10613] = {
		[1] = {
			jlr = {cha = "pt-6",lvId = "13",cardId = 1101007,lv = 58,bklv = 5,star = 2,mon = {id = 209,desc = "pt-6-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "13",cardId = 1102012,lv = 58,bklv = 5,star = 2,mon = {id = 229,desc = "pt-6-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-6",lvId = "13",cardId = 1101003,lv = 58,bklv = 5,star = 2,mon = {id = 208,desc = "pt-6-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "13",cardId = 1102005,lv = 58,bklv = 5,star = 2,mon = {id = 228,desc = "pt-6-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-6",lvId = "13",cardId = 1101014,lv = 58,bklv = 5,star = 2,mon = {id = 212,desc = "pt-6-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "13",cardId = 1102020,lv = 58,bklv = 5,star = 2,mon = {id = 233,desc = "pt-6-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10614] = {
		[1] = {
			jlr = {cha = "pt-6",lvId = "14",cardId = 1101007,lv = 59,bklv = 5,star = 2,mon = {id = 207,desc = "pt-6-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "14",cardId = 1102012,lv = 59,bklv = 5,star = 2,mon = {id = 224,desc = "pt-6-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-6",lvId = "14",cardId = 1101003,lv = 59,bklv = 5,star = 2,mon = {id = 207,desc = "pt-6-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "14",cardId = 1102005,lv = 59,bklv = 5,star = 2,mon = {id = 218,desc = "pt-6-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-6",lvId = "14",cardId = 1101014,lv = 59,bklv = 5,star = 2,mon = {id = 211,desc = "pt-6-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "14",cardId = 1102020,lv = 59,bklv = 5,star = 2,mon = {id = 232,desc = "pt-6-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10615] = {
		[1] = {
			jlr = {cha = "pt-6",lvId = "15",cardId = 1101007,lv = 60,bklv = 5,star = 2,mon = {id = 205,desc = "pt-6-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "15",cardId = 1102012,lv = 60,bklv = 5,star = 2,mon = {id = 216,desc = "pt-6-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-6",lvId = "15",cardId = 1101003,lv = 60,bklv = 5,star = 2,mon = {id = 204,desc = "pt-6-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "15",cardId = 1102005,lv = 60,bklv = 5,star = 2,mon = {id = 221,desc = "pt-6-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-6",lvId = "15",cardId = 1101014,lv = 60,bklv = 5,star = 2,mon = {id = 207,desc = "pt-6-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",lvId = "15",cardId = 1102020,lv = 60,bklv = 5,star = 2,mon = {id = 225,desc = "pt-6-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20101] = {
		[1] = {
			jlr = {cha = "kn-1",lvId = "1",cardId = 1101001,lv = 1,bklv = 1,star = 1,mon = {id = 212,desc = "kn-1-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "1",cardId = 1102015,lv = 1,bklv = 1,star = 1,mon = {id = 318,desc = "kn-1-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-1",lvId = "1",cardId = 1101003,lv = 1,bklv = 1,star = 1,mon = {id = 208,desc = "kn-1-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "1",cardId = 1102005,lv = 1,bklv = 1,star = 1,mon = {id = 313,desc = "kn-1-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-1",lvId = "1",cardId = 1101002,lv = 1,bklv = 1,star = 1,mon = {id = 209,desc = "kn-1-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "1",cardId = 1102004,lv = 1,bklv = 1,star = 1,mon = {id = 314,desc = "kn-1-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20102] = {
		[1] = {
			jlr = {cha = "kn-1",lvId = "2",cardId = 1101001,lv = 5,bklv = 1,star = 1,mon = {id = 201,desc = "kn-1-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "2",cardId = 1102015,lv = 5,bklv = 1,star = 1,mon = {id = 302,desc = "kn-1-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-1",lvId = "2",cardId = 1101003,lv = 5,bklv = 1,star = 1,mon = {id = 203,desc = "kn-1-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "2",cardId = 1102005,lv = 5,bklv = 1,star = 1,mon = {id = 305,desc = "kn-1-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-1",lvId = "2",cardId = 1101002,lv = 5,bklv = 1,star = 1,mon = {id = 214,desc = "kn-1-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "2",cardId = 1102004,lv = 5,bklv = 1,star = 1,mon = {id = 320,desc = "kn-1-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20103] = {
		[1] = {
			jlr = {cha = "kn-1",lvId = "3",cardId = 1101001,lv = 10,bklv = 1,star = 1,mon = {id = 212,desc = "kn-1-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "3",cardId = 1102015,lv = 10,bklv = 1,star = 1,mon = {id = 318,desc = "kn-1-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-1",lvId = "3",cardId = 1101003,lv = 10,bklv = 1,star = 1,mon = {id = 208,desc = "kn-1-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "3",cardId = 1102005,lv = 10,bklv = 1,star = 1,mon = {id = 313,desc = "kn-1-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-1",lvId = "3",cardId = 1101002,lv = 10,bklv = 1,star = 1,mon = {id = 209,desc = "kn-1-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "3",cardId = 1102004,lv = 10,bklv = 1,star = 1,mon = {id = 314,desc = "kn-1-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20104] = {
		[1] = {
			jlr = {cha = "kn-1",lvId = "4",cardId = 1101001,lv = 15,bklv = 1,star = 1,mon = {id = 215,desc = "kn-1-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "4",cardId = 1102015,lv = 15,bklv = 1,star = 1,mon = {id = 321,desc = "kn-1-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-1",lvId = "4",cardId = 1101003,lv = 15,bklv = 1,star = 1,mon = {id = 201,desc = "kn-1-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "4",cardId = 1102005,lv = 15,bklv = 1,star = 1,mon = {id = 309,desc = "kn-1-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-1",lvId = "4",cardId = 1101002,lv = 15,bklv = 1,star = 1,mon = {id = 211,desc = "kn-1-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "4",cardId = 1102004,lv = 15,bklv = 1,star = 1,mon = {id = 317,desc = "kn-1-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20105] = {
		[1] = {
			jlr = {cha = "kn-1",lvId = "5",cardId = 1101001,lv = 15,bklv = 2,star = 1,mon = {id = 206,desc = "kn-1-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "5",cardId = 1102015,lv = 15,bklv = 1,star = 1,mon = {id = 307,desc = "kn-1-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-1",lvId = "5",cardId = 1101003,lv = 15,bklv = 1,star = 1,mon = {id = 203,desc = "kn-1-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "5",cardId = 1102005,lv = 15,bklv = 1,star = 1,mon = {id = 305,desc = "kn-1-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-1",lvId = "5",cardId = 1101002,lv = 15,bklv = 1,star = 1,mon = {id = 212,desc = "kn-1-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "5",cardId = 1102004,lv = 15,bklv = 1,star = 1,mon = {id = 318,desc = "kn-1-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20106] = {
		[1] = {
			jlr = {cha = "kn-1",lvId = "6",cardId = 1101001,lv = 15,bklv = 2,star = 1,mon = {id = 209,desc = "kn-1-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "6",cardId = 1102015,lv = 15,bklv = 1,star = 1,mon = {id = 314,desc = "kn-1-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-1",lvId = "6",cardId = 1101003,lv = 15,bklv = 2,star = 1,mon = {id = 208,desc = "kn-1-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "6",cardId = 1102005,lv = 15,bklv = 1,star = 1,mon = {id = 313,desc = "kn-1-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-1",lvId = "6",cardId = 1101002,lv = 15,bklv = 2,star = 1,mon = {id = 212,desc = "kn-1-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "6",cardId = 1102004,lv = 15,bklv = 1,star = 1,mon = {id = 318,desc = "kn-1-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20107] = {
		[1] = {
			jlr = {cha = "kn-1",lvId = "7",cardId = 1101001,lv = 15,bklv = 2,star = 1,mon = {id = 207,desc = "kn-1-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "7",cardId = 1102015,lv = 15,bklv = 2,star = 1,mon = {id = 309,desc = "kn-1-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-1",lvId = "7",cardId = 1101003,lv = 15,bklv = 2,star = 1,mon = {id = 207,desc = "kn-1-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "7",cardId = 1102005,lv = 15,bklv = 1,star = 1,mon = {id = 303,desc = "kn-1-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-1",lvId = "7",cardId = 1101002,lv = 15,bklv = 2,star = 1,mon = {id = 211,desc = "kn-1-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "7",cardId = 1102004,lv = 15,bklv = 1,star = 1,mon = {id = 317,desc = "kn-1-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20108] = {
		[1] = {
			jlr = {cha = "kn-1",lvId = "8",cardId = 1101001,lv = 15,bklv = 2,star = 2,mon = {id = 209,desc = "kn-1-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "8",cardId = 1102015,lv = 15,bklv = 1,star = 1,mon = {id = 314,desc = "kn-1-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-1",lvId = "8",cardId = 1101003,lv = 15,bklv = 2,star = 1,mon = {id = 208,desc = "kn-1-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "8",cardId = 1102005,lv = 15,bklv = 1,star = 1,mon = {id = 313,desc = "kn-1-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-1",lvId = "8",cardId = 1101002,lv = 15,bklv = 2,star = 2,mon = {id = 212,desc = "kn-1-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "8",cardId = 1102004,lv = 15,bklv = 1,star = 1,mon = {id = 318,desc = "kn-1-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20109] = {
		[1] = {
			jlr = {cha = "kn-1",lvId = "9",cardId = 1101001,lv = 15,bklv = 2,star = 2,mon = {id = 207,desc = "kn-1-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "9",cardId = 1102015,lv = 15,bklv = 2,star = 1,mon = {id = 312,desc = "kn-1-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-1",lvId = "9",cardId = 1101003,lv = 15,bklv = 2,star = 2,mon = {id = 205,desc = "kn-1-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "9",cardId = 1102005,lv = 15,bklv = 2,star = 1,mon = {id = 311,desc = "kn-1-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-1",lvId = "9",cardId = 1101002,lv = 15,bklv = 2,star = 2,mon = {id = 210,desc = "kn-1-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",lvId = "9",cardId = 1102004,lv = 15,bklv = 2,star = 1,mon = {id = 316,desc = "kn-1-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20201] = {
		[1] = {
			jlr = {cha = "kn-2",lvId = "1",cardId = 1101001,lv = 17,bklv = 2,star = 2,mon = {id = 212,desc = "kn-2-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "1",cardId = 1102002,lv = 17,bklv = 2,star = 1,mon = {id = 318,desc = "kn-2-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-2",lvId = "1",cardId = 1101003,lv = 17,bklv = 2,star = 2,mon = {id = 208,desc = "kn-2-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "1",cardId = 1102005,lv = 17,bklv = 2,star = 1,mon = {id = 313,desc = "kn-2-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-2",lvId = "1",cardId = 1101002,lv = 17,bklv = 2,star = 2,mon = {id = 209,desc = "kn-2-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "1",cardId = 1102004,lv = 17,bklv = 2,star = 1,mon = {id = 314,desc = "kn-2-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20202] = {
		[1] = {
			jlr = {cha = "kn-2",lvId = "2",cardId = 1101001,lv = 18,bklv = 2,star = 2,mon = {id = 201,desc = "kn-2-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "2",cardId = 1102002,lv = 18,bklv = 2,star = 1,mon = {id = 302,desc = "kn-2-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-2",lvId = "2",cardId = 1101003,lv = 18,bklv = 2,star = 2,mon = {id = 203,desc = "kn-2-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "2",cardId = 1102005,lv = 18,bklv = 2,star = 1,mon = {id = 305,desc = "kn-2-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-2",lvId = "2",cardId = 1101002,lv = 18,bklv = 2,star = 2,mon = {id = 214,desc = "kn-2-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "2",cardId = 1102004,lv = 18,bklv = 2,star = 1,mon = {id = 320,desc = "kn-2-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20203] = {
		[1] = {
			jlr = {cha = "kn-2",lvId = "3",cardId = 1101001,lv = 20,bklv = 2,star = 2,mon = {id = 212,desc = "kn-2-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "3",cardId = 1102002,lv = 20,bklv = 2,star = 1,mon = {id = 318,desc = "kn-2-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-2",lvId = "3",cardId = 1101003,lv = 20,bklv = 2,star = 2,mon = {id = 208,desc = "kn-2-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "3",cardId = 1102005,lv = 20,bklv = 2,star = 1,mon = {id = 313,desc = "kn-2-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-2",lvId = "3",cardId = 1101002,lv = 20,bklv = 2,star = 2,mon = {id = 209,desc = "kn-2-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "3",cardId = 1102004,lv = 20,bklv = 2,star = 1,mon = {id = 314,desc = "kn-2-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20204] = {
		[1] = {
			jlr = {cha = "kn-2",lvId = "4",cardId = 1101001,lv = 22,bklv = 2,star = 2,mon = {id = 215,desc = "kn-2-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "4",cardId = 1102002,lv = 22,bklv = 2,star = 1,mon = {id = 321,desc = "kn-2-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-2",lvId = "4",cardId = 1101003,lv = 22,bklv = 2,star = 2,mon = {id = 201,desc = "kn-2-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "4",cardId = 1102005,lv = 22,bklv = 2,star = 1,mon = {id = 309,desc = "kn-2-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-2",lvId = "4",cardId = 1101002,lv = 22,bklv = 2,star = 2,mon = {id = 211,desc = "kn-2-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "4",cardId = 1102004,lv = 22,bklv = 2,star = 1,mon = {id = 317,desc = "kn-2-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20205] = {
		[1] = {
			jlr = {cha = "kn-2",lvId = "5",cardId = 1101001,lv = 24,bklv = 2,star = 2,mon = {id = 206,desc = "kn-2-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "5",cardId = 1102002,lv = 24,bklv = 2,star = 1,mon = {id = 307,desc = "kn-2-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-2",lvId = "5",cardId = 1101003,lv = 24,bklv = 2,star = 2,mon = {id = 203,desc = "kn-2-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "5",cardId = 1102005,lv = 24,bklv = 2,star = 1,mon = {id = 305,desc = "kn-2-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-2",lvId = "5",cardId = 1101002,lv = 24,bklv = 2,star = 2,mon = {id = 212,desc = "kn-2-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "5",cardId = 1102004,lv = 24,bklv = 2,star = 1,mon = {id = 318,desc = "kn-2-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20206] = {
		[1] = {
			jlr = {cha = "kn-2",lvId = "6",cardId = 1101001,lv = 26,bklv = 2,star = 2,mon = {id = 209,desc = "kn-2-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "6",cardId = 1102002,lv = 26,bklv = 2,star = 1,mon = {id = 314,desc = "kn-2-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-2",lvId = "6",cardId = 1101003,lv = 26,bklv = 2,star = 2,mon = {id = 208,desc = "kn-2-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "6",cardId = 1102005,lv = 26,bklv = 2,star = 1,mon = {id = 313,desc = "kn-2-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-2",lvId = "6",cardId = 1101002,lv = 26,bklv = 2,star = 2,mon = {id = 212,desc = "kn-2-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "6",cardId = 1102004,lv = 26,bklv = 2,star = 1,mon = {id = 318,desc = "kn-2-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20207] = {
		[1] = {
			jlr = {cha = "kn-2",lvId = "7",cardId = 1101001,lv = 28,bklv = 2,star = 2,mon = {id = 207,desc = "kn-2-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "7",cardId = 1102002,lv = 28,bklv = 2,star = 1,mon = {id = 309,desc = "kn-2-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-2",lvId = "7",cardId = 1101003,lv = 28,bklv = 2,star = 2,mon = {id = 207,desc = "kn-2-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "7",cardId = 1102005,lv = 28,bklv = 2,star = 1,mon = {id = 303,desc = "kn-2-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-2",lvId = "7",cardId = 1101002,lv = 28,bklv = 2,star = 2,mon = {id = 211,desc = "kn-2-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "7",cardId = 1102004,lv = 28,bklv = 2,star = 1,mon = {id = 317,desc = "kn-2-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20208] = {
		[1] = {
			jlr = {cha = "kn-2",lvId = "8",cardId = 1101001,lv = 30,bklv = 2,star = 2,mon = {id = 209,desc = "kn-2-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "8",cardId = 1102002,lv = 30,bklv = 2,star = 1,mon = {id = 314,desc = "kn-2-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-2",lvId = "8",cardId = 1101003,lv = 30,bklv = 2,star = 2,mon = {id = 208,desc = "kn-2-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "8",cardId = 1102005,lv = 30,bklv = 2,star = 1,mon = {id = 313,desc = "kn-2-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-2",lvId = "8",cardId = 1101002,lv = 30,bklv = 2,star = 2,mon = {id = 212,desc = "kn-2-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "8",cardId = 1102004,lv = 30,bklv = 2,star = 1,mon = {id = 318,desc = "kn-2-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20209] = {
		[1] = {
			jlr = {cha = "kn-2",lvId = "9",cardId = 1101001,lv = 30,bklv = 3,star = 2,mon = {id = 207,desc = "kn-2-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "9",cardId = 1102002,lv = 30,bklv = 2,star = 1,mon = {id = 312,desc = "kn-2-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-2",lvId = "9",cardId = 1101003,lv = 30,bklv = 3,star = 2,mon = {id = 205,desc = "kn-2-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "9",cardId = 1102005,lv = 30,bklv = 2,star = 1,mon = {id = 311,desc = "kn-2-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-2",lvId = "9",cardId = 1101014,lv = 30,bklv = 3,star = 2,mon = {id = 210,desc = "kn-2-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",lvId = "9",cardId = 1102004,lv = 30,bklv = 2,star = 1,mon = {id = 316,desc = "kn-2-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20301] = {
		[1] = {
			jlr = {cha = "kn-3",lvId = "1",cardId = 1101001,lv = 30,bklv = 3,star = 2,mon = {id = 212,desc = "kn-3-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "1",cardId = 1102002,lv = 30,bklv = 2,star = 1,mon = {id = 318,desc = "kn-3-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-3",lvId = "1",cardId = 1101003,lv = 30,bklv = 3,star = 2,mon = {id = 208,desc = "kn-3-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "1",cardId = 1102005,lv = 30,bklv = 2,star = 1,mon = {id = 313,desc = "kn-3-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-3",lvId = "1",cardId = 1101014,lv = 30,bklv = 3,star = 2,mon = {id = 209,desc = "kn-3-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "1",cardId = 1102020,lv = 30,bklv = 2,star = 1,mon = {id = 314,desc = "kn-3-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20302] = {
		[1] = {
			jlr = {cha = "kn-3",lvId = "2",cardId = 1101001,lv = 30,bklv = 3,star = 2,mon = {id = 201,desc = "kn-3-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "2",cardId = 1102002,lv = 30,bklv = 3,star = 1,mon = {id = 302,desc = "kn-3-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-3",lvId = "2",cardId = 1101003,lv = 30,bklv = 3,star = 2,mon = {id = 203,desc = "kn-3-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "2",cardId = 1102005,lv = 30,bklv = 2,star = 1,mon = {id = 305,desc = "kn-3-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-3",lvId = "2",cardId = 1101014,lv = 30,bklv = 3,star = 2,mon = {id = 214,desc = "kn-3-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "2",cardId = 1102020,lv = 30,bklv = 2,star = 1,mon = {id = 320,desc = "kn-3-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20303] = {
		[1] = {
			jlr = {cha = "kn-3",lvId = "3",cardId = 1101001,lv = 30,bklv = 3,star = 2,mon = {id = 212,desc = "kn-3-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "3",cardId = 1102002,lv = 30,bklv = 3,star = 1,mon = {id = 318,desc = "kn-3-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-3",lvId = "3",cardId = 1101003,lv = 30,bklv = 3,star = 2,mon = {id = 208,desc = "kn-3-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "3",cardId = 1102005,lv = 30,bklv = 2,star = 2,mon = {id = 313,desc = "kn-3-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-3",lvId = "3",cardId = 1101014,lv = 30,bklv = 3,star = 2,mon = {id = 209,desc = "kn-3-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "3",cardId = 1102020,lv = 30,bklv = 2,star = 1,mon = {id = 314,desc = "kn-3-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20304] = {
		[1] = {
			jlr = {cha = "kn-3",lvId = "4",cardId = 1101001,lv = 30,bklv = 3,star = 2,mon = {id = 215,desc = "kn-3-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "4",cardId = 1102002,lv = 30,bklv = 3,star = 1,mon = {id = 321,desc = "kn-3-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-3",lvId = "4",cardId = 1101003,lv = 30,bklv = 3,star = 2,mon = {id = 201,desc = "kn-3-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "4",cardId = 1102005,lv = 30,bklv = 3,star = 2,mon = {id = 309,desc = "kn-3-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-3",lvId = "4",cardId = 1101014,lv = 30,bklv = 3,star = 2,mon = {id = 211,desc = "kn-3-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "4",cardId = 1102020,lv = 30,bklv = 3,star = 1,mon = {id = 317,desc = "kn-3-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20305] = {
		[1] = {
			jlr = {cha = "kn-3",lvId = "5",cardId = 1101001,lv = 31,bklv = 3,star = 2,mon = {id = 206,desc = "kn-3-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "5",cardId = 1102002,lv = 31,bklv = 3,star = 1,mon = {id = 307,desc = "kn-3-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-3",lvId = "5",cardId = 1101003,lv = 31,bklv = 3,star = 2,mon = {id = 203,desc = "kn-3-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "5",cardId = 1102005,lv = 31,bklv = 3,star = 2,mon = {id = 305,desc = "kn-3-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-3",lvId = "5",cardId = 1101014,lv = 31,bklv = 3,star = 2,mon = {id = 212,desc = "kn-3-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "5",cardId = 1102020,lv = 31,bklv = 3,star = 1,mon = {id = 318,desc = "kn-3-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20306] = {
		[1] = {
			jlr = {cha = "kn-3",lvId = "6",cardId = 1101001,lv = 32,bklv = 3,star = 2,mon = {id = 209,desc = "kn-3-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "6",cardId = 1102002,lv = 32,bklv = 3,star = 1,mon = {id = 314,desc = "kn-3-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-3",lvId = "6",cardId = 1101003,lv = 32,bklv = 3,star = 2,mon = {id = 208,desc = "kn-3-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "6",cardId = 1102005,lv = 32,bklv = 3,star = 2,mon = {id = 313,desc = "kn-3-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-3",lvId = "6",cardId = 1101014,lv = 32,bklv = 3,star = 2,mon = {id = 212,desc = "kn-3-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "6",cardId = 1102020,lv = 32,bklv = 3,star = 1,mon = {id = 318,desc = "kn-3-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20307] = {
		[1] = {
			jlr = {cha = "kn-3",lvId = "7",cardId = 1101001,lv = 33,bklv = 3,star = 2,mon = {id = 207,desc = "kn-3-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "7",cardId = 1102002,lv = 33,bklv = 3,star = 1,mon = {id = 309,desc = "kn-3-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-3",lvId = "7",cardId = 1101003,lv = 33,bklv = 3,star = 2,mon = {id = 207,desc = "kn-3-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "7",cardId = 1102005,lv = 33,bklv = 3,star = 2,mon = {id = 303,desc = "kn-3-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-3",lvId = "7",cardId = 1101014,lv = 33,bklv = 3,star = 2,mon = {id = 211,desc = "kn-3-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "7",cardId = 1102020,lv = 33,bklv = 3,star = 1,mon = {id = 317,desc = "kn-3-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20308] = {
		[1] = {
			jlr = {cha = "kn-3",lvId = "8",cardId = 1101001,lv = 34,bklv = 3,star = 2,mon = {id = 206,desc = "kn-3-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "8",cardId = 1102002,lv = 34,bklv = 3,star = 1,mon = {id = 307,desc = "kn-3-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-3",lvId = "8",cardId = 1101003,lv = 34,bklv = 3,star = 2,mon = {id = 205,desc = "kn-3-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "8",cardId = 1102005,lv = 34,bklv = 3,star = 2,mon = {id = 311,desc = "kn-3-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-3",lvId = "8",cardId = 1101014,lv = 34,bklv = 3,star = 2,mon = {id = 207,desc = "kn-3-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "8",cardId = 1102020,lv = 34,bklv = 3,star = 1,mon = {id = 310,desc = "kn-3-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20309] = {
		[1] = {
			jlr = {cha = "kn-3",lvId = "9",cardId = 1101001,lv = 34,bklv = 3,star = 2,mon = {id = 212,desc = "kn-3-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "9",cardId = 1102002,lv = 34,bklv = 3,star = 2,mon = {id = 318,desc = "kn-3-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-3",lvId = "9",cardId = 1101003,lv = 34,bklv = 3,star = 2,mon = {id = 208,desc = "kn-3-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "9",cardId = 1102005,lv = 34,bklv = 3,star = 2,mon = {id = 313,desc = "kn-3-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-3",lvId = "9",cardId = 1101014,lv = 34,bklv = 3,star = 2,mon = {id = 209,desc = "kn-3-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "9",cardId = 1102020,lv = 34,bklv = 3,star = 1,mon = {id = 314,desc = "kn-3-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20310] = {
		[1] = {
			jlr = {cha = "kn-3",lvId = "10",cardId = 1101001,lv = 35,bklv = 3,star = 2,mon = {id = 201,desc = "kn-3-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "10",cardId = 1102002,lv = 35,bklv = 3,star = 2,mon = {id = 302,desc = "kn-3-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-3",lvId = "10",cardId = 1101003,lv = 35,bklv = 3,star = 2,mon = {id = 203,desc = "kn-3-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "10",cardId = 1102005,lv = 35,bklv = 3,star = 2,mon = {id = 305,desc = "kn-3-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-3",lvId = "10",cardId = 1101014,lv = 35,bklv = 3,star = 2,mon = {id = 214,desc = "kn-3-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "10",cardId = 1102020,lv = 35,bklv = 3,star = 2,mon = {id = 320,desc = "kn-3-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20311] = {
		[1] = {
			jlr = {cha = "kn-3",lvId = "11",cardId = 1101001,lv = 36,bklv = 3,star = 2,mon = {id = 212,desc = "kn-3-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "11",cardId = 1102002,lv = 36,bklv = 3,star = 2,mon = {id = 318,desc = "kn-3-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-3",lvId = "11",cardId = 1101003,lv = 36,bklv = 3,star = 2,mon = {id = 208,desc = "kn-3-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "11",cardId = 1102005,lv = 36,bklv = 3,star = 2,mon = {id = 313,desc = "kn-3-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-3",lvId = "11",cardId = 1101014,lv = 36,bklv = 3,star = 2,mon = {id = 209,desc = "kn-3-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "11",cardId = 1102020,lv = 36,bklv = 3,star = 2,mon = {id = 314,desc = "kn-3-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20312] = {
		[1] = {
			jlr = {cha = "kn-3",lvId = "12",cardId = 1101001,lv = 37,bklv = 3,star = 2,mon = {id = 215,desc = "kn-3-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "12",cardId = 1102002,lv = 37,bklv = 3,star = 2,mon = {id = 321,desc = "kn-3-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-3",lvId = "12",cardId = 1101003,lv = 37,bklv = 3,star = 2,mon = {id = 201,desc = "kn-3-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "12",cardId = 1102005,lv = 37,bklv = 3,star = 2,mon = {id = 309,desc = "kn-3-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-3",lvId = "12",cardId = 1101014,lv = 37,bklv = 3,star = 2,mon = {id = 211,desc = "kn-3-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "12",cardId = 1102020,lv = 37,bklv = 3,star = 2,mon = {id = 317,desc = "kn-3-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20313] = {
		[1] = {
			jlr = {cha = "kn-3",lvId = "13",cardId = 1101001,lv = 38,bklv = 3,star = 2,mon = {id = 209,desc = "kn-3-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "13",cardId = 1102002,lv = 38,bklv = 3,star = 2,mon = {id = 314,desc = "kn-3-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-3",lvId = "13",cardId = 1101003,lv = 38,bklv = 3,star = 2,mon = {id = 208,desc = "kn-3-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "13",cardId = 1102005,lv = 38,bklv = 3,star = 2,mon = {id = 313,desc = "kn-3-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-3",lvId = "13",cardId = 1101014,lv = 38,bklv = 3,star = 2,mon = {id = 212,desc = "kn-3-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "13",cardId = 1102020,lv = 38,bklv = 3,star = 2,mon = {id = 318,desc = "kn-3-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20314] = {
		[1] = {
			jlr = {cha = "kn-3",lvId = "14",cardId = 1101001,lv = 39,bklv = 3,star = 2,mon = {id = 207,desc = "kn-3-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "14",cardId = 1102002,lv = 39,bklv = 3,star = 2,mon = {id = 309,desc = "kn-3-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-3",lvId = "14",cardId = 1101003,lv = 39,bklv = 3,star = 2,mon = {id = 207,desc = "kn-3-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "14",cardId = 1102005,lv = 39,bklv = 3,star = 2,mon = {id = 303,desc = "kn-3-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-3",lvId = "14",cardId = 1101014,lv = 39,bklv = 3,star = 2,mon = {id = 211,desc = "kn-3-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "14",cardId = 1102020,lv = 39,bklv = 3,star = 2,mon = {id = 317,desc = "kn-3-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20315] = {
		[1] = {
			jlr = {cha = "kn-3",lvId = "15",cardId = 1101001,lv = 40,bklv = 3,star = 2,mon = {id = 205,desc = "kn-3-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "15",cardId = 1102002,lv = 40,bklv = 3,star = 2,mon = {id = 301,desc = "kn-3-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-3",lvId = "15",cardId = 1101003,lv = 40,bklv = 3,star = 2,mon = {id = 204,desc = "kn-3-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "15",cardId = 1102005,lv = 40,bklv = 3,star = 2,mon = {id = 306,desc = "kn-3-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-3",lvId = "15",cardId = 1101014,lv = 40,bklv = 3,star = 2,mon = {id = 207,desc = "kn-3-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",lvId = "15",cardId = 1102020,lv = 40,bklv = 3,star = 2,mon = {id = 310,desc = "kn-3-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20401] = {
		[1] = {
			jlr = {cha = "kn-4",lvId = "1",cardId = 1101001,lv = 40,bklv = 4,star = 2,mon = {id = 212,desc = "kn-4-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "1",cardId = 1102002,lv = 40,bklv = 3,star = 2,mon = {id = 318,desc = "kn-4-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-4",lvId = "1",cardId = 1101003,lv = 40,bklv = 4,star = 2,mon = {id = 208,desc = "kn-4-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "1",cardId = 1102005,lv = 40,bklv = 3,star = 2,mon = {id = 313,desc = "kn-4-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-4",lvId = "1",cardId = 1101014,lv = 40,bklv = 4,star = 2,mon = {id = 213,desc = "kn-4-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "1",cardId = 1102020,lv = 40,bklv = 3,star = 2,mon = {id = 319,desc = "kn-4-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20402] = {
		[1] = {
			jlr = {cha = "kn-4",lvId = "2",cardId = 1101001,lv = 40,bklv = 4,star = 2,mon = {id = 201,desc = "kn-4-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "2",cardId = 1102002,lv = 40,bklv = 4,star = 2,mon = {id = 302,desc = "kn-4-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-4",lvId = "2",cardId = 1101003,lv = 40,bklv = 4,star = 2,mon = {id = 203,desc = "kn-4-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "2",cardId = 1102005,lv = 40,bklv = 3,star = 2,mon = {id = 305,desc = "kn-4-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-4",lvId = "2",cardId = 1101014,lv = 40,bklv = 4,star = 2,mon = {id = 214,desc = "kn-4-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "2",cardId = 1102020,lv = 40,bklv = 3,star = 2,mon = {id = 320,desc = "kn-4-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20403] = {
		[1] = {
			jlr = {cha = "kn-4",lvId = "3",cardId = 1101001,lv = 40,bklv = 4,star = 2,mon = {id = 212,desc = "kn-4-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "3",cardId = 1102002,lv = 40,bklv = 4,star = 2,mon = {id = 318,desc = "kn-4-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-4",lvId = "3",cardId = 1101003,lv = 40,bklv = 4,star = 2,mon = {id = 208,desc = "kn-4-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "3",cardId = 1102005,lv = 40,bklv = 4,star = 2,mon = {id = 313,desc = "kn-4-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-4",lvId = "3",cardId = 1101014,lv = 40,bklv = 4,star = 2,mon = {id = 209,desc = "kn-4-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "3",cardId = 1102020,lv = 40,bklv = 3,star = 2,mon = {id = 314,desc = "kn-4-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20404] = {
		[1] = {
			jlr = {cha = "kn-4",lvId = "4",cardId = 1101001,lv = 40,bklv = 4,star = 2,mon = {id = 215,desc = "kn-4-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "4",cardId = 1102002,lv = 40,bklv = 4,star = 2,mon = {id = 321,desc = "kn-4-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-4",lvId = "4",cardId = 1101003,lv = 40,bklv = 4,star = 2,mon = {id = 201,desc = "kn-4-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "4",cardId = 1102005,lv = 40,bklv = 4,star = 2,mon = {id = 309,desc = "kn-4-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-4",lvId = "4",cardId = 1101014,lv = 40,bklv = 4,star = 2,mon = {id = 211,desc = "kn-4-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "4",cardId = 1102020,lv = 40,bklv = 4,star = 2,mon = {id = 317,desc = "kn-4-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20405] = {
		[1] = {
			jlr = {cha = "kn-4",lvId = "5",cardId = 1101001,lv = 41,bklv = 4,star = 2,mon = {id = 206,desc = "kn-4-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "5",cardId = 1102002,lv = 41,bklv = 4,star = 2,mon = {id = 307,desc = "kn-4-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-4",lvId = "5",cardId = 1101003,lv = 41,bklv = 4,star = 2,mon = {id = 203,desc = "kn-4-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "5",cardId = 1102005,lv = 41,bklv = 4,star = 2,mon = {id = 305,desc = "kn-4-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-4",lvId = "5",cardId = 1101014,lv = 41,bklv = 4,star = 2,mon = {id = 212,desc = "kn-4-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "5",cardId = 1102020,lv = 41,bklv = 4,star = 2,mon = {id = 318,desc = "kn-4-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20406] = {
		[1] = {
			jlr = {cha = "kn-4",lvId = "6",cardId = 1101001,lv = 42,bklv = 4,star = 2,mon = {id = 209,desc = "kn-4-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "6",cardId = 1102002,lv = 42,bklv = 4,star = 2,mon = {id = 314,desc = "kn-4-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-4",lvId = "6",cardId = 1101003,lv = 42,bklv = 4,star = 2,mon = {id = 208,desc = "kn-4-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "6",cardId = 1102005,lv = 42,bklv = 4,star = 2,mon = {id = 313,desc = "kn-4-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-4",lvId = "6",cardId = 1101014,lv = 42,bklv = 4,star = 2,mon = {id = 212,desc = "kn-4-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "6",cardId = 1102020,lv = 42,bklv = 4,star = 2,mon = {id = 318,desc = "kn-4-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20407] = {
		[1] = {
			jlr = {cha = "kn-4",lvId = "7",cardId = 1101001,lv = 43,bklv = 4,star = 2,mon = {id = 207,desc = "kn-4-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "7",cardId = 1102002,lv = 43,bklv = 4,star = 2,mon = {id = 309,desc = "kn-4-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-4",lvId = "7",cardId = 1101003,lv = 43,bklv = 4,star = 2,mon = {id = 207,desc = "kn-4-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "7",cardId = 1102005,lv = 43,bklv = 4,star = 2,mon = {id = 303,desc = "kn-4-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-4",lvId = "7",cardId = 1101014,lv = 43,bklv = 4,star = 2,mon = {id = 211,desc = "kn-4-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "7",cardId = 1102020,lv = 43,bklv = 4,star = 2,mon = {id = 317,desc = "kn-4-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20408] = {
		[1] = {
			jlr = {cha = "kn-4",lvId = "8",cardId = 1101001,lv = 44,bklv = 4,star = 2,mon = {id = 207,desc = "kn-4-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "8",cardId = 1102002,lv = 44,bklv = 4,star = 2,mon = {id = 312,desc = "kn-4-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-4",lvId = "8",cardId = 1101003,lv = 44,bklv = 4,star = 2,mon = {id = 205,desc = "kn-4-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "8",cardId = 1102005,lv = 44,bklv = 4,star = 2,mon = {id = 311,desc = "kn-4-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-4",lvId = "8",cardId = 1101014,lv = 44,bklv = 4,star = 2,mon = {id = 210,desc = "kn-4-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "8",cardId = 1102020,lv = 44,bklv = 4,star = 2,mon = {id = 316,desc = "kn-4-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20409] = {
		[1] = {
			jlr = {cha = "kn-4",lvId = "9",cardId = 1101001,lv = 45,bklv = 4,star = 2,mon = {id = 212,desc = "kn-4-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "9",cardId = 1102002,lv = 45,bklv = 4,star = 2,mon = {id = 318,desc = "kn-4-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-4",lvId = "9",cardId = 1101003,lv = 45,bklv = 4,star = 2,mon = {id = 208,desc = "kn-4-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "9",cardId = 1102005,lv = 45,bklv = 4,star = 2,mon = {id = 313,desc = "kn-4-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-4",lvId = "9",cardId = 1101014,lv = 45,bklv = 4,star = 2,mon = {id = 209,desc = "kn-4-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "9",cardId = 1102020,lv = 45,bklv = 4,star = 2,mon = {id = 314,desc = "kn-4-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20410] = {
		[1] = {
			jlr = {cha = "kn-4",lvId = "10",cardId = 1101007,lv = 46,bklv = 4,star = 2,mon = {id = 201,desc = "kn-4-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "10",cardId = 1102002,lv = 46,bklv = 4,star = 2,mon = {id = 302,desc = "kn-4-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-4",lvId = "10",cardId = 1101003,lv = 46,bklv = 4,star = 3,mon = {id = 203,desc = "kn-4-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "10",cardId = 1102005,lv = 46,bklv = 4,star = 2,mon = {id = 305,desc = "kn-4-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-4",lvId = "10",cardId = 1101014,lv = 46,bklv = 4,star = 2,mon = {id = 214,desc = "kn-4-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "10",cardId = 1102020,lv = 46,bklv = 4,star = 2,mon = {id = 320,desc = "kn-4-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20411] = {
		[1] = {
			jlr = {cha = "kn-4",lvId = "11",cardId = 1101007,lv = 47,bklv = 4,star = 2,mon = {id = 212,desc = "kn-4-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "11",cardId = 1102002,lv = 47,bklv = 4,star = 2,mon = {id = 318,desc = "kn-4-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-4",lvId = "11",cardId = 1101003,lv = 47,bklv = 4,star = 3,mon = {id = 208,desc = "kn-4-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "11",cardId = 1102005,lv = 47,bklv = 4,star = 2,mon = {id = 313,desc = "kn-4-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-4",lvId = "11",cardId = 1101014,lv = 47,bklv = 4,star = 3,mon = {id = 209,desc = "kn-4-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "11",cardId = 1102020,lv = 47,bklv = 4,star = 2,mon = {id = 314,desc = "kn-4-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20412] = {
		[1] = {
			jlr = {cha = "kn-4",lvId = "12",cardId = 1101007,lv = 48,bklv = 4,star = 2,mon = {id = 215,desc = "kn-4-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "12",cardId = 1102012,lv = 48,bklv = 4,star = 2,mon = {id = 321,desc = "kn-4-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-4",lvId = "12",cardId = 1101003,lv = 48,bklv = 4,star = 3,mon = {id = 201,desc = "kn-4-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "12",cardId = 1102005,lv = 48,bklv = 4,star = 2,mon = {id = 309,desc = "kn-4-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-4",lvId = "12",cardId = 1101014,lv = 48,bklv = 4,star = 3,mon = {id = 211,desc = "kn-4-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "12",cardId = 1102020,lv = 48,bklv = 4,star = 2,mon = {id = 317,desc = "kn-4-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20413] = {
		[1] = {
			jlr = {cha = "kn-4",lvId = "13",cardId = 1101007,lv = 49,bklv = 4,star = 2,mon = {id = 209,desc = "kn-4-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "13",cardId = 1102012,lv = 49,bklv = 4,star = 2,mon = {id = 314,desc = "kn-4-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-4",lvId = "13",cardId = 1101003,lv = 49,bklv = 4,star = 3,mon = {id = 208,desc = "kn-4-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "13",cardId = 1102005,lv = 49,bklv = 4,star = 3,mon = {id = 313,desc = "kn-4-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-4",lvId = "13",cardId = 1101014,lv = 49,bklv = 4,star = 3,mon = {id = 212,desc = "kn-4-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "13",cardId = 1102020,lv = 49,bklv = 4,star = 2,mon = {id = 318,desc = "kn-4-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20414] = {
		[1] = {
			jlr = {cha = "kn-4",lvId = "14",cardId = 1101007,lv = 50,bklv = 4,star = 2,mon = {id = 207,desc = "kn-4-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "14",cardId = 1102012,lv = 50,bklv = 4,star = 2,mon = {id = 309,desc = "kn-4-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-4",lvId = "14",cardId = 1101003,lv = 50,bklv = 4,star = 3,mon = {id = 207,desc = "kn-4-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "14",cardId = 1102005,lv = 50,bklv = 4,star = 3,mon = {id = 303,desc = "kn-4-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-4",lvId = "14",cardId = 1101014,lv = 50,bklv = 4,star = 3,mon = {id = 211,desc = "kn-4-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "14",cardId = 1102020,lv = 50,bklv = 4,star = 3,mon = {id = 317,desc = "kn-4-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20415] = {
		[1] = {
			jlr = {cha = "kn-4",lvId = "15",cardId = 1101007,lv = 50,bklv = 4,star = 2,mon = {id = 205,desc = "kn-4-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "15",cardId = 1102012,lv = 50,bklv = 4,star = 2,mon = {id = 301,desc = "kn-4-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-4",lvId = "15",cardId = 1101003,lv = 50,bklv = 4,star = 3,mon = {id = 204,desc = "kn-4-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "15",cardId = 1102005,lv = 50,bklv = 4,star = 3,mon = {id = 306,desc = "kn-4-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-4",lvId = "15",cardId = 1101014,lv = 50,bklv = 4,star = 3,mon = {id = 207,desc = "kn-4-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",lvId = "15",cardId = 1102020,lv = 50,bklv = 4,star = 3,mon = {id = 310,desc = "kn-4-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20501] = {
		[1] = {
			jlr = {cha = "kn-5",lvId = "1",cardId = 1101007,lv = 50,bklv = 5,star = 2,mon = {id = 212,desc = "kn-5-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "1",cardId = 1102012,lv = 50,bklv = 4,star = 2,mon = {id = 318,desc = "kn-5-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-5",lvId = "1",cardId = 1101003,lv = 50,bklv = 4,star = 3,mon = {id = 208,desc = "kn-5-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "1",cardId = 1102005,lv = 50,bklv = 4,star = 3,mon = {id = 313,desc = "kn-5-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-5",lvId = "1",cardId = 1101014,lv = 50,bklv = 4,star = 3,mon = {id = 209,desc = "kn-5-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "1",cardId = 1102020,lv = 50,bklv = 4,star = 3,mon = {id = 314,desc = "kn-5-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20502] = {
		[1] = {
			jlr = {cha = "kn-5",lvId = "2",cardId = 1101007,lv = 50,bklv = 5,star = 2,mon = {id = 201,desc = "kn-5-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "2",cardId = 1102012,lv = 50,bklv = 4,star = 2,mon = {id = 302,desc = "kn-5-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-5",lvId = "2",cardId = 1101003,lv = 50,bklv = 5,star = 3,mon = {id = 203,desc = "kn-5-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "2",cardId = 1102005,lv = 50,bklv = 4,star = 3,mon = {id = 305,desc = "kn-5-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-5",lvId = "2",cardId = 1101014,lv = 50,bklv = 5,star = 3,mon = {id = 214,desc = "kn-5-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "2",cardId = 1102020,lv = 50,bklv = 4,star = 3,mon = {id = 320,desc = "kn-5-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20503] = {
		[1] = {
			jlr = {cha = "kn-5",lvId = "3",cardId = 1101007,lv = 50,bklv = 5,star = 2,mon = {id = 212,desc = "kn-5-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "3",cardId = 1102012,lv = 50,bklv = 5,star = 2,mon = {id = 318,desc = "kn-5-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-5",lvId = "3",cardId = 1101003,lv = 50,bklv = 5,star = 3,mon = {id = 208,desc = "kn-5-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "3",cardId = 1102005,lv = 50,bklv = 4,star = 3,mon = {id = 313,desc = "kn-5-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-5",lvId = "3",cardId = 1101014,lv = 50,bklv = 5,star = 3,mon = {id = 209,desc = "kn-5-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "3",cardId = 1102020,lv = 50,bklv = 4,star = 3,mon = {id = 314,desc = "kn-5-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20504] = {
		[1] = {
			jlr = {cha = "kn-5",lvId = "4",cardId = 1101007,lv = 50,bklv = 5,star = 2,mon = {id = 215,desc = "kn-5-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "4",cardId = 1102012,lv = 50,bklv = 5,star = 2,mon = {id = 321,desc = "kn-5-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-5",lvId = "4",cardId = 1101003,lv = 50,bklv = 5,star = 3,mon = {id = 201,desc = "kn-5-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "4",cardId = 1102005,lv = 50,bklv = 5,star = 3,mon = {id = 309,desc = "kn-5-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-5",lvId = "4",cardId = 1101014,lv = 50,bklv = 5,star = 3,mon = {id = 211,desc = "kn-5-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "4",cardId = 1102020,lv = 50,bklv = 5,star = 3,mon = {id = 317,desc = "kn-5-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20505] = {
		[1] = {
			jlr = {cha = "kn-5",lvId = "5",cardId = 1101007,lv = 51,bklv = 5,star = 2,mon = {id = 206,desc = "kn-5-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "5",cardId = 1102012,lv = 51,bklv = 5,star = 2,mon = {id = 307,desc = "kn-5-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-5",lvId = "5",cardId = 1101003,lv = 51,bklv = 5,star = 3,mon = {id = 203,desc = "kn-5-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "5",cardId = 1102005,lv = 51,bklv = 5,star = 3,mon = {id = 305,desc = "kn-5-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-5",lvId = "5",cardId = 1101014,lv = 51,bklv = 5,star = 3,mon = {id = 212,desc = "kn-5-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "5",cardId = 1102020,lv = 51,bklv = 5,star = 3,mon = {id = 318,desc = "kn-5-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20506] = {
		[1] = {
			jlr = {cha = "kn-5",lvId = "6",cardId = 1101007,lv = 52,bklv = 5,star = 2,mon = {id = 209,desc = "kn-5-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "6",cardId = 1102012,lv = 52,bklv = 5,star = 2,mon = {id = 314,desc = "kn-5-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-5",lvId = "6",cardId = 1101003,lv = 52,bklv = 5,star = 3,mon = {id = 208,desc = "kn-5-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "6",cardId = 1102005,lv = 52,bklv = 5,star = 3,mon = {id = 313,desc = "kn-5-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-5",lvId = "6",cardId = 1101014,lv = 52,bklv = 5,star = 3,mon = {id = 212,desc = "kn-5-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "6",cardId = 1102020,lv = 52,bklv = 5,star = 3,mon = {id = 318,desc = "kn-5-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20507] = {
		[1] = {
			jlr = {cha = "kn-5",lvId = "7",cardId = 1101007,lv = 53,bklv = 5,star = 2,mon = {id = 207,desc = "kn-5-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "7",cardId = 1102012,lv = 53,bklv = 5,star = 2,mon = {id = 309,desc = "kn-5-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-5",lvId = "7",cardId = 1101003,lv = 53,bklv = 5,star = 3,mon = {id = 207,desc = "kn-5-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "7",cardId = 1102005,lv = 53,bklv = 5,star = 3,mon = {id = 303,desc = "kn-5-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-5",lvId = "7",cardId = 1101014,lv = 53,bklv = 5,star = 3,mon = {id = 211,desc = "kn-5-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "7",cardId = 1102020,lv = 53,bklv = 5,star = 3,mon = {id = 317,desc = "kn-5-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20508] = {
		[1] = {
			jlr = {cha = "kn-5",lvId = "8",cardId = 1101007,lv = 54,bklv = 5,star = 2,mon = {id = 206,desc = "kn-5-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "8",cardId = 1102012,lv = 54,bklv = 5,star = 2,mon = {id = 307,desc = "kn-5-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-5",lvId = "8",cardId = 1101003,lv = 54,bklv = 5,star = 3,mon = {id = 205,desc = "kn-5-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "8",cardId = 1102005,lv = 54,bklv = 5,star = 3,mon = {id = 311,desc = "kn-5-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-5",lvId = "8",cardId = 1101014,lv = 54,bklv = 5,star = 3,mon = {id = 207,desc = "kn-5-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "8",cardId = 1102020,lv = 54,bklv = 5,star = 3,mon = {id = 310,desc = "kn-5-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20509] = {
		[1] = {
			jlr = {cha = "kn-5",lvId = "9",cardId = 1101007,lv = 55,bklv = 5,star = 2,mon = {id = 212,desc = "kn-5-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "9",cardId = 1102012,lv = 55,bklv = 5,star = 2,mon = {id = 318,desc = "kn-5-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-5",lvId = "9",cardId = 1101003,lv = 55,bklv = 5,star = 3,mon = {id = 208,desc = "kn-5-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "9",cardId = 1102005,lv = 55,bklv = 5,star = 3,mon = {id = 313,desc = "kn-5-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-5",lvId = "9",cardId = 1101014,lv = 55,bklv = 5,star = 3,mon = {id = 209,desc = "kn-5-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "9",cardId = 1102020,lv = 55,bklv = 5,star = 3,mon = {id = 314,desc = "kn-5-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20510] = {
		[1] = {
			jlr = {cha = "kn-5",lvId = "10",cardId = 1101007,lv = 56,bklv = 5,star = 2,mon = {id = 201,desc = "kn-5-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "10",cardId = 1102012,lv = 56,bklv = 5,star = 2,mon = {id = 302,desc = "kn-5-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-5",lvId = "10",cardId = 1101003,lv = 56,bklv = 5,star = 3,mon = {id = 203,desc = "kn-5-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "10",cardId = 1102005,lv = 56,bklv = 5,star = 3,mon = {id = 305,desc = "kn-5-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-5",lvId = "10",cardId = 1101014,lv = 56,bklv = 5,star = 3,mon = {id = 214,desc = "kn-5-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "10",cardId = 1102020,lv = 56,bklv = 5,star = 3,mon = {id = 320,desc = "kn-5-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20511] = {
		[1] = {
			jlr = {cha = "kn-5",lvId = "11",cardId = 1101007,lv = 57,bklv = 5,star = 2,mon = {id = 212,desc = "kn-5-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "11",cardId = 1102012,lv = 57,bklv = 5,star = 2,mon = {id = 318,desc = "kn-5-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-5",lvId = "11",cardId = 1101003,lv = 57,bklv = 5,star = 3,mon = {id = 208,desc = "kn-5-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "11",cardId = 1102005,lv = 57,bklv = 5,star = 3,mon = {id = 313,desc = "kn-5-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-5",lvId = "11",cardId = 1101014,lv = 57,bklv = 5,star = 3,mon = {id = 209,desc = "kn-5-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "11",cardId = 1102020,lv = 57,bklv = 5,star = 3,mon = {id = 314,desc = "kn-5-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20512] = {
		[1] = {
			jlr = {cha = "kn-5",lvId = "12",cardId = 1101007,lv = 58,bklv = 5,star = 2,mon = {id = 215,desc = "kn-5-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "12",cardId = 1102012,lv = 58,bklv = 5,star = 2,mon = {id = 321,desc = "kn-5-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-5",lvId = "12",cardId = 1101003,lv = 58,bklv = 5,star = 3,mon = {id = 201,desc = "kn-5-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "12",cardId = 1102005,lv = 58,bklv = 5,star = 3,mon = {id = 309,desc = "kn-5-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-5",lvId = "12",cardId = 1101014,lv = 58,bklv = 5,star = 3,mon = {id = 211,desc = "kn-5-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "12",cardId = 1102020,lv = 58,bklv = 5,star = 3,mon = {id = 317,desc = "kn-5-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20513] = {
		[1] = {
			jlr = {cha = "kn-5",lvId = "13",cardId = 1101007,lv = 59,bklv = 5,star = 2,mon = {id = 209,desc = "kn-5-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "13",cardId = 1102012,lv = 59,bklv = 5,star = 2,mon = {id = 314,desc = "kn-5-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-5",lvId = "13",cardId = 1101003,lv = 59,bklv = 5,star = 3,mon = {id = 208,desc = "kn-5-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "13",cardId = 1102005,lv = 59,bklv = 5,star = 3,mon = {id = 313,desc = "kn-5-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-5",lvId = "13",cardId = 1101014,lv = 59,bklv = 5,star = 3,mon = {id = 212,desc = "kn-5-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "13",cardId = 1102020,lv = 59,bklv = 5,star = 3,mon = {id = 318,desc = "kn-5-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20514] = {
		[1] = {
			jlr = {cha = "kn-5",lvId = "14",cardId = 1101007,lv = 60,bklv = 4,star = 2,mon = {id = 207,desc = "kn-5-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "14",cardId = 1102012,lv = 60,bklv = 4,star = 2,mon = {id = 309,desc = "kn-5-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-5",lvId = "14",cardId = 1101003,lv = 60,bklv = 4,star = 3,mon = {id = 207,desc = "kn-5-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "14",cardId = 1102005,lv = 60,bklv = 4,star = 3,mon = {id = 303,desc = "kn-5-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-5",lvId = "14",cardId = 1101014,lv = 60,bklv = 4,star = 3,mon = {id = 211,desc = "kn-5-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "14",cardId = 1102020,lv = 60,bklv = 4,star = 3,mon = {id = 317,desc = "kn-5-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20515] = {
		[1] = {
			jlr = {cha = "kn-5",lvId = "15",cardId = 1101007,lv = 60,bklv = 5,star = 2,mon = {id = 205,desc = "kn-5-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "15",cardId = 1102012,lv = 60,bklv = 4,star = 2,mon = {id = 301,desc = "kn-5-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-5",lvId = "15",cardId = 1101003,lv = 60,bklv = 5,star = 3,mon = {id = 204,desc = "kn-5-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "15",cardId = 1102005,lv = 60,bklv = 4,star = 3,mon = {id = 306,desc = "kn-5-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-5",lvId = "15",cardId = 1101014,lv = 60,bklv = 5,star = 3,mon = {id = 207,desc = "kn-5-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",lvId = "15",cardId = 1102020,lv = 60,bklv = 4,star = 3,mon = {id = 310,desc = "kn-5-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20601] = {
		[1] = {
			jlr = {cha = "kn-6",lvId = "1",cardId = 1101007,lv = 60,bklv = 5,star = 2,mon = {id = 212,desc = "kn-6-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "1",cardId = 1102012,lv = 60,bklv = 5,star = 2,mon = {id = 318,desc = "kn-6-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-6",lvId = "1",cardId = 1101003,lv = 60,bklv = 5,star = 3,mon = {id = 208,desc = "kn-6-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "1",cardId = 1102005,lv = 60,bklv = 4,star = 3,mon = {id = 313,desc = "kn-6-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-6",lvId = "1",cardId = 1101014,lv = 60,bklv = 5,star = 3,mon = {id = 213,desc = "kn-6-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "1",cardId = 1102020,lv = 60,bklv = 4,star = 3,mon = {id = 319,desc = "kn-6-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20602] = {
		[1] = {
			jlr = {cha = "kn-6",lvId = "2",cardId = 1101007,lv = 60,bklv = 5,star = 2,mon = {id = 201,desc = "kn-6-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "2",cardId = 1102012,lv = 60,bklv = 5,star = 2,mon = {id = 302,desc = "kn-6-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-6",lvId = "2",cardId = 1101003,lv = 60,bklv = 5,star = 3,mon = {id = 203,desc = "kn-6-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "2",cardId = 1102005,lv = 60,bklv = 5,star = 3,mon = {id = 305,desc = "kn-6-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-6",lvId = "2",cardId = 1101014,lv = 60,bklv = 5,star = 3,mon = {id = 214,desc = "kn-6-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "2",cardId = 1102020,lv = 60,bklv = 4,star = 3,mon = {id = 320,desc = "kn-6-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20603] = {
		[1] = {
			jlr = {cha = "kn-6",lvId = "3",cardId = 1101007,lv = 60,bklv = 5,star = 2,mon = {id = 212,desc = "kn-6-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "3",cardId = 1102012,lv = 60,bklv = 5,star = 2,mon = {id = 318,desc = "kn-6-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-6",lvId = "3",cardId = 1101003,lv = 60,bklv = 5,star = 3,mon = {id = 208,desc = "kn-6-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "3",cardId = 1102005,lv = 60,bklv = 5,star = 3,mon = {id = 313,desc = "kn-6-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-6",lvId = "3",cardId = 1101014,lv = 60,bklv = 5,star = 3,mon = {id = 209,desc = "kn-6-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "3",cardId = 1102020,lv = 60,bklv = 5,star = 3,mon = {id = 314,desc = "kn-6-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20604] = {
		[1] = {
			jlr = {cha = "kn-6",lvId = "4",cardId = 1101007,lv = 61,bklv = 5,star = 2,mon = {id = 215,desc = "kn-6-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "4",cardId = 1102012,lv = 61,bklv = 5,star = 2,mon = {id = 321,desc = "kn-6-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-6",lvId = "4",cardId = 1101003,lv = 61,bklv = 5,star = 3,mon = {id = 201,desc = "kn-6-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "4",cardId = 1102005,lv = 61,bklv = 5,star = 3,mon = {id = 309,desc = "kn-6-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-6",lvId = "4",cardId = 1101014,lv = 61,bklv = 5,star = 3,mon = {id = 211,desc = "kn-6-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "4",cardId = 1102020,lv = 61,bklv = 5,star = 3,mon = {id = 317,desc = "kn-6-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20605] = {
		[1] = {
			jlr = {cha = "kn-6",lvId = "5",cardId = 1101007,lv = 62,bklv = 5,star = 2,mon = {id = 206,desc = "kn-6-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "5",cardId = 1102012,lv = 62,bklv = 5,star = 2,mon = {id = 307,desc = "kn-6-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-6",lvId = "5",cardId = 1101003,lv = 62,bklv = 5,star = 3,mon = {id = 203,desc = "kn-6-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "5",cardId = 1102005,lv = 62,bklv = 5,star = 3,mon = {id = 305,desc = "kn-6-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-6",lvId = "5",cardId = 1101014,lv = 62,bklv = 5,star = 3,mon = {id = 212,desc = "kn-6-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "5",cardId = 1102020,lv = 62,bklv = 5,star = 3,mon = {id = 318,desc = "kn-6-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20606] = {
		[1] = {
			jlr = {cha = "kn-6",lvId = "6",cardId = 1101007,lv = 63,bklv = 5,star = 2,mon = {id = 209,desc = "kn-6-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "6",cardId = 1102012,lv = 63,bklv = 5,star = 2,mon = {id = 314,desc = "kn-6-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-6",lvId = "6",cardId = 1101003,lv = 63,bklv = 5,star = 3,mon = {id = 208,desc = "kn-6-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "6",cardId = 1102005,lv = 63,bklv = 5,star = 3,mon = {id = 313,desc = "kn-6-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-6",lvId = "6",cardId = 1101014,lv = 63,bklv = 5,star = 3,mon = {id = 212,desc = "kn-6-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "6",cardId = 1102020,lv = 63,bklv = 5,star = 3,mon = {id = 318,desc = "kn-6-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20607] = {
		[1] = {
			jlr = {cha = "kn-6",lvId = "7",cardId = 1101007,lv = 64,bklv = 5,star = 2,mon = {id = 207,desc = "kn-6-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "7",cardId = 1102012,lv = 64,bklv = 5,star = 2,mon = {id = 309,desc = "kn-6-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-6",lvId = "7",cardId = 1101003,lv = 64,bklv = 5,star = 3,mon = {id = 207,desc = "kn-6-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "7",cardId = 1102005,lv = 64,bklv = 5,star = 3,mon = {id = 303,desc = "kn-6-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-6",lvId = "7",cardId = 1101014,lv = 64,bklv = 5,star = 3,mon = {id = 211,desc = "kn-6-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "7",cardId = 1102020,lv = 64,bklv = 5,star = 3,mon = {id = 317,desc = "kn-6-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20608] = {
		[1] = {
			jlr = {cha = "kn-6",lvId = "8",cardId = 1101007,lv = 65,bklv = 5,star = 2,mon = {id = 207,desc = "kn-6-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "8",cardId = 1102012,lv = 65,bklv = 5,star = 2,mon = {id = 312,desc = "kn-6-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-6",lvId = "8",cardId = 1101003,lv = 65,bklv = 5,star = 3,mon = {id = 205,desc = "kn-6-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "8",cardId = 1102005,lv = 65,bklv = 5,star = 3,mon = {id = 311,desc = "kn-6-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-6",lvId = "8",cardId = 1101014,lv = 65,bklv = 5,star = 3,mon = {id = 210,desc = "kn-6-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "8",cardId = 1102020,lv = 65,bklv = 5,star = 3,mon = {id = 316,desc = "kn-6-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20609] = {
		[1] = {
			jlr = {cha = "kn-6",lvId = "9",cardId = 1101007,lv = 66,bklv = 5,star = 2,mon = {id = 212,desc = "kn-6-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "9",cardId = 1102012,lv = 66,bklv = 5,star = 2,mon = {id = 318,desc = "kn-6-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-6",lvId = "9",cardId = 1101003,lv = 66,bklv = 5,star = 3,mon = {id = 208,desc = "kn-6-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "9",cardId = 1102005,lv = 66,bklv = 5,star = 3,mon = {id = 313,desc = "kn-6-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-6",lvId = "9",cardId = 1101014,lv = 66,bklv = 5,star = 3,mon = {id = 209,desc = "kn-6-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "9",cardId = 1102020,lv = 66,bklv = 5,star = 3,mon = {id = 314,desc = "kn-6-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20610] = {
		[1] = {
			jlr = {cha = "kn-6",lvId = "10",cardId = 1101007,lv = 67,bklv = 5,star = 2,mon = {id = 201,desc = "kn-6-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "10",cardId = 1102012,lv = 67,bklv = 5,star = 2,mon = {id = 302,desc = "kn-6-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-6",lvId = "10",cardId = 1101003,lv = 67,bklv = 5,star = 3,mon = {id = 203,desc = "kn-6-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "10",cardId = 1102005,lv = 67,bklv = 5,star = 3,mon = {id = 305,desc = "kn-6-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-6",lvId = "10",cardId = 1101014,lv = 67,bklv = 5,star = 3,mon = {id = 214,desc = "kn-6-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "10",cardId = 1102020,lv = 67,bklv = 5,star = 3,mon = {id = 320,desc = "kn-6-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20611] = {
		[1] = {
			jlr = {cha = "kn-6",lvId = "11",cardId = 1101007,lv = 68,bklv = 5,star = 2,mon = {id = 212,desc = "kn-6-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "11",cardId = 1102012,lv = 68,bklv = 5,star = 2,mon = {id = 318,desc = "kn-6-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-6",lvId = "11",cardId = 1101003,lv = 68,bklv = 5,star = 3,mon = {id = 208,desc = "kn-6-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "11",cardId = 1102005,lv = 68,bklv = 5,star = 3,mon = {id = 313,desc = "kn-6-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-6",lvId = "11",cardId = 1101014,lv = 68,bklv = 5,star = 3,mon = {id = 209,desc = "kn-6-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "11",cardId = 1102020,lv = 68,bklv = 5,star = 3,mon = {id = 314,desc = "kn-6-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20612] = {
		[1] = {
			jlr = {cha = "kn-6",lvId = "12",cardId = 1101007,lv = 69,bklv = 5,star = 2,mon = {id = 215,desc = "kn-6-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "12",cardId = 1102012,lv = 69,bklv = 5,star = 2,mon = {id = 321,desc = "kn-6-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-6",lvId = "12",cardId = 1101003,lv = 69,bklv = 5,star = 3,mon = {id = 201,desc = "kn-6-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "12",cardId = 1102005,lv = 69,bklv = 5,star = 3,mon = {id = 309,desc = "kn-6-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-6",lvId = "12",cardId = 1101014,lv = 69,bklv = 5,star = 3,mon = {id = 211,desc = "kn-6-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "12",cardId = 1102020,lv = 69,bklv = 5,star = 3,mon = {id = 317,desc = "kn-6-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20613] = {
		[1] = {
			jlr = {cha = "kn-6",lvId = "13",cardId = 1101007,lv = 70,bklv = 5,star = 2,mon = {id = 209,desc = "kn-6-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "13",cardId = 1102012,lv = 70,bklv = 5,star = 2,mon = {id = 314,desc = "kn-6-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-6",lvId = "13",cardId = 1101003,lv = 70,bklv = 5,star = 3,mon = {id = 208,desc = "kn-6-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "13",cardId = 1102005,lv = 70,bklv = 5,star = 3,mon = {id = 313,desc = "kn-6-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-6",lvId = "13",cardId = 1101014,lv = 70,bklv = 5,star = 3,mon = {id = 212,desc = "kn-6-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "13",cardId = 1102020,lv = 70,bklv = 5,star = 3,mon = {id = 318,desc = "kn-6-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20614] = {
		[1] = {
			jlr = {cha = "kn-6",lvId = "14",cardId = 1101007,lv = 70,bklv = 5,star = 2,mon = {id = 207,desc = "kn-6-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "14",cardId = 1102012,lv = 70,bklv = 5,star = 2,mon = {id = 309,desc = "kn-6-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-6",lvId = "14",cardId = 1101005,lv = 70,bklv = 5,star = 3,mon = {id = 207,desc = "kn-6-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "14",cardId = 1102011,lv = 70,bklv = 5,star = 3,mon = {id = 303,desc = "kn-6-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-6",lvId = "14",cardId = 1101003,lv = 70,bklv = 5,star = 3,mon = {id = 211,desc = "kn-6-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "14",cardId = 1102005,lv = 70,bklv = 5,star = 3,mon = {id = 317,desc = "kn-6-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20615] = {
		[1] = {
			jlr = {cha = "kn-6",lvId = "15",cardId = 1101007,lv = 70,bklv = 5,star = 2,mon = {id = 205,desc = "kn-6-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "15",cardId = 1102012,lv = 70,bklv = 5,star = 2,mon = {id = 301,desc = "kn-6-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-6",lvId = "15",cardId = 1101005,lv = 70,bklv = 5,star = 3,mon = {id = 204,desc = "kn-6-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "15",cardId = 1102011,lv = 70,bklv = 5,star = 3,mon = {id = 306,desc = "kn-6-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-6",lvId = "15",cardId = 1101010,lv = 70,bklv = 5,star = 2,mon = {id = 207,desc = "kn-6-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",lvId = "15",cardId = 1102016,lv = 70,bklv = 5,star = 2,mon = {id = 310,desc = "kn-6-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[40001] = {
		[1] = {
			jlr = {cha = "test-1",lvId = "1",cardId = 1101007,lv = 43,bklv = 4,star = 2}
		},
		[2] = {
			jlr = {cha = "test-1",lvId = "1",cardId = 1102015,lv = 39,bklv = 3,star = 2}
		},
		[3] = {
			jlr = {cha = "test-1",lvId = "1",cardId = 1102004,lv = 7,bklv = 1,star = 5}
		}
	}
}
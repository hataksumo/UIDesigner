--[[
--note:

colums:
{cha,章节} ,{id,卡牌Id} ,{group,组} ,{loc,位置} ,{type,类型} ,{cardId,卡牌ID} ,{lv,等级} ,{bklv,突破} ,{star,星级} ,{mon.id,怪物模组ID} ,{mon.desc,备注} ,{mon.bsFac,战力系数} ,{mon.rou,相对肉度} ,{monId,怪物模组ID} ,{BsFac,战力系数} ,{Rou,肉度}
primary key:
#0 [卡牌组]: group,loc,type
#1 [挂机卡牌组]: group,loc,type
#2 [芦花卡牌组]: group,loc,type
#3 [世界BOSS卡牌组]: group,loc,type
]]
return{
	[10101] = {
		[1] = {
			jlr = {cha = "pt-1",id = 1010110,cardId = 1101001,lv = 1,bklv = 1,star = 1,mon = {id = 101,desc = "pt-1-1-jlr-loc1",bsFac = 0.8,rou = 1}},
			shl = {cha = "pt-1",id = 1010111,cardId = 1102015,lv = 1,bklv = 1,star = 1}
		},
		[2] = {
			jlr = {cha = "pt-1",id = 1010120,cardId = 1101002,lv = 1,bklv = 1,star = 1},
			shl = {cha = "pt-1",id = 1010121,cardId = 1102004,lv = 1,bklv = 1,star = 1}
		}
	},
	[10102] = {
		[1] = {
			jlr = {cha = "pt-1",id = 1010210,cardId = 1101001,lv = 1,bklv = 1,star = 1,mon = {id = 101,desc = "pt-1-2-jlr-loc1",bsFac = 1,rou = 1.2}},
			shl = {cha = "pt-1",id = 1010211,cardId = 1102015,lv = 1,bklv = 1,star = 1,mon = {id = 102,desc = "pt-1-2-shl-loc1",bsFac = 0.75,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-1",id = 1010220,cardId = 1101002,lv = 1,bklv = 1,star = 1},
			shl = {cha = "pt-1",id = 1010221,cardId = 1102004,lv = 1,bklv = 1,star = 1}
		},
		[3] = {
			jlr = {cha = "pt-1",id = 1010230,cardId = 1101003,lv = 1,bklv = 1,star = 1},
			shl = {cha = "pt-1",id = 1010231,cardId = 1102005,lv = 1,bklv = 1,star = 1}
		}
	},
	[10103] = {
		[1] = {
			jlr = {cha = "pt-1",id = 1010310,cardId = 1101001,lv = 2,bklv = 1,star = 1},
			shl = {cha = "pt-1",id = 1010311,cardId = 1102015,lv = 2,bklv = 1,star = 1}
		},
		[2] = {
			jlr = {cha = "pt-1",id = 1010320,cardId = 1101002,lv = 2,bklv = 1,star = 1},
			shl = {cha = "pt-1",id = 1010321,cardId = 1102004,lv = 2,bklv = 1,star = 1}
		},
		[3] = {
			jlr = {cha = "pt-1",id = 1010330,cardId = 1101003,lv = 2,bklv = 1,star = 1,mon = {id = 207,desc = "pt-1-3-jlr-loc3",bsFac = 5,rou = 1.3}},
			shl = {cha = "pt-1",id = 1010331,cardId = 1102005,lv = 2,bklv = 1,star = 1}
		}
	},
	[10104] = {
		[1] = {
			jlr = {cha = "pt-1",id = 1010410,cardId = 1101001,lv = 2,bklv = 1,star = 1},
			shl = {cha = "pt-1",id = 1010411,cardId = 1102015,lv = 2,bklv = 1,star = 1}
		},
		[2] = {
			jlr = {cha = "pt-1",id = 1010420,cardId = 1101002,lv = 2,bklv = 1,star = 1},
			shl = {cha = "pt-1",id = 1010421,cardId = 1102004,lv = 2,bklv = 1,star = 1}
		},
		[3] = {
			jlr = {cha = "pt-1",id = 1010430,cardId = 1101003,lv = 2,bklv = 1,star = 1},
			shl = {cha = "pt-1",id = 1010431,cardId = 1102005,lv = 2,bklv = 1,star = 1}
		}
	},
	[10105] = {
		[1] = {
			jlr = {cha = "pt-1",id = 1010510,cardId = 1101001,lv = 3,bklv = 1,star = 1,mon = {id = 208,desc = "pt-1-5-jlr-loc1",bsFac = 1,rou = 0.75}},
			shl = {cha = "pt-1",id = 1010511,cardId = 1102015,lv = 3,bklv = 1,star = 1,mon = {id = 231,desc = "pt-1-5-shl-loc1",bsFac = 0.85,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-1",id = 1010520,cardId = 1101002,lv = 3,bklv = 1,star = 1,mon = {id = 213,desc = "pt-1-5-jlr-loc2",bsFac = 1,rou = 0.75}},
			shl = {cha = "pt-1",id = 1010521,cardId = 1102004,lv = 3,bklv = 1,star = 1,mon = {id = 237,desc = "pt-1-5-shl-loc2",bsFac = 0.85,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-1",id = 1010530,cardId = 1101003,lv = 3,bklv = 1,star = 1},
			shl = {cha = "pt-1",id = 1010531,cardId = 1102005,lv = 3,bklv = 1,star = 1}
		}
	},
	[10106] = {
		[1] = {
			jlr = {cha = "pt-1",id = 1010610,cardId = 1101001,lv = 3,bklv = 1,star = 1,mon = {id = 101,desc = "pt-1-6-jlr-loc1",bsFac = 0.9,rou = 0.8}},
			shl = {cha = "pt-1",id = 1010611,cardId = 1102015,lv = 3,bklv = 1,star = 1,mon = {id = 102,desc = "pt-1-6-shl-loc1",bsFac = 0.8,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-1",id = 1010620,cardId = 1101002,lv = 3,bklv = 1,star = 1,mon = {id = 103,desc = "pt-1-6-jlr-loc2",bsFac = 0.9,rou = 0.8}},
			shl = {cha = "pt-1",id = 1010621,cardId = 1102004,lv = 3,bklv = 1,star = 1,mon = {id = 104,desc = "pt-1-6-shl-loc2",bsFac = 0.8,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-1",id = 1010630,cardId = 1101003,lv = 3,bklv = 1,star = 1,mon = {id = 105,desc = "pt-1-6-jlr-loc3",bsFac = 0.9,rou = 0.8}},
			shl = {cha = "pt-1",id = 1010631,cardId = 1102005,lv = 3,bklv = 1,star = 1,mon = {id = 106,desc = "pt-1-6-shl-loc3",bsFac = 0.7,rou = 1}}
		}
	},
	[10107] = {
		[1] = {
			jlr = {cha = "pt-1",id = 1010710,cardId = 1101001,lv = 3,bklv = 1,star = 1},
			shl = {cha = "pt-1",id = 1010711,cardId = 1102015,lv = 3,bklv = 1,star = 1}
		},
		[2] = {
			jlr = {cha = "pt-1",id = 1010720,cardId = 1101002,lv = 3,bklv = 1,star = 1},
			shl = {cha = "pt-1",id = 1010721,cardId = 1102004,lv = 3,bklv = 1,star = 1}
		},
		[3] = {
			jlr = {cha = "pt-1",id = 1010730,cardId = 1101003,lv = 3,bklv = 1,star = 1},
			shl = {cha = "pt-1",id = 1010731,cardId = 1102005,lv = 3,bklv = 1,star = 1}
		}
	},
	[10108] = {
		[1] = {
			jlr = {cha = "pt-1",id = 1010810,cardId = 1101001,lv = 4,bklv = 1,star = 1,mon = {id = 212,desc = "pt-1-8-jlr-loc1",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-1",id = 1010811,cardId = 1102015,lv = 4,bklv = 1,star = 1,mon = {id = 236,desc = "pt-1-8-shl-loc1",bsFac = 0.85,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-1",id = 1010820,cardId = 1101002,lv = 4,bklv = 1,star = 1,mon = {id = 208,desc = "pt-1-8-jlr-loc2",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-1",id = 1010821,cardId = 1102005,lv = 4,bklv = 1,star = 1,mon = {id = 231,desc = "pt-1-8-shl-loc2",bsFac = 0.85,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-1",id = 1010830,cardId = 1101003,lv = 4,bklv = 1,star = 1,mon = {id = 209,desc = "pt-1-8-jlr-loc3",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-1",id = 1010831,cardId = 1102005,lv = 4,bklv = 1,star = 1,mon = {id = 232,desc = "pt-1-8-shl-loc3",bsFac = 0.7,rou = 1}}
		}
	},
	[10109] = {
		[1] = {
			jlr = {cha = "pt-1",id = 1010910,cardId = 1101001,lv = 5,bklv = 2,star = 1,mon = {id = 261,desc = "pt-1-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-1",id = 1010911,cardId = 1102015,lv = 5,bklv = 2,star = 1}
		},
		[2] = {
			jlr = {cha = "pt-1",id = 1010920,cardId = 1101002,lv = 5,bklv = 2,star = 1,mon = {id = 261,desc = "pt-1-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-1",id = 1010921,cardId = 1102005,lv = 5,bklv = 2,star = 1}
		},
		[3] = {
			jlr = {cha = "pt-1",id = 1010930,cardId = 1101003,lv = 5,bklv = 2,star = 1,mon = {id = 207,desc = "pt-1-9-jlr-loc2",bsFac = 2,rou = 1.5}},
			shl = {cha = "pt-1",id = 1010931,cardId = 1102005,lv = 5,bklv = 2,star = 1,mon = {id = 241,desc = "pt-1-9-shl-loc2",bsFac = 1.5,rou = 1.5}}
		}
	},
	[10201] = {
		[1] = {
			jlr = {cha = "pt-2",id = 1020110,cardId = 1101001,lv = 5,bklv = 2,star = 1,mon = {id = 212,desc = "pt-2-1-jlr-loc1",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",id = 1020111,cardId = 1102015,lv = 5,bklv = 2,star = 1,mon = {id = 236,desc = "pt-2-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-2",id = 1020120,cardId = 1101003,lv = 5,bklv = 2,star = 1,mon = {id = 208,desc = "pt-2-1-jlr-loc2",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",id = 1020121,cardId = 1102005,lv = 5,bklv = 2,star = 1,mon = {id = 231,desc = "pt-2-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-2",id = 1020130,cardId = 1101002,lv = 5,bklv = 2,star = 1,mon = {id = 209,desc = "pt-2-1-jlr-loc3",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",id = 1020131,cardId = 1102004,lv = 5,bklv = 2,star = 1,mon = {id = 232,desc = "pt-2-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10202] = {
		[1] = {
			jlr = {cha = "pt-2",id = 1020210,cardId = 1101001,lv = 5,bklv = 2,star = 1,mon = {id = 201,desc = "pt-2-2-jlr-loc1",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",id = 1020211,cardId = 1102015,lv = 5,bklv = 2,star = 1,mon = {id = 220,desc = "pt-2-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-2",id = 1020220,cardId = 1101003,lv = 5,bklv = 2,star = 1,mon = {id = 203,desc = "pt-2-2-jlr-loc2",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",id = 1020221,cardId = 1102005,lv = 5,bklv = 2,star = 1,mon = {id = 223,desc = "pt-2-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-2",id = 1020230,cardId = 1101002,lv = 5,bklv = 2,star = 1,mon = {id = 214,desc = "pt-2-2-jlr-loc3",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",id = 1020231,cardId = 1102004,lv = 5,bklv = 2,star = 1,mon = {id = 238,desc = "pt-2-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10203] = {
		[1] = {
			jlr = {cha = "pt-2",id = 1020310,cardId = 1101001,lv = 6,bklv = 2,star = 1,mon = {id = 212,desc = "pt-2-3-jlr-loc1",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",id = 1020311,cardId = 1102015,lv = 6,bklv = 2,star = 1,mon = {id = 236,desc = "pt-2-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-2",id = 1020320,cardId = 1101003,lv = 6,bklv = 2,star = 1,mon = {id = 208,desc = "pt-2-3-jlr-loc2",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",id = 1020321,cardId = 1102005,lv = 6,bklv = 2,star = 1,mon = {id = 231,desc = "pt-2-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-2",id = 1020330,cardId = 1101002,lv = 6,bklv = 2,star = 1,mon = {id = 209,desc = "pt-2-3-jlr-loc3",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",id = 1020331,cardId = 1102004,lv = 6,bklv = 2,star = 1,mon = {id = 232,desc = "pt-2-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10204] = {
		[1] = {
			jlr = {cha = "pt-2",id = 1020410,cardId = 1101001,lv = 7,bklv = 2,star = 1,mon = {id = 215,desc = "pt-2-4-jlr-loc1",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",id = 1020411,cardId = 1102015,lv = 7,bklv = 2,star = 1,mon = {id = 239,desc = "pt-2-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-2",id = 1020420,cardId = 1101003,lv = 7,bklv = 2,star = 1,mon = {id = 201,desc = "pt-2-4-jlr-loc2",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",id = 1020421,cardId = 1102005,lv = 7,bklv = 2,star = 1,mon = {id = 227,desc = "pt-2-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-2",id = 1020430,cardId = 1101002,lv = 7,bklv = 2,star = 1,mon = {id = 211,desc = "pt-2-4-jlr-loc3",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",id = 1020431,cardId = 1102004,lv = 7,bklv = 2,star = 1,mon = {id = 235,desc = "pt-2-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10205] = {
		[1] = {
			jlr = {cha = "pt-2",id = 1020510,cardId = 1101001,lv = 8,bklv = 2,star = 1,mon = {id = 206,desc = "pt-2-5-jlr-loc1",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",id = 1020511,cardId = 1102015,lv = 8,bklv = 2,star = 1,mon = {id = 225,desc = "pt-2-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-2",id = 1020520,cardId = 1101003,lv = 8,bklv = 2,star = 1,mon = {id = 203,desc = "pt-2-5-jlr-loc2",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",id = 1020521,cardId = 1102005,lv = 8,bklv = 2,star = 1,mon = {id = 223,desc = "pt-2-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-2",id = 1020530,cardId = 1101002,lv = 8,bklv = 2,star = 1,mon = {id = 212,desc = "pt-2-5-jlr-loc3",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",id = 1020531,cardId = 1102004,lv = 8,bklv = 2,star = 1,mon = {id = 236,desc = "pt-2-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10206] = {
		[1] = {
			jlr = {cha = "pt-2",id = 1020610,cardId = 1101001,lv = 9,bklv = 2,star = 1,mon = {id = 209,desc = "pt-2-6-jlr-loc1",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",id = 1020611,cardId = 1102015,lv = 9,bklv = 2,star = 1,mon = {id = 232,desc = "pt-2-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-2",id = 1020620,cardId = 1101003,lv = 9,bklv = 2,star = 1,mon = {id = 208,desc = "pt-2-6-jlr-loc2",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",id = 1020621,cardId = 1102005,lv = 9,bklv = 2,star = 1,mon = {id = 231,desc = "pt-2-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-2",id = 1020630,cardId = 1101002,lv = 9,bklv = 2,star = 1,mon = {id = 212,desc = "pt-2-6-jlr-loc3",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",id = 1020631,cardId = 1102004,lv = 9,bklv = 2,star = 1,mon = {id = 236,desc = "pt-2-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10207] = {
		[1] = {
			jlr = {cha = "pt-2",id = 1020710,cardId = 1101001,lv = 10,bklv = 2,star = 1,mon = {id = 213,desc = "pt-2-7-jlr-loc1",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",id = 1020711,cardId = 1102015,lv = 10,bklv = 2,star = 1,mon = {id = 237,desc = "pt-2-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-2",id = 1020720,cardId = 1101003,lv = 10,bklv = 2,star = 1,mon = {id = 207,desc = "pt-2-7-jlr-loc2",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",id = 1020721,cardId = 1102005,lv = 10,bklv = 2,star = 1,mon = {id = 221,desc = "pt-2-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-2",id = 1020730,cardId = 1101002,lv = 10,bklv = 2,star = 1,mon = {id = 211,desc = "pt-2-7-jlr-loc3",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",id = 1020731,cardId = 1102004,lv = 10,bklv = 2,star = 1,mon = {id = 235,desc = "pt-2-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10208] = {
		[1] = {
			jlr = {cha = "pt-2",id = 1020810,cardId = 1101001,lv = 11,bklv = 2,star = 1,mon = {id = 209,desc = "pt-2-8-jlr-loc1",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",id = 1020811,cardId = 1102015,lv = 11,bklv = 2,star = 1,mon = {id = 232,desc = "pt-2-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-2",id = 1020820,cardId = 1101003,lv = 11,bklv = 2,star = 1,mon = {id = 208,desc = "pt-2-8-jlr-loc2",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",id = 1020821,cardId = 1102005,lv = 11,bklv = 2,star = 1,mon = {id = 231,desc = "pt-2-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-2",id = 1020830,cardId = 1101002,lv = 11,bklv = 2,star = 1,mon = {id = 212,desc = "pt-2-8-jlr-loc3",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",id = 1020831,cardId = 1102004,lv = 11,bklv = 2,star = 1,mon = {id = 236,desc = "pt-2-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10209] = {
		[1] = {
			jlr = {cha = "pt-2",id = 1020910,cardId = 1101001,lv = 12,bklv = 2,star = 1,mon = {id = 207,desc = "pt-2-9-jlr-loc1",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",id = 1020911,cardId = 1102015,lv = 12,bklv = 2,star = 1,mon = {id = 230,desc = "pt-2-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-2",id = 1020920,cardId = 1101003,lv = 12,bklv = 2,star = 1,mon = {id = 205,desc = "pt-2-9-jlr-loc2",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",id = 1020921,cardId = 1102005,lv = 12,bklv = 2,star = 1,mon = {id = 229,desc = "pt-2-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-2",id = 1020930,cardId = 1101002,lv = 12,bklv = 2,star = 1,mon = {id = 210,desc = "pt-2-9-jlr-loc3",bsFac = 1,rou = 0.8}},
			shl = {cha = "pt-2",id = 1020931,cardId = 1102004,lv = 12,bklv = 2,star = 1,mon = {id = 234,desc = "pt-2-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10301] = {
		[1] = {
			jlr = {cha = "pt-3",id = 1030110,cardId = 1101001,lv = 17,bklv = 3,star = 1,mon = {id = 212,desc = "pt-3-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",id = 1030111,cardId = 1102002,lv = 17,bklv = 3,star = 1,mon = {id = 236,desc = "pt-3-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-3",id = 1030120,cardId = 1101003,lv = 17,bklv = 3,star = 1,mon = {id = 208,desc = "pt-3-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",id = 1030121,cardId = 1102005,lv = 17,bklv = 3,star = 1,mon = {id = 231,desc = "pt-3-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-3",id = 1030130,cardId = 1101002,lv = 17,bklv = 3,star = 1,mon = {id = 209,desc = "pt-3-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",id = 1030131,cardId = 1102004,lv = 17,bklv = 3,star = 1,mon = {id = 232,desc = "pt-3-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10302] = {
		[1] = {
			jlr = {cha = "pt-3",id = 1030210,cardId = 1101001,lv = 18,bklv = 3,star = 1,mon = {id = 201,desc = "pt-3-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",id = 1030211,cardId = 1102002,lv = 18,bklv = 3,star = 1,mon = {id = 220,desc = "pt-3-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-3",id = 1030220,cardId = 1101003,lv = 18,bklv = 3,star = 1,mon = {id = 203,desc = "pt-3-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",id = 1030221,cardId = 1102005,lv = 18,bklv = 3,star = 1,mon = {id = 223,desc = "pt-3-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-3",id = 1030230,cardId = 1101002,lv = 18,bklv = 3,star = 1,mon = {id = 214,desc = "pt-3-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",id = 1030231,cardId = 1102004,lv = 18,bklv = 3,star = 1,mon = {id = 238,desc = "pt-3-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10303] = {
		[1] = {
			jlr = {cha = "pt-3",id = 1030310,cardId = 1101001,lv = 19,bklv = 3,star = 1,mon = {id = 212,desc = "pt-3-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",id = 1030311,cardId = 1102002,lv = 19,bklv = 3,star = 1,mon = {id = 236,desc = "pt-3-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-3",id = 1030320,cardId = 1101003,lv = 19,bklv = 3,star = 1,mon = {id = 208,desc = "pt-3-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",id = 1030321,cardId = 1102005,lv = 19,bklv = 3,star = 1,mon = {id = 231,desc = "pt-3-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-3",id = 1030330,cardId = 1101002,lv = 19,bklv = 3,star = 1,mon = {id = 209,desc = "pt-3-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",id = 1030331,cardId = 1102004,lv = 19,bklv = 3,star = 1,mon = {id = 232,desc = "pt-3-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10304] = {
		[1] = {
			jlr = {cha = "pt-3",id = 1030410,cardId = 1101001,lv = 20,bklv = 3,star = 1,mon = {id = 215,desc = "pt-3-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",id = 1030411,cardId = 1102002,lv = 20,bklv = 3,star = 1,mon = {id = 239,desc = "pt-3-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-3",id = 1030420,cardId = 1101003,lv = 20,bklv = 3,star = 1,mon = {id = 201,desc = "pt-3-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",id = 1030421,cardId = 1102005,lv = 20,bklv = 3,star = 1,mon = {id = 227,desc = "pt-3-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-3",id = 1030430,cardId = 1101002,lv = 20,bklv = 3,star = 1,mon = {id = 211,desc = "pt-3-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",id = 1030431,cardId = 1102004,lv = 20,bklv = 3,star = 1,mon = {id = 235,desc = "pt-3-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10305] = {
		[1] = {
			jlr = {cha = "pt-3",id = 1030510,cardId = 1101001,lv = 21,bklv = 3,star = 1,mon = {id = 206,desc = "pt-3-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",id = 1030511,cardId = 1102002,lv = 21,bklv = 3,star = 1,mon = {id = 225,desc = "pt-3-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-3",id = 1030520,cardId = 1101003,lv = 21,bklv = 3,star = 1,mon = {id = 203,desc = "pt-3-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",id = 1030521,cardId = 1102005,lv = 21,bklv = 3,star = 1,mon = {id = 223,desc = "pt-3-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-3",id = 1030530,cardId = 1101002,lv = 21,bklv = 3,star = 1,mon = {id = 212,desc = "pt-3-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",id = 1030531,cardId = 1102004,lv = 21,bklv = 3,star = 1,mon = {id = 236,desc = "pt-3-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10306] = {
		[1] = {
			jlr = {cha = "pt-3",id = 1030610,cardId = 1101001,lv = 22,bklv = 3,star = 1,mon = {id = 209,desc = "pt-3-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",id = 1030611,cardId = 1102002,lv = 22,bklv = 3,star = 1,mon = {id = 232,desc = "pt-3-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-3",id = 1030620,cardId = 1101003,lv = 22,bklv = 3,star = 1,mon = {id = 208,desc = "pt-3-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",id = 1030621,cardId = 1102005,lv = 22,bklv = 3,star = 1,mon = {id = 231,desc = "pt-3-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-3",id = 1030630,cardId = 1101002,lv = 22,bklv = 3,star = 1,mon = {id = 212,desc = "pt-3-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",id = 1030631,cardId = 1102004,lv = 22,bklv = 3,star = 1,mon = {id = 236,desc = "pt-3-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10307] = {
		[1] = {
			jlr = {cha = "pt-3",id = 1030710,cardId = 1101001,lv = 23,bklv = 3,star = 1,mon = {id = 213,desc = "pt-3-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",id = 1030711,cardId = 1102002,lv = 23,bklv = 3,star = 1,mon = {id = 237,desc = "pt-3-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-3",id = 1030720,cardId = 1101003,lv = 23,bklv = 3,star = 1,mon = {id = 207,desc = "pt-3-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",id = 1030721,cardId = 1102005,lv = 23,bklv = 3,star = 1,mon = {id = 221,desc = "pt-3-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-3",id = 1030730,cardId = 1101002,lv = 23,bklv = 3,star = 1,mon = {id = 211,desc = "pt-3-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",id = 1030731,cardId = 1102004,lv = 23,bklv = 3,star = 1,mon = {id = 235,desc = "pt-3-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10308] = {
		[1] = {
			jlr = {cha = "pt-3",id = 1030810,cardId = 1101001,lv = 24,bklv = 3,star = 1,mon = {id = 206,desc = "pt-3-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",id = 1030811,cardId = 1102002,lv = 24,bklv = 3,star = 1,mon = {id = 225,desc = "pt-3-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-3",id = 1030820,cardId = 1101003,lv = 24,bklv = 3,star = 1,mon = {id = 205,desc = "pt-3-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",id = 1030821,cardId = 1102005,lv = 24,bklv = 3,star = 1,mon = {id = 229,desc = "pt-3-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-3",id = 1030830,cardId = 1101002,lv = 24,bklv = 3,star = 1,mon = {id = 207,desc = "pt-3-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",id = 1030831,cardId = 1102004,lv = 24,bklv = 3,star = 1,mon = {id = 228,desc = "pt-3-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10309] = {
		[1] = {
			jlr = {cha = "pt-3",id = 1030910,cardId = 1101001,lv = 25,bklv = 3,star = 1,mon = {id = 212,desc = "pt-3-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",id = 1030911,cardId = 1102002,lv = 25,bklv = 3,star = 1,mon = {id = 236,desc = "pt-3-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-3",id = 1030920,cardId = 1101003,lv = 25,bklv = 3,star = 1,mon = {id = 208,desc = "pt-3-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",id = 1030921,cardId = 1102005,lv = 25,bklv = 3,star = 1,mon = {id = 231,desc = "pt-3-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-3",id = 1030930,cardId = 1101002,lv = 25,bklv = 3,star = 1,mon = {id = 209,desc = "pt-3-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-3",id = 1030931,cardId = 1102004,lv = 25,bklv = 3,star = 1,mon = {id = 232,desc = "pt-3-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10401] = {
		[1] = {
			jlr = {cha = "pt-4",id = 1040110,cardId = 1101001,lv = 27,bklv = 3,star = 2,mon = {id = 212,desc = "pt-4-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",id = 1040111,cardId = 1102002,lv = 27,bklv = 3,star = 2,mon = {id = 236,desc = "pt-4-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-4",id = 1040120,cardId = 1101003,lv = 27,bklv = 3,star = 2,mon = {id = 208,desc = "pt-4-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",id = 1040121,cardId = 1102005,lv = 27,bklv = 3,star = 2,mon = {id = 231,desc = "pt-4-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-4",id = 1040130,cardId = 1101014,lv = 27,bklv = 3,star = 2,mon = {id = 213,desc = "pt-4-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",id = 1040131,cardId = 1102020,lv = 27,bklv = 3,star = 2,mon = {id = 237,desc = "pt-4-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10402] = {
		[1] = {
			jlr = {cha = "pt-4",id = 1040210,cardId = 1101001,lv = 28,bklv = 3,star = 2,mon = {id = 201,desc = "pt-4-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",id = 1040211,cardId = 1102002,lv = 28,bklv = 3,star = 2,mon = {id = 220,desc = "pt-4-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-4",id = 1040220,cardId = 1101003,lv = 28,bklv = 3,star = 2,mon = {id = 203,desc = "pt-4-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",id = 1040221,cardId = 1102005,lv = 28,bklv = 3,star = 2,mon = {id = 223,desc = "pt-4-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-4",id = 1040230,cardId = 1101014,lv = 28,bklv = 3,star = 2,mon = {id = 214,desc = "pt-4-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",id = 1040231,cardId = 1102020,lv = 28,bklv = 3,star = 2,mon = {id = 238,desc = "pt-4-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10403] = {
		[1] = {
			jlr = {cha = "pt-4",id = 1040310,cardId = 1101001,lv = 29,bklv = 3,star = 2,mon = {id = 212,desc = "pt-4-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",id = 1040311,cardId = 1102002,lv = 29,bklv = 3,star = 2,mon = {id = 236,desc = "pt-4-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-4",id = 1040320,cardId = 1101003,lv = 29,bklv = 3,star = 2,mon = {id = 208,desc = "pt-4-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",id = 1040321,cardId = 1102005,lv = 29,bklv = 3,star = 2,mon = {id = 231,desc = "pt-4-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-4",id = 1040330,cardId = 1101014,lv = 29,bklv = 3,star = 2,mon = {id = 209,desc = "pt-4-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",id = 1040331,cardId = 1102020,lv = 29,bklv = 3,star = 2,mon = {id = 232,desc = "pt-4-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10404] = {
		[1] = {
			jlr = {cha = "pt-4",id = 1040410,cardId = 1101001,lv = 30,bklv = 4,star = 2,mon = {id = 215,desc = "pt-4-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",id = 1040411,cardId = 1102002,lv = 30,bklv = 4,star = 2,mon = {id = 239,desc = "pt-4-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-4",id = 1040420,cardId = 1101003,lv = 30,bklv = 4,star = 2,mon = {id = 201,desc = "pt-4-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",id = 1040421,cardId = 1102005,lv = 30,bklv = 4,star = 2,mon = {id = 227,desc = "pt-4-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-4",id = 1040430,cardId = 1101014,lv = 30,bklv = 4,star = 2,mon = {id = 211,desc = "pt-4-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",id = 1040431,cardId = 1102020,lv = 30,bklv = 4,star = 2,mon = {id = 235,desc = "pt-4-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10405] = {
		[1] = {
			jlr = {cha = "pt-4",id = 1040510,cardId = 1101001,lv = 31,bklv = 4,star = 2,mon = {id = 206,desc = "pt-4-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",id = 1040511,cardId = 1102002,lv = 31,bklv = 4,star = 2,mon = {id = 225,desc = "pt-4-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-4",id = 1040520,cardId = 1101003,lv = 31,bklv = 4,star = 2,mon = {id = 203,desc = "pt-4-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",id = 1040521,cardId = 1102005,lv = 31,bklv = 4,star = 2,mon = {id = 223,desc = "pt-4-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-4",id = 1040530,cardId = 1101014,lv = 31,bklv = 4,star = 2,mon = {id = 212,desc = "pt-4-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",id = 1040531,cardId = 1102020,lv = 31,bklv = 4,star = 2,mon = {id = 236,desc = "pt-4-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10406] = {
		[1] = {
			jlr = {cha = "pt-4",id = 1040610,cardId = 1101001,lv = 32,bklv = 4,star = 2,mon = {id = 209,desc = "pt-4-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",id = 1040611,cardId = 1102002,lv = 32,bklv = 4,star = 2,mon = {id = 232,desc = "pt-4-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-4",id = 1040620,cardId = 1101003,lv = 32,bklv = 4,star = 2,mon = {id = 208,desc = "pt-4-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",id = 1040621,cardId = 1102005,lv = 32,bklv = 4,star = 2,mon = {id = 231,desc = "pt-4-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-4",id = 1040630,cardId = 1101014,lv = 32,bklv = 4,star = 2,mon = {id = 212,desc = "pt-4-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",id = 1040631,cardId = 1102020,lv = 32,bklv = 4,star = 2,mon = {id = 236,desc = "pt-4-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10407] = {
		[1] = {
			jlr = {cha = "pt-4",id = 1040710,cardId = 1101001,lv = 33,bklv = 4,star = 2,mon = {id = 207,desc = "pt-4-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",id = 1040711,cardId = 1102002,lv = 33,bklv = 4,star = 2,mon = {id = 227,desc = "pt-4-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-4",id = 1040720,cardId = 1101003,lv = 33,bklv = 4,star = 2,mon = {id = 207,desc = "pt-4-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",id = 1040721,cardId = 1102005,lv = 33,bklv = 4,star = 2,mon = {id = 221,desc = "pt-4-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-4",id = 1040730,cardId = 1101014,lv = 33,bklv = 4,star = 2,mon = {id = 211,desc = "pt-4-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",id = 1040731,cardId = 1102020,lv = 33,bklv = 4,star = 2,mon = {id = 235,desc = "pt-4-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10408] = {
		[1] = {
			jlr = {cha = "pt-4",id = 1040810,cardId = 1101001,lv = 34,bklv = 4,star = 2,mon = {id = 207,desc = "pt-4-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",id = 1040811,cardId = 1102002,lv = 34,bklv = 4,star = 2,mon = {id = 230,desc = "pt-4-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-4",id = 1040820,cardId = 1101003,lv = 34,bklv = 4,star = 2,mon = {id = 205,desc = "pt-4-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",id = 1040821,cardId = 1102005,lv = 34,bklv = 4,star = 2,mon = {id = 229,desc = "pt-4-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-4",id = 1040830,cardId = 1101014,lv = 34,bklv = 4,star = 2,mon = {id = 210,desc = "pt-4-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",id = 1040831,cardId = 1102020,lv = 34,bklv = 4,star = 2,mon = {id = 234,desc = "pt-4-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10409] = {
		[1] = {
			jlr = {cha = "pt-4",id = 1040910,cardId = 1101001,lv = 35,bklv = 4,star = 2,mon = {id = 212,desc = "pt-4-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",id = 1040911,cardId = 1102002,lv = 35,bklv = 4,star = 2,mon = {id = 236,desc = "pt-4-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-4",id = 1040920,cardId = 1101003,lv = 35,bklv = 4,star = 2,mon = {id = 208,desc = "pt-4-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",id = 1040921,cardId = 1102005,lv = 35,bklv = 4,star = 2,mon = {id = 231,desc = "pt-4-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-4",id = 1040930,cardId = 1101014,lv = 35,bklv = 4,star = 2,mon = {id = 209,desc = "pt-4-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-4",id = 1040931,cardId = 1102020,lv = 35,bklv = 4,star = 2,mon = {id = 232,desc = "pt-4-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10501] = {
		[1] = {
			jlr = {cha = "pt-5",id = 1050110,cardId = 1101007,lv = 37,bklv = 4,star = 2,mon = {id = 212,desc = "pt-5-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",id = 1050111,cardId = 1102002,lv = 37,bklv = 4,star = 2,mon = {id = 236,desc = "pt-5-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-5",id = 1050120,cardId = 1101003,lv = 37,bklv = 4,star = 2,mon = {id = 208,desc = "pt-5-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",id = 1050121,cardId = 1102005,lv = 37,bklv = 4,star = 2,mon = {id = 231,desc = "pt-5-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-5",id = 1050130,cardId = 1101014,lv = 37,bklv = 4,star = 2,mon = {id = 209,desc = "pt-5-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",id = 1050131,cardId = 1102020,lv = 37,bklv = 4,star = 2,mon = {id = 232,desc = "pt-5-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10502] = {
		[1] = {
			jlr = {cha = "pt-5",id = 1050210,cardId = 1101007,lv = 38,bklv = 4,star = 2,mon = {id = 201,desc = "pt-5-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",id = 1050211,cardId = 1102002,lv = 38,bklv = 4,star = 2,mon = {id = 220,desc = "pt-5-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-5",id = 1050220,cardId = 1101003,lv = 38,bklv = 4,star = 2,mon = {id = 203,desc = "pt-5-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",id = 1050221,cardId = 1102005,lv = 38,bklv = 4,star = 2,mon = {id = 223,desc = "pt-5-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-5",id = 1050230,cardId = 1101014,lv = 38,bklv = 4,star = 2,mon = {id = 214,desc = "pt-5-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",id = 1050231,cardId = 1102020,lv = 38,bklv = 4,star = 2,mon = {id = 238,desc = "pt-5-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10503] = {
		[1] = {
			jlr = {cha = "pt-5",id = 1050310,cardId = 1101007,lv = 39,bklv = 4,star = 2,mon = {id = 212,desc = "pt-5-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",id = 1050311,cardId = 1102002,lv = 39,bklv = 4,star = 2,mon = {id = 236,desc = "pt-5-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-5",id = 1050320,cardId = 1101003,lv = 39,bklv = 4,star = 2,mon = {id = 208,desc = "pt-5-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",id = 1050321,cardId = 1102005,lv = 39,bklv = 4,star = 2,mon = {id = 231,desc = "pt-5-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-5",id = 1050330,cardId = 1101014,lv = 39,bklv = 4,star = 2,mon = {id = 209,desc = "pt-5-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",id = 1050331,cardId = 1102020,lv = 39,bklv = 4,star = 2,mon = {id = 232,desc = "pt-5-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10504] = {
		[1] = {
			jlr = {cha = "pt-5",id = 1050410,cardId = 1101007,lv = 40,bklv = 5,star = 2,mon = {id = 215,desc = "pt-5-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",id = 1050411,cardId = 1102002,lv = 40,bklv = 5,star = 2,mon = {id = 239,desc = "pt-5-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-5",id = 1050420,cardId = 1101003,lv = 40,bklv = 5,star = 2,mon = {id = 201,desc = "pt-5-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",id = 1050421,cardId = 1102005,lv = 40,bklv = 5,star = 2,mon = {id = 227,desc = "pt-5-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-5",id = 1050430,cardId = 1101014,lv = 40,bklv = 5,star = 2,mon = {id = 211,desc = "pt-5-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",id = 1050431,cardId = 1102020,lv = 40,bklv = 5,star = 2,mon = {id = 235,desc = "pt-5-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10505] = {
		[1] = {
			jlr = {cha = "pt-5",id = 1050510,cardId = 1101007,lv = 40,bklv = 5,star = 2,mon = {id = 206,desc = "pt-5-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",id = 1050511,cardId = 1102002,lv = 40,bklv = 5,star = 2,mon = {id = 225,desc = "pt-5-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-5",id = 1050520,cardId = 1101003,lv = 40,bklv = 5,star = 2,mon = {id = 203,desc = "pt-5-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",id = 1050521,cardId = 1102005,lv = 40,bklv = 5,star = 2,mon = {id = 223,desc = "pt-5-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-5",id = 1050530,cardId = 1101014,lv = 40,bklv = 5,star = 2,mon = {id = 212,desc = "pt-5-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",id = 1050531,cardId = 1102020,lv = 40,bklv = 5,star = 2,mon = {id = 236,desc = "pt-5-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10506] = {
		[1] = {
			jlr = {cha = "pt-5",id = 1050610,cardId = 1101007,lv = 41,bklv = 5,star = 2,mon = {id = 209,desc = "pt-5-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",id = 1050611,cardId = 1102002,lv = 41,bklv = 5,star = 2,mon = {id = 232,desc = "pt-5-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-5",id = 1050620,cardId = 1101003,lv = 41,bklv = 5,star = 2,mon = {id = 208,desc = "pt-5-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",id = 1050621,cardId = 1102005,lv = 41,bklv = 5,star = 2,mon = {id = 231,desc = "pt-5-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-5",id = 1050630,cardId = 1101014,lv = 41,bklv = 5,star = 2,mon = {id = 212,desc = "pt-5-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",id = 1050631,cardId = 1102020,lv = 41,bklv = 5,star = 2,mon = {id = 236,desc = "pt-5-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10507] = {
		[1] = {
			jlr = {cha = "pt-5",id = 1050710,cardId = 1101007,lv = 41,bklv = 5,star = 2,mon = {id = 213,desc = "pt-5-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",id = 1050711,cardId = 1102002,lv = 41,bklv = 5,star = 2,mon = {id = 237,desc = "pt-5-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-5",id = 1050720,cardId = 1101003,lv = 41,bklv = 5,star = 2,mon = {id = 207,desc = "pt-5-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",id = 1050721,cardId = 1102005,lv = 41,bklv = 5,star = 2,mon = {id = 221,desc = "pt-5-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-5",id = 1050730,cardId = 1101014,lv = 41,bklv = 5,star = 2,mon = {id = 211,desc = "pt-5-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",id = 1050731,cardId = 1102020,lv = 41,bklv = 5,star = 2,mon = {id = 235,desc = "pt-5-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10508] = {
		[1] = {
			jlr = {cha = "pt-5",id = 1050810,cardId = 1101007,lv = 42,bklv = 5,star = 2,mon = {id = 206,desc = "pt-5-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",id = 1050811,cardId = 1102002,lv = 42,bklv = 5,star = 2,mon = {id = 225,desc = "pt-5-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-5",id = 1050820,cardId = 1101003,lv = 42,bklv = 5,star = 2,mon = {id = 205,desc = "pt-5-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",id = 1050821,cardId = 1102005,lv = 42,bklv = 5,star = 2,mon = {id = 229,desc = "pt-5-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-5",id = 1050830,cardId = 1101014,lv = 42,bklv = 5,star = 2,mon = {id = 207,desc = "pt-5-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",id = 1050831,cardId = 1102020,lv = 42,bklv = 5,star = 2,mon = {id = 228,desc = "pt-5-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10509] = {
		[1] = {
			jlr = {cha = "pt-5",id = 1050910,cardId = 1101007,lv = 42,bklv = 5,star = 2,mon = {id = 212,desc = "pt-5-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",id = 1050911,cardId = 1102002,lv = 42,bklv = 5,star = 2,mon = {id = 236,desc = "pt-5-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-5",id = 1050920,cardId = 1101003,lv = 42,bklv = 5,star = 2,mon = {id = 208,desc = "pt-5-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",id = 1050921,cardId = 1102005,lv = 42,bklv = 5,star = 2,mon = {id = 231,desc = "pt-5-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-5",id = 1050930,cardId = 1101014,lv = 42,bklv = 5,star = 2,mon = {id = 209,desc = "pt-5-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",id = 1050931,cardId = 1102020,lv = 42,bklv = 5,star = 2,mon = {id = 232,desc = "pt-5-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10510] = {
		[1] = {
			jlr = {cha = "pt-5",id = 1051010,cardId = 1101007,lv = 43,bklv = 5,star = 2,mon = {id = 201,desc = "pt-5-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",id = 1051011,cardId = 1102002,lv = 43,bklv = 5,star = 2,mon = {id = 220,desc = "pt-5-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-5",id = 1051020,cardId = 1101003,lv = 43,bklv = 5,star = 2,mon = {id = 203,desc = "pt-5-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",id = 1051021,cardId = 1102005,lv = 43,bklv = 5,star = 2,mon = {id = 223,desc = "pt-5-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-5",id = 1051030,cardId = 1101014,lv = 43,bklv = 5,star = 2,mon = {id = 214,desc = "pt-5-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",id = 1051031,cardId = 1102020,lv = 43,bklv = 5,star = 2,mon = {id = 238,desc = "pt-5-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10511] = {
		[1] = {
			jlr = {cha = "pt-5",id = 1051110,cardId = 1101007,lv = 43,bklv = 5,star = 2,mon = {id = 212,desc = "pt-5-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",id = 1051111,cardId = 1102002,lv = 43,bklv = 5,star = 2,mon = {id = 236,desc = "pt-5-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-5",id = 1051120,cardId = 1101003,lv = 43,bklv = 5,star = 2,mon = {id = 208,desc = "pt-5-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",id = 1051121,cardId = 1102005,lv = 43,bklv = 5,star = 2,mon = {id = 231,desc = "pt-5-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-5",id = 1051130,cardId = 1101014,lv = 43,bklv = 5,star = 2,mon = {id = 209,desc = "pt-5-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",id = 1051131,cardId = 1102020,lv = 43,bklv = 5,star = 2,mon = {id = 232,desc = "pt-5-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10512] = {
		[1] = {
			jlr = {cha = "pt-5",id = 1051210,cardId = 1101007,lv = 43,bklv = 5,star = 2,mon = {id = 215,desc = "pt-5-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",id = 1051211,cardId = 1102002,lv = 43,bklv = 5,star = 2,mon = {id = 239,desc = "pt-5-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-5",id = 1051220,cardId = 1101003,lv = 43,bklv = 5,star = 2,mon = {id = 201,desc = "pt-5-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",id = 1051221,cardId = 1102005,lv = 43,bklv = 5,star = 2,mon = {id = 227,desc = "pt-5-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-5",id = 1051230,cardId = 1101014,lv = 43,bklv = 5,star = 2,mon = {id = 211,desc = "pt-5-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",id = 1051231,cardId = 1102020,lv = 43,bklv = 5,star = 2,mon = {id = 235,desc = "pt-5-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10513] = {
		[1] = {
			jlr = {cha = "pt-5",id = 1051310,cardId = 1101007,lv = 44,bklv = 5,star = 2,mon = {id = 209,desc = "pt-5-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",id = 1051311,cardId = 1102002,lv = 44,bklv = 5,star = 2,mon = {id = 232,desc = "pt-5-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-5",id = 1051320,cardId = 1101003,lv = 44,bklv = 5,star = 2,mon = {id = 208,desc = "pt-5-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",id = 1051321,cardId = 1102005,lv = 44,bklv = 5,star = 2,mon = {id = 231,desc = "pt-5-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-5",id = 1051330,cardId = 1101014,lv = 44,bklv = 5,star = 2,mon = {id = 212,desc = "pt-5-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",id = 1051331,cardId = 1102020,lv = 44,bklv = 5,star = 2,mon = {id = 236,desc = "pt-5-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10514] = {
		[1] = {
			jlr = {cha = "pt-5",id = 1051410,cardId = 1101007,lv = 44,bklv = 5,star = 2,mon = {id = 213,desc = "pt-5-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",id = 1051411,cardId = 1102002,lv = 44,bklv = 5,star = 2,mon = {id = 237,desc = "pt-5-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-5",id = 1051420,cardId = 1101003,lv = 44,bklv = 5,star = 2,mon = {id = 207,desc = "pt-5-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",id = 1051421,cardId = 1102005,lv = 44,bklv = 5,star = 2,mon = {id = 221,desc = "pt-5-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-5",id = 1051430,cardId = 1101014,lv = 44,bklv = 5,star = 2,mon = {id = 211,desc = "pt-5-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",id = 1051431,cardId = 1102020,lv = 44,bklv = 5,star = 2,mon = {id = 235,desc = "pt-5-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10515] = {
		[1] = {
			jlr = {cha = "pt-5",id = 1051510,cardId = 1101007,lv = 45,bklv = 5,star = 2,mon = {id = 205,desc = "pt-5-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",id = 1051511,cardId = 1102002,lv = 45,bklv = 5,star = 2,mon = {id = 219,desc = "pt-5-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-5",id = 1051520,cardId = 1101003,lv = 45,bklv = 5,star = 2,mon = {id = 204,desc = "pt-5-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",id = 1051521,cardId = 1102005,lv = 45,bklv = 5,star = 2,mon = {id = 224,desc = "pt-5-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-5",id = 1051530,cardId = 1101014,lv = 45,bklv = 5,star = 2,mon = {id = 207,desc = "pt-5-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-5",id = 1051531,cardId = 1102020,lv = 45,bklv = 5,star = 2,mon = {id = 228,desc = "pt-5-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10601] = {
		[1] = {
			jlr = {cha = "pt-6",id = 1060110,cardId = 1101007,lv = 47,bklv = 5,star = 2,mon = {id = 212,desc = "pt-6-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",id = 1060111,cardId = 1102012,lv = 47,bklv = 5,star = 2,mon = {id = 236,desc = "pt-6-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-6",id = 1060120,cardId = 1101003,lv = 47,bklv = 5,star = 2,mon = {id = 208,desc = "pt-6-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",id = 1060121,cardId = 1102005,lv = 47,bklv = 5,star = 2,mon = {id = 231,desc = "pt-6-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-6",id = 1060130,cardId = 1101014,lv = 47,bklv = 5,star = 2,mon = {id = 213,desc = "pt-6-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",id = 1060131,cardId = 1102020,lv = 47,bklv = 5,star = 2,mon = {id = 237,desc = "pt-6-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10602] = {
		[1] = {
			jlr = {cha = "pt-6",id = 1060210,cardId = 1101007,lv = 48,bklv = 5,star = 2,mon = {id = 201,desc = "pt-6-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",id = 1060211,cardId = 1102012,lv = 48,bklv = 5,star = 2,mon = {id = 220,desc = "pt-6-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-6",id = 1060220,cardId = 1101003,lv = 48,bklv = 5,star = 2,mon = {id = 203,desc = "pt-6-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",id = 1060221,cardId = 1102005,lv = 48,bklv = 5,star = 2,mon = {id = 223,desc = "pt-6-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-6",id = 1060230,cardId = 1101014,lv = 48,bklv = 5,star = 2,mon = {id = 214,desc = "pt-6-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",id = 1060231,cardId = 1102020,lv = 48,bklv = 5,star = 2,mon = {id = 238,desc = "pt-6-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10603] = {
		[1] = {
			jlr = {cha = "pt-6",id = 1060310,cardId = 1101007,lv = 49,bklv = 5,star = 2,mon = {id = 212,desc = "pt-6-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",id = 1060311,cardId = 1102012,lv = 49,bklv = 5,star = 2,mon = {id = 236,desc = "pt-6-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-6",id = 1060320,cardId = 1101003,lv = 49,bklv = 5,star = 2,mon = {id = 208,desc = "pt-6-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",id = 1060321,cardId = 1102005,lv = 49,bklv = 5,star = 2,mon = {id = 231,desc = "pt-6-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-6",id = 1060330,cardId = 1101014,lv = 49,bklv = 5,star = 2,mon = {id = 209,desc = "pt-6-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",id = 1060331,cardId = 1102020,lv = 49,bklv = 5,star = 2,mon = {id = 232,desc = "pt-6-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10604] = {
		[1] = {
			jlr = {cha = "pt-6",id = 1060410,cardId = 1101007,lv = 50,bklv = 6,star = 2,mon = {id = 215,desc = "pt-6-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",id = 1060411,cardId = 1102012,lv = 50,bklv = 6,star = 2,mon = {id = 239,desc = "pt-6-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-6",id = 1060420,cardId = 1101003,lv = 50,bklv = 6,star = 2,mon = {id = 201,desc = "pt-6-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",id = 1060421,cardId = 1102005,lv = 50,bklv = 6,star = 2,mon = {id = 227,desc = "pt-6-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-6",id = 1060430,cardId = 1101014,lv = 50,bklv = 6,star = 2,mon = {id = 211,desc = "pt-6-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",id = 1060431,cardId = 1102020,lv = 50,bklv = 6,star = 2,mon = {id = 235,desc = "pt-6-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10605] = {
		[1] = {
			jlr = {cha = "pt-6",id = 1060510,cardId = 1101007,lv = 50,bklv = 6,star = 2,mon = {id = 206,desc = "pt-6-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",id = 1060511,cardId = 1102012,lv = 50,bklv = 6,star = 2,mon = {id = 225,desc = "pt-6-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-6",id = 1060520,cardId = 1101003,lv = 50,bklv = 6,star = 2,mon = {id = 203,desc = "pt-6-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",id = 1060521,cardId = 1102005,lv = 50,bklv = 6,star = 2,mon = {id = 223,desc = "pt-6-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-6",id = 1060530,cardId = 1101014,lv = 50,bklv = 6,star = 2,mon = {id = 212,desc = "pt-6-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",id = 1060531,cardId = 1102020,lv = 50,bklv = 6,star = 2,mon = {id = 236,desc = "pt-6-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10606] = {
		[1] = {
			jlr = {cha = "pt-6",id = 1060610,cardId = 1101007,lv = 51,bklv = 6,star = 2,mon = {id = 209,desc = "pt-6-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",id = 1060611,cardId = 1102012,lv = 51,bklv = 6,star = 2,mon = {id = 232,desc = "pt-6-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-6",id = 1060620,cardId = 1101003,lv = 51,bklv = 6,star = 2,mon = {id = 208,desc = "pt-6-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",id = 1060621,cardId = 1102005,lv = 51,bklv = 6,star = 2,mon = {id = 231,desc = "pt-6-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-6",id = 1060630,cardId = 1101014,lv = 51,bklv = 6,star = 2,mon = {id = 212,desc = "pt-6-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",id = 1060631,cardId = 1102020,lv = 51,bklv = 6,star = 2,mon = {id = 236,desc = "pt-6-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10607] = {
		[1] = {
			jlr = {cha = "pt-6",id = 1060710,cardId = 1101007,lv = 51,bklv = 6,star = 2,mon = {id = 207,desc = "pt-6-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",id = 1060711,cardId = 1102012,lv = 51,bklv = 6,star = 2,mon = {id = 227,desc = "pt-6-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-6",id = 1060720,cardId = 1101003,lv = 51,bklv = 6,star = 2,mon = {id = 207,desc = "pt-6-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",id = 1060721,cardId = 1102005,lv = 51,bklv = 6,star = 2,mon = {id = 221,desc = "pt-6-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-6",id = 1060730,cardId = 1101014,lv = 51,bklv = 6,star = 2,mon = {id = 211,desc = "pt-6-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",id = 1060731,cardId = 1102020,lv = 51,bklv = 6,star = 2,mon = {id = 235,desc = "pt-6-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10608] = {
		[1] = {
			jlr = {cha = "pt-6",id = 1060810,cardId = 1101007,lv = 52,bklv = 6,star = 2,mon = {id = 207,desc = "pt-6-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",id = 1060811,cardId = 1102012,lv = 52,bklv = 6,star = 2,mon = {id = 230,desc = "pt-6-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-6",id = 1060820,cardId = 1101003,lv = 52,bklv = 6,star = 2,mon = {id = 205,desc = "pt-6-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",id = 1060821,cardId = 1102005,lv = 52,bklv = 6,star = 2,mon = {id = 229,desc = "pt-6-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-6",id = 1060830,cardId = 1101014,lv = 52,bklv = 6,star = 2,mon = {id = 210,desc = "pt-6-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",id = 1060831,cardId = 1102020,lv = 52,bklv = 6,star = 2,mon = {id = 234,desc = "pt-6-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10609] = {
		[1] = {
			jlr = {cha = "pt-6",id = 1060910,cardId = 1101007,lv = 52,bklv = 6,star = 2,mon = {id = 212,desc = "pt-6-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",id = 1060911,cardId = 1102012,lv = 52,bklv = 6,star = 2,mon = {id = 236,desc = "pt-6-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-6",id = 1060920,cardId = 1101003,lv = 52,bklv = 6,star = 2,mon = {id = 208,desc = "pt-6-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",id = 1060921,cardId = 1102005,lv = 52,bklv = 6,star = 2,mon = {id = 231,desc = "pt-6-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-6",id = 1060930,cardId = 1101014,lv = 52,bklv = 6,star = 2,mon = {id = 209,desc = "pt-6-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",id = 1060931,cardId = 1102020,lv = 52,bklv = 6,star = 2,mon = {id = 232,desc = "pt-6-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10610] = {
		[1] = {
			jlr = {cha = "pt-6",id = 1061010,cardId = 1101007,lv = 53,bklv = 6,star = 2,mon = {id = 201,desc = "pt-6-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",id = 1061011,cardId = 1102012,lv = 53,bklv = 6,star = 2,mon = {id = 220,desc = "pt-6-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-6",id = 1061020,cardId = 1101003,lv = 53,bklv = 6,star = 2,mon = {id = 203,desc = "pt-6-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",id = 1061021,cardId = 1102005,lv = 53,bklv = 6,star = 2,mon = {id = 223,desc = "pt-6-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-6",id = 1061030,cardId = 1101014,lv = 53,bklv = 6,star = 2,mon = {id = 214,desc = "pt-6-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",id = 1061031,cardId = 1102020,lv = 53,bklv = 6,star = 2,mon = {id = 238,desc = "pt-6-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10611] = {
		[1] = {
			jlr = {cha = "pt-6",id = 1061110,cardId = 1101007,lv = 53,bklv = 6,star = 2,mon = {id = 212,desc = "pt-6-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",id = 1061111,cardId = 1102012,lv = 53,bklv = 6,star = 2,mon = {id = 236,desc = "pt-6-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-6",id = 1061120,cardId = 1101003,lv = 53,bklv = 6,star = 2,mon = {id = 208,desc = "pt-6-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",id = 1061121,cardId = 1102005,lv = 53,bklv = 6,star = 2,mon = {id = 231,desc = "pt-6-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-6",id = 1061130,cardId = 1101014,lv = 53,bklv = 6,star = 2,mon = {id = 209,desc = "pt-6-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",id = 1061131,cardId = 1102020,lv = 53,bklv = 6,star = 2,mon = {id = 232,desc = "pt-6-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10612] = {
		[1] = {
			jlr = {cha = "pt-6",id = 1061210,cardId = 1101007,lv = 53,bklv = 6,star = 2,mon = {id = 215,desc = "pt-6-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",id = 1061211,cardId = 1102012,lv = 53,bklv = 6,star = 2,mon = {id = 239,desc = "pt-6-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-6",id = 1061220,cardId = 1101003,lv = 53,bklv = 6,star = 2,mon = {id = 201,desc = "pt-6-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",id = 1061221,cardId = 1102005,lv = 53,bklv = 6,star = 2,mon = {id = 227,desc = "pt-6-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-6",id = 1061230,cardId = 1101014,lv = 53,bklv = 6,star = 2,mon = {id = 211,desc = "pt-6-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",id = 1061231,cardId = 1102020,lv = 53,bklv = 6,star = 2,mon = {id = 235,desc = "pt-6-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10613] = {
		[1] = {
			jlr = {cha = "pt-6",id = 1061310,cardId = 1101007,lv = 54,bklv = 6,star = 2,mon = {id = 209,desc = "pt-6-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",id = 1061311,cardId = 1102012,lv = 54,bklv = 6,star = 2,mon = {id = 232,desc = "pt-6-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-6",id = 1061320,cardId = 1101003,lv = 54,bklv = 6,star = 2,mon = {id = 208,desc = "pt-6-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",id = 1061321,cardId = 1102005,lv = 54,bklv = 6,star = 2,mon = {id = 231,desc = "pt-6-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-6",id = 1061330,cardId = 1101014,lv = 54,bklv = 6,star = 2,mon = {id = 212,desc = "pt-6-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",id = 1061331,cardId = 1102020,lv = 54,bklv = 6,star = 2,mon = {id = 236,desc = "pt-6-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10614] = {
		[1] = {
			jlr = {cha = "pt-6",id = 1061410,cardId = 1101007,lv = 54,bklv = 6,star = 2,mon = {id = 207,desc = "pt-6-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",id = 1061411,cardId = 1102012,lv = 54,bklv = 6,star = 2,mon = {id = 227,desc = "pt-6-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-6",id = 1061420,cardId = 1101003,lv = 54,bklv = 6,star = 2,mon = {id = 207,desc = "pt-6-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",id = 1061421,cardId = 1102005,lv = 54,bklv = 6,star = 2,mon = {id = 221,desc = "pt-6-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-6",id = 1061430,cardId = 1101014,lv = 54,bklv = 6,star = 2,mon = {id = 211,desc = "pt-6-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",id = 1061431,cardId = 1102020,lv = 54,bklv = 6,star = 2,mon = {id = 235,desc = "pt-6-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10615] = {
		[1] = {
			jlr = {cha = "pt-6",id = 1061510,cardId = 1101007,lv = 55,bklv = 6,star = 2,mon = {id = 205,desc = "pt-6-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",id = 1061511,cardId = 1102012,lv = 55,bklv = 6,star = 2,mon = {id = 219,desc = "pt-6-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-6",id = 1061520,cardId = 1101003,lv = 55,bklv = 6,star = 2,mon = {id = 204,desc = "pt-6-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",id = 1061521,cardId = 1102005,lv = 55,bklv = 6,star = 2,mon = {id = 224,desc = "pt-6-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-6",id = 1061530,cardId = 1101014,lv = 55,bklv = 6,star = 2,mon = {id = 207,desc = "pt-6-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-6",id = 1061531,cardId = 1102020,lv = 55,bklv = 6,star = 2,mon = {id = 228,desc = "pt-6-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10701] = {
		[1] = {
			jlr = {cha = "pt-7",id = 1070110,cardId = 1101007,lv = 57,bklv = 6,star = 2,mon = {id = 212,desc = "pt-7-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",id = 1070111,cardId = 1102012,lv = 57,bklv = 6,star = 2,mon = {id = 236,desc = "pt-7-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-7",id = 1070120,cardId = 1101003,lv = 57,bklv = 6,star = 2,mon = {id = 208,desc = "pt-7-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",id = 1070121,cardId = 1102005,lv = 57,bklv = 6,star = 2,mon = {id = 231,desc = "pt-7-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-7",id = 1070130,cardId = 1101014,lv = 57,bklv = 6,star = 2,mon = {id = 213,desc = "pt-7-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",id = 1070131,cardId = 1102020,lv = 57,bklv = 6,star = 2,mon = {id = 237,desc = "pt-7-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10702] = {
		[1] = {
			jlr = {cha = "pt-7",id = 1070210,cardId = 1101007,lv = 58,bklv = 6,star = 2,mon = {id = 201,desc = "pt-7-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",id = 1070211,cardId = 1102012,lv = 58,bklv = 6,star = 2,mon = {id = 220,desc = "pt-7-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-7",id = 1070220,cardId = 1101003,lv = 58,bklv = 6,star = 2,mon = {id = 203,desc = "pt-7-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",id = 1070221,cardId = 1102005,lv = 58,bklv = 6,star = 2,mon = {id = 223,desc = "pt-7-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-7",id = 1070230,cardId = 1101014,lv = 58,bklv = 6,star = 2,mon = {id = 214,desc = "pt-7-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",id = 1070231,cardId = 1102020,lv = 58,bklv = 6,star = 2,mon = {id = 238,desc = "pt-7-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10703] = {
		[1] = {
			jlr = {cha = "pt-7",id = 1070310,cardId = 1101007,lv = 59,bklv = 6,star = 2,mon = {id = 212,desc = "pt-7-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",id = 1070311,cardId = 1102012,lv = 59,bklv = 6,star = 2,mon = {id = 236,desc = "pt-7-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-7",id = 1070320,cardId = 1101003,lv = 59,bklv = 6,star = 2,mon = {id = 208,desc = "pt-7-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",id = 1070321,cardId = 1102005,lv = 59,bklv = 6,star = 2,mon = {id = 231,desc = "pt-7-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-7",id = 1070330,cardId = 1101014,lv = 59,bklv = 6,star = 2,mon = {id = 209,desc = "pt-7-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",id = 1070331,cardId = 1102020,lv = 59,bklv = 6,star = 2,mon = {id = 232,desc = "pt-7-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10704] = {
		[1] = {
			jlr = {cha = "pt-7",id = 1070410,cardId = 1101007,lv = 60,bklv = 7,star = 2,mon = {id = 215,desc = "pt-7-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",id = 1070411,cardId = 1102012,lv = 60,bklv = 7,star = 2,mon = {id = 239,desc = "pt-7-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-7",id = 1070420,cardId = 1101003,lv = 60,bklv = 7,star = 2,mon = {id = 201,desc = "pt-7-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",id = 1070421,cardId = 1102005,lv = 60,bklv = 7,star = 2,mon = {id = 227,desc = "pt-7-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-7",id = 1070430,cardId = 1101014,lv = 60,bklv = 7,star = 2,mon = {id = 211,desc = "pt-7-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",id = 1070431,cardId = 1102020,lv = 60,bklv = 7,star = 2,mon = {id = 235,desc = "pt-7-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10705] = {
		[1] = {
			jlr = {cha = "pt-7",id = 1070510,cardId = 1101007,lv = 60,bklv = 7,star = 2,mon = {id = 206,desc = "pt-7-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",id = 1070511,cardId = 1102012,lv = 60,bklv = 7,star = 2,mon = {id = 225,desc = "pt-7-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-7",id = 1070520,cardId = 1101003,lv = 60,bklv = 7,star = 2,mon = {id = 203,desc = "pt-7-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",id = 1070521,cardId = 1102005,lv = 60,bklv = 7,star = 2,mon = {id = 223,desc = "pt-7-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-7",id = 1070530,cardId = 1101014,lv = 60,bklv = 7,star = 2,mon = {id = 212,desc = "pt-7-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",id = 1070531,cardId = 1102020,lv = 60,bklv = 7,star = 2,mon = {id = 236,desc = "pt-7-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10706] = {
		[1] = {
			jlr = {cha = "pt-7",id = 1070610,cardId = 1101007,lv = 61,bklv = 7,star = 2,mon = {id = 209,desc = "pt-7-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",id = 1070611,cardId = 1102012,lv = 61,bklv = 7,star = 2,mon = {id = 232,desc = "pt-7-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-7",id = 1070620,cardId = 1101003,lv = 61,bklv = 7,star = 2,mon = {id = 208,desc = "pt-7-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",id = 1070621,cardId = 1102005,lv = 61,bklv = 7,star = 2,mon = {id = 231,desc = "pt-7-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-7",id = 1070630,cardId = 1101014,lv = 61,bklv = 7,star = 2,mon = {id = 212,desc = "pt-7-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",id = 1070631,cardId = 1102020,lv = 61,bklv = 7,star = 2,mon = {id = 236,desc = "pt-7-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10707] = {
		[1] = {
			jlr = {cha = "pt-7",id = 1070710,cardId = 1101007,lv = 61,bklv = 7,star = 2,mon = {id = 207,desc = "pt-7-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",id = 1070711,cardId = 1102012,lv = 61,bklv = 7,star = 2,mon = {id = 227,desc = "pt-7-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-7",id = 1070720,cardId = 1101003,lv = 61,bklv = 7,star = 2,mon = {id = 207,desc = "pt-7-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",id = 1070721,cardId = 1102005,lv = 61,bklv = 7,star = 2,mon = {id = 221,desc = "pt-7-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-7",id = 1070730,cardId = 1101014,lv = 61,bklv = 7,star = 2,mon = {id = 211,desc = "pt-7-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",id = 1070731,cardId = 1102020,lv = 61,bklv = 7,star = 2,mon = {id = 235,desc = "pt-7-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10708] = {
		[1] = {
			jlr = {cha = "pt-7",id = 1070810,cardId = 1101007,lv = 62,bklv = 7,star = 2,mon = {id = 207,desc = "pt-7-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",id = 1070811,cardId = 1102012,lv = 62,bklv = 7,star = 2,mon = {id = 230,desc = "pt-7-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-7",id = 1070820,cardId = 1101003,lv = 62,bklv = 7,star = 2,mon = {id = 205,desc = "pt-7-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",id = 1070821,cardId = 1102005,lv = 62,bklv = 7,star = 2,mon = {id = 229,desc = "pt-7-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-7",id = 1070830,cardId = 1101014,lv = 62,bklv = 7,star = 2,mon = {id = 210,desc = "pt-7-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",id = 1070831,cardId = 1102020,lv = 62,bklv = 7,star = 2,mon = {id = 234,desc = "pt-7-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10709] = {
		[1] = {
			jlr = {cha = "pt-7",id = 1070910,cardId = 1101007,lv = 62,bklv = 7,star = 2,mon = {id = 212,desc = "pt-7-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",id = 1070911,cardId = 1102012,lv = 62,bklv = 7,star = 2,mon = {id = 236,desc = "pt-7-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-7",id = 1070920,cardId = 1101003,lv = 62,bklv = 7,star = 2,mon = {id = 208,desc = "pt-7-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",id = 1070921,cardId = 1102005,lv = 62,bklv = 7,star = 2,mon = {id = 231,desc = "pt-7-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-7",id = 1070930,cardId = 1101014,lv = 62,bklv = 7,star = 2,mon = {id = 209,desc = "pt-7-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",id = 1070931,cardId = 1102020,lv = 62,bklv = 7,star = 2,mon = {id = 232,desc = "pt-7-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10710] = {
		[1] = {
			jlr = {cha = "pt-7",id = 1071010,cardId = 1101007,lv = 63,bklv = 7,star = 2,mon = {id = 201,desc = "pt-7-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",id = 1071011,cardId = 1102012,lv = 63,bklv = 7,star = 2,mon = {id = 220,desc = "pt-7-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-7",id = 1071020,cardId = 1101003,lv = 63,bklv = 7,star = 2,mon = {id = 203,desc = "pt-7-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",id = 1071021,cardId = 1102005,lv = 63,bklv = 7,star = 2,mon = {id = 223,desc = "pt-7-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-7",id = 1071030,cardId = 1101014,lv = 63,bklv = 7,star = 2,mon = {id = 214,desc = "pt-7-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",id = 1071031,cardId = 1102020,lv = 63,bklv = 7,star = 2,mon = {id = 238,desc = "pt-7-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10711] = {
		[1] = {
			jlr = {cha = "pt-7",id = 1071110,cardId = 1101007,lv = 63,bklv = 7,star = 2,mon = {id = 212,desc = "pt-7-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",id = 1071111,cardId = 1102012,lv = 63,bklv = 7,star = 2,mon = {id = 236,desc = "pt-7-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-7",id = 1071120,cardId = 1101003,lv = 63,bklv = 7,star = 2,mon = {id = 208,desc = "pt-7-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",id = 1071121,cardId = 1102005,lv = 63,bklv = 7,star = 2,mon = {id = 231,desc = "pt-7-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-7",id = 1071130,cardId = 1101014,lv = 63,bklv = 7,star = 2,mon = {id = 209,desc = "pt-7-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",id = 1071131,cardId = 1102020,lv = 63,bklv = 7,star = 2,mon = {id = 232,desc = "pt-7-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10712] = {
		[1] = {
			jlr = {cha = "pt-7",id = 1071210,cardId = 1101007,lv = 63,bklv = 7,star = 2,mon = {id = 215,desc = "pt-7-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",id = 1071211,cardId = 1102012,lv = 63,bklv = 7,star = 2,mon = {id = 239,desc = "pt-7-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-7",id = 1071220,cardId = 1101003,lv = 63,bklv = 7,star = 2,mon = {id = 201,desc = "pt-7-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",id = 1071221,cardId = 1102005,lv = 63,bklv = 7,star = 2,mon = {id = 227,desc = "pt-7-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-7",id = 1071230,cardId = 1101014,lv = 63,bklv = 7,star = 2,mon = {id = 211,desc = "pt-7-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",id = 1071231,cardId = 1102020,lv = 63,bklv = 7,star = 2,mon = {id = 235,desc = "pt-7-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10713] = {
		[1] = {
			jlr = {cha = "pt-7",id = 1071310,cardId = 1101007,lv = 64,bklv = 7,star = 2,mon = {id = 209,desc = "pt-7-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",id = 1071311,cardId = 1102012,lv = 64,bklv = 7,star = 2,mon = {id = 232,desc = "pt-7-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-7",id = 1071320,cardId = 1101003,lv = 64,bklv = 7,star = 2,mon = {id = 208,desc = "pt-7-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",id = 1071321,cardId = 1102005,lv = 64,bklv = 7,star = 2,mon = {id = 231,desc = "pt-7-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-7",id = 1071330,cardId = 1101014,lv = 64,bklv = 7,star = 2,mon = {id = 212,desc = "pt-7-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",id = 1071331,cardId = 1102020,lv = 64,bklv = 7,star = 2,mon = {id = 236,desc = "pt-7-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10714] = {
		[1] = {
			jlr = {cha = "pt-7",id = 1071410,cardId = 1101007,lv = 64,bklv = 7,star = 2,mon = {id = 207,desc = "pt-7-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",id = 1071411,cardId = 1102012,lv = 64,bklv = 7,star = 2,mon = {id = 227,desc = "pt-7-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-7",id = 1071420,cardId = 1101003,lv = 64,bklv = 7,star = 2,mon = {id = 207,desc = "pt-7-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",id = 1071421,cardId = 1102005,lv = 64,bklv = 7,star = 2,mon = {id = 221,desc = "pt-7-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-7",id = 1071430,cardId = 1101014,lv = 64,bklv = 7,star = 2,mon = {id = 211,desc = "pt-7-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",id = 1071431,cardId = 1102020,lv = 64,bklv = 7,star = 2,mon = {id = 235,desc = "pt-7-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10715] = {
		[1] = {
			jlr = {cha = "pt-7",id = 1071510,cardId = 1101007,lv = 65,bklv = 7,star = 2,mon = {id = 205,desc = "pt-7-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",id = 1071511,cardId = 1102012,lv = 65,bklv = 7,star = 2,mon = {id = 219,desc = "pt-7-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-7",id = 1071520,cardId = 1101003,lv = 65,bklv = 7,star = 2,mon = {id = 204,desc = "pt-7-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",id = 1071521,cardId = 1102005,lv = 65,bklv = 7,star = 2,mon = {id = 224,desc = "pt-7-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-7",id = 1071530,cardId = 1101014,lv = 65,bklv = 7,star = 2,mon = {id = 207,desc = "pt-7-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-7",id = 1071531,cardId = 1102020,lv = 65,bklv = 7,star = 2,mon = {id = 228,desc = "pt-7-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10801] = {
		[1] = {
			jlr = {cha = "pt-8",id = 1080110,cardId = 1101007,lv = 67,bklv = 7,star = 2,mon = {id = 212,desc = "pt-8-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",id = 1080111,cardId = 1102012,lv = 67,bklv = 7,star = 2,mon = {id = 236,desc = "pt-8-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-8",id = 1080120,cardId = 1101003,lv = 67,bklv = 7,star = 2,mon = {id = 208,desc = "pt-8-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",id = 1080121,cardId = 1102005,lv = 67,bklv = 7,star = 2,mon = {id = 231,desc = "pt-8-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-8",id = 1080130,cardId = 1101014,lv = 67,bklv = 7,star = 2,mon = {id = 213,desc = "pt-8-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",id = 1080131,cardId = 1102020,lv = 67,bklv = 7,star = 2,mon = {id = 237,desc = "pt-8-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10802] = {
		[1] = {
			jlr = {cha = "pt-8",id = 1080210,cardId = 1101007,lv = 68,bklv = 7,star = 2,mon = {id = 201,desc = "pt-8-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",id = 1080211,cardId = 1102012,lv = 68,bklv = 7,star = 2,mon = {id = 220,desc = "pt-8-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-8",id = 1080220,cardId = 1101003,lv = 68,bklv = 7,star = 2,mon = {id = 203,desc = "pt-8-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",id = 1080221,cardId = 1102005,lv = 68,bklv = 7,star = 2,mon = {id = 223,desc = "pt-8-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-8",id = 1080230,cardId = 1101014,lv = 68,bklv = 7,star = 2,mon = {id = 214,desc = "pt-8-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",id = 1080231,cardId = 1102020,lv = 68,bklv = 7,star = 2,mon = {id = 238,desc = "pt-8-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10803] = {
		[1] = {
			jlr = {cha = "pt-8",id = 1080310,cardId = 1101007,lv = 69,bklv = 7,star = 2,mon = {id = 212,desc = "pt-8-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",id = 1080311,cardId = 1102012,lv = 69,bklv = 7,star = 2,mon = {id = 236,desc = "pt-8-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-8",id = 1080320,cardId = 1101003,lv = 69,bklv = 7,star = 2,mon = {id = 208,desc = "pt-8-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",id = 1080321,cardId = 1102005,lv = 69,bklv = 7,star = 2,mon = {id = 231,desc = "pt-8-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-8",id = 1080330,cardId = 1101014,lv = 69,bklv = 7,star = 2,mon = {id = 209,desc = "pt-8-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",id = 1080331,cardId = 1102020,lv = 69,bklv = 7,star = 2,mon = {id = 232,desc = "pt-8-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10804] = {
		[1] = {
			jlr = {cha = "pt-8",id = 1080410,cardId = 1101007,lv = 70,bklv = 8,star = 2,mon = {id = 215,desc = "pt-8-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",id = 1080411,cardId = 1102012,lv = 70,bklv = 8,star = 2,mon = {id = 239,desc = "pt-8-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-8",id = 1080420,cardId = 1101003,lv = 70,bklv = 8,star = 2,mon = {id = 201,desc = "pt-8-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",id = 1080421,cardId = 1102005,lv = 70,bklv = 8,star = 2,mon = {id = 227,desc = "pt-8-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-8",id = 1080430,cardId = 1101014,lv = 70,bklv = 8,star = 2,mon = {id = 211,desc = "pt-8-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",id = 1080431,cardId = 1102020,lv = 70,bklv = 8,star = 2,mon = {id = 235,desc = "pt-8-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10805] = {
		[1] = {
			jlr = {cha = "pt-8",id = 1080510,cardId = 1101007,lv = 70,bklv = 8,star = 2,mon = {id = 206,desc = "pt-8-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",id = 1080511,cardId = 1102012,lv = 70,bklv = 8,star = 2,mon = {id = 225,desc = "pt-8-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-8",id = 1080520,cardId = 1101003,lv = 70,bklv = 8,star = 2,mon = {id = 203,desc = "pt-8-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",id = 1080521,cardId = 1102005,lv = 70,bklv = 8,star = 2,mon = {id = 223,desc = "pt-8-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-8",id = 1080530,cardId = 1101014,lv = 70,bklv = 8,star = 2,mon = {id = 212,desc = "pt-8-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",id = 1080531,cardId = 1102020,lv = 70,bklv = 8,star = 2,mon = {id = 236,desc = "pt-8-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10806] = {
		[1] = {
			jlr = {cha = "pt-8",id = 1080610,cardId = 1101007,lv = 71,bklv = 8,star = 2,mon = {id = 209,desc = "pt-8-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",id = 1080611,cardId = 1102012,lv = 71,bklv = 8,star = 2,mon = {id = 232,desc = "pt-8-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-8",id = 1080620,cardId = 1101003,lv = 71,bklv = 8,star = 2,mon = {id = 208,desc = "pt-8-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",id = 1080621,cardId = 1102005,lv = 71,bklv = 8,star = 2,mon = {id = 231,desc = "pt-8-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-8",id = 1080630,cardId = 1101014,lv = 71,bklv = 8,star = 2,mon = {id = 212,desc = "pt-8-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",id = 1080631,cardId = 1102020,lv = 71,bklv = 8,star = 2,mon = {id = 236,desc = "pt-8-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10807] = {
		[1] = {
			jlr = {cha = "pt-8",id = 1080710,cardId = 1101007,lv = 71,bklv = 8,star = 2,mon = {id = 207,desc = "pt-8-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",id = 1080711,cardId = 1102012,lv = 71,bklv = 8,star = 2,mon = {id = 227,desc = "pt-8-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-8",id = 1080720,cardId = 1101003,lv = 71,bklv = 8,star = 2,mon = {id = 207,desc = "pt-8-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",id = 1080721,cardId = 1102005,lv = 71,bklv = 8,star = 2,mon = {id = 221,desc = "pt-8-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-8",id = 1080730,cardId = 1101014,lv = 71,bklv = 8,star = 2,mon = {id = 211,desc = "pt-8-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",id = 1080731,cardId = 1102020,lv = 71,bklv = 8,star = 2,mon = {id = 235,desc = "pt-8-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10808] = {
		[1] = {
			jlr = {cha = "pt-8",id = 1080810,cardId = 1101007,lv = 72,bklv = 8,star = 2,mon = {id = 207,desc = "pt-8-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",id = 1080811,cardId = 1102012,lv = 72,bklv = 8,star = 2,mon = {id = 230,desc = "pt-8-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-8",id = 1080820,cardId = 1101003,lv = 72,bklv = 8,star = 2,mon = {id = 205,desc = "pt-8-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",id = 1080821,cardId = 1102005,lv = 72,bklv = 8,star = 2,mon = {id = 229,desc = "pt-8-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-8",id = 1080830,cardId = 1101014,lv = 72,bklv = 8,star = 2,mon = {id = 210,desc = "pt-8-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",id = 1080831,cardId = 1102020,lv = 72,bklv = 8,star = 2,mon = {id = 234,desc = "pt-8-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10809] = {
		[1] = {
			jlr = {cha = "pt-8",id = 1080910,cardId = 1101007,lv = 72,bklv = 8,star = 2,mon = {id = 212,desc = "pt-8-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",id = 1080911,cardId = 1102012,lv = 72,bklv = 8,star = 2,mon = {id = 236,desc = "pt-8-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-8",id = 1080920,cardId = 1101003,lv = 72,bklv = 8,star = 2,mon = {id = 208,desc = "pt-8-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",id = 1080921,cardId = 1102005,lv = 72,bklv = 8,star = 2,mon = {id = 231,desc = "pt-8-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-8",id = 1080930,cardId = 1101014,lv = 72,bklv = 8,star = 2,mon = {id = 209,desc = "pt-8-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",id = 1080931,cardId = 1102020,lv = 72,bklv = 8,star = 2,mon = {id = 232,desc = "pt-8-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10810] = {
		[1] = {
			jlr = {cha = "pt-8",id = 1081010,cardId = 1101007,lv = 73,bklv = 8,star = 2,mon = {id = 201,desc = "pt-8-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",id = 1081011,cardId = 1102012,lv = 73,bklv = 8,star = 2,mon = {id = 220,desc = "pt-8-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-8",id = 1081020,cardId = 1101003,lv = 73,bklv = 8,star = 2,mon = {id = 203,desc = "pt-8-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",id = 1081021,cardId = 1102005,lv = 73,bklv = 8,star = 2,mon = {id = 223,desc = "pt-8-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-8",id = 1081030,cardId = 1101014,lv = 73,bklv = 8,star = 2,mon = {id = 214,desc = "pt-8-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",id = 1081031,cardId = 1102020,lv = 73,bklv = 8,star = 2,mon = {id = 238,desc = "pt-8-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10811] = {
		[1] = {
			jlr = {cha = "pt-8",id = 1081110,cardId = 1101007,lv = 73,bklv = 8,star = 2,mon = {id = 212,desc = "pt-8-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",id = 1081111,cardId = 1102012,lv = 73,bklv = 8,star = 2,mon = {id = 236,desc = "pt-8-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-8",id = 1081120,cardId = 1101003,lv = 73,bklv = 8,star = 2,mon = {id = 208,desc = "pt-8-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",id = 1081121,cardId = 1102005,lv = 73,bklv = 8,star = 2,mon = {id = 231,desc = "pt-8-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-8",id = 1081130,cardId = 1101014,lv = 73,bklv = 8,star = 2,mon = {id = 209,desc = "pt-8-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",id = 1081131,cardId = 1102020,lv = 73,bklv = 8,star = 2,mon = {id = 232,desc = "pt-8-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10812] = {
		[1] = {
			jlr = {cha = "pt-8",id = 1081210,cardId = 1101007,lv = 73,bklv = 8,star = 2,mon = {id = 215,desc = "pt-8-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",id = 1081211,cardId = 1102012,lv = 73,bklv = 8,star = 2,mon = {id = 239,desc = "pt-8-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-8",id = 1081220,cardId = 1101003,lv = 73,bklv = 8,star = 2,mon = {id = 201,desc = "pt-8-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",id = 1081221,cardId = 1102005,lv = 73,bklv = 8,star = 2,mon = {id = 227,desc = "pt-8-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-8",id = 1081230,cardId = 1101014,lv = 73,bklv = 8,star = 2,mon = {id = 211,desc = "pt-8-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",id = 1081231,cardId = 1102020,lv = 73,bklv = 8,star = 2,mon = {id = 235,desc = "pt-8-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10813] = {
		[1] = {
			jlr = {cha = "pt-8",id = 1081310,cardId = 1101007,lv = 74,bklv = 8,star = 2,mon = {id = 209,desc = "pt-8-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",id = 1081311,cardId = 1102012,lv = 74,bklv = 8,star = 2,mon = {id = 232,desc = "pt-8-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-8",id = 1081320,cardId = 1101003,lv = 74,bklv = 8,star = 2,mon = {id = 208,desc = "pt-8-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",id = 1081321,cardId = 1102005,lv = 74,bklv = 8,star = 2,mon = {id = 231,desc = "pt-8-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-8",id = 1081330,cardId = 1101014,lv = 74,bklv = 8,star = 2,mon = {id = 212,desc = "pt-8-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",id = 1081331,cardId = 1102020,lv = 74,bklv = 8,star = 2,mon = {id = 236,desc = "pt-8-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10814] = {
		[1] = {
			jlr = {cha = "pt-8",id = 1081410,cardId = 1101007,lv = 74,bklv = 8,star = 2,mon = {id = 207,desc = "pt-8-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",id = 1081411,cardId = 1102012,lv = 74,bklv = 8,star = 2,mon = {id = 227,desc = "pt-8-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-8",id = 1081420,cardId = 1101003,lv = 74,bklv = 8,star = 2,mon = {id = 207,desc = "pt-8-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",id = 1081421,cardId = 1102005,lv = 74,bklv = 8,star = 2,mon = {id = 221,desc = "pt-8-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-8",id = 1081430,cardId = 1101014,lv = 74,bklv = 8,star = 2,mon = {id = 211,desc = "pt-8-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",id = 1081431,cardId = 1102020,lv = 74,bklv = 8,star = 2,mon = {id = 235,desc = "pt-8-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10815] = {
		[1] = {
			jlr = {cha = "pt-8",id = 1081510,cardId = 1101007,lv = 75,bklv = 8,star = 2,mon = {id = 205,desc = "pt-8-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",id = 1081511,cardId = 1102012,lv = 75,bklv = 8,star = 2,mon = {id = 219,desc = "pt-8-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-8",id = 1081520,cardId = 1101003,lv = 75,bklv = 8,star = 2,mon = {id = 204,desc = "pt-8-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",id = 1081521,cardId = 1102005,lv = 75,bklv = 8,star = 2,mon = {id = 224,desc = "pt-8-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-8",id = 1081530,cardId = 1101014,lv = 75,bklv = 8,star = 2,mon = {id = 207,desc = "pt-8-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-8",id = 1081531,cardId = 1102020,lv = 75,bklv = 8,star = 2,mon = {id = 228,desc = "pt-8-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10901] = {
		[1] = {
			jlr = {cha = "pt-9",id = 1090110,cardId = 1101007,lv = 77,bklv = 8,star = 3,mon = {id = 212,desc = "pt-9-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",id = 1090111,cardId = 1102012,lv = 77,bklv = 8,star = 3,mon = {id = 236,desc = "pt-9-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-9",id = 1090120,cardId = 1101003,lv = 77,bklv = 8,star = 3,mon = {id = 208,desc = "pt-9-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",id = 1090121,cardId = 1102005,lv = 77,bklv = 8,star = 3,mon = {id = 231,desc = "pt-9-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-9",id = 1090130,cardId = 1101014,lv = 77,bklv = 8,star = 3,mon = {id = 213,desc = "pt-9-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",id = 1090131,cardId = 1102020,lv = 77,bklv = 8,star = 3,mon = {id = 237,desc = "pt-9-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10902] = {
		[1] = {
			jlr = {cha = "pt-9",id = 1090210,cardId = 1101007,lv = 78,bklv = 8,star = 3,mon = {id = 201,desc = "pt-9-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",id = 1090211,cardId = 1102012,lv = 78,bklv = 8,star = 3,mon = {id = 220,desc = "pt-9-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-9",id = 1090220,cardId = 1101003,lv = 78,bklv = 8,star = 3,mon = {id = 203,desc = "pt-9-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",id = 1090221,cardId = 1102005,lv = 78,bklv = 8,star = 3,mon = {id = 223,desc = "pt-9-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-9",id = 1090230,cardId = 1101014,lv = 78,bklv = 8,star = 3,mon = {id = 214,desc = "pt-9-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",id = 1090231,cardId = 1102020,lv = 78,bklv = 8,star = 3,mon = {id = 238,desc = "pt-9-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10903] = {
		[1] = {
			jlr = {cha = "pt-9",id = 1090310,cardId = 1101007,lv = 79,bklv = 8,star = 3,mon = {id = 212,desc = "pt-9-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",id = 1090311,cardId = 1102012,lv = 79,bklv = 8,star = 3,mon = {id = 236,desc = "pt-9-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-9",id = 1090320,cardId = 1101003,lv = 79,bklv = 8,star = 3,mon = {id = 208,desc = "pt-9-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",id = 1090321,cardId = 1102005,lv = 79,bklv = 8,star = 3,mon = {id = 231,desc = "pt-9-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-9",id = 1090330,cardId = 1101014,lv = 79,bklv = 8,star = 3,mon = {id = 209,desc = "pt-9-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",id = 1090331,cardId = 1102020,lv = 79,bklv = 8,star = 3,mon = {id = 232,desc = "pt-9-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10904] = {
		[1] = {
			jlr = {cha = "pt-9",id = 1090410,cardId = 1101007,lv = 80,bklv = 9,star = 3,mon = {id = 215,desc = "pt-9-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",id = 1090411,cardId = 1102012,lv = 80,bklv = 9,star = 3,mon = {id = 239,desc = "pt-9-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-9",id = 1090420,cardId = 1101003,lv = 80,bklv = 9,star = 3,mon = {id = 201,desc = "pt-9-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",id = 1090421,cardId = 1102005,lv = 80,bklv = 9,star = 3,mon = {id = 227,desc = "pt-9-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-9",id = 1090430,cardId = 1101014,lv = 80,bklv = 9,star = 3,mon = {id = 211,desc = "pt-9-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",id = 1090431,cardId = 1102020,lv = 80,bklv = 9,star = 3,mon = {id = 235,desc = "pt-9-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10905] = {
		[1] = {
			jlr = {cha = "pt-9",id = 1090510,cardId = 1101007,lv = 80,bklv = 9,star = 3,mon = {id = 206,desc = "pt-9-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",id = 1090511,cardId = 1102012,lv = 80,bklv = 9,star = 3,mon = {id = 225,desc = "pt-9-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-9",id = 1090520,cardId = 1101003,lv = 80,bklv = 9,star = 3,mon = {id = 203,desc = "pt-9-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",id = 1090521,cardId = 1102005,lv = 80,bklv = 9,star = 3,mon = {id = 223,desc = "pt-9-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-9",id = 1090530,cardId = 1101014,lv = 80,bklv = 9,star = 3,mon = {id = 212,desc = "pt-9-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",id = 1090531,cardId = 1102020,lv = 80,bklv = 9,star = 3,mon = {id = 236,desc = "pt-9-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10906] = {
		[1] = {
			jlr = {cha = "pt-9",id = 1090610,cardId = 1101007,lv = 81,bklv = 9,star = 3,mon = {id = 209,desc = "pt-9-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",id = 1090611,cardId = 1102012,lv = 81,bklv = 9,star = 3,mon = {id = 232,desc = "pt-9-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-9",id = 1090620,cardId = 1101003,lv = 81,bklv = 9,star = 3,mon = {id = 208,desc = "pt-9-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",id = 1090621,cardId = 1102005,lv = 81,bklv = 9,star = 3,mon = {id = 231,desc = "pt-9-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-9",id = 1090630,cardId = 1101014,lv = 81,bklv = 9,star = 3,mon = {id = 212,desc = "pt-9-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",id = 1090631,cardId = 1102020,lv = 81,bklv = 9,star = 3,mon = {id = 236,desc = "pt-9-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10907] = {
		[1] = {
			jlr = {cha = "pt-9",id = 1090710,cardId = 1101007,lv = 81,bklv = 9,star = 3,mon = {id = 207,desc = "pt-9-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",id = 1090711,cardId = 1102012,lv = 81,bklv = 9,star = 3,mon = {id = 227,desc = "pt-9-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-9",id = 1090720,cardId = 1101003,lv = 81,bklv = 9,star = 3,mon = {id = 207,desc = "pt-9-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",id = 1090721,cardId = 1102005,lv = 81,bklv = 9,star = 3,mon = {id = 221,desc = "pt-9-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-9",id = 1090730,cardId = 1101014,lv = 81,bklv = 9,star = 3,mon = {id = 211,desc = "pt-9-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",id = 1090731,cardId = 1102020,lv = 81,bklv = 9,star = 3,mon = {id = 235,desc = "pt-9-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10908] = {
		[1] = {
			jlr = {cha = "pt-9",id = 1090810,cardId = 1101007,lv = 82,bklv = 9,star = 3,mon = {id = 207,desc = "pt-9-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",id = 1090811,cardId = 1102012,lv = 82,bklv = 9,star = 3,mon = {id = 230,desc = "pt-9-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-9",id = 1090820,cardId = 1101003,lv = 82,bklv = 9,star = 3,mon = {id = 205,desc = "pt-9-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",id = 1090821,cardId = 1102005,lv = 82,bklv = 9,star = 3,mon = {id = 229,desc = "pt-9-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-9",id = 1090830,cardId = 1101014,lv = 82,bklv = 9,star = 3,mon = {id = 210,desc = "pt-9-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",id = 1090831,cardId = 1102020,lv = 82,bklv = 9,star = 3,mon = {id = 234,desc = "pt-9-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10909] = {
		[1] = {
			jlr = {cha = "pt-9",id = 1090910,cardId = 1101007,lv = 82,bklv = 9,star = 3,mon = {id = 212,desc = "pt-9-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",id = 1090911,cardId = 1102012,lv = 82,bklv = 9,star = 3,mon = {id = 236,desc = "pt-9-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-9",id = 1090920,cardId = 1101003,lv = 82,bklv = 9,star = 3,mon = {id = 208,desc = "pt-9-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",id = 1090921,cardId = 1102005,lv = 82,bklv = 9,star = 3,mon = {id = 231,desc = "pt-9-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-9",id = 1090930,cardId = 1101014,lv = 82,bklv = 9,star = 3,mon = {id = 209,desc = "pt-9-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",id = 1090931,cardId = 1102020,lv = 82,bklv = 9,star = 3,mon = {id = 232,desc = "pt-9-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10910] = {
		[1] = {
			jlr = {cha = "pt-9",id = 1091010,cardId = 1101007,lv = 83,bklv = 9,star = 3,mon = {id = 201,desc = "pt-9-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",id = 1091011,cardId = 1102012,lv = 83,bklv = 9,star = 3,mon = {id = 220,desc = "pt-9-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-9",id = 1091020,cardId = 1101003,lv = 83,bklv = 9,star = 3,mon = {id = 203,desc = "pt-9-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",id = 1091021,cardId = 1102005,lv = 83,bklv = 9,star = 3,mon = {id = 223,desc = "pt-9-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-9",id = 1091030,cardId = 1101014,lv = 83,bklv = 9,star = 3,mon = {id = 214,desc = "pt-9-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",id = 1091031,cardId = 1102020,lv = 83,bklv = 9,star = 3,mon = {id = 238,desc = "pt-9-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10911] = {
		[1] = {
			jlr = {cha = "pt-9",id = 1091110,cardId = 1101007,lv = 83,bklv = 9,star = 3,mon = {id = 212,desc = "pt-9-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",id = 1091111,cardId = 1102012,lv = 83,bklv = 9,star = 3,mon = {id = 236,desc = "pt-9-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-9",id = 1091120,cardId = 1101003,lv = 83,bklv = 9,star = 3,mon = {id = 208,desc = "pt-9-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",id = 1091121,cardId = 1102005,lv = 83,bklv = 9,star = 3,mon = {id = 231,desc = "pt-9-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-9",id = 1091130,cardId = 1101014,lv = 83,bklv = 9,star = 3,mon = {id = 209,desc = "pt-9-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",id = 1091131,cardId = 1102020,lv = 83,bklv = 9,star = 3,mon = {id = 232,desc = "pt-9-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10912] = {
		[1] = {
			jlr = {cha = "pt-9",id = 1091210,cardId = 1101007,lv = 83,bklv = 9,star = 3,mon = {id = 215,desc = "pt-9-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",id = 1091211,cardId = 1102012,lv = 83,bklv = 9,star = 3,mon = {id = 239,desc = "pt-9-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-9",id = 1091220,cardId = 1101003,lv = 83,bklv = 9,star = 3,mon = {id = 201,desc = "pt-9-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",id = 1091221,cardId = 1102005,lv = 83,bklv = 9,star = 3,mon = {id = 227,desc = "pt-9-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-9",id = 1091230,cardId = 1101014,lv = 83,bklv = 9,star = 3,mon = {id = 211,desc = "pt-9-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",id = 1091231,cardId = 1102020,lv = 83,bklv = 9,star = 3,mon = {id = 235,desc = "pt-9-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10913] = {
		[1] = {
			jlr = {cha = "pt-9",id = 1091310,cardId = 1101007,lv = 84,bklv = 9,star = 3,mon = {id = 209,desc = "pt-9-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",id = 1091311,cardId = 1102012,lv = 84,bklv = 9,star = 3,mon = {id = 232,desc = "pt-9-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-9",id = 1091320,cardId = 1101003,lv = 84,bklv = 9,star = 3,mon = {id = 208,desc = "pt-9-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",id = 1091321,cardId = 1102005,lv = 84,bklv = 9,star = 3,mon = {id = 231,desc = "pt-9-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-9",id = 1091330,cardId = 1101014,lv = 84,bklv = 9,star = 3,mon = {id = 212,desc = "pt-9-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",id = 1091331,cardId = 1102020,lv = 84,bklv = 9,star = 3,mon = {id = 236,desc = "pt-9-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10914] = {
		[1] = {
			jlr = {cha = "pt-9",id = 1091410,cardId = 1101007,lv = 84,bklv = 9,star = 3,mon = {id = 207,desc = "pt-9-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",id = 1091411,cardId = 1102012,lv = 84,bklv = 9,star = 3,mon = {id = 227,desc = "pt-9-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-9",id = 1091420,cardId = 1101003,lv = 84,bklv = 9,star = 3,mon = {id = 207,desc = "pt-9-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",id = 1091421,cardId = 1102005,lv = 84,bklv = 9,star = 3,mon = {id = 221,desc = "pt-9-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-9",id = 1091430,cardId = 1101014,lv = 84,bklv = 9,star = 3,mon = {id = 211,desc = "pt-9-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",id = 1091431,cardId = 1102020,lv = 84,bklv = 9,star = 3,mon = {id = 235,desc = "pt-9-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[10915] = {
		[1] = {
			jlr = {cha = "pt-9",id = 1091510,cardId = 1101007,lv = 85,bklv = 10,star = 3,mon = {id = 205,desc = "pt-9-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",id = 1091511,cardId = 1102012,lv = 85,bklv = 10,star = 3,mon = {id = 219,desc = "pt-9-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-9",id = 1091520,cardId = 1101003,lv = 85,bklv = 10,star = 3,mon = {id = 204,desc = "pt-9-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",id = 1091521,cardId = 1102005,lv = 85,bklv = 10,star = 3,mon = {id = 224,desc = "pt-9-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-9",id = 1091530,cardId = 1101014,lv = 85,bklv = 10,star = 3,mon = {id = 207,desc = "pt-9-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-9",id = 1091531,cardId = 1102020,lv = 85,bklv = 10,star = 3,mon = {id = 228,desc = "pt-9-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11001] = {
		[1] = {
			jlr = {cha = "pt-10",id = 1100110,cardId = 1101007,lv = 87,bklv = 10,star = 3,mon = {id = 212,desc = "pt-10-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",id = 1100111,cardId = 1102012,lv = 87,bklv = 10,star = 3,mon = {id = 236,desc = "pt-10-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-10",id = 1100120,cardId = 1101003,lv = 87,bklv = 10,star = 3,mon = {id = 208,desc = "pt-10-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",id = 1100121,cardId = 1102005,lv = 87,bklv = 10,star = 3,mon = {id = 231,desc = "pt-10-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-10",id = 1100130,cardId = 1101014,lv = 87,bklv = 10,star = 3,mon = {id = 213,desc = "pt-10-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",id = 1100131,cardId = 1102020,lv = 87,bklv = 10,star = 3,mon = {id = 237,desc = "pt-10-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11002] = {
		[1] = {
			jlr = {cha = "pt-10",id = 1100210,cardId = 1101007,lv = 88,bklv = 10,star = 3,mon = {id = 201,desc = "pt-10-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",id = 1100211,cardId = 1102012,lv = 88,bklv = 10,star = 3,mon = {id = 220,desc = "pt-10-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-10",id = 1100220,cardId = 1101003,lv = 88,bklv = 10,star = 3,mon = {id = 203,desc = "pt-10-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",id = 1100221,cardId = 1102005,lv = 88,bklv = 10,star = 3,mon = {id = 223,desc = "pt-10-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-10",id = 1100230,cardId = 1101014,lv = 88,bklv = 10,star = 3,mon = {id = 214,desc = "pt-10-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",id = 1100231,cardId = 1102020,lv = 88,bklv = 10,star = 3,mon = {id = 238,desc = "pt-10-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11003] = {
		[1] = {
			jlr = {cha = "pt-10",id = 1100310,cardId = 1101007,lv = 89,bklv = 10,star = 3,mon = {id = 212,desc = "pt-10-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",id = 1100311,cardId = 1102012,lv = 89,bklv = 10,star = 3,mon = {id = 236,desc = "pt-10-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-10",id = 1100320,cardId = 1101003,lv = 89,bklv = 10,star = 3,mon = {id = 208,desc = "pt-10-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",id = 1100321,cardId = 1102005,lv = 89,bklv = 10,star = 3,mon = {id = 231,desc = "pt-10-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-10",id = 1100330,cardId = 1101014,lv = 89,bklv = 10,star = 3,mon = {id = 209,desc = "pt-10-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",id = 1100331,cardId = 1102020,lv = 89,bklv = 10,star = 3,mon = {id = 232,desc = "pt-10-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11004] = {
		[1] = {
			jlr = {cha = "pt-10",id = 1100410,cardId = 1101007,lv = 90,bklv = 11,star = 3,mon = {id = 215,desc = "pt-10-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",id = 1100411,cardId = 1102012,lv = 90,bklv = 11,star = 3,mon = {id = 239,desc = "pt-10-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-10",id = 1100420,cardId = 1101003,lv = 90,bklv = 11,star = 3,mon = {id = 201,desc = "pt-10-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",id = 1100421,cardId = 1102005,lv = 90,bklv = 11,star = 3,mon = {id = 227,desc = "pt-10-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-10",id = 1100430,cardId = 1101014,lv = 90,bklv = 11,star = 3,mon = {id = 211,desc = "pt-10-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",id = 1100431,cardId = 1102020,lv = 90,bklv = 11,star = 3,mon = {id = 235,desc = "pt-10-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11005] = {
		[1] = {
			jlr = {cha = "pt-10",id = 1100510,cardId = 1101007,lv = 90,bklv = 11,star = 3,mon = {id = 206,desc = "pt-10-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",id = 1100511,cardId = 1102012,lv = 90,bklv = 11,star = 3,mon = {id = 225,desc = "pt-10-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-10",id = 1100520,cardId = 1101003,lv = 90,bklv = 11,star = 3,mon = {id = 203,desc = "pt-10-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",id = 1100521,cardId = 1102005,lv = 90,bklv = 11,star = 3,mon = {id = 223,desc = "pt-10-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-10",id = 1100530,cardId = 1101014,lv = 90,bklv = 11,star = 3,mon = {id = 212,desc = "pt-10-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",id = 1100531,cardId = 1102020,lv = 90,bklv = 11,star = 3,mon = {id = 236,desc = "pt-10-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11006] = {
		[1] = {
			jlr = {cha = "pt-10",id = 1100610,cardId = 1101007,lv = 91,bklv = 11,star = 3,mon = {id = 209,desc = "pt-10-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",id = 1100611,cardId = 1102012,lv = 91,bklv = 11,star = 3,mon = {id = 232,desc = "pt-10-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-10",id = 1100620,cardId = 1101003,lv = 91,bklv = 11,star = 3,mon = {id = 208,desc = "pt-10-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",id = 1100621,cardId = 1102005,lv = 91,bklv = 11,star = 3,mon = {id = 231,desc = "pt-10-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-10",id = 1100630,cardId = 1101014,lv = 91,bklv = 11,star = 3,mon = {id = 212,desc = "pt-10-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",id = 1100631,cardId = 1102020,lv = 91,bklv = 11,star = 3,mon = {id = 236,desc = "pt-10-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11007] = {
		[1] = {
			jlr = {cha = "pt-10",id = 1100710,cardId = 1101007,lv = 91,bklv = 11,star = 3,mon = {id = 207,desc = "pt-10-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",id = 1100711,cardId = 1102012,lv = 91,bklv = 11,star = 3,mon = {id = 227,desc = "pt-10-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-10",id = 1100720,cardId = 1101003,lv = 91,bklv = 11,star = 3,mon = {id = 207,desc = "pt-10-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",id = 1100721,cardId = 1102005,lv = 91,bklv = 11,star = 3,mon = {id = 221,desc = "pt-10-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-10",id = 1100730,cardId = 1101014,lv = 91,bklv = 11,star = 3,mon = {id = 211,desc = "pt-10-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",id = 1100731,cardId = 1102020,lv = 91,bklv = 11,star = 3,mon = {id = 235,desc = "pt-10-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11008] = {
		[1] = {
			jlr = {cha = "pt-10",id = 1100810,cardId = 1101007,lv = 92,bklv = 11,star = 3,mon = {id = 207,desc = "pt-10-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",id = 1100811,cardId = 1102012,lv = 92,bklv = 11,star = 3,mon = {id = 230,desc = "pt-10-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-10",id = 1100820,cardId = 1101003,lv = 92,bklv = 11,star = 3,mon = {id = 205,desc = "pt-10-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",id = 1100821,cardId = 1102005,lv = 92,bklv = 11,star = 3,mon = {id = 229,desc = "pt-10-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-10",id = 1100830,cardId = 1101014,lv = 92,bklv = 11,star = 3,mon = {id = 210,desc = "pt-10-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",id = 1100831,cardId = 1102020,lv = 92,bklv = 11,star = 3,mon = {id = 234,desc = "pt-10-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11009] = {
		[1] = {
			jlr = {cha = "pt-10",id = 1100910,cardId = 1101007,lv = 92,bklv = 11,star = 3,mon = {id = 212,desc = "pt-10-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",id = 1100911,cardId = 1102012,lv = 92,bklv = 11,star = 3,mon = {id = 236,desc = "pt-10-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-10",id = 1100920,cardId = 1101003,lv = 92,bklv = 11,star = 3,mon = {id = 208,desc = "pt-10-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",id = 1100921,cardId = 1102005,lv = 92,bklv = 11,star = 3,mon = {id = 231,desc = "pt-10-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-10",id = 1100930,cardId = 1101014,lv = 92,bklv = 11,star = 3,mon = {id = 209,desc = "pt-10-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",id = 1100931,cardId = 1102020,lv = 92,bklv = 11,star = 3,mon = {id = 232,desc = "pt-10-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11010] = {
		[1] = {
			jlr = {cha = "pt-10",id = 1101010,cardId = 1101007,lv = 93,bklv = 11,star = 3,mon = {id = 201,desc = "pt-10-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",id = 1101011,cardId = 1102012,lv = 93,bklv = 11,star = 3,mon = {id = 220,desc = "pt-10-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-10",id = 1101020,cardId = 1101003,lv = 93,bklv = 11,star = 3,mon = {id = 203,desc = "pt-10-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",id = 1101021,cardId = 1102005,lv = 93,bklv = 11,star = 3,mon = {id = 223,desc = "pt-10-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-10",id = 1101030,cardId = 1101014,lv = 93,bklv = 11,star = 3,mon = {id = 214,desc = "pt-10-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",id = 1101031,cardId = 1102020,lv = 93,bklv = 11,star = 3,mon = {id = 238,desc = "pt-10-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11011] = {
		[1] = {
			jlr = {cha = "pt-10",id = 1101110,cardId = 1101007,lv = 93,bklv = 11,star = 3,mon = {id = 212,desc = "pt-10-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",id = 1101111,cardId = 1102012,lv = 93,bklv = 11,star = 3,mon = {id = 236,desc = "pt-10-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-10",id = 1101120,cardId = 1101003,lv = 93,bklv = 11,star = 3,mon = {id = 208,desc = "pt-10-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",id = 1101121,cardId = 1102005,lv = 93,bklv = 11,star = 3,mon = {id = 231,desc = "pt-10-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-10",id = 1101130,cardId = 1101014,lv = 93,bklv = 11,star = 3,mon = {id = 209,desc = "pt-10-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",id = 1101131,cardId = 1102020,lv = 93,bklv = 11,star = 3,mon = {id = 232,desc = "pt-10-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11012] = {
		[1] = {
			jlr = {cha = "pt-10",id = 1101210,cardId = 1101007,lv = 93,bklv = 11,star = 3,mon = {id = 215,desc = "pt-10-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",id = 1101211,cardId = 1102012,lv = 93,bklv = 11,star = 3,mon = {id = 239,desc = "pt-10-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-10",id = 1101220,cardId = 1101003,lv = 93,bklv = 11,star = 3,mon = {id = 201,desc = "pt-10-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",id = 1101221,cardId = 1102005,lv = 93,bklv = 11,star = 3,mon = {id = 227,desc = "pt-10-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-10",id = 1101230,cardId = 1101014,lv = 93,bklv = 11,star = 3,mon = {id = 211,desc = "pt-10-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",id = 1101231,cardId = 1102020,lv = 93,bklv = 11,star = 3,mon = {id = 235,desc = "pt-10-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11013] = {
		[1] = {
			jlr = {cha = "pt-10",id = 1101310,cardId = 1101007,lv = 94,bklv = 11,star = 3,mon = {id = 209,desc = "pt-10-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",id = 1101311,cardId = 1102012,lv = 94,bklv = 11,star = 3,mon = {id = 232,desc = "pt-10-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-10",id = 1101320,cardId = 1101003,lv = 94,bklv = 11,star = 3,mon = {id = 208,desc = "pt-10-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",id = 1101321,cardId = 1102005,lv = 94,bklv = 11,star = 3,mon = {id = 231,desc = "pt-10-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-10",id = 1101330,cardId = 1101014,lv = 94,bklv = 11,star = 3,mon = {id = 212,desc = "pt-10-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",id = 1101331,cardId = 1102020,lv = 94,bklv = 11,star = 3,mon = {id = 236,desc = "pt-10-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11014] = {
		[1] = {
			jlr = {cha = "pt-10",id = 1101410,cardId = 1101007,lv = 94,bklv = 11,star = 3,mon = {id = 207,desc = "pt-10-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",id = 1101411,cardId = 1102012,lv = 94,bklv = 11,star = 3,mon = {id = 227,desc = "pt-10-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-10",id = 1101420,cardId = 1101003,lv = 94,bklv = 11,star = 3,mon = {id = 207,desc = "pt-10-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",id = 1101421,cardId = 1102005,lv = 94,bklv = 11,star = 3,mon = {id = 221,desc = "pt-10-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-10",id = 1101430,cardId = 1101014,lv = 94,bklv = 11,star = 3,mon = {id = 211,desc = "pt-10-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",id = 1101431,cardId = 1102020,lv = 94,bklv = 11,star = 3,mon = {id = 235,desc = "pt-10-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11015] = {
		[1] = {
			jlr = {cha = "pt-10",id = 1101510,cardId = 1101007,lv = 95,bklv = 12,star = 3,mon = {id = 205,desc = "pt-10-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",id = 1101511,cardId = 1102012,lv = 95,bklv = 12,star = 3,mon = {id = 219,desc = "pt-10-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-10",id = 1101520,cardId = 1101003,lv = 95,bklv = 12,star = 3,mon = {id = 204,desc = "pt-10-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",id = 1101521,cardId = 1102005,lv = 95,bklv = 12,star = 3,mon = {id = 224,desc = "pt-10-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-10",id = 1101530,cardId = 1101014,lv = 95,bklv = 12,star = 3,mon = {id = 207,desc = "pt-10-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-10",id = 1101531,cardId = 1102020,lv = 95,bklv = 12,star = 3,mon = {id = 228,desc = "pt-10-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11101] = {
		[1] = {
			jlr = {cha = "pt-11",id = 1110110,cardId = 1101007,lv = 97,bklv = 12,star = 3,mon = {id = 212,desc = "pt-11-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",id = 1110111,cardId = 1102012,lv = 97,bklv = 12,star = 3,mon = {id = 236,desc = "pt-11-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-11",id = 1110120,cardId = 1101003,lv = 97,bklv = 12,star = 3,mon = {id = 208,desc = "pt-11-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",id = 1110121,cardId = 1102005,lv = 97,bklv = 12,star = 3,mon = {id = 231,desc = "pt-11-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-11",id = 1110130,cardId = 1101014,lv = 97,bklv = 12,star = 3,mon = {id = 213,desc = "pt-11-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",id = 1110131,cardId = 1102020,lv = 97,bklv = 12,star = 3,mon = {id = 237,desc = "pt-11-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11102] = {
		[1] = {
			jlr = {cha = "pt-11",id = 1110210,cardId = 1101007,lv = 98,bklv = 12,star = 3,mon = {id = 201,desc = "pt-11-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",id = 1110211,cardId = 1102012,lv = 98,bklv = 12,star = 3,mon = {id = 220,desc = "pt-11-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-11",id = 1110220,cardId = 1101003,lv = 98,bklv = 12,star = 3,mon = {id = 203,desc = "pt-11-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",id = 1110221,cardId = 1102005,lv = 98,bklv = 12,star = 3,mon = {id = 223,desc = "pt-11-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-11",id = 1110230,cardId = 1101014,lv = 98,bklv = 12,star = 3,mon = {id = 214,desc = "pt-11-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",id = 1110231,cardId = 1102020,lv = 98,bklv = 12,star = 3,mon = {id = 238,desc = "pt-11-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11103] = {
		[1] = {
			jlr = {cha = "pt-11",id = 1110310,cardId = 1101007,lv = 99,bklv = 12,star = 3,mon = {id = 212,desc = "pt-11-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",id = 1110311,cardId = 1102012,lv = 99,bklv = 12,star = 3,mon = {id = 236,desc = "pt-11-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-11",id = 1110320,cardId = 1101003,lv = 99,bklv = 12,star = 3,mon = {id = 208,desc = "pt-11-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",id = 1110321,cardId = 1102005,lv = 99,bklv = 12,star = 3,mon = {id = 231,desc = "pt-11-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-11",id = 1110330,cardId = 1101014,lv = 99,bklv = 12,star = 3,mon = {id = 209,desc = "pt-11-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",id = 1110331,cardId = 1102020,lv = 99,bklv = 12,star = 3,mon = {id = 232,desc = "pt-11-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11104] = {
		[1] = {
			jlr = {cha = "pt-11",id = 1110410,cardId = 1101007,lv = 100,bklv = 13,star = 3,mon = {id = 215,desc = "pt-11-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",id = 1110411,cardId = 1102012,lv = 100,bklv = 13,star = 3,mon = {id = 239,desc = "pt-11-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-11",id = 1110420,cardId = 1101003,lv = 100,bklv = 13,star = 3,mon = {id = 201,desc = "pt-11-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",id = 1110421,cardId = 1102005,lv = 100,bklv = 13,star = 3,mon = {id = 227,desc = "pt-11-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-11",id = 1110430,cardId = 1101014,lv = 100,bklv = 13,star = 3,mon = {id = 211,desc = "pt-11-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",id = 1110431,cardId = 1102020,lv = 100,bklv = 13,star = 3,mon = {id = 235,desc = "pt-11-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11105] = {
		[1] = {
			jlr = {cha = "pt-11",id = 1110510,cardId = 1101007,lv = 100,bklv = 13,star = 3,mon = {id = 206,desc = "pt-11-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",id = 1110511,cardId = 1102012,lv = 100,bklv = 13,star = 3,mon = {id = 225,desc = "pt-11-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-11",id = 1110520,cardId = 1101003,lv = 100,bklv = 13,star = 3,mon = {id = 203,desc = "pt-11-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",id = 1110521,cardId = 1102005,lv = 100,bklv = 13,star = 3,mon = {id = 223,desc = "pt-11-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-11",id = 1110530,cardId = 1101014,lv = 100,bklv = 13,star = 3,mon = {id = 212,desc = "pt-11-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",id = 1110531,cardId = 1102020,lv = 100,bklv = 13,star = 3,mon = {id = 236,desc = "pt-11-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11106] = {
		[1] = {
			jlr = {cha = "pt-11",id = 1110610,cardId = 1101007,lv = 101,bklv = 13,star = 3,mon = {id = 209,desc = "pt-11-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",id = 1110611,cardId = 1102012,lv = 101,bklv = 13,star = 3,mon = {id = 232,desc = "pt-11-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-11",id = 1110620,cardId = 1101003,lv = 101,bklv = 13,star = 3,mon = {id = 208,desc = "pt-11-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",id = 1110621,cardId = 1102005,lv = 101,bklv = 13,star = 3,mon = {id = 231,desc = "pt-11-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-11",id = 1110630,cardId = 1101014,lv = 101,bklv = 13,star = 3,mon = {id = 212,desc = "pt-11-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",id = 1110631,cardId = 1102020,lv = 101,bklv = 13,star = 3,mon = {id = 236,desc = "pt-11-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11107] = {
		[1] = {
			jlr = {cha = "pt-11",id = 1110710,cardId = 1101007,lv = 101,bklv = 13,star = 3,mon = {id = 207,desc = "pt-11-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",id = 1110711,cardId = 1102012,lv = 101,bklv = 13,star = 3,mon = {id = 227,desc = "pt-11-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-11",id = 1110720,cardId = 1101003,lv = 101,bklv = 13,star = 3,mon = {id = 207,desc = "pt-11-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",id = 1110721,cardId = 1102005,lv = 101,bklv = 13,star = 3,mon = {id = 221,desc = "pt-11-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-11",id = 1110730,cardId = 1101014,lv = 101,bklv = 13,star = 3,mon = {id = 211,desc = "pt-11-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",id = 1110731,cardId = 1102020,lv = 101,bklv = 13,star = 3,mon = {id = 235,desc = "pt-11-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11108] = {
		[1] = {
			jlr = {cha = "pt-11",id = 1110810,cardId = 1101007,lv = 102,bklv = 13,star = 3,mon = {id = 207,desc = "pt-11-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",id = 1110811,cardId = 1102012,lv = 102,bklv = 13,star = 3,mon = {id = 230,desc = "pt-11-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-11",id = 1110820,cardId = 1101003,lv = 102,bklv = 13,star = 3,mon = {id = 205,desc = "pt-11-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",id = 1110821,cardId = 1102005,lv = 102,bklv = 13,star = 3,mon = {id = 229,desc = "pt-11-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-11",id = 1110830,cardId = 1101014,lv = 102,bklv = 13,star = 3,mon = {id = 210,desc = "pt-11-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",id = 1110831,cardId = 1102020,lv = 102,bklv = 13,star = 3,mon = {id = 234,desc = "pt-11-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11109] = {
		[1] = {
			jlr = {cha = "pt-11",id = 1110910,cardId = 1101007,lv = 102,bklv = 13,star = 3,mon = {id = 212,desc = "pt-11-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",id = 1110911,cardId = 1102012,lv = 102,bklv = 13,star = 3,mon = {id = 236,desc = "pt-11-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-11",id = 1110920,cardId = 1101003,lv = 102,bklv = 13,star = 3,mon = {id = 208,desc = "pt-11-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",id = 1110921,cardId = 1102005,lv = 102,bklv = 13,star = 3,mon = {id = 231,desc = "pt-11-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-11",id = 1110930,cardId = 1101014,lv = 102,bklv = 13,star = 3,mon = {id = 209,desc = "pt-11-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",id = 1110931,cardId = 1102020,lv = 102,bklv = 13,star = 3,mon = {id = 232,desc = "pt-11-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11110] = {
		[1] = {
			jlr = {cha = "pt-11",id = 1111010,cardId = 1101007,lv = 103,bklv = 13,star = 3,mon = {id = 201,desc = "pt-11-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",id = 1111011,cardId = 1102012,lv = 103,bklv = 13,star = 3,mon = {id = 220,desc = "pt-11-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-11",id = 1111020,cardId = 1101003,lv = 103,bklv = 13,star = 3,mon = {id = 203,desc = "pt-11-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",id = 1111021,cardId = 1102005,lv = 103,bklv = 13,star = 3,mon = {id = 223,desc = "pt-11-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-11",id = 1111030,cardId = 1101014,lv = 103,bklv = 13,star = 3,mon = {id = 214,desc = "pt-11-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",id = 1111031,cardId = 1102020,lv = 103,bklv = 13,star = 3,mon = {id = 238,desc = "pt-11-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11111] = {
		[1] = {
			jlr = {cha = "pt-11",id = 1111110,cardId = 1101007,lv = 103,bklv = 13,star = 3,mon = {id = 212,desc = "pt-11-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",id = 1111111,cardId = 1102012,lv = 103,bklv = 13,star = 3,mon = {id = 236,desc = "pt-11-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-11",id = 1111120,cardId = 1101003,lv = 103,bklv = 13,star = 3,mon = {id = 208,desc = "pt-11-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",id = 1111121,cardId = 1102005,lv = 103,bklv = 13,star = 3,mon = {id = 231,desc = "pt-11-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-11",id = 1111130,cardId = 1101014,lv = 103,bklv = 13,star = 3,mon = {id = 209,desc = "pt-11-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",id = 1111131,cardId = 1102020,lv = 103,bklv = 13,star = 3,mon = {id = 232,desc = "pt-11-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11112] = {
		[1] = {
			jlr = {cha = "pt-11",id = 1111210,cardId = 1101007,lv = 103,bklv = 13,star = 3,mon = {id = 215,desc = "pt-11-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",id = 1111211,cardId = 1102012,lv = 103,bklv = 13,star = 3,mon = {id = 239,desc = "pt-11-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-11",id = 1111220,cardId = 1101003,lv = 103,bklv = 13,star = 3,mon = {id = 201,desc = "pt-11-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",id = 1111221,cardId = 1102005,lv = 103,bklv = 13,star = 3,mon = {id = 227,desc = "pt-11-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-11",id = 1111230,cardId = 1101014,lv = 103,bklv = 13,star = 3,mon = {id = 211,desc = "pt-11-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",id = 1111231,cardId = 1102020,lv = 103,bklv = 13,star = 3,mon = {id = 235,desc = "pt-11-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11113] = {
		[1] = {
			jlr = {cha = "pt-11",id = 1111310,cardId = 1101007,lv = 104,bklv = 13,star = 3,mon = {id = 209,desc = "pt-11-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",id = 1111311,cardId = 1102012,lv = 104,bklv = 13,star = 3,mon = {id = 232,desc = "pt-11-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-11",id = 1111320,cardId = 1101003,lv = 104,bklv = 13,star = 3,mon = {id = 208,desc = "pt-11-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",id = 1111321,cardId = 1102005,lv = 104,bklv = 13,star = 3,mon = {id = 231,desc = "pt-11-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-11",id = 1111330,cardId = 1101014,lv = 104,bklv = 13,star = 3,mon = {id = 212,desc = "pt-11-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",id = 1111331,cardId = 1102020,lv = 104,bklv = 13,star = 3,mon = {id = 236,desc = "pt-11-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11114] = {
		[1] = {
			jlr = {cha = "pt-11",id = 1111410,cardId = 1101007,lv = 104,bklv = 13,star = 3,mon = {id = 207,desc = "pt-11-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",id = 1111411,cardId = 1102012,lv = 104,bklv = 13,star = 3,mon = {id = 227,desc = "pt-11-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-11",id = 1111420,cardId = 1101003,lv = 104,bklv = 13,star = 3,mon = {id = 207,desc = "pt-11-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",id = 1111421,cardId = 1102005,lv = 104,bklv = 13,star = 3,mon = {id = 221,desc = "pt-11-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-11",id = 1111430,cardId = 1101014,lv = 104,bklv = 13,star = 3,mon = {id = 211,desc = "pt-11-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",id = 1111431,cardId = 1102020,lv = 104,bklv = 13,star = 3,mon = {id = 235,desc = "pt-11-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11115] = {
		[1] = {
			jlr = {cha = "pt-11",id = 1111510,cardId = 1101007,lv = 105,bklv = 14,star = 3,mon = {id = 205,desc = "pt-11-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",id = 1111511,cardId = 1102012,lv = 105,bklv = 14,star = 3,mon = {id = 219,desc = "pt-11-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-11",id = 1111520,cardId = 1101003,lv = 105,bklv = 14,star = 3,mon = {id = 204,desc = "pt-11-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",id = 1111521,cardId = 1102005,lv = 105,bklv = 14,star = 3,mon = {id = 224,desc = "pt-11-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-11",id = 1111530,cardId = 1101014,lv = 105,bklv = 14,star = 3,mon = {id = 207,desc = "pt-11-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-11",id = 1111531,cardId = 1102020,lv = 105,bklv = 14,star = 3,mon = {id = 228,desc = "pt-11-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11201] = {
		[1] = {
			jlr = {cha = "pt-12",id = 1120110,cardId = 1101007,lv = 107,bklv = 14,star = 3,mon = {id = 212,desc = "pt-12-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",id = 1120111,cardId = 1102012,lv = 107,bklv = 14,star = 3,mon = {id = 236,desc = "pt-12-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-12",id = 1120120,cardId = 1101003,lv = 107,bklv = 14,star = 3,mon = {id = 208,desc = "pt-12-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",id = 1120121,cardId = 1102005,lv = 107,bklv = 14,star = 3,mon = {id = 231,desc = "pt-12-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-12",id = 1120130,cardId = 1101014,lv = 107,bklv = 14,star = 3,mon = {id = 213,desc = "pt-12-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",id = 1120131,cardId = 1102020,lv = 107,bklv = 14,star = 3,mon = {id = 237,desc = "pt-12-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11202] = {
		[1] = {
			jlr = {cha = "pt-12",id = 1120210,cardId = 1101007,lv = 108,bklv = 14,star = 3,mon = {id = 201,desc = "pt-12-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",id = 1120211,cardId = 1102012,lv = 108,bklv = 14,star = 3,mon = {id = 220,desc = "pt-12-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-12",id = 1120220,cardId = 1101003,lv = 108,bklv = 14,star = 3,mon = {id = 203,desc = "pt-12-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",id = 1120221,cardId = 1102005,lv = 108,bklv = 14,star = 3,mon = {id = 223,desc = "pt-12-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-12",id = 1120230,cardId = 1101014,lv = 108,bklv = 14,star = 3,mon = {id = 214,desc = "pt-12-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",id = 1120231,cardId = 1102020,lv = 108,bklv = 14,star = 3,mon = {id = 238,desc = "pt-12-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11203] = {
		[1] = {
			jlr = {cha = "pt-12",id = 1120310,cardId = 1101007,lv = 109,bklv = 14,star = 3,mon = {id = 212,desc = "pt-12-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",id = 1120311,cardId = 1102012,lv = 109,bklv = 14,star = 3,mon = {id = 236,desc = "pt-12-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-12",id = 1120320,cardId = 1101003,lv = 109,bklv = 14,star = 3,mon = {id = 208,desc = "pt-12-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",id = 1120321,cardId = 1102005,lv = 109,bklv = 14,star = 3,mon = {id = 231,desc = "pt-12-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-12",id = 1120330,cardId = 1101014,lv = 109,bklv = 14,star = 3,mon = {id = 209,desc = "pt-12-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",id = 1120331,cardId = 1102020,lv = 109,bklv = 14,star = 3,mon = {id = 232,desc = "pt-12-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11204] = {
		[1] = {
			jlr = {cha = "pt-12",id = 1120410,cardId = 1101007,lv = 110,bklv = 15,star = 3,mon = {id = 215,desc = "pt-12-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",id = 1120411,cardId = 1102012,lv = 110,bklv = 15,star = 3,mon = {id = 239,desc = "pt-12-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-12",id = 1120420,cardId = 1101003,lv = 110,bklv = 15,star = 3,mon = {id = 201,desc = "pt-12-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",id = 1120421,cardId = 1102005,lv = 110,bklv = 15,star = 3,mon = {id = 227,desc = "pt-12-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-12",id = 1120430,cardId = 1101014,lv = 110,bklv = 15,star = 3,mon = {id = 211,desc = "pt-12-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",id = 1120431,cardId = 1102020,lv = 110,bklv = 15,star = 3,mon = {id = 235,desc = "pt-12-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11205] = {
		[1] = {
			jlr = {cha = "pt-12",id = 1120510,cardId = 1101007,lv = 110,bklv = 15,star = 3,mon = {id = 206,desc = "pt-12-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",id = 1120511,cardId = 1102012,lv = 110,bklv = 15,star = 3,mon = {id = 225,desc = "pt-12-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-12",id = 1120520,cardId = 1101003,lv = 110,bklv = 15,star = 3,mon = {id = 203,desc = "pt-12-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",id = 1120521,cardId = 1102005,lv = 110,bklv = 15,star = 3,mon = {id = 223,desc = "pt-12-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-12",id = 1120530,cardId = 1101014,lv = 110,bklv = 15,star = 3,mon = {id = 212,desc = "pt-12-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",id = 1120531,cardId = 1102020,lv = 110,bklv = 15,star = 3,mon = {id = 236,desc = "pt-12-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11206] = {
		[1] = {
			jlr = {cha = "pt-12",id = 1120610,cardId = 1101007,lv = 111,bklv = 15,star = 3,mon = {id = 209,desc = "pt-12-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",id = 1120611,cardId = 1102012,lv = 111,bklv = 15,star = 3,mon = {id = 232,desc = "pt-12-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-12",id = 1120620,cardId = 1101003,lv = 111,bklv = 15,star = 3,mon = {id = 208,desc = "pt-12-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",id = 1120621,cardId = 1102005,lv = 111,bklv = 15,star = 3,mon = {id = 231,desc = "pt-12-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-12",id = 1120630,cardId = 1101014,lv = 111,bklv = 15,star = 3,mon = {id = 212,desc = "pt-12-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",id = 1120631,cardId = 1102020,lv = 111,bklv = 15,star = 3,mon = {id = 236,desc = "pt-12-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11207] = {
		[1] = {
			jlr = {cha = "pt-12",id = 1120710,cardId = 1101007,lv = 111,bklv = 15,star = 3,mon = {id = 207,desc = "pt-12-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",id = 1120711,cardId = 1102012,lv = 111,bklv = 15,star = 3,mon = {id = 227,desc = "pt-12-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-12",id = 1120720,cardId = 1101003,lv = 111,bklv = 15,star = 3,mon = {id = 207,desc = "pt-12-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",id = 1120721,cardId = 1102005,lv = 111,bklv = 15,star = 3,mon = {id = 221,desc = "pt-12-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-12",id = 1120730,cardId = 1101014,lv = 111,bklv = 15,star = 3,mon = {id = 211,desc = "pt-12-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",id = 1120731,cardId = 1102020,lv = 111,bklv = 15,star = 3,mon = {id = 235,desc = "pt-12-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11208] = {
		[1] = {
			jlr = {cha = "pt-12",id = 1120810,cardId = 1101007,lv = 112,bklv = 15,star = 3,mon = {id = 207,desc = "pt-12-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",id = 1120811,cardId = 1102012,lv = 112,bklv = 15,star = 3,mon = {id = 230,desc = "pt-12-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-12",id = 1120820,cardId = 1101003,lv = 112,bklv = 15,star = 3,mon = {id = 205,desc = "pt-12-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",id = 1120821,cardId = 1102005,lv = 112,bklv = 15,star = 3,mon = {id = 229,desc = "pt-12-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-12",id = 1120830,cardId = 1101014,lv = 112,bklv = 15,star = 3,mon = {id = 210,desc = "pt-12-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",id = 1120831,cardId = 1102020,lv = 112,bklv = 15,star = 3,mon = {id = 234,desc = "pt-12-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11209] = {
		[1] = {
			jlr = {cha = "pt-12",id = 1120910,cardId = 1101007,lv = 112,bklv = 15,star = 3,mon = {id = 212,desc = "pt-12-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",id = 1120911,cardId = 1102012,lv = 112,bklv = 15,star = 3,mon = {id = 236,desc = "pt-12-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-12",id = 1120920,cardId = 1101003,lv = 112,bklv = 15,star = 3,mon = {id = 208,desc = "pt-12-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",id = 1120921,cardId = 1102005,lv = 112,bklv = 15,star = 3,mon = {id = 231,desc = "pt-12-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-12",id = 1120930,cardId = 1101014,lv = 112,bklv = 15,star = 3,mon = {id = 209,desc = "pt-12-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",id = 1120931,cardId = 1102020,lv = 112,bklv = 15,star = 3,mon = {id = 232,desc = "pt-12-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11210] = {
		[1] = {
			jlr = {cha = "pt-12",id = 1121010,cardId = 1101007,lv = 113,bklv = 15,star = 3,mon = {id = 201,desc = "pt-12-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",id = 1121011,cardId = 1102012,lv = 113,bklv = 15,star = 3,mon = {id = 220,desc = "pt-12-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-12",id = 1121020,cardId = 1101003,lv = 113,bklv = 15,star = 3,mon = {id = 203,desc = "pt-12-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",id = 1121021,cardId = 1102005,lv = 113,bklv = 15,star = 3,mon = {id = 223,desc = "pt-12-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-12",id = 1121030,cardId = 1101014,lv = 113,bklv = 15,star = 3,mon = {id = 214,desc = "pt-12-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",id = 1121031,cardId = 1102020,lv = 113,bklv = 15,star = 3,mon = {id = 238,desc = "pt-12-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11211] = {
		[1] = {
			jlr = {cha = "pt-12",id = 1121110,cardId = 1101007,lv = 113,bklv = 15,star = 3,mon = {id = 212,desc = "pt-12-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",id = 1121111,cardId = 1102012,lv = 113,bklv = 15,star = 3,mon = {id = 236,desc = "pt-12-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-12",id = 1121120,cardId = 1101003,lv = 113,bklv = 15,star = 3,mon = {id = 208,desc = "pt-12-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",id = 1121121,cardId = 1102005,lv = 113,bklv = 15,star = 3,mon = {id = 231,desc = "pt-12-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-12",id = 1121130,cardId = 1101014,lv = 113,bklv = 15,star = 3,mon = {id = 209,desc = "pt-12-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",id = 1121131,cardId = 1102020,lv = 113,bklv = 15,star = 3,mon = {id = 232,desc = "pt-12-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11212] = {
		[1] = {
			jlr = {cha = "pt-12",id = 1121210,cardId = 1101007,lv = 113,bklv = 15,star = 3,mon = {id = 215,desc = "pt-12-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",id = 1121211,cardId = 1102012,lv = 113,bklv = 15,star = 3,mon = {id = 239,desc = "pt-12-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-12",id = 1121220,cardId = 1101003,lv = 113,bklv = 15,star = 3,mon = {id = 201,desc = "pt-12-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",id = 1121221,cardId = 1102005,lv = 113,bklv = 15,star = 3,mon = {id = 227,desc = "pt-12-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-12",id = 1121230,cardId = 1101014,lv = 113,bklv = 15,star = 3,mon = {id = 211,desc = "pt-12-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",id = 1121231,cardId = 1102020,lv = 113,bklv = 15,star = 3,mon = {id = 235,desc = "pt-12-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11213] = {
		[1] = {
			jlr = {cha = "pt-12",id = 1121310,cardId = 1101007,lv = 114,bklv = 15,star = 3,mon = {id = 209,desc = "pt-12-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",id = 1121311,cardId = 1102012,lv = 114,bklv = 15,star = 3,mon = {id = 232,desc = "pt-12-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-12",id = 1121320,cardId = 1101003,lv = 114,bklv = 15,star = 3,mon = {id = 208,desc = "pt-12-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",id = 1121321,cardId = 1102005,lv = 114,bklv = 15,star = 3,mon = {id = 231,desc = "pt-12-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-12",id = 1121330,cardId = 1101014,lv = 114,bklv = 15,star = 3,mon = {id = 212,desc = "pt-12-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",id = 1121331,cardId = 1102020,lv = 114,bklv = 15,star = 3,mon = {id = 236,desc = "pt-12-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11214] = {
		[1] = {
			jlr = {cha = "pt-12",id = 1121410,cardId = 1101007,lv = 114,bklv = 15,star = 3,mon = {id = 207,desc = "pt-12-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",id = 1121411,cardId = 1102012,lv = 114,bklv = 15,star = 3,mon = {id = 227,desc = "pt-12-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-12",id = 1121420,cardId = 1101003,lv = 114,bklv = 15,star = 3,mon = {id = 207,desc = "pt-12-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",id = 1121421,cardId = 1102005,lv = 114,bklv = 15,star = 3,mon = {id = 221,desc = "pt-12-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-12",id = 1121430,cardId = 1101014,lv = 114,bklv = 15,star = 3,mon = {id = 211,desc = "pt-12-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",id = 1121431,cardId = 1102020,lv = 114,bklv = 15,star = 3,mon = {id = 235,desc = "pt-12-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11215] = {
		[1] = {
			jlr = {cha = "pt-12",id = 1121510,cardId = 1101007,lv = 115,bklv = 16,star = 3,mon = {id = 205,desc = "pt-12-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",id = 1121511,cardId = 1102012,lv = 115,bklv = 16,star = 3,mon = {id = 219,desc = "pt-12-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-12",id = 1121520,cardId = 1101003,lv = 115,bklv = 16,star = 3,mon = {id = 204,desc = "pt-12-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",id = 1121521,cardId = 1102005,lv = 115,bklv = 16,star = 3,mon = {id = 224,desc = "pt-12-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-12",id = 1121530,cardId = 1101014,lv = 115,bklv = 16,star = 3,mon = {id = 207,desc = "pt-12-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-12",id = 1121531,cardId = 1102020,lv = 115,bklv = 16,star = 3,mon = {id = 228,desc = "pt-12-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11301] = {
		[1] = {
			jlr = {cha = "pt-13",id = 1130110,cardId = 1101007,lv = 117,bklv = 16,star = 4,mon = {id = 212,desc = "pt-13-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",id = 1130111,cardId = 1102012,lv = 117,bklv = 16,star = 4,mon = {id = 236,desc = "pt-13-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-13",id = 1130120,cardId = 1101003,lv = 117,bklv = 16,star = 4,mon = {id = 208,desc = "pt-13-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",id = 1130121,cardId = 1102005,lv = 117,bklv = 16,star = 4,mon = {id = 231,desc = "pt-13-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-13",id = 1130130,cardId = 1101014,lv = 117,bklv = 16,star = 4,mon = {id = 213,desc = "pt-13-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",id = 1130131,cardId = 1102020,lv = 117,bklv = 16,star = 4,mon = {id = 237,desc = "pt-13-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11302] = {
		[1] = {
			jlr = {cha = "pt-13",id = 1130210,cardId = 1101007,lv = 118,bklv = 16,star = 4,mon = {id = 201,desc = "pt-13-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",id = 1130211,cardId = 1102012,lv = 118,bklv = 16,star = 4,mon = {id = 220,desc = "pt-13-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-13",id = 1130220,cardId = 1101003,lv = 118,bklv = 16,star = 4,mon = {id = 203,desc = "pt-13-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",id = 1130221,cardId = 1102005,lv = 118,bklv = 16,star = 4,mon = {id = 223,desc = "pt-13-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-13",id = 1130230,cardId = 1101014,lv = 118,bklv = 16,star = 4,mon = {id = 214,desc = "pt-13-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",id = 1130231,cardId = 1102020,lv = 118,bklv = 16,star = 4,mon = {id = 238,desc = "pt-13-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11303] = {
		[1] = {
			jlr = {cha = "pt-13",id = 1130310,cardId = 1101007,lv = 119,bklv = 16,star = 4,mon = {id = 212,desc = "pt-13-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",id = 1130311,cardId = 1102012,lv = 119,bklv = 16,star = 4,mon = {id = 236,desc = "pt-13-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-13",id = 1130320,cardId = 1101003,lv = 119,bklv = 16,star = 4,mon = {id = 208,desc = "pt-13-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",id = 1130321,cardId = 1102005,lv = 119,bklv = 16,star = 4,mon = {id = 231,desc = "pt-13-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-13",id = 1130330,cardId = 1101014,lv = 119,bklv = 16,star = 4,mon = {id = 209,desc = "pt-13-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",id = 1130331,cardId = 1102020,lv = 119,bklv = 16,star = 4,mon = {id = 232,desc = "pt-13-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11304] = {
		[1] = {
			jlr = {cha = "pt-13",id = 1130410,cardId = 1101007,lv = 120,bklv = 17,star = 4,mon = {id = 215,desc = "pt-13-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",id = 1130411,cardId = 1102012,lv = 120,bklv = 17,star = 4,mon = {id = 239,desc = "pt-13-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-13",id = 1130420,cardId = 1101003,lv = 120,bklv = 17,star = 4,mon = {id = 201,desc = "pt-13-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",id = 1130421,cardId = 1102005,lv = 120,bklv = 17,star = 4,mon = {id = 227,desc = "pt-13-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-13",id = 1130430,cardId = 1101014,lv = 120,bklv = 17,star = 4,mon = {id = 211,desc = "pt-13-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",id = 1130431,cardId = 1102020,lv = 120,bklv = 17,star = 4,mon = {id = 235,desc = "pt-13-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11305] = {
		[1] = {
			jlr = {cha = "pt-13",id = 1130510,cardId = 1101007,lv = 120,bklv = 17,star = 4,mon = {id = 206,desc = "pt-13-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",id = 1130511,cardId = 1102012,lv = 120,bklv = 17,star = 4,mon = {id = 225,desc = "pt-13-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-13",id = 1130520,cardId = 1101003,lv = 120,bklv = 17,star = 4,mon = {id = 203,desc = "pt-13-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",id = 1130521,cardId = 1102005,lv = 120,bklv = 17,star = 4,mon = {id = 223,desc = "pt-13-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-13",id = 1130530,cardId = 1101014,lv = 120,bklv = 17,star = 4,mon = {id = 212,desc = "pt-13-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",id = 1130531,cardId = 1102020,lv = 120,bklv = 17,star = 4,mon = {id = 236,desc = "pt-13-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11306] = {
		[1] = {
			jlr = {cha = "pt-13",id = 1130610,cardId = 1101007,lv = 121,bklv = 17,star = 4,mon = {id = 209,desc = "pt-13-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",id = 1130611,cardId = 1102012,lv = 121,bklv = 17,star = 4,mon = {id = 232,desc = "pt-13-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-13",id = 1130620,cardId = 1101003,lv = 121,bklv = 17,star = 4,mon = {id = 208,desc = "pt-13-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",id = 1130621,cardId = 1102005,lv = 121,bklv = 17,star = 4,mon = {id = 231,desc = "pt-13-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-13",id = 1130630,cardId = 1101014,lv = 121,bklv = 17,star = 4,mon = {id = 212,desc = "pt-13-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",id = 1130631,cardId = 1102020,lv = 121,bklv = 17,star = 4,mon = {id = 236,desc = "pt-13-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11307] = {
		[1] = {
			jlr = {cha = "pt-13",id = 1130710,cardId = 1101007,lv = 121,bklv = 17,star = 4,mon = {id = 207,desc = "pt-13-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",id = 1130711,cardId = 1102012,lv = 121,bklv = 17,star = 4,mon = {id = 227,desc = "pt-13-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-13",id = 1130720,cardId = 1101003,lv = 121,bklv = 17,star = 4,mon = {id = 207,desc = "pt-13-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",id = 1130721,cardId = 1102005,lv = 121,bklv = 17,star = 4,mon = {id = 221,desc = "pt-13-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-13",id = 1130730,cardId = 1101014,lv = 121,bklv = 17,star = 4,mon = {id = 211,desc = "pt-13-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",id = 1130731,cardId = 1102020,lv = 121,bklv = 17,star = 4,mon = {id = 235,desc = "pt-13-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11308] = {
		[1] = {
			jlr = {cha = "pt-13",id = 1130810,cardId = 1101007,lv = 122,bklv = 17,star = 4,mon = {id = 207,desc = "pt-13-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",id = 1130811,cardId = 1102012,lv = 122,bklv = 17,star = 4,mon = {id = 230,desc = "pt-13-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-13",id = 1130820,cardId = 1101003,lv = 122,bklv = 17,star = 4,mon = {id = 205,desc = "pt-13-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",id = 1130821,cardId = 1102005,lv = 122,bklv = 17,star = 4,mon = {id = 229,desc = "pt-13-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-13",id = 1130830,cardId = 1101014,lv = 122,bklv = 17,star = 4,mon = {id = 210,desc = "pt-13-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",id = 1130831,cardId = 1102020,lv = 122,bklv = 17,star = 4,mon = {id = 234,desc = "pt-13-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11309] = {
		[1] = {
			jlr = {cha = "pt-13",id = 1130910,cardId = 1101007,lv = 122,bklv = 17,star = 4,mon = {id = 212,desc = "pt-13-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",id = 1130911,cardId = 1102012,lv = 122,bklv = 17,star = 4,mon = {id = 236,desc = "pt-13-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-13",id = 1130920,cardId = 1101003,lv = 122,bklv = 17,star = 4,mon = {id = 208,desc = "pt-13-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",id = 1130921,cardId = 1102005,lv = 122,bklv = 17,star = 4,mon = {id = 231,desc = "pt-13-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-13",id = 1130930,cardId = 1101014,lv = 122,bklv = 17,star = 4,mon = {id = 209,desc = "pt-13-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",id = 1130931,cardId = 1102020,lv = 122,bklv = 17,star = 4,mon = {id = 232,desc = "pt-13-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11310] = {
		[1] = {
			jlr = {cha = "pt-13",id = 1131010,cardId = 1101007,lv = 123,bklv = 17,star = 4,mon = {id = 201,desc = "pt-13-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",id = 1131011,cardId = 1102012,lv = 123,bklv = 17,star = 4,mon = {id = 220,desc = "pt-13-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-13",id = 1131020,cardId = 1101003,lv = 123,bklv = 17,star = 4,mon = {id = 203,desc = "pt-13-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",id = 1131021,cardId = 1102005,lv = 123,bklv = 17,star = 4,mon = {id = 223,desc = "pt-13-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-13",id = 1131030,cardId = 1101014,lv = 123,bklv = 17,star = 4,mon = {id = 214,desc = "pt-13-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",id = 1131031,cardId = 1102020,lv = 123,bklv = 17,star = 4,mon = {id = 238,desc = "pt-13-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11311] = {
		[1] = {
			jlr = {cha = "pt-13",id = 1131110,cardId = 1101007,lv = 123,bklv = 17,star = 4,mon = {id = 212,desc = "pt-13-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",id = 1131111,cardId = 1102012,lv = 123,bklv = 17,star = 4,mon = {id = 236,desc = "pt-13-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-13",id = 1131120,cardId = 1101003,lv = 123,bklv = 17,star = 4,mon = {id = 208,desc = "pt-13-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",id = 1131121,cardId = 1102005,lv = 123,bklv = 17,star = 4,mon = {id = 231,desc = "pt-13-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-13",id = 1131130,cardId = 1101014,lv = 123,bklv = 17,star = 4,mon = {id = 209,desc = "pt-13-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",id = 1131131,cardId = 1102020,lv = 123,bklv = 17,star = 4,mon = {id = 232,desc = "pt-13-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11312] = {
		[1] = {
			jlr = {cha = "pt-13",id = 1131210,cardId = 1101007,lv = 123,bklv = 17,star = 4,mon = {id = 215,desc = "pt-13-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",id = 1131211,cardId = 1102012,lv = 123,bklv = 17,star = 4,mon = {id = 239,desc = "pt-13-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-13",id = 1131220,cardId = 1101003,lv = 123,bklv = 17,star = 4,mon = {id = 201,desc = "pt-13-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",id = 1131221,cardId = 1102005,lv = 123,bklv = 17,star = 4,mon = {id = 227,desc = "pt-13-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-13",id = 1131230,cardId = 1101014,lv = 123,bklv = 17,star = 4,mon = {id = 211,desc = "pt-13-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",id = 1131231,cardId = 1102020,lv = 123,bklv = 17,star = 4,mon = {id = 235,desc = "pt-13-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11313] = {
		[1] = {
			jlr = {cha = "pt-13",id = 1131310,cardId = 1101007,lv = 124,bklv = 17,star = 4,mon = {id = 209,desc = "pt-13-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",id = 1131311,cardId = 1102012,lv = 124,bklv = 17,star = 4,mon = {id = 232,desc = "pt-13-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-13",id = 1131320,cardId = 1101003,lv = 124,bklv = 17,star = 4,mon = {id = 208,desc = "pt-13-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",id = 1131321,cardId = 1102005,lv = 124,bklv = 17,star = 4,mon = {id = 231,desc = "pt-13-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-13",id = 1131330,cardId = 1101014,lv = 124,bklv = 17,star = 4,mon = {id = 212,desc = "pt-13-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",id = 1131331,cardId = 1102020,lv = 124,bklv = 17,star = 4,mon = {id = 236,desc = "pt-13-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11314] = {
		[1] = {
			jlr = {cha = "pt-13",id = 1131410,cardId = 1101007,lv = 124,bklv = 17,star = 4,mon = {id = 207,desc = "pt-13-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",id = 1131411,cardId = 1102012,lv = 124,bklv = 17,star = 4,mon = {id = 227,desc = "pt-13-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-13",id = 1131420,cardId = 1101003,lv = 124,bklv = 17,star = 4,mon = {id = 207,desc = "pt-13-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",id = 1131421,cardId = 1102005,lv = 124,bklv = 17,star = 4,mon = {id = 221,desc = "pt-13-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-13",id = 1131430,cardId = 1101014,lv = 124,bklv = 17,star = 4,mon = {id = 211,desc = "pt-13-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",id = 1131431,cardId = 1102020,lv = 124,bklv = 17,star = 4,mon = {id = 235,desc = "pt-13-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11315] = {
		[1] = {
			jlr = {cha = "pt-13",id = 1131510,cardId = 1101007,lv = 125,bklv = 18,star = 4,mon = {id = 205,desc = "pt-13-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",id = 1131511,cardId = 1102012,lv = 125,bklv = 18,star = 4,mon = {id = 219,desc = "pt-13-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-13",id = 1131520,cardId = 1101003,lv = 125,bklv = 18,star = 4,mon = {id = 204,desc = "pt-13-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",id = 1131521,cardId = 1102005,lv = 125,bklv = 18,star = 4,mon = {id = 224,desc = "pt-13-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-13",id = 1131530,cardId = 1101014,lv = 125,bklv = 18,star = 4,mon = {id = 207,desc = "pt-13-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-13",id = 1131531,cardId = 1102020,lv = 125,bklv = 18,star = 4,mon = {id = 228,desc = "pt-13-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11401] = {
		[1] = {
			jlr = {cha = "pt-14",id = 1140110,cardId = 1101007,lv = 127,bklv = 18,star = 4,mon = {id = 212,desc = "pt-14-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",id = 1140111,cardId = 1102012,lv = 127,bklv = 18,star = 4,mon = {id = 236,desc = "pt-14-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-14",id = 1140120,cardId = 1101003,lv = 127,bklv = 18,star = 4,mon = {id = 208,desc = "pt-14-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",id = 1140121,cardId = 1102005,lv = 127,bklv = 18,star = 4,mon = {id = 231,desc = "pt-14-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-14",id = 1140130,cardId = 1101014,lv = 127,bklv = 18,star = 4,mon = {id = 213,desc = "pt-14-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",id = 1140131,cardId = 1102020,lv = 127,bklv = 18,star = 4,mon = {id = 237,desc = "pt-14-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11402] = {
		[1] = {
			jlr = {cha = "pt-14",id = 1140210,cardId = 1101007,lv = 128,bklv = 18,star = 4,mon = {id = 201,desc = "pt-14-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",id = 1140211,cardId = 1102012,lv = 128,bklv = 18,star = 4,mon = {id = 220,desc = "pt-14-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-14",id = 1140220,cardId = 1101003,lv = 128,bklv = 18,star = 4,mon = {id = 203,desc = "pt-14-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",id = 1140221,cardId = 1102005,lv = 128,bklv = 18,star = 4,mon = {id = 223,desc = "pt-14-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-14",id = 1140230,cardId = 1101014,lv = 128,bklv = 18,star = 4,mon = {id = 214,desc = "pt-14-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",id = 1140231,cardId = 1102020,lv = 128,bklv = 18,star = 4,mon = {id = 238,desc = "pt-14-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11403] = {
		[1] = {
			jlr = {cha = "pt-14",id = 1140310,cardId = 1101007,lv = 129,bklv = 18,star = 4,mon = {id = 212,desc = "pt-14-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",id = 1140311,cardId = 1102012,lv = 129,bklv = 18,star = 4,mon = {id = 236,desc = "pt-14-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-14",id = 1140320,cardId = 1101003,lv = 129,bklv = 18,star = 4,mon = {id = 208,desc = "pt-14-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",id = 1140321,cardId = 1102005,lv = 129,bklv = 18,star = 4,mon = {id = 231,desc = "pt-14-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-14",id = 1140330,cardId = 1101014,lv = 129,bklv = 18,star = 4,mon = {id = 209,desc = "pt-14-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",id = 1140331,cardId = 1102020,lv = 129,bklv = 18,star = 4,mon = {id = 232,desc = "pt-14-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11404] = {
		[1] = {
			jlr = {cha = "pt-14",id = 1140410,cardId = 1101007,lv = 130,bklv = 19,star = 4,mon = {id = 215,desc = "pt-14-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",id = 1140411,cardId = 1102012,lv = 130,bklv = 19,star = 4,mon = {id = 239,desc = "pt-14-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-14",id = 1140420,cardId = 1101003,lv = 130,bklv = 19,star = 4,mon = {id = 201,desc = "pt-14-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",id = 1140421,cardId = 1102005,lv = 130,bklv = 19,star = 4,mon = {id = 227,desc = "pt-14-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-14",id = 1140430,cardId = 1101014,lv = 130,bklv = 19,star = 4,mon = {id = 211,desc = "pt-14-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",id = 1140431,cardId = 1102020,lv = 130,bklv = 19,star = 4,mon = {id = 235,desc = "pt-14-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11405] = {
		[1] = {
			jlr = {cha = "pt-14",id = 1140510,cardId = 1101007,lv = 130,bklv = 19,star = 4,mon = {id = 206,desc = "pt-14-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",id = 1140511,cardId = 1102012,lv = 130,bklv = 19,star = 4,mon = {id = 225,desc = "pt-14-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-14",id = 1140520,cardId = 1101003,lv = 130,bklv = 19,star = 4,mon = {id = 203,desc = "pt-14-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",id = 1140521,cardId = 1102005,lv = 130,bklv = 19,star = 4,mon = {id = 223,desc = "pt-14-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-14",id = 1140530,cardId = 1101014,lv = 130,bklv = 19,star = 4,mon = {id = 212,desc = "pt-14-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",id = 1140531,cardId = 1102020,lv = 130,bklv = 19,star = 4,mon = {id = 236,desc = "pt-14-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11406] = {
		[1] = {
			jlr = {cha = "pt-14",id = 1140610,cardId = 1101007,lv = 131,bklv = 19,star = 4,mon = {id = 209,desc = "pt-14-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",id = 1140611,cardId = 1102012,lv = 131,bklv = 19,star = 4,mon = {id = 232,desc = "pt-14-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-14",id = 1140620,cardId = 1101003,lv = 131,bklv = 19,star = 4,mon = {id = 208,desc = "pt-14-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",id = 1140621,cardId = 1102005,lv = 131,bklv = 19,star = 4,mon = {id = 231,desc = "pt-14-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-14",id = 1140630,cardId = 1101014,lv = 131,bklv = 19,star = 4,mon = {id = 212,desc = "pt-14-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",id = 1140631,cardId = 1102020,lv = 131,bklv = 19,star = 4,mon = {id = 236,desc = "pt-14-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11407] = {
		[1] = {
			jlr = {cha = "pt-14",id = 1140710,cardId = 1101007,lv = 131,bklv = 19,star = 4,mon = {id = 207,desc = "pt-14-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",id = 1140711,cardId = 1102012,lv = 131,bklv = 19,star = 4,mon = {id = 227,desc = "pt-14-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-14",id = 1140720,cardId = 1101003,lv = 131,bklv = 19,star = 4,mon = {id = 207,desc = "pt-14-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",id = 1140721,cardId = 1102005,lv = 131,bklv = 19,star = 4,mon = {id = 221,desc = "pt-14-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-14",id = 1140730,cardId = 1101014,lv = 131,bklv = 19,star = 4,mon = {id = 211,desc = "pt-14-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",id = 1140731,cardId = 1102020,lv = 131,bklv = 19,star = 4,mon = {id = 235,desc = "pt-14-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11408] = {
		[1] = {
			jlr = {cha = "pt-14",id = 1140810,cardId = 1101007,lv = 132,bklv = 19,star = 4,mon = {id = 207,desc = "pt-14-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",id = 1140811,cardId = 1102012,lv = 132,bklv = 19,star = 4,mon = {id = 230,desc = "pt-14-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-14",id = 1140820,cardId = 1101003,lv = 132,bklv = 19,star = 4,mon = {id = 205,desc = "pt-14-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",id = 1140821,cardId = 1102005,lv = 132,bklv = 19,star = 4,mon = {id = 229,desc = "pt-14-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-14",id = 1140830,cardId = 1101014,lv = 132,bklv = 19,star = 4,mon = {id = 210,desc = "pt-14-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",id = 1140831,cardId = 1102020,lv = 132,bklv = 19,star = 4,mon = {id = 234,desc = "pt-14-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11409] = {
		[1] = {
			jlr = {cha = "pt-14",id = 1140910,cardId = 1101007,lv = 132,bklv = 19,star = 4,mon = {id = 212,desc = "pt-14-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",id = 1140911,cardId = 1102012,lv = 132,bklv = 19,star = 4,mon = {id = 236,desc = "pt-14-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-14",id = 1140920,cardId = 1101003,lv = 132,bklv = 19,star = 4,mon = {id = 208,desc = "pt-14-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",id = 1140921,cardId = 1102005,lv = 132,bklv = 19,star = 4,mon = {id = 231,desc = "pt-14-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-14",id = 1140930,cardId = 1101014,lv = 132,bklv = 19,star = 4,mon = {id = 209,desc = "pt-14-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",id = 1140931,cardId = 1102020,lv = 132,bklv = 19,star = 4,mon = {id = 232,desc = "pt-14-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11410] = {
		[1] = {
			jlr = {cha = "pt-14",id = 1141010,cardId = 1101007,lv = 133,bklv = 19,star = 4,mon = {id = 201,desc = "pt-14-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",id = 1141011,cardId = 1102012,lv = 133,bklv = 19,star = 4,mon = {id = 220,desc = "pt-14-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-14",id = 1141020,cardId = 1101003,lv = 133,bklv = 19,star = 4,mon = {id = 203,desc = "pt-14-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",id = 1141021,cardId = 1102005,lv = 133,bklv = 19,star = 4,mon = {id = 223,desc = "pt-14-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-14",id = 1141030,cardId = 1101014,lv = 133,bklv = 19,star = 4,mon = {id = 214,desc = "pt-14-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",id = 1141031,cardId = 1102020,lv = 133,bklv = 19,star = 4,mon = {id = 238,desc = "pt-14-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11411] = {
		[1] = {
			jlr = {cha = "pt-14",id = 1141110,cardId = 1101007,lv = 133,bklv = 19,star = 4,mon = {id = 212,desc = "pt-14-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",id = 1141111,cardId = 1102012,lv = 133,bklv = 19,star = 4,mon = {id = 236,desc = "pt-14-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-14",id = 1141120,cardId = 1101003,lv = 133,bklv = 19,star = 4,mon = {id = 208,desc = "pt-14-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",id = 1141121,cardId = 1102005,lv = 133,bklv = 19,star = 4,mon = {id = 231,desc = "pt-14-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-14",id = 1141130,cardId = 1101014,lv = 133,bklv = 19,star = 4,mon = {id = 209,desc = "pt-14-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",id = 1141131,cardId = 1102020,lv = 133,bklv = 19,star = 4,mon = {id = 232,desc = "pt-14-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11412] = {
		[1] = {
			jlr = {cha = "pt-14",id = 1141210,cardId = 1101007,lv = 133,bklv = 19,star = 4,mon = {id = 215,desc = "pt-14-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",id = 1141211,cardId = 1102012,lv = 133,bklv = 19,star = 4,mon = {id = 239,desc = "pt-14-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-14",id = 1141220,cardId = 1101003,lv = 133,bklv = 19,star = 4,mon = {id = 201,desc = "pt-14-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",id = 1141221,cardId = 1102005,lv = 133,bklv = 19,star = 4,mon = {id = 227,desc = "pt-14-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-14",id = 1141230,cardId = 1101014,lv = 133,bklv = 19,star = 4,mon = {id = 211,desc = "pt-14-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",id = 1141231,cardId = 1102020,lv = 133,bklv = 19,star = 4,mon = {id = 235,desc = "pt-14-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11413] = {
		[1] = {
			jlr = {cha = "pt-14",id = 1141310,cardId = 1101007,lv = 134,bklv = 19,star = 4,mon = {id = 209,desc = "pt-14-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",id = 1141311,cardId = 1102012,lv = 134,bklv = 19,star = 4,mon = {id = 232,desc = "pt-14-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-14",id = 1141320,cardId = 1101003,lv = 134,bklv = 19,star = 4,mon = {id = 208,desc = "pt-14-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",id = 1141321,cardId = 1102005,lv = 134,bklv = 19,star = 4,mon = {id = 231,desc = "pt-14-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-14",id = 1141330,cardId = 1101014,lv = 134,bklv = 19,star = 4,mon = {id = 212,desc = "pt-14-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",id = 1141331,cardId = 1102020,lv = 134,bklv = 19,star = 4,mon = {id = 236,desc = "pt-14-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11414] = {
		[1] = {
			jlr = {cha = "pt-14",id = 1141410,cardId = 1101007,lv = 134,bklv = 19,star = 4,mon = {id = 207,desc = "pt-14-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",id = 1141411,cardId = 1102012,lv = 134,bklv = 19,star = 4,mon = {id = 227,desc = "pt-14-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-14",id = 1141420,cardId = 1101003,lv = 134,bklv = 19,star = 4,mon = {id = 207,desc = "pt-14-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",id = 1141421,cardId = 1102005,lv = 134,bklv = 19,star = 4,mon = {id = 221,desc = "pt-14-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-14",id = 1141430,cardId = 1101014,lv = 134,bklv = 19,star = 4,mon = {id = 211,desc = "pt-14-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",id = 1141431,cardId = 1102020,lv = 134,bklv = 19,star = 4,mon = {id = 235,desc = "pt-14-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11415] = {
		[1] = {
			jlr = {cha = "pt-14",id = 1141510,cardId = 1101007,lv = 135,bklv = 20,star = 4,mon = {id = 205,desc = "pt-14-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",id = 1141511,cardId = 1102012,lv = 135,bklv = 20,star = 4,mon = {id = 219,desc = "pt-14-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-14",id = 1141520,cardId = 1101003,lv = 135,bklv = 20,star = 4,mon = {id = 204,desc = "pt-14-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",id = 1141521,cardId = 1102005,lv = 135,bklv = 20,star = 4,mon = {id = 224,desc = "pt-14-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-14",id = 1141530,cardId = 1101014,lv = 135,bklv = 20,star = 4,mon = {id = 207,desc = "pt-14-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-14",id = 1141531,cardId = 1102020,lv = 135,bklv = 20,star = 4,mon = {id = 228,desc = "pt-14-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11501] = {
		[1] = {
			jlr = {cha = "pt-15",id = 1150110,cardId = 1101007,lv = 137,bklv = 20,star = 4,mon = {id = 212,desc = "pt-15-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",id = 1150111,cardId = 1102012,lv = 137,bklv = 20,star = 4,mon = {id = 236,desc = "pt-15-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-15",id = 1150120,cardId = 1101003,lv = 137,bklv = 20,star = 4,mon = {id = 208,desc = "pt-15-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",id = 1150121,cardId = 1102005,lv = 137,bklv = 20,star = 4,mon = {id = 231,desc = "pt-15-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-15",id = 1150130,cardId = 1101014,lv = 137,bklv = 20,star = 4,mon = {id = 213,desc = "pt-15-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",id = 1150131,cardId = 1102020,lv = 137,bklv = 20,star = 4,mon = {id = 237,desc = "pt-15-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11502] = {
		[1] = {
			jlr = {cha = "pt-15",id = 1150210,cardId = 1101007,lv = 138,bklv = 20,star = 4,mon = {id = 201,desc = "pt-15-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",id = 1150211,cardId = 1102012,lv = 138,bklv = 20,star = 4,mon = {id = 220,desc = "pt-15-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-15",id = 1150220,cardId = 1101003,lv = 138,bklv = 20,star = 4,mon = {id = 203,desc = "pt-15-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",id = 1150221,cardId = 1102005,lv = 138,bklv = 20,star = 4,mon = {id = 223,desc = "pt-15-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-15",id = 1150230,cardId = 1101014,lv = 138,bklv = 20,star = 4,mon = {id = 214,desc = "pt-15-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",id = 1150231,cardId = 1102020,lv = 138,bklv = 20,star = 4,mon = {id = 238,desc = "pt-15-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11503] = {
		[1] = {
			jlr = {cha = "pt-15",id = 1150310,cardId = 1101007,lv = 139,bklv = 20,star = 4,mon = {id = 212,desc = "pt-15-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",id = 1150311,cardId = 1102012,lv = 139,bklv = 20,star = 4,mon = {id = 236,desc = "pt-15-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-15",id = 1150320,cardId = 1101003,lv = 139,bklv = 20,star = 4,mon = {id = 208,desc = "pt-15-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",id = 1150321,cardId = 1102005,lv = 139,bklv = 20,star = 4,mon = {id = 231,desc = "pt-15-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-15",id = 1150330,cardId = 1101014,lv = 139,bklv = 20,star = 4,mon = {id = 209,desc = "pt-15-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",id = 1150331,cardId = 1102020,lv = 139,bklv = 20,star = 4,mon = {id = 232,desc = "pt-15-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11504] = {
		[1] = {
			jlr = {cha = "pt-15",id = 1150410,cardId = 1101007,lv = 140,bklv = 21,star = 4,mon = {id = 215,desc = "pt-15-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",id = 1150411,cardId = 1102012,lv = 140,bklv = 21,star = 4,mon = {id = 239,desc = "pt-15-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-15",id = 1150420,cardId = 1101003,lv = 140,bklv = 21,star = 4,mon = {id = 201,desc = "pt-15-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",id = 1150421,cardId = 1102005,lv = 140,bklv = 21,star = 4,mon = {id = 227,desc = "pt-15-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-15",id = 1150430,cardId = 1101014,lv = 140,bklv = 21,star = 4,mon = {id = 211,desc = "pt-15-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",id = 1150431,cardId = 1102020,lv = 140,bklv = 21,star = 4,mon = {id = 235,desc = "pt-15-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11505] = {
		[1] = {
			jlr = {cha = "pt-15",id = 1150510,cardId = 1101007,lv = 140,bklv = 21,star = 4,mon = {id = 206,desc = "pt-15-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",id = 1150511,cardId = 1102012,lv = 140,bklv = 21,star = 4,mon = {id = 225,desc = "pt-15-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-15",id = 1150520,cardId = 1101003,lv = 140,bklv = 21,star = 4,mon = {id = 203,desc = "pt-15-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",id = 1150521,cardId = 1102005,lv = 140,bklv = 21,star = 4,mon = {id = 223,desc = "pt-15-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-15",id = 1150530,cardId = 1101014,lv = 140,bklv = 21,star = 4,mon = {id = 212,desc = "pt-15-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",id = 1150531,cardId = 1102020,lv = 140,bklv = 21,star = 4,mon = {id = 236,desc = "pt-15-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11506] = {
		[1] = {
			jlr = {cha = "pt-15",id = 1150610,cardId = 1101007,lv = 141,bklv = 21,star = 4,mon = {id = 209,desc = "pt-15-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",id = 1150611,cardId = 1102012,lv = 141,bklv = 21,star = 4,mon = {id = 232,desc = "pt-15-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-15",id = 1150620,cardId = 1101003,lv = 141,bklv = 21,star = 4,mon = {id = 208,desc = "pt-15-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",id = 1150621,cardId = 1102005,lv = 141,bklv = 21,star = 4,mon = {id = 231,desc = "pt-15-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-15",id = 1150630,cardId = 1101014,lv = 141,bklv = 21,star = 4,mon = {id = 212,desc = "pt-15-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",id = 1150631,cardId = 1102020,lv = 141,bklv = 21,star = 4,mon = {id = 236,desc = "pt-15-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11507] = {
		[1] = {
			jlr = {cha = "pt-15",id = 1150710,cardId = 1101007,lv = 141,bklv = 21,star = 4,mon = {id = 207,desc = "pt-15-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",id = 1150711,cardId = 1102012,lv = 141,bklv = 21,star = 4,mon = {id = 227,desc = "pt-15-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-15",id = 1150720,cardId = 1101003,lv = 141,bklv = 21,star = 4,mon = {id = 207,desc = "pt-15-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",id = 1150721,cardId = 1102005,lv = 141,bklv = 21,star = 4,mon = {id = 221,desc = "pt-15-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-15",id = 1150730,cardId = 1101014,lv = 141,bklv = 21,star = 4,mon = {id = 211,desc = "pt-15-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",id = 1150731,cardId = 1102020,lv = 141,bklv = 21,star = 4,mon = {id = 235,desc = "pt-15-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11508] = {
		[1] = {
			jlr = {cha = "pt-15",id = 1150810,cardId = 1101007,lv = 142,bklv = 21,star = 4,mon = {id = 207,desc = "pt-15-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",id = 1150811,cardId = 1102012,lv = 142,bklv = 21,star = 4,mon = {id = 230,desc = "pt-15-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-15",id = 1150820,cardId = 1101003,lv = 142,bklv = 21,star = 4,mon = {id = 205,desc = "pt-15-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",id = 1150821,cardId = 1102005,lv = 142,bklv = 21,star = 4,mon = {id = 229,desc = "pt-15-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-15",id = 1150830,cardId = 1101014,lv = 142,bklv = 21,star = 4,mon = {id = 210,desc = "pt-15-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",id = 1150831,cardId = 1102020,lv = 142,bklv = 21,star = 4,mon = {id = 234,desc = "pt-15-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11509] = {
		[1] = {
			jlr = {cha = "pt-15",id = 1150910,cardId = 1101007,lv = 142,bklv = 21,star = 4,mon = {id = 212,desc = "pt-15-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",id = 1150911,cardId = 1102012,lv = 142,bklv = 21,star = 4,mon = {id = 236,desc = "pt-15-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-15",id = 1150920,cardId = 1101003,lv = 142,bklv = 21,star = 4,mon = {id = 208,desc = "pt-15-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",id = 1150921,cardId = 1102005,lv = 142,bklv = 21,star = 4,mon = {id = 231,desc = "pt-15-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-15",id = 1150930,cardId = 1101014,lv = 142,bklv = 21,star = 4,mon = {id = 209,desc = "pt-15-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",id = 1150931,cardId = 1102020,lv = 142,bklv = 21,star = 4,mon = {id = 232,desc = "pt-15-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11510] = {
		[1] = {
			jlr = {cha = "pt-15",id = 1151010,cardId = 1101007,lv = 143,bklv = 21,star = 4,mon = {id = 201,desc = "pt-15-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",id = 1151011,cardId = 1102012,lv = 143,bklv = 21,star = 4,mon = {id = 220,desc = "pt-15-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-15",id = 1151020,cardId = 1101003,lv = 143,bklv = 21,star = 4,mon = {id = 203,desc = "pt-15-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",id = 1151021,cardId = 1102005,lv = 143,bklv = 21,star = 4,mon = {id = 223,desc = "pt-15-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-15",id = 1151030,cardId = 1101014,lv = 143,bklv = 21,star = 4,mon = {id = 214,desc = "pt-15-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",id = 1151031,cardId = 1102020,lv = 143,bklv = 21,star = 4,mon = {id = 238,desc = "pt-15-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11511] = {
		[1] = {
			jlr = {cha = "pt-15",id = 1151110,cardId = 1101007,lv = 143,bklv = 21,star = 4,mon = {id = 212,desc = "pt-15-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",id = 1151111,cardId = 1102012,lv = 143,bklv = 21,star = 4,mon = {id = 236,desc = "pt-15-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-15",id = 1151120,cardId = 1101003,lv = 143,bklv = 21,star = 4,mon = {id = 208,desc = "pt-15-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",id = 1151121,cardId = 1102005,lv = 143,bklv = 21,star = 4,mon = {id = 231,desc = "pt-15-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-15",id = 1151130,cardId = 1101014,lv = 143,bklv = 21,star = 4,mon = {id = 209,desc = "pt-15-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",id = 1151131,cardId = 1102020,lv = 143,bklv = 21,star = 4,mon = {id = 232,desc = "pt-15-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11512] = {
		[1] = {
			jlr = {cha = "pt-15",id = 1151210,cardId = 1101007,lv = 143,bklv = 21,star = 4,mon = {id = 215,desc = "pt-15-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",id = 1151211,cardId = 1102012,lv = 143,bklv = 21,star = 4,mon = {id = 239,desc = "pt-15-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-15",id = 1151220,cardId = 1101003,lv = 143,bklv = 21,star = 4,mon = {id = 201,desc = "pt-15-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",id = 1151221,cardId = 1102005,lv = 143,bklv = 21,star = 4,mon = {id = 227,desc = "pt-15-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-15",id = 1151230,cardId = 1101014,lv = 143,bklv = 21,star = 4,mon = {id = 211,desc = "pt-15-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",id = 1151231,cardId = 1102020,lv = 143,bklv = 21,star = 4,mon = {id = 235,desc = "pt-15-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11513] = {
		[1] = {
			jlr = {cha = "pt-15",id = 1151310,cardId = 1101007,lv = 144,bklv = 21,star = 4,mon = {id = 209,desc = "pt-15-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",id = 1151311,cardId = 1102012,lv = 144,bklv = 21,star = 4,mon = {id = 232,desc = "pt-15-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-15",id = 1151320,cardId = 1101003,lv = 144,bklv = 21,star = 4,mon = {id = 208,desc = "pt-15-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",id = 1151321,cardId = 1102005,lv = 144,bklv = 21,star = 4,mon = {id = 231,desc = "pt-15-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-15",id = 1151330,cardId = 1101014,lv = 144,bklv = 21,star = 4,mon = {id = 212,desc = "pt-15-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",id = 1151331,cardId = 1102020,lv = 144,bklv = 21,star = 4,mon = {id = 236,desc = "pt-15-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11514] = {
		[1] = {
			jlr = {cha = "pt-15",id = 1151410,cardId = 1101007,lv = 144,bklv = 21,star = 4,mon = {id = 207,desc = "pt-15-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",id = 1151411,cardId = 1102012,lv = 144,bklv = 21,star = 4,mon = {id = 227,desc = "pt-15-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-15",id = 1151420,cardId = 1101003,lv = 144,bklv = 21,star = 4,mon = {id = 207,desc = "pt-15-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",id = 1151421,cardId = 1102005,lv = 144,bklv = 21,star = 4,mon = {id = 221,desc = "pt-15-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-15",id = 1151430,cardId = 1101014,lv = 144,bklv = 21,star = 4,mon = {id = 211,desc = "pt-15-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",id = 1151431,cardId = 1102020,lv = 144,bklv = 21,star = 4,mon = {id = 235,desc = "pt-15-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[11515] = {
		[1] = {
			jlr = {cha = "pt-15",id = 1151510,cardId = 1101007,lv = 145,bklv = 21,star = 4,mon = {id = 205,desc = "pt-15-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",id = 1151511,cardId = 1102012,lv = 145,bklv = 21,star = 4,mon = {id = 219,desc = "pt-15-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "pt-15",id = 1151520,cardId = 1101003,lv = 145,bklv = 21,star = 4,mon = {id = 204,desc = "pt-15-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",id = 1151521,cardId = 1102005,lv = 145,bklv = 21,star = 4,mon = {id = 224,desc = "pt-15-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "pt-15",id = 1151530,cardId = 1101014,lv = 145,bklv = 21,star = 4,mon = {id = 207,desc = "pt-15-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "pt-15",id = 1151531,cardId = 1102020,lv = 145,bklv = 21,star = 4,mon = {id = 228,desc = "pt-15-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20101] = {
		[1] = {
			jlr = {cha = "kn-1",id = 2010110,cardId = 1101001,lv = 10,bklv = 2,star = 1,mon = {id = 212,desc = "kn-1-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",id = 2010111,cardId = 1102015,lv = 10,bklv = 2,star = 1,mon = {id = 257,desc = "kn-1-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-1",id = 2010120,cardId = 1101003,lv = 10,bklv = 2,star = 1,mon = {id = 208,desc = "kn-1-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",id = 2010121,cardId = 1102005,lv = 10,bklv = 2,star = 1,mon = {id = 252,desc = "kn-1-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-1",id = 2010130,cardId = 1101002,lv = 10,bklv = 2,star = 1,mon = {id = 209,desc = "kn-1-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",id = 2010131,cardId = 1102004,lv = 10,bklv = 2,star = 1,mon = {id = 253,desc = "kn-1-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20102] = {
		[1] = {
			jlr = {cha = "kn-1",id = 2010210,cardId = 1101001,lv = 11,bklv = 2,star = 1,mon = {id = 201,desc = "kn-1-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",id = 2010211,cardId = 1102015,lv = 11,bklv = 2,star = 1,mon = {id = 241,desc = "kn-1-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-1",id = 2010220,cardId = 1101003,lv = 11,bklv = 2,star = 1,mon = {id = 203,desc = "kn-1-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",id = 2010221,cardId = 1102005,lv = 11,bklv = 2,star = 1,mon = {id = 244,desc = "kn-1-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-1",id = 2010230,cardId = 1101002,lv = 11,bklv = 2,star = 1,mon = {id = 214,desc = "kn-1-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",id = 2010231,cardId = 1102004,lv = 11,bklv = 2,star = 1,mon = {id = 259,desc = "kn-1-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20103] = {
		[1] = {
			jlr = {cha = "kn-1",id = 2010310,cardId = 1101001,lv = 12,bklv = 2,star = 1,mon = {id = 212,desc = "kn-1-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",id = 2010311,cardId = 1102015,lv = 12,bklv = 2,star = 1,mon = {id = 257,desc = "kn-1-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-1",id = 2010320,cardId = 1101003,lv = 12,bklv = 2,star = 1,mon = {id = 208,desc = "kn-1-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",id = 2010321,cardId = 1102005,lv = 12,bklv = 2,star = 1,mon = {id = 252,desc = "kn-1-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-1",id = 2010330,cardId = 1101002,lv = 12,bklv = 2,star = 1,mon = {id = 209,desc = "kn-1-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",id = 2010331,cardId = 1102004,lv = 12,bklv = 2,star = 1,mon = {id = 253,desc = "kn-1-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20104] = {
		[1] = {
			jlr = {cha = "kn-1",id = 2010410,cardId = 1101001,lv = 12,bklv = 2,star = 1,mon = {id = 215,desc = "kn-1-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",id = 2010411,cardId = 1102015,lv = 12,bklv = 2,star = 1,mon = {id = 260,desc = "kn-1-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-1",id = 2010420,cardId = 1101003,lv = 12,bklv = 2,star = 1,mon = {id = 201,desc = "kn-1-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",id = 2010421,cardId = 1102005,lv = 12,bklv = 2,star = 1,mon = {id = 248,desc = "kn-1-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-1",id = 2010430,cardId = 1101002,lv = 12,bklv = 2,star = 1,mon = {id = 211,desc = "kn-1-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",id = 2010431,cardId = 1102004,lv = 12,bklv = 2,star = 1,mon = {id = 256,desc = "kn-1-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20105] = {
		[1] = {
			jlr = {cha = "kn-1",id = 2010510,cardId = 1101001,lv = 13,bklv = 2,star = 1,mon = {id = 206,desc = "kn-1-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",id = 2010511,cardId = 1102015,lv = 13,bklv = 2,star = 1,mon = {id = 246,desc = "kn-1-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-1",id = 2010520,cardId = 1101003,lv = 13,bklv = 2,star = 1,mon = {id = 203,desc = "kn-1-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",id = 2010521,cardId = 1102005,lv = 13,bklv = 2,star = 1,mon = {id = 244,desc = "kn-1-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-1",id = 2010530,cardId = 1101002,lv = 13,bklv = 2,star = 1,mon = {id = 212,desc = "kn-1-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",id = 2010531,cardId = 1102004,lv = 13,bklv = 2,star = 1,mon = {id = 257,desc = "kn-1-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20106] = {
		[1] = {
			jlr = {cha = "kn-1",id = 2010610,cardId = 1101001,lv = 13,bklv = 2,star = 1,mon = {id = 209,desc = "kn-1-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",id = 2010611,cardId = 1102015,lv = 13,bklv = 2,star = 1,mon = {id = 253,desc = "kn-1-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-1",id = 2010620,cardId = 1101003,lv = 13,bklv = 2,star = 1,mon = {id = 208,desc = "kn-1-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",id = 2010621,cardId = 1102005,lv = 13,bklv = 2,star = 1,mon = {id = 252,desc = "kn-1-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-1",id = 2010630,cardId = 1101002,lv = 13,bklv = 2,star = 1,mon = {id = 212,desc = "kn-1-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",id = 2010631,cardId = 1102004,lv = 13,bklv = 2,star = 1,mon = {id = 257,desc = "kn-1-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20107] = {
		[1] = {
			jlr = {cha = "kn-1",id = 2010710,cardId = 1101001,lv = 14,bklv = 2,star = 1,mon = {id = 213,desc = "kn-1-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",id = 2010711,cardId = 1102015,lv = 14,bklv = 2,star = 1,mon = {id = 258,desc = "kn-1-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-1",id = 2010720,cardId = 1101003,lv = 14,bklv = 2,star = 1,mon = {id = 207,desc = "kn-1-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",id = 2010721,cardId = 1102005,lv = 14,bklv = 2,star = 1,mon = {id = 242,desc = "kn-1-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-1",id = 2010730,cardId = 1101002,lv = 14,bklv = 2,star = 1,mon = {id = 211,desc = "kn-1-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",id = 2010731,cardId = 1102004,lv = 14,bklv = 2,star = 1,mon = {id = 256,desc = "kn-1-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20108] = {
		[1] = {
			jlr = {cha = "kn-1",id = 2010810,cardId = 1101001,lv = 14,bklv = 2,star = 1,mon = {id = 209,desc = "kn-1-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",id = 2010811,cardId = 1102015,lv = 14,bklv = 2,star = 1,mon = {id = 253,desc = "kn-1-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-1",id = 2010820,cardId = 1101003,lv = 14,bklv = 2,star = 1,mon = {id = 208,desc = "kn-1-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",id = 2010821,cardId = 1102005,lv = 14,bklv = 2,star = 1,mon = {id = 252,desc = "kn-1-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-1",id = 2010830,cardId = 1101002,lv = 14,bklv = 2,star = 1,mon = {id = 212,desc = "kn-1-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",id = 2010831,cardId = 1102004,lv = 14,bklv = 2,star = 1,mon = {id = 257,desc = "kn-1-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20109] = {
		[1] = {
			jlr = {cha = "kn-1",id = 2010910,cardId = 1101001,lv = 15,bklv = 3,star = 1,mon = {id = 207,desc = "kn-1-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",id = 2010911,cardId = 1102015,lv = 15,bklv = 3,star = 1,mon = {id = 251,desc = "kn-1-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-1",id = 2010920,cardId = 1101003,lv = 15,bklv = 3,star = 1,mon = {id = 205,desc = "kn-1-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",id = 2010921,cardId = 1102005,lv = 15,bklv = 3,star = 1,mon = {id = 250,desc = "kn-1-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-1",id = 2010930,cardId = 1101002,lv = 15,bklv = 3,star = 1,mon = {id = 210,desc = "kn-1-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-1",id = 2010931,cardId = 1102004,lv = 15,bklv = 3,star = 1,mon = {id = 255,desc = "kn-1-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20201] = {
		[1] = {
			jlr = {cha = "kn-2",id = 2020110,cardId = 1101001,lv = 15,bklv = 3,star = 2,mon = {id = 212,desc = "kn-2-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",id = 2020111,cardId = 1102002,lv = 15,bklv = 3,star = 2,mon = {id = 257,desc = "kn-2-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-2",id = 2020120,cardId = 1101003,lv = 15,bklv = 3,star = 2,mon = {id = 208,desc = "kn-2-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",id = 2020121,cardId = 1102005,lv = 15,bklv = 3,star = 2,mon = {id = 252,desc = "kn-2-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-2",id = 2020130,cardId = 1101002,lv = 15,bklv = 3,star = 2,mon = {id = 209,desc = "kn-2-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",id = 2020131,cardId = 1102004,lv = 15,bklv = 3,star = 2,mon = {id = 253,desc = "kn-2-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20202] = {
		[1] = {
			jlr = {cha = "kn-2",id = 2020210,cardId = 1101001,lv = 16,bklv = 3,star = 2,mon = {id = 201,desc = "kn-2-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",id = 2020211,cardId = 1102002,lv = 16,bklv = 3,star = 2,mon = {id = 241,desc = "kn-2-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-2",id = 2020220,cardId = 1101003,lv = 16,bklv = 3,star = 2,mon = {id = 203,desc = "kn-2-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",id = 2020221,cardId = 1102005,lv = 16,bklv = 3,star = 2,mon = {id = 244,desc = "kn-2-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-2",id = 2020230,cardId = 1101002,lv = 16,bklv = 3,star = 2,mon = {id = 214,desc = "kn-2-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",id = 2020231,cardId = 1102004,lv = 16,bklv = 3,star = 2,mon = {id = 259,desc = "kn-2-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20203] = {
		[1] = {
			jlr = {cha = "kn-2",id = 2020310,cardId = 1101001,lv = 17,bklv = 3,star = 2,mon = {id = 212,desc = "kn-2-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",id = 2020311,cardId = 1102002,lv = 17,bklv = 3,star = 2,mon = {id = 257,desc = "kn-2-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-2",id = 2020320,cardId = 1101003,lv = 17,bklv = 3,star = 2,mon = {id = 208,desc = "kn-2-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",id = 2020321,cardId = 1102005,lv = 17,bklv = 3,star = 2,mon = {id = 252,desc = "kn-2-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-2",id = 2020330,cardId = 1101002,lv = 17,bklv = 3,star = 2,mon = {id = 209,desc = "kn-2-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",id = 2020331,cardId = 1102004,lv = 17,bklv = 3,star = 2,mon = {id = 253,desc = "kn-2-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20204] = {
		[1] = {
			jlr = {cha = "kn-2",id = 2020410,cardId = 1101001,lv = 18,bklv = 3,star = 2,mon = {id = 215,desc = "kn-2-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",id = 2020411,cardId = 1102002,lv = 18,bklv = 3,star = 2,mon = {id = 260,desc = "kn-2-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-2",id = 2020420,cardId = 1101003,lv = 18,bklv = 3,star = 2,mon = {id = 201,desc = "kn-2-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",id = 2020421,cardId = 1102005,lv = 18,bklv = 3,star = 2,mon = {id = 248,desc = "kn-2-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-2",id = 2020430,cardId = 1101002,lv = 18,bklv = 3,star = 2,mon = {id = 211,desc = "kn-2-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",id = 2020431,cardId = 1102004,lv = 18,bklv = 3,star = 2,mon = {id = 256,desc = "kn-2-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20205] = {
		[1] = {
			jlr = {cha = "kn-2",id = 2020510,cardId = 1101001,lv = 19,bklv = 3,star = 2,mon = {id = 206,desc = "kn-2-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",id = 2020511,cardId = 1102002,lv = 19,bklv = 3,star = 2,mon = {id = 246,desc = "kn-2-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-2",id = 2020520,cardId = 1101003,lv = 19,bklv = 3,star = 2,mon = {id = 203,desc = "kn-2-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",id = 2020521,cardId = 1102005,lv = 19,bklv = 3,star = 2,mon = {id = 244,desc = "kn-2-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-2",id = 2020530,cardId = 1101002,lv = 19,bklv = 3,star = 2,mon = {id = 212,desc = "kn-2-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",id = 2020531,cardId = 1102004,lv = 19,bklv = 3,star = 2,mon = {id = 257,desc = "kn-2-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20206] = {
		[1] = {
			jlr = {cha = "kn-2",id = 2020610,cardId = 1101001,lv = 20,bklv = 3,star = 2,mon = {id = 209,desc = "kn-2-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",id = 2020611,cardId = 1102002,lv = 20,bklv = 3,star = 2,mon = {id = 253,desc = "kn-2-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-2",id = 2020620,cardId = 1101003,lv = 20,bklv = 3,star = 2,mon = {id = 208,desc = "kn-2-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",id = 2020621,cardId = 1102005,lv = 20,bklv = 3,star = 2,mon = {id = 252,desc = "kn-2-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-2",id = 2020630,cardId = 1101002,lv = 20,bklv = 3,star = 2,mon = {id = 212,desc = "kn-2-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",id = 2020631,cardId = 1102004,lv = 20,bklv = 3,star = 2,mon = {id = 257,desc = "kn-2-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20207] = {
		[1] = {
			jlr = {cha = "kn-2",id = 2020710,cardId = 1101001,lv = 21,bklv = 3,star = 2,mon = {id = 207,desc = "kn-2-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",id = 2020711,cardId = 1102002,lv = 21,bklv = 3,star = 2,mon = {id = 248,desc = "kn-2-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-2",id = 2020720,cardId = 1101003,lv = 21,bklv = 3,star = 2,mon = {id = 207,desc = "kn-2-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",id = 2020721,cardId = 1102005,lv = 21,bklv = 3,star = 2,mon = {id = 242,desc = "kn-2-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-2",id = 2020730,cardId = 1101002,lv = 21,bklv = 3,star = 2,mon = {id = 211,desc = "kn-2-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",id = 2020731,cardId = 1102004,lv = 21,bklv = 3,star = 2,mon = {id = 256,desc = "kn-2-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20208] = {
		[1] = {
			jlr = {cha = "kn-2",id = 2020810,cardId = 1101001,lv = 22,bklv = 3,star = 2,mon = {id = 209,desc = "kn-2-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",id = 2020811,cardId = 1102002,lv = 22,bklv = 3,star = 2,mon = {id = 253,desc = "kn-2-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-2",id = 2020820,cardId = 1101003,lv = 22,bklv = 3,star = 2,mon = {id = 208,desc = "kn-2-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",id = 2020821,cardId = 1102005,lv = 22,bklv = 3,star = 2,mon = {id = 252,desc = "kn-2-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-2",id = 2020830,cardId = 1101002,lv = 22,bklv = 3,star = 2,mon = {id = 212,desc = "kn-2-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",id = 2020831,cardId = 1102004,lv = 22,bklv = 3,star = 2,mon = {id = 257,desc = "kn-2-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20209] = {
		[1] = {
			jlr = {cha = "kn-2",id = 2020910,cardId = 1101001,lv = 23,bklv = 3,star = 2,mon = {id = 207,desc = "kn-2-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",id = 2020911,cardId = 1102002,lv = 23,bklv = 3,star = 2,mon = {id = 251,desc = "kn-2-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-2",id = 2020920,cardId = 1101003,lv = 23,bklv = 3,star = 2,mon = {id = 205,desc = "kn-2-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",id = 2020921,cardId = 1102005,lv = 23,bklv = 3,star = 2,mon = {id = 250,desc = "kn-2-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-2",id = 2020930,cardId = 1101014,lv = 23,bklv = 3,star = 2,mon = {id = 210,desc = "kn-2-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-2",id = 2020931,cardId = 1102004,lv = 23,bklv = 3,star = 2,mon = {id = 255,desc = "kn-2-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20301] = {
		[1] = {
			jlr = {cha = "kn-3",id = 2030110,cardId = 1101001,lv = 25,bklv = 3,star = 2,mon = {id = 212,desc = "kn-3-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",id = 2030111,cardId = 1102002,lv = 25,bklv = 3,star = 2,mon = {id = 257,desc = "kn-3-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-3",id = 2030120,cardId = 1101003,lv = 25,bklv = 3,star = 2,mon = {id = 208,desc = "kn-3-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",id = 2030121,cardId = 1102005,lv = 25,bklv = 3,star = 2,mon = {id = 252,desc = "kn-3-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-3",id = 2030130,cardId = 1101014,lv = 25,bklv = 3,star = 2,mon = {id = 209,desc = "kn-3-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",id = 2030131,cardId = 1102020,lv = 25,bklv = 3,star = 2,mon = {id = 253,desc = "kn-3-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20302] = {
		[1] = {
			jlr = {cha = "kn-3",id = 2030210,cardId = 1101001,lv = 26,bklv = 3,star = 2,mon = {id = 201,desc = "kn-3-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",id = 2030211,cardId = 1102002,lv = 26,bklv = 3,star = 2,mon = {id = 241,desc = "kn-3-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-3",id = 2030220,cardId = 1101003,lv = 26,bklv = 3,star = 2,mon = {id = 203,desc = "kn-3-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",id = 2030221,cardId = 1102005,lv = 26,bklv = 3,star = 2,mon = {id = 244,desc = "kn-3-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-3",id = 2030230,cardId = 1101014,lv = 26,bklv = 3,star = 2,mon = {id = 214,desc = "kn-3-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",id = 2030231,cardId = 1102020,lv = 26,bklv = 3,star = 2,mon = {id = 259,desc = "kn-3-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20303] = {
		[1] = {
			jlr = {cha = "kn-3",id = 2030310,cardId = 1101001,lv = 27,bklv = 3,star = 2,mon = {id = 212,desc = "kn-3-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",id = 2030311,cardId = 1102002,lv = 27,bklv = 3,star = 2,mon = {id = 257,desc = "kn-3-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-3",id = 2030320,cardId = 1101003,lv = 27,bklv = 3,star = 2,mon = {id = 208,desc = "kn-3-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",id = 2030321,cardId = 1102005,lv = 27,bklv = 3,star = 2,mon = {id = 252,desc = "kn-3-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-3",id = 2030330,cardId = 1101014,lv = 27,bklv = 3,star = 2,mon = {id = 209,desc = "kn-3-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",id = 2030331,cardId = 1102020,lv = 27,bklv = 3,star = 2,mon = {id = 253,desc = "kn-3-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20304] = {
		[1] = {
			jlr = {cha = "kn-3",id = 2030410,cardId = 1101001,lv = 28,bklv = 3,star = 2,mon = {id = 215,desc = "kn-3-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",id = 2030411,cardId = 1102002,lv = 28,bklv = 3,star = 2,mon = {id = 260,desc = "kn-3-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-3",id = 2030420,cardId = 1101003,lv = 28,bklv = 3,star = 2,mon = {id = 201,desc = "kn-3-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",id = 2030421,cardId = 1102005,lv = 28,bklv = 3,star = 2,mon = {id = 248,desc = "kn-3-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-3",id = 2030430,cardId = 1101014,lv = 28,bklv = 3,star = 2,mon = {id = 211,desc = "kn-3-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",id = 2030431,cardId = 1102020,lv = 28,bklv = 3,star = 2,mon = {id = 256,desc = "kn-3-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20305] = {
		[1] = {
			jlr = {cha = "kn-3",id = 2030510,cardId = 1101001,lv = 29,bklv = 3,star = 2,mon = {id = 206,desc = "kn-3-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",id = 2030511,cardId = 1102002,lv = 29,bklv = 3,star = 2,mon = {id = 246,desc = "kn-3-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-3",id = 2030520,cardId = 1101003,lv = 29,bklv = 3,star = 2,mon = {id = 203,desc = "kn-3-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",id = 2030521,cardId = 1102005,lv = 29,bklv = 3,star = 2,mon = {id = 244,desc = "kn-3-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-3",id = 2030530,cardId = 1101014,lv = 29,bklv = 3,star = 2,mon = {id = 212,desc = "kn-3-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",id = 2030531,cardId = 1102020,lv = 29,bklv = 3,star = 2,mon = {id = 257,desc = "kn-3-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20306] = {
		[1] = {
			jlr = {cha = "kn-3",id = 2030610,cardId = 1101001,lv = 30,bklv = 4,star = 2,mon = {id = 209,desc = "kn-3-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",id = 2030611,cardId = 1102002,lv = 30,bklv = 4,star = 2,mon = {id = 253,desc = "kn-3-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-3",id = 2030620,cardId = 1101003,lv = 30,bklv = 4,star = 2,mon = {id = 208,desc = "kn-3-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",id = 2030621,cardId = 1102005,lv = 30,bklv = 4,star = 2,mon = {id = 252,desc = "kn-3-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-3",id = 2030630,cardId = 1101014,lv = 30,bklv = 4,star = 2,mon = {id = 212,desc = "kn-3-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",id = 2030631,cardId = 1102020,lv = 30,bklv = 4,star = 2,mon = {id = 257,desc = "kn-3-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20307] = {
		[1] = {
			jlr = {cha = "kn-3",id = 2030710,cardId = 1101001,lv = 31,bklv = 4,star = 2,mon = {id = 213,desc = "kn-3-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",id = 2030711,cardId = 1102002,lv = 31,bklv = 4,star = 2,mon = {id = 258,desc = "kn-3-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-3",id = 2030720,cardId = 1101003,lv = 31,bklv = 4,star = 2,mon = {id = 207,desc = "kn-3-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",id = 2030721,cardId = 1102005,lv = 31,bklv = 4,star = 2,mon = {id = 242,desc = "kn-3-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-3",id = 2030730,cardId = 1101014,lv = 31,bklv = 4,star = 2,mon = {id = 211,desc = "kn-3-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",id = 2030731,cardId = 1102020,lv = 31,bklv = 4,star = 2,mon = {id = 256,desc = "kn-3-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20308] = {
		[1] = {
			jlr = {cha = "kn-3",id = 2030810,cardId = 1101001,lv = 32,bklv = 4,star = 2,mon = {id = 206,desc = "kn-3-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",id = 2030811,cardId = 1102002,lv = 32,bklv = 4,star = 2,mon = {id = 246,desc = "kn-3-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-3",id = 2030820,cardId = 1101003,lv = 32,bklv = 4,star = 2,mon = {id = 205,desc = "kn-3-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",id = 2030821,cardId = 1102005,lv = 32,bklv = 4,star = 2,mon = {id = 250,desc = "kn-3-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-3",id = 2030830,cardId = 1101014,lv = 32,bklv = 4,star = 2,mon = {id = 207,desc = "kn-3-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",id = 2030831,cardId = 1102020,lv = 32,bklv = 4,star = 2,mon = {id = 249,desc = "kn-3-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20309] = {
		[1] = {
			jlr = {cha = "kn-3",id = 2030910,cardId = 1101001,lv = 33,bklv = 4,star = 2,mon = {id = 212,desc = "kn-3-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",id = 2030911,cardId = 1102002,lv = 33,bklv = 4,star = 2,mon = {id = 257,desc = "kn-3-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-3",id = 2030920,cardId = 1101003,lv = 33,bklv = 4,star = 2,mon = {id = 208,desc = "kn-3-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",id = 2030921,cardId = 1102005,lv = 33,bklv = 4,star = 2,mon = {id = 252,desc = "kn-3-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-3",id = 2030930,cardId = 1101014,lv = 33,bklv = 4,star = 2,mon = {id = 209,desc = "kn-3-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-3",id = 2030931,cardId = 1102020,lv = 33,bklv = 4,star = 2,mon = {id = 253,desc = "kn-3-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20401] = {
		[1] = {
			jlr = {cha = "kn-4",id = 2040110,cardId = 1101001,lv = 35,bklv = 4,star = 3,mon = {id = 212,desc = "kn-4-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",id = 2040111,cardId = 1102002,lv = 35,bklv = 4,star = 3,mon = {id = 257,desc = "kn-4-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-4",id = 2040120,cardId = 1101003,lv = 35,bklv = 4,star = 3,mon = {id = 208,desc = "kn-4-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",id = 2040121,cardId = 1102005,lv = 35,bklv = 4,star = 3,mon = {id = 252,desc = "kn-4-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-4",id = 2040130,cardId = 1101014,lv = 35,bklv = 4,star = 3,mon = {id = 213,desc = "kn-4-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",id = 2040131,cardId = 1102020,lv = 35,bklv = 4,star = 3,mon = {id = 258,desc = "kn-4-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20402] = {
		[1] = {
			jlr = {cha = "kn-4",id = 2040210,cardId = 1101001,lv = 36,bklv = 4,star = 3,mon = {id = 201,desc = "kn-4-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",id = 2040211,cardId = 1102002,lv = 36,bklv = 4,star = 3,mon = {id = 241,desc = "kn-4-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-4",id = 2040220,cardId = 1101003,lv = 36,bklv = 4,star = 3,mon = {id = 203,desc = "kn-4-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",id = 2040221,cardId = 1102005,lv = 36,bklv = 4,star = 3,mon = {id = 244,desc = "kn-4-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-4",id = 2040230,cardId = 1101014,lv = 36,bklv = 4,star = 3,mon = {id = 214,desc = "kn-4-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",id = 2040231,cardId = 1102020,lv = 36,bklv = 4,star = 3,mon = {id = 259,desc = "kn-4-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20403] = {
		[1] = {
			jlr = {cha = "kn-4",id = 2040310,cardId = 1101001,lv = 37,bklv = 4,star = 3,mon = {id = 212,desc = "kn-4-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",id = 2040311,cardId = 1102002,lv = 37,bklv = 4,star = 3,mon = {id = 257,desc = "kn-4-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-4",id = 2040320,cardId = 1101003,lv = 37,bklv = 4,star = 3,mon = {id = 208,desc = "kn-4-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",id = 2040321,cardId = 1102005,lv = 37,bklv = 4,star = 3,mon = {id = 252,desc = "kn-4-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-4",id = 2040330,cardId = 1101014,lv = 37,bklv = 4,star = 3,mon = {id = 209,desc = "kn-4-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",id = 2040331,cardId = 1102020,lv = 37,bklv = 4,star = 3,mon = {id = 253,desc = "kn-4-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20404] = {
		[1] = {
			jlr = {cha = "kn-4",id = 2040410,cardId = 1101001,lv = 38,bklv = 4,star = 3,mon = {id = 215,desc = "kn-4-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",id = 2040411,cardId = 1102002,lv = 38,bklv = 4,star = 3,mon = {id = 260,desc = "kn-4-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-4",id = 2040420,cardId = 1101003,lv = 38,bklv = 4,star = 3,mon = {id = 201,desc = "kn-4-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",id = 2040421,cardId = 1102005,lv = 38,bklv = 4,star = 3,mon = {id = 248,desc = "kn-4-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-4",id = 2040430,cardId = 1101014,lv = 38,bklv = 4,star = 3,mon = {id = 211,desc = "kn-4-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",id = 2040431,cardId = 1102020,lv = 38,bklv = 4,star = 3,mon = {id = 256,desc = "kn-4-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20405] = {
		[1] = {
			jlr = {cha = "kn-4",id = 2040510,cardId = 1101001,lv = 39,bklv = 4,star = 3,mon = {id = 206,desc = "kn-4-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",id = 2040511,cardId = 1102002,lv = 39,bklv = 4,star = 3,mon = {id = 246,desc = "kn-4-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-4",id = 2040520,cardId = 1101003,lv = 39,bklv = 4,star = 3,mon = {id = 203,desc = "kn-4-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",id = 2040521,cardId = 1102005,lv = 39,bklv = 4,star = 3,mon = {id = 244,desc = "kn-4-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-4",id = 2040530,cardId = 1101014,lv = 39,bklv = 4,star = 3,mon = {id = 212,desc = "kn-4-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",id = 2040531,cardId = 1102020,lv = 39,bklv = 4,star = 3,mon = {id = 257,desc = "kn-4-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20406] = {
		[1] = {
			jlr = {cha = "kn-4",id = 2040610,cardId = 1101001,lv = 40,bklv = 5,star = 3,mon = {id = 209,desc = "kn-4-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",id = 2040611,cardId = 1102002,lv = 40,bklv = 5,star = 3,mon = {id = 253,desc = "kn-4-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-4",id = 2040620,cardId = 1101003,lv = 40,bklv = 5,star = 3,mon = {id = 208,desc = "kn-4-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",id = 2040621,cardId = 1102005,lv = 40,bklv = 5,star = 3,mon = {id = 252,desc = "kn-4-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-4",id = 2040630,cardId = 1101014,lv = 40,bklv = 5,star = 3,mon = {id = 212,desc = "kn-4-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",id = 2040631,cardId = 1102020,lv = 40,bklv = 5,star = 3,mon = {id = 257,desc = "kn-4-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20407] = {
		[1] = {
			jlr = {cha = "kn-4",id = 2040710,cardId = 1101001,lv = 41,bklv = 5,star = 3,mon = {id = 213,desc = "kn-4-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",id = 2040711,cardId = 1102002,lv = 41,bklv = 5,star = 3,mon = {id = 258,desc = "kn-4-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-4",id = 2040720,cardId = 1101003,lv = 41,bklv = 5,star = 3,mon = {id = 207,desc = "kn-4-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",id = 2040721,cardId = 1102005,lv = 41,bklv = 5,star = 3,mon = {id = 242,desc = "kn-4-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-4",id = 2040730,cardId = 1101014,lv = 41,bklv = 5,star = 3,mon = {id = 211,desc = "kn-4-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",id = 2040731,cardId = 1102020,lv = 41,bklv = 5,star = 3,mon = {id = 256,desc = "kn-4-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20408] = {
		[1] = {
			jlr = {cha = "kn-4",id = 2040810,cardId = 1101001,lv = 42,bklv = 5,star = 3,mon = {id = 207,desc = "kn-4-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",id = 2040811,cardId = 1102002,lv = 42,bklv = 5,star = 3,mon = {id = 251,desc = "kn-4-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-4",id = 2040820,cardId = 1101003,lv = 42,bklv = 5,star = 3,mon = {id = 205,desc = "kn-4-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",id = 2040821,cardId = 1102005,lv = 42,bklv = 5,star = 3,mon = {id = 250,desc = "kn-4-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-4",id = 2040830,cardId = 1101014,lv = 42,bklv = 5,star = 3,mon = {id = 210,desc = "kn-4-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",id = 2040831,cardId = 1102020,lv = 42,bklv = 5,star = 3,mon = {id = 255,desc = "kn-4-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20409] = {
		[1] = {
			jlr = {cha = "kn-4",id = 2040910,cardId = 1101001,lv = 43,bklv = 5,star = 3,mon = {id = 212,desc = "kn-4-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",id = 2040911,cardId = 1102002,lv = 43,bklv = 5,star = 3,mon = {id = 257,desc = "kn-4-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-4",id = 2040920,cardId = 1101003,lv = 43,bklv = 5,star = 3,mon = {id = 208,desc = "kn-4-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",id = 2040921,cardId = 1102005,lv = 43,bklv = 5,star = 3,mon = {id = 252,desc = "kn-4-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-4",id = 2040930,cardId = 1101014,lv = 43,bklv = 5,star = 3,mon = {id = 209,desc = "kn-4-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-4",id = 2040931,cardId = 1102020,lv = 43,bklv = 5,star = 3,mon = {id = 253,desc = "kn-4-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20501] = {
		[1] = {
			jlr = {cha = "kn-5",id = 2050110,cardId = 1101007,lv = 45,bklv = 5,star = 3,mon = {id = 212,desc = "kn-5-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",id = 2050111,cardId = 1102012,lv = 45,bklv = 5,star = 3,mon = {id = 257,desc = "kn-5-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-5",id = 2050120,cardId = 1101003,lv = 45,bklv = 5,star = 3,mon = {id = 208,desc = "kn-5-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",id = 2050121,cardId = 1102005,lv = 45,bklv = 5,star = 3,mon = {id = 252,desc = "kn-5-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-5",id = 2050130,cardId = 1101014,lv = 45,bklv = 5,star = 3,mon = {id = 209,desc = "kn-5-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",id = 2050131,cardId = 1102020,lv = 45,bklv = 5,star = 3,mon = {id = 253,desc = "kn-5-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20502] = {
		[1] = {
			jlr = {cha = "kn-5",id = 2050210,cardId = 1101007,lv = 46,bklv = 5,star = 3,mon = {id = 201,desc = "kn-5-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",id = 2050211,cardId = 1102012,lv = 46,bklv = 5,star = 3,mon = {id = 241,desc = "kn-5-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-5",id = 2050220,cardId = 1101003,lv = 46,bklv = 5,star = 3,mon = {id = 203,desc = "kn-5-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",id = 2050221,cardId = 1102005,lv = 46,bklv = 5,star = 3,mon = {id = 244,desc = "kn-5-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-5",id = 2050230,cardId = 1101014,lv = 46,bklv = 5,star = 3,mon = {id = 214,desc = "kn-5-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",id = 2050231,cardId = 1102020,lv = 46,bklv = 5,star = 3,mon = {id = 259,desc = "kn-5-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20503] = {
		[1] = {
			jlr = {cha = "kn-5",id = 2050310,cardId = 1101007,lv = 46,bklv = 5,star = 3,mon = {id = 212,desc = "kn-5-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",id = 2050311,cardId = 1102012,lv = 46,bklv = 5,star = 3,mon = {id = 257,desc = "kn-5-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-5",id = 2050320,cardId = 1101003,lv = 46,bklv = 5,star = 3,mon = {id = 208,desc = "kn-5-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",id = 2050321,cardId = 1102005,lv = 46,bklv = 5,star = 3,mon = {id = 252,desc = "kn-5-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-5",id = 2050330,cardId = 1101014,lv = 46,bklv = 5,star = 3,mon = {id = 209,desc = "kn-5-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",id = 2050331,cardId = 1102020,lv = 46,bklv = 5,star = 3,mon = {id = 253,desc = "kn-5-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20504] = {
		[1] = {
			jlr = {cha = "kn-5",id = 2050410,cardId = 1101007,lv = 47,bklv = 5,star = 3,mon = {id = 215,desc = "kn-5-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",id = 2050411,cardId = 1102012,lv = 47,bklv = 5,star = 3,mon = {id = 260,desc = "kn-5-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-5",id = 2050420,cardId = 1101003,lv = 47,bklv = 5,star = 3,mon = {id = 201,desc = "kn-5-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",id = 2050421,cardId = 1102005,lv = 47,bklv = 5,star = 3,mon = {id = 248,desc = "kn-5-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-5",id = 2050430,cardId = 1101014,lv = 47,bklv = 5,star = 3,mon = {id = 211,desc = "kn-5-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",id = 2050431,cardId = 1102020,lv = 47,bklv = 5,star = 3,mon = {id = 256,desc = "kn-5-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20505] = {
		[1] = {
			jlr = {cha = "kn-5",id = 2050510,cardId = 1101007,lv = 47,bklv = 5,star = 3,mon = {id = 206,desc = "kn-5-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",id = 2050511,cardId = 1102012,lv = 47,bklv = 5,star = 3,mon = {id = 246,desc = "kn-5-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-5",id = 2050520,cardId = 1101003,lv = 47,bklv = 5,star = 3,mon = {id = 203,desc = "kn-5-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",id = 2050521,cardId = 1102005,lv = 47,bklv = 5,star = 3,mon = {id = 244,desc = "kn-5-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-5",id = 2050530,cardId = 1101014,lv = 47,bklv = 5,star = 3,mon = {id = 212,desc = "kn-5-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",id = 2050531,cardId = 1102020,lv = 47,bklv = 5,star = 3,mon = {id = 257,desc = "kn-5-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20506] = {
		[1] = {
			jlr = {cha = "kn-5",id = 2050610,cardId = 1101007,lv = 48,bklv = 5,star = 3,mon = {id = 209,desc = "kn-5-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",id = 2050611,cardId = 1102012,lv = 48,bklv = 5,star = 3,mon = {id = 253,desc = "kn-5-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-5",id = 2050620,cardId = 1101003,lv = 48,bklv = 5,star = 3,mon = {id = 208,desc = "kn-5-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",id = 2050621,cardId = 1102005,lv = 48,bklv = 5,star = 3,mon = {id = 252,desc = "kn-5-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-5",id = 2050630,cardId = 1101014,lv = 48,bklv = 5,star = 3,mon = {id = 212,desc = "kn-5-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",id = 2050631,cardId = 1102020,lv = 48,bklv = 5,star = 3,mon = {id = 257,desc = "kn-5-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20507] = {
		[1] = {
			jlr = {cha = "kn-5",id = 2050710,cardId = 1101007,lv = 48,bklv = 5,star = 3,mon = {id = 213,desc = "kn-5-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",id = 2050711,cardId = 1102012,lv = 48,bklv = 5,star = 3,mon = {id = 258,desc = "kn-5-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-5",id = 2050720,cardId = 1101003,lv = 48,bklv = 5,star = 3,mon = {id = 207,desc = "kn-5-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",id = 2050721,cardId = 1102005,lv = 48,bklv = 5,star = 3,mon = {id = 242,desc = "kn-5-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-5",id = 2050730,cardId = 1101014,lv = 48,bklv = 5,star = 3,mon = {id = 211,desc = "kn-5-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",id = 2050731,cardId = 1102020,lv = 48,bklv = 5,star = 3,mon = {id = 256,desc = "kn-5-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20508] = {
		[1] = {
			jlr = {cha = "kn-5",id = 2050810,cardId = 1101007,lv = 49,bklv = 5,star = 3,mon = {id = 206,desc = "kn-5-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",id = 2050811,cardId = 1102012,lv = 49,bklv = 5,star = 3,mon = {id = 246,desc = "kn-5-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-5",id = 2050820,cardId = 1101003,lv = 49,bklv = 5,star = 3,mon = {id = 205,desc = "kn-5-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",id = 2050821,cardId = 1102005,lv = 49,bklv = 5,star = 3,mon = {id = 250,desc = "kn-5-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-5",id = 2050830,cardId = 1101014,lv = 49,bklv = 5,star = 3,mon = {id = 207,desc = "kn-5-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",id = 2050831,cardId = 1102020,lv = 49,bklv = 5,star = 3,mon = {id = 249,desc = "kn-5-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20509] = {
		[1] = {
			jlr = {cha = "kn-5",id = 2050910,cardId = 1101007,lv = 50,bklv = 6,star = 3,mon = {id = 212,desc = "kn-5-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",id = 2050911,cardId = 1102012,lv = 50,bklv = 6,star = 3,mon = {id = 257,desc = "kn-5-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-5",id = 2050920,cardId = 1101003,lv = 50,bklv = 6,star = 3,mon = {id = 208,desc = "kn-5-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",id = 2050921,cardId = 1102005,lv = 50,bklv = 6,star = 3,mon = {id = 252,desc = "kn-5-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-5",id = 2050930,cardId = 1101014,lv = 50,bklv = 6,star = 3,mon = {id = 209,desc = "kn-5-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",id = 2050931,cardId = 1102020,lv = 50,bklv = 6,star = 3,mon = {id = 253,desc = "kn-5-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20510] = {
		[1] = {
			jlr = {cha = "kn-5",id = 2051010,cardId = 1101007,lv = 50,bklv = 6,star = 3,mon = {id = 201,desc = "kn-5-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",id = 2051011,cardId = 1102012,lv = 50,bklv = 6,star = 3,mon = {id = 241,desc = "kn-5-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-5",id = 2051020,cardId = 1101003,lv = 50,bklv = 6,star = 3,mon = {id = 203,desc = "kn-5-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",id = 2051021,cardId = 1102005,lv = 50,bklv = 6,star = 3,mon = {id = 244,desc = "kn-5-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-5",id = 2051030,cardId = 1101014,lv = 50,bklv = 6,star = 3,mon = {id = 214,desc = "kn-5-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",id = 2051031,cardId = 1102020,lv = 50,bklv = 6,star = 3,mon = {id = 259,desc = "kn-5-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20511] = {
		[1] = {
			jlr = {cha = "kn-5",id = 2051110,cardId = 1101007,lv = 50,bklv = 6,star = 3,mon = {id = 212,desc = "kn-5-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",id = 2051111,cardId = 1102012,lv = 50,bklv = 6,star = 3,mon = {id = 257,desc = "kn-5-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-5",id = 2051120,cardId = 1101003,lv = 50,bklv = 6,star = 3,mon = {id = 208,desc = "kn-5-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",id = 2051121,cardId = 1102005,lv = 50,bklv = 6,star = 3,mon = {id = 252,desc = "kn-5-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-5",id = 2051130,cardId = 1101014,lv = 50,bklv = 6,star = 3,mon = {id = 209,desc = "kn-5-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",id = 2051131,cardId = 1102020,lv = 50,bklv = 6,star = 3,mon = {id = 253,desc = "kn-5-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20512] = {
		[1] = {
			jlr = {cha = "kn-5",id = 2051210,cardId = 1101007,lv = 51,bklv = 6,star = 3,mon = {id = 215,desc = "kn-5-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",id = 2051211,cardId = 1102012,lv = 51,bklv = 6,star = 3,mon = {id = 260,desc = "kn-5-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-5",id = 2051220,cardId = 1101003,lv = 51,bklv = 6,star = 3,mon = {id = 201,desc = "kn-5-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",id = 2051221,cardId = 1102005,lv = 51,bklv = 6,star = 3,mon = {id = 248,desc = "kn-5-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-5",id = 2051230,cardId = 1101014,lv = 51,bklv = 6,star = 3,mon = {id = 211,desc = "kn-5-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",id = 2051231,cardId = 1102020,lv = 51,bklv = 6,star = 3,mon = {id = 256,desc = "kn-5-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20513] = {
		[1] = {
			jlr = {cha = "kn-5",id = 2051310,cardId = 1101007,lv = 52,bklv = 6,star = 3,mon = {id = 209,desc = "kn-5-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",id = 2051311,cardId = 1102012,lv = 52,bklv = 6,star = 3,mon = {id = 253,desc = "kn-5-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-5",id = 2051320,cardId = 1101003,lv = 52,bklv = 6,star = 3,mon = {id = 208,desc = "kn-5-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",id = 2051321,cardId = 1102005,lv = 52,bklv = 6,star = 3,mon = {id = 252,desc = "kn-5-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-5",id = 2051330,cardId = 1101014,lv = 52,bklv = 6,star = 3,mon = {id = 212,desc = "kn-5-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",id = 2051331,cardId = 1102020,lv = 52,bklv = 6,star = 3,mon = {id = 257,desc = "kn-5-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20514] = {
		[1] = {
			jlr = {cha = "kn-5",id = 2051410,cardId = 1101007,lv = 53,bklv = 6,star = 3,mon = {id = 207,desc = "kn-5-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",id = 2051411,cardId = 1102012,lv = 53,bklv = 6,star = 3,mon = {id = 248,desc = "kn-5-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-5",id = 2051420,cardId = 1101003,lv = 53,bklv = 6,star = 3,mon = {id = 207,desc = "kn-5-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",id = 2051421,cardId = 1102005,lv = 53,bklv = 6,star = 3,mon = {id = 242,desc = "kn-5-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-5",id = 2051430,cardId = 1101014,lv = 53,bklv = 6,star = 3,mon = {id = 211,desc = "kn-5-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",id = 2051431,cardId = 1102020,lv = 53,bklv = 6,star = 3,mon = {id = 256,desc = "kn-5-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20515] = {
		[1] = {
			jlr = {cha = "kn-5",id = 2051510,cardId = 1101007,lv = 54,bklv = 6,star = 3,mon = {id = 205,desc = "kn-5-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",id = 2051511,cardId = 1102012,lv = 54,bklv = 6,star = 3,mon = {id = 240,desc = "kn-5-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-5",id = 2051520,cardId = 1101003,lv = 54,bklv = 6,star = 3,mon = {id = 204,desc = "kn-5-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",id = 2051521,cardId = 1102005,lv = 54,bklv = 6,star = 3,mon = {id = 245,desc = "kn-5-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-5",id = 2051530,cardId = 1101014,lv = 54,bklv = 6,star = 3,mon = {id = 207,desc = "kn-5-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-5",id = 2051531,cardId = 1102020,lv = 54,bklv = 6,star = 3,mon = {id = 249,desc = "kn-5-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20601] = {
		[1] = {
			jlr = {cha = "kn-6",id = 2060110,cardId = 1101007,lv = 55,bklv = 6,star = 3,mon = {id = 212,desc = "kn-6-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",id = 2060111,cardId = 1102012,lv = 55,bklv = 6,star = 3,mon = {id = 257,desc = "kn-6-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-6",id = 2060120,cardId = 1101003,lv = 55,bklv = 6,star = 3,mon = {id = 208,desc = "kn-6-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",id = 2060121,cardId = 1102005,lv = 55,bklv = 6,star = 3,mon = {id = 252,desc = "kn-6-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-6",id = 2060130,cardId = 1101014,lv = 55,bklv = 6,star = 3,mon = {id = 213,desc = "kn-6-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",id = 2060131,cardId = 1102020,lv = 55,bklv = 6,star = 3,mon = {id = 258,desc = "kn-6-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20602] = {
		[1] = {
			jlr = {cha = "kn-6",id = 2060210,cardId = 1101007,lv = 56,bklv = 6,star = 3,mon = {id = 201,desc = "kn-6-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",id = 2060211,cardId = 1102012,lv = 56,bklv = 6,star = 3,mon = {id = 241,desc = "kn-6-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-6",id = 2060220,cardId = 1101003,lv = 56,bklv = 6,star = 3,mon = {id = 203,desc = "kn-6-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",id = 2060221,cardId = 1102005,lv = 56,bklv = 6,star = 3,mon = {id = 244,desc = "kn-6-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-6",id = 2060230,cardId = 1101014,lv = 56,bklv = 6,star = 3,mon = {id = 214,desc = "kn-6-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",id = 2060231,cardId = 1102020,lv = 56,bklv = 6,star = 3,mon = {id = 259,desc = "kn-6-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20603] = {
		[1] = {
			jlr = {cha = "kn-6",id = 2060310,cardId = 1101007,lv = 56,bklv = 6,star = 3,mon = {id = 212,desc = "kn-6-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",id = 2060311,cardId = 1102012,lv = 56,bklv = 6,star = 3,mon = {id = 257,desc = "kn-6-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-6",id = 2060320,cardId = 1101003,lv = 56,bklv = 6,star = 3,mon = {id = 208,desc = "kn-6-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",id = 2060321,cardId = 1102005,lv = 56,bklv = 6,star = 3,mon = {id = 252,desc = "kn-6-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-6",id = 2060330,cardId = 1101014,lv = 56,bklv = 6,star = 3,mon = {id = 209,desc = "kn-6-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",id = 2060331,cardId = 1102020,lv = 56,bklv = 6,star = 3,mon = {id = 253,desc = "kn-6-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20604] = {
		[1] = {
			jlr = {cha = "kn-6",id = 2060410,cardId = 1101007,lv = 57,bklv = 6,star = 3,mon = {id = 215,desc = "kn-6-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",id = 2060411,cardId = 1102012,lv = 57,bklv = 6,star = 3,mon = {id = 260,desc = "kn-6-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-6",id = 2060420,cardId = 1101003,lv = 57,bklv = 6,star = 3,mon = {id = 201,desc = "kn-6-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",id = 2060421,cardId = 1102005,lv = 57,bklv = 6,star = 3,mon = {id = 248,desc = "kn-6-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-6",id = 2060430,cardId = 1101014,lv = 57,bklv = 6,star = 3,mon = {id = 211,desc = "kn-6-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",id = 2060431,cardId = 1102020,lv = 57,bklv = 6,star = 3,mon = {id = 256,desc = "kn-6-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20605] = {
		[1] = {
			jlr = {cha = "kn-6",id = 2060510,cardId = 1101007,lv = 57,bklv = 6,star = 3,mon = {id = 206,desc = "kn-6-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",id = 2060511,cardId = 1102012,lv = 57,bklv = 6,star = 3,mon = {id = 246,desc = "kn-6-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-6",id = 2060520,cardId = 1101003,lv = 57,bklv = 6,star = 3,mon = {id = 203,desc = "kn-6-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",id = 2060521,cardId = 1102005,lv = 57,bklv = 6,star = 3,mon = {id = 244,desc = "kn-6-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-6",id = 2060530,cardId = 1101014,lv = 57,bklv = 6,star = 3,mon = {id = 212,desc = "kn-6-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",id = 2060531,cardId = 1102020,lv = 57,bklv = 6,star = 3,mon = {id = 257,desc = "kn-6-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20606] = {
		[1] = {
			jlr = {cha = "kn-6",id = 2060610,cardId = 1101007,lv = 58,bklv = 6,star = 3,mon = {id = 209,desc = "kn-6-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",id = 2060611,cardId = 1102012,lv = 58,bklv = 6,star = 3,mon = {id = 253,desc = "kn-6-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-6",id = 2060620,cardId = 1101003,lv = 58,bklv = 6,star = 3,mon = {id = 208,desc = "kn-6-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",id = 2060621,cardId = 1102005,lv = 58,bklv = 6,star = 3,mon = {id = 252,desc = "kn-6-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-6",id = 2060630,cardId = 1101014,lv = 58,bklv = 6,star = 3,mon = {id = 212,desc = "kn-6-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",id = 2060631,cardId = 1102020,lv = 58,bklv = 6,star = 3,mon = {id = 257,desc = "kn-6-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20607] = {
		[1] = {
			jlr = {cha = "kn-6",id = 2060710,cardId = 1101007,lv = 58,bklv = 6,star = 3,mon = {id = 207,desc = "kn-6-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",id = 2060711,cardId = 1102012,lv = 58,bklv = 6,star = 3,mon = {id = 248,desc = "kn-6-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-6",id = 2060720,cardId = 1101003,lv = 58,bklv = 6,star = 3,mon = {id = 207,desc = "kn-6-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",id = 2060721,cardId = 1102005,lv = 58,bklv = 6,star = 3,mon = {id = 242,desc = "kn-6-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-6",id = 2060730,cardId = 1101014,lv = 58,bklv = 6,star = 3,mon = {id = 211,desc = "kn-6-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",id = 2060731,cardId = 1102020,lv = 58,bklv = 6,star = 3,mon = {id = 256,desc = "kn-6-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20608] = {
		[1] = {
			jlr = {cha = "kn-6",id = 2060810,cardId = 1101007,lv = 59,bklv = 6,star = 3,mon = {id = 207,desc = "kn-6-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",id = 2060811,cardId = 1102012,lv = 59,bklv = 6,star = 3,mon = {id = 251,desc = "kn-6-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-6",id = 2060820,cardId = 1101003,lv = 59,bklv = 6,star = 3,mon = {id = 205,desc = "kn-6-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",id = 2060821,cardId = 1102005,lv = 59,bklv = 6,star = 3,mon = {id = 250,desc = "kn-6-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-6",id = 2060830,cardId = 1101014,lv = 59,bklv = 6,star = 3,mon = {id = 210,desc = "kn-6-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",id = 2060831,cardId = 1102020,lv = 59,bklv = 6,star = 3,mon = {id = 255,desc = "kn-6-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20609] = {
		[1] = {
			jlr = {cha = "kn-6",id = 2060910,cardId = 1101007,lv = 60,bklv = 7,star = 3,mon = {id = 212,desc = "kn-6-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",id = 2060911,cardId = 1102012,lv = 60,bklv = 7,star = 3,mon = {id = 257,desc = "kn-6-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-6",id = 2060920,cardId = 1101003,lv = 60,bklv = 7,star = 3,mon = {id = 208,desc = "kn-6-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",id = 2060921,cardId = 1102005,lv = 60,bklv = 7,star = 3,mon = {id = 252,desc = "kn-6-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-6",id = 2060930,cardId = 1101014,lv = 60,bklv = 7,star = 3,mon = {id = 209,desc = "kn-6-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",id = 2060931,cardId = 1102020,lv = 60,bklv = 7,star = 3,mon = {id = 253,desc = "kn-6-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20610] = {
		[1] = {
			jlr = {cha = "kn-6",id = 2061010,cardId = 1101007,lv = 60,bklv = 7,star = 3,mon = {id = 201,desc = "kn-6-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",id = 2061011,cardId = 1102012,lv = 60,bklv = 7,star = 3,mon = {id = 241,desc = "kn-6-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-6",id = 2061020,cardId = 1101003,lv = 60,bklv = 7,star = 3,mon = {id = 203,desc = "kn-6-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",id = 2061021,cardId = 1102005,lv = 60,bklv = 7,star = 3,mon = {id = 244,desc = "kn-6-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-6",id = 2061030,cardId = 1101014,lv = 60,bklv = 7,star = 3,mon = {id = 214,desc = "kn-6-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",id = 2061031,cardId = 1102020,lv = 60,bklv = 7,star = 3,mon = {id = 259,desc = "kn-6-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20611] = {
		[1] = {
			jlr = {cha = "kn-6",id = 2061110,cardId = 1101007,lv = 60,bklv = 7,star = 3,mon = {id = 212,desc = "kn-6-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",id = 2061111,cardId = 1102012,lv = 60,bklv = 7,star = 3,mon = {id = 257,desc = "kn-6-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-6",id = 2061120,cardId = 1101003,lv = 60,bklv = 7,star = 3,mon = {id = 208,desc = "kn-6-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",id = 2061121,cardId = 1102005,lv = 60,bklv = 7,star = 3,mon = {id = 252,desc = "kn-6-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-6",id = 2061130,cardId = 1101014,lv = 60,bklv = 7,star = 3,mon = {id = 209,desc = "kn-6-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",id = 2061131,cardId = 1102020,lv = 60,bklv = 7,star = 3,mon = {id = 253,desc = "kn-6-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20612] = {
		[1] = {
			jlr = {cha = "kn-6",id = 2061210,cardId = 1101007,lv = 61,bklv = 7,star = 3,mon = {id = 215,desc = "kn-6-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",id = 2061211,cardId = 1102012,lv = 61,bklv = 7,star = 3,mon = {id = 260,desc = "kn-6-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-6",id = 2061220,cardId = 1101003,lv = 61,bklv = 7,star = 3,mon = {id = 201,desc = "kn-6-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",id = 2061221,cardId = 1102005,lv = 61,bklv = 7,star = 3,mon = {id = 248,desc = "kn-6-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-6",id = 2061230,cardId = 1101014,lv = 61,bklv = 7,star = 3,mon = {id = 211,desc = "kn-6-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",id = 2061231,cardId = 1102020,lv = 61,bklv = 7,star = 3,mon = {id = 256,desc = "kn-6-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20613] = {
		[1] = {
			jlr = {cha = "kn-6",id = 2061310,cardId = 1101007,lv = 62,bklv = 7,star = 3,mon = {id = 209,desc = "kn-6-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",id = 2061311,cardId = 1102012,lv = 62,bklv = 7,star = 3,mon = {id = 253,desc = "kn-6-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-6",id = 2061320,cardId = 1101003,lv = 62,bklv = 7,star = 3,mon = {id = 208,desc = "kn-6-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",id = 2061321,cardId = 1102005,lv = 62,bklv = 7,star = 3,mon = {id = 252,desc = "kn-6-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-6",id = 2061330,cardId = 1101014,lv = 62,bklv = 7,star = 3,mon = {id = 212,desc = "kn-6-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",id = 2061331,cardId = 1102020,lv = 62,bklv = 7,star = 3,mon = {id = 257,desc = "kn-6-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20614] = {
		[1] = {
			jlr = {cha = "kn-6",id = 2061410,cardId = 1101007,lv = 63,bklv = 7,star = 3,mon = {id = 207,desc = "kn-6-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",id = 2061411,cardId = 1102012,lv = 63,bklv = 7,star = 3,mon = {id = 248,desc = "kn-6-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-6",id = 2061420,cardId = 1101005,lv = 63,bklv = 7,star = 3,mon = {id = 207,desc = "kn-6-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",id = 2061421,cardId = 1102011,lv = 63,bklv = 7,star = 3,mon = {id = 242,desc = "kn-6-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-6",id = 2061430,cardId = 1101003,lv = 63,bklv = 7,star = 3,mon = {id = 211,desc = "kn-6-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",id = 2061431,cardId = 1102005,lv = 63,bklv = 7,star = 3,mon = {id = 256,desc = "kn-6-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20615] = {
		[1] = {
			jlr = {cha = "kn-6",id = 2061510,cardId = 1101007,lv = 64,bklv = 7,star = 3,mon = {id = 205,desc = "kn-6-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",id = 2061511,cardId = 1102012,lv = 64,bklv = 7,star = 3,mon = {id = 240,desc = "kn-6-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-6",id = 2061520,cardId = 1101005,lv = 64,bklv = 7,star = 3,mon = {id = 204,desc = "kn-6-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",id = 2061521,cardId = 1102011,lv = 64,bklv = 7,star = 3,mon = {id = 245,desc = "kn-6-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-6",id = 2061530,cardId = 1101010,lv = 64,bklv = 7,star = 3,mon = {id = 207,desc = "kn-6-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-6",id = 2061531,cardId = 1102016,lv = 64,bklv = 7,star = 3,mon = {id = 249,desc = "kn-6-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20701] = {
		[1] = {
			jlr = {cha = "kn-7",id = 2070110,cardId = 1101007,lv = 65,bklv = 7,star = 3,mon = {id = 212,desc = "kn-7-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",id = 2070111,cardId = 1102012,lv = 65,bklv = 7,star = 3,mon = {id = 257,desc = "kn-7-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-7",id = 2070120,cardId = 1101003,lv = 65,bklv = 7,star = 3,mon = {id = 208,desc = "kn-7-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",id = 2070121,cardId = 1102005,lv = 65,bklv = 7,star = 3,mon = {id = 252,desc = "kn-7-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-7",id = 2070130,cardId = 1101014,lv = 65,bklv = 7,star = 3,mon = {id = 213,desc = "kn-7-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",id = 2070131,cardId = 1102020,lv = 65,bklv = 7,star = 3,mon = {id = 258,desc = "kn-7-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20702] = {
		[1] = {
			jlr = {cha = "kn-7",id = 2070210,cardId = 1101007,lv = 66,bklv = 7,star = 3,mon = {id = 201,desc = "kn-7-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",id = 2070211,cardId = 1102012,lv = 66,bklv = 7,star = 3,mon = {id = 241,desc = "kn-7-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-7",id = 2070220,cardId = 1101003,lv = 66,bklv = 7,star = 3,mon = {id = 203,desc = "kn-7-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",id = 2070221,cardId = 1102005,lv = 66,bklv = 7,star = 3,mon = {id = 244,desc = "kn-7-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-7",id = 2070230,cardId = 1101014,lv = 66,bklv = 7,star = 3,mon = {id = 214,desc = "kn-7-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",id = 2070231,cardId = 1102020,lv = 66,bklv = 7,star = 3,mon = {id = 259,desc = "kn-7-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20703] = {
		[1] = {
			jlr = {cha = "kn-7",id = 2070310,cardId = 1101007,lv = 66,bklv = 7,star = 3,mon = {id = 212,desc = "kn-7-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",id = 2070311,cardId = 1102012,lv = 66,bklv = 7,star = 3,mon = {id = 257,desc = "kn-7-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-7",id = 2070320,cardId = 1101003,lv = 66,bklv = 7,star = 3,mon = {id = 208,desc = "kn-7-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",id = 2070321,cardId = 1102005,lv = 66,bklv = 7,star = 3,mon = {id = 252,desc = "kn-7-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-7",id = 2070330,cardId = 1101014,lv = 66,bklv = 7,star = 3,mon = {id = 209,desc = "kn-7-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",id = 2070331,cardId = 1102020,lv = 66,bklv = 7,star = 3,mon = {id = 253,desc = "kn-7-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20704] = {
		[1] = {
			jlr = {cha = "kn-7",id = 2070410,cardId = 1101007,lv = 67,bklv = 7,star = 3,mon = {id = 215,desc = "kn-7-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",id = 2070411,cardId = 1102012,lv = 67,bklv = 7,star = 3,mon = {id = 260,desc = "kn-7-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-7",id = 2070420,cardId = 1101003,lv = 67,bklv = 7,star = 3,mon = {id = 201,desc = "kn-7-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",id = 2070421,cardId = 1102005,lv = 67,bklv = 7,star = 3,mon = {id = 248,desc = "kn-7-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-7",id = 2070430,cardId = 1101014,lv = 67,bklv = 7,star = 3,mon = {id = 211,desc = "kn-7-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",id = 2070431,cardId = 1102020,lv = 67,bklv = 7,star = 3,mon = {id = 256,desc = "kn-7-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20705] = {
		[1] = {
			jlr = {cha = "kn-7",id = 2070510,cardId = 1101007,lv = 67,bklv = 7,star = 3,mon = {id = 206,desc = "kn-7-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",id = 2070511,cardId = 1102012,lv = 67,bklv = 7,star = 3,mon = {id = 246,desc = "kn-7-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-7",id = 2070520,cardId = 1101003,lv = 67,bklv = 7,star = 3,mon = {id = 203,desc = "kn-7-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",id = 2070521,cardId = 1102005,lv = 67,bklv = 7,star = 3,mon = {id = 244,desc = "kn-7-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-7",id = 2070530,cardId = 1101014,lv = 67,bklv = 7,star = 3,mon = {id = 212,desc = "kn-7-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",id = 2070531,cardId = 1102020,lv = 67,bklv = 7,star = 3,mon = {id = 257,desc = "kn-7-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20706] = {
		[1] = {
			jlr = {cha = "kn-7",id = 2070610,cardId = 1101007,lv = 68,bklv = 7,star = 3,mon = {id = 209,desc = "kn-7-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",id = 2070611,cardId = 1102012,lv = 68,bklv = 7,star = 3,mon = {id = 253,desc = "kn-7-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-7",id = 2070620,cardId = 1101003,lv = 68,bklv = 7,star = 3,mon = {id = 208,desc = "kn-7-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",id = 2070621,cardId = 1102005,lv = 68,bklv = 7,star = 3,mon = {id = 252,desc = "kn-7-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-7",id = 2070630,cardId = 1101014,lv = 68,bklv = 7,star = 3,mon = {id = 212,desc = "kn-7-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",id = 2070631,cardId = 1102020,lv = 68,bklv = 7,star = 3,mon = {id = 257,desc = "kn-7-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20707] = {
		[1] = {
			jlr = {cha = "kn-7",id = 2070710,cardId = 1101007,lv = 68,bklv = 7,star = 3,mon = {id = 207,desc = "kn-7-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",id = 2070711,cardId = 1102012,lv = 68,bklv = 7,star = 3,mon = {id = 248,desc = "kn-7-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-7",id = 2070720,cardId = 1101003,lv = 68,bklv = 7,star = 3,mon = {id = 207,desc = "kn-7-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",id = 2070721,cardId = 1102005,lv = 68,bklv = 7,star = 3,mon = {id = 242,desc = "kn-7-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-7",id = 2070730,cardId = 1101014,lv = 68,bklv = 7,star = 3,mon = {id = 211,desc = "kn-7-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",id = 2070731,cardId = 1102020,lv = 68,bklv = 7,star = 3,mon = {id = 256,desc = "kn-7-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20708] = {
		[1] = {
			jlr = {cha = "kn-7",id = 2070810,cardId = 1101007,lv = 69,bklv = 7,star = 3,mon = {id = 207,desc = "kn-7-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",id = 2070811,cardId = 1102012,lv = 69,bklv = 7,star = 3,mon = {id = 251,desc = "kn-7-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-7",id = 2070820,cardId = 1101003,lv = 69,bklv = 7,star = 3,mon = {id = 205,desc = "kn-7-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",id = 2070821,cardId = 1102005,lv = 69,bklv = 7,star = 3,mon = {id = 250,desc = "kn-7-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-7",id = 2070830,cardId = 1101014,lv = 69,bklv = 7,star = 3,mon = {id = 210,desc = "kn-7-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",id = 2070831,cardId = 1102020,lv = 69,bklv = 7,star = 3,mon = {id = 255,desc = "kn-7-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20709] = {
		[1] = {
			jlr = {cha = "kn-7",id = 2070910,cardId = 1101007,lv = 70,bklv = 8,star = 3,mon = {id = 212,desc = "kn-7-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",id = 2070911,cardId = 1102012,lv = 70,bklv = 8,star = 3,mon = {id = 257,desc = "kn-7-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-7",id = 2070920,cardId = 1101003,lv = 70,bklv = 8,star = 3,mon = {id = 208,desc = "kn-7-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",id = 2070921,cardId = 1102005,lv = 70,bklv = 8,star = 3,mon = {id = 252,desc = "kn-7-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-7",id = 2070930,cardId = 1101014,lv = 70,bklv = 8,star = 3,mon = {id = 209,desc = "kn-7-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",id = 2070931,cardId = 1102020,lv = 70,bklv = 8,star = 3,mon = {id = 253,desc = "kn-7-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20710] = {
		[1] = {
			jlr = {cha = "kn-7",id = 2071010,cardId = 1101007,lv = 70,bklv = 8,star = 3,mon = {id = 201,desc = "kn-7-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",id = 2071011,cardId = 1102012,lv = 70,bklv = 8,star = 3,mon = {id = 241,desc = "kn-7-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-7",id = 2071020,cardId = 1101003,lv = 70,bklv = 8,star = 3,mon = {id = 203,desc = "kn-7-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",id = 2071021,cardId = 1102005,lv = 70,bklv = 8,star = 3,mon = {id = 244,desc = "kn-7-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-7",id = 2071030,cardId = 1101014,lv = 70,bklv = 8,star = 3,mon = {id = 214,desc = "kn-7-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",id = 2071031,cardId = 1102020,lv = 70,bklv = 8,star = 3,mon = {id = 259,desc = "kn-7-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20711] = {
		[1] = {
			jlr = {cha = "kn-7",id = 2071110,cardId = 1101007,lv = 70,bklv = 8,star = 3,mon = {id = 212,desc = "kn-7-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",id = 2071111,cardId = 1102012,lv = 70,bklv = 8,star = 3,mon = {id = 257,desc = "kn-7-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-7",id = 2071120,cardId = 1101003,lv = 70,bklv = 8,star = 3,mon = {id = 208,desc = "kn-7-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",id = 2071121,cardId = 1102005,lv = 70,bklv = 8,star = 3,mon = {id = 252,desc = "kn-7-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-7",id = 2071130,cardId = 1101014,lv = 70,bklv = 8,star = 3,mon = {id = 209,desc = "kn-7-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",id = 2071131,cardId = 1102020,lv = 70,bklv = 8,star = 3,mon = {id = 253,desc = "kn-7-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20712] = {
		[1] = {
			jlr = {cha = "kn-7",id = 2071210,cardId = 1101007,lv = 71,bklv = 8,star = 3,mon = {id = 215,desc = "kn-7-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",id = 2071211,cardId = 1102012,lv = 71,bklv = 8,star = 3,mon = {id = 260,desc = "kn-7-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-7",id = 2071220,cardId = 1101003,lv = 71,bklv = 8,star = 3,mon = {id = 201,desc = "kn-7-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",id = 2071221,cardId = 1102005,lv = 71,bklv = 8,star = 3,mon = {id = 248,desc = "kn-7-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-7",id = 2071230,cardId = 1101014,lv = 71,bklv = 8,star = 3,mon = {id = 211,desc = "kn-7-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",id = 2071231,cardId = 1102020,lv = 71,bklv = 8,star = 3,mon = {id = 256,desc = "kn-7-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20713] = {
		[1] = {
			jlr = {cha = "kn-7",id = 2071310,cardId = 1101007,lv = 72,bklv = 8,star = 3,mon = {id = 209,desc = "kn-7-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",id = 2071311,cardId = 1102012,lv = 72,bklv = 8,star = 3,mon = {id = 253,desc = "kn-7-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-7",id = 2071320,cardId = 1101003,lv = 72,bklv = 8,star = 3,mon = {id = 208,desc = "kn-7-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",id = 2071321,cardId = 1102005,lv = 72,bklv = 8,star = 3,mon = {id = 252,desc = "kn-7-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-7",id = 2071330,cardId = 1101014,lv = 72,bklv = 8,star = 3,mon = {id = 212,desc = "kn-7-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",id = 2071331,cardId = 1102020,lv = 72,bklv = 8,star = 3,mon = {id = 257,desc = "kn-7-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20714] = {
		[1] = {
			jlr = {cha = "kn-7",id = 2071410,cardId = 1101007,lv = 73,bklv = 8,star = 3,mon = {id = 207,desc = "kn-7-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",id = 2071411,cardId = 1102012,lv = 73,bklv = 8,star = 3,mon = {id = 248,desc = "kn-7-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-7",id = 2071420,cardId = 1101005,lv = 73,bklv = 8,star = 3,mon = {id = 207,desc = "kn-7-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",id = 2071421,cardId = 1102011,lv = 73,bklv = 8,star = 3,mon = {id = 242,desc = "kn-7-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-7",id = 2071430,cardId = 1101003,lv = 73,bklv = 8,star = 3,mon = {id = 211,desc = "kn-7-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",id = 2071431,cardId = 1102005,lv = 73,bklv = 8,star = 3,mon = {id = 256,desc = "kn-7-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20715] = {
		[1] = {
			jlr = {cha = "kn-7",id = 2071510,cardId = 1101007,lv = 74,bklv = 8,star = 3,mon = {id = 205,desc = "kn-7-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",id = 2071511,cardId = 1102012,lv = 74,bklv = 8,star = 3,mon = {id = 240,desc = "kn-7-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-7",id = 2071520,cardId = 1101005,lv = 74,bklv = 8,star = 3,mon = {id = 204,desc = "kn-7-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",id = 2071521,cardId = 1102011,lv = 74,bklv = 8,star = 3,mon = {id = 245,desc = "kn-7-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-7",id = 2071530,cardId = 1101010,lv = 74,bklv = 8,star = 3,mon = {id = 207,desc = "kn-7-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-7",id = 2071531,cardId = 1102016,lv = 74,bklv = 8,star = 3,mon = {id = 249,desc = "kn-7-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20801] = {
		[1] = {
			jlr = {cha = "kn-8",id = 2080110,cardId = 1101007,lv = 75,bklv = 8,star = 3,mon = {id = 212,desc = "kn-8-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",id = 2080111,cardId = 1102012,lv = 75,bklv = 8,star = 3,mon = {id = 257,desc = "kn-8-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-8",id = 2080120,cardId = 1101003,lv = 75,bklv = 8,star = 3,mon = {id = 208,desc = "kn-8-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",id = 2080121,cardId = 1102005,lv = 75,bklv = 8,star = 3,mon = {id = 252,desc = "kn-8-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-8",id = 2080130,cardId = 1101014,lv = 75,bklv = 8,star = 3,mon = {id = 213,desc = "kn-8-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",id = 2080131,cardId = 1102020,lv = 75,bklv = 8,star = 3,mon = {id = 258,desc = "kn-8-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20802] = {
		[1] = {
			jlr = {cha = "kn-8",id = 2080210,cardId = 1101007,lv = 76,bklv = 8,star = 3,mon = {id = 201,desc = "kn-8-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",id = 2080211,cardId = 1102012,lv = 76,bklv = 8,star = 3,mon = {id = 241,desc = "kn-8-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-8",id = 2080220,cardId = 1101003,lv = 76,bklv = 8,star = 3,mon = {id = 203,desc = "kn-8-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",id = 2080221,cardId = 1102005,lv = 76,bklv = 8,star = 3,mon = {id = 244,desc = "kn-8-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-8",id = 2080230,cardId = 1101014,lv = 76,bklv = 8,star = 3,mon = {id = 214,desc = "kn-8-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",id = 2080231,cardId = 1102020,lv = 76,bklv = 8,star = 3,mon = {id = 259,desc = "kn-8-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20803] = {
		[1] = {
			jlr = {cha = "kn-8",id = 2080310,cardId = 1101007,lv = 76,bklv = 8,star = 3,mon = {id = 212,desc = "kn-8-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",id = 2080311,cardId = 1102012,lv = 76,bklv = 8,star = 3,mon = {id = 257,desc = "kn-8-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-8",id = 2080320,cardId = 1101003,lv = 76,bklv = 8,star = 3,mon = {id = 208,desc = "kn-8-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",id = 2080321,cardId = 1102005,lv = 76,bklv = 8,star = 3,mon = {id = 252,desc = "kn-8-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-8",id = 2080330,cardId = 1101014,lv = 76,bklv = 8,star = 3,mon = {id = 209,desc = "kn-8-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",id = 2080331,cardId = 1102020,lv = 76,bklv = 8,star = 3,mon = {id = 253,desc = "kn-8-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20804] = {
		[1] = {
			jlr = {cha = "kn-8",id = 2080410,cardId = 1101007,lv = 77,bklv = 8,star = 3,mon = {id = 215,desc = "kn-8-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",id = 2080411,cardId = 1102012,lv = 77,bklv = 8,star = 3,mon = {id = 260,desc = "kn-8-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-8",id = 2080420,cardId = 1101003,lv = 77,bklv = 8,star = 3,mon = {id = 201,desc = "kn-8-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",id = 2080421,cardId = 1102005,lv = 77,bklv = 8,star = 3,mon = {id = 248,desc = "kn-8-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-8",id = 2080430,cardId = 1101014,lv = 77,bklv = 8,star = 3,mon = {id = 211,desc = "kn-8-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",id = 2080431,cardId = 1102020,lv = 77,bklv = 8,star = 3,mon = {id = 256,desc = "kn-8-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20805] = {
		[1] = {
			jlr = {cha = "kn-8",id = 2080510,cardId = 1101007,lv = 77,bklv = 8,star = 3,mon = {id = 206,desc = "kn-8-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",id = 2080511,cardId = 1102012,lv = 77,bklv = 8,star = 3,mon = {id = 246,desc = "kn-8-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-8",id = 2080520,cardId = 1101003,lv = 77,bklv = 8,star = 3,mon = {id = 203,desc = "kn-8-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",id = 2080521,cardId = 1102005,lv = 77,bklv = 8,star = 3,mon = {id = 244,desc = "kn-8-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-8",id = 2080530,cardId = 1101014,lv = 77,bklv = 8,star = 3,mon = {id = 212,desc = "kn-8-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",id = 2080531,cardId = 1102020,lv = 77,bklv = 8,star = 3,mon = {id = 257,desc = "kn-8-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20806] = {
		[1] = {
			jlr = {cha = "kn-8",id = 2080610,cardId = 1101007,lv = 78,bklv = 8,star = 3,mon = {id = 209,desc = "kn-8-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",id = 2080611,cardId = 1102012,lv = 78,bklv = 8,star = 3,mon = {id = 253,desc = "kn-8-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-8",id = 2080620,cardId = 1101003,lv = 78,bklv = 8,star = 3,mon = {id = 208,desc = "kn-8-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",id = 2080621,cardId = 1102005,lv = 78,bklv = 8,star = 3,mon = {id = 252,desc = "kn-8-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-8",id = 2080630,cardId = 1101014,lv = 78,bklv = 8,star = 3,mon = {id = 212,desc = "kn-8-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",id = 2080631,cardId = 1102020,lv = 78,bklv = 8,star = 3,mon = {id = 257,desc = "kn-8-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20807] = {
		[1] = {
			jlr = {cha = "kn-8",id = 2080710,cardId = 1101007,lv = 78,bklv = 8,star = 3,mon = {id = 207,desc = "kn-8-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",id = 2080711,cardId = 1102012,lv = 78,bklv = 8,star = 3,mon = {id = 248,desc = "kn-8-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-8",id = 2080720,cardId = 1101003,lv = 78,bklv = 8,star = 3,mon = {id = 207,desc = "kn-8-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",id = 2080721,cardId = 1102005,lv = 78,bklv = 8,star = 3,mon = {id = 242,desc = "kn-8-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-8",id = 2080730,cardId = 1101014,lv = 78,bklv = 8,star = 3,mon = {id = 211,desc = "kn-8-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",id = 2080731,cardId = 1102020,lv = 78,bklv = 8,star = 3,mon = {id = 256,desc = "kn-8-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20808] = {
		[1] = {
			jlr = {cha = "kn-8",id = 2080810,cardId = 1101007,lv = 79,bklv = 8,star = 3,mon = {id = 207,desc = "kn-8-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",id = 2080811,cardId = 1102012,lv = 79,bklv = 8,star = 3,mon = {id = 251,desc = "kn-8-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-8",id = 2080820,cardId = 1101003,lv = 79,bklv = 8,star = 3,mon = {id = 205,desc = "kn-8-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",id = 2080821,cardId = 1102005,lv = 79,bklv = 8,star = 3,mon = {id = 250,desc = "kn-8-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-8",id = 2080830,cardId = 1101014,lv = 79,bklv = 8,star = 3,mon = {id = 210,desc = "kn-8-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",id = 2080831,cardId = 1102020,lv = 79,bklv = 8,star = 4,mon = {id = 255,desc = "kn-8-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20809] = {
		[1] = {
			jlr = {cha = "kn-8",id = 2080910,cardId = 1101007,lv = 80,bklv = 9,star = 4,mon = {id = 212,desc = "kn-8-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",id = 2080911,cardId = 1102012,lv = 80,bklv = 9,star = 4,mon = {id = 257,desc = "kn-8-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-8",id = 2080920,cardId = 1101003,lv = 80,bklv = 9,star = 4,mon = {id = 208,desc = "kn-8-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",id = 2080921,cardId = 1102005,lv = 80,bklv = 9,star = 4,mon = {id = 252,desc = "kn-8-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-8",id = 2080930,cardId = 1101014,lv = 80,bklv = 9,star = 4,mon = {id = 209,desc = "kn-8-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",id = 2080931,cardId = 1102020,lv = 80,bklv = 9,star = 4,mon = {id = 253,desc = "kn-8-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20810] = {
		[1] = {
			jlr = {cha = "kn-8",id = 2081010,cardId = 1101007,lv = 80,bklv = 9,star = 4,mon = {id = 201,desc = "kn-8-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",id = 2081011,cardId = 1102012,lv = 80,bklv = 9,star = 4,mon = {id = 241,desc = "kn-8-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-8",id = 2081020,cardId = 1101003,lv = 80,bklv = 9,star = 4,mon = {id = 203,desc = "kn-8-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",id = 2081021,cardId = 1102005,lv = 80,bklv = 9,star = 4,mon = {id = 244,desc = "kn-8-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-8",id = 2081030,cardId = 1101014,lv = 80,bklv = 9,star = 4,mon = {id = 214,desc = "kn-8-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",id = 2081031,cardId = 1102020,lv = 80,bklv = 9,star = 4,mon = {id = 259,desc = "kn-8-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20811] = {
		[1] = {
			jlr = {cha = "kn-8",id = 2081110,cardId = 1101007,lv = 80,bklv = 9,star = 4,mon = {id = 212,desc = "kn-8-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",id = 2081111,cardId = 1102012,lv = 80,bklv = 9,star = 4,mon = {id = 257,desc = "kn-8-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-8",id = 2081120,cardId = 1101003,lv = 80,bklv = 9,star = 4,mon = {id = 208,desc = "kn-8-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",id = 2081121,cardId = 1102005,lv = 80,bklv = 9,star = 4,mon = {id = 252,desc = "kn-8-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-8",id = 2081130,cardId = 1101014,lv = 80,bklv = 9,star = 4,mon = {id = 209,desc = "kn-8-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",id = 2081131,cardId = 1102020,lv = 80,bklv = 9,star = 4,mon = {id = 253,desc = "kn-8-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20812] = {
		[1] = {
			jlr = {cha = "kn-8",id = 2081210,cardId = 1101007,lv = 81,bklv = 9,star = 4,mon = {id = 215,desc = "kn-8-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",id = 2081211,cardId = 1102012,lv = 81,bklv = 9,star = 4,mon = {id = 260,desc = "kn-8-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-8",id = 2081220,cardId = 1101003,lv = 81,bklv = 9,star = 4,mon = {id = 201,desc = "kn-8-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",id = 2081221,cardId = 1102005,lv = 81,bklv = 9,star = 4,mon = {id = 248,desc = "kn-8-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-8",id = 2081230,cardId = 1101014,lv = 81,bklv = 9,star = 4,mon = {id = 211,desc = "kn-8-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",id = 2081231,cardId = 1102020,lv = 81,bklv = 9,star = 4,mon = {id = 256,desc = "kn-8-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20813] = {
		[1] = {
			jlr = {cha = "kn-8",id = 2081310,cardId = 1101007,lv = 82,bklv = 9,star = 4,mon = {id = 209,desc = "kn-8-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",id = 2081311,cardId = 1102012,lv = 82,bklv = 9,star = 4,mon = {id = 253,desc = "kn-8-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-8",id = 2081320,cardId = 1101003,lv = 82,bklv = 9,star = 4,mon = {id = 208,desc = "kn-8-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",id = 2081321,cardId = 1102005,lv = 82,bklv = 9,star = 4,mon = {id = 252,desc = "kn-8-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-8",id = 2081330,cardId = 1101014,lv = 82,bklv = 9,star = 4,mon = {id = 212,desc = "kn-8-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",id = 2081331,cardId = 1102020,lv = 82,bklv = 9,star = 4,mon = {id = 257,desc = "kn-8-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20814] = {
		[1] = {
			jlr = {cha = "kn-8",id = 2081410,cardId = 1101007,lv = 83,bklv = 9,star = 4,mon = {id = 207,desc = "kn-8-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",id = 2081411,cardId = 1102012,lv = 83,bklv = 9,star = 4,mon = {id = 248,desc = "kn-8-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-8",id = 2081420,cardId = 1101005,lv = 83,bklv = 9,star = 4,mon = {id = 207,desc = "kn-8-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",id = 2081421,cardId = 1102011,lv = 83,bklv = 9,star = 4,mon = {id = 242,desc = "kn-8-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-8",id = 2081430,cardId = 1101003,lv = 83,bklv = 9,star = 4,mon = {id = 211,desc = "kn-8-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",id = 2081431,cardId = 1102005,lv = 83,bklv = 9,star = 4,mon = {id = 256,desc = "kn-8-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20815] = {
		[1] = {
			jlr = {cha = "kn-8",id = 2081510,cardId = 1101007,lv = 84,bklv = 9,star = 4,mon = {id = 205,desc = "kn-8-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",id = 2081511,cardId = 1102012,lv = 84,bklv = 9,star = 4,mon = {id = 240,desc = "kn-8-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-8",id = 2081520,cardId = 1101005,lv = 84,bklv = 9,star = 4,mon = {id = 204,desc = "kn-8-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",id = 2081521,cardId = 1102011,lv = 84,bklv = 9,star = 4,mon = {id = 245,desc = "kn-8-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-8",id = 2081530,cardId = 1101010,lv = 84,bklv = 9,star = 4,mon = {id = 207,desc = "kn-8-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-8",id = 2081531,cardId = 1102016,lv = 84,bklv = 9,star = 3,mon = {id = 249,desc = "kn-8-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20901] = {
		[1] = {
			jlr = {cha = "kn-9",id = 2090110,cardId = 1101007,lv = 85,bklv = 10,star = 4,mon = {id = 212,desc = "kn-9-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",id = 2090111,cardId = 1102012,lv = 85,bklv = 10,star = 4,mon = {id = 257,desc = "kn-9-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-9",id = 2090120,cardId = 1101003,lv = 85,bklv = 10,star = 4,mon = {id = 208,desc = "kn-9-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",id = 2090121,cardId = 1102005,lv = 85,bklv = 10,star = 4,mon = {id = 252,desc = "kn-9-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-9",id = 2090130,cardId = 1101014,lv = 85,bklv = 10,star = 4,mon = {id = 213,desc = "kn-9-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",id = 2090131,cardId = 1102020,lv = 85,bklv = 10,star = 4,mon = {id = 258,desc = "kn-9-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20902] = {
		[1] = {
			jlr = {cha = "kn-9",id = 2090210,cardId = 1101007,lv = 86,bklv = 10,star = 4,mon = {id = 201,desc = "kn-9-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",id = 2090211,cardId = 1102012,lv = 86,bklv = 10,star = 4,mon = {id = 241,desc = "kn-9-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-9",id = 2090220,cardId = 1101003,lv = 86,bklv = 10,star = 4,mon = {id = 203,desc = "kn-9-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",id = 2090221,cardId = 1102005,lv = 86,bklv = 10,star = 4,mon = {id = 244,desc = "kn-9-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-9",id = 2090230,cardId = 1101014,lv = 86,bklv = 10,star = 4,mon = {id = 214,desc = "kn-9-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",id = 2090231,cardId = 1102020,lv = 86,bklv = 10,star = 4,mon = {id = 259,desc = "kn-9-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20903] = {
		[1] = {
			jlr = {cha = "kn-9",id = 2090310,cardId = 1101007,lv = 86,bklv = 10,star = 4,mon = {id = 212,desc = "kn-9-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",id = 2090311,cardId = 1102012,lv = 86,bklv = 10,star = 4,mon = {id = 257,desc = "kn-9-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-9",id = 2090320,cardId = 1101003,lv = 86,bklv = 10,star = 4,mon = {id = 208,desc = "kn-9-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",id = 2090321,cardId = 1102005,lv = 86,bklv = 10,star = 4,mon = {id = 252,desc = "kn-9-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-9",id = 2090330,cardId = 1101014,lv = 86,bklv = 10,star = 4,mon = {id = 209,desc = "kn-9-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",id = 2090331,cardId = 1102020,lv = 86,bklv = 10,star = 4,mon = {id = 253,desc = "kn-9-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20904] = {
		[1] = {
			jlr = {cha = "kn-9",id = 2090410,cardId = 1101007,lv = 87,bklv = 10,star = 4,mon = {id = 215,desc = "kn-9-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",id = 2090411,cardId = 1102012,lv = 87,bklv = 10,star = 4,mon = {id = 260,desc = "kn-9-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-9",id = 2090420,cardId = 1101003,lv = 87,bklv = 10,star = 4,mon = {id = 201,desc = "kn-9-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",id = 2090421,cardId = 1102005,lv = 87,bklv = 10,star = 4,mon = {id = 248,desc = "kn-9-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-9",id = 2090430,cardId = 1101014,lv = 87,bklv = 10,star = 4,mon = {id = 211,desc = "kn-9-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",id = 2090431,cardId = 1102020,lv = 87,bklv = 10,star = 4,mon = {id = 256,desc = "kn-9-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20905] = {
		[1] = {
			jlr = {cha = "kn-9",id = 2090510,cardId = 1101007,lv = 87,bklv = 10,star = 4,mon = {id = 206,desc = "kn-9-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",id = 2090511,cardId = 1102012,lv = 87,bklv = 10,star = 4,mon = {id = 246,desc = "kn-9-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-9",id = 2090520,cardId = 1101003,lv = 87,bklv = 10,star = 4,mon = {id = 203,desc = "kn-9-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",id = 2090521,cardId = 1102005,lv = 87,bklv = 10,star = 4,mon = {id = 244,desc = "kn-9-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-9",id = 2090530,cardId = 1101014,lv = 87,bklv = 10,star = 4,mon = {id = 212,desc = "kn-9-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",id = 2090531,cardId = 1102020,lv = 87,bklv = 10,star = 4,mon = {id = 257,desc = "kn-9-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20906] = {
		[1] = {
			jlr = {cha = "kn-9",id = 2090610,cardId = 1101007,lv = 88,bklv = 10,star = 4,mon = {id = 209,desc = "kn-9-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",id = 2090611,cardId = 1102012,lv = 88,bklv = 10,star = 4,mon = {id = 253,desc = "kn-9-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-9",id = 2090620,cardId = 1101003,lv = 88,bklv = 10,star = 4,mon = {id = 208,desc = "kn-9-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",id = 2090621,cardId = 1102005,lv = 88,bklv = 10,star = 4,mon = {id = 252,desc = "kn-9-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-9",id = 2090630,cardId = 1101014,lv = 88,bklv = 10,star = 4,mon = {id = 212,desc = "kn-9-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",id = 2090631,cardId = 1102020,lv = 88,bklv = 10,star = 4,mon = {id = 257,desc = "kn-9-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20907] = {
		[1] = {
			jlr = {cha = "kn-9",id = 2090710,cardId = 1101007,lv = 88,bklv = 10,star = 4,mon = {id = 207,desc = "kn-9-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",id = 2090711,cardId = 1102012,lv = 88,bklv = 10,star = 4,mon = {id = 248,desc = "kn-9-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-9",id = 2090720,cardId = 1101003,lv = 88,bklv = 10,star = 4,mon = {id = 207,desc = "kn-9-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",id = 2090721,cardId = 1102005,lv = 88,bklv = 10,star = 4,mon = {id = 242,desc = "kn-9-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-9",id = 2090730,cardId = 1101014,lv = 88,bklv = 10,star = 4,mon = {id = 211,desc = "kn-9-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",id = 2090731,cardId = 1102020,lv = 88,bklv = 10,star = 4,mon = {id = 256,desc = "kn-9-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20908] = {
		[1] = {
			jlr = {cha = "kn-9",id = 2090810,cardId = 1101007,lv = 89,bklv = 10,star = 4,mon = {id = 207,desc = "kn-9-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",id = 2090811,cardId = 1102012,lv = 89,bklv = 10,star = 4,mon = {id = 251,desc = "kn-9-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-9",id = 2090820,cardId = 1101003,lv = 89,bklv = 10,star = 4,mon = {id = 205,desc = "kn-9-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",id = 2090821,cardId = 1102005,lv = 89,bklv = 10,star = 4,mon = {id = 250,desc = "kn-9-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-9",id = 2090830,cardId = 1101014,lv = 89,bklv = 10,star = 4,mon = {id = 210,desc = "kn-9-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",id = 2090831,cardId = 1102020,lv = 89,bklv = 10,star = 4,mon = {id = 255,desc = "kn-9-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20909] = {
		[1] = {
			jlr = {cha = "kn-9",id = 2090910,cardId = 1101007,lv = 90,bklv = 11,star = 4,mon = {id = 212,desc = "kn-9-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",id = 2090911,cardId = 1102012,lv = 90,bklv = 11,star = 4,mon = {id = 257,desc = "kn-9-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-9",id = 2090920,cardId = 1101003,lv = 90,bklv = 11,star = 4,mon = {id = 208,desc = "kn-9-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",id = 2090921,cardId = 1102005,lv = 90,bklv = 11,star = 4,mon = {id = 252,desc = "kn-9-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-9",id = 2090930,cardId = 1101014,lv = 90,bklv = 11,star = 4,mon = {id = 209,desc = "kn-9-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",id = 2090931,cardId = 1102020,lv = 90,bklv = 11,star = 4,mon = {id = 253,desc = "kn-9-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20910] = {
		[1] = {
			jlr = {cha = "kn-9",id = 2091010,cardId = 1101007,lv = 90,bklv = 11,star = 4,mon = {id = 201,desc = "kn-9-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",id = 2091011,cardId = 1102012,lv = 90,bklv = 11,star = 4,mon = {id = 241,desc = "kn-9-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-9",id = 2091020,cardId = 1101003,lv = 90,bklv = 11,star = 4,mon = {id = 203,desc = "kn-9-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",id = 2091021,cardId = 1102005,lv = 90,bklv = 11,star = 4,mon = {id = 244,desc = "kn-9-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-9",id = 2091030,cardId = 1101014,lv = 90,bklv = 11,star = 4,mon = {id = 214,desc = "kn-9-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",id = 2091031,cardId = 1102020,lv = 90,bklv = 11,star = 4,mon = {id = 259,desc = "kn-9-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20911] = {
		[1] = {
			jlr = {cha = "kn-9",id = 2091110,cardId = 1101007,lv = 90,bklv = 11,star = 4,mon = {id = 212,desc = "kn-9-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",id = 2091111,cardId = 1102012,lv = 90,bklv = 11,star = 4,mon = {id = 257,desc = "kn-9-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-9",id = 2091120,cardId = 1101003,lv = 90,bklv = 11,star = 4,mon = {id = 208,desc = "kn-9-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",id = 2091121,cardId = 1102005,lv = 90,bklv = 11,star = 4,mon = {id = 252,desc = "kn-9-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-9",id = 2091130,cardId = 1101014,lv = 90,bklv = 11,star = 4,mon = {id = 209,desc = "kn-9-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",id = 2091131,cardId = 1102020,lv = 90,bklv = 11,star = 4,mon = {id = 253,desc = "kn-9-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20912] = {
		[1] = {
			jlr = {cha = "kn-9",id = 2091210,cardId = 1101007,lv = 91,bklv = 11,star = 4,mon = {id = 215,desc = "kn-9-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",id = 2091211,cardId = 1102012,lv = 91,bklv = 11,star = 4,mon = {id = 260,desc = "kn-9-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-9",id = 2091220,cardId = 1101003,lv = 91,bklv = 11,star = 4,mon = {id = 201,desc = "kn-9-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",id = 2091221,cardId = 1102005,lv = 91,bklv = 11,star = 4,mon = {id = 248,desc = "kn-9-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-9",id = 2091230,cardId = 1101014,lv = 91,bklv = 11,star = 4,mon = {id = 211,desc = "kn-9-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",id = 2091231,cardId = 1102020,lv = 91,bklv = 11,star = 4,mon = {id = 256,desc = "kn-9-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20913] = {
		[1] = {
			jlr = {cha = "kn-9",id = 2091310,cardId = 1101007,lv = 92,bklv = 11,star = 4,mon = {id = 209,desc = "kn-9-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",id = 2091311,cardId = 1102012,lv = 92,bklv = 11,star = 4,mon = {id = 253,desc = "kn-9-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-9",id = 2091320,cardId = 1101003,lv = 92,bklv = 11,star = 4,mon = {id = 208,desc = "kn-9-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",id = 2091321,cardId = 1102005,lv = 92,bklv = 11,star = 4,mon = {id = 252,desc = "kn-9-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-9",id = 2091330,cardId = 1101014,lv = 92,bklv = 11,star = 4,mon = {id = 212,desc = "kn-9-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",id = 2091331,cardId = 1102020,lv = 92,bklv = 11,star = 4,mon = {id = 257,desc = "kn-9-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20914] = {
		[1] = {
			jlr = {cha = "kn-9",id = 2091410,cardId = 1101007,lv = 93,bklv = 11,star = 4,mon = {id = 207,desc = "kn-9-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",id = 2091411,cardId = 1102012,lv = 93,bklv = 11,star = 4,mon = {id = 248,desc = "kn-9-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-9",id = 2091420,cardId = 1101005,lv = 93,bklv = 11,star = 4,mon = {id = 207,desc = "kn-9-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",id = 2091421,cardId = 1102011,lv = 93,bklv = 11,star = 4,mon = {id = 242,desc = "kn-9-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-9",id = 2091430,cardId = 1101003,lv = 93,bklv = 11,star = 4,mon = {id = 211,desc = "kn-9-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",id = 2091431,cardId = 1102005,lv = 93,bklv = 11,star = 4,mon = {id = 256,desc = "kn-9-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[20915] = {
		[1] = {
			jlr = {cha = "kn-9",id = 2091510,cardId = 1101007,lv = 94,bklv = 11,star = 4,mon = {id = 205,desc = "kn-9-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",id = 2091511,cardId = 1102012,lv = 94,bklv = 11,star = 4,mon = {id = 240,desc = "kn-9-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-9",id = 2091520,cardId = 1101005,lv = 94,bklv = 11,star = 4,mon = {id = 204,desc = "kn-9-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",id = 2091521,cardId = 1102011,lv = 94,bklv = 11,star = 4,mon = {id = 245,desc = "kn-9-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-9",id = 2091530,cardId = 1101010,lv = 94,bklv = 11,star = 4,mon = {id = 207,desc = "kn-9-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-9",id = 2091531,cardId = 1102016,lv = 94,bklv = 11,star = 4,mon = {id = 249,desc = "kn-9-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21001] = {
		[1] = {
			jlr = {cha = "kn-10",id = 2100110,cardId = 1101007,lv = 95,bklv = 12,star = 4,mon = {id = 212,desc = "kn-10-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",id = 2100111,cardId = 1102012,lv = 95,bklv = 12,star = 4,mon = {id = 257,desc = "kn-10-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-10",id = 2100120,cardId = 1101003,lv = 95,bklv = 12,star = 4,mon = {id = 208,desc = "kn-10-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",id = 2100121,cardId = 1102005,lv = 95,bklv = 12,star = 4,mon = {id = 252,desc = "kn-10-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-10",id = 2100130,cardId = 1101014,lv = 95,bklv = 12,star = 4,mon = {id = 213,desc = "kn-10-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",id = 2100131,cardId = 1102020,lv = 95,bklv = 12,star = 4,mon = {id = 258,desc = "kn-10-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21002] = {
		[1] = {
			jlr = {cha = "kn-10",id = 2100210,cardId = 1101007,lv = 96,bklv = 12,star = 4,mon = {id = 201,desc = "kn-10-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",id = 2100211,cardId = 1102012,lv = 96,bklv = 12,star = 4,mon = {id = 241,desc = "kn-10-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-10",id = 2100220,cardId = 1101003,lv = 96,bklv = 12,star = 4,mon = {id = 203,desc = "kn-10-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",id = 2100221,cardId = 1102005,lv = 96,bklv = 12,star = 4,mon = {id = 244,desc = "kn-10-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-10",id = 2100230,cardId = 1101014,lv = 96,bklv = 12,star = 4,mon = {id = 214,desc = "kn-10-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",id = 2100231,cardId = 1102020,lv = 96,bklv = 12,star = 4,mon = {id = 259,desc = "kn-10-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21003] = {
		[1] = {
			jlr = {cha = "kn-10",id = 2100310,cardId = 1101007,lv = 96,bklv = 12,star = 4,mon = {id = 212,desc = "kn-10-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",id = 2100311,cardId = 1102012,lv = 96,bklv = 12,star = 4,mon = {id = 257,desc = "kn-10-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-10",id = 2100320,cardId = 1101003,lv = 96,bklv = 12,star = 4,mon = {id = 208,desc = "kn-10-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",id = 2100321,cardId = 1102005,lv = 96,bklv = 12,star = 4,mon = {id = 252,desc = "kn-10-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-10",id = 2100330,cardId = 1101014,lv = 96,bklv = 12,star = 4,mon = {id = 209,desc = "kn-10-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",id = 2100331,cardId = 1102020,lv = 96,bklv = 12,star = 4,mon = {id = 253,desc = "kn-10-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21004] = {
		[1] = {
			jlr = {cha = "kn-10",id = 2100410,cardId = 1101007,lv = 97,bklv = 12,star = 4,mon = {id = 215,desc = "kn-10-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",id = 2100411,cardId = 1102012,lv = 97,bklv = 12,star = 4,mon = {id = 260,desc = "kn-10-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-10",id = 2100420,cardId = 1101003,lv = 97,bklv = 12,star = 4,mon = {id = 201,desc = "kn-10-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",id = 2100421,cardId = 1102005,lv = 97,bklv = 12,star = 4,mon = {id = 248,desc = "kn-10-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-10",id = 2100430,cardId = 1101014,lv = 97,bklv = 12,star = 4,mon = {id = 211,desc = "kn-10-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",id = 2100431,cardId = 1102020,lv = 97,bklv = 12,star = 4,mon = {id = 256,desc = "kn-10-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21005] = {
		[1] = {
			jlr = {cha = "kn-10",id = 2100510,cardId = 1101007,lv = 97,bklv = 12,star = 4,mon = {id = 206,desc = "kn-10-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",id = 2100511,cardId = 1102012,lv = 97,bklv = 12,star = 4,mon = {id = 246,desc = "kn-10-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-10",id = 2100520,cardId = 1101003,lv = 97,bklv = 12,star = 4,mon = {id = 203,desc = "kn-10-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",id = 2100521,cardId = 1102005,lv = 97,bklv = 12,star = 4,mon = {id = 244,desc = "kn-10-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-10",id = 2100530,cardId = 1101014,lv = 97,bklv = 12,star = 4,mon = {id = 212,desc = "kn-10-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",id = 2100531,cardId = 1102020,lv = 97,bklv = 12,star = 4,mon = {id = 257,desc = "kn-10-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21006] = {
		[1] = {
			jlr = {cha = "kn-10",id = 2100610,cardId = 1101007,lv = 98,bklv = 12,star = 4,mon = {id = 209,desc = "kn-10-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",id = 2100611,cardId = 1102012,lv = 98,bklv = 12,star = 4,mon = {id = 253,desc = "kn-10-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-10",id = 2100620,cardId = 1101003,lv = 98,bklv = 12,star = 4,mon = {id = 208,desc = "kn-10-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",id = 2100621,cardId = 1102005,lv = 98,bklv = 12,star = 4,mon = {id = 252,desc = "kn-10-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-10",id = 2100630,cardId = 1101014,lv = 98,bklv = 12,star = 4,mon = {id = 212,desc = "kn-10-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",id = 2100631,cardId = 1102020,lv = 98,bklv = 12,star = 4,mon = {id = 257,desc = "kn-10-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21007] = {
		[1] = {
			jlr = {cha = "kn-10",id = 2100710,cardId = 1101007,lv = 98,bklv = 12,star = 4,mon = {id = 207,desc = "kn-10-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",id = 2100711,cardId = 1102012,lv = 98,bklv = 12,star = 4,mon = {id = 248,desc = "kn-10-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-10",id = 2100720,cardId = 1101003,lv = 98,bklv = 12,star = 4,mon = {id = 207,desc = "kn-10-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",id = 2100721,cardId = 1102005,lv = 98,bklv = 12,star = 4,mon = {id = 242,desc = "kn-10-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-10",id = 2100730,cardId = 1101014,lv = 98,bklv = 12,star = 4,mon = {id = 211,desc = "kn-10-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",id = 2100731,cardId = 1102020,lv = 98,bklv = 12,star = 4,mon = {id = 256,desc = "kn-10-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21008] = {
		[1] = {
			jlr = {cha = "kn-10",id = 2100810,cardId = 1101007,lv = 99,bklv = 12,star = 4,mon = {id = 207,desc = "kn-10-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",id = 2100811,cardId = 1102012,lv = 99,bklv = 12,star = 4,mon = {id = 251,desc = "kn-10-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-10",id = 2100820,cardId = 1101003,lv = 99,bklv = 12,star = 4,mon = {id = 205,desc = "kn-10-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",id = 2100821,cardId = 1102005,lv = 99,bklv = 12,star = 4,mon = {id = 250,desc = "kn-10-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-10",id = 2100830,cardId = 1101014,lv = 99,bklv = 12,star = 4,mon = {id = 210,desc = "kn-10-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",id = 2100831,cardId = 1102020,lv = 99,bklv = 12,star = 4,mon = {id = 255,desc = "kn-10-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21009] = {
		[1] = {
			jlr = {cha = "kn-10",id = 2100910,cardId = 1101007,lv = 100,bklv = 13,star = 4,mon = {id = 212,desc = "kn-10-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",id = 2100911,cardId = 1102012,lv = 100,bklv = 13,star = 4,mon = {id = 257,desc = "kn-10-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-10",id = 2100920,cardId = 1101003,lv = 100,bklv = 13,star = 4,mon = {id = 208,desc = "kn-10-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",id = 2100921,cardId = 1102005,lv = 100,bklv = 13,star = 4,mon = {id = 252,desc = "kn-10-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-10",id = 2100930,cardId = 1101014,lv = 100,bklv = 13,star = 4,mon = {id = 209,desc = "kn-10-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",id = 2100931,cardId = 1102020,lv = 100,bklv = 13,star = 4,mon = {id = 253,desc = "kn-10-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21010] = {
		[1] = {
			jlr = {cha = "kn-10",id = 2101010,cardId = 1101007,lv = 100,bklv = 13,star = 4,mon = {id = 201,desc = "kn-10-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",id = 2101011,cardId = 1102012,lv = 100,bklv = 13,star = 4,mon = {id = 241,desc = "kn-10-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-10",id = 2101020,cardId = 1101003,lv = 100,bklv = 13,star = 4,mon = {id = 203,desc = "kn-10-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",id = 2101021,cardId = 1102005,lv = 100,bklv = 13,star = 4,mon = {id = 244,desc = "kn-10-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-10",id = 2101030,cardId = 1101014,lv = 100,bklv = 13,star = 4,mon = {id = 214,desc = "kn-10-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",id = 2101031,cardId = 1102020,lv = 100,bklv = 13,star = 4,mon = {id = 259,desc = "kn-10-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21011] = {
		[1] = {
			jlr = {cha = "kn-10",id = 2101110,cardId = 1101007,lv = 100,bklv = 13,star = 4,mon = {id = 212,desc = "kn-10-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",id = 2101111,cardId = 1102012,lv = 100,bklv = 13,star = 4,mon = {id = 257,desc = "kn-10-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-10",id = 2101120,cardId = 1101003,lv = 100,bklv = 13,star = 4,mon = {id = 208,desc = "kn-10-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",id = 2101121,cardId = 1102005,lv = 100,bklv = 13,star = 4,mon = {id = 252,desc = "kn-10-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-10",id = 2101130,cardId = 1101014,lv = 100,bklv = 13,star = 4,mon = {id = 209,desc = "kn-10-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",id = 2101131,cardId = 1102020,lv = 100,bklv = 13,star = 4,mon = {id = 253,desc = "kn-10-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21012] = {
		[1] = {
			jlr = {cha = "kn-10",id = 2101210,cardId = 1101007,lv = 101,bklv = 13,star = 4,mon = {id = 215,desc = "kn-10-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",id = 2101211,cardId = 1102012,lv = 101,bklv = 13,star = 4,mon = {id = 260,desc = "kn-10-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-10",id = 2101220,cardId = 1101003,lv = 101,bklv = 13,star = 4,mon = {id = 201,desc = "kn-10-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",id = 2101221,cardId = 1102005,lv = 101,bklv = 13,star = 4,mon = {id = 248,desc = "kn-10-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-10",id = 2101230,cardId = 1101014,lv = 101,bklv = 13,star = 4,mon = {id = 211,desc = "kn-10-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",id = 2101231,cardId = 1102020,lv = 101,bklv = 13,star = 4,mon = {id = 256,desc = "kn-10-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21013] = {
		[1] = {
			jlr = {cha = "kn-10",id = 2101310,cardId = 1101007,lv = 102,bklv = 13,star = 4,mon = {id = 209,desc = "kn-10-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",id = 2101311,cardId = 1102012,lv = 102,bklv = 13,star = 4,mon = {id = 253,desc = "kn-10-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-10",id = 2101320,cardId = 1101003,lv = 102,bklv = 13,star = 4,mon = {id = 208,desc = "kn-10-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",id = 2101321,cardId = 1102005,lv = 102,bklv = 13,star = 4,mon = {id = 252,desc = "kn-10-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-10",id = 2101330,cardId = 1101014,lv = 102,bklv = 13,star = 4,mon = {id = 212,desc = "kn-10-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",id = 2101331,cardId = 1102020,lv = 102,bklv = 13,star = 4,mon = {id = 257,desc = "kn-10-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21014] = {
		[1] = {
			jlr = {cha = "kn-10",id = 2101410,cardId = 1101007,lv = 103,bklv = 13,star = 4,mon = {id = 207,desc = "kn-10-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",id = 2101411,cardId = 1102012,lv = 103,bklv = 13,star = 4,mon = {id = 248,desc = "kn-10-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-10",id = 2101420,cardId = 1101005,lv = 103,bklv = 13,star = 4,mon = {id = 207,desc = "kn-10-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",id = 2101421,cardId = 1102011,lv = 103,bklv = 13,star = 4,mon = {id = 242,desc = "kn-10-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-10",id = 2101430,cardId = 1101003,lv = 103,bklv = 13,star = 4,mon = {id = 211,desc = "kn-10-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",id = 2101431,cardId = 1102005,lv = 103,bklv = 13,star = 4,mon = {id = 256,desc = "kn-10-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21015] = {
		[1] = {
			jlr = {cha = "kn-10",id = 2101510,cardId = 1101007,lv = 104,bklv = 13,star = 4,mon = {id = 205,desc = "kn-10-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",id = 2101511,cardId = 1102012,lv = 104,bklv = 13,star = 4,mon = {id = 240,desc = "kn-10-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-10",id = 2101520,cardId = 1101005,lv = 104,bklv = 13,star = 4,mon = {id = 204,desc = "kn-10-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",id = 2101521,cardId = 1102011,lv = 104,bklv = 13,star = 4,mon = {id = 245,desc = "kn-10-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-10",id = 2101530,cardId = 1101010,lv = 104,bklv = 13,star = 4,mon = {id = 207,desc = "kn-10-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-10",id = 2101531,cardId = 1102016,lv = 104,bklv = 13,star = 4,mon = {id = 249,desc = "kn-10-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21101] = {
		[1] = {
			jlr = {cha = "kn-11",id = 2110110,cardId = 1101007,lv = 105,bklv = 14,star = 4,mon = {id = 212,desc = "kn-11-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",id = 2110111,cardId = 1102012,lv = 105,bklv = 14,star = 4,mon = {id = 257,desc = "kn-11-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-11",id = 2110120,cardId = 1101003,lv = 105,bklv = 14,star = 4,mon = {id = 208,desc = "kn-11-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",id = 2110121,cardId = 1102005,lv = 105,bklv = 14,star = 4,mon = {id = 252,desc = "kn-11-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-11",id = 2110130,cardId = 1101014,lv = 105,bklv = 14,star = 4,mon = {id = 213,desc = "kn-11-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",id = 2110131,cardId = 1102020,lv = 105,bklv = 14,star = 4,mon = {id = 258,desc = "kn-11-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21102] = {
		[1] = {
			jlr = {cha = "kn-11",id = 2110210,cardId = 1101007,lv = 106,bklv = 14,star = 4,mon = {id = 201,desc = "kn-11-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",id = 2110211,cardId = 1102012,lv = 106,bklv = 14,star = 4,mon = {id = 241,desc = "kn-11-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-11",id = 2110220,cardId = 1101003,lv = 106,bklv = 14,star = 4,mon = {id = 203,desc = "kn-11-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",id = 2110221,cardId = 1102005,lv = 106,bklv = 14,star = 4,mon = {id = 244,desc = "kn-11-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-11",id = 2110230,cardId = 1101014,lv = 106,bklv = 14,star = 4,mon = {id = 214,desc = "kn-11-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",id = 2110231,cardId = 1102020,lv = 106,bklv = 14,star = 4,mon = {id = 259,desc = "kn-11-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21103] = {
		[1] = {
			jlr = {cha = "kn-11",id = 2110310,cardId = 1101007,lv = 106,bklv = 14,star = 4,mon = {id = 212,desc = "kn-11-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",id = 2110311,cardId = 1102012,lv = 106,bklv = 14,star = 4,mon = {id = 257,desc = "kn-11-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-11",id = 2110320,cardId = 1101003,lv = 106,bklv = 14,star = 4,mon = {id = 208,desc = "kn-11-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",id = 2110321,cardId = 1102005,lv = 106,bklv = 14,star = 4,mon = {id = 252,desc = "kn-11-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-11",id = 2110330,cardId = 1101014,lv = 106,bklv = 14,star = 4,mon = {id = 209,desc = "kn-11-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",id = 2110331,cardId = 1102020,lv = 106,bklv = 14,star = 4,mon = {id = 253,desc = "kn-11-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21104] = {
		[1] = {
			jlr = {cha = "kn-11",id = 2110410,cardId = 1101007,lv = 107,bklv = 14,star = 4,mon = {id = 215,desc = "kn-11-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",id = 2110411,cardId = 1102012,lv = 107,bklv = 14,star = 4,mon = {id = 260,desc = "kn-11-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-11",id = 2110420,cardId = 1101003,lv = 107,bklv = 14,star = 4,mon = {id = 201,desc = "kn-11-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",id = 2110421,cardId = 1102005,lv = 107,bklv = 14,star = 4,mon = {id = 248,desc = "kn-11-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-11",id = 2110430,cardId = 1101014,lv = 107,bklv = 14,star = 4,mon = {id = 211,desc = "kn-11-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",id = 2110431,cardId = 1102020,lv = 107,bklv = 14,star = 4,mon = {id = 256,desc = "kn-11-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21105] = {
		[1] = {
			jlr = {cha = "kn-11",id = 2110510,cardId = 1101007,lv = 107,bklv = 14,star = 4,mon = {id = 206,desc = "kn-11-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",id = 2110511,cardId = 1102012,lv = 107,bklv = 14,star = 4,mon = {id = 246,desc = "kn-11-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-11",id = 2110520,cardId = 1101003,lv = 107,bklv = 14,star = 4,mon = {id = 203,desc = "kn-11-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",id = 2110521,cardId = 1102005,lv = 107,bklv = 14,star = 4,mon = {id = 244,desc = "kn-11-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-11",id = 2110530,cardId = 1101014,lv = 107,bklv = 14,star = 4,mon = {id = 212,desc = "kn-11-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",id = 2110531,cardId = 1102020,lv = 107,bklv = 14,star = 4,mon = {id = 257,desc = "kn-11-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21106] = {
		[1] = {
			jlr = {cha = "kn-11",id = 2110610,cardId = 1101007,lv = 108,bklv = 14,star = 4,mon = {id = 209,desc = "kn-11-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",id = 2110611,cardId = 1102012,lv = 108,bklv = 14,star = 4,mon = {id = 253,desc = "kn-11-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-11",id = 2110620,cardId = 1101003,lv = 108,bklv = 14,star = 4,mon = {id = 208,desc = "kn-11-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",id = 2110621,cardId = 1102005,lv = 108,bklv = 14,star = 4,mon = {id = 252,desc = "kn-11-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-11",id = 2110630,cardId = 1101014,lv = 108,bklv = 14,star = 4,mon = {id = 212,desc = "kn-11-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",id = 2110631,cardId = 1102020,lv = 108,bklv = 14,star = 4,mon = {id = 257,desc = "kn-11-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21107] = {
		[1] = {
			jlr = {cha = "kn-11",id = 2110710,cardId = 1101007,lv = 108,bklv = 14,star = 4,mon = {id = 207,desc = "kn-11-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",id = 2110711,cardId = 1102012,lv = 108,bklv = 14,star = 4,mon = {id = 248,desc = "kn-11-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-11",id = 2110720,cardId = 1101003,lv = 108,bklv = 14,star = 4,mon = {id = 207,desc = "kn-11-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",id = 2110721,cardId = 1102005,lv = 108,bklv = 14,star = 4,mon = {id = 242,desc = "kn-11-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-11",id = 2110730,cardId = 1101014,lv = 108,bklv = 14,star = 4,mon = {id = 211,desc = "kn-11-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",id = 2110731,cardId = 1102020,lv = 108,bklv = 14,star = 4,mon = {id = 256,desc = "kn-11-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21108] = {
		[1] = {
			jlr = {cha = "kn-11",id = 2110810,cardId = 1101007,lv = 109,bklv = 14,star = 4,mon = {id = 207,desc = "kn-11-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",id = 2110811,cardId = 1102012,lv = 109,bklv = 14,star = 4,mon = {id = 251,desc = "kn-11-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-11",id = 2110820,cardId = 1101003,lv = 109,bklv = 14,star = 4,mon = {id = 205,desc = "kn-11-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",id = 2110821,cardId = 1102005,lv = 109,bklv = 14,star = 4,mon = {id = 250,desc = "kn-11-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-11",id = 2110830,cardId = 1101014,lv = 109,bklv = 14,star = 4,mon = {id = 210,desc = "kn-11-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",id = 2110831,cardId = 1102020,lv = 109,bklv = 14,star = 4,mon = {id = 255,desc = "kn-11-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21109] = {
		[1] = {
			jlr = {cha = "kn-11",id = 2110910,cardId = 1101007,lv = 110,bklv = 15,star = 4,mon = {id = 212,desc = "kn-11-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",id = 2110911,cardId = 1102012,lv = 110,bklv = 15,star = 4,mon = {id = 257,desc = "kn-11-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-11",id = 2110920,cardId = 1101003,lv = 110,bklv = 15,star = 4,mon = {id = 208,desc = "kn-11-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",id = 2110921,cardId = 1102005,lv = 110,bklv = 15,star = 4,mon = {id = 252,desc = "kn-11-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-11",id = 2110930,cardId = 1101014,lv = 110,bklv = 15,star = 4,mon = {id = 209,desc = "kn-11-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",id = 2110931,cardId = 1102020,lv = 110,bklv = 15,star = 4,mon = {id = 253,desc = "kn-11-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21110] = {
		[1] = {
			jlr = {cha = "kn-11",id = 2111010,cardId = 1101007,lv = 110,bklv = 15,star = 4,mon = {id = 201,desc = "kn-11-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",id = 2111011,cardId = 1102012,lv = 110,bklv = 15,star = 4,mon = {id = 241,desc = "kn-11-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-11",id = 2111020,cardId = 1101003,lv = 110,bklv = 15,star = 4,mon = {id = 203,desc = "kn-11-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",id = 2111021,cardId = 1102005,lv = 110,bklv = 15,star = 4,mon = {id = 244,desc = "kn-11-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-11",id = 2111030,cardId = 1101014,lv = 110,bklv = 15,star = 4,mon = {id = 214,desc = "kn-11-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",id = 2111031,cardId = 1102020,lv = 110,bklv = 15,star = 4,mon = {id = 259,desc = "kn-11-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21111] = {
		[1] = {
			jlr = {cha = "kn-11",id = 2111110,cardId = 1101007,lv = 110,bklv = 15,star = 4,mon = {id = 212,desc = "kn-11-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",id = 2111111,cardId = 1102012,lv = 110,bklv = 15,star = 4,mon = {id = 257,desc = "kn-11-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-11",id = 2111120,cardId = 1101003,lv = 110,bklv = 15,star = 4,mon = {id = 208,desc = "kn-11-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",id = 2111121,cardId = 1102005,lv = 110,bklv = 15,star = 4,mon = {id = 252,desc = "kn-11-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-11",id = 2111130,cardId = 1101014,lv = 110,bklv = 15,star = 4,mon = {id = 209,desc = "kn-11-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",id = 2111131,cardId = 1102020,lv = 110,bklv = 15,star = 4,mon = {id = 253,desc = "kn-11-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21112] = {
		[1] = {
			jlr = {cha = "kn-11",id = 2111210,cardId = 1101007,lv = 111,bklv = 15,star = 4,mon = {id = 215,desc = "kn-11-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",id = 2111211,cardId = 1102012,lv = 111,bklv = 15,star = 4,mon = {id = 260,desc = "kn-11-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-11",id = 2111220,cardId = 1101003,lv = 111,bklv = 15,star = 4,mon = {id = 201,desc = "kn-11-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",id = 2111221,cardId = 1102005,lv = 111,bklv = 15,star = 4,mon = {id = 248,desc = "kn-11-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-11",id = 2111230,cardId = 1101014,lv = 111,bklv = 15,star = 4,mon = {id = 211,desc = "kn-11-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",id = 2111231,cardId = 1102020,lv = 111,bklv = 15,star = 4,mon = {id = 256,desc = "kn-11-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21113] = {
		[1] = {
			jlr = {cha = "kn-11",id = 2111310,cardId = 1101007,lv = 112,bklv = 15,star = 4,mon = {id = 209,desc = "kn-11-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",id = 2111311,cardId = 1102012,lv = 112,bklv = 15,star = 4,mon = {id = 253,desc = "kn-11-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-11",id = 2111320,cardId = 1101003,lv = 112,bklv = 15,star = 4,mon = {id = 208,desc = "kn-11-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",id = 2111321,cardId = 1102005,lv = 112,bklv = 15,star = 4,mon = {id = 252,desc = "kn-11-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-11",id = 2111330,cardId = 1101014,lv = 112,bklv = 15,star = 4,mon = {id = 212,desc = "kn-11-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",id = 2111331,cardId = 1102020,lv = 112,bklv = 15,star = 4,mon = {id = 257,desc = "kn-11-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21114] = {
		[1] = {
			jlr = {cha = "kn-11",id = 2111410,cardId = 1101007,lv = 113,bklv = 15,star = 4,mon = {id = 207,desc = "kn-11-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",id = 2111411,cardId = 1102012,lv = 113,bklv = 15,star = 4,mon = {id = 248,desc = "kn-11-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-11",id = 2111420,cardId = 1101005,lv = 113,bklv = 15,star = 4,mon = {id = 207,desc = "kn-11-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",id = 2111421,cardId = 1102011,lv = 113,bklv = 15,star = 4,mon = {id = 242,desc = "kn-11-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-11",id = 2111430,cardId = 1101003,lv = 113,bklv = 15,star = 4,mon = {id = 211,desc = "kn-11-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",id = 2111431,cardId = 1102005,lv = 113,bklv = 15,star = 4,mon = {id = 256,desc = "kn-11-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21115] = {
		[1] = {
			jlr = {cha = "kn-11",id = 2111510,cardId = 1101007,lv = 114,bklv = 15,star = 4,mon = {id = 205,desc = "kn-11-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",id = 2111511,cardId = 1102012,lv = 114,bklv = 15,star = 4,mon = {id = 240,desc = "kn-11-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-11",id = 2111520,cardId = 1101005,lv = 114,bklv = 15,star = 4,mon = {id = 204,desc = "kn-11-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",id = 2111521,cardId = 1102011,lv = 114,bklv = 15,star = 4,mon = {id = 245,desc = "kn-11-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-11",id = 2111530,cardId = 1101010,lv = 114,bklv = 15,star = 4,mon = {id = 207,desc = "kn-11-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-11",id = 2111531,cardId = 1102016,lv = 114,bklv = 15,star = 4,mon = {id = 249,desc = "kn-11-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21201] = {
		[1] = {
			jlr = {cha = "kn-12",id = 2120110,cardId = 1101007,lv = 115,bklv = 16,star = 4,mon = {id = 212,desc = "kn-12-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",id = 2120111,cardId = 1102012,lv = 115,bklv = 16,star = 4,mon = {id = 257,desc = "kn-12-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-12",id = 2120120,cardId = 1101003,lv = 115,bklv = 16,star = 4,mon = {id = 208,desc = "kn-12-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",id = 2120121,cardId = 1102005,lv = 115,bklv = 16,star = 4,mon = {id = 252,desc = "kn-12-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-12",id = 2120130,cardId = 1101014,lv = 115,bklv = 16,star = 4,mon = {id = 213,desc = "kn-12-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",id = 2120131,cardId = 1102020,lv = 115,bklv = 16,star = 4,mon = {id = 258,desc = "kn-12-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21202] = {
		[1] = {
			jlr = {cha = "kn-12",id = 2120210,cardId = 1101007,lv = 116,bklv = 16,star = 4,mon = {id = 201,desc = "kn-12-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",id = 2120211,cardId = 1102012,lv = 116,bklv = 16,star = 4,mon = {id = 241,desc = "kn-12-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-12",id = 2120220,cardId = 1101003,lv = 116,bklv = 16,star = 4,mon = {id = 203,desc = "kn-12-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",id = 2120221,cardId = 1102005,lv = 116,bklv = 16,star = 4,mon = {id = 244,desc = "kn-12-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-12",id = 2120230,cardId = 1101014,lv = 116,bklv = 16,star = 4,mon = {id = 214,desc = "kn-12-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",id = 2120231,cardId = 1102020,lv = 116,bklv = 16,star = 4,mon = {id = 259,desc = "kn-12-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21203] = {
		[1] = {
			jlr = {cha = "kn-12",id = 2120310,cardId = 1101007,lv = 116,bklv = 16,star = 4,mon = {id = 212,desc = "kn-12-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",id = 2120311,cardId = 1102012,lv = 116,bklv = 16,star = 4,mon = {id = 257,desc = "kn-12-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-12",id = 2120320,cardId = 1101003,lv = 116,bklv = 16,star = 4,mon = {id = 208,desc = "kn-12-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",id = 2120321,cardId = 1102005,lv = 116,bklv = 16,star = 4,mon = {id = 252,desc = "kn-12-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-12",id = 2120330,cardId = 1101014,lv = 116,bklv = 16,star = 4,mon = {id = 209,desc = "kn-12-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",id = 2120331,cardId = 1102020,lv = 116,bklv = 16,star = 4,mon = {id = 253,desc = "kn-12-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21204] = {
		[1] = {
			jlr = {cha = "kn-12",id = 2120410,cardId = 1101007,lv = 117,bklv = 16,star = 4,mon = {id = 215,desc = "kn-12-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",id = 2120411,cardId = 1102012,lv = 117,bklv = 16,star = 4,mon = {id = 260,desc = "kn-12-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-12",id = 2120420,cardId = 1101003,lv = 117,bklv = 16,star = 4,mon = {id = 201,desc = "kn-12-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",id = 2120421,cardId = 1102005,lv = 117,bklv = 16,star = 4,mon = {id = 248,desc = "kn-12-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-12",id = 2120430,cardId = 1101014,lv = 117,bklv = 16,star = 4,mon = {id = 211,desc = "kn-12-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",id = 2120431,cardId = 1102020,lv = 117,bklv = 16,star = 4,mon = {id = 256,desc = "kn-12-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21205] = {
		[1] = {
			jlr = {cha = "kn-12",id = 2120510,cardId = 1101007,lv = 117,bklv = 16,star = 4,mon = {id = 206,desc = "kn-12-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",id = 2120511,cardId = 1102012,lv = 117,bklv = 16,star = 4,mon = {id = 246,desc = "kn-12-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-12",id = 2120520,cardId = 1101003,lv = 117,bklv = 16,star = 4,mon = {id = 203,desc = "kn-12-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",id = 2120521,cardId = 1102005,lv = 117,bklv = 16,star = 4,mon = {id = 244,desc = "kn-12-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-12",id = 2120530,cardId = 1101014,lv = 117,bklv = 16,star = 4,mon = {id = 212,desc = "kn-12-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",id = 2120531,cardId = 1102020,lv = 117,bklv = 16,star = 4,mon = {id = 257,desc = "kn-12-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21206] = {
		[1] = {
			jlr = {cha = "kn-12",id = 2120610,cardId = 1101007,lv = 118,bklv = 16,star = 4,mon = {id = 209,desc = "kn-12-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",id = 2120611,cardId = 1102012,lv = 118,bklv = 16,star = 4,mon = {id = 253,desc = "kn-12-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-12",id = 2120620,cardId = 1101003,lv = 118,bklv = 16,star = 4,mon = {id = 208,desc = "kn-12-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",id = 2120621,cardId = 1102005,lv = 118,bklv = 16,star = 4,mon = {id = 252,desc = "kn-12-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-12",id = 2120630,cardId = 1101014,lv = 118,bklv = 16,star = 4,mon = {id = 212,desc = "kn-12-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",id = 2120631,cardId = 1102020,lv = 118,bklv = 16,star = 4,mon = {id = 257,desc = "kn-12-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21207] = {
		[1] = {
			jlr = {cha = "kn-12",id = 2120710,cardId = 1101007,lv = 118,bklv = 16,star = 4,mon = {id = 207,desc = "kn-12-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",id = 2120711,cardId = 1102012,lv = 118,bklv = 16,star = 4,mon = {id = 248,desc = "kn-12-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-12",id = 2120720,cardId = 1101003,lv = 118,bklv = 16,star = 4,mon = {id = 207,desc = "kn-12-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",id = 2120721,cardId = 1102005,lv = 118,bklv = 16,star = 4,mon = {id = 242,desc = "kn-12-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-12",id = 2120730,cardId = 1101014,lv = 118,bklv = 16,star = 4,mon = {id = 211,desc = "kn-12-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",id = 2120731,cardId = 1102020,lv = 118,bklv = 16,star = 4,mon = {id = 256,desc = "kn-12-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21208] = {
		[1] = {
			jlr = {cha = "kn-12",id = 2120810,cardId = 1101007,lv = 119,bklv = 16,star = 4,mon = {id = 207,desc = "kn-12-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",id = 2120811,cardId = 1102012,lv = 119,bklv = 16,star = 4,mon = {id = 251,desc = "kn-12-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-12",id = 2120820,cardId = 1101003,lv = 119,bklv = 16,star = 4,mon = {id = 205,desc = "kn-12-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",id = 2120821,cardId = 1102005,lv = 119,bklv = 16,star = 4,mon = {id = 250,desc = "kn-12-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-12",id = 2120830,cardId = 1101014,lv = 119,bklv = 16,star = 4,mon = {id = 210,desc = "kn-12-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",id = 2120831,cardId = 1102020,lv = 119,bklv = 16,star = 4,mon = {id = 255,desc = "kn-12-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21209] = {
		[1] = {
			jlr = {cha = "kn-12",id = 2120910,cardId = 1101007,lv = 120,bklv = 17,star = 4,mon = {id = 212,desc = "kn-12-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",id = 2120911,cardId = 1102012,lv = 120,bklv = 17,star = 4,mon = {id = 257,desc = "kn-12-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-12",id = 2120920,cardId = 1101003,lv = 120,bklv = 17,star = 4,mon = {id = 208,desc = "kn-12-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",id = 2120921,cardId = 1102005,lv = 120,bklv = 17,star = 4,mon = {id = 252,desc = "kn-12-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-12",id = 2120930,cardId = 1101014,lv = 120,bklv = 17,star = 4,mon = {id = 209,desc = "kn-12-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",id = 2120931,cardId = 1102020,lv = 120,bklv = 17,star = 4,mon = {id = 253,desc = "kn-12-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21210] = {
		[1] = {
			jlr = {cha = "kn-12",id = 2121010,cardId = 1101007,lv = 120,bklv = 17,star = 4,mon = {id = 201,desc = "kn-12-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",id = 2121011,cardId = 1102012,lv = 120,bklv = 17,star = 4,mon = {id = 241,desc = "kn-12-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-12",id = 2121020,cardId = 1101003,lv = 120,bklv = 17,star = 4,mon = {id = 203,desc = "kn-12-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",id = 2121021,cardId = 1102005,lv = 120,bklv = 17,star = 4,mon = {id = 244,desc = "kn-12-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-12",id = 2121030,cardId = 1101014,lv = 120,bklv = 17,star = 4,mon = {id = 214,desc = "kn-12-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",id = 2121031,cardId = 1102020,lv = 120,bklv = 17,star = 4,mon = {id = 259,desc = "kn-12-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21211] = {
		[1] = {
			jlr = {cha = "kn-12",id = 2121110,cardId = 1101007,lv = 120,bklv = 17,star = 4,mon = {id = 212,desc = "kn-12-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",id = 2121111,cardId = 1102012,lv = 120,bklv = 17,star = 4,mon = {id = 257,desc = "kn-12-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-12",id = 2121120,cardId = 1101003,lv = 120,bklv = 17,star = 4,mon = {id = 208,desc = "kn-12-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",id = 2121121,cardId = 1102005,lv = 120,bklv = 17,star = 4,mon = {id = 252,desc = "kn-12-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-12",id = 2121130,cardId = 1101014,lv = 120,bklv = 17,star = 4,mon = {id = 209,desc = "kn-12-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",id = 2121131,cardId = 1102020,lv = 120,bklv = 17,star = 4,mon = {id = 253,desc = "kn-12-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21212] = {
		[1] = {
			jlr = {cha = "kn-12",id = 2121210,cardId = 1101007,lv = 121,bklv = 17,star = 4,mon = {id = 215,desc = "kn-12-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",id = 2121211,cardId = 1102012,lv = 121,bklv = 17,star = 4,mon = {id = 260,desc = "kn-12-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-12",id = 2121220,cardId = 1101003,lv = 121,bklv = 17,star = 4,mon = {id = 201,desc = "kn-12-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",id = 2121221,cardId = 1102005,lv = 121,bklv = 17,star = 4,mon = {id = 248,desc = "kn-12-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-12",id = 2121230,cardId = 1101014,lv = 121,bklv = 17,star = 4,mon = {id = 211,desc = "kn-12-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",id = 2121231,cardId = 1102020,lv = 121,bklv = 17,star = 4,mon = {id = 256,desc = "kn-12-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21213] = {
		[1] = {
			jlr = {cha = "kn-12",id = 2121310,cardId = 1101007,lv = 122,bklv = 17,star = 4,mon = {id = 209,desc = "kn-12-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",id = 2121311,cardId = 1102012,lv = 122,bklv = 17,star = 4,mon = {id = 253,desc = "kn-12-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-12",id = 2121320,cardId = 1101003,lv = 122,bklv = 17,star = 4,mon = {id = 208,desc = "kn-12-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",id = 2121321,cardId = 1102005,lv = 122,bklv = 17,star = 4,mon = {id = 252,desc = "kn-12-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-12",id = 2121330,cardId = 1101014,lv = 122,bklv = 17,star = 4,mon = {id = 212,desc = "kn-12-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",id = 2121331,cardId = 1102020,lv = 122,bklv = 17,star = 4,mon = {id = 257,desc = "kn-12-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21214] = {
		[1] = {
			jlr = {cha = "kn-12",id = 2121410,cardId = 1101007,lv = 123,bklv = 17,star = 4,mon = {id = 207,desc = "kn-12-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",id = 2121411,cardId = 1102012,lv = 123,bklv = 17,star = 4,mon = {id = 248,desc = "kn-12-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-12",id = 2121420,cardId = 1101005,lv = 123,bklv = 17,star = 4,mon = {id = 207,desc = "kn-12-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",id = 2121421,cardId = 1102011,lv = 123,bklv = 17,star = 4,mon = {id = 242,desc = "kn-12-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-12",id = 2121430,cardId = 1101003,lv = 123,bklv = 17,star = 4,mon = {id = 211,desc = "kn-12-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",id = 2121431,cardId = 1102005,lv = 123,bklv = 17,star = 4,mon = {id = 256,desc = "kn-12-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21215] = {
		[1] = {
			jlr = {cha = "kn-12",id = 2121510,cardId = 1101007,lv = 124,bklv = 17,star = 4,mon = {id = 205,desc = "kn-12-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",id = 2121511,cardId = 1102012,lv = 124,bklv = 17,star = 4,mon = {id = 240,desc = "kn-12-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-12",id = 2121520,cardId = 1101005,lv = 124,bklv = 17,star = 4,mon = {id = 204,desc = "kn-12-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",id = 2121521,cardId = 1102011,lv = 124,bklv = 17,star = 4,mon = {id = 245,desc = "kn-12-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-12",id = 2121530,cardId = 1101010,lv = 124,bklv = 17,star = 4,mon = {id = 207,desc = "kn-12-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-12",id = 2121531,cardId = 1102016,lv = 124,bklv = 17,star = 4,mon = {id = 249,desc = "kn-12-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21301] = {
		[1] = {
			jlr = {cha = "kn-13",id = 2130110,cardId = 1101007,lv = 125,bklv = 18,star = 5,mon = {id = 212,desc = "kn-13-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",id = 2130111,cardId = 1102012,lv = 125,bklv = 18,star = 5,mon = {id = 257,desc = "kn-13-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-13",id = 2130120,cardId = 1101003,lv = 125,bklv = 18,star = 5,mon = {id = 208,desc = "kn-13-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",id = 2130121,cardId = 1102005,lv = 125,bklv = 18,star = 5,mon = {id = 252,desc = "kn-13-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-13",id = 2130130,cardId = 1101014,lv = 125,bklv = 18,star = 5,mon = {id = 213,desc = "kn-13-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",id = 2130131,cardId = 1102020,lv = 125,bklv = 18,star = 5,mon = {id = 258,desc = "kn-13-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21302] = {
		[1] = {
			jlr = {cha = "kn-13",id = 2130210,cardId = 1101007,lv = 126,bklv = 18,star = 5,mon = {id = 201,desc = "kn-13-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",id = 2130211,cardId = 1102012,lv = 126,bklv = 18,star = 5,mon = {id = 241,desc = "kn-13-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-13",id = 2130220,cardId = 1101003,lv = 126,bklv = 18,star = 5,mon = {id = 203,desc = "kn-13-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",id = 2130221,cardId = 1102005,lv = 126,bklv = 18,star = 5,mon = {id = 244,desc = "kn-13-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-13",id = 2130230,cardId = 1101014,lv = 126,bklv = 18,star = 5,mon = {id = 214,desc = "kn-13-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",id = 2130231,cardId = 1102020,lv = 126,bklv = 18,star = 5,mon = {id = 259,desc = "kn-13-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21303] = {
		[1] = {
			jlr = {cha = "kn-13",id = 2130310,cardId = 1101007,lv = 126,bklv = 18,star = 5,mon = {id = 212,desc = "kn-13-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",id = 2130311,cardId = 1102012,lv = 126,bklv = 18,star = 5,mon = {id = 257,desc = "kn-13-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-13",id = 2130320,cardId = 1101003,lv = 126,bklv = 18,star = 5,mon = {id = 208,desc = "kn-13-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",id = 2130321,cardId = 1102005,lv = 126,bklv = 18,star = 5,mon = {id = 252,desc = "kn-13-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-13",id = 2130330,cardId = 1101014,lv = 126,bklv = 18,star = 5,mon = {id = 209,desc = "kn-13-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",id = 2130331,cardId = 1102020,lv = 126,bklv = 18,star = 5,mon = {id = 253,desc = "kn-13-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21304] = {
		[1] = {
			jlr = {cha = "kn-13",id = 2130410,cardId = 1101007,lv = 127,bklv = 18,star = 5,mon = {id = 215,desc = "kn-13-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",id = 2130411,cardId = 1102012,lv = 127,bklv = 18,star = 5,mon = {id = 260,desc = "kn-13-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-13",id = 2130420,cardId = 1101003,lv = 127,bklv = 18,star = 5,mon = {id = 201,desc = "kn-13-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",id = 2130421,cardId = 1102005,lv = 127,bklv = 18,star = 5,mon = {id = 248,desc = "kn-13-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-13",id = 2130430,cardId = 1101014,lv = 127,bklv = 18,star = 5,mon = {id = 211,desc = "kn-13-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",id = 2130431,cardId = 1102020,lv = 127,bklv = 18,star = 5,mon = {id = 256,desc = "kn-13-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21305] = {
		[1] = {
			jlr = {cha = "kn-13",id = 2130510,cardId = 1101007,lv = 127,bklv = 18,star = 5,mon = {id = 206,desc = "kn-13-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",id = 2130511,cardId = 1102012,lv = 127,bklv = 18,star = 5,mon = {id = 246,desc = "kn-13-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-13",id = 2130520,cardId = 1101003,lv = 127,bklv = 18,star = 5,mon = {id = 203,desc = "kn-13-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",id = 2130521,cardId = 1102005,lv = 127,bklv = 18,star = 5,mon = {id = 244,desc = "kn-13-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-13",id = 2130530,cardId = 1101014,lv = 127,bklv = 18,star = 5,mon = {id = 212,desc = "kn-13-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",id = 2130531,cardId = 1102020,lv = 127,bklv = 18,star = 5,mon = {id = 257,desc = "kn-13-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21306] = {
		[1] = {
			jlr = {cha = "kn-13",id = 2130610,cardId = 1101007,lv = 128,bklv = 18,star = 5,mon = {id = 209,desc = "kn-13-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",id = 2130611,cardId = 1102012,lv = 128,bklv = 18,star = 5,mon = {id = 253,desc = "kn-13-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-13",id = 2130620,cardId = 1101003,lv = 128,bklv = 18,star = 5,mon = {id = 208,desc = "kn-13-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",id = 2130621,cardId = 1102005,lv = 128,bklv = 18,star = 5,mon = {id = 252,desc = "kn-13-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-13",id = 2130630,cardId = 1101014,lv = 128,bklv = 18,star = 5,mon = {id = 212,desc = "kn-13-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",id = 2130631,cardId = 1102020,lv = 128,bklv = 18,star = 5,mon = {id = 257,desc = "kn-13-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21307] = {
		[1] = {
			jlr = {cha = "kn-13",id = 2130710,cardId = 1101007,lv = 128,bklv = 18,star = 5,mon = {id = 207,desc = "kn-13-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",id = 2130711,cardId = 1102012,lv = 128,bklv = 18,star = 5,mon = {id = 248,desc = "kn-13-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-13",id = 2130720,cardId = 1101003,lv = 128,bklv = 18,star = 5,mon = {id = 207,desc = "kn-13-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",id = 2130721,cardId = 1102005,lv = 128,bklv = 18,star = 5,mon = {id = 242,desc = "kn-13-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-13",id = 2130730,cardId = 1101014,lv = 128,bklv = 18,star = 5,mon = {id = 211,desc = "kn-13-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",id = 2130731,cardId = 1102020,lv = 128,bklv = 18,star = 5,mon = {id = 256,desc = "kn-13-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21308] = {
		[1] = {
			jlr = {cha = "kn-13",id = 2130810,cardId = 1101007,lv = 129,bklv = 18,star = 5,mon = {id = 207,desc = "kn-13-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",id = 2130811,cardId = 1102012,lv = 129,bklv = 18,star = 5,mon = {id = 251,desc = "kn-13-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-13",id = 2130820,cardId = 1101003,lv = 129,bklv = 18,star = 5,mon = {id = 205,desc = "kn-13-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",id = 2130821,cardId = 1102005,lv = 129,bklv = 18,star = 5,mon = {id = 250,desc = "kn-13-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-13",id = 2130830,cardId = 1101014,lv = 129,bklv = 18,star = 5,mon = {id = 210,desc = "kn-13-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",id = 2130831,cardId = 1102020,lv = 129,bklv = 18,star = 5,mon = {id = 255,desc = "kn-13-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21309] = {
		[1] = {
			jlr = {cha = "kn-13",id = 2130910,cardId = 1101007,lv = 130,bklv = 19,star = 5,mon = {id = 212,desc = "kn-13-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",id = 2130911,cardId = 1102012,lv = 130,bklv = 19,star = 5,mon = {id = 257,desc = "kn-13-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-13",id = 2130920,cardId = 1101003,lv = 130,bklv = 19,star = 5,mon = {id = 208,desc = "kn-13-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",id = 2130921,cardId = 1102005,lv = 130,bklv = 19,star = 5,mon = {id = 252,desc = "kn-13-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-13",id = 2130930,cardId = 1101014,lv = 130,bklv = 19,star = 5,mon = {id = 209,desc = "kn-13-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",id = 2130931,cardId = 1102020,lv = 130,bklv = 19,star = 5,mon = {id = 253,desc = "kn-13-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21310] = {
		[1] = {
			jlr = {cha = "kn-13",id = 2131010,cardId = 1101007,lv = 130,bklv = 19,star = 5,mon = {id = 201,desc = "kn-13-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",id = 2131011,cardId = 1102012,lv = 130,bklv = 19,star = 5,mon = {id = 241,desc = "kn-13-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-13",id = 2131020,cardId = 1101003,lv = 130,bklv = 19,star = 5,mon = {id = 203,desc = "kn-13-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",id = 2131021,cardId = 1102005,lv = 130,bklv = 19,star = 5,mon = {id = 244,desc = "kn-13-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-13",id = 2131030,cardId = 1101014,lv = 130,bklv = 19,star = 5,mon = {id = 214,desc = "kn-13-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",id = 2131031,cardId = 1102020,lv = 130,bklv = 19,star = 5,mon = {id = 259,desc = "kn-13-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21311] = {
		[1] = {
			jlr = {cha = "kn-13",id = 2131110,cardId = 1101007,lv = 130,bklv = 19,star = 5,mon = {id = 212,desc = "kn-13-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",id = 2131111,cardId = 1102012,lv = 130,bklv = 19,star = 5,mon = {id = 257,desc = "kn-13-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-13",id = 2131120,cardId = 1101003,lv = 130,bklv = 19,star = 5,mon = {id = 208,desc = "kn-13-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",id = 2131121,cardId = 1102005,lv = 130,bklv = 19,star = 5,mon = {id = 252,desc = "kn-13-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-13",id = 2131130,cardId = 1101014,lv = 130,bklv = 19,star = 5,mon = {id = 209,desc = "kn-13-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",id = 2131131,cardId = 1102020,lv = 130,bklv = 19,star = 5,mon = {id = 253,desc = "kn-13-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21312] = {
		[1] = {
			jlr = {cha = "kn-13",id = 2131210,cardId = 1101007,lv = 131,bklv = 19,star = 5,mon = {id = 215,desc = "kn-13-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",id = 2131211,cardId = 1102012,lv = 131,bklv = 19,star = 5,mon = {id = 260,desc = "kn-13-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-13",id = 2131220,cardId = 1101003,lv = 131,bklv = 19,star = 5,mon = {id = 201,desc = "kn-13-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",id = 2131221,cardId = 1102005,lv = 131,bklv = 19,star = 5,mon = {id = 248,desc = "kn-13-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-13",id = 2131230,cardId = 1101014,lv = 131,bklv = 19,star = 5,mon = {id = 211,desc = "kn-13-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",id = 2131231,cardId = 1102020,lv = 131,bklv = 19,star = 5,mon = {id = 256,desc = "kn-13-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21313] = {
		[1] = {
			jlr = {cha = "kn-13",id = 2131310,cardId = 1101007,lv = 132,bklv = 19,star = 5,mon = {id = 209,desc = "kn-13-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",id = 2131311,cardId = 1102012,lv = 132,bklv = 19,star = 5,mon = {id = 253,desc = "kn-13-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-13",id = 2131320,cardId = 1101003,lv = 132,bklv = 19,star = 5,mon = {id = 208,desc = "kn-13-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",id = 2131321,cardId = 1102005,lv = 132,bklv = 19,star = 5,mon = {id = 252,desc = "kn-13-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-13",id = 2131330,cardId = 1101014,lv = 132,bklv = 19,star = 5,mon = {id = 212,desc = "kn-13-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",id = 2131331,cardId = 1102020,lv = 132,bklv = 19,star = 5,mon = {id = 257,desc = "kn-13-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21314] = {
		[1] = {
			jlr = {cha = "kn-13",id = 2131410,cardId = 1101007,lv = 133,bklv = 19,star = 5,mon = {id = 207,desc = "kn-13-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",id = 2131411,cardId = 1102012,lv = 133,bklv = 19,star = 5,mon = {id = 248,desc = "kn-13-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-13",id = 2131420,cardId = 1101005,lv = 133,bklv = 19,star = 5,mon = {id = 207,desc = "kn-13-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",id = 2131421,cardId = 1102011,lv = 133,bklv = 19,star = 5,mon = {id = 242,desc = "kn-13-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-13",id = 2131430,cardId = 1101003,lv = 133,bklv = 19,star = 5,mon = {id = 211,desc = "kn-13-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",id = 2131431,cardId = 1102005,lv = 133,bklv = 19,star = 5,mon = {id = 256,desc = "kn-13-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21315] = {
		[1] = {
			jlr = {cha = "kn-13",id = 2131510,cardId = 1101007,lv = 134,bklv = 19,star = 5,mon = {id = 205,desc = "kn-13-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",id = 2131511,cardId = 1102012,lv = 134,bklv = 19,star = 5,mon = {id = 240,desc = "kn-13-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-13",id = 2131520,cardId = 1101005,lv = 134,bklv = 19,star = 5,mon = {id = 204,desc = "kn-13-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",id = 2131521,cardId = 1102011,lv = 134,bklv = 19,star = 5,mon = {id = 245,desc = "kn-13-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-13",id = 2131530,cardId = 1101010,lv = 134,bklv = 19,star = 5,mon = {id = 207,desc = "kn-13-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-13",id = 2131531,cardId = 1102016,lv = 134,bklv = 19,star = 5,mon = {id = 249,desc = "kn-13-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21401] = {
		[1] = {
			jlr = {cha = "kn-14",id = 2140110,cardId = 1101007,lv = 135,bklv = 20,star = 5,mon = {id = 212,desc = "kn-14-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",id = 2140111,cardId = 1102012,lv = 135,bklv = 20,star = 5,mon = {id = 257,desc = "kn-14-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-14",id = 2140120,cardId = 1101003,lv = 135,bklv = 20,star = 5,mon = {id = 208,desc = "kn-14-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",id = 2140121,cardId = 1102005,lv = 135,bklv = 20,star = 5,mon = {id = 252,desc = "kn-14-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-14",id = 2140130,cardId = 1101014,lv = 135,bklv = 20,star = 5,mon = {id = 213,desc = "kn-14-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",id = 2140131,cardId = 1102020,lv = 135,bklv = 20,star = 5,mon = {id = 258,desc = "kn-14-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21402] = {
		[1] = {
			jlr = {cha = "kn-14",id = 2140210,cardId = 1101007,lv = 136,bklv = 20,star = 5,mon = {id = 201,desc = "kn-14-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",id = 2140211,cardId = 1102012,lv = 136,bklv = 20,star = 5,mon = {id = 241,desc = "kn-14-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-14",id = 2140220,cardId = 1101003,lv = 136,bklv = 20,star = 5,mon = {id = 203,desc = "kn-14-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",id = 2140221,cardId = 1102005,lv = 136,bklv = 20,star = 5,mon = {id = 244,desc = "kn-14-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-14",id = 2140230,cardId = 1101014,lv = 136,bklv = 20,star = 5,mon = {id = 214,desc = "kn-14-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",id = 2140231,cardId = 1102020,lv = 136,bklv = 20,star = 5,mon = {id = 259,desc = "kn-14-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21403] = {
		[1] = {
			jlr = {cha = "kn-14",id = 2140310,cardId = 1101007,lv = 136,bklv = 20,star = 5,mon = {id = 212,desc = "kn-14-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",id = 2140311,cardId = 1102012,lv = 136,bklv = 20,star = 5,mon = {id = 257,desc = "kn-14-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-14",id = 2140320,cardId = 1101003,lv = 136,bklv = 20,star = 5,mon = {id = 208,desc = "kn-14-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",id = 2140321,cardId = 1102005,lv = 136,bklv = 20,star = 5,mon = {id = 252,desc = "kn-14-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-14",id = 2140330,cardId = 1101014,lv = 136,bklv = 20,star = 5,mon = {id = 209,desc = "kn-14-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",id = 2140331,cardId = 1102020,lv = 136,bklv = 20,star = 5,mon = {id = 253,desc = "kn-14-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21404] = {
		[1] = {
			jlr = {cha = "kn-14",id = 2140410,cardId = 1101007,lv = 137,bklv = 20,star = 5,mon = {id = 215,desc = "kn-14-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",id = 2140411,cardId = 1102012,lv = 137,bklv = 20,star = 5,mon = {id = 260,desc = "kn-14-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-14",id = 2140420,cardId = 1101003,lv = 137,bklv = 20,star = 5,mon = {id = 201,desc = "kn-14-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",id = 2140421,cardId = 1102005,lv = 137,bklv = 20,star = 5,mon = {id = 248,desc = "kn-14-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-14",id = 2140430,cardId = 1101014,lv = 137,bklv = 20,star = 5,mon = {id = 211,desc = "kn-14-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",id = 2140431,cardId = 1102020,lv = 137,bklv = 20,star = 5,mon = {id = 256,desc = "kn-14-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21405] = {
		[1] = {
			jlr = {cha = "kn-14",id = 2140510,cardId = 1101007,lv = 137,bklv = 20,star = 5,mon = {id = 206,desc = "kn-14-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",id = 2140511,cardId = 1102012,lv = 137,bklv = 20,star = 5,mon = {id = 246,desc = "kn-14-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-14",id = 2140520,cardId = 1101003,lv = 137,bklv = 20,star = 5,mon = {id = 203,desc = "kn-14-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",id = 2140521,cardId = 1102005,lv = 137,bklv = 20,star = 5,mon = {id = 244,desc = "kn-14-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-14",id = 2140530,cardId = 1101014,lv = 137,bklv = 20,star = 5,mon = {id = 212,desc = "kn-14-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",id = 2140531,cardId = 1102020,lv = 137,bklv = 20,star = 5,mon = {id = 257,desc = "kn-14-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21406] = {
		[1] = {
			jlr = {cha = "kn-14",id = 2140610,cardId = 1101007,lv = 138,bklv = 20,star = 5,mon = {id = 209,desc = "kn-14-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",id = 2140611,cardId = 1102012,lv = 138,bklv = 20,star = 5,mon = {id = 253,desc = "kn-14-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-14",id = 2140620,cardId = 1101003,lv = 138,bklv = 20,star = 5,mon = {id = 208,desc = "kn-14-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",id = 2140621,cardId = 1102005,lv = 138,bklv = 20,star = 5,mon = {id = 252,desc = "kn-14-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-14",id = 2140630,cardId = 1101014,lv = 138,bklv = 20,star = 5,mon = {id = 212,desc = "kn-14-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",id = 2140631,cardId = 1102020,lv = 138,bklv = 20,star = 5,mon = {id = 257,desc = "kn-14-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21407] = {
		[1] = {
			jlr = {cha = "kn-14",id = 2140710,cardId = 1101007,lv = 138,bklv = 20,star = 5,mon = {id = 207,desc = "kn-14-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",id = 2140711,cardId = 1102012,lv = 138,bklv = 20,star = 5,mon = {id = 248,desc = "kn-14-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-14",id = 2140720,cardId = 1101003,lv = 138,bklv = 20,star = 5,mon = {id = 207,desc = "kn-14-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",id = 2140721,cardId = 1102005,lv = 138,bklv = 20,star = 5,mon = {id = 242,desc = "kn-14-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-14",id = 2140730,cardId = 1101014,lv = 138,bklv = 20,star = 5,mon = {id = 211,desc = "kn-14-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",id = 2140731,cardId = 1102020,lv = 138,bklv = 20,star = 5,mon = {id = 256,desc = "kn-14-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21408] = {
		[1] = {
			jlr = {cha = "kn-14",id = 2140810,cardId = 1101007,lv = 139,bklv = 20,star = 5,mon = {id = 207,desc = "kn-14-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",id = 2140811,cardId = 1102012,lv = 139,bklv = 20,star = 5,mon = {id = 251,desc = "kn-14-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-14",id = 2140820,cardId = 1101003,lv = 139,bklv = 20,star = 5,mon = {id = 205,desc = "kn-14-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",id = 2140821,cardId = 1102005,lv = 139,bklv = 20,star = 5,mon = {id = 250,desc = "kn-14-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-14",id = 2140830,cardId = 1101014,lv = 139,bklv = 20,star = 5,mon = {id = 210,desc = "kn-14-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",id = 2140831,cardId = 1102020,lv = 139,bklv = 20,star = 5,mon = {id = 255,desc = "kn-14-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21409] = {
		[1] = {
			jlr = {cha = "kn-14",id = 2140910,cardId = 1101007,lv = 140,bklv = 21,star = 5,mon = {id = 212,desc = "kn-14-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",id = 2140911,cardId = 1102012,lv = 140,bklv = 21,star = 5,mon = {id = 257,desc = "kn-14-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-14",id = 2140920,cardId = 1101003,lv = 140,bklv = 21,star = 5,mon = {id = 208,desc = "kn-14-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",id = 2140921,cardId = 1102005,lv = 140,bklv = 21,star = 5,mon = {id = 252,desc = "kn-14-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-14",id = 2140930,cardId = 1101014,lv = 140,bklv = 21,star = 5,mon = {id = 209,desc = "kn-14-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",id = 2140931,cardId = 1102020,lv = 140,bklv = 21,star = 5,mon = {id = 253,desc = "kn-14-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21410] = {
		[1] = {
			jlr = {cha = "kn-14",id = 2141010,cardId = 1101007,lv = 140,bklv = 21,star = 5,mon = {id = 201,desc = "kn-14-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",id = 2141011,cardId = 1102012,lv = 140,bklv = 21,star = 5,mon = {id = 241,desc = "kn-14-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-14",id = 2141020,cardId = 1101003,lv = 140,bklv = 21,star = 5,mon = {id = 203,desc = "kn-14-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",id = 2141021,cardId = 1102005,lv = 140,bklv = 21,star = 5,mon = {id = 244,desc = "kn-14-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-14",id = 2141030,cardId = 1101014,lv = 140,bklv = 21,star = 5,mon = {id = 214,desc = "kn-14-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",id = 2141031,cardId = 1102020,lv = 140,bklv = 21,star = 5,mon = {id = 259,desc = "kn-14-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21411] = {
		[1] = {
			jlr = {cha = "kn-14",id = 2141110,cardId = 1101007,lv = 140,bklv = 21,star = 5,mon = {id = 212,desc = "kn-14-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",id = 2141111,cardId = 1102012,lv = 140,bklv = 21,star = 5,mon = {id = 257,desc = "kn-14-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-14",id = 2141120,cardId = 1101003,lv = 140,bklv = 21,star = 5,mon = {id = 208,desc = "kn-14-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",id = 2141121,cardId = 1102005,lv = 140,bklv = 21,star = 5,mon = {id = 252,desc = "kn-14-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-14",id = 2141130,cardId = 1101014,lv = 140,bklv = 21,star = 5,mon = {id = 209,desc = "kn-14-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",id = 2141131,cardId = 1102020,lv = 140,bklv = 21,star = 5,mon = {id = 253,desc = "kn-14-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21412] = {
		[1] = {
			jlr = {cha = "kn-14",id = 2141210,cardId = 1101007,lv = 141,bklv = 21,star = 5,mon = {id = 215,desc = "kn-14-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",id = 2141211,cardId = 1102012,lv = 141,bklv = 21,star = 5,mon = {id = 260,desc = "kn-14-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-14",id = 2141220,cardId = 1101003,lv = 141,bklv = 21,star = 5,mon = {id = 201,desc = "kn-14-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",id = 2141221,cardId = 1102005,lv = 141,bklv = 21,star = 5,mon = {id = 248,desc = "kn-14-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-14",id = 2141230,cardId = 1101014,lv = 141,bklv = 21,star = 5,mon = {id = 211,desc = "kn-14-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",id = 2141231,cardId = 1102020,lv = 141,bklv = 21,star = 5,mon = {id = 256,desc = "kn-14-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21413] = {
		[1] = {
			jlr = {cha = "kn-14",id = 2141310,cardId = 1101007,lv = 142,bklv = 21,star = 5,mon = {id = 209,desc = "kn-14-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",id = 2141311,cardId = 1102012,lv = 142,bklv = 21,star = 5,mon = {id = 253,desc = "kn-14-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-14",id = 2141320,cardId = 1101003,lv = 142,bklv = 21,star = 5,mon = {id = 208,desc = "kn-14-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",id = 2141321,cardId = 1102005,lv = 142,bklv = 21,star = 5,mon = {id = 252,desc = "kn-14-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-14",id = 2141330,cardId = 1101014,lv = 142,bklv = 21,star = 5,mon = {id = 212,desc = "kn-14-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",id = 2141331,cardId = 1102020,lv = 142,bklv = 21,star = 5,mon = {id = 257,desc = "kn-14-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21414] = {
		[1] = {
			jlr = {cha = "kn-14",id = 2141410,cardId = 1101007,lv = 143,bklv = 21,star = 5,mon = {id = 207,desc = "kn-14-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",id = 2141411,cardId = 1102012,lv = 143,bklv = 21,star = 5,mon = {id = 248,desc = "kn-14-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-14",id = 2141420,cardId = 1101005,lv = 143,bklv = 21,star = 5,mon = {id = 207,desc = "kn-14-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",id = 2141421,cardId = 1102011,lv = 143,bklv = 21,star = 5,mon = {id = 242,desc = "kn-14-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-14",id = 2141430,cardId = 1101003,lv = 143,bklv = 21,star = 5,mon = {id = 211,desc = "kn-14-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",id = 2141431,cardId = 1102005,lv = 143,bklv = 21,star = 5,mon = {id = 256,desc = "kn-14-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21415] = {
		[1] = {
			jlr = {cha = "kn-14",id = 2141510,cardId = 1101007,lv = 144,bklv = 21,star = 5,mon = {id = 205,desc = "kn-14-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",id = 2141511,cardId = 1102012,lv = 144,bklv = 21,star = 5,mon = {id = 240,desc = "kn-14-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-14",id = 2141520,cardId = 1101005,lv = 144,bklv = 21,star = 5,mon = {id = 204,desc = "kn-14-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",id = 2141521,cardId = 1102011,lv = 144,bklv = 21,star = 5,mon = {id = 245,desc = "kn-14-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-14",id = 2141530,cardId = 1101010,lv = 144,bklv = 21,star = 5,mon = {id = 207,desc = "kn-14-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-14",id = 2141531,cardId = 1102016,lv = 144,bklv = 21,star = 5,mon = {id = 249,desc = "kn-14-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21501] = {
		[1] = {
			jlr = {cha = "kn-15",id = 2150110,cardId = 1101007,lv = 145,bklv = 21,star = 5,mon = {id = 212,desc = "kn-15-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",id = 2150111,cardId = 1102012,lv = 145,bklv = 21,star = 5,mon = {id = 257,desc = "kn-15-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-15",id = 2150120,cardId = 1101003,lv = 145,bklv = 21,star = 5,mon = {id = 208,desc = "kn-15-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",id = 2150121,cardId = 1102005,lv = 145,bklv = 21,star = 5,mon = {id = 252,desc = "kn-15-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-15",id = 2150130,cardId = 1101014,lv = 145,bklv = 21,star = 5,mon = {id = 213,desc = "kn-15-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",id = 2150131,cardId = 1102020,lv = 145,bklv = 21,star = 5,mon = {id = 258,desc = "kn-15-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21502] = {
		[1] = {
			jlr = {cha = "kn-15",id = 2150210,cardId = 1101007,lv = 146,bklv = 21,star = 5,mon = {id = 201,desc = "kn-15-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",id = 2150211,cardId = 1102012,lv = 146,bklv = 21,star = 5,mon = {id = 241,desc = "kn-15-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-15",id = 2150220,cardId = 1101003,lv = 146,bklv = 21,star = 5,mon = {id = 203,desc = "kn-15-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",id = 2150221,cardId = 1102005,lv = 146,bklv = 21,star = 5,mon = {id = 244,desc = "kn-15-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-15",id = 2150230,cardId = 1101014,lv = 146,bklv = 21,star = 5,mon = {id = 214,desc = "kn-15-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",id = 2150231,cardId = 1102020,lv = 146,bklv = 21,star = 5,mon = {id = 259,desc = "kn-15-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21503] = {
		[1] = {
			jlr = {cha = "kn-15",id = 2150310,cardId = 1101007,lv = 146,bklv = 21,star = 5,mon = {id = 212,desc = "kn-15-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",id = 2150311,cardId = 1102012,lv = 146,bklv = 21,star = 5,mon = {id = 257,desc = "kn-15-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-15",id = 2150320,cardId = 1101003,lv = 146,bklv = 21,star = 5,mon = {id = 208,desc = "kn-15-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",id = 2150321,cardId = 1102005,lv = 146,bklv = 21,star = 5,mon = {id = 252,desc = "kn-15-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-15",id = 2150330,cardId = 1101014,lv = 146,bklv = 21,star = 5,mon = {id = 209,desc = "kn-15-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",id = 2150331,cardId = 1102020,lv = 146,bklv = 21,star = 5,mon = {id = 253,desc = "kn-15-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21504] = {
		[1] = {
			jlr = {cha = "kn-15",id = 2150410,cardId = 1101007,lv = 147,bklv = 21,star = 5,mon = {id = 215,desc = "kn-15-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",id = 2150411,cardId = 1102012,lv = 147,bklv = 21,star = 5,mon = {id = 260,desc = "kn-15-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-15",id = 2150420,cardId = 1101003,lv = 147,bklv = 21,star = 5,mon = {id = 201,desc = "kn-15-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",id = 2150421,cardId = 1102005,lv = 147,bklv = 21,star = 5,mon = {id = 248,desc = "kn-15-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-15",id = 2150430,cardId = 1101014,lv = 147,bklv = 21,star = 5,mon = {id = 211,desc = "kn-15-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",id = 2150431,cardId = 1102020,lv = 147,bklv = 21,star = 5,mon = {id = 256,desc = "kn-15-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21505] = {
		[1] = {
			jlr = {cha = "kn-15",id = 2150510,cardId = 1101007,lv = 147,bklv = 21,star = 5,mon = {id = 206,desc = "kn-15-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",id = 2150511,cardId = 1102012,lv = 147,bklv = 21,star = 5,mon = {id = 246,desc = "kn-15-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-15",id = 2150520,cardId = 1101003,lv = 147,bklv = 21,star = 5,mon = {id = 203,desc = "kn-15-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",id = 2150521,cardId = 1102005,lv = 147,bklv = 21,star = 5,mon = {id = 244,desc = "kn-15-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-15",id = 2150530,cardId = 1101014,lv = 147,bklv = 21,star = 5,mon = {id = 212,desc = "kn-15-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",id = 2150531,cardId = 1102020,lv = 147,bklv = 21,star = 5,mon = {id = 257,desc = "kn-15-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21506] = {
		[1] = {
			jlr = {cha = "kn-15",id = 2150610,cardId = 1101007,lv = 148,bklv = 21,star = 5,mon = {id = 209,desc = "kn-15-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",id = 2150611,cardId = 1102012,lv = 148,bklv = 21,star = 5,mon = {id = 253,desc = "kn-15-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-15",id = 2150620,cardId = 1101003,lv = 148,bklv = 21,star = 5,mon = {id = 208,desc = "kn-15-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",id = 2150621,cardId = 1102005,lv = 148,bklv = 21,star = 5,mon = {id = 252,desc = "kn-15-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-15",id = 2150630,cardId = 1101014,lv = 148,bklv = 21,star = 5,mon = {id = 212,desc = "kn-15-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",id = 2150631,cardId = 1102020,lv = 148,bklv = 21,star = 5,mon = {id = 257,desc = "kn-15-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21507] = {
		[1] = {
			jlr = {cha = "kn-15",id = 2150710,cardId = 1101007,lv = 148,bklv = 21,star = 5,mon = {id = 207,desc = "kn-15-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",id = 2150711,cardId = 1102012,lv = 148,bklv = 21,star = 5,mon = {id = 248,desc = "kn-15-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-15",id = 2150720,cardId = 1101003,lv = 148,bklv = 21,star = 5,mon = {id = 207,desc = "kn-15-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",id = 2150721,cardId = 1102005,lv = 148,bklv = 21,star = 5,mon = {id = 242,desc = "kn-15-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-15",id = 2150730,cardId = 1101014,lv = 148,bklv = 21,star = 5,mon = {id = 211,desc = "kn-15-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",id = 2150731,cardId = 1102020,lv = 148,bklv = 21,star = 5,mon = {id = 256,desc = "kn-15-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21508] = {
		[1] = {
			jlr = {cha = "kn-15",id = 2150810,cardId = 1101007,lv = 149,bklv = 21,star = 5,mon = {id = 207,desc = "kn-15-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",id = 2150811,cardId = 1102012,lv = 149,bklv = 21,star = 5,mon = {id = 251,desc = "kn-15-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-15",id = 2150820,cardId = 1101003,lv = 149,bklv = 21,star = 5,mon = {id = 205,desc = "kn-15-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",id = 2150821,cardId = 1102005,lv = 149,bklv = 21,star = 5,mon = {id = 250,desc = "kn-15-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-15",id = 2150830,cardId = 1101014,lv = 149,bklv = 21,star = 5,mon = {id = 210,desc = "kn-15-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",id = 2150831,cardId = 1102020,lv = 149,bklv = 21,star = 5,mon = {id = 255,desc = "kn-15-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21509] = {
		[1] = {
			jlr = {cha = "kn-15",id = 2150910,cardId = 1101007,lv = 150,bklv = 21,star = 5,mon = {id = 212,desc = "kn-15-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",id = 2150911,cardId = 1102012,lv = 150,bklv = 21,star = 5,mon = {id = 257,desc = "kn-15-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-15",id = 2150920,cardId = 1101003,lv = 150,bklv = 21,star = 5,mon = {id = 208,desc = "kn-15-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",id = 2150921,cardId = 1102005,lv = 150,bklv = 21,star = 5,mon = {id = 252,desc = "kn-15-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-15",id = 2150930,cardId = 1101014,lv = 150,bklv = 21,star = 5,mon = {id = 209,desc = "kn-15-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",id = 2150931,cardId = 1102020,lv = 150,bklv = 21,star = 5,mon = {id = 253,desc = "kn-15-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21510] = {
		[1] = {
			jlr = {cha = "kn-15",id = 2151010,cardId = 1101007,lv = 150,bklv = 21,star = 5,mon = {id = 201,desc = "kn-15-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",id = 2151011,cardId = 1102012,lv = 150,bklv = 21,star = 5,mon = {id = 241,desc = "kn-15-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-15",id = 2151020,cardId = 1101003,lv = 150,bklv = 21,star = 5,mon = {id = 203,desc = "kn-15-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",id = 2151021,cardId = 1102005,lv = 150,bklv = 21,star = 5,mon = {id = 244,desc = "kn-15-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-15",id = 2151030,cardId = 1101014,lv = 150,bklv = 21,star = 5,mon = {id = 214,desc = "kn-15-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",id = 2151031,cardId = 1102020,lv = 150,bklv = 21,star = 5,mon = {id = 259,desc = "kn-15-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21511] = {
		[1] = {
			jlr = {cha = "kn-15",id = 2151110,cardId = 1101007,lv = 150,bklv = 21,star = 5,mon = {id = 212,desc = "kn-15-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",id = 2151111,cardId = 1102012,lv = 150,bklv = 21,star = 5,mon = {id = 257,desc = "kn-15-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-15",id = 2151120,cardId = 1101003,lv = 150,bklv = 21,star = 5,mon = {id = 208,desc = "kn-15-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",id = 2151121,cardId = 1102005,lv = 150,bklv = 21,star = 5,mon = {id = 252,desc = "kn-15-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-15",id = 2151130,cardId = 1101014,lv = 150,bklv = 21,star = 5,mon = {id = 209,desc = "kn-15-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",id = 2151131,cardId = 1102020,lv = 150,bklv = 21,star = 5,mon = {id = 253,desc = "kn-15-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21512] = {
		[1] = {
			jlr = {cha = "kn-15",id = 2151210,cardId = 1101007,lv = 151,bklv = 21,star = 5,mon = {id = 215,desc = "kn-15-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",id = 2151211,cardId = 1102012,lv = 151,bklv = 21,star = 5,mon = {id = 260,desc = "kn-15-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-15",id = 2151220,cardId = 1101003,lv = 151,bklv = 21,star = 5,mon = {id = 201,desc = "kn-15-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",id = 2151221,cardId = 1102005,lv = 151,bklv = 21,star = 5,mon = {id = 248,desc = "kn-15-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-15",id = 2151230,cardId = 1101014,lv = 151,bklv = 21,star = 5,mon = {id = 211,desc = "kn-15-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",id = 2151231,cardId = 1102020,lv = 151,bklv = 21,star = 5,mon = {id = 256,desc = "kn-15-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21513] = {
		[1] = {
			jlr = {cha = "kn-15",id = 2151310,cardId = 1101007,lv = 152,bklv = 21,star = 5,mon = {id = 209,desc = "kn-15-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",id = 2151311,cardId = 1102012,lv = 152,bklv = 21,star = 5,mon = {id = 253,desc = "kn-15-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-15",id = 2151320,cardId = 1101003,lv = 152,bklv = 21,star = 5,mon = {id = 208,desc = "kn-15-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",id = 2151321,cardId = 1102005,lv = 152,bklv = 21,star = 5,mon = {id = 252,desc = "kn-15-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-15",id = 2151330,cardId = 1101014,lv = 152,bklv = 21,star = 5,mon = {id = 212,desc = "kn-15-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",id = 2151331,cardId = 1102020,lv = 152,bklv = 21,star = 5,mon = {id = 257,desc = "kn-15-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21514] = {
		[1] = {
			jlr = {cha = "kn-15",id = 2151410,cardId = 1101007,lv = 153,bklv = 21,star = 5,mon = {id = 207,desc = "kn-15-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",id = 2151411,cardId = 1102012,lv = 153,bklv = 21,star = 5,mon = {id = 248,desc = "kn-15-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-15",id = 2151420,cardId = 1101005,lv = 153,bklv = 21,star = 5,mon = {id = 207,desc = "kn-15-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",id = 2151421,cardId = 1102011,lv = 153,bklv = 21,star = 5,mon = {id = 242,desc = "kn-15-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-15",id = 2151430,cardId = 1101003,lv = 153,bklv = 21,star = 5,mon = {id = 211,desc = "kn-15-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",id = 2151431,cardId = 1102005,lv = 153,bklv = 21,star = 5,mon = {id = 256,desc = "kn-15-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[21515] = {
		[1] = {
			jlr = {cha = "kn-15",id = 2151510,cardId = 1101007,lv = 154,bklv = 21,star = 5,mon = {id = 205,desc = "kn-15-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",id = 2151511,cardId = 1102012,lv = 154,bklv = 21,star = 5,mon = {id = 240,desc = "kn-15-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "kn-15",id = 2151520,cardId = 1101005,lv = 154,bklv = 21,star = 5,mon = {id = 204,desc = "kn-15-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",id = 2151521,cardId = 1102011,lv = 154,bklv = 21,star = 5,mon = {id = 245,desc = "kn-15-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "kn-15",id = 2151530,cardId = 1101010,lv = 154,bklv = 21,star = 5,mon = {id = 207,desc = "kn-15-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "kn-15",id = 2151531,cardId = 1102016,lv = 154,bklv = 21,star = 5,mon = {id = 249,desc = "kn-15-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[30101] = {
		[1] = {
			jlr = {id = 3010110,cardId = 1101001,lv = 1,bklv = 1,star = 1},
			shl = {id = 3010111,cardId = 1102015,lv = 1,bklv = 1,star = 1}
		},
		[2] = {
			jlr = {id = 3010110,cardId = 1101002,lv = 1,bklv = 1,star = 1},
			shl = {id = 3010111,cardId = 1102004,lv = 1,bklv = 1,star = 1}
		},
		[3] = {
			jlr = {id = 3010110,cardId = 1101003,lv = 1,bklv = 1,star = 1},
			shl = {id = 3010111,cardId = 1102005,lv = 1,bklv = 1,star = 1}
		}
	},
	[30102] = {
		[1] = {
			jlr = {id = 3010220,cardId = 1101001,lv = 5,bklv = 2,star = 1},
			shl = {id = 3010221,cardId = 1102015,lv = 5,bklv = 2,star = 1}
		},
		[2] = {
			jlr = {id = 3010220,cardId = 1101002,lv = 5,bklv = 1,star = 1},
			shl = {id = 3010221,cardId = 1102004,lv = 5,bklv = 1,star = 1}
		},
		[3] = {
			jlr = {id = 3010220,cardId = 1101003,lv = 5,bklv = 1,star = 1},
			shl = {id = 3010221,cardId = 1102005,lv = 5,bklv = 1,star = 1}
		}
	},
	[30103] = {
		[1] = {
			jlr = {id = 3010330,cardId = 1101001,lv = 7,bklv = 2,star = 1},
			shl = {id = 3010331,cardId = 1102015,lv = 7,bklv = 2,star = 1}
		},
		[2] = {
			jlr = {id = 3010330,cardId = 1101002,lv = 7,bklv = 2,star = 1},
			shl = {id = 3010331,cardId = 1102004,lv = 7,bklv = 2,star = 1}
		},
		[3] = {
			jlr = {id = 3010330,cardId = 1101003,lv = 7,bklv = 2,star = 1},
			shl = {id = 3010331,cardId = 1102005,lv = 7,bklv = 2,star = 1}
		}
	},
	[30104] = {
		[1] = {
			jlr = {id = 3010440,cardId = 1101003,lv = 10,bklv = 2,star = 1},
			shl = {id = 3010441,cardId = 1102005,lv = 10,bklv = 2,star = 1}
		},
		[2] = {
			jlr = {id = 3010440,cardId = 1101002,lv = 10,bklv = 2,star = 1},
			shl = {id = 3010441,cardId = 1102004,lv = 10,bklv = 2,star = 1}
		},
		[3] = {
			jlr = {id = 3010440,cardId = 1101007,lv = 10,bklv = 2,star = 1},
			shl = {id = 3010441,cardId = 1102015,lv = 10,bklv = 2,star = 1}
		}
	},
	[30201] = {
		[1] = {
			jlr = {id = 3020110,cardId = 1101003,lv = 15,bklv = 3,star = 1},
			shl = {id = 3020111,cardId = 1102005,lv = 15,bklv = 3,star = 1}
		},
		[2] = {
			jlr = {id = 3020110,cardId = 1101002,lv = 15,bklv = 2,star = 1},
			shl = {id = 3020111,cardId = 1102004,lv = 15,bklv = 2,star = 1}
		},
		[3] = {
			jlr = {id = 3020110,cardId = 1101007,lv = 15,bklv = 2,star = 1},
			shl = {id = 3020111,cardId = 1102015,lv = 15,bklv = 2,star = 1}
		}
	},
	[30202] = {
		[1] = {
			jlr = {id = 3020220,cardId = 1101003,lv = 15,bklv = 3,star = 1},
			shl = {id = 3020221,cardId = 1102005,lv = 15,bklv = 3,star = 1}
		},
		[2] = {
			jlr = {id = 3020220,cardId = 1101002,lv = 15,bklv = 3,star = 1},
			shl = {id = 3020221,cardId = 1102004,lv = 15,bklv = 3,star = 1}
		},
		[3] = {
			jlr = {id = 3020220,cardId = 1101007,lv = 15,bklv = 2,star = 1},
			shl = {id = 3020221,cardId = 1102015,lv = 15,bklv = 2,star = 1}
		}
	},
	[30203] = {
		[1] = {
			jlr = {id = 3020330,cardId = 1101003,lv = 15,bklv = 3,star = 1},
			shl = {id = 3020331,cardId = 1102005,lv = 15,bklv = 3,star = 1}
		},
		[2] = {
			jlr = {id = 3020330,cardId = 1101002,lv = 15,bklv = 3,star = 1},
			shl = {id = 3020331,cardId = 1102004,lv = 15,bklv = 3,star = 1}
		},
		[3] = {
			jlr = {id = 3020330,cardId = 1101007,lv = 15,bklv = 3,star = 1},
			shl = {id = 3020331,cardId = 1102015,lv = 15,bklv = 3,star = 1}
		}
	},
	[30204] = {
		[1] = {
			jlr = {id = 3020440,cardId = 1101003,lv = 16,bklv = 3,star = 1},
			shl = {id = 3020441,cardId = 1102005,lv = 16,bklv = 3,star = 1}
		},
		[2] = {
			jlr = {id = 3020440,cardId = 1101002,lv = 16,bklv = 3,star = 1},
			shl = {id = 3020441,cardId = 1102004,lv = 16,bklv = 3,star = 1}
		},
		[3] = {
			jlr = {id = 3020440,cardId = 1101007,lv = 16,bklv = 3,star = 1},
			shl = {id = 3020441,cardId = 1102015,lv = 16,bklv = 3,star = 1}
		}
	},
	[30205] = {
		[1] = {
			jlr = {id = 3020550,cardId = 1101003,lv = 17,bklv = 3,star = 1},
			shl = {id = 3020551,cardId = 1102005,lv = 17,bklv = 3,star = 1}
		},
		[2] = {
			jlr = {id = 3020550,cardId = 1101002,lv = 17,bklv = 3,star = 1},
			shl = {id = 3020551,cardId = 1102004,lv = 17,bklv = 3,star = 1}
		},
		[3] = {
			jlr = {id = 3020550,cardId = 1101007,lv = 17,bklv = 3,star = 1},
			shl = {id = 3020551,cardId = 1102015,lv = 17,bklv = 3,star = 1}
		}
	},
	[30206] = {
		[1] = {
			jlr = {id = 3020660,cardId = 1101003,lv = 17,bklv = 3,star = 1},
			shl = {id = 3020661,cardId = 1102005,lv = 17,bklv = 3,star = 1}
		},
		[2] = {
			jlr = {id = 3020660,cardId = 1101002,lv = 17,bklv = 3,star = 1},
			shl = {id = 3020661,cardId = 1102004,lv = 17,bklv = 3,star = 1}
		},
		[3] = {
			jlr = {id = 3020660,cardId = 1101007,lv = 17,bklv = 3,star = 1},
			shl = {id = 3020661,cardId = 1102015,lv = 17,bklv = 3,star = 1}
		}
	},
	[30207] = {
		[1] = {
			jlr = {id = 3020770,cardId = 1101003,lv = 17,bklv = 3,star = 1},
			shl = {id = 3020771,cardId = 1102005,lv = 17,bklv = 3,star = 1}
		},
		[2] = {
			jlr = {id = 3020770,cardId = 1101002,lv = 17,bklv = 3,star = 1},
			shl = {id = 3020771,cardId = 1102004,lv = 17,bklv = 3,star = 1}
		},
		[3] = {
			jlr = {id = 3020770,cardId = 1101007,lv = 17,bklv = 3,star = 1},
			shl = {id = 3020771,cardId = 1102015,lv = 17,bklv = 3,star = 1}
		}
	},
	[30208] = {
		[1] = {
			jlr = {id = 3020880,cardId = 1101003,lv = 20,bklv = 3,star = 1},
			shl = {id = 3020881,cardId = 1102005,lv = 20,bklv = 3,star = 1}
		},
		[2] = {
			jlr = {id = 3020880,cardId = 1101002,lv = 20,bklv = 3,star = 1},
			shl = {id = 3020881,cardId = 1102004,lv = 20,bklv = 3,star = 1}
		},
		[3] = {
			jlr = {id = 3020880,cardId = 1101007,lv = 20,bklv = 3,star = 1},
			shl = {id = 3020881,cardId = 1102015,lv = 20,bklv = 3,star = 1}
		}
	},
	[30301] = {
		[1] = {
			jlr = {id = 3030110,cardId = 1101003,lv = 24,bklv = 3,star = 1},
			shl = {id = 3030111,cardId = 1102005,lv = 24,bklv = 3,star = 1}
		},
		[2] = {
			jlr = {id = 3030110,cardId = 1101002,lv = 24,bklv = 3,star = 1},
			shl = {id = 3030111,cardId = 1102004,lv = 24,bklv = 3,star = 1}
		},
		[3] = {
			jlr = {id = 3030110,cardId = 1101007,lv = 24,bklv = 3,star = 1},
			shl = {id = 3030111,cardId = 1102015,lv = 24,bklv = 3,star = 1}
		}
	},
	[30302] = {
		[1] = {
			jlr = {id = 3030220,cardId = 1101003,lv = 25,bklv = 3,star = 1},
			shl = {id = 3030221,cardId = 1102005,lv = 25,bklv = 3,star = 1}
		},
		[2] = {
			jlr = {id = 3030220,cardId = 1101002,lv = 25,bklv = 3,star = 1},
			shl = {id = 3030221,cardId = 1102004,lv = 25,bklv = 3,star = 1}
		},
		[3] = {
			jlr = {id = 3030220,cardId = 1101007,lv = 25,bklv = 3,star = 1},
			shl = {id = 3030221,cardId = 1102015,lv = 25,bklv = 3,star = 1}
		}
	},
	[30303] = {
		[1] = {
			jlr = {id = 3030330,cardId = 1101003,lv = 26,bklv = 3,star = 1},
			shl = {id = 3030331,cardId = 1102005,lv = 26,bklv = 3,star = 1}
		},
		[2] = {
			jlr = {id = 3030330,cardId = 1101002,lv = 26,bklv = 3,star = 1},
			shl = {id = 3030331,cardId = 1102004,lv = 26,bklv = 3,star = 1}
		},
		[3] = {
			jlr = {id = 3030330,cardId = 1101007,lv = 26,bklv = 3,star = 1},
			shl = {id = 3030331,cardId = 1102015,lv = 26,bklv = 3,star = 1}
		}
	},
	[30304] = {
		[1] = {
			jlr = {id = 3030440,cardId = 1101003,lv = 27,bklv = 3,star = 1},
			shl = {id = 3030441,cardId = 1102005,lv = 27,bklv = 3,star = 1}
		},
		[2] = {
			jlr = {id = 3030440,cardId = 1101002,lv = 27,bklv = 3,star = 1},
			shl = {id = 3030441,cardId = 1102004,lv = 27,bklv = 3,star = 1}
		},
		[3] = {
			jlr = {id = 3030440,cardId = 1101007,lv = 27,bklv = 3,star = 1},
			shl = {id = 3030441,cardId = 1102015,lv = 27,bklv = 3,star = 1}
		}
	},
	[30305] = {
		[1] = {
			jlr = {id = 3030550,cardId = 1101003,lv = 28,bklv = 3,star = 1},
			shl = {id = 3030551,cardId = 1102005,lv = 28,bklv = 3,star = 1}
		},
		[2] = {
			jlr = {id = 3030550,cardId = 1101002,lv = 28,bklv = 3,star = 1},
			shl = {id = 3030551,cardId = 1102004,lv = 28,bklv = 3,star = 1}
		},
		[3] = {
			jlr = {id = 3030550,cardId = 1101007,lv = 28,bklv = 3,star = 1},
			shl = {id = 3030551,cardId = 1102015,lv = 28,bklv = 3,star = 1}
		}
	},
	[30306] = {
		[1] = {
			jlr = {id = 3030660,cardId = 1101003,lv = 29,bklv = 3,star = 1},
			shl = {id = 3030661,cardId = 1102005,lv = 29,bklv = 3,star = 1}
		},
		[2] = {
			jlr = {id = 3030660,cardId = 1101002,lv = 29,bklv = 3,star = 1},
			shl = {id = 3030661,cardId = 1102004,lv = 29,bklv = 3,star = 1}
		},
		[3] = {
			jlr = {id = 3030660,cardId = 1101007,lv = 29,bklv = 3,star = 1},
			shl = {id = 3030661,cardId = 1102015,lv = 29,bklv = 3,star = 1}
		}
	},
	[30307] = {
		[1] = {
			jlr = {id = 3030770,cardId = 1101003,lv = 30,bklv = 4,star = 1},
			shl = {id = 3030771,cardId = 1102005,lv = 30,bklv = 4,star = 1}
		},
		[2] = {
			jlr = {id = 3030770,cardId = 1101002,lv = 30,bklv = 3,star = 1},
			shl = {id = 3030771,cardId = 1102004,lv = 30,bklv = 3,star = 1}
		},
		[3] = {
			jlr = {id = 3030770,cardId = 1101007,lv = 30,bklv = 3,star = 1},
			shl = {id = 3030771,cardId = 1102015,lv = 30,bklv = 3,star = 1}
		}
	},
	[30308] = {
		[1] = {
			jlr = {id = 3030880,cardId = 1101003,lv = 30,bklv = 4,star = 1},
			shl = {id = 3030881,cardId = 1102005,lv = 30,bklv = 4,star = 1}
		},
		[2] = {
			jlr = {id = 3030880,cardId = 1101002,lv = 30,bklv = 4,star = 1},
			shl = {id = 3030881,cardId = 1102004,lv = 30,bklv = 4,star = 1}
		},
		[3] = {
			jlr = {id = 3030880,cardId = 1101007,lv = 30,bklv = 3,star = 1},
			shl = {id = 3030881,cardId = 1102002,lv = 30,bklv = 3,star = 1}
		}
	},
	[30309] = {
		[1] = {
			jlr = {id = 3030990,cardId = 1101003,lv = 30,bklv = 4,star = 1},
			shl = {id = 3030991,cardId = 1102005,lv = 30,bklv = 4,star = 1}
		},
		[2] = {
			jlr = {id = 3030990,cardId = 1101002,lv = 30,bklv = 4,star = 1},
			shl = {id = 3030991,cardId = 1102004,lv = 30,bklv = 4,star = 1}
		},
		[3] = {
			jlr = {id = 3030990,cardId = 1101007,lv = 30,bklv = 4,star = 1},
			shl = {id = 3030991,cardId = 1102002,lv = 30,bklv = 4,star = 1}
		}
	},
	[30401] = {
		[1] = {
			jlr = {id = 3040110,cardId = 1101003,lv = 34,bklv = 4,star = 1},
			shl = {id = 3040111,cardId = 1102005,lv = 34,bklv = 4,star = 1}
		},
		[2] = {
			jlr = {id = 3040110,cardId = 1101002,lv = 34,bklv = 4,star = 1},
			shl = {id = 3040111,cardId = 1102004,lv = 34,bklv = 4,star = 1}
		},
		[3] = {
			jlr = {id = 3040110,cardId = 1101007,lv = 34,bklv = 4,star = 1},
			shl = {id = 3040111,cardId = 1102002,lv = 34,bklv = 4,star = 1}
		}
	},
	[30402] = {
		[1] = {
			jlr = {id = 3040220,cardId = 1101003,lv = 35,bklv = 4,star = 1},
			shl = {id = 3040221,cardId = 1102005,lv = 35,bklv = 4,star = 1}
		},
		[2] = {
			jlr = {id = 3040220,cardId = 1101002,lv = 35,bklv = 4,star = 1},
			shl = {id = 3040221,cardId = 1102004,lv = 35,bklv = 4,star = 1}
		},
		[3] = {
			jlr = {id = 3040220,cardId = 1101007,lv = 35,bklv = 4,star = 1},
			shl = {id = 3040221,cardId = 1102002,lv = 35,bklv = 4,star = 1}
		}
	},
	[30403] = {
		[1] = {
			jlr = {id = 3040330,cardId = 1101003,lv = 35,bklv = 4,star = 1},
			shl = {id = 3040331,cardId = 1102005,lv = 35,bklv = 4,star = 1}
		},
		[2] = {
			jlr = {id = 3040330,cardId = 1101002,lv = 35,bklv = 4,star = 1},
			shl = {id = 3040331,cardId = 1102004,lv = 35,bklv = 4,star = 1}
		},
		[3] = {
			jlr = {id = 3040330,cardId = 1101007,lv = 35,bklv = 4,star = 1},
			shl = {id = 3040331,cardId = 1102002,lv = 35,bklv = 4,star = 1}
		}
	},
	[30404] = {
		[1] = {
			jlr = {id = 3040440,cardId = 1101003,lv = 36,bklv = 4,star = 1},
			shl = {id = 3040441,cardId = 1102005,lv = 36,bklv = 4,star = 1}
		},
		[2] = {
			jlr = {id = 3040440,cardId = 1101002,lv = 36,bklv = 4,star = 1},
			shl = {id = 3040441,cardId = 1102004,lv = 36,bklv = 4,star = 1}
		},
		[3] = {
			jlr = {id = 3040440,cardId = 1101007,lv = 36,bklv = 4,star = 1},
			shl = {id = 3040441,cardId = 1102002,lv = 36,bklv = 4,star = 1}
		}
	},
	[30405] = {
		[1] = {
			jlr = {id = 3040550,cardId = 1101003,lv = 37,bklv = 4,star = 1},
			shl = {id = 3040551,cardId = 1102005,lv = 37,bklv = 4,star = 1}
		},
		[2] = {
			jlr = {id = 3040550,cardId = 1101002,lv = 37,bklv = 4,star = 1},
			shl = {id = 3040551,cardId = 1102004,lv = 37,bklv = 4,star = 1}
		},
		[3] = {
			jlr = {id = 3040550,cardId = 1101007,lv = 37,bklv = 4,star = 1},
			shl = {id = 3040551,cardId = 1102002,lv = 37,bklv = 4,star = 1}
		}
	},
	[30406] = {
		[1] = {
			jlr = {id = 3040660,cardId = 1101003,lv = 38,bklv = 4,star = 1},
			shl = {id = 3040661,cardId = 1102005,lv = 38,bklv = 4,star = 1}
		},
		[2] = {
			jlr = {id = 3040660,cardId = 1101002,lv = 38,bklv = 4,star = 1},
			shl = {id = 3040661,cardId = 1102004,lv = 38,bklv = 4,star = 1}
		},
		[3] = {
			jlr = {id = 3040660,cardId = 1101007,lv = 38,bklv = 4,star = 1},
			shl = {id = 3040661,cardId = 1102002,lv = 38,bklv = 4,star = 1}
		}
	},
	[30407] = {
		[1] = {
			jlr = {id = 3040770,cardId = 1101003,lv = 39,bklv = 4,star = 1},
			shl = {id = 3040771,cardId = 1102005,lv = 39,bklv = 4,star = 1}
		},
		[2] = {
			jlr = {id = 3040770,cardId = 1101002,lv = 39,bklv = 4,star = 1},
			shl = {id = 3040771,cardId = 1102004,lv = 39,bklv = 4,star = 1}
		},
		[3] = {
			jlr = {id = 3040770,cardId = 1101007,lv = 39,bklv = 4,star = 1},
			shl = {id = 3040771,cardId = 1102002,lv = 39,bklv = 4,star = 1}
		}
	},
	[30408] = {
		[1] = {
			jlr = {id = 3040880,cardId = 1101003,lv = 40,bklv = 5,star = 1},
			shl = {id = 3040881,cardId = 1102005,lv = 40,bklv = 5,star = 1}
		},
		[2] = {
			jlr = {id = 3040880,cardId = 1101002,lv = 40,bklv = 4,star = 1},
			shl = {id = 3040881,cardId = 1102004,lv = 40,bklv = 4,star = 1}
		},
		[3] = {
			jlr = {id = 3040880,cardId = 1101007,lv = 40,bklv = 4,star = 1},
			shl = {id = 3040881,cardId = 1102002,lv = 40,bklv = 4,star = 1}
		}
	},
	[30409] = {
		[1] = {
			jlr = {id = 3040990,cardId = 1101003,lv = 40,bklv = 5,star = 1},
			shl = {id = 3040991,cardId = 1102005,lv = 40,bklv = 5,star = 1}
		},
		[2] = {
			jlr = {id = 3040990,cardId = 1101002,lv = 40,bklv = 5,star = 1},
			shl = {id = 3040991,cardId = 1102004,lv = 40,bklv = 5,star = 1}
		},
		[3] = {
			jlr = {id = 3040990,cardId = 1101007,lv = 40,bklv = 5,star = 1},
			shl = {id = 3040991,cardId = 1102002,lv = 40,bklv = 5,star = 1}
		}
	},
	[30501] = {
		[1] = {
			jlr = {id = 3050110,cardId = 1101003,lv = 44,bklv = 5,star = 1},
			shl = {id = 3050111,cardId = 1102005,lv = 44,bklv = 5,star = 1}
		},
		[2] = {
			jlr = {id = 3050110,cardId = 1101002,lv = 44,bklv = 5,star = 1},
			shl = {id = 3050111,cardId = 1102004,lv = 44,bklv = 5,star = 1}
		},
		[3] = {
			jlr = {id = 3050110,cardId = 1101007,lv = 44,bklv = 5,star = 1},
			shl = {id = 3050111,cardId = 1102002,lv = 44,bklv = 5,star = 1}
		}
	},
	[30502] = {
		[1] = {
			jlr = {id = 3050220,cardId = 1101003,lv = 44,bklv = 5,star = 1},
			shl = {id = 3050221,cardId = 1102005,lv = 44,bklv = 5,star = 1}
		},
		[2] = {
			jlr = {id = 3050220,cardId = 1101002,lv = 44,bklv = 5,star = 1},
			shl = {id = 3050221,cardId = 1102004,lv = 44,bklv = 5,star = 1}
		},
		[3] = {
			jlr = {id = 3050220,cardId = 1101007,lv = 44,bklv = 5,star = 1},
			shl = {id = 3050221,cardId = 1102002,lv = 44,bklv = 5,star = 1}
		}
	},
	[30503] = {
		[1] = {
			jlr = {id = 3050330,cardId = 1101003,lv = 45,bklv = 5,star = 1},
			shl = {id = 3050331,cardId = 1102005,lv = 45,bklv = 5,star = 1}
		},
		[2] = {
			jlr = {id = 3050330,cardId = 1101002,lv = 45,bklv = 5,star = 1},
			shl = {id = 3050331,cardId = 1102004,lv = 45,bklv = 5,star = 1}
		},
		[3] = {
			jlr = {id = 3050330,cardId = 1101007,lv = 45,bklv = 5,star = 1},
			shl = {id = 3050331,cardId = 1102002,lv = 45,bklv = 5,star = 1}
		}
	},
	[30504] = {
		[1] = {
			jlr = {id = 3050440,cardId = 1101003,lv = 45,bklv = 5,star = 1},
			shl = {id = 3050441,cardId = 1102005,lv = 45,bklv = 5,star = 1}
		},
		[2] = {
			jlr = {id = 3050440,cardId = 1101011,lv = 45,bklv = 5,star = 1},
			shl = {id = 3050441,cardId = 1102004,lv = 45,bklv = 5,star = 1}
		},
		[3] = {
			jlr = {id = 3050440,cardId = 1101007,lv = 45,bklv = 5,star = 1},
			shl = {id = 3050441,cardId = 1102002,lv = 45,bklv = 5,star = 1}
		}
	},
	[30505] = {
		[1] = {
			jlr = {id = 3050550,cardId = 1101003,lv = 46,bklv = 5,star = 1},
			shl = {id = 3050551,cardId = 1102005,lv = 46,bklv = 5,star = 1}
		},
		[2] = {
			jlr = {id = 3050550,cardId = 1101011,lv = 46,bklv = 5,star = 1},
			shl = {id = 3050551,cardId = 1102017,lv = 46,bklv = 5,star = 1}
		},
		[3] = {
			jlr = {id = 3050550,cardId = 1101007,lv = 46,bklv = 5,star = 1},
			shl = {id = 3050551,cardId = 1102002,lv = 46,bklv = 5,star = 1}
		}
	},
	[30506] = {
		[1] = {
			jlr = {id = 3050660,cardId = 1101003,lv = 46,bklv = 5,star = 1},
			shl = {id = 3050661,cardId = 1102005,lv = 46,bklv = 5,star = 1}
		},
		[2] = {
			jlr = {id = 3050660,cardId = 1101011,lv = 46,bklv = 5,star = 1},
			shl = {id = 3050661,cardId = 1102017,lv = 46,bklv = 5,star = 1}
		},
		[3] = {
			jlr = {id = 3050660,cardId = 1101007,lv = 46,bklv = 5,star = 1},
			shl = {id = 3050661,cardId = 1102002,lv = 46,bklv = 5,star = 1}
		}
	},
	[30507] = {
		[1] = {
			jlr = {id = 3050770,cardId = 1101003,lv = 47,bklv = 5,star = 1},
			shl = {id = 3050771,cardId = 1102005,lv = 47,bklv = 5,star = 1}
		},
		[2] = {
			jlr = {id = 3050770,cardId = 1101011,lv = 47,bklv = 5,star = 1},
			shl = {id = 3050771,cardId = 1102017,lv = 47,bklv = 5,star = 1}
		},
		[3] = {
			jlr = {id = 3050770,cardId = 1101007,lv = 47,bklv = 5,star = 1},
			shl = {id = 3050771,cardId = 1102002,lv = 47,bklv = 5,star = 1}
		}
	},
	[30508] = {
		[1] = {
			jlr = {id = 3050880,cardId = 1101003,lv = 47,bklv = 5,star = 1},
			shl = {id = 3050881,cardId = 1102005,lv = 47,bklv = 5,star = 1}
		},
		[2] = {
			jlr = {id = 3050880,cardId = 1101011,lv = 47,bklv = 5,star = 1},
			shl = {id = 3050881,cardId = 1102017,lv = 47,bklv = 5,star = 1}
		},
		[3] = {
			jlr = {id = 3050880,cardId = 1101007,lv = 47,bklv = 5,star = 1},
			shl = {id = 3050881,cardId = 1102002,lv = 47,bklv = 5,star = 1}
		}
	},
	[30509] = {
		[1] = {
			jlr = {id = 3050990,cardId = 1101003,lv = 48,bklv = 5,star = 1},
			shl = {id = 3050991,cardId = 1102005,lv = 48,bklv = 5,star = 1}
		},
		[2] = {
			jlr = {id = 3050990,cardId = 1101011,lv = 48,bklv = 5,star = 1},
			shl = {id = 3050991,cardId = 1102017,lv = 48,bklv = 5,star = 1}
		},
		[3] = {
			jlr = {id = 3050990,cardId = 1101007,lv = 48,bklv = 5,star = 1},
			shl = {id = 3050991,cardId = 1102002,lv = 48,bklv = 5,star = 1}
		}
	},
	[30510] = {
		[1] = {
			jlr = {id = 3051100,cardId = 1101003,lv = 48,bklv = 5,star = 1},
			shl = {id = 3051101,cardId = 1102005,lv = 48,bklv = 5,star = 1}
		},
		[2] = {
			jlr = {id = 3051100,cardId = 1101011,lv = 48,bklv = 5,star = 1},
			shl = {id = 3051101,cardId = 1102017,lv = 48,bklv = 5,star = 1}
		},
		[3] = {
			jlr = {id = 3051100,cardId = 1101007,lv = 48,bklv = 5,star = 1},
			shl = {id = 3051101,cardId = 1102002,lv = 48,bklv = 5,star = 1}
		}
	},
	[30511] = {
		[1] = {
			jlr = {id = 3051210,cardId = 1101003,lv = 49,bklv = 5,star = 1},
			shl = {id = 3051211,cardId = 1102005,lv = 49,bklv = 5,star = 1}
		},
		[2] = {
			jlr = {id = 3051210,cardId = 1101011,lv = 49,bklv = 5,star = 1},
			shl = {id = 3051211,cardId = 1102017,lv = 49,bklv = 5,star = 1}
		},
		[3] = {
			jlr = {id = 3051210,cardId = 1101007,lv = 49,bklv = 5,star = 1},
			shl = {id = 3051211,cardId = 1102002,lv = 49,bklv = 5,star = 1}
		}
	},
	[30512] = {
		[1] = {
			jlr = {id = 3051320,cardId = 1101003,lv = 49,bklv = 5,star = 1},
			shl = {id = 3051321,cardId = 1102005,lv = 49,bklv = 5,star = 1}
		},
		[2] = {
			jlr = {id = 3051320,cardId = 1101011,lv = 49,bklv = 5,star = 1},
			shl = {id = 3051321,cardId = 1102017,lv = 49,bklv = 5,star = 1}
		},
		[3] = {
			jlr = {id = 3051320,cardId = 1101007,lv = 49,bklv = 5,star = 1},
			shl = {id = 3051321,cardId = 1102002,lv = 49,bklv = 5,star = 1}
		}
	},
	[30513] = {
		[1] = {
			jlr = {id = 3051430,cardId = 1101003,lv = 50,bklv = 6,star = 1},
			shl = {id = 3051431,cardId = 1102005,lv = 50,bklv = 6,star = 1}
		},
		[2] = {
			jlr = {id = 3051430,cardId = 1101011,lv = 50,bklv = 5,star = 1},
			shl = {id = 3051431,cardId = 1102017,lv = 50,bklv = 5,star = 1}
		},
		[3] = {
			jlr = {id = 3051430,cardId = 1101007,lv = 50,bklv = 5,star = 1},
			shl = {id = 3051431,cardId = 1102002,lv = 50,bklv = 5,star = 1}
		}
	},
	[30514] = {
		[1] = {
			jlr = {id = 3051540,cardId = 1101003,lv = 50,bklv = 6,star = 1},
			shl = {id = 3051541,cardId = 1102005,lv = 50,bklv = 6,star = 1}
		},
		[2] = {
			jlr = {id = 3051540,cardId = 1101011,lv = 50,bklv = 6,star = 1},
			shl = {id = 3051541,cardId = 1102017,lv = 50,bklv = 6,star = 1}
		},
		[3] = {
			jlr = {id = 3051540,cardId = 1101007,lv = 50,bklv = 5,star = 1},
			shl = {id = 3051541,cardId = 1102002,lv = 50,bklv = 5,star = 1}
		}
	},
	[30515] = {
		[1] = {
			jlr = {id = 3051650,cardId = 1101003,lv = 50,bklv = 6,star = 1},
			shl = {id = 3051651,cardId = 1102005,lv = 50,bklv = 6,star = 1}
		},
		[2] = {
			jlr = {id = 3051650,cardId = 1101011,lv = 50,bklv = 6,star = 1},
			shl = {id = 3051651,cardId = 1102017,lv = 50,bklv = 6,star = 1}
		},
		[3] = {
			jlr = {id = 3051650,cardId = 1101007,lv = 50,bklv = 6,star = 1},
			shl = {id = 3051651,cardId = 1102002,lv = 50,bklv = 6,star = 1}
		}
	},
	[30601] = {
		[1] = {
			jlr = {id = 3060110,cardId = 1101003,lv = 54,bklv = 6,star = 1},
			shl = {id = 3060111,cardId = 1102005,lv = 54,bklv = 6,star = 1}
		},
		[2] = {
			jlr = {id = 3060110,cardId = 1101011,lv = 54,bklv = 6,star = 1},
			shl = {id = 3060111,cardId = 1102017,lv = 54,bklv = 6,star = 1}
		},
		[3] = {
			jlr = {id = 3060110,cardId = 1101007,lv = 54,bklv = 6,star = 1},
			shl = {id = 3060111,cardId = 1102002,lv = 54,bklv = 6,star = 1}
		}
	},
	[30602] = {
		[1] = {
			jlr = {id = 3060220,cardId = 1101003,lv = 54,bklv = 6,star = 1},
			shl = {id = 3060221,cardId = 1102005,lv = 54,bklv = 6,star = 1}
		},
		[2] = {
			jlr = {id = 3060220,cardId = 1101011,lv = 54,bklv = 6,star = 1},
			shl = {id = 3060221,cardId = 1102017,lv = 54,bklv = 6,star = 1}
		},
		[3] = {
			jlr = {id = 3060220,cardId = 1101007,lv = 54,bklv = 6,star = 1},
			shl = {id = 3060221,cardId = 1102002,lv = 54,bklv = 6,star = 1}
		}
	},
	[30603] = {
		[1] = {
			jlr = {id = 3060330,cardId = 1101003,lv = 55,bklv = 6,star = 1},
			shl = {id = 3060331,cardId = 1102005,lv = 55,bklv = 6,star = 1}
		},
		[2] = {
			jlr = {id = 3060330,cardId = 1101011,lv = 55,bklv = 6,star = 1},
			shl = {id = 3060331,cardId = 1102017,lv = 55,bklv = 6,star = 1}
		},
		[3] = {
			jlr = {id = 3060330,cardId = 1101007,lv = 55,bklv = 6,star = 1},
			shl = {id = 3060331,cardId = 1102002,lv = 55,bklv = 6,star = 1}
		}
	},
	[30604] = {
		[1] = {
			jlr = {id = 3060440,cardId = 1101003,lv = 55,bklv = 6,star = 1},
			shl = {id = 3060441,cardId = 1102005,lv = 55,bklv = 6,star = 1}
		},
		[2] = {
			jlr = {id = 3060440,cardId = 1101011,lv = 55,bklv = 6,star = 1},
			shl = {id = 3060441,cardId = 1102017,lv = 55,bklv = 6,star = 1}
		},
		[3] = {
			jlr = {id = 3060440,cardId = 1101007,lv = 55,bklv = 6,star = 1},
			shl = {id = 3060441,cardId = 1102002,lv = 55,bklv = 6,star = 1}
		}
	},
	[30605] = {
		[1] = {
			jlr = {id = 3060550,cardId = 1101003,lv = 56,bklv = 6,star = 1},
			shl = {id = 3060551,cardId = 1102005,lv = 56,bklv = 6,star = 1}
		},
		[2] = {
			jlr = {id = 3060550,cardId = 1101011,lv = 56,bklv = 6,star = 1},
			shl = {id = 3060551,cardId = 1102017,lv = 56,bklv = 6,star = 1}
		},
		[3] = {
			jlr = {id = 3060550,cardId = 1101007,lv = 56,bklv = 6,star = 1},
			shl = {id = 3060551,cardId = 1102002,lv = 56,bklv = 6,star = 1}
		}
	},
	[30606] = {
		[1] = {
			jlr = {id = 3060660,cardId = 1101003,lv = 56,bklv = 6,star = 1},
			shl = {id = 3060661,cardId = 1102005,lv = 56,bklv = 6,star = 1}
		},
		[2] = {
			jlr = {id = 3060660,cardId = 1101011,lv = 56,bklv = 6,star = 1},
			shl = {id = 3060661,cardId = 1102017,lv = 56,bklv = 6,star = 1}
		},
		[3] = {
			jlr = {id = 3060660,cardId = 1101007,lv = 56,bklv = 6,star = 1},
			shl = {id = 3060661,cardId = 1102002,lv = 56,bklv = 6,star = 1}
		}
	},
	[30607] = {
		[1] = {
			jlr = {id = 3060770,cardId = 1101003,lv = 57,bklv = 6,star = 1},
			shl = {id = 3060771,cardId = 1102005,lv = 57,bklv = 6,star = 1}
		},
		[2] = {
			jlr = {id = 3060770,cardId = 1101011,lv = 57,bklv = 6,star = 1},
			shl = {id = 3060771,cardId = 1102017,lv = 57,bklv = 6,star = 1}
		},
		[3] = {
			jlr = {id = 3060770,cardId = 1101007,lv = 57,bklv = 6,star = 1},
			shl = {id = 3060771,cardId = 1102002,lv = 57,bklv = 6,star = 1}
		}
	},
	[30608] = {
		[1] = {
			jlr = {id = 3060880,cardId = 1101003,lv = 57,bklv = 6,star = 1},
			shl = {id = 3060881,cardId = 1102005,lv = 57,bklv = 6,star = 1}
		},
		[2] = {
			jlr = {id = 3060880,cardId = 1101011,lv = 57,bklv = 6,star = 1},
			shl = {id = 3060881,cardId = 1102017,lv = 57,bklv = 6,star = 1}
		},
		[3] = {
			jlr = {id = 3060880,cardId = 1101007,lv = 57,bklv = 6,star = 1},
			shl = {id = 3060881,cardId = 1102002,lv = 57,bklv = 6,star = 1}
		}
	},
	[30609] = {
		[1] = {
			jlr = {id = 3060990,cardId = 1101003,lv = 58,bklv = 6,star = 1},
			shl = {id = 3060991,cardId = 1102005,lv = 58,bklv = 6,star = 1}
		},
		[2] = {
			jlr = {id = 3060990,cardId = 1101011,lv = 58,bklv = 6,star = 1},
			shl = {id = 3060991,cardId = 1102017,lv = 58,bklv = 6,star = 1}
		},
		[3] = {
			jlr = {id = 3060990,cardId = 1101007,lv = 58,bklv = 6,star = 1},
			shl = {id = 3060991,cardId = 1102002,lv = 58,bklv = 6,star = 1}
		}
	},
	[30610] = {
		[1] = {
			jlr = {id = 3061100,cardId = 1101003,lv = 58,bklv = 6,star = 1},
			shl = {id = 3061101,cardId = 1102005,lv = 58,bklv = 6,star = 1}
		},
		[2] = {
			jlr = {id = 3061100,cardId = 1101011,lv = 58,bklv = 6,star = 1},
			shl = {id = 3061101,cardId = 1102017,lv = 58,bklv = 6,star = 1}
		},
		[3] = {
			jlr = {id = 3061100,cardId = 1101007,lv = 58,bklv = 6,star = 1},
			shl = {id = 3061101,cardId = 1102002,lv = 58,bklv = 6,star = 1}
		}
	},
	[30611] = {
		[1] = {
			jlr = {id = 3061210,cardId = 1101003,lv = 59,bklv = 6,star = 1},
			shl = {id = 3061211,cardId = 1102005,lv = 59,bklv = 6,star = 1}
		},
		[2] = {
			jlr = {id = 3061210,cardId = 1101011,lv = 59,bklv = 6,star = 1},
			shl = {id = 3061211,cardId = 1102017,lv = 59,bklv = 6,star = 1}
		},
		[3] = {
			jlr = {id = 3061210,cardId = 1101007,lv = 59,bklv = 6,star = 1},
			shl = {id = 3061211,cardId = 1102002,lv = 59,bklv = 6,star = 1}
		}
	},
	[30612] = {
		[1] = {
			jlr = {id = 3061320,cardId = 1101003,lv = 59,bklv = 6,star = 1},
			shl = {id = 3061321,cardId = 1102005,lv = 59,bklv = 6,star = 1}
		},
		[2] = {
			jlr = {id = 3061320,cardId = 1101011,lv = 59,bklv = 6,star = 1},
			shl = {id = 3061321,cardId = 1102017,lv = 59,bklv = 6,star = 1}
		},
		[3] = {
			jlr = {id = 3061320,cardId = 1101007,lv = 59,bklv = 6,star = 1},
			shl = {id = 3061321,cardId = 1102002,lv = 59,bklv = 6,star = 1}
		}
	},
	[30613] = {
		[1] = {
			jlr = {id = 3061430,cardId = 1101003,lv = 60,bklv = 7,star = 1},
			shl = {id = 3061431,cardId = 1102005,lv = 60,bklv = 7,star = 1}
		},
		[2] = {
			jlr = {id = 3061430,cardId = 1101011,lv = 60,bklv = 6,star = 1},
			shl = {id = 3061431,cardId = 1102017,lv = 60,bklv = 6,star = 1}
		},
		[3] = {
			jlr = {id = 3061430,cardId = 1101007,lv = 60,bklv = 6,star = 1},
			shl = {id = 3061431,cardId = 1102002,lv = 60,bklv = 6,star = 1}
		}
	},
	[30614] = {
		[1] = {
			jlr = {id = 3061540,cardId = 1101003,lv = 60,bklv = 7,star = 1},
			shl = {id = 3061541,cardId = 1102005,lv = 60,bklv = 7,star = 1}
		},
		[2] = {
			jlr = {id = 3061540,cardId = 1101011,lv = 60,bklv = 7,star = 1},
			shl = {id = 3061541,cardId = 1102017,lv = 60,bklv = 7,star = 1}
		},
		[3] = {
			jlr = {id = 3061540,cardId = 1101007,lv = 60,bklv = 6,star = 1},
			shl = {id = 3061541,cardId = 1102002,lv = 60,bklv = 6,star = 1}
		}
	},
	[30615] = {
		[1] = {
			jlr = {id = 3061650,cardId = 1101003,lv = 60,bklv = 7,star = 1},
			shl = {id = 3061651,cardId = 1102005,lv = 60,bklv = 7,star = 1}
		},
		[2] = {
			jlr = {id = 3061650,cardId = 1101011,lv = 60,bklv = 7,star = 1},
			shl = {id = 3061651,cardId = 1102017,lv = 60,bklv = 7,star = 1}
		},
		[3] = {
			jlr = {id = 3061650,cardId = 1101007,lv = 60,bklv = 7,star = 1},
			shl = {id = 3061651,cardId = 1102002,lv = 60,bklv = 7,star = 1}
		}
	},
	[30701] = {
		[1] = {
			jlr = {id = 3070110,cardId = 1101003,lv = 64,bklv = 7,star = 1},
			shl = {id = 3070111,cardId = 1102005,lv = 64,bklv = 7,star = 1}
		},
		[2] = {
			jlr = {id = 3070110,cardId = 1101011,lv = 64,bklv = 7,star = 1},
			shl = {id = 3070111,cardId = 1102017,lv = 64,bklv = 7,star = 1}
		},
		[3] = {
			jlr = {id = 3070110,cardId = 1101007,lv = 64,bklv = 7,star = 1},
			shl = {id = 3070111,cardId = 1102002,lv = 64,bklv = 7,star = 1}
		}
	},
	[30702] = {
		[1] = {
			jlr = {id = 3070220,cardId = 1101003,lv = 64,bklv = 7,star = 1},
			shl = {id = 3070221,cardId = 1102005,lv = 64,bklv = 7,star = 1}
		},
		[2] = {
			jlr = {id = 3070220,cardId = 1101011,lv = 64,bklv = 7,star = 1},
			shl = {id = 3070221,cardId = 1102017,lv = 64,bklv = 7,star = 1}
		},
		[3] = {
			jlr = {id = 3070220,cardId = 1101007,lv = 64,bklv = 7,star = 1},
			shl = {id = 3070221,cardId = 1102002,lv = 64,bklv = 7,star = 1}
		}
	},
	[30703] = {
		[1] = {
			jlr = {id = 3070330,cardId = 1101003,lv = 65,bklv = 7,star = 1},
			shl = {id = 3070331,cardId = 1102005,lv = 65,bklv = 7,star = 1}
		},
		[2] = {
			jlr = {id = 3070330,cardId = 1101011,lv = 65,bklv = 7,star = 1},
			shl = {id = 3070331,cardId = 1102017,lv = 65,bklv = 7,star = 1}
		},
		[3] = {
			jlr = {id = 3070330,cardId = 1101007,lv = 65,bklv = 7,star = 1},
			shl = {id = 3070331,cardId = 1102002,lv = 65,bklv = 7,star = 1}
		}
	},
	[30704] = {
		[1] = {
			jlr = {id = 3070440,cardId = 1101003,lv = 65,bklv = 7,star = 1},
			shl = {id = 3070441,cardId = 1102005,lv = 65,bklv = 7,star = 1}
		},
		[2] = {
			jlr = {id = 3070440,cardId = 1101011,lv = 65,bklv = 7,star = 1},
			shl = {id = 3070441,cardId = 1102017,lv = 65,bklv = 7,star = 1}
		},
		[3] = {
			jlr = {id = 3070440,cardId = 1101007,lv = 65,bklv = 7,star = 1},
			shl = {id = 3070441,cardId = 1102002,lv = 65,bklv = 7,star = 1}
		}
	},
	[30705] = {
		[1] = {
			jlr = {id = 3070550,cardId = 1101003,lv = 66,bklv = 7,star = 1},
			shl = {id = 3070551,cardId = 1102005,lv = 66,bklv = 7,star = 1}
		},
		[2] = {
			jlr = {id = 3070550,cardId = 1101011,lv = 66,bklv = 7,star = 1},
			shl = {id = 3070551,cardId = 1102017,lv = 66,bklv = 7,star = 1}
		},
		[3] = {
			jlr = {id = 3070550,cardId = 1101007,lv = 66,bklv = 7,star = 1},
			shl = {id = 3070551,cardId = 1102002,lv = 66,bklv = 7,star = 1}
		}
	},
	[30706] = {
		[1] = {
			jlr = {id = 3070660,cardId = 1101003,lv = 66,bklv = 7,star = 1},
			shl = {id = 3070661,cardId = 1102005,lv = 66,bklv = 7,star = 1}
		},
		[2] = {
			jlr = {id = 3070660,cardId = 1101011,lv = 66,bklv = 7,star = 1},
			shl = {id = 3070661,cardId = 1102017,lv = 66,bklv = 7,star = 1}
		},
		[3] = {
			jlr = {id = 3070660,cardId = 1101007,lv = 66,bklv = 7,star = 1},
			shl = {id = 3070661,cardId = 1102002,lv = 66,bklv = 7,star = 1}
		}
	},
	[30707] = {
		[1] = {
			jlr = {id = 3070770,cardId = 1101003,lv = 67,bklv = 7,star = 1},
			shl = {id = 3070771,cardId = 1102005,lv = 67,bklv = 7,star = 1}
		},
		[2] = {
			jlr = {id = 3070770,cardId = 1101011,lv = 67,bklv = 7,star = 1},
			shl = {id = 3070771,cardId = 1102017,lv = 67,bklv = 7,star = 1}
		},
		[3] = {
			jlr = {id = 3070770,cardId = 1101007,lv = 67,bklv = 7,star = 1},
			shl = {id = 3070771,cardId = 1102002,lv = 67,bklv = 7,star = 1}
		}
	},
	[30708] = {
		[1] = {
			jlr = {id = 3070880,cardId = 1101003,lv = 67,bklv = 7,star = 1},
			shl = {id = 3070881,cardId = 1102005,lv = 67,bklv = 7,star = 1}
		},
		[2] = {
			jlr = {id = 3070880,cardId = 1101011,lv = 67,bklv = 7,star = 1},
			shl = {id = 3070881,cardId = 1102017,lv = 67,bklv = 7,star = 1}
		},
		[3] = {
			jlr = {id = 3070880,cardId = 1101007,lv = 67,bklv = 7,star = 1},
			shl = {id = 3070881,cardId = 1102002,lv = 67,bklv = 7,star = 1}
		}
	},
	[30709] = {
		[1] = {
			jlr = {id = 3070990,cardId = 1101003,lv = 68,bklv = 7,star = 1},
			shl = {id = 3070991,cardId = 1102005,lv = 68,bklv = 7,star = 1}
		},
		[2] = {
			jlr = {id = 3070990,cardId = 1101011,lv = 68,bklv = 7,star = 1},
			shl = {id = 3070991,cardId = 1102017,lv = 68,bklv = 7,star = 1}
		},
		[3] = {
			jlr = {id = 3070990,cardId = 1101007,lv = 68,bklv = 7,star = 1},
			shl = {id = 3070991,cardId = 1102002,lv = 68,bklv = 7,star = 1}
		}
	},
	[30710] = {
		[1] = {
			jlr = {id = 3071100,cardId = 1101003,lv = 68,bklv = 7,star = 1},
			shl = {id = 3071101,cardId = 1102005,lv = 68,bklv = 7,star = 1}
		},
		[2] = {
			jlr = {id = 3071100,cardId = 1101011,lv = 68,bklv = 7,star = 1},
			shl = {id = 3071101,cardId = 1102017,lv = 68,bklv = 7,star = 1}
		},
		[3] = {
			jlr = {id = 3071100,cardId = 1101007,lv = 68,bklv = 7,star = 1},
			shl = {id = 3071101,cardId = 1102002,lv = 68,bklv = 7,star = 1}
		}
	},
	[30711] = {
		[1] = {
			jlr = {id = 3071210,cardId = 1101003,lv = 69,bklv = 7,star = 1},
			shl = {id = 3071211,cardId = 1102005,lv = 69,bklv = 7,star = 1}
		},
		[2] = {
			jlr = {id = 3071210,cardId = 1101011,lv = 69,bklv = 7,star = 1},
			shl = {id = 3071211,cardId = 1102017,lv = 69,bklv = 7,star = 1}
		},
		[3] = {
			jlr = {id = 3071210,cardId = 1101007,lv = 69,bklv = 7,star = 1},
			shl = {id = 3071211,cardId = 1102002,lv = 69,bklv = 7,star = 1}
		}
	},
	[30712] = {
		[1] = {
			jlr = {id = 3071320,cardId = 1101003,lv = 69,bklv = 7,star = 1},
			shl = {id = 3071321,cardId = 1102005,lv = 69,bklv = 7,star = 1}
		},
		[2] = {
			jlr = {id = 3071320,cardId = 1101011,lv = 69,bklv = 7,star = 1},
			shl = {id = 3071321,cardId = 1102017,lv = 69,bklv = 7,star = 1}
		},
		[3] = {
			jlr = {id = 3071320,cardId = 1101007,lv = 69,bklv = 7,star = 1},
			shl = {id = 3071321,cardId = 1102002,lv = 69,bklv = 7,star = 1}
		}
	},
	[30713] = {
		[1] = {
			jlr = {id = 3071430,cardId = 1101003,lv = 70,bklv = 8,star = 1},
			shl = {id = 3071431,cardId = 1102005,lv = 70,bklv = 8,star = 1}
		},
		[2] = {
			jlr = {id = 3071430,cardId = 1101011,lv = 70,bklv = 7,star = 1},
			shl = {id = 3071431,cardId = 1102017,lv = 70,bklv = 7,star = 1}
		},
		[3] = {
			jlr = {id = 3071430,cardId = 1101007,lv = 70,bklv = 7,star = 1},
			shl = {id = 3071431,cardId = 1102002,lv = 70,bklv = 7,star = 1}
		}
	},
	[30714] = {
		[1] = {
			jlr = {id = 3071540,cardId = 1101003,lv = 70,bklv = 8,star = 1},
			shl = {id = 3071541,cardId = 1102005,lv = 70,bklv = 8,star = 1}
		},
		[2] = {
			jlr = {id = 3071540,cardId = 1101011,lv = 70,bklv = 8,star = 1},
			shl = {id = 3071541,cardId = 1102017,lv = 70,bklv = 8,star = 1}
		},
		[3] = {
			jlr = {id = 3071540,cardId = 1101007,lv = 70,bklv = 7,star = 1},
			shl = {id = 3071541,cardId = 1102002,lv = 70,bklv = 7,star = 1}
		}
	},
	[30715] = {
		[1] = {
			jlr = {id = 3071650,cardId = 1101003,lv = 70,bklv = 8,star = 1},
			shl = {id = 3071651,cardId = 1102005,lv = 70,bklv = 8,star = 1}
		},
		[2] = {
			jlr = {id = 3071650,cardId = 1101011,lv = 70,bklv = 8,star = 1},
			shl = {id = 3071651,cardId = 1102017,lv = 70,bklv = 8,star = 1}
		},
		[3] = {
			jlr = {id = 3071650,cardId = 1101007,lv = 70,bklv = 8,star = 1},
			shl = {id = 3071651,cardId = 1102002,lv = 70,bklv = 8,star = 1}
		}
	},
	[30801] = {
		[1] = {
			jlr = {id = 3080110,cardId = 1101003,lv = 74,bklv = 8,star = 1},
			shl = {id = 3080111,cardId = 1102005,lv = 74,bklv = 8,star = 1}
		},
		[2] = {
			jlr = {id = 3080110,cardId = 1101011,lv = 74,bklv = 8,star = 1},
			shl = {id = 3080111,cardId = 1102017,lv = 74,bklv = 8,star = 1}
		},
		[3] = {
			jlr = {id = 3080110,cardId = 1101007,lv = 74,bklv = 8,star = 1},
			shl = {id = 3080111,cardId = 1102002,lv = 74,bklv = 8,star = 1}
		}
	},
	[30802] = {
		[1] = {
			jlr = {id = 3080220,cardId = 1101003,lv = 74,bklv = 8,star = 1},
			shl = {id = 3080221,cardId = 1102005,lv = 74,bklv = 8,star = 1}
		},
		[2] = {
			jlr = {id = 3080220,cardId = 1101011,lv = 74,bklv = 8,star = 1},
			shl = {id = 3080221,cardId = 1102017,lv = 74,bklv = 8,star = 1}
		},
		[3] = {
			jlr = {id = 3080220,cardId = 1101007,lv = 74,bklv = 8,star = 1},
			shl = {id = 3080221,cardId = 1102002,lv = 74,bklv = 8,star = 1}
		}
	},
	[30803] = {
		[1] = {
			jlr = {id = 3080330,cardId = 1101003,lv = 75,bklv = 8,star = 1},
			shl = {id = 3080331,cardId = 1102005,lv = 75,bklv = 8,star = 1}
		},
		[2] = {
			jlr = {id = 3080330,cardId = 1101011,lv = 75,bklv = 8,star = 1},
			shl = {id = 3080331,cardId = 1102017,lv = 75,bklv = 8,star = 1}
		},
		[3] = {
			jlr = {id = 3080330,cardId = 1101007,lv = 75,bklv = 8,star = 1},
			shl = {id = 3080331,cardId = 1102002,lv = 75,bklv = 8,star = 1}
		}
	},
	[30804] = {
		[1] = {
			jlr = {id = 3080440,cardId = 1101003,lv = 75,bklv = 8,star = 1},
			shl = {id = 3080441,cardId = 1102005,lv = 75,bklv = 8,star = 1}
		},
		[2] = {
			jlr = {id = 3080440,cardId = 1101011,lv = 75,bklv = 8,star = 1},
			shl = {id = 3080441,cardId = 1102017,lv = 75,bklv = 8,star = 1}
		},
		[3] = {
			jlr = {id = 3080440,cardId = 1101007,lv = 75,bklv = 8,star = 1},
			shl = {id = 3080441,cardId = 1102002,lv = 75,bklv = 8,star = 1}
		}
	},
	[30805] = {
		[1] = {
			jlr = {id = 3080550,cardId = 1101003,lv = 76,bklv = 8,star = 2},
			shl = {id = 3080551,cardId = 1102005,lv = 76,bklv = 8,star = 2}
		},
		[2] = {
			jlr = {id = 3080550,cardId = 1101011,lv = 76,bklv = 8,star = 2},
			shl = {id = 3080551,cardId = 1102017,lv = 76,bklv = 8,star = 2}
		},
		[3] = {
			jlr = {id = 3080550,cardId = 1101007,lv = 76,bklv = 8,star = 2},
			shl = {id = 3080551,cardId = 1102002,lv = 76,bklv = 8,star = 2}
		}
	},
	[30806] = {
		[1] = {
			jlr = {id = 3080660,cardId = 1101003,lv = 76,bklv = 8,star = 2},
			shl = {id = 3080661,cardId = 1102005,lv = 76,bklv = 8,star = 2}
		},
		[2] = {
			jlr = {id = 3080660,cardId = 1101011,lv = 76,bklv = 8,star = 2},
			shl = {id = 3080661,cardId = 1102017,lv = 76,bklv = 8,star = 2}
		},
		[3] = {
			jlr = {id = 3080660,cardId = 1101007,lv = 76,bklv = 8,star = 2},
			shl = {id = 3080661,cardId = 1102002,lv = 76,bklv = 8,star = 2}
		}
	},
	[30807] = {
		[1] = {
			jlr = {id = 3080770,cardId = 1101003,lv = 77,bklv = 8,star = 2},
			shl = {id = 3080771,cardId = 1102005,lv = 77,bklv = 8,star = 2}
		},
		[2] = {
			jlr = {id = 3080770,cardId = 1101011,lv = 77,bklv = 8,star = 2},
			shl = {id = 3080771,cardId = 1102017,lv = 77,bklv = 8,star = 2}
		},
		[3] = {
			jlr = {id = 3080770,cardId = 1101007,lv = 77,bklv = 8,star = 2},
			shl = {id = 3080771,cardId = 1102002,lv = 77,bklv = 8,star = 2}
		}
	},
	[30808] = {
		[1] = {
			jlr = {id = 3080880,cardId = 1101003,lv = 77,bklv = 8,star = 2},
			shl = {id = 3080881,cardId = 1102005,lv = 77,bklv = 8,star = 2}
		},
		[2] = {
			jlr = {id = 3080880,cardId = 1101011,lv = 77,bklv = 8,star = 2},
			shl = {id = 3080881,cardId = 1102017,lv = 77,bklv = 8,star = 2}
		},
		[3] = {
			jlr = {id = 3080880,cardId = 1101007,lv = 77,bklv = 8,star = 2},
			shl = {id = 3080881,cardId = 1102002,lv = 77,bklv = 8,star = 2}
		}
	},
	[30809] = {
		[1] = {
			jlr = {id = 3080990,cardId = 1101003,lv = 78,bklv = 8,star = 2},
			shl = {id = 3080991,cardId = 1102005,lv = 78,bklv = 8,star = 2}
		},
		[2] = {
			jlr = {id = 3080990,cardId = 1101011,lv = 78,bklv = 8,star = 2},
			shl = {id = 3080991,cardId = 1102017,lv = 78,bklv = 8,star = 2}
		},
		[3] = {
			jlr = {id = 3080990,cardId = 1101007,lv = 78,bklv = 8,star = 2},
			shl = {id = 3080991,cardId = 1102002,lv = 78,bklv = 8,star = 2}
		}
	},
	[30810] = {
		[1] = {
			jlr = {id = 3081100,cardId = 1101003,lv = 78,bklv = 8,star = 2},
			shl = {id = 3081101,cardId = 1102005,lv = 78,bklv = 8,star = 2}
		},
		[2] = {
			jlr = {id = 3081100,cardId = 1101011,lv = 78,bklv = 8,star = 2},
			shl = {id = 3081101,cardId = 1102017,lv = 78,bklv = 8,star = 2}
		},
		[3] = {
			jlr = {id = 3081100,cardId = 1101007,lv = 78,bklv = 8,star = 2},
			shl = {id = 3081101,cardId = 1102002,lv = 78,bklv = 8,star = 2}
		}
	},
	[30811] = {
		[1] = {
			jlr = {id = 3081210,cardId = 1101003,lv = 79,bklv = 8,star = 2},
			shl = {id = 3081211,cardId = 1102005,lv = 79,bklv = 8,star = 2}
		},
		[2] = {
			jlr = {id = 3081210,cardId = 1101011,lv = 79,bklv = 8,star = 2},
			shl = {id = 3081211,cardId = 1102017,lv = 79,bklv = 8,star = 2}
		},
		[3] = {
			jlr = {id = 3081210,cardId = 1101007,lv = 79,bklv = 8,star = 2},
			shl = {id = 3081211,cardId = 1102002,lv = 79,bklv = 8,star = 2}
		}
	},
	[30812] = {
		[1] = {
			jlr = {id = 3081320,cardId = 1101003,lv = 79,bklv = 8,star = 2},
			shl = {id = 3081321,cardId = 1102005,lv = 79,bklv = 8,star = 2}
		},
		[2] = {
			jlr = {id = 3081320,cardId = 1101011,lv = 79,bklv = 8,star = 2},
			shl = {id = 3081321,cardId = 1102017,lv = 79,bklv = 8,star = 2}
		},
		[3] = {
			jlr = {id = 3081320,cardId = 1101007,lv = 79,bklv = 8,star = 2},
			shl = {id = 3081321,cardId = 1102002,lv = 79,bklv = 8,star = 2}
		}
	},
	[30813] = {
		[1] = {
			jlr = {id = 3081430,cardId = 1101003,lv = 80,bklv = 9,star = 2},
			shl = {id = 3081431,cardId = 1102005,lv = 80,bklv = 9,star = 2}
		},
		[2] = {
			jlr = {id = 3081430,cardId = 1101011,lv = 80,bklv = 8,star = 2},
			shl = {id = 3081431,cardId = 1102017,lv = 80,bklv = 8,star = 2}
		},
		[3] = {
			jlr = {id = 3081430,cardId = 1101007,lv = 80,bklv = 8,star = 2},
			shl = {id = 3081431,cardId = 1102002,lv = 80,bklv = 8,star = 2}
		}
	},
	[30814] = {
		[1] = {
			jlr = {id = 3081540,cardId = 1101003,lv = 80,bklv = 9,star = 2},
			shl = {id = 3081541,cardId = 1102005,lv = 80,bklv = 9,star = 2}
		},
		[2] = {
			jlr = {id = 3081540,cardId = 1101011,lv = 80,bklv = 9,star = 2},
			shl = {id = 3081541,cardId = 1102017,lv = 80,bklv = 9,star = 2}
		},
		[3] = {
			jlr = {id = 3081540,cardId = 1101007,lv = 80,bklv = 8,star = 2},
			shl = {id = 3081541,cardId = 1102002,lv = 80,bklv = 8,star = 2}
		}
	},
	[30815] = {
		[1] = {
			jlr = {id = 3081650,cardId = 1101003,lv = 80,bklv = 9,star = 2},
			shl = {id = 3081651,cardId = 1102005,lv = 80,bklv = 9,star = 2}
		},
		[2] = {
			jlr = {id = 3081650,cardId = 1101011,lv = 80,bklv = 9,star = 2},
			shl = {id = 3081651,cardId = 1102017,lv = 80,bklv = 9,star = 2}
		},
		[3] = {
			jlr = {id = 3081650,cardId = 1101007,lv = 80,bklv = 9,star = 2},
			shl = {id = 3081651,cardId = 1102002,lv = 80,bklv = 9,star = 2}
		}
	},
	[30901] = {
		[1] = {
			jlr = {id = 3090110,cardId = 1101003,lv = 84,bklv = 9,star = 2},
			shl = {id = 3090111,cardId = 1102005,lv = 84,bklv = 9,star = 2}
		},
		[2] = {
			jlr = {id = 3090110,cardId = 1101011,lv = 84,bklv = 9,star = 2},
			shl = {id = 3090111,cardId = 1102017,lv = 84,bklv = 9,star = 2}
		},
		[3] = {
			jlr = {id = 3090110,cardId = 1101007,lv = 84,bklv = 9,star = 2},
			shl = {id = 3090111,cardId = 1102002,lv = 84,bklv = 9,star = 2}
		}
	},
	[30902] = {
		[1] = {
			jlr = {id = 3090220,cardId = 1101003,lv = 85,bklv = 10,star = 2},
			shl = {id = 3090221,cardId = 1102005,lv = 85,bklv = 10,star = 2}
		},
		[2] = {
			jlr = {id = 3090220,cardId = 1101011,lv = 85,bklv = 9,star = 2},
			shl = {id = 3090221,cardId = 1102017,lv = 85,bklv = 9,star = 2}
		},
		[3] = {
			jlr = {id = 3090220,cardId = 1101007,lv = 85,bklv = 9,star = 2},
			shl = {id = 3090221,cardId = 1102002,lv = 85,bklv = 9,star = 2}
		}
	},
	[30903] = {
		[1] = {
			jlr = {id = 3090330,cardId = 1101003,lv = 85,bklv = 10,star = 2},
			shl = {id = 3090331,cardId = 1102005,lv = 85,bklv = 10,star = 2}
		},
		[2] = {
			jlr = {id = 3090330,cardId = 1101011,lv = 85,bklv = 10,star = 2},
			shl = {id = 3090331,cardId = 1102017,lv = 85,bklv = 10,star = 2}
		},
		[3] = {
			jlr = {id = 3090330,cardId = 1101007,lv = 85,bklv = 9,star = 2},
			shl = {id = 3090331,cardId = 1102002,lv = 85,bklv = 9,star = 2}
		}
	},
	[30904] = {
		[1] = {
			jlr = {id = 3090440,cardId = 1101003,lv = 85,bklv = 10,star = 2},
			shl = {id = 3090441,cardId = 1102005,lv = 85,bklv = 10,star = 2}
		},
		[2] = {
			jlr = {id = 3090440,cardId = 1101011,lv = 85,bklv = 10,star = 2},
			shl = {id = 3090441,cardId = 1102017,lv = 85,bklv = 10,star = 2}
		},
		[3] = {
			jlr = {id = 3090440,cardId = 1101007,lv = 85,bklv = 10,star = 2},
			shl = {id = 3090441,cardId = 1102002,lv = 85,bklv = 10,star = 2}
		}
	},
	[30905] = {
		[1] = {
			jlr = {id = 3090550,cardId = 1101003,lv = 86,bklv = 10,star = 2},
			shl = {id = 3090551,cardId = 1102005,lv = 86,bklv = 10,star = 2}
		},
		[2] = {
			jlr = {id = 3090550,cardId = 1101011,lv = 86,bklv = 10,star = 2},
			shl = {id = 3090551,cardId = 1102017,lv = 86,bklv = 10,star = 2}
		},
		[3] = {
			jlr = {id = 3090550,cardId = 1101007,lv = 86,bklv = 10,star = 2},
			shl = {id = 3090551,cardId = 1102002,lv = 86,bklv = 10,star = 2}
		}
	},
	[30906] = {
		[1] = {
			jlr = {id = 3090660,cardId = 1101003,lv = 86,bklv = 10,star = 2},
			shl = {id = 3090661,cardId = 1102005,lv = 86,bklv = 10,star = 2}
		},
		[2] = {
			jlr = {id = 3090660,cardId = 1101011,lv = 86,bklv = 10,star = 2},
			shl = {id = 3090661,cardId = 1102017,lv = 86,bklv = 10,star = 2}
		},
		[3] = {
			jlr = {id = 3090660,cardId = 1101007,lv = 86,bklv = 10,star = 2},
			shl = {id = 3090661,cardId = 1102002,lv = 86,bklv = 10,star = 2}
		}
	},
	[30907] = {
		[1] = {
			jlr = {id = 3090770,cardId = 1101003,lv = 87,bklv = 10,star = 2},
			shl = {id = 3090771,cardId = 1102005,lv = 87,bklv = 10,star = 2}
		},
		[2] = {
			jlr = {id = 3090770,cardId = 1101011,lv = 87,bklv = 10,star = 2},
			shl = {id = 3090771,cardId = 1102017,lv = 87,bklv = 10,star = 2}
		},
		[3] = {
			jlr = {id = 3090770,cardId = 1101007,lv = 87,bklv = 10,star = 2},
			shl = {id = 3090771,cardId = 1102002,lv = 87,bklv = 10,star = 2}
		}
	},
	[30908] = {
		[1] = {
			jlr = {id = 3090880,cardId = 1101003,lv = 87,bklv = 10,star = 2},
			shl = {id = 3090881,cardId = 1102005,lv = 87,bklv = 10,star = 2}
		},
		[2] = {
			jlr = {id = 3090880,cardId = 1101011,lv = 87,bklv = 10,star = 2},
			shl = {id = 3090881,cardId = 1102017,lv = 87,bklv = 10,star = 2}
		},
		[3] = {
			jlr = {id = 3090880,cardId = 1101007,lv = 87,bklv = 10,star = 2},
			shl = {id = 3090881,cardId = 1102002,lv = 87,bklv = 10,star = 2}
		}
	},
	[30909] = {
		[1] = {
			jlr = {id = 3090990,cardId = 1101003,lv = 88,bklv = 10,star = 2},
			shl = {id = 3090991,cardId = 1102005,lv = 88,bklv = 10,star = 2}
		},
		[2] = {
			jlr = {id = 3090990,cardId = 1101011,lv = 88,bklv = 10,star = 2},
			shl = {id = 3090991,cardId = 1102017,lv = 88,bklv = 10,star = 2}
		},
		[3] = {
			jlr = {id = 3090990,cardId = 1101007,lv = 88,bklv = 10,star = 2},
			shl = {id = 3090991,cardId = 1102002,lv = 88,bklv = 10,star = 2}
		}
	},
	[30910] = {
		[1] = {
			jlr = {id = 3091100,cardId = 1101003,lv = 88,bklv = 10,star = 2},
			shl = {id = 3091101,cardId = 1102005,lv = 88,bklv = 10,star = 2}
		},
		[2] = {
			jlr = {id = 3091100,cardId = 1101011,lv = 88,bklv = 10,star = 2},
			shl = {id = 3091101,cardId = 1102017,lv = 88,bklv = 10,star = 2}
		},
		[3] = {
			jlr = {id = 3091100,cardId = 1101007,lv = 88,bklv = 10,star = 2},
			shl = {id = 3091101,cardId = 1102002,lv = 88,bklv = 10,star = 2}
		}
	},
	[30911] = {
		[1] = {
			jlr = {id = 3091210,cardId = 1101003,lv = 89,bklv = 10,star = 2},
			shl = {id = 3091211,cardId = 1102005,lv = 89,bklv = 10,star = 2}
		},
		[2] = {
			jlr = {id = 3091210,cardId = 1101011,lv = 89,bklv = 10,star = 2},
			shl = {id = 3091211,cardId = 1102017,lv = 89,bklv = 10,star = 2}
		},
		[3] = {
			jlr = {id = 3091210,cardId = 1101007,lv = 89,bklv = 10,star = 2},
			shl = {id = 3091211,cardId = 1102002,lv = 89,bklv = 10,star = 2}
		}
	},
	[30912] = {
		[1] = {
			jlr = {id = 3091320,cardId = 1101003,lv = 89,bklv = 10,star = 2},
			shl = {id = 3091321,cardId = 1102005,lv = 89,bklv = 10,star = 2}
		},
		[2] = {
			jlr = {id = 3091320,cardId = 1101011,lv = 89,bklv = 10,star = 2},
			shl = {id = 3091321,cardId = 1102017,lv = 89,bklv = 10,star = 2}
		},
		[3] = {
			jlr = {id = 3091320,cardId = 1101007,lv = 89,bklv = 10,star = 2},
			shl = {id = 3091321,cardId = 1102002,lv = 89,bklv = 10,star = 2}
		}
	},
	[30913] = {
		[1] = {
			jlr = {id = 3091430,cardId = 1101003,lv = 90,bklv = 11,star = 2},
			shl = {id = 3091431,cardId = 1102005,lv = 90,bklv = 11,star = 2}
		},
		[2] = {
			jlr = {id = 3091430,cardId = 1101011,lv = 90,bklv = 10,star = 2},
			shl = {id = 3091431,cardId = 1102017,lv = 90,bklv = 10,star = 2}
		},
		[3] = {
			jlr = {id = 3091430,cardId = 1101007,lv = 90,bklv = 10,star = 2},
			shl = {id = 3091431,cardId = 1102002,lv = 90,bklv = 10,star = 2}
		}
	},
	[30914] = {
		[1] = {
			jlr = {id = 3091540,cardId = 1101003,lv = 90,bklv = 11,star = 2},
			shl = {id = 3091541,cardId = 1102005,lv = 90,bklv = 11,star = 2}
		},
		[2] = {
			jlr = {id = 3091540,cardId = 1101011,lv = 90,bklv = 11,star = 2},
			shl = {id = 3091541,cardId = 1102017,lv = 90,bklv = 11,star = 2}
		},
		[3] = {
			jlr = {id = 3091540,cardId = 1101007,lv = 90,bklv = 10,star = 2},
			shl = {id = 3091541,cardId = 1102002,lv = 90,bklv = 10,star = 2}
		}
	},
	[30915] = {
		[1] = {
			jlr = {id = 3091650,cardId = 1101003,lv = 90,bklv = 11,star = 2},
			shl = {id = 3091651,cardId = 1102005,lv = 90,bklv = 11,star = 2}
		},
		[2] = {
			jlr = {id = 3091650,cardId = 1101011,lv = 90,bklv = 11,star = 2},
			shl = {id = 3091651,cardId = 1102017,lv = 90,bklv = 11,star = 2}
		},
		[3] = {
			jlr = {id = 3091650,cardId = 1101007,lv = 90,bklv = 11,star = 2},
			shl = {id = 3091651,cardId = 1102002,lv = 90,bklv = 11,star = 2}
		}
	},
	[31001] = {
		[1] = {
			jlr = {id = 3100110,cardId = 1101003,lv = 94,bklv = 11,star = 2},
			shl = {id = 3100111,cardId = 1102005,lv = 94,bklv = 11,star = 2}
		},
		[2] = {
			jlr = {id = 3100110,cardId = 1101011,lv = 94,bklv = 11,star = 2},
			shl = {id = 3100111,cardId = 1102017,lv = 94,bklv = 11,star = 2}
		},
		[3] = {
			jlr = {id = 3100110,cardId = 1101007,lv = 94,bklv = 11,star = 2},
			shl = {id = 3100111,cardId = 1102002,lv = 94,bklv = 11,star = 2}
		}
	},
	[31002] = {
		[1] = {
			jlr = {id = 3100220,cardId = 1101003,lv = 95,bklv = 11,star = 2},
			shl = {id = 3100221,cardId = 1102005,lv = 95,bklv = 11,star = 2}
		},
		[2] = {
			jlr = {id = 3100220,cardId = 1101011,lv = 95,bklv = 11,star = 2},
			shl = {id = 3100221,cardId = 1102017,lv = 95,bklv = 11,star = 2}
		},
		[3] = {
			jlr = {id = 3100220,cardId = 1101007,lv = 95,bklv = 11,star = 2},
			shl = {id = 3100221,cardId = 1102002,lv = 95,bklv = 11,star = 2}
		}
	},
	[31003] = {
		[1] = {
			jlr = {id = 3100330,cardId = 1101003,lv = 95,bklv = 11,star = 2},
			shl = {id = 3100331,cardId = 1102005,lv = 95,bklv = 11,star = 2}
		},
		[2] = {
			jlr = {id = 3100330,cardId = 1101011,lv = 95,bklv = 11,star = 2},
			shl = {id = 3100331,cardId = 1102017,lv = 95,bklv = 11,star = 2}
		},
		[3] = {
			jlr = {id = 3100330,cardId = 1101007,lv = 95,bklv = 11,star = 2},
			shl = {id = 3100331,cardId = 1102002,lv = 95,bklv = 11,star = 2}
		}
	},
	[31004] = {
		[1] = {
			jlr = {id = 3100440,cardId = 1101003,lv = 95,bklv = 12,star = 2},
			shl = {id = 3100441,cardId = 1102005,lv = 95,bklv = 12,star = 2}
		},
		[2] = {
			jlr = {id = 3100440,cardId = 1101011,lv = 95,bklv = 11,star = 2},
			shl = {id = 3100441,cardId = 1102017,lv = 95,bklv = 11,star = 2}
		},
		[3] = {
			jlr = {id = 3100440,cardId = 1101007,lv = 95,bklv = 11,star = 2},
			shl = {id = 3100441,cardId = 1102002,lv = 95,bklv = 11,star = 2}
		}
	},
	[31005] = {
		[1] = {
			jlr = {id = 3100550,cardId = 1101003,lv = 96,bklv = 12,star = 2},
			shl = {id = 3100551,cardId = 1102005,lv = 96,bklv = 12,star = 2}
		},
		[2] = {
			jlr = {id = 3100550,cardId = 1101011,lv = 96,bklv = 12,star = 2},
			shl = {id = 3100551,cardId = 1102017,lv = 96,bklv = 12,star = 2}
		},
		[3] = {
			jlr = {id = 3100550,cardId = 1101007,lv = 96,bklv = 11,star = 2},
			shl = {id = 3100551,cardId = 1102002,lv = 96,bklv = 11,star = 2}
		}
	},
	[31006] = {
		[1] = {
			jlr = {id = 3100660,cardId = 1101003,lv = 96,bklv = 12,star = 2},
			shl = {id = 3100661,cardId = 1102005,lv = 96,bklv = 12,star = 2}
		},
		[2] = {
			jlr = {id = 3100660,cardId = 1101011,lv = 96,bklv = 12,star = 2},
			shl = {id = 3100661,cardId = 1102017,lv = 96,bklv = 12,star = 2}
		},
		[3] = {
			jlr = {id = 3100660,cardId = 1101007,lv = 96,bklv = 12,star = 2},
			shl = {id = 3100661,cardId = 1102002,lv = 96,bklv = 12,star = 2}
		}
	},
	[31007] = {
		[1] = {
			jlr = {id = 3100770,cardId = 1101003,lv = 97,bklv = 12,star = 2},
			shl = {id = 3100771,cardId = 1102005,lv = 97,bklv = 12,star = 2}
		},
		[2] = {
			jlr = {id = 3100770,cardId = 1101011,lv = 97,bklv = 12,star = 2},
			shl = {id = 3100771,cardId = 1102017,lv = 97,bklv = 12,star = 2}
		},
		[3] = {
			jlr = {id = 3100770,cardId = 1101007,lv = 97,bklv = 12,star = 2},
			shl = {id = 3100771,cardId = 1102002,lv = 97,bklv = 12,star = 2}
		}
	},
	[31008] = {
		[1] = {
			jlr = {id = 3100880,cardId = 1101003,lv = 97,bklv = 12,star = 2},
			shl = {id = 3100881,cardId = 1102005,lv = 97,bklv = 12,star = 2}
		},
		[2] = {
			jlr = {id = 3100880,cardId = 1101011,lv = 97,bklv = 12,star = 2},
			shl = {id = 3100881,cardId = 1102017,lv = 97,bklv = 12,star = 2}
		},
		[3] = {
			jlr = {id = 3100880,cardId = 1101007,lv = 97,bklv = 12,star = 2},
			shl = {id = 3100881,cardId = 1102002,lv = 97,bklv = 12,star = 2}
		}
	},
	[31009] = {
		[1] = {
			jlr = {id = 3100990,cardId = 1101003,lv = 98,bklv = 12,star = 2},
			shl = {id = 3100991,cardId = 1102005,lv = 98,bklv = 12,star = 2}
		},
		[2] = {
			jlr = {id = 3100990,cardId = 1101011,lv = 98,bklv = 12,star = 2},
			shl = {id = 3100991,cardId = 1102017,lv = 98,bklv = 12,star = 2}
		},
		[3] = {
			jlr = {id = 3100990,cardId = 1101007,lv = 98,bklv = 12,star = 2},
			shl = {id = 3100991,cardId = 1102002,lv = 98,bklv = 12,star = 2}
		}
	},
	[31010] = {
		[1] = {
			jlr = {id = 3101100,cardId = 1101003,lv = 98,bklv = 12,star = 2},
			shl = {id = 3101101,cardId = 1102005,lv = 98,bklv = 12,star = 2}
		},
		[2] = {
			jlr = {id = 3101100,cardId = 1101011,lv = 98,bklv = 12,star = 2},
			shl = {id = 3101101,cardId = 1102017,lv = 98,bklv = 12,star = 2}
		},
		[3] = {
			jlr = {id = 3101100,cardId = 1101007,lv = 98,bklv = 12,star = 2},
			shl = {id = 3101101,cardId = 1102002,lv = 98,bklv = 12,star = 2}
		}
	},
	[31011] = {
		[1] = {
			jlr = {id = 3101210,cardId = 1101003,lv = 99,bklv = 12,star = 2},
			shl = {id = 3101211,cardId = 1102005,lv = 99,bklv = 12,star = 2}
		},
		[2] = {
			jlr = {id = 3101210,cardId = 1101011,lv = 99,bklv = 12,star = 2},
			shl = {id = 3101211,cardId = 1102017,lv = 99,bklv = 12,star = 2}
		},
		[3] = {
			jlr = {id = 3101210,cardId = 1101007,lv = 99,bklv = 12,star = 2},
			shl = {id = 3101211,cardId = 1102002,lv = 99,bklv = 12,star = 2}
		}
	},
	[31012] = {
		[1] = {
			jlr = {id = 3101320,cardId = 1101003,lv = 99,bklv = 12,star = 2},
			shl = {id = 3101321,cardId = 1102005,lv = 99,bklv = 12,star = 2}
		},
		[2] = {
			jlr = {id = 3101320,cardId = 1101011,lv = 99,bklv = 12,star = 2},
			shl = {id = 3101321,cardId = 1102017,lv = 99,bklv = 12,star = 2}
		},
		[3] = {
			jlr = {id = 3101320,cardId = 1101007,lv = 99,bklv = 12,star = 2},
			shl = {id = 3101321,cardId = 1102002,lv = 99,bklv = 12,star = 2}
		}
	},
	[31013] = {
		[1] = {
			jlr = {id = 3101430,cardId = 1101003,lv = 100,bklv = 13,star = 2},
			shl = {id = 3101431,cardId = 1102005,lv = 100,bklv = 13,star = 2}
		},
		[2] = {
			jlr = {id = 3101430,cardId = 1101011,lv = 100,bklv = 12,star = 2},
			shl = {id = 3101431,cardId = 1102017,lv = 100,bklv = 12,star = 2}
		},
		[3] = {
			jlr = {id = 3101430,cardId = 1101007,lv = 100,bklv = 12,star = 2},
			shl = {id = 3101431,cardId = 1102002,lv = 100,bklv = 12,star = 2}
		}
	},
	[31014] = {
		[1] = {
			jlr = {id = 3101540,cardId = 1101003,lv = 100,bklv = 13,star = 2},
			shl = {id = 3101541,cardId = 1102005,lv = 100,bklv = 13,star = 2}
		},
		[2] = {
			jlr = {id = 3101540,cardId = 1101011,lv = 100,bklv = 13,star = 2},
			shl = {id = 3101541,cardId = 1102017,lv = 100,bklv = 13,star = 2}
		},
		[3] = {
			jlr = {id = 3101540,cardId = 1101007,lv = 100,bklv = 12,star = 2},
			shl = {id = 3101541,cardId = 1102002,lv = 100,bklv = 12,star = 2}
		}
	},
	[31015] = {
		[1] = {
			jlr = {id = 3101650,cardId = 1101003,lv = 100,bklv = 13,star = 3},
			shl = {id = 3101651,cardId = 1102005,lv = 100,bklv = 13,star = 3}
		},
		[2] = {
			jlr = {id = 3101650,cardId = 1101011,lv = 100,bklv = 13,star = 3},
			shl = {id = 3101651,cardId = 1102017,lv = 100,bklv = 13,star = 3}
		},
		[3] = {
			jlr = {id = 3101650,cardId = 1101007,lv = 100,bklv = 13,star = 3},
			shl = {id = 3101651,cardId = 1102002,lv = 100,bklv = 13,star = 3}
		}
	},
	[31101] = {
		[1] = {
			jlr = {id = 3110110,cardId = 1101003,lv = 104,bklv = 13,star = 3},
			shl = {id = 3110111,cardId = 1102005,lv = 104,bklv = 13,star = 3}
		},
		[2] = {
			jlr = {id = 3110110,cardId = 1101011,lv = 104,bklv = 13,star = 3},
			shl = {id = 3110111,cardId = 1102017,lv = 104,bklv = 13,star = 3}
		},
		[3] = {
			jlr = {id = 3110110,cardId = 1101007,lv = 104,bklv = 13,star = 3},
			shl = {id = 3110111,cardId = 1102002,lv = 104,bklv = 13,star = 3}
		}
	},
	[31102] = {
		[1] = {
			jlr = {id = 3110220,cardId = 1101003,lv = 105,bklv = 14,star = 3},
			shl = {id = 3110221,cardId = 1102005,lv = 105,bklv = 14,star = 3}
		},
		[2] = {
			jlr = {id = 3110220,cardId = 1101011,lv = 105,bklv = 13,star = 3},
			shl = {id = 3110221,cardId = 1102017,lv = 105,bklv = 13,star = 3}
		},
		[3] = {
			jlr = {id = 3110220,cardId = 1101007,lv = 105,bklv = 13,star = 3},
			shl = {id = 3110221,cardId = 1102002,lv = 105,bklv = 13,star = 3}
		}
	},
	[31103] = {
		[1] = {
			jlr = {id = 3110330,cardId = 1101003,lv = 105,bklv = 14,star = 3},
			shl = {id = 3110331,cardId = 1102005,lv = 105,bklv = 14,star = 3}
		},
		[2] = {
			jlr = {id = 3110330,cardId = 1101011,lv = 105,bklv = 14,star = 3},
			shl = {id = 3110331,cardId = 1102017,lv = 105,bklv = 14,star = 3}
		},
		[3] = {
			jlr = {id = 3110330,cardId = 1101007,lv = 105,bklv = 13,star = 3},
			shl = {id = 3110331,cardId = 1102002,lv = 105,bklv = 13,star = 3}
		}
	},
	[31104] = {
		[1] = {
			jlr = {id = 3110440,cardId = 1101003,lv = 105,bklv = 14,star = 3},
			shl = {id = 3110441,cardId = 1102005,lv = 105,bklv = 14,star = 3}
		},
		[2] = {
			jlr = {id = 3110440,cardId = 1101011,lv = 105,bklv = 14,star = 3},
			shl = {id = 3110441,cardId = 1102017,lv = 105,bklv = 14,star = 3}
		},
		[3] = {
			jlr = {id = 3110440,cardId = 1101007,lv = 105,bklv = 14,star = 3},
			shl = {id = 3110441,cardId = 1102002,lv = 105,bklv = 14,star = 3}
		}
	},
	[31105] = {
		[1] = {
			jlr = {id = 3110550,cardId = 1101003,lv = 106,bklv = 14,star = 3},
			shl = {id = 3110551,cardId = 1102005,lv = 106,bklv = 14,star = 3}
		},
		[2] = {
			jlr = {id = 3110550,cardId = 1101011,lv = 106,bklv = 14,star = 3},
			shl = {id = 3110551,cardId = 1102017,lv = 106,bklv = 14,star = 3}
		},
		[3] = {
			jlr = {id = 3110550,cardId = 1101007,lv = 106,bklv = 14,star = 3},
			shl = {id = 3110551,cardId = 1102002,lv = 106,bklv = 14,star = 3}
		}
	},
	[31106] = {
		[1] = {
			jlr = {id = 3110660,cardId = 1101003,lv = 106,bklv = 14,star = 3},
			shl = {id = 3110661,cardId = 1102005,lv = 106,bklv = 14,star = 3}
		},
		[2] = {
			jlr = {id = 3110660,cardId = 1101011,lv = 106,bklv = 14,star = 3},
			shl = {id = 3110661,cardId = 1102017,lv = 106,bklv = 14,star = 3}
		},
		[3] = {
			jlr = {id = 3110660,cardId = 1101007,lv = 106,bklv = 14,star = 3},
			shl = {id = 3110661,cardId = 1102002,lv = 106,bklv = 14,star = 3}
		}
	},
	[31107] = {
		[1] = {
			jlr = {id = 3110770,cardId = 1101003,lv = 107,bklv = 14,star = 3},
			shl = {id = 3110771,cardId = 1102005,lv = 107,bklv = 14,star = 3}
		},
		[2] = {
			jlr = {id = 3110770,cardId = 1101011,lv = 107,bklv = 14,star = 3},
			shl = {id = 3110771,cardId = 1102017,lv = 107,bklv = 14,star = 3}
		},
		[3] = {
			jlr = {id = 3110770,cardId = 1101007,lv = 107,bklv = 14,star = 3},
			shl = {id = 3110771,cardId = 1102002,lv = 107,bklv = 14,star = 3}
		}
	},
	[31108] = {
		[1] = {
			jlr = {id = 3110880,cardId = 1101003,lv = 107,bklv = 14,star = 3},
			shl = {id = 3110881,cardId = 1102005,lv = 107,bklv = 14,star = 3}
		},
		[2] = {
			jlr = {id = 3110880,cardId = 1101011,lv = 107,bklv = 14,star = 3},
			shl = {id = 3110881,cardId = 1102017,lv = 107,bklv = 14,star = 3}
		},
		[3] = {
			jlr = {id = 3110880,cardId = 1101007,lv = 107,bklv = 14,star = 3},
			shl = {id = 3110881,cardId = 1102002,lv = 107,bklv = 14,star = 3}
		}
	},
	[31109] = {
		[1] = {
			jlr = {id = 3110990,cardId = 1101003,lv = 108,bklv = 14,star = 3},
			shl = {id = 3110991,cardId = 1102005,lv = 108,bklv = 14,star = 3}
		},
		[2] = {
			jlr = {id = 3110990,cardId = 1101011,lv = 108,bklv = 14,star = 3},
			shl = {id = 3110991,cardId = 1102017,lv = 108,bklv = 14,star = 3}
		},
		[3] = {
			jlr = {id = 3110990,cardId = 1101007,lv = 108,bklv = 14,star = 3},
			shl = {id = 3110991,cardId = 1102002,lv = 108,bklv = 14,star = 3}
		}
	},
	[31110] = {
		[1] = {
			jlr = {id = 3111100,cardId = 1101003,lv = 108,bklv = 14,star = 3},
			shl = {id = 3111101,cardId = 1102005,lv = 108,bklv = 14,star = 3}
		},
		[2] = {
			jlr = {id = 3111100,cardId = 1101011,lv = 108,bklv = 14,star = 3},
			shl = {id = 3111101,cardId = 1102017,lv = 108,bklv = 14,star = 3}
		},
		[3] = {
			jlr = {id = 3111100,cardId = 1101007,lv = 108,bklv = 14,star = 3},
			shl = {id = 3111101,cardId = 1102002,lv = 108,bklv = 14,star = 3}
		}
	},
	[31111] = {
		[1] = {
			jlr = {id = 3111210,cardId = 1101003,lv = 109,bklv = 14,star = 3},
			shl = {id = 3111211,cardId = 1102005,lv = 109,bklv = 14,star = 3}
		},
		[2] = {
			jlr = {id = 3111210,cardId = 1101011,lv = 109,bklv = 14,star = 3},
			shl = {id = 3111211,cardId = 1102017,lv = 109,bklv = 14,star = 3}
		},
		[3] = {
			jlr = {id = 3111210,cardId = 1101007,lv = 109,bklv = 14,star = 3},
			shl = {id = 3111211,cardId = 1102002,lv = 109,bklv = 14,star = 3}
		}
	},
	[31112] = {
		[1] = {
			jlr = {id = 3111320,cardId = 1101003,lv = 109,bklv = 14,star = 3},
			shl = {id = 3111321,cardId = 1102005,lv = 109,bklv = 14,star = 3}
		},
		[2] = {
			jlr = {id = 3111320,cardId = 1101011,lv = 109,bklv = 14,star = 3},
			shl = {id = 3111321,cardId = 1102017,lv = 109,bklv = 14,star = 3}
		},
		[3] = {
			jlr = {id = 3111320,cardId = 1101007,lv = 109,bklv = 14,star = 3},
			shl = {id = 3111321,cardId = 1102002,lv = 109,bklv = 14,star = 3}
		}
	},
	[31113] = {
		[1] = {
			jlr = {id = 3111430,cardId = 1101003,lv = 110,bklv = 15,star = 3},
			shl = {id = 3111431,cardId = 1102005,lv = 110,bklv = 15,star = 3}
		},
		[2] = {
			jlr = {id = 3111430,cardId = 1101011,lv = 110,bklv = 14,star = 3},
			shl = {id = 3111431,cardId = 1102017,lv = 110,bklv = 14,star = 3}
		},
		[3] = {
			jlr = {id = 3111430,cardId = 1101007,lv = 110,bklv = 14,star = 3},
			shl = {id = 3111431,cardId = 1102002,lv = 110,bklv = 14,star = 3}
		}
	},
	[31114] = {
		[1] = {
			jlr = {id = 3111540,cardId = 1101003,lv = 110,bklv = 15,star = 3},
			shl = {id = 3111541,cardId = 1102005,lv = 110,bklv = 15,star = 3}
		},
		[2] = {
			jlr = {id = 3111540,cardId = 1101011,lv = 110,bklv = 15,star = 3},
			shl = {id = 3111541,cardId = 1102017,lv = 110,bklv = 15,star = 3}
		},
		[3] = {
			jlr = {id = 3111540,cardId = 1101007,lv = 110,bklv = 14,star = 3},
			shl = {id = 3111541,cardId = 1102002,lv = 110,bklv = 14,star = 3}
		}
	},
	[31115] = {
		[1] = {
			jlr = {id = 3111650,cardId = 1101003,lv = 110,bklv = 15,star = 3},
			shl = {id = 3111651,cardId = 1102005,lv = 110,bklv = 15,star = 3}
		},
		[2] = {
			jlr = {id = 3111650,cardId = 1101011,lv = 110,bklv = 15,star = 3},
			shl = {id = 3111651,cardId = 1102017,lv = 110,bklv = 15,star = 3}
		},
		[3] = {
			jlr = {id = 3111650,cardId = 1101007,lv = 110,bklv = 15,star = 3},
			shl = {id = 3111651,cardId = 1102002,lv = 110,bklv = 15,star = 3}
		}
	},
	[31201] = {
		[1] = {
			jlr = {id = 3120110,cardId = 1101003,lv = 114,bklv = 15,star = 3},
			shl = {id = 3120111,cardId = 1102005,lv = 114,bklv = 15,star = 3}
		},
		[2] = {
			jlr = {id = 3120110,cardId = 1101011,lv = 114,bklv = 15,star = 3},
			shl = {id = 3120111,cardId = 1102017,lv = 114,bklv = 15,star = 3}
		},
		[3] = {
			jlr = {id = 3120110,cardId = 1101007,lv = 114,bklv = 15,star = 3},
			shl = {id = 3120111,cardId = 1102002,lv = 114,bklv = 15,star = 3}
		}
	},
	[31202] = {
		[1] = {
			jlr = {id = 3120220,cardId = 1101003,lv = 115,bklv = 16,star = 3},
			shl = {id = 3120221,cardId = 1102005,lv = 115,bklv = 16,star = 3}
		},
		[2] = {
			jlr = {id = 3120220,cardId = 1101011,lv = 115,bklv = 15,star = 3},
			shl = {id = 3120221,cardId = 1102017,lv = 115,bklv = 15,star = 3}
		},
		[3] = {
			jlr = {id = 3120220,cardId = 1101007,lv = 115,bklv = 15,star = 3},
			shl = {id = 3120221,cardId = 1102002,lv = 115,bklv = 15,star = 3}
		}
	},
	[31203] = {
		[1] = {
			jlr = {id = 3120330,cardId = 1101003,lv = 115,bklv = 16,star = 3},
			shl = {id = 3120331,cardId = 1102005,lv = 115,bklv = 16,star = 3}
		},
		[2] = {
			jlr = {id = 3120330,cardId = 1101011,lv = 115,bklv = 16,star = 3},
			shl = {id = 3120331,cardId = 1102017,lv = 115,bklv = 16,star = 3}
		},
		[3] = {
			jlr = {id = 3120330,cardId = 1101007,lv = 115,bklv = 15,star = 3},
			shl = {id = 3120331,cardId = 1102002,lv = 115,bklv = 15,star = 3}
		}
	},
	[31204] = {
		[1] = {
			jlr = {id = 3120440,cardId = 1101003,lv = 115,bklv = 16,star = 3},
			shl = {id = 3120441,cardId = 1102005,lv = 115,bklv = 16,star = 3}
		},
		[2] = {
			jlr = {id = 3120440,cardId = 1101011,lv = 115,bklv = 16,star = 3},
			shl = {id = 3120441,cardId = 1102017,lv = 115,bklv = 16,star = 3}
		},
		[3] = {
			jlr = {id = 3120440,cardId = 1101007,lv = 115,bklv = 16,star = 3},
			shl = {id = 3120441,cardId = 1102002,lv = 115,bklv = 16,star = 3}
		}
	},
	[31205] = {
		[1] = {
			jlr = {id = 3120550,cardId = 1101003,lv = 116,bklv = 16,star = 3},
			shl = {id = 3120551,cardId = 1102005,lv = 116,bklv = 16,star = 3}
		},
		[2] = {
			jlr = {id = 3120550,cardId = 1101011,lv = 116,bklv = 16,star = 3},
			shl = {id = 3120551,cardId = 1102017,lv = 116,bklv = 16,star = 3}
		},
		[3] = {
			jlr = {id = 3120550,cardId = 1101007,lv = 116,bklv = 16,star = 3},
			shl = {id = 3120551,cardId = 1102002,lv = 116,bklv = 16,star = 3}
		}
	},
	[31206] = {
		[1] = {
			jlr = {id = 3120660,cardId = 1101003,lv = 116,bklv = 16,star = 3},
			shl = {id = 3120661,cardId = 1102005,lv = 116,bklv = 16,star = 3}
		},
		[2] = {
			jlr = {id = 3120660,cardId = 1101011,lv = 116,bklv = 16,star = 3},
			shl = {id = 3120661,cardId = 1102017,lv = 116,bklv = 16,star = 3}
		},
		[3] = {
			jlr = {id = 3120660,cardId = 1101007,lv = 116,bklv = 16,star = 3},
			shl = {id = 3120661,cardId = 1102002,lv = 116,bklv = 16,star = 3}
		}
	},
	[31207] = {
		[1] = {
			jlr = {id = 3120770,cardId = 1101003,lv = 117,bklv = 16,star = 3},
			shl = {id = 3120771,cardId = 1102005,lv = 117,bklv = 16,star = 3}
		},
		[2] = {
			jlr = {id = 3120770,cardId = 1101011,lv = 117,bklv = 16,star = 3},
			shl = {id = 3120771,cardId = 1102017,lv = 117,bklv = 16,star = 3}
		},
		[3] = {
			jlr = {id = 3120770,cardId = 1101007,lv = 117,bklv = 16,star = 3},
			shl = {id = 3120771,cardId = 1102002,lv = 117,bklv = 16,star = 3}
		}
	},
	[31208] = {
		[1] = {
			jlr = {id = 3120880,cardId = 1101003,lv = 117,bklv = 16,star = 3},
			shl = {id = 3120881,cardId = 1102005,lv = 117,bklv = 16,star = 3}
		},
		[2] = {
			jlr = {id = 3120880,cardId = 1101011,lv = 117,bklv = 16,star = 3},
			shl = {id = 3120881,cardId = 1102017,lv = 117,bklv = 16,star = 3}
		},
		[3] = {
			jlr = {id = 3120880,cardId = 1101007,lv = 117,bklv = 16,star = 3},
			shl = {id = 3120881,cardId = 1102002,lv = 117,bklv = 16,star = 3}
		}
	},
	[31209] = {
		[1] = {
			jlr = {id = 3120990,cardId = 1101003,lv = 118,bklv = 16,star = 3},
			shl = {id = 3120991,cardId = 1102005,lv = 118,bklv = 16,star = 3}
		},
		[2] = {
			jlr = {id = 3120990,cardId = 1101011,lv = 118,bklv = 16,star = 3},
			shl = {id = 3120991,cardId = 1102017,lv = 118,bklv = 16,star = 3}
		},
		[3] = {
			jlr = {id = 3120990,cardId = 1101007,lv = 118,bklv = 16,star = 3},
			shl = {id = 3120991,cardId = 1102002,lv = 118,bklv = 16,star = 3}
		}
	},
	[31210] = {
		[1] = {
			jlr = {id = 3121100,cardId = 1101003,lv = 118,bklv = 16,star = 3},
			shl = {id = 3121101,cardId = 1102005,lv = 118,bklv = 16,star = 3}
		},
		[2] = {
			jlr = {id = 3121100,cardId = 1101011,lv = 118,bklv = 16,star = 3},
			shl = {id = 3121101,cardId = 1102017,lv = 118,bklv = 16,star = 3}
		},
		[3] = {
			jlr = {id = 3121100,cardId = 1101007,lv = 118,bklv = 16,star = 3},
			shl = {id = 3121101,cardId = 1102002,lv = 118,bklv = 16,star = 3}
		}
	},
	[31211] = {
		[1] = {
			jlr = {id = 3121210,cardId = 1101003,lv = 119,bklv = 16,star = 3},
			shl = {id = 3121211,cardId = 1102005,lv = 119,bklv = 16,star = 3}
		},
		[2] = {
			jlr = {id = 3121210,cardId = 1101011,lv = 119,bklv = 16,star = 3},
			shl = {id = 3121211,cardId = 1102017,lv = 119,bklv = 16,star = 3}
		},
		[3] = {
			jlr = {id = 3121210,cardId = 1101007,lv = 119,bklv = 16,star = 3},
			shl = {id = 3121211,cardId = 1102002,lv = 119,bklv = 16,star = 3}
		}
	},
	[31212] = {
		[1] = {
			jlr = {id = 3121320,cardId = 1101003,lv = 119,bklv = 16,star = 3},
			shl = {id = 3121321,cardId = 1102005,lv = 119,bklv = 16,star = 3}
		},
		[2] = {
			jlr = {id = 3121320,cardId = 1101011,lv = 119,bklv = 16,star = 3},
			shl = {id = 3121321,cardId = 1102017,lv = 119,bklv = 16,star = 3}
		},
		[3] = {
			jlr = {id = 3121320,cardId = 1101007,lv = 119,bklv = 16,star = 3},
			shl = {id = 3121321,cardId = 1102002,lv = 119,bklv = 16,star = 3}
		}
	},
	[31213] = {
		[1] = {
			jlr = {id = 3121430,cardId = 1101003,lv = 120,bklv = 17,star = 3},
			shl = {id = 3121431,cardId = 1102005,lv = 120,bklv = 17,star = 3}
		},
		[2] = {
			jlr = {id = 3121430,cardId = 1101011,lv = 120,bklv = 16,star = 3},
			shl = {id = 3121431,cardId = 1102017,lv = 120,bklv = 16,star = 3}
		},
		[3] = {
			jlr = {id = 3121430,cardId = 1101007,lv = 120,bklv = 16,star = 3},
			shl = {id = 3121431,cardId = 1102002,lv = 120,bklv = 16,star = 3}
		}
	},
	[31214] = {
		[1] = {
			jlr = {id = 3121540,cardId = 1101003,lv = 120,bklv = 17,star = 3},
			shl = {id = 3121541,cardId = 1102005,lv = 120,bklv = 17,star = 3}
		},
		[2] = {
			jlr = {id = 3121540,cardId = 1101011,lv = 120,bklv = 17,star = 3},
			shl = {id = 3121541,cardId = 1102017,lv = 120,bklv = 17,star = 3}
		},
		[3] = {
			jlr = {id = 3121540,cardId = 1101007,lv = 120,bklv = 16,star = 3},
			shl = {id = 3121541,cardId = 1102002,lv = 120,bklv = 16,star = 3}
		}
	},
	[31215] = {
		[1] = {
			jlr = {id = 3121650,cardId = 1101003,lv = 120,bklv = 17,star = 3},
			shl = {id = 3121651,cardId = 1102005,lv = 120,bklv = 17,star = 3}
		},
		[2] = {
			jlr = {id = 3121650,cardId = 1101011,lv = 120,bklv = 17,star = 3},
			shl = {id = 3121651,cardId = 1102017,lv = 120,bklv = 17,star = 3}
		},
		[3] = {
			jlr = {id = 3121650,cardId = 1101007,lv = 120,bklv = 17,star = 3},
			shl = {id = 3121651,cardId = 1102002,lv = 120,bklv = 17,star = 3}
		}
	},
	[31301] = {
		[1] = {
			jlr = {id = 3130110,cardId = 1101003,lv = 124,bklv = 17,star = 3},
			shl = {id = 3130111,cardId = 1102005,lv = 124,bklv = 17,star = 3}
		},
		[2] = {
			jlr = {id = 3130110,cardId = 1101011,lv = 124,bklv = 17,star = 3},
			shl = {id = 3130111,cardId = 1102017,lv = 124,bklv = 17,star = 3}
		},
		[3] = {
			jlr = {id = 3130110,cardId = 1101007,lv = 124,bklv = 17,star = 3},
			shl = {id = 3130111,cardId = 1102002,lv = 124,bklv = 17,star = 3}
		}
	},
	[31302] = {
		[1] = {
			jlr = {id = 3130220,cardId = 1101003,lv = 125,bklv = 18,star = 3},
			shl = {id = 3130221,cardId = 1102005,lv = 125,bklv = 18,star = 3}
		},
		[2] = {
			jlr = {id = 3130220,cardId = 1101011,lv = 125,bklv = 17,star = 3},
			shl = {id = 3130221,cardId = 1102017,lv = 125,bklv = 17,star = 3}
		},
		[3] = {
			jlr = {id = 3130220,cardId = 1101007,lv = 125,bklv = 17,star = 3},
			shl = {id = 3130221,cardId = 1102002,lv = 125,bklv = 17,star = 3}
		}
	},
	[31303] = {
		[1] = {
			jlr = {id = 3130330,cardId = 1101003,lv = 125,bklv = 18,star = 3},
			shl = {id = 3130331,cardId = 1102005,lv = 125,bklv = 18,star = 3}
		},
		[2] = {
			jlr = {id = 3130330,cardId = 1101011,lv = 125,bklv = 18,star = 3},
			shl = {id = 3130331,cardId = 1102017,lv = 125,bklv = 18,star = 3}
		},
		[3] = {
			jlr = {id = 3130330,cardId = 1101007,lv = 125,bklv = 17,star = 3},
			shl = {id = 3130331,cardId = 1102002,lv = 125,bklv = 17,star = 3}
		}
	},
	[31304] = {
		[1] = {
			jlr = {id = 3130440,cardId = 1101003,lv = 125,bklv = 18,star = 3},
			shl = {id = 3130441,cardId = 1102005,lv = 125,bklv = 18,star = 3}
		},
		[2] = {
			jlr = {id = 3130440,cardId = 1101011,lv = 125,bklv = 18,star = 3},
			shl = {id = 3130441,cardId = 1102017,lv = 125,bklv = 18,star = 3}
		},
		[3] = {
			jlr = {id = 3130440,cardId = 1101007,lv = 125,bklv = 18,star = 3},
			shl = {id = 3130441,cardId = 1102002,lv = 125,bklv = 18,star = 3}
		}
	},
	[31305] = {
		[1] = {
			jlr = {id = 3130550,cardId = 1101003,lv = 126,bklv = 18,star = 3},
			shl = {id = 3130551,cardId = 1102005,lv = 126,bklv = 18,star = 3}
		},
		[2] = {
			jlr = {id = 3130550,cardId = 1101011,lv = 126,bklv = 18,star = 3},
			shl = {id = 3130551,cardId = 1102017,lv = 126,bklv = 18,star = 3}
		},
		[3] = {
			jlr = {id = 3130550,cardId = 1101007,lv = 126,bklv = 18,star = 3},
			shl = {id = 3130551,cardId = 1102002,lv = 126,bklv = 18,star = 3}
		}
	},
	[31306] = {
		[1] = {
			jlr = {id = 3130660,cardId = 1101003,lv = 126,bklv = 18,star = 3},
			shl = {id = 3130661,cardId = 1102005,lv = 126,bklv = 18,star = 3}
		},
		[2] = {
			jlr = {id = 3130660,cardId = 1101011,lv = 126,bklv = 18,star = 3},
			shl = {id = 3130661,cardId = 1102017,lv = 126,bklv = 18,star = 3}
		},
		[3] = {
			jlr = {id = 3130660,cardId = 1101007,lv = 126,bklv = 18,star = 3},
			shl = {id = 3130661,cardId = 1102002,lv = 126,bklv = 18,star = 3}
		}
	},
	[31307] = {
		[1] = {
			jlr = {id = 3130770,cardId = 1101003,lv = 127,bklv = 18,star = 3},
			shl = {id = 3130771,cardId = 1102005,lv = 127,bklv = 18,star = 3}
		},
		[2] = {
			jlr = {id = 3130770,cardId = 1101011,lv = 127,bklv = 18,star = 3},
			shl = {id = 3130771,cardId = 1102017,lv = 127,bklv = 18,star = 3}
		},
		[3] = {
			jlr = {id = 3130770,cardId = 1101007,lv = 127,bklv = 18,star = 3},
			shl = {id = 3130771,cardId = 1102002,lv = 127,bklv = 18,star = 3}
		}
	},
	[31308] = {
		[1] = {
			jlr = {id = 3130880,cardId = 1101003,lv = 127,bklv = 18,star = 3},
			shl = {id = 3130881,cardId = 1102005,lv = 127,bklv = 18,star = 3}
		},
		[2] = {
			jlr = {id = 3130880,cardId = 1101011,lv = 127,bklv = 18,star = 3},
			shl = {id = 3130881,cardId = 1102017,lv = 127,bklv = 18,star = 3}
		},
		[3] = {
			jlr = {id = 3130880,cardId = 1101007,lv = 127,bklv = 18,star = 3},
			shl = {id = 3130881,cardId = 1102002,lv = 127,bklv = 18,star = 3}
		}
	},
	[31309] = {
		[1] = {
			jlr = {id = 3130990,cardId = 1101003,lv = 128,bklv = 18,star = 3},
			shl = {id = 3130991,cardId = 1102005,lv = 128,bklv = 18,star = 3}
		},
		[2] = {
			jlr = {id = 3130990,cardId = 1101011,lv = 128,bklv = 18,star = 3},
			shl = {id = 3130991,cardId = 1102017,lv = 128,bklv = 18,star = 3}
		},
		[3] = {
			jlr = {id = 3130990,cardId = 1101007,lv = 128,bklv = 18,star = 3},
			shl = {id = 3130991,cardId = 1102002,lv = 128,bklv = 18,star = 3}
		}
	},
	[31310] = {
		[1] = {
			jlr = {id = 3131100,cardId = 1101003,lv = 128,bklv = 18,star = 3},
			shl = {id = 3131101,cardId = 1102005,lv = 128,bklv = 18,star = 3}
		},
		[2] = {
			jlr = {id = 3131100,cardId = 1101011,lv = 128,bklv = 18,star = 3},
			shl = {id = 3131101,cardId = 1102017,lv = 128,bklv = 18,star = 3}
		},
		[3] = {
			jlr = {id = 3131100,cardId = 1101007,lv = 128,bklv = 18,star = 3},
			shl = {id = 3131101,cardId = 1102002,lv = 128,bklv = 18,star = 3}
		}
	},
	[31311] = {
		[1] = {
			jlr = {id = 3131210,cardId = 1101003,lv = 129,bklv = 18,star = 3},
			shl = {id = 3131211,cardId = 1102005,lv = 129,bklv = 18,star = 3}
		},
		[2] = {
			jlr = {id = 3131210,cardId = 1101011,lv = 129,bklv = 18,star = 3},
			shl = {id = 3131211,cardId = 1102017,lv = 129,bklv = 18,star = 3}
		},
		[3] = {
			jlr = {id = 3131210,cardId = 1101007,lv = 129,bklv = 18,star = 3},
			shl = {id = 3131211,cardId = 1102002,lv = 129,bklv = 18,star = 3}
		}
	},
	[31312] = {
		[1] = {
			jlr = {id = 3131320,cardId = 1101003,lv = 129,bklv = 18,star = 3},
			shl = {id = 3131321,cardId = 1102005,lv = 129,bklv = 18,star = 3}
		},
		[2] = {
			jlr = {id = 3131320,cardId = 1101011,lv = 129,bklv = 18,star = 3},
			shl = {id = 3131321,cardId = 1102017,lv = 129,bklv = 18,star = 3}
		},
		[3] = {
			jlr = {id = 3131320,cardId = 1101007,lv = 129,bklv = 18,star = 3},
			shl = {id = 3131321,cardId = 1102002,lv = 129,bklv = 18,star = 3}
		}
	},
	[31313] = {
		[1] = {
			jlr = {id = 3131430,cardId = 1101003,lv = 130,bklv = 19,star = 3},
			shl = {id = 3131431,cardId = 1102005,lv = 130,bklv = 19,star = 3}
		},
		[2] = {
			jlr = {id = 3131430,cardId = 1101011,lv = 130,bklv = 18,star = 3},
			shl = {id = 3131431,cardId = 1102017,lv = 130,bklv = 18,star = 3}
		},
		[3] = {
			jlr = {id = 3131430,cardId = 1101007,lv = 130,bklv = 18,star = 3},
			shl = {id = 3131431,cardId = 1102002,lv = 130,bklv = 18,star = 3}
		}
	},
	[31314] = {
		[1] = {
			jlr = {id = 3131540,cardId = 1101003,lv = 130,bklv = 19,star = 3},
			shl = {id = 3131541,cardId = 1102005,lv = 130,bklv = 19,star = 3}
		},
		[2] = {
			jlr = {id = 3131540,cardId = 1101011,lv = 130,bklv = 19,star = 3},
			shl = {id = 3131541,cardId = 1102017,lv = 130,bklv = 19,star = 3}
		},
		[3] = {
			jlr = {id = 3131540,cardId = 1101007,lv = 130,bklv = 18,star = 3},
			shl = {id = 3131541,cardId = 1102002,lv = 130,bklv = 18,star = 3}
		}
	},
	[31315] = {
		[1] = {
			jlr = {id = 3131650,cardId = 1101003,lv = 130,bklv = 19,star = 3},
			shl = {id = 3131651,cardId = 1102005,lv = 130,bklv = 19,star = 3}
		},
		[2] = {
			jlr = {id = 3131650,cardId = 1101011,lv = 130,bklv = 19,star = 3},
			shl = {id = 3131651,cardId = 1102017,lv = 130,bklv = 19,star = 3}
		},
		[3] = {
			jlr = {id = 3131650,cardId = 1101007,lv = 130,bklv = 19,star = 3},
			shl = {id = 3131651,cardId = 1102002,lv = 130,bklv = 19,star = 3}
		}
	},
	[31401] = {
		[1] = {
			jlr = {id = 3140110,cardId = 1101003,lv = 134,bklv = 19,star = 3},
			shl = {id = 3140111,cardId = 1102005,lv = 134,bklv = 19,star = 3}
		},
		[2] = {
			jlr = {id = 3140110,cardId = 1101011,lv = 134,bklv = 19,star = 3},
			shl = {id = 3140111,cardId = 1102017,lv = 134,bklv = 19,star = 3}
		},
		[3] = {
			jlr = {id = 3140110,cardId = 1101007,lv = 134,bklv = 19,star = 3},
			shl = {id = 3140111,cardId = 1102002,lv = 134,bklv = 19,star = 3}
		}
	},
	[31402] = {
		[1] = {
			jlr = {id = 3140220,cardId = 1101003,lv = 135,bklv = 20,star = 3},
			shl = {id = 3140221,cardId = 1102005,lv = 135,bklv = 20,star = 3}
		},
		[2] = {
			jlr = {id = 3140220,cardId = 1101011,lv = 135,bklv = 19,star = 3},
			shl = {id = 3140221,cardId = 1102017,lv = 135,bklv = 19,star = 3}
		},
		[3] = {
			jlr = {id = 3140220,cardId = 1101007,lv = 135,bklv = 19,star = 3},
			shl = {id = 3140221,cardId = 1102002,lv = 135,bklv = 19,star = 3}
		}
	},
	[31403] = {
		[1] = {
			jlr = {id = 3140330,cardId = 1101003,lv = 135,bklv = 20,star = 3},
			shl = {id = 3140331,cardId = 1102005,lv = 135,bklv = 20,star = 3}
		},
		[2] = {
			jlr = {id = 3140330,cardId = 1101011,lv = 135,bklv = 20,star = 3},
			shl = {id = 3140331,cardId = 1102017,lv = 135,bklv = 20,star = 3}
		},
		[3] = {
			jlr = {id = 3140330,cardId = 1101007,lv = 135,bklv = 19,star = 3},
			shl = {id = 3140331,cardId = 1102002,lv = 135,bklv = 19,star = 3}
		}
	},
	[31404] = {
		[1] = {
			jlr = {id = 3140440,cardId = 1101003,lv = 135,bklv = 20,star = 3},
			shl = {id = 3140441,cardId = 1102005,lv = 135,bklv = 20,star = 3}
		},
		[2] = {
			jlr = {id = 3140440,cardId = 1101011,lv = 135,bklv = 20,star = 3},
			shl = {id = 3140441,cardId = 1102017,lv = 135,bklv = 20,star = 3}
		},
		[3] = {
			jlr = {id = 3140440,cardId = 1101007,lv = 135,bklv = 20,star = 3},
			shl = {id = 3140441,cardId = 1102002,lv = 135,bklv = 20,star = 3}
		}
	},
	[31405] = {
		[1] = {
			jlr = {id = 3140550,cardId = 1101003,lv = 136,bklv = 20,star = 3},
			shl = {id = 3140551,cardId = 1102005,lv = 136,bklv = 20,star = 3}
		},
		[2] = {
			jlr = {id = 3140550,cardId = 1101011,lv = 136,bklv = 20,star = 3},
			shl = {id = 3140551,cardId = 1102017,lv = 136,bklv = 20,star = 3}
		},
		[3] = {
			jlr = {id = 3140550,cardId = 1101007,lv = 136,bklv = 20,star = 3},
			shl = {id = 3140551,cardId = 1102002,lv = 136,bklv = 20,star = 3}
		}
	},
	[31406] = {
		[1] = {
			jlr = {id = 3140660,cardId = 1101003,lv = 136,bklv = 20,star = 3},
			shl = {id = 3140661,cardId = 1102005,lv = 136,bklv = 20,star = 3}
		},
		[2] = {
			jlr = {id = 3140660,cardId = 1101011,lv = 136,bklv = 20,star = 3},
			shl = {id = 3140661,cardId = 1102017,lv = 136,bklv = 20,star = 3}
		},
		[3] = {
			jlr = {id = 3140660,cardId = 1101007,lv = 136,bklv = 20,star = 3},
			shl = {id = 3140661,cardId = 1102002,lv = 136,bklv = 20,star = 3}
		}
	},
	[31407] = {
		[1] = {
			jlr = {id = 3140770,cardId = 1101003,lv = 137,bklv = 20,star = 3},
			shl = {id = 3140771,cardId = 1102005,lv = 137,bklv = 20,star = 3}
		},
		[2] = {
			jlr = {id = 3140770,cardId = 1101011,lv = 137,bklv = 20,star = 3},
			shl = {id = 3140771,cardId = 1102017,lv = 137,bklv = 20,star = 3}
		},
		[3] = {
			jlr = {id = 3140770,cardId = 1101007,lv = 137,bklv = 20,star = 3},
			shl = {id = 3140771,cardId = 1102002,lv = 137,bklv = 20,star = 3}
		}
	},
	[31408] = {
		[1] = {
			jlr = {id = 3140880,cardId = 1101003,lv = 137,bklv = 20,star = 3},
			shl = {id = 3140881,cardId = 1102005,lv = 137,bklv = 20,star = 3}
		},
		[2] = {
			jlr = {id = 3140880,cardId = 1101011,lv = 137,bklv = 20,star = 3},
			shl = {id = 3140881,cardId = 1102017,lv = 137,bklv = 20,star = 3}
		},
		[3] = {
			jlr = {id = 3140880,cardId = 1101007,lv = 137,bklv = 20,star = 3},
			shl = {id = 3140881,cardId = 1102002,lv = 137,bklv = 20,star = 3}
		}
	},
	[31409] = {
		[1] = {
			jlr = {id = 3140990,cardId = 1101003,lv = 138,bklv = 20,star = 3},
			shl = {id = 3140991,cardId = 1102005,lv = 138,bklv = 20,star = 3}
		},
		[2] = {
			jlr = {id = 3140990,cardId = 1101011,lv = 138,bklv = 20,star = 3},
			shl = {id = 3140991,cardId = 1102017,lv = 138,bklv = 20,star = 3}
		},
		[3] = {
			jlr = {id = 3140990,cardId = 1101007,lv = 138,bklv = 20,star = 3},
			shl = {id = 3140991,cardId = 1102002,lv = 138,bklv = 20,star = 3}
		}
	},
	[31410] = {
		[1] = {
			jlr = {id = 3141100,cardId = 1101003,lv = 138,bklv = 20,star = 3},
			shl = {id = 3141101,cardId = 1102005,lv = 138,bklv = 20,star = 3}
		},
		[2] = {
			jlr = {id = 3141100,cardId = 1101011,lv = 138,bklv = 20,star = 3},
			shl = {id = 3141101,cardId = 1102017,lv = 138,bklv = 20,star = 3}
		},
		[3] = {
			jlr = {id = 3141100,cardId = 1101007,lv = 138,bklv = 20,star = 3},
			shl = {id = 3141101,cardId = 1102002,lv = 138,bklv = 20,star = 3}
		}
	},
	[31411] = {
		[1] = {
			jlr = {id = 3141210,cardId = 1101003,lv = 139,bklv = 20,star = 3},
			shl = {id = 3141211,cardId = 1102005,lv = 139,bklv = 20,star = 3}
		},
		[2] = {
			jlr = {id = 3141210,cardId = 1101011,lv = 139,bklv = 20,star = 3},
			shl = {id = 3141211,cardId = 1102017,lv = 139,bklv = 20,star = 3}
		},
		[3] = {
			jlr = {id = 3141210,cardId = 1101007,lv = 139,bklv = 20,star = 3},
			shl = {id = 3141211,cardId = 1102002,lv = 139,bklv = 20,star = 3}
		}
	},
	[31412] = {
		[1] = {
			jlr = {id = 3141320,cardId = 1101003,lv = 139,bklv = 20,star = 3},
			shl = {id = 3141321,cardId = 1102005,lv = 139,bklv = 20,star = 3}
		},
		[2] = {
			jlr = {id = 3141320,cardId = 1101011,lv = 139,bklv = 20,star = 3},
			shl = {id = 3141321,cardId = 1102017,lv = 139,bklv = 20,star = 3}
		},
		[3] = {
			jlr = {id = 3141320,cardId = 1101007,lv = 139,bklv = 20,star = 3},
			shl = {id = 3141321,cardId = 1102002,lv = 139,bklv = 20,star = 3}
		}
	},
	[31413] = {
		[1] = {
			jlr = {id = 3141430,cardId = 1101003,lv = 140,bklv = 21,star = 3},
			shl = {id = 3141431,cardId = 1102005,lv = 140,bklv = 21,star = 3}
		},
		[2] = {
			jlr = {id = 3141430,cardId = 1101011,lv = 140,bklv = 20,star = 3},
			shl = {id = 3141431,cardId = 1102017,lv = 140,bklv = 20,star = 3}
		},
		[3] = {
			jlr = {id = 3141430,cardId = 1101007,lv = 140,bklv = 20,star = 3},
			shl = {id = 3141431,cardId = 1102002,lv = 140,bklv = 20,star = 3}
		}
	},
	[31414] = {
		[1] = {
			jlr = {id = 3141540,cardId = 1101003,lv = 140,bklv = 21,star = 3},
			shl = {id = 3141541,cardId = 1102005,lv = 140,bklv = 21,star = 3}
		},
		[2] = {
			jlr = {id = 3141540,cardId = 1101011,lv = 140,bklv = 21,star = 3},
			shl = {id = 3141541,cardId = 1102017,lv = 140,bklv = 21,star = 3}
		},
		[3] = {
			jlr = {id = 3141540,cardId = 1101007,lv = 140,bklv = 20,star = 3},
			shl = {id = 3141541,cardId = 1102002,lv = 140,bklv = 20,star = 3}
		}
	},
	[31415] = {
		[1] = {
			jlr = {id = 3141650,cardId = 1101003,lv = 140,bklv = 21,star = 3},
			shl = {id = 3141651,cardId = 1102005,lv = 140,bklv = 21,star = 3}
		},
		[2] = {
			jlr = {id = 3141650,cardId = 1101011,lv = 140,bklv = 21,star = 3},
			shl = {id = 3141651,cardId = 1102017,lv = 140,bklv = 21,star = 3}
		},
		[3] = {
			jlr = {id = 3141650,cardId = 1101007,lv = 140,bklv = 21,star = 3},
			shl = {id = 3141651,cardId = 1102002,lv = 140,bklv = 21,star = 3}
		}
	},
	[31501] = {
		[1] = {
			jlr = {id = 3150110,cardId = 1101003,lv = 144,bklv = 21,star = 3},
			shl = {id = 3150111,cardId = 1102005,lv = 144,bklv = 21,star = 3}
		},
		[2] = {
			jlr = {id = 3150110,cardId = 1101011,lv = 144,bklv = 21,star = 3},
			shl = {id = 3150111,cardId = 1102017,lv = 144,bklv = 21,star = 3}
		},
		[3] = {
			jlr = {id = 3150110,cardId = 1101007,lv = 144,bklv = 21,star = 3},
			shl = {id = 3150111,cardId = 1102002,lv = 144,bklv = 21,star = 3}
		}
	},
	[31502] = {
		[1] = {
			jlr = {id = 3150220,cardId = 1101003,lv = 144,bklv = 21,star = 3},
			shl = {id = 3150221,cardId = 1102005,lv = 144,bklv = 21,star = 3}
		},
		[2] = {
			jlr = {id = 3150220,cardId = 1101011,lv = 144,bklv = 21,star = 3},
			shl = {id = 3150221,cardId = 1102017,lv = 144,bklv = 21,star = 3}
		},
		[3] = {
			jlr = {id = 3150220,cardId = 1101007,lv = 144,bklv = 21,star = 3},
			shl = {id = 3150221,cardId = 1102002,lv = 144,bklv = 21,star = 3}
		}
	},
	[31503] = {
		[1] = {
			jlr = {id = 3150330,cardId = 1101003,lv = 145,bklv = 21,star = 3},
			shl = {id = 3150331,cardId = 1102005,lv = 145,bklv = 21,star = 3}
		},
		[2] = {
			jlr = {id = 3150330,cardId = 1101011,lv = 145,bklv = 21,star = 3},
			shl = {id = 3150331,cardId = 1102017,lv = 145,bklv = 21,star = 3}
		},
		[3] = {
			jlr = {id = 3150330,cardId = 1101007,lv = 145,bklv = 21,star = 3},
			shl = {id = 3150331,cardId = 1102002,lv = 145,bklv = 21,star = 3}
		}
	},
	[31504] = {
		[1] = {
			jlr = {id = 3150440,cardId = 1101003,lv = 145,bklv = 21,star = 3},
			shl = {id = 3150441,cardId = 1102005,lv = 145,bklv = 21,star = 3}
		},
		[2] = {
			jlr = {id = 3150440,cardId = 1101011,lv = 145,bklv = 21,star = 3},
			shl = {id = 3150441,cardId = 1102017,lv = 145,bklv = 21,star = 3}
		},
		[3] = {
			jlr = {id = 3150440,cardId = 1101007,lv = 145,bklv = 21,star = 3},
			shl = {id = 3150441,cardId = 1102002,lv = 145,bklv = 21,star = 3}
		}
	},
	[31505] = {
		[1] = {
			jlr = {id = 3150550,cardId = 1101003,lv = 146,bklv = 21,star = 3},
			shl = {id = 3150551,cardId = 1102005,lv = 146,bklv = 21,star = 3}
		},
		[2] = {
			jlr = {id = 3150550,cardId = 1101011,lv = 146,bklv = 21,star = 3},
			shl = {id = 3150551,cardId = 1102017,lv = 146,bklv = 21,star = 3}
		},
		[3] = {
			jlr = {id = 3150550,cardId = 1101007,lv = 146,bklv = 21,star = 3},
			shl = {id = 3150551,cardId = 1102002,lv = 146,bklv = 21,star = 3}
		}
	},
	[31506] = {
		[1] = {
			jlr = {id = 3150660,cardId = 1101003,lv = 146,bklv = 21,star = 3},
			shl = {id = 3150661,cardId = 1102005,lv = 146,bklv = 21,star = 3}
		},
		[2] = {
			jlr = {id = 3150660,cardId = 1101011,lv = 146,bklv = 21,star = 3},
			shl = {id = 3150661,cardId = 1102017,lv = 146,bklv = 21,star = 3}
		},
		[3] = {
			jlr = {id = 3150660,cardId = 1101007,lv = 146,bklv = 21,star = 3},
			shl = {id = 3150661,cardId = 1102002,lv = 146,bklv = 21,star = 3}
		}
	},
	[31507] = {
		[1] = {
			jlr = {id = 3150770,cardId = 1101003,lv = 147,bklv = 21,star = 3},
			shl = {id = 3150771,cardId = 1102005,lv = 147,bklv = 21,star = 3}
		},
		[2] = {
			jlr = {id = 3150770,cardId = 1101011,lv = 147,bklv = 21,star = 3},
			shl = {id = 3150771,cardId = 1102017,lv = 147,bklv = 21,star = 3}
		},
		[3] = {
			jlr = {id = 3150770,cardId = 1101007,lv = 147,bklv = 21,star = 3},
			shl = {id = 3150771,cardId = 1102002,lv = 147,bklv = 21,star = 3}
		}
	},
	[31508] = {
		[1] = {
			jlr = {id = 3150880,cardId = 1101003,lv = 147,bklv = 21,star = 3},
			shl = {id = 3150881,cardId = 1102005,lv = 147,bklv = 21,star = 3}
		},
		[2] = {
			jlr = {id = 3150880,cardId = 1101011,lv = 147,bklv = 21,star = 3},
			shl = {id = 3150881,cardId = 1102017,lv = 147,bklv = 21,star = 3}
		},
		[3] = {
			jlr = {id = 3150880,cardId = 1101007,lv = 147,bklv = 21,star = 3},
			shl = {id = 3150881,cardId = 1102002,lv = 147,bklv = 21,star = 3}
		}
	},
	[31509] = {
		[1] = {
			jlr = {id = 3150990,cardId = 1101003,lv = 148,bklv = 21,star = 3},
			shl = {id = 3150991,cardId = 1102005,lv = 148,bklv = 21,star = 3}
		},
		[2] = {
			jlr = {id = 3150990,cardId = 1101011,lv = 148,bklv = 21,star = 3},
			shl = {id = 3150991,cardId = 1102017,lv = 148,bklv = 21,star = 3}
		},
		[3] = {
			jlr = {id = 3150990,cardId = 1101007,lv = 148,bklv = 21,star = 3},
			shl = {id = 3150991,cardId = 1102002,lv = 148,bklv = 21,star = 3}
		}
	},
	[31510] = {
		[1] = {
			jlr = {id = 3151100,cardId = 1101003,lv = 148,bklv = 21,star = 3},
			shl = {id = 3151101,cardId = 1102005,lv = 148,bklv = 21,star = 3}
		},
		[2] = {
			jlr = {id = 3151100,cardId = 1101011,lv = 148,bklv = 21,star = 3},
			shl = {id = 3151101,cardId = 1102017,lv = 148,bklv = 21,star = 3}
		},
		[3] = {
			jlr = {id = 3151100,cardId = 1101007,lv = 148,bklv = 21,star = 3},
			shl = {id = 3151101,cardId = 1102002,lv = 148,bklv = 21,star = 3}
		}
	},
	[31511] = {
		[1] = {
			jlr = {id = 3151210,cardId = 1101003,lv = 149,bklv = 21,star = 3},
			shl = {id = 3151211,cardId = 1102005,lv = 149,bklv = 21,star = 3}
		},
		[2] = {
			jlr = {id = 3151210,cardId = 1101011,lv = 149,bklv = 21,star = 3},
			shl = {id = 3151211,cardId = 1102017,lv = 149,bklv = 21,star = 3}
		},
		[3] = {
			jlr = {id = 3151210,cardId = 1101007,lv = 149,bklv = 21,star = 3},
			shl = {id = 3151211,cardId = 1102002,lv = 149,bklv = 21,star = 3}
		}
	},
	[31512] = {
		[1] = {
			jlr = {id = 3151320,cardId = 1101003,lv = 149,bklv = 21,star = 3},
			shl = {id = 3151321,cardId = 1102005,lv = 149,bklv = 21,star = 3}
		},
		[2] = {
			jlr = {id = 3151320,cardId = 1101011,lv = 149,bklv = 21,star = 3},
			shl = {id = 3151321,cardId = 1102017,lv = 149,bklv = 21,star = 3}
		},
		[3] = {
			jlr = {id = 3151320,cardId = 1101007,lv = 149,bklv = 21,star = 3},
			shl = {id = 3151321,cardId = 1102002,lv = 149,bklv = 21,star = 3}
		}
	},
	[31513] = {
		[1] = {
			jlr = {id = 3151430,cardId = 1101003,lv = 150,bklv = 22,star = 3},
			shl = {id = 3151431,cardId = 1102005,lv = 150,bklv = 22,star = 3}
		},
		[2] = {
			jlr = {id = 3151430,cardId = 1101011,lv = 150,bklv = 21,star = 3},
			shl = {id = 3151431,cardId = 1102017,lv = 150,bklv = 21,star = 3}
		},
		[3] = {
			jlr = {id = 3151430,cardId = 1101007,lv = 150,bklv = 21,star = 3},
			shl = {id = 3151431,cardId = 1102002,lv = 150,bklv = 21,star = 3}
		}
	},
	[31514] = {
		[1] = {
			jlr = {id = 3151540,cardId = 1101003,lv = 150,bklv = 22,star = 3},
			shl = {id = 3151541,cardId = 1102005,lv = 150,bklv = 22,star = 3}
		},
		[2] = {
			jlr = {id = 3151540,cardId = 1101011,lv = 150,bklv = 22,star = 3},
			shl = {id = 3151541,cardId = 1102017,lv = 150,bklv = 22,star = 3}
		},
		[3] = {
			jlr = {id = 3151540,cardId = 1101007,lv = 150,bklv = 21,star = 3},
			shl = {id = 3151541,cardId = 1102002,lv = 150,bklv = 21,star = 3}
		}
	},
	[31515] = {
		[1] = {
			jlr = {id = 3151650,cardId = 1101003,lv = 150,bklv = 22,star = 3},
			shl = {id = 3151651,cardId = 1102005,lv = 150,bklv = 22,star = 3}
		},
		[2] = {
			jlr = {id = 3151650,cardId = 1101011,lv = 150,bklv = 22,star = 3},
			shl = {id = 3151651,cardId = 1102017,lv = 150,bklv = 22,star = 3}
		},
		[3] = {
			jlr = {id = 3151650,cardId = 1101007,lv = 150,bklv = 22,star = 3},
			shl = {id = 3151651,cardId = 1102002,lv = 150,bklv = 22,star = 3}
		}
	},
	[41001] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4100110,cardId = 1101001,lv = 5,bklv = 1,star = 1,mon = {id = 212,desc = "tw-f-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4100111,cardId = 1102015,lv = 5,bklv = 1,star = 1,mon = {id = 257,desc = "tw-f-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4100120,cardId = 1101002,lv = 5,bklv = 1,star = 1,mon = {id = 208,desc = "tw-f-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4100121,cardId = 1102004,lv = 5,bklv = 1,star = 1,mon = {id = 252,desc = "tw-f-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4100130,cardId = 1101003,lv = 5,bklv = 1,star = 1,mon = {id = 209,desc = "tw-f-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4100131,cardId = 1102005,lv = 5,bklv = 1,star = 1,mon = {id = 253,desc = "tw-f-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41002] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4100210,cardId = 1101001,lv = 10,bklv = 2,star = 1,mon = {id = 201,desc = "tw-f-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4100211,cardId = 1102015,lv = 10,bklv = 2,star = 1,mon = {id = 241,desc = "tw-f-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4100220,cardId = 1101002,lv = 10,bklv = 2,star = 1,mon = {id = 203,desc = "tw-f-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4100221,cardId = 1102004,lv = 10,bklv = 2,star = 1,mon = {id = 244,desc = "tw-f-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4100230,cardId = 1101003,lv = 10,bklv = 2,star = 1,mon = {id = 214,desc = "tw-f-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4100231,cardId = 1102005,lv = 10,bklv = 2,star = 1,mon = {id = 259,desc = "tw-f-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41003] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4100310,cardId = 1101001,lv = 15,bklv = 2,star = 1,mon = {id = 212,desc = "tw-f-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4100311,cardId = 1102015,lv = 15,bklv = 2,star = 1,mon = {id = 257,desc = "tw-f-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4100320,cardId = 1101002,lv = 15,bklv = 2,star = 1,mon = {id = 208,desc = "tw-f-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4100321,cardId = 1102004,lv = 15,bklv = 2,star = 1,mon = {id = 252,desc = "tw-f-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4100330,cardId = 1101003,lv = 15,bklv = 3,star = 1,mon = {id = 209,desc = "tw-f-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4100331,cardId = 1102005,lv = 15,bklv = 3,star = 1,mon = {id = 253,desc = "tw-f-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41004] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4100410,cardId = 1101001,lv = 15,bklv = 3,star = 1,mon = {id = 215,desc = "tw-f-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4100411,cardId = 1102015,lv = 15,bklv = 3,star = 1,mon = {id = 260,desc = "tw-f-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4100420,cardId = 1101002,lv = 15,bklv = 3,star = 1,mon = {id = 201,desc = "tw-f-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4100421,cardId = 1102004,lv = 15,bklv = 3,star = 1,mon = {id = 248,desc = "tw-f-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4100430,cardId = 1101003,lv = 15,bklv = 3,star = 1,mon = {id = 211,desc = "tw-f-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4100431,cardId = 1102005,lv = 15,bklv = 3,star = 1,mon = {id = 256,desc = "tw-f-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41005] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4100510,cardId = 1101001,lv = 20,bklv = 3,star = 1,mon = {id = 206,desc = "tw-f-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4100511,cardId = 1102015,lv = 20,bklv = 3,star = 1,mon = {id = 246,desc = "tw-f-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4100520,cardId = 1101002,lv = 20,bklv = 3,star = 1,mon = {id = 203,desc = "tw-f-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4100521,cardId = 1102004,lv = 20,bklv = 3,star = 1,mon = {id = 244,desc = "tw-f-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4100530,cardId = 1101003,lv = 20,bklv = 3,star = 1,mon = {id = 212,desc = "tw-f-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4100531,cardId = 1102005,lv = 20,bklv = 3,star = 1,mon = {id = 257,desc = "tw-f-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41006] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4100610,cardId = 1101001,lv = 25,bklv = 3,star = 1,mon = {id = 209,desc = "tw-f-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4100611,cardId = 1102015,lv = 25,bklv = 3,star = 1,mon = {id = 253,desc = "tw-f-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4100620,cardId = 1101002,lv = 25,bklv = 3,star = 1,mon = {id = 208,desc = "tw-f-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4100621,cardId = 1102004,lv = 25,bklv = 3,star = 1,mon = {id = 252,desc = "tw-f-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4100630,cardId = 1101003,lv = 25,bklv = 3,star = 1,mon = {id = 212,desc = "tw-f-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4100631,cardId = 1102005,lv = 25,bklv = 3,star = 1,mon = {id = 257,desc = "tw-f-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41007] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4100710,cardId = 1101001,lv = 30,bklv = 3,star = 1,mon = {id = 213,desc = "tw-f-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4100711,cardId = 1102015,lv = 30,bklv = 3,star = 1,mon = {id = 258,desc = "tw-f-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4100720,cardId = 1101002,lv = 30,bklv = 3,star = 1,mon = {id = 207,desc = "tw-f-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4100721,cardId = 1102004,lv = 30,bklv = 3,star = 1,mon = {id = 242,desc = "tw-f-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4100730,cardId = 1101003,lv = 30,bklv = 3,star = 1,mon = {id = 211,desc = "tw-f-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4100731,cardId = 1102005,lv = 30,bklv = 3,star = 1,mon = {id = 256,desc = "tw-f-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41008] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4100810,cardId = 1101001,lv = 35,bklv = 4,star = 1,mon = {id = 209,desc = "tw-f-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4100811,cardId = 1102002,lv = 35,bklv = 4,star = 1,mon = {id = 253,desc = "tw-f-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4100820,cardId = 1101012,lv = 35,bklv = 4,star = 1,mon = {id = 208,desc = "tw-f-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4100821,cardId = 1102018,lv = 35,bklv = 4,star = 1,mon = {id = 252,desc = "tw-f-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4100830,cardId = 1101003,lv = 35,bklv = 4,star = 1,mon = {id = 212,desc = "tw-f-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4100831,cardId = 1102005,lv = 35,bklv = 4,star = 1,mon = {id = 257,desc = "tw-f-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41009] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4100910,cardId = 1101001,lv = 40,bklv = 4,star = 1,mon = {id = 207,desc = "tw-f-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4100911,cardId = 1102002,lv = 40,bklv = 4,star = 1,mon = {id = 251,desc = "tw-f-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4100920,cardId = 1101012,lv = 40,bklv = 4,star = 1,mon = {id = 205,desc = "tw-f-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4100921,cardId = 1102018,lv = 40,bklv = 4,star = 1,mon = {id = 250,desc = "tw-f-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4100930,cardId = 1101003,lv = 40,bklv = 5,star = 1,mon = {id = 210,desc = "tw-f-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4100931,cardId = 1102005,lv = 40,bklv = 5,star = 1,mon = {id = 255,desc = "tw-f-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41010] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4101010,cardId = 1101001,lv = 40,bklv = 4,star = 2,mon = {id = 212,desc = "tw-f-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4101011,cardId = 1102002,lv = 40,bklv = 4,star = 2,mon = {id = 257,desc = "tw-f-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4101020,cardId = 1101012,lv = 40,bklv = 5,star = 2,mon = {id = 208,desc = "tw-f-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4101021,cardId = 1102018,lv = 40,bklv = 5,star = 2,mon = {id = 252,desc = "tw-f-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4101030,cardId = 1101003,lv = 40,bklv = 5,star = 2,mon = {id = 209,desc = "tw-f-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4101031,cardId = 1102005,lv = 40,bklv = 5,star = 2,mon = {id = 253,desc = "tw-f-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41011] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4101110,cardId = 1101001,lv = 41,bklv = 5,star = 2,mon = {id = 201,desc = "tw-f-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4101111,cardId = 1102002,lv = 41,bklv = 5,star = 2,mon = {id = 241,desc = "tw-f-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4101120,cardId = 1101012,lv = 41,bklv = 5,star = 2,mon = {id = 203,desc = "tw-f-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4101121,cardId = 1102018,lv = 41,bklv = 5,star = 2,mon = {id = 244,desc = "tw-f-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4101130,cardId = 1101003,lv = 41,bklv = 5,star = 2,mon = {id = 214,desc = "tw-f-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4101131,cardId = 1102005,lv = 41,bklv = 5,star = 2,mon = {id = 259,desc = "tw-f-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41012] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4101210,cardId = 1101001,lv = 42,bklv = 5,star = 2,mon = {id = 212,desc = "tw-f-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4101211,cardId = 1102002,lv = 42,bklv = 5,star = 2,mon = {id = 257,desc = "tw-f-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4101220,cardId = 1101012,lv = 42,bklv = 5,star = 2,mon = {id = 208,desc = "tw-f-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4101221,cardId = 1102018,lv = 42,bklv = 5,star = 2,mon = {id = 252,desc = "tw-f-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4101230,cardId = 1101003,lv = 42,bklv = 5,star = 2,mon = {id = 209,desc = "tw-f-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4101231,cardId = 1102005,lv = 42,bklv = 5,star = 2,mon = {id = 253,desc = "tw-f-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41013] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4101310,cardId = 1101001,lv = 43,bklv = 5,star = 2,mon = {id = 215,desc = "tw-f-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4101311,cardId = 1102002,lv = 43,bklv = 5,star = 2,mon = {id = 260,desc = "tw-f-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4101320,cardId = 1101012,lv = 43,bklv = 5,star = 2,mon = {id = 201,desc = "tw-f-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4101321,cardId = 1102018,lv = 43,bklv = 5,star = 2,mon = {id = 248,desc = "tw-f-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4101330,cardId = 1101003,lv = 43,bklv = 5,star = 2,mon = {id = 211,desc = "tw-f-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4101331,cardId = 1102005,lv = 43,bklv = 5,star = 2,mon = {id = 256,desc = "tw-f-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41014] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4101410,cardId = 1101001,lv = 45,bklv = 5,star = 2,mon = {id = 206,desc = "tw-f-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4101411,cardId = 1102002,lv = 45,bklv = 5,star = 2,mon = {id = 246,desc = "tw-f-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4101420,cardId = 1101012,lv = 45,bklv = 5,star = 2,mon = {id = 203,desc = "tw-f-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4101421,cardId = 1102018,lv = 45,bklv = 5,star = 2,mon = {id = 244,desc = "tw-f-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4101430,cardId = 1101003,lv = 45,bklv = 5,star = 2,mon = {id = 212,desc = "tw-f-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4101431,cardId = 1102005,lv = 45,bklv = 5,star = 2,mon = {id = 257,desc = "tw-f-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41015] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4101510,cardId = 1101001,lv = 46,bklv = 5,star = 2,mon = {id = 209,desc = "tw-f-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4101511,cardId = 1102002,lv = 46,bklv = 5,star = 2,mon = {id = 253,desc = "tw-f-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4101520,cardId = 1101012,lv = 46,bklv = 5,star = 2,mon = {id = 208,desc = "tw-f-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4101521,cardId = 1102018,lv = 46,bklv = 5,star = 2,mon = {id = 252,desc = "tw-f-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4101530,cardId = 1101003,lv = 46,bklv = 5,star = 2,mon = {id = 212,desc = "tw-f-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4101531,cardId = 1102005,lv = 46,bklv = 5,star = 2,mon = {id = 257,desc = "tw-f-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41016] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4101610,cardId = 1101001,lv = 47,bklv = 5,star = 2,mon = {id = 207,desc = "tw-f-16-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4101611,cardId = 1102002,lv = 47,bklv = 5,star = 2,mon = {id = 248,desc = "tw-f-16-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4101620,cardId = 1101014,lv = 47,bklv = 5,star = 2,mon = {id = 207,desc = "tw-f-16-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4101621,cardId = 1102020,lv = 47,bklv = 5,star = 2,mon = {id = 242,desc = "tw-f-16-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4101630,cardId = 1101003,lv = 47,bklv = 5,star = 2,mon = {id = 211,desc = "tw-f-16-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4101631,cardId = 1102005,lv = 47,bklv = 5,star = 2,mon = {id = 256,desc = "tw-f-16-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41017] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4101710,cardId = 1101001,lv = 48,bklv = 5,star = 2,mon = {id = 209,desc = "tw-f-17-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4101711,cardId = 1102002,lv = 48,bklv = 5,star = 2,mon = {id = 253,desc = "tw-f-17-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4101720,cardId = 1101014,lv = 48,bklv = 5,star = 2,mon = {id = 208,desc = "tw-f-17-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4101721,cardId = 1102020,lv = 48,bklv = 5,star = 2,mon = {id = 252,desc = "tw-f-17-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4101730,cardId = 1101003,lv = 48,bklv = 5,star = 2,mon = {id = 212,desc = "tw-f-17-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4101731,cardId = 1102005,lv = 48,bklv = 5,star = 2,mon = {id = 257,desc = "tw-f-17-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41018] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4101810,cardId = 1101001,lv = 50,bklv = 6,star = 2,mon = {id = 207,desc = "tw-f-18-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4101811,cardId = 1102002,lv = 50,bklv = 6,star = 2,mon = {id = 251,desc = "tw-f-18-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4101820,cardId = 1101014,lv = 50,bklv = 5,star = 2,mon = {id = 205,desc = "tw-f-18-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4101821,cardId = 1102020,lv = 50,bklv = 5,star = 2,mon = {id = 250,desc = "tw-f-18-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4101830,cardId = 1101003,lv = 50,bklv = 5,star = 2,mon = {id = 210,desc = "tw-f-18-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4101831,cardId = 1102005,lv = 50,bklv = 5,star = 2,mon = {id = 255,desc = "tw-f-18-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41019] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4101910,cardId = 1101001,lv = 50,bklv = 6,star = 2,mon = {id = 212,desc = "tw-f-19-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4101911,cardId = 1102002,lv = 50,bklv = 6,star = 2,mon = {id = 257,desc = "tw-f-19-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4101920,cardId = 1101014,lv = 50,bklv = 6,star = 2,mon = {id = 208,desc = "tw-f-19-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4101921,cardId = 1102020,lv = 50,bklv = 6,star = 2,mon = {id = 252,desc = "tw-f-19-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4101930,cardId = 1101003,lv = 50,bklv = 5,star = 2,mon = {id = 209,desc = "tw-f-19-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4101931,cardId = 1102005,lv = 50,bklv = 5,star = 2,mon = {id = 253,desc = "tw-f-19-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41020] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4102010,cardId = 1101007,lv = 50,bklv = 6,star = 2,mon = {id = 201,desc = "tw-f-20-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4102011,cardId = 1102002,lv = 50,bklv = 6,star = 2,mon = {id = 241,desc = "tw-f-20-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4102020,cardId = 1101014,lv = 50,bklv = 6,star = 2,mon = {id = 203,desc = "tw-f-20-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4102021,cardId = 1102020,lv = 50,bklv = 6,star = 2,mon = {id = 244,desc = "tw-f-20-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4102030,cardId = 1101003,lv = 50,bklv = 6,star = 2,mon = {id = 214,desc = "tw-f-20-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4102031,cardId = 1102005,lv = 50,bklv = 6,star = 2,mon = {id = 259,desc = "tw-f-20-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41021] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4102110,cardId = 1101007,lv = 51,bklv = 6,star = 2,mon = {id = 212,desc = "tw-f-21-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4102111,cardId = 1102002,lv = 51,bklv = 6,star = 2,mon = {id = 257,desc = "tw-f-21-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4102120,cardId = 1101014,lv = 51,bklv = 6,star = 2,mon = {id = 208,desc = "tw-f-21-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4102121,cardId = 1102020,lv = 51,bklv = 6,star = 2,mon = {id = 252,desc = "tw-f-21-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4102130,cardId = 1101003,lv = 51,bklv = 6,star = 2,mon = {id = 209,desc = "tw-f-21-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4102131,cardId = 1102005,lv = 51,bklv = 6,star = 2,mon = {id = 253,desc = "tw-f-21-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41022] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4102210,cardId = 1101007,lv = 52,bklv = 6,star = 2,mon = {id = 215,desc = "tw-f-22-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4102211,cardId = 1102002,lv = 52,bklv = 6,star = 2,mon = {id = 260,desc = "tw-f-22-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4102220,cardId = 1101014,lv = 52,bklv = 6,star = 2,mon = {id = 201,desc = "tw-f-22-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4102221,cardId = 1102020,lv = 52,bklv = 6,star = 2,mon = {id = 248,desc = "tw-f-22-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4102230,cardId = 1101003,lv = 52,bklv = 6,star = 2,mon = {id = 211,desc = "tw-f-22-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4102231,cardId = 1102005,lv = 52,bklv = 6,star = 2,mon = {id = 256,desc = "tw-f-22-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41023] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4102310,cardId = 1101007,lv = 52,bklv = 6,star = 2,mon = {id = 206,desc = "tw-f-23-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4102311,cardId = 1102002,lv = 52,bklv = 6,star = 2,mon = {id = 246,desc = "tw-f-23-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4102320,cardId = 1101014,lv = 52,bklv = 6,star = 2,mon = {id = 203,desc = "tw-f-23-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4102321,cardId = 1102020,lv = 52,bklv = 6,star = 2,mon = {id = 244,desc = "tw-f-23-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4102330,cardId = 1101003,lv = 52,bklv = 6,star = 2,mon = {id = 212,desc = "tw-f-23-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4102331,cardId = 1102005,lv = 52,bklv = 6,star = 2,mon = {id = 257,desc = "tw-f-23-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41024] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4102410,cardId = 1101007,lv = 53,bklv = 6,star = 2,mon = {id = 209,desc = "tw-f-24-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4102411,cardId = 1102002,lv = 53,bklv = 6,star = 2,mon = {id = 253,desc = "tw-f-24-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4102420,cardId = 1101014,lv = 53,bklv = 6,star = 2,mon = {id = 208,desc = "tw-f-24-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4102421,cardId = 1102020,lv = 53,bklv = 6,star = 2,mon = {id = 252,desc = "tw-f-24-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4102430,cardId = 1101003,lv = 53,bklv = 6,star = 2,mon = {id = 212,desc = "tw-f-24-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4102431,cardId = 1102005,lv = 53,bklv = 6,star = 2,mon = {id = 257,desc = "tw-f-24-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41025] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4102510,cardId = 1101007,lv = 54,bklv = 6,star = 3,mon = {id = 213,desc = "tw-f-25-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4102511,cardId = 1102002,lv = 54,bklv = 6,star = 3,mon = {id = 258,desc = "tw-f-25-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4102520,cardId = 1101014,lv = 54,bklv = 6,star = 3,mon = {id = 207,desc = "tw-f-25-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4102521,cardId = 1102020,lv = 54,bklv = 6,star = 3,mon = {id = 242,desc = "tw-f-25-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4102530,cardId = 1101003,lv = 54,bklv = 6,star = 3,mon = {id = 211,desc = "tw-f-25-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4102531,cardId = 1102005,lv = 54,bklv = 6,star = 3,mon = {id = 256,desc = "tw-f-25-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41026] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4102610,cardId = 1101007,lv = 55,bklv = 6,star = 3,mon = {id = 206,desc = "tw-f-26-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4102611,cardId = 1102002,lv = 55,bklv = 6,star = 3,mon = {id = 246,desc = "tw-f-26-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4102620,cardId = 1101014,lv = 55,bklv = 6,star = 3,mon = {id = 205,desc = "tw-f-26-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4102621,cardId = 1102020,lv = 55,bklv = 6,star = 3,mon = {id = 250,desc = "tw-f-26-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4102630,cardId = 1101003,lv = 55,bklv = 6,star = 3,mon = {id = 207,desc = "tw-f-26-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4102631,cardId = 1102005,lv = 55,bklv = 6,star = 3,mon = {id = 249,desc = "tw-f-26-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41027] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4102710,cardId = 1101007,lv = 55,bklv = 6,star = 3,mon = {id = 212,desc = "tw-f-27-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4102711,cardId = 1102002,lv = 55,bklv = 6,star = 3,mon = {id = 257,desc = "tw-f-27-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4102720,cardId = 1101014,lv = 55,bklv = 6,star = 3,mon = {id = 208,desc = "tw-f-27-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4102721,cardId = 1102020,lv = 55,bklv = 6,star = 3,mon = {id = 252,desc = "tw-f-27-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4102730,cardId = 1101003,lv = 55,bklv = 6,star = 3,mon = {id = 209,desc = "tw-f-27-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4102731,cardId = 1102005,lv = 55,bklv = 6,star = 3,mon = {id = 253,desc = "tw-f-27-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41028] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4102810,cardId = 1101007,lv = 56,bklv = 6,star = 3,mon = {id = 201,desc = "tw-f-28-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4102811,cardId = 1102002,lv = 56,bklv = 6,star = 3,mon = {id = 241,desc = "tw-f-28-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4102820,cardId = 1101014,lv = 56,bklv = 6,star = 3,mon = {id = 203,desc = "tw-f-28-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4102821,cardId = 1102020,lv = 56,bklv = 6,star = 3,mon = {id = 244,desc = "tw-f-28-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4102830,cardId = 1101003,lv = 56,bklv = 6,star = 3,mon = {id = 214,desc = "tw-f-28-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4102831,cardId = 1102005,lv = 56,bklv = 6,star = 3,mon = {id = 259,desc = "tw-f-28-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41029] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4102910,cardId = 1101007,lv = 57,bklv = 6,star = 3,mon = {id = 212,desc = "tw-f-29-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4102911,cardId = 1102002,lv = 57,bklv = 6,star = 3,mon = {id = 257,desc = "tw-f-29-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4102920,cardId = 1101014,lv = 57,bklv = 6,star = 3,mon = {id = 208,desc = "tw-f-29-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4102921,cardId = 1102020,lv = 57,bklv = 6,star = 3,mon = {id = 252,desc = "tw-f-29-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4102930,cardId = 1101003,lv = 57,bklv = 6,star = 3,mon = {id = 209,desc = "tw-f-29-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4102931,cardId = 1102005,lv = 57,bklv = 6,star = 3,mon = {id = 253,desc = "tw-f-29-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41030] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4103010,cardId = 1101009,lv = 57,bklv = 6,star = 3,mon = {id = 215,desc = "tw-f-30-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4103011,cardId = 1102014,lv = 57,bklv = 6,star = 3,mon = {id = 260,desc = "tw-f-30-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4103020,cardId = 1101007,lv = 57,bklv = 6,star = 3,mon = {id = 201,desc = "tw-f-30-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4103021,cardId = 1102003,lv = 57,bklv = 6,star = 3,mon = {id = 248,desc = "tw-f-30-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4103030,cardId = 1101011,lv = 57,bklv = 6,star = 3,mon = {id = 211,desc = "tw-f-30-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4103031,cardId = 1102017,lv = 57,bklv = 6,star = 3,mon = {id = 256,desc = "tw-f-30-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41031] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4103110,cardId = 1101009,lv = 58,bklv = 6,star = 3,mon = {id = 209,desc = "tw-f-31-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4103111,cardId = 1102014,lv = 58,bklv = 6,star = 3,mon = {id = 253,desc = "tw-f-31-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4103120,cardId = 1101007,lv = 58,bklv = 6,star = 3,mon = {id = 208,desc = "tw-f-31-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4103121,cardId = 1102003,lv = 58,bklv = 6,star = 3,mon = {id = 252,desc = "tw-f-31-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4103130,cardId = 1101011,lv = 58,bklv = 6,star = 3,mon = {id = 212,desc = "tw-f-31-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4103131,cardId = 1102017,lv = 58,bklv = 6,star = 3,mon = {id = 257,desc = "tw-f-31-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41032] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4103210,cardId = 1101009,lv = 59,bklv = 6,star = 3,mon = {id = 213,desc = "tw-f-32-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4103211,cardId = 1102014,lv = 59,bklv = 6,star = 3,mon = {id = 258,desc = "tw-f-32-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4103220,cardId = 1101007,lv = 59,bklv = 6,star = 3,mon = {id = 207,desc = "tw-f-32-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4103221,cardId = 1102003,lv = 59,bklv = 6,star = 3,mon = {id = 242,desc = "tw-f-32-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4103230,cardId = 1101011,lv = 59,bklv = 6,star = 3,mon = {id = 211,desc = "tw-f-32-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4103231,cardId = 1102017,lv = 59,bklv = 6,star = 3,mon = {id = 256,desc = "tw-f-32-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41033] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4103310,cardId = 1101009,lv = 60,bklv = 7,star = 3,mon = {id = 205,desc = "tw-f-33-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4103311,cardId = 1102014,lv = 60,bklv = 7,star = 3,mon = {id = 240,desc = "tw-f-33-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4103320,cardId = 1101007,lv = 60,bklv = 6,star = 3,mon = {id = 204,desc = "tw-f-33-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4103321,cardId = 1102003,lv = 60,bklv = 6,star = 3,mon = {id = 245,desc = "tw-f-33-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4103330,cardId = 1101011,lv = 60,bklv = 6,star = 3,mon = {id = 207,desc = "tw-f-33-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4103331,cardId = 1102017,lv = 60,bklv = 6,star = 3,mon = {id = 249,desc = "tw-f-33-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41034] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4103410,cardId = 1101009,lv = 60,bklv = 7,star = 3,mon = {id = 212,desc = "tw-f-34-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4103411,cardId = 1102014,lv = 60,bklv = 7,star = 3,mon = {id = 257,desc = "tw-f-34-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4103420,cardId = 1101007,lv = 60,bklv = 7,star = 3,mon = {id = 208,desc = "tw-f-34-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4103421,cardId = 1102003,lv = 60,bklv = 7,star = 3,mon = {id = 252,desc = "tw-f-34-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4103430,cardId = 1101011,lv = 60,bklv = 6,star = 3,mon = {id = 213,desc = "tw-f-34-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4103431,cardId = 1102017,lv = 60,bklv = 6,star = 3,mon = {id = 258,desc = "tw-f-34-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41035] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4103510,cardId = 1101009,lv = 60,bklv = 7,star = 3,mon = {id = 201,desc = "tw-f-35-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4103511,cardId = 1102014,lv = 60,bklv = 7,star = 3,mon = {id = 241,desc = "tw-f-35-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4103520,cardId = 1101007,lv = 60,bklv = 7,star = 3,mon = {id = 203,desc = "tw-f-35-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4103521,cardId = 1102003,lv = 60,bklv = 7,star = 3,mon = {id = 244,desc = "tw-f-35-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4103530,cardId = 1101011,lv = 60,bklv = 7,star = 3,mon = {id = 214,desc = "tw-f-35-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4103531,cardId = 1102017,lv = 60,bklv = 7,star = 3,mon = {id = 259,desc = "tw-f-35-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41036] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4103610,cardId = 1101009,lv = 61,bklv = 7,star = 3,mon = {id = 212,desc = "tw-f-36-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4103611,cardId = 1102014,lv = 61,bklv = 7,star = 3,mon = {id = 257,desc = "tw-f-36-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4103620,cardId = 1101007,lv = 61,bklv = 7,star = 3,mon = {id = 208,desc = "tw-f-36-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4103621,cardId = 1102003,lv = 61,bklv = 7,star = 3,mon = {id = 252,desc = "tw-f-36-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4103630,cardId = 1101011,lv = 61,bklv = 7,star = 3,mon = {id = 209,desc = "tw-f-36-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4103631,cardId = 1102017,lv = 61,bklv = 7,star = 3,mon = {id = 253,desc = "tw-f-36-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41037] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4103710,cardId = 1101009,lv = 62,bklv = 7,star = 3,mon = {id = 215,desc = "tw-f-37-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4103711,cardId = 1102014,lv = 62,bklv = 7,star = 3,mon = {id = 260,desc = "tw-f-37-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4103720,cardId = 1101007,lv = 62,bklv = 7,star = 3,mon = {id = 201,desc = "tw-f-37-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4103721,cardId = 1102003,lv = 62,bklv = 7,star = 3,mon = {id = 248,desc = "tw-f-37-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4103730,cardId = 1101011,lv = 62,bklv = 7,star = 3,mon = {id = 211,desc = "tw-f-37-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4103731,cardId = 1102017,lv = 62,bklv = 7,star = 3,mon = {id = 256,desc = "tw-f-37-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41038] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4103810,cardId = 1101009,lv = 62,bklv = 7,star = 3,mon = {id = 206,desc = "tw-f-38-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4103811,cardId = 1102014,lv = 62,bklv = 7,star = 3,mon = {id = 246,desc = "tw-f-38-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4103820,cardId = 1101007,lv = 62,bklv = 7,star = 3,mon = {id = 203,desc = "tw-f-38-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4103821,cardId = 1102003,lv = 62,bklv = 7,star = 3,mon = {id = 244,desc = "tw-f-38-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4103830,cardId = 1101011,lv = 62,bklv = 7,star = 3,mon = {id = 212,desc = "tw-f-38-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4103831,cardId = 1102017,lv = 62,bklv = 7,star = 3,mon = {id = 257,desc = "tw-f-38-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41039] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4103910,cardId = 1101009,lv = 63,bklv = 7,star = 3,mon = {id = 209,desc = "tw-f-39-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4103911,cardId = 1102014,lv = 63,bklv = 7,star = 3,mon = {id = 253,desc = "tw-f-39-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4103920,cardId = 1101007,lv = 63,bklv = 7,star = 3,mon = {id = 208,desc = "tw-f-39-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4103921,cardId = 1102003,lv = 63,bklv = 7,star = 3,mon = {id = 252,desc = "tw-f-39-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4103930,cardId = 1101011,lv = 63,bklv = 7,star = 3,mon = {id = 212,desc = "tw-f-39-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4103931,cardId = 1102017,lv = 63,bklv = 7,star = 3,mon = {id = 257,desc = "tw-f-39-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41040] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4104010,cardId = 1101009,lv = 64,bklv = 7,star = 3,mon = {id = 213,desc = "tw-f-40-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4104011,cardId = 1102014,lv = 64,bklv = 7,star = 3,mon = {id = 258,desc = "tw-f-40-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4104020,cardId = 1101007,lv = 64,bklv = 7,star = 3,mon = {id = 207,desc = "tw-f-40-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4104021,cardId = 1102003,lv = 64,bklv = 7,star = 3,mon = {id = 242,desc = "tw-f-40-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4104030,cardId = 1101011,lv = 64,bklv = 7,star = 3,mon = {id = 211,desc = "tw-f-40-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4104031,cardId = 1102017,lv = 64,bklv = 7,star = 3,mon = {id = 256,desc = "tw-f-40-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41041] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4104110,cardId = 1101009,lv = 65,bklv = 7,star = 3,mon = {id = 207,desc = "tw-f-41-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4104111,cardId = 1102014,lv = 65,bklv = 7,star = 3,mon = {id = 251,desc = "tw-f-41-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4104120,cardId = 1101007,lv = 65,bklv = 7,star = 3,mon = {id = 205,desc = "tw-f-41-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4104121,cardId = 1102003,lv = 65,bklv = 7,star = 3,mon = {id = 250,desc = "tw-f-41-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4104130,cardId = 1101011,lv = 65,bklv = 7,star = 3,mon = {id = 210,desc = "tw-f-41-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4104131,cardId = 1102017,lv = 65,bklv = 7,star = 3,mon = {id = 255,desc = "tw-f-41-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41042] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4104210,cardId = 1101009,lv = 65,bklv = 7,star = 3,mon = {id = 212,desc = "tw-f-42-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4104211,cardId = 1102014,lv = 65,bklv = 7,star = 3,mon = {id = 257,desc = "tw-f-42-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4104220,cardId = 1101007,lv = 65,bklv = 7,star = 3,mon = {id = 208,desc = "tw-f-42-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4104221,cardId = 1102003,lv = 65,bklv = 7,star = 3,mon = {id = 252,desc = "tw-f-42-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4104230,cardId = 1101011,lv = 65,bklv = 7,star = 3,mon = {id = 209,desc = "tw-f-42-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4104231,cardId = 1102017,lv = 65,bklv = 7,star = 3,mon = {id = 253,desc = "tw-f-42-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41043] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4104310,cardId = 1101009,lv = 66,bklv = 7,star = 3,mon = {id = 201,desc = "tw-f-43-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4104311,cardId = 1102014,lv = 66,bklv = 7,star = 3,mon = {id = 241,desc = "tw-f-43-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4104320,cardId = 1101007,lv = 66,bklv = 7,star = 3,mon = {id = 203,desc = "tw-f-43-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4104321,cardId = 1102003,lv = 66,bklv = 7,star = 3,mon = {id = 244,desc = "tw-f-43-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4104330,cardId = 1101011,lv = 66,bklv = 7,star = 3,mon = {id = 214,desc = "tw-f-43-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4104331,cardId = 1102017,lv = 66,bklv = 7,star = 3,mon = {id = 259,desc = "tw-f-43-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41044] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4104410,cardId = 1101009,lv = 67,bklv = 7,star = 3,mon = {id = 212,desc = "tw-f-44-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4104411,cardId = 1102014,lv = 67,bklv = 7,star = 3,mon = {id = 257,desc = "tw-f-44-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4104420,cardId = 1101007,lv = 67,bklv = 7,star = 3,mon = {id = 208,desc = "tw-f-44-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4104421,cardId = 1102003,lv = 67,bklv = 7,star = 3,mon = {id = 252,desc = "tw-f-44-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4104430,cardId = 1101011,lv = 67,bklv = 7,star = 3,mon = {id = 209,desc = "tw-f-44-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4104431,cardId = 1102017,lv = 67,bklv = 7,star = 3,mon = {id = 253,desc = "tw-f-44-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41045] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4104510,cardId = 1101009,lv = 67,bklv = 7,star = 3,mon = {id = 215,desc = "tw-f-45-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4104511,cardId = 1102014,lv = 67,bklv = 7,star = 3,mon = {id = 260,desc = "tw-f-45-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4104520,cardId = 1101007,lv = 67,bklv = 7,star = 3,mon = {id = 201,desc = "tw-f-45-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4104521,cardId = 1102003,lv = 67,bklv = 7,star = 3,mon = {id = 248,desc = "tw-f-45-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4104530,cardId = 1101011,lv = 67,bklv = 7,star = 3,mon = {id = 211,desc = "tw-f-45-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4104531,cardId = 1102017,lv = 67,bklv = 7,star = 3,mon = {id = 256,desc = "tw-f-45-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41046] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4104610,cardId = 1101009,lv = 68,bklv = 7,star = 3,mon = {id = 209,desc = "tw-f-46-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4104611,cardId = 1102014,lv = 68,bklv = 7,star = 3,mon = {id = 253,desc = "tw-f-46-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4104620,cardId = 1101007,lv = 68,bklv = 7,star = 3,mon = {id = 208,desc = "tw-f-46-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4104621,cardId = 1102003,lv = 68,bklv = 7,star = 3,mon = {id = 252,desc = "tw-f-46-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4104630,cardId = 1101011,lv = 68,bklv = 7,star = 3,mon = {id = 212,desc = "tw-f-46-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4104631,cardId = 1102017,lv = 68,bklv = 7,star = 3,mon = {id = 257,desc = "tw-f-46-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41047] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4104710,cardId = 1101009,lv = 69,bklv = 7,star = 3,mon = {id = 207,desc = "tw-f-47-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4104711,cardId = 1102014,lv = 69,bklv = 7,star = 3,mon = {id = 248,desc = "tw-f-47-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4104720,cardId = 1101007,lv = 69,bklv = 7,star = 3,mon = {id = 207,desc = "tw-f-47-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4104721,cardId = 1102003,lv = 69,bklv = 7,star = 3,mon = {id = 242,desc = "tw-f-47-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4104730,cardId = 1101011,lv = 69,bklv = 7,star = 3,mon = {id = 211,desc = "tw-f-47-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4104731,cardId = 1102017,lv = 69,bklv = 7,star = 3,mon = {id = 256,desc = "tw-f-47-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41048] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4104810,cardId = 1101009,lv = 70,bklv = 8,star = 3,mon = {id = 205,desc = "tw-f-48-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4104811,cardId = 1102014,lv = 70,bklv = 8,star = 3,mon = {id = 240,desc = "tw-f-48-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4104820,cardId = 1101007,lv = 70,bklv = 7,star = 3,mon = {id = 204,desc = "tw-f-48-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4104821,cardId = 1102003,lv = 70,bklv = 7,star = 3,mon = {id = 245,desc = "tw-f-48-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4104830,cardId = 1101011,lv = 70,bklv = 7,star = 3,mon = {id = 207,desc = "tw-f-48-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4104831,cardId = 1102017,lv = 70,bklv = 7,star = 3,mon = {id = 249,desc = "tw-f-48-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41049] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4104910,cardId = 1101009,lv = 70,bklv = 8,star = 3,mon = {id = 212,desc = "tw-f-49-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4104911,cardId = 1102014,lv = 70,bklv = 8,star = 3,mon = {id = 257,desc = "tw-f-49-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4104920,cardId = 1101007,lv = 70,bklv = 8,star = 3,mon = {id = 208,desc = "tw-f-49-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4104921,cardId = 1102003,lv = 70,bklv = 8,star = 3,mon = {id = 252,desc = "tw-f-49-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4104930,cardId = 1101011,lv = 70,bklv = 7,star = 3,mon = {id = 209,desc = "tw-f-49-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4104931,cardId = 1102017,lv = 70,bklv = 7,star = 3,mon = {id = 253,desc = "tw-f-49-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41050] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4105010,cardId = 1101009,lv = 70,bklv = 8,star = 3,mon = {id = 201,desc = "tw-f-50-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4105011,cardId = 1102014,lv = 70,bklv = 8,star = 3,mon = {id = 241,desc = "tw-f-50-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4105020,cardId = 1101007,lv = 70,bklv = 8,star = 3,mon = {id = 203,desc = "tw-f-50-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4105021,cardId = 1102003,lv = 70,bklv = 8,star = 3,mon = {id = 244,desc = "tw-f-50-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4105030,cardId = 1101011,lv = 70,bklv = 8,star = 3,mon = {id = 214,desc = "tw-f-50-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4105031,cardId = 1102017,lv = 70,bklv = 8,star = 3,mon = {id = 259,desc = "tw-f-50-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41051] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4105110,cardId = 1101007,lv = 71,bklv = 8,star = 3,mon = {id = 212,desc = "tw-f-51-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4105111,cardId = 1102012,lv = 71,bklv = 8,star = 3,mon = {id = 257,desc = "tw-f-51-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4105120,cardId = 1101005,lv = 71,bklv = 8,star = 3,mon = {id = 208,desc = "tw-f-51-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4105121,cardId = 1102011,lv = 71,bklv = 8,star = 3,mon = {id = 252,desc = "tw-f-51-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4105130,cardId = 1101010,lv = 71,bklv = 8,star = 3,mon = {id = 209,desc = "tw-f-51-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4105131,cardId = 1102016,lv = 71,bklv = 8,star = 3,mon = {id = 253,desc = "tw-f-51-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41052] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4105210,cardId = 1101007,lv = 72,bklv = 8,star = 3,mon = {id = 215,desc = "tw-f-52-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4105211,cardId = 1102012,lv = 72,bklv = 8,star = 3,mon = {id = 260,desc = "tw-f-52-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4105220,cardId = 1101005,lv = 72,bklv = 8,star = 3,mon = {id = 201,desc = "tw-f-52-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4105221,cardId = 1102011,lv = 72,bklv = 8,star = 3,mon = {id = 248,desc = "tw-f-52-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4105230,cardId = 1101010,lv = 72,bklv = 8,star = 3,mon = {id = 211,desc = "tw-f-52-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4105231,cardId = 1102016,lv = 72,bklv = 8,star = 3,mon = {id = 256,desc = "tw-f-52-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41053] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4105310,cardId = 1101007,lv = 72,bklv = 8,star = 3,mon = {id = 206,desc = "tw-f-53-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4105311,cardId = 1102012,lv = 72,bklv = 8,star = 3,mon = {id = 246,desc = "tw-f-53-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4105320,cardId = 1101005,lv = 72,bklv = 8,star = 3,mon = {id = 203,desc = "tw-f-53-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4105321,cardId = 1102011,lv = 72,bklv = 8,star = 3,mon = {id = 244,desc = "tw-f-53-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4105330,cardId = 1101010,lv = 72,bklv = 8,star = 3,mon = {id = 212,desc = "tw-f-53-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4105331,cardId = 1102016,lv = 72,bklv = 8,star = 3,mon = {id = 257,desc = "tw-f-53-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41054] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4105410,cardId = 1101007,lv = 73,bklv = 8,star = 3,mon = {id = 209,desc = "tw-f-54-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4105411,cardId = 1102012,lv = 73,bklv = 8,star = 3,mon = {id = 253,desc = "tw-f-54-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4105420,cardId = 1101005,lv = 73,bklv = 8,star = 3,mon = {id = 208,desc = "tw-f-54-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4105421,cardId = 1102011,lv = 73,bklv = 8,star = 3,mon = {id = 252,desc = "tw-f-54-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4105430,cardId = 1101010,lv = 73,bklv = 8,star = 3,mon = {id = 212,desc = "tw-f-54-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4105431,cardId = 1102016,lv = 73,bklv = 8,star = 3,mon = {id = 257,desc = "tw-f-54-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41055] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4105510,cardId = 1101007,lv = 74,bklv = 8,star = 3,mon = {id = 213,desc = "tw-f-55-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4105511,cardId = 1102012,lv = 74,bklv = 8,star = 3,mon = {id = 258,desc = "tw-f-55-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4105520,cardId = 1101005,lv = 74,bklv = 8,star = 3,mon = {id = 207,desc = "tw-f-55-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4105521,cardId = 1102011,lv = 74,bklv = 8,star = 3,mon = {id = 242,desc = "tw-f-55-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4105530,cardId = 1101010,lv = 74,bklv = 8,star = 3,mon = {id = 211,desc = "tw-f-55-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4105531,cardId = 1102016,lv = 74,bklv = 8,star = 3,mon = {id = 256,desc = "tw-f-55-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41056] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4105610,cardId = 1101007,lv = 75,bklv = 8,star = 3,mon = {id = 206,desc = "tw-f-56-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4105611,cardId = 1102012,lv = 75,bklv = 8,star = 3,mon = {id = 246,desc = "tw-f-56-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4105620,cardId = 1101005,lv = 75,bklv = 8,star = 3,mon = {id = 205,desc = "tw-f-56-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4105621,cardId = 1102011,lv = 75,bklv = 8,star = 3,mon = {id = 250,desc = "tw-f-56-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4105630,cardId = 1101010,lv = 75,bklv = 8,star = 3,mon = {id = 207,desc = "tw-f-56-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4105631,cardId = 1102016,lv = 75,bklv = 8,star = 3,mon = {id = 249,desc = "tw-f-56-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41057] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4105710,cardId = 1101007,lv = 75,bklv = 8,star = 3,mon = {id = 212,desc = "tw-f-57-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4105711,cardId = 1102012,lv = 75,bklv = 8,star = 3,mon = {id = 257,desc = "tw-f-57-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4105720,cardId = 1101005,lv = 75,bklv = 8,star = 3,mon = {id = 208,desc = "tw-f-57-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4105721,cardId = 1102011,lv = 75,bklv = 8,star = 3,mon = {id = 252,desc = "tw-f-57-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4105730,cardId = 1101010,lv = 75,bklv = 8,star = 3,mon = {id = 209,desc = "tw-f-57-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4105731,cardId = 1102016,lv = 75,bklv = 8,star = 3,mon = {id = 253,desc = "tw-f-57-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41058] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4105810,cardId = 1101007,lv = 76,bklv = 8,star = 3,mon = {id = 201,desc = "tw-f-58-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4105811,cardId = 1102012,lv = 76,bklv = 8,star = 3,mon = {id = 241,desc = "tw-f-58-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4105820,cardId = 1101005,lv = 76,bklv = 8,star = 3,mon = {id = 203,desc = "tw-f-58-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4105821,cardId = 1102011,lv = 76,bklv = 8,star = 3,mon = {id = 244,desc = "tw-f-58-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4105830,cardId = 1101010,lv = 76,bklv = 8,star = 3,mon = {id = 214,desc = "tw-f-58-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4105831,cardId = 1102016,lv = 76,bklv = 8,star = 3,mon = {id = 259,desc = "tw-f-58-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41059] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4105910,cardId = 1101007,lv = 77,bklv = 8,star = 3,mon = {id = 212,desc = "tw-f-59-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4105911,cardId = 1102012,lv = 77,bklv = 8,star = 3,mon = {id = 257,desc = "tw-f-59-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4105920,cardId = 1101005,lv = 77,bklv = 8,star = 3,mon = {id = 208,desc = "tw-f-59-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4105921,cardId = 1102011,lv = 77,bklv = 8,star = 3,mon = {id = 252,desc = "tw-f-59-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4105930,cardId = 1101010,lv = 77,bklv = 8,star = 3,mon = {id = 209,desc = "tw-f-59-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4105931,cardId = 1102016,lv = 77,bklv = 8,star = 3,mon = {id = 253,desc = "tw-f-59-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41060] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4106010,cardId = 1101007,lv = 77,bklv = 8,star = 3,mon = {id = 215,desc = "tw-f-60-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4106011,cardId = 1102012,lv = 77,bklv = 8,star = 3,mon = {id = 260,desc = "tw-f-60-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4106020,cardId = 1101005,lv = 77,bklv = 8,star = 3,mon = {id = 201,desc = "tw-f-60-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4106021,cardId = 1102011,lv = 77,bklv = 8,star = 3,mon = {id = 248,desc = "tw-f-60-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4106030,cardId = 1101010,lv = 77,bklv = 8,star = 3,mon = {id = 211,desc = "tw-f-60-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4106031,cardId = 1102016,lv = 77,bklv = 8,star = 3,mon = {id = 256,desc = "tw-f-60-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41061] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4106110,cardId = 1101007,lv = 78,bklv = 8,star = 4,mon = {id = 209,desc = "tw-f-61-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4106111,cardId = 1102012,lv = 78,bklv = 8,star = 4,mon = {id = 253,desc = "tw-f-61-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4106120,cardId = 1101005,lv = 78,bklv = 8,star = 4,mon = {id = 208,desc = "tw-f-61-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4106121,cardId = 1102011,lv = 78,bklv = 8,star = 4,mon = {id = 252,desc = "tw-f-61-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4106130,cardId = 1101010,lv = 78,bklv = 8,star = 4,mon = {id = 212,desc = "tw-f-61-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4106131,cardId = 1102016,lv = 78,bklv = 8,star = 4,mon = {id = 257,desc = "tw-f-61-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41062] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4106210,cardId = 1101007,lv = 79,bklv = 8,star = 4,mon = {id = 207,desc = "tw-f-62-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4106211,cardId = 1102012,lv = 79,bklv = 8,star = 4,mon = {id = 248,desc = "tw-f-62-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4106220,cardId = 1101005,lv = 79,bklv = 8,star = 4,mon = {id = 207,desc = "tw-f-62-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4106221,cardId = 1102011,lv = 79,bklv = 8,star = 4,mon = {id = 242,desc = "tw-f-62-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4106230,cardId = 1101010,lv = 79,bklv = 8,star = 4,mon = {id = 211,desc = "tw-f-62-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4106231,cardId = 1102016,lv = 79,bklv = 8,star = 4,mon = {id = 256,desc = "tw-f-62-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41063] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4106310,cardId = 1101007,lv = 80,bklv = 9,star = 4,mon = {id = 205,desc = "tw-f-63-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4106311,cardId = 1102012,lv = 80,bklv = 9,star = 4,mon = {id = 240,desc = "tw-f-63-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4106320,cardId = 1101005,lv = 80,bklv = 8,star = 4,mon = {id = 204,desc = "tw-f-63-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4106321,cardId = 1102011,lv = 80,bklv = 8,star = 4,mon = {id = 245,desc = "tw-f-63-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4106330,cardId = 1101010,lv = 80,bklv = 8,star = 4,mon = {id = 207,desc = "tw-f-63-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4106331,cardId = 1102016,lv = 80,bklv = 8,star = 4,mon = {id = 249,desc = "tw-f-63-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41064] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4106410,cardId = 1101007,lv = 80,bklv = 9,star = 4,mon = {id = 212,desc = "tw-f-64-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4106411,cardId = 1102012,lv = 80,bklv = 9,star = 4,mon = {id = 257,desc = "tw-f-64-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4106420,cardId = 1101005,lv = 80,bklv = 9,star = 4,mon = {id = 208,desc = "tw-f-64-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4106421,cardId = 1102011,lv = 80,bklv = 9,star = 4,mon = {id = 252,desc = "tw-f-64-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4106430,cardId = 1101010,lv = 80,bklv = 8,star = 4,mon = {id = 213,desc = "tw-f-64-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4106431,cardId = 1102016,lv = 80,bklv = 8,star = 4,mon = {id = 258,desc = "tw-f-64-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41065] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4106510,cardId = 1101007,lv = 80,bklv = 9,star = 4,mon = {id = 201,desc = "tw-f-65-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4106511,cardId = 1102012,lv = 80,bklv = 9,star = 4,mon = {id = 241,desc = "tw-f-65-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4106520,cardId = 1101005,lv = 80,bklv = 9,star = 4,mon = {id = 203,desc = "tw-f-65-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4106521,cardId = 1102011,lv = 80,bklv = 9,star = 4,mon = {id = 244,desc = "tw-f-65-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4106530,cardId = 1101010,lv = 80,bklv = 9,star = 4,mon = {id = 214,desc = "tw-f-65-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4106531,cardId = 1102016,lv = 80,bklv = 9,star = 4,mon = {id = 259,desc = "tw-f-65-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41066] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4106610,cardId = 1101007,lv = 81,bklv = 9,star = 4,mon = {id = 212,desc = "tw-f-66-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4106611,cardId = 1102012,lv = 81,bklv = 9,star = 4,mon = {id = 257,desc = "tw-f-66-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4106620,cardId = 1101005,lv = 81,bklv = 9,star = 4,mon = {id = 208,desc = "tw-f-66-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4106621,cardId = 1102011,lv = 81,bklv = 9,star = 4,mon = {id = 252,desc = "tw-f-66-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4106630,cardId = 1101010,lv = 81,bklv = 9,star = 4,mon = {id = 209,desc = "tw-f-66-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4106631,cardId = 1102016,lv = 81,bklv = 9,star = 4,mon = {id = 253,desc = "tw-f-66-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41067] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4106710,cardId = 1101007,lv = 82,bklv = 9,star = 4,mon = {id = 215,desc = "tw-f-67-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4106711,cardId = 1102012,lv = 82,bklv = 9,star = 4,mon = {id = 260,desc = "tw-f-67-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4106720,cardId = 1101005,lv = 82,bklv = 9,star = 4,mon = {id = 201,desc = "tw-f-67-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4106721,cardId = 1102011,lv = 82,bklv = 9,star = 4,mon = {id = 248,desc = "tw-f-67-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4106730,cardId = 1101010,lv = 82,bklv = 9,star = 4,mon = {id = 211,desc = "tw-f-67-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4106731,cardId = 1102016,lv = 82,bklv = 9,star = 4,mon = {id = 256,desc = "tw-f-67-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41068] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4106810,cardId = 1101007,lv = 82,bklv = 9,star = 4,mon = {id = 206,desc = "tw-f-68-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4106811,cardId = 1102012,lv = 82,bklv = 9,star = 4,mon = {id = 246,desc = "tw-f-68-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4106820,cardId = 1101005,lv = 82,bklv = 9,star = 4,mon = {id = 203,desc = "tw-f-68-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4106821,cardId = 1102011,lv = 82,bklv = 9,star = 4,mon = {id = 244,desc = "tw-f-68-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4106830,cardId = 1101010,lv = 82,bklv = 9,star = 4,mon = {id = 212,desc = "tw-f-68-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4106831,cardId = 1102016,lv = 82,bklv = 9,star = 4,mon = {id = 257,desc = "tw-f-68-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41069] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4106910,cardId = 1101007,lv = 83,bklv = 9,star = 4,mon = {id = 209,desc = "tw-f-69-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4106911,cardId = 1102012,lv = 83,bklv = 9,star = 4,mon = {id = 253,desc = "tw-f-69-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4106920,cardId = 1101005,lv = 83,bklv = 9,star = 4,mon = {id = 208,desc = "tw-f-69-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4106921,cardId = 1102011,lv = 83,bklv = 9,star = 4,mon = {id = 252,desc = "tw-f-69-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4106930,cardId = 1101010,lv = 83,bklv = 9,star = 4,mon = {id = 212,desc = "tw-f-69-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4106931,cardId = 1102016,lv = 83,bklv = 9,star = 4,mon = {id = 257,desc = "tw-f-69-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41070] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4107010,cardId = 1101007,lv = 85,bklv = 10,star = 4,mon = {id = 207,desc = "tw-f-70-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4107011,cardId = 1102012,lv = 85,bklv = 10,star = 4,mon = {id = 248,desc = "tw-f-70-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4107020,cardId = 1101005,lv = 85,bklv = 9,star = 4,mon = {id = 207,desc = "tw-f-70-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4107021,cardId = 1102011,lv = 85,bklv = 9,star = 4,mon = {id = 242,desc = "tw-f-70-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4107030,cardId = 1101010,lv = 85,bklv = 9,star = 4,mon = {id = 211,desc = "tw-f-70-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4107031,cardId = 1102016,lv = 85,bklv = 9,star = 4,mon = {id = 256,desc = "tw-f-70-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41071] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4107110,cardId = 1101007,lv = 85,bklv = 10,star = 4,mon = {id = 207,desc = "tw-f-71-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4107111,cardId = 1102012,lv = 85,bklv = 10,star = 4,mon = {id = 251,desc = "tw-f-71-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4107120,cardId = 1101005,lv = 85,bklv = 10,star = 4,mon = {id = 205,desc = "tw-f-71-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4107121,cardId = 1102011,lv = 85,bklv = 10,star = 4,mon = {id = 250,desc = "tw-f-71-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4107130,cardId = 1101010,lv = 85,bklv = 9,star = 4,mon = {id = 210,desc = "tw-f-71-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4107131,cardId = 1102016,lv = 85,bklv = 9,star = 4,mon = {id = 255,desc = "tw-f-71-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41072] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4107210,cardId = 1101007,lv = 85,bklv = 10,star = 4,mon = {id = 212,desc = "tw-f-72-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4107211,cardId = 1102012,lv = 85,bklv = 10,star = 4,mon = {id = 257,desc = "tw-f-72-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4107220,cardId = 1101005,lv = 85,bklv = 10,star = 4,mon = {id = 208,desc = "tw-f-72-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4107221,cardId = 1102011,lv = 85,bklv = 10,star = 4,mon = {id = 252,desc = "tw-f-72-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4107230,cardId = 1101010,lv = 85,bklv = 10,star = 4,mon = {id = 209,desc = "tw-f-72-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4107231,cardId = 1102016,lv = 85,bklv = 10,star = 4,mon = {id = 253,desc = "tw-f-72-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41073] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4107310,cardId = 1101007,lv = 86,bklv = 10,star = 4,mon = {id = 201,desc = "tw-f-73-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4107311,cardId = 1102012,lv = 86,bklv = 10,star = 4,mon = {id = 241,desc = "tw-f-73-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4107320,cardId = 1101005,lv = 86,bklv = 10,star = 4,mon = {id = 203,desc = "tw-f-73-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4107321,cardId = 1102011,lv = 86,bklv = 10,star = 4,mon = {id = 244,desc = "tw-f-73-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4107330,cardId = 1101010,lv = 86,bklv = 10,star = 4,mon = {id = 214,desc = "tw-f-73-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4107331,cardId = 1102016,lv = 86,bklv = 10,star = 4,mon = {id = 259,desc = "tw-f-73-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41074] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4107410,cardId = 1101007,lv = 87,bklv = 10,star = 4,mon = {id = 212,desc = "tw-f-74-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4107411,cardId = 1102012,lv = 87,bklv = 10,star = 4,mon = {id = 257,desc = "tw-f-74-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4107420,cardId = 1101005,lv = 87,bklv = 10,star = 4,mon = {id = 208,desc = "tw-f-74-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4107421,cardId = 1102011,lv = 87,bklv = 10,star = 4,mon = {id = 252,desc = "tw-f-74-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4107430,cardId = 1101010,lv = 87,bklv = 10,star = 4,mon = {id = 209,desc = "tw-f-74-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4107431,cardId = 1102016,lv = 87,bklv = 10,star = 4,mon = {id = 253,desc = "tw-f-74-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41075] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4107510,cardId = 1101007,lv = 87,bklv = 10,star = 4,mon = {id = 215,desc = "tw-f-75-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4107511,cardId = 1102012,lv = 87,bklv = 10,star = 4,mon = {id = 260,desc = "tw-f-75-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4107520,cardId = 1101005,lv = 87,bklv = 10,star = 4,mon = {id = 201,desc = "tw-f-75-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4107521,cardId = 1102011,lv = 87,bklv = 10,star = 4,mon = {id = 248,desc = "tw-f-75-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4107530,cardId = 1101010,lv = 87,bklv = 10,star = 4,mon = {id = 211,desc = "tw-f-75-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4107531,cardId = 1102016,lv = 87,bklv = 10,star = 4,mon = {id = 256,desc = "tw-f-75-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41076] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4107610,cardId = 1101007,lv = 88,bklv = 10,star = 4,mon = {id = 209,desc = "tw-f-76-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4107611,cardId = 1102012,lv = 88,bklv = 10,star = 4,mon = {id = 253,desc = "tw-f-76-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4107620,cardId = 1101005,lv = 88,bklv = 10,star = 4,mon = {id = 208,desc = "tw-f-76-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4107621,cardId = 1102011,lv = 88,bklv = 10,star = 4,mon = {id = 252,desc = "tw-f-76-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4107630,cardId = 1101010,lv = 88,bklv = 10,star = 4,mon = {id = 212,desc = "tw-f-76-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4107631,cardId = 1102016,lv = 88,bklv = 10,star = 4,mon = {id = 257,desc = "tw-f-76-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41077] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4107710,cardId = 1101007,lv = 89,bklv = 10,star = 4,mon = {id = 207,desc = "tw-f-77-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4107711,cardId = 1102012,lv = 89,bklv = 10,star = 4,mon = {id = 248,desc = "tw-f-77-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4107720,cardId = 1101005,lv = 89,bklv = 10,star = 4,mon = {id = 207,desc = "tw-f-77-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4107721,cardId = 1102011,lv = 89,bklv = 10,star = 4,mon = {id = 242,desc = "tw-f-77-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4107730,cardId = 1101010,lv = 89,bklv = 10,star = 4,mon = {id = 211,desc = "tw-f-77-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4107731,cardId = 1102016,lv = 89,bklv = 10,star = 4,mon = {id = 256,desc = "tw-f-77-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41078] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4107810,cardId = 1101007,lv = 90,bklv = 11,star = 4,mon = {id = 205,desc = "tw-f-78-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4107811,cardId = 1102012,lv = 90,bklv = 11,star = 4,mon = {id = 240,desc = "tw-f-78-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4107820,cardId = 1101005,lv = 90,bklv = 10,star = 4,mon = {id = 204,desc = "tw-f-78-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4107821,cardId = 1102011,lv = 90,bklv = 10,star = 4,mon = {id = 245,desc = "tw-f-78-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4107830,cardId = 1101010,lv = 90,bklv = 10,star = 4,mon = {id = 207,desc = "tw-f-78-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4107831,cardId = 1102016,lv = 90,bklv = 10,star = 4,mon = {id = 249,desc = "tw-f-78-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41079] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4107910,cardId = 1101007,lv = 90,bklv = 11,star = 4,mon = {id = 201,desc = "tw-f-79-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4107911,cardId = 1102012,lv = 90,bklv = 11,star = 4,mon = {id = 241,desc = "tw-f-79-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4107920,cardId = 1101005,lv = 90,bklv = 11,star = 4,mon = {id = 203,desc = "tw-f-79-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4107921,cardId = 1102011,lv = 90,bklv = 11,star = 4,mon = {id = 244,desc = "tw-f-79-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4107930,cardId = 1101010,lv = 90,bklv = 10,star = 4,mon = {id = 214,desc = "tw-f-79-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4107931,cardId = 1102016,lv = 90,bklv = 10,star = 4,mon = {id = 259,desc = "tw-f-79-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41080] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4108010,cardId = 1101007,lv = 90,bklv = 11,star = 5,mon = {id = 212,desc = "tw-f-80-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4108011,cardId = 1102012,lv = 90,bklv = 11,star = 5,mon = {id = 257,desc = "tw-f-80-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4108020,cardId = 1101005,lv = 90,bklv = 11,star = 5,mon = {id = 208,desc = "tw-f-80-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4108021,cardId = 1102011,lv = 90,bklv = 11,star = 5,mon = {id = 252,desc = "tw-f-80-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4108030,cardId = 1101010,lv = 90,bklv = 11,star = 5,mon = {id = 209,desc = "tw-f-80-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4108031,cardId = 1102016,lv = 90,bklv = 11,star = 5,mon = {id = 253,desc = "tw-f-80-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41081] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4108110,cardId = 1101007,lv = 91,bklv = 11,star = 5,mon = {id = 215,desc = "tw-f-81-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4108111,cardId = 1102012,lv = 91,bklv = 11,star = 5,mon = {id = 260,desc = "tw-f-81-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4108120,cardId = 1101005,lv = 91,bklv = 11,star = 5,mon = {id = 201,desc = "tw-f-81-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4108121,cardId = 1102011,lv = 91,bklv = 11,star = 5,mon = {id = 248,desc = "tw-f-81-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4108130,cardId = 1101010,lv = 91,bklv = 11,star = 5,mon = {id = 211,desc = "tw-f-81-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4108131,cardId = 1102016,lv = 91,bklv = 11,star = 5,mon = {id = 256,desc = "tw-f-81-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41082] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4108210,cardId = 1101007,lv = 91,bklv = 11,star = 5,mon = {id = 206,desc = "tw-f-82-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4108211,cardId = 1102012,lv = 91,bklv = 11,star = 5,mon = {id = 246,desc = "tw-f-82-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4108220,cardId = 1101005,lv = 91,bklv = 11,star = 5,mon = {id = 203,desc = "tw-f-82-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4108221,cardId = 1102011,lv = 91,bklv = 11,star = 5,mon = {id = 244,desc = "tw-f-82-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4108230,cardId = 1101010,lv = 91,bklv = 11,star = 5,mon = {id = 212,desc = "tw-f-82-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4108231,cardId = 1102016,lv = 91,bklv = 11,star = 5,mon = {id = 257,desc = "tw-f-82-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41083] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4108310,cardId = 1101007,lv = 92,bklv = 11,star = 5,mon = {id = 209,desc = "tw-f-83-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4108311,cardId = 1102012,lv = 92,bklv = 11,star = 5,mon = {id = 253,desc = "tw-f-83-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4108320,cardId = 1101005,lv = 92,bklv = 11,star = 5,mon = {id = 208,desc = "tw-f-83-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4108321,cardId = 1102011,lv = 92,bklv = 11,star = 5,mon = {id = 252,desc = "tw-f-83-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4108330,cardId = 1101010,lv = 92,bklv = 11,star = 5,mon = {id = 212,desc = "tw-f-83-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4108331,cardId = 1102016,lv = 92,bklv = 11,star = 5,mon = {id = 257,desc = "tw-f-83-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41084] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4108410,cardId = 1101007,lv = 92,bklv = 11,star = 5,mon = {id = 213,desc = "tw-f-84-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4108411,cardId = 1102012,lv = 92,bklv = 11,star = 5,mon = {id = 258,desc = "tw-f-84-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4108420,cardId = 1101005,lv = 92,bklv = 11,star = 5,mon = {id = 207,desc = "tw-f-84-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4108421,cardId = 1102011,lv = 92,bklv = 11,star = 5,mon = {id = 242,desc = "tw-f-84-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4108430,cardId = 1101010,lv = 92,bklv = 11,star = 5,mon = {id = 211,desc = "tw-f-84-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4108431,cardId = 1102016,lv = 92,bklv = 11,star = 5,mon = {id = 256,desc = "tw-f-84-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41085] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4108510,cardId = 1101007,lv = 93,bklv = 11,star = 5,mon = {id = 206,desc = "tw-f-85-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4108511,cardId = 1102012,lv = 93,bklv = 11,star = 5,mon = {id = 246,desc = "tw-f-85-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4108520,cardId = 1101005,lv = 93,bklv = 11,star = 5,mon = {id = 205,desc = "tw-f-85-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4108521,cardId = 1102011,lv = 93,bklv = 11,star = 5,mon = {id = 250,desc = "tw-f-85-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4108530,cardId = 1101010,lv = 93,bklv = 11,star = 5,mon = {id = 207,desc = "tw-f-85-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4108531,cardId = 1102016,lv = 93,bklv = 11,star = 5,mon = {id = 249,desc = "tw-f-85-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41086] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4108610,cardId = 1101007,lv = 93,bklv = 11,star = 5,mon = {id = 212,desc = "tw-f-86-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4108611,cardId = 1102012,lv = 93,bklv = 11,star = 5,mon = {id = 257,desc = "tw-f-86-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4108620,cardId = 1101005,lv = 93,bklv = 11,star = 5,mon = {id = 208,desc = "tw-f-86-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4108621,cardId = 1102011,lv = 93,bklv = 11,star = 5,mon = {id = 252,desc = "tw-f-86-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4108630,cardId = 1101010,lv = 93,bklv = 11,star = 5,mon = {id = 209,desc = "tw-f-86-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4108631,cardId = 1102016,lv = 93,bklv = 11,star = 5,mon = {id = 253,desc = "tw-f-86-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41087] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4108710,cardId = 1101007,lv = 94,bklv = 11,star = 5,mon = {id = 201,desc = "tw-f-87-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4108711,cardId = 1102012,lv = 94,bklv = 11,star = 5,mon = {id = 241,desc = "tw-f-87-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4108720,cardId = 1101005,lv = 94,bklv = 11,star = 5,mon = {id = 203,desc = "tw-f-87-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4108721,cardId = 1102011,lv = 94,bklv = 11,star = 5,mon = {id = 244,desc = "tw-f-87-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4108730,cardId = 1101010,lv = 94,bklv = 11,star = 5,mon = {id = 214,desc = "tw-f-87-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4108731,cardId = 1102016,lv = 94,bklv = 11,star = 5,mon = {id = 259,desc = "tw-f-87-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41088] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4108810,cardId = 1101007,lv = 95,bklv = 12,star = 5,mon = {id = 212,desc = "tw-f-88-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4108811,cardId = 1102012,lv = 95,bklv = 12,star = 5,mon = {id = 257,desc = "tw-f-88-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4108820,cardId = 1101005,lv = 95,bklv = 11,star = 5,mon = {id = 208,desc = "tw-f-88-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4108821,cardId = 1102011,lv = 95,bklv = 11,star = 5,mon = {id = 252,desc = "tw-f-88-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4108830,cardId = 1101010,lv = 95,bklv = 11,star = 5,mon = {id = 209,desc = "tw-f-88-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4108831,cardId = 1102016,lv = 95,bklv = 11,star = 5,mon = {id = 253,desc = "tw-f-88-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41089] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4108910,cardId = 1101007,lv = 95,bklv = 12,star = 5,mon = {id = 215,desc = "tw-f-89-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4108911,cardId = 1102012,lv = 95,bklv = 12,star = 5,mon = {id = 260,desc = "tw-f-89-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4108920,cardId = 1101005,lv = 95,bklv = 12,star = 5,mon = {id = 201,desc = "tw-f-89-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4108921,cardId = 1102011,lv = 95,bklv = 12,star = 5,mon = {id = 248,desc = "tw-f-89-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4108930,cardId = 1101010,lv = 95,bklv = 11,star = 5,mon = {id = 211,desc = "tw-f-89-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4108931,cardId = 1102016,lv = 95,bklv = 11,star = 5,mon = {id = 256,desc = "tw-f-89-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41090] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4109010,cardId = 1101007,lv = 95,bklv = 12,star = 5,mon = {id = 209,desc = "tw-f-90-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4109011,cardId = 1102012,lv = 95,bklv = 12,star = 5,mon = {id = 253,desc = "tw-f-90-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4109020,cardId = 1101005,lv = 95,bklv = 12,star = 5,mon = {id = 208,desc = "tw-f-90-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4109021,cardId = 1102011,lv = 95,bklv = 12,star = 5,mon = {id = 252,desc = "tw-f-90-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4109030,cardId = 1101010,lv = 95,bklv = 12,star = 5,mon = {id = 212,desc = "tw-f-90-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4109031,cardId = 1102016,lv = 95,bklv = 12,star = 5,mon = {id = 257,desc = "tw-f-90-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41091] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4109110,cardId = 1101007,lv = 96,bklv = 12,star = 5,mon = {id = 207,desc = "tw-f-91-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4109111,cardId = 1102012,lv = 96,bklv = 12,star = 5,mon = {id = 248,desc = "tw-f-91-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4109120,cardId = 1101005,lv = 96,bklv = 12,star = 5,mon = {id = 207,desc = "tw-f-91-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4109121,cardId = 1102011,lv = 96,bklv = 12,star = 5,mon = {id = 242,desc = "tw-f-91-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4109130,cardId = 1101010,lv = 96,bklv = 12,star = 5,mon = {id = 211,desc = "tw-f-91-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4109131,cardId = 1102016,lv = 96,bklv = 12,star = 5,mon = {id = 256,desc = "tw-f-91-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41092] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4109210,cardId = 1101007,lv = 97,bklv = 12,star = 5,mon = {id = 205,desc = "tw-f-92-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4109211,cardId = 1102012,lv = 97,bklv = 12,star = 5,mon = {id = 240,desc = "tw-f-92-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4109220,cardId = 1101005,lv = 97,bklv = 12,star = 5,mon = {id = 204,desc = "tw-f-92-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4109221,cardId = 1102011,lv = 97,bklv = 12,star = 5,mon = {id = 245,desc = "tw-f-92-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4109230,cardId = 1101010,lv = 97,bklv = 12,star = 5,mon = {id = 207,desc = "tw-f-92-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4109231,cardId = 1102016,lv = 97,bklv = 12,star = 5,mon = {id = 249,desc = "tw-f-92-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41093] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4109310,cardId = 1101007,lv = 97,bklv = 12,star = 5,mon = {id = 212,desc = "tw-f-93-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4109311,cardId = 1102012,lv = 97,bklv = 12,star = 5,mon = {id = 257,desc = "tw-f-93-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4109320,cardId = 1101005,lv = 97,bklv = 12,star = 5,mon = {id = 208,desc = "tw-f-93-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4109321,cardId = 1102011,lv = 97,bklv = 12,star = 5,mon = {id = 252,desc = "tw-f-93-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4109330,cardId = 1101010,lv = 97,bklv = 12,star = 5,mon = {id = 213,desc = "tw-f-93-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4109331,cardId = 1102016,lv = 97,bklv = 12,star = 5,mon = {id = 258,desc = "tw-f-93-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41094] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4109410,cardId = 1101007,lv = 98,bklv = 12,star = 5,mon = {id = 201,desc = "tw-f-94-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4109411,cardId = 1102012,lv = 98,bklv = 12,star = 5,mon = {id = 241,desc = "tw-f-94-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4109420,cardId = 1101005,lv = 98,bklv = 12,star = 5,mon = {id = 203,desc = "tw-f-94-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4109421,cardId = 1102011,lv = 98,bklv = 12,star = 5,mon = {id = 244,desc = "tw-f-94-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4109430,cardId = 1101010,lv = 98,bklv = 12,star = 5,mon = {id = 214,desc = "tw-f-94-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4109431,cardId = 1102016,lv = 98,bklv = 12,star = 5,mon = {id = 259,desc = "tw-f-94-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41095] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4109510,cardId = 1101007,lv = 98,bklv = 12,star = 5,mon = {id = 212,desc = "tw-f-95-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4109511,cardId = 1102012,lv = 98,bklv = 12,star = 5,mon = {id = 257,desc = "tw-f-95-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4109520,cardId = 1101005,lv = 98,bklv = 12,star = 5,mon = {id = 208,desc = "tw-f-95-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4109521,cardId = 1102011,lv = 98,bklv = 12,star = 5,mon = {id = 252,desc = "tw-f-95-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4109530,cardId = 1101010,lv = 98,bklv = 12,star = 5,mon = {id = 209,desc = "tw-f-95-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4109531,cardId = 1102016,lv = 98,bklv = 12,star = 5,mon = {id = 253,desc = "tw-f-95-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41096] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4109610,cardId = 1101007,lv = 99,bklv = 12,star = 5,mon = {id = 215,desc = "tw-f-96-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4109611,cardId = 1102012,lv = 99,bklv = 12,star = 5,mon = {id = 260,desc = "tw-f-96-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4109620,cardId = 1101005,lv = 99,bklv = 12,star = 5,mon = {id = 201,desc = "tw-f-96-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4109621,cardId = 1102011,lv = 99,bklv = 12,star = 5,mon = {id = 248,desc = "tw-f-96-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4109630,cardId = 1101010,lv = 99,bklv = 12,star = 5,mon = {id = 211,desc = "tw-f-96-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4109631,cardId = 1102016,lv = 99,bklv = 12,star = 5,mon = {id = 256,desc = "tw-f-96-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41097] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4109710,cardId = 1101007,lv = 99,bklv = 12,star = 5,mon = {id = 206,desc = "tw-f-97-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4109711,cardId = 1102012,lv = 99,bklv = 12,star = 5,mon = {id = 246,desc = "tw-f-97-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4109720,cardId = 1101005,lv = 99,bklv = 12,star = 5,mon = {id = 203,desc = "tw-f-97-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4109721,cardId = 1102011,lv = 99,bklv = 12,star = 5,mon = {id = 244,desc = "tw-f-97-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4109730,cardId = 1101010,lv = 99,bklv = 12,star = 5,mon = {id = 212,desc = "tw-f-97-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4109731,cardId = 1102016,lv = 99,bklv = 12,star = 5,mon = {id = 257,desc = "tw-f-97-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41098] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4109810,cardId = 1101007,lv = 100,bklv = 13,star = 5,mon = {id = 209,desc = "tw-f-98-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4109811,cardId = 1102012,lv = 100,bklv = 13,star = 5,mon = {id = 253,desc = "tw-f-98-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4109820,cardId = 1101005,lv = 100,bklv = 12,star = 5,mon = {id = 208,desc = "tw-f-98-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4109821,cardId = 1102011,lv = 100,bklv = 12,star = 5,mon = {id = 252,desc = "tw-f-98-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4109830,cardId = 1101010,lv = 100,bklv = 12,star = 5,mon = {id = 212,desc = "tw-f-98-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4109831,cardId = 1102016,lv = 100,bklv = 12,star = 5,mon = {id = 257,desc = "tw-f-98-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41099] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4109910,cardId = 1101007,lv = 100,bklv = 13,star = 5,mon = {id = 207,desc = "tw-f-99-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4109911,cardId = 1102012,lv = 100,bklv = 13,star = 5,mon = {id = 248,desc = "tw-f-99-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4109920,cardId = 1101005,lv = 100,bklv = 13,star = 5,mon = {id = 207,desc = "tw-f-99-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4109921,cardId = 1102011,lv = 100,bklv = 13,star = 5,mon = {id = 242,desc = "tw-f-99-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4109930,cardId = 1101010,lv = 100,bklv = 12,star = 5,mon = {id = 211,desc = "tw-f-99-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4109931,cardId = 1102016,lv = 100,bklv = 12,star = 5,mon = {id = 256,desc = "tw-f-99-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[41100] = {
		[1] = {
			jlr = {cha = "tw-f",id = 4110010,cardId = 1101007,lv = 100,bklv = 13,star = 5,mon = {id = 207,desc = "tw-f-100-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4110011,cardId = 1102012,lv = 100,bklv = 13,star = 5,mon = {id = 251,desc = "tw-f-100-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-f",id = 4110020,cardId = 1101005,lv = 100,bklv = 13,star = 5,mon = {id = 205,desc = "tw-f-100-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4110021,cardId = 1102011,lv = 100,bklv = 13,star = 5,mon = {id = 250,desc = "tw-f-100-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-f",id = 4110030,cardId = 1101010,lv = 100,bklv = 13,star = 5,mon = {id = 210,desc = "tw-f-100-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-f",id = 4110031,cardId = 1102016,lv = 100,bklv = 13,star = 5,mon = {id = 255,desc = "tw-f-100-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42001] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4200110,cardId = 1101001,lv = 30,bklv = 4,star = 1,mon = {id = 212,desc = "tw-h-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4200111,cardId = 1102015,lv = 30,bklv = 4,star = 1,mon = {id = 257,desc = "tw-h-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4200120,cardId = 1101002,lv = 30,bklv = 4,star = 1,mon = {id = 208,desc = "tw-h-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4200121,cardId = 1102004,lv = 30,bklv = 4,star = 1,mon = {id = 252,desc = "tw-h-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4200130,cardId = 1101003,lv = 30,bklv = 4,star = 1,mon = {id = 209,desc = "tw-h-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4200131,cardId = 1102005,lv = 30,bklv = 4,star = 1,mon = {id = 253,desc = "tw-h-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42002] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4200210,cardId = 1101001,lv = 35,bklv = 4,star = 1,mon = {id = 201,desc = "tw-h-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4200211,cardId = 1102015,lv = 35,bklv = 4,star = 1,mon = {id = 241,desc = "tw-h-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4200220,cardId = 1101002,lv = 35,bklv = 4,star = 1,mon = {id = 203,desc = "tw-h-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4200221,cardId = 1102004,lv = 35,bklv = 4,star = 1,mon = {id = 244,desc = "tw-h-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4200230,cardId = 1101003,lv = 35,bklv = 4,star = 1,mon = {id = 214,desc = "tw-h-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4200231,cardId = 1102005,lv = 35,bklv = 4,star = 1,mon = {id = 259,desc = "tw-h-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42003] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4200310,cardId = 1101001,lv = 38,bklv = 4,star = 1,mon = {id = 212,desc = "tw-h-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4200311,cardId = 1102015,lv = 38,bklv = 4,star = 1,mon = {id = 257,desc = "tw-h-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4200320,cardId = 1101002,lv = 38,bklv = 4,star = 1,mon = {id = 208,desc = "tw-h-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4200321,cardId = 1102004,lv = 38,bklv = 4,star = 1,mon = {id = 252,desc = "tw-h-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4200330,cardId = 1101003,lv = 38,bklv = 4,star = 1,mon = {id = 209,desc = "tw-h-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4200331,cardId = 1102005,lv = 38,bklv = 4,star = 1,mon = {id = 253,desc = "tw-h-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42004] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4200410,cardId = 1101001,lv = 40,bklv = 5,star = 1,mon = {id = 215,desc = "tw-h-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4200411,cardId = 1102015,lv = 40,bklv = 5,star = 1,mon = {id = 260,desc = "tw-h-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4200420,cardId = 1101002,lv = 40,bklv = 4,star = 1,mon = {id = 201,desc = "tw-h-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4200421,cardId = 1102004,lv = 40,bklv = 4,star = 1,mon = {id = 248,desc = "tw-h-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4200430,cardId = 1101003,lv = 40,bklv = 4,star = 1,mon = {id = 211,desc = "tw-h-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4200431,cardId = 1102005,lv = 40,bklv = 4,star = 1,mon = {id = 256,desc = "tw-h-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42005] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4200510,cardId = 1101001,lv = 40,bklv = 5,star = 1,mon = {id = 206,desc = "tw-h-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4200511,cardId = 1102015,lv = 40,bklv = 5,star = 1,mon = {id = 246,desc = "tw-h-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4200520,cardId = 1101002,lv = 40,bklv = 5,star = 1,mon = {id = 203,desc = "tw-h-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4200521,cardId = 1102004,lv = 40,bklv = 5,star = 1,mon = {id = 244,desc = "tw-h-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4200530,cardId = 1101003,lv = 40,bklv = 5,star = 1,mon = {id = 212,desc = "tw-h-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4200531,cardId = 1102005,lv = 40,bklv = 5,star = 1,mon = {id = 257,desc = "tw-h-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42006] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4200610,cardId = 1101001,lv = 42,bklv = 5,star = 1,mon = {id = 209,desc = "tw-h-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4200611,cardId = 1102015,lv = 42,bklv = 5,star = 1,mon = {id = 253,desc = "tw-h-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4200620,cardId = 1101002,lv = 42,bklv = 5,star = 1,mon = {id = 208,desc = "tw-h-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4200621,cardId = 1102004,lv = 42,bklv = 5,star = 1,mon = {id = 252,desc = "tw-h-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4200630,cardId = 1101003,lv = 42,bklv = 5,star = 1,mon = {id = 212,desc = "tw-h-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4200631,cardId = 1102005,lv = 42,bklv = 5,star = 1,mon = {id = 257,desc = "tw-h-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42007] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4200710,cardId = 1101001,lv = 45,bklv = 5,star = 1,mon = {id = 213,desc = "tw-h-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4200711,cardId = 1102015,lv = 45,bklv = 5,star = 1,mon = {id = 258,desc = "tw-h-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4200720,cardId = 1101002,lv = 45,bklv = 5,star = 1,mon = {id = 207,desc = "tw-h-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4200721,cardId = 1102004,lv = 45,bklv = 5,star = 1,mon = {id = 242,desc = "tw-h-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4200730,cardId = 1101003,lv = 45,bklv = 5,star = 1,mon = {id = 211,desc = "tw-h-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4200731,cardId = 1102005,lv = 45,bklv = 5,star = 1,mon = {id = 256,desc = "tw-h-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42008] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4200810,cardId = 1101001,lv = 48,bklv = 5,star = 1,mon = {id = 209,desc = "tw-h-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4200811,cardId = 1102002,lv = 48,bklv = 5,star = 1,mon = {id = 253,desc = "tw-h-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4200820,cardId = 1101012,lv = 48,bklv = 5,star = 1,mon = {id = 208,desc = "tw-h-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4200821,cardId = 1102018,lv = 48,bklv = 5,star = 1,mon = {id = 252,desc = "tw-h-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4200830,cardId = 1101003,lv = 48,bklv = 5,star = 1,mon = {id = 212,desc = "tw-h-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4200831,cardId = 1102005,lv = 48,bklv = 5,star = 1,mon = {id = 257,desc = "tw-h-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42009] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4200910,cardId = 1101001,lv = 49,bklv = 5,star = 1,mon = {id = 207,desc = "tw-h-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4200911,cardId = 1102002,lv = 49,bklv = 5,star = 1,mon = {id = 251,desc = "tw-h-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4200920,cardId = 1101012,lv = 49,bklv = 5,star = 1,mon = {id = 205,desc = "tw-h-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4200921,cardId = 1102018,lv = 49,bklv = 5,star = 1,mon = {id = 250,desc = "tw-h-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4200930,cardId = 1101003,lv = 49,bklv = 5,star = 1,mon = {id = 210,desc = "tw-h-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4200931,cardId = 1102005,lv = 49,bklv = 5,star = 1,mon = {id = 255,desc = "tw-h-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42010] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4201010,cardId = 1101001,lv = 50,bklv = 6,star = 2,mon = {id = 212,desc = "tw-h-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4201011,cardId = 1102002,lv = 50,bklv = 6,star = 2,mon = {id = 257,desc = "tw-h-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4201020,cardId = 1101012,lv = 50,bklv = 5,star = 2,mon = {id = 208,desc = "tw-h-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4201021,cardId = 1102018,lv = 50,bklv = 5,star = 2,mon = {id = 252,desc = "tw-h-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4201030,cardId = 1101003,lv = 50,bklv = 5,star = 2,mon = {id = 209,desc = "tw-h-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4201031,cardId = 1102005,lv = 50,bklv = 5,star = 2,mon = {id = 253,desc = "tw-h-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42011] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4201110,cardId = 1101001,lv = 50,bklv = 6,star = 2,mon = {id = 201,desc = "tw-h-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4201111,cardId = 1102002,lv = 50,bklv = 6,star = 2,mon = {id = 241,desc = "tw-h-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4201120,cardId = 1101012,lv = 50,bklv = 6,star = 2,mon = {id = 203,desc = "tw-h-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4201121,cardId = 1102018,lv = 50,bklv = 6,star = 2,mon = {id = 244,desc = "tw-h-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4201130,cardId = 1101003,lv = 50,bklv = 5,star = 2,mon = {id = 214,desc = "tw-h-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4201131,cardId = 1102005,lv = 50,bklv = 5,star = 2,mon = {id = 259,desc = "tw-h-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42012] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4201210,cardId = 1101001,lv = 50,bklv = 6,star = 2,mon = {id = 212,desc = "tw-h-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4201211,cardId = 1102002,lv = 50,bklv = 6,star = 2,mon = {id = 257,desc = "tw-h-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4201220,cardId = 1101012,lv = 50,bklv = 6,star = 2,mon = {id = 208,desc = "tw-h-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4201221,cardId = 1102018,lv = 50,bklv = 6,star = 2,mon = {id = 252,desc = "tw-h-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4201230,cardId = 1101003,lv = 50,bklv = 6,star = 2,mon = {id = 209,desc = "tw-h-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4201231,cardId = 1102005,lv = 50,bklv = 6,star = 2,mon = {id = 253,desc = "tw-h-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42013] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4201310,cardId = 1101001,lv = 52,bklv = 6,star = 2,mon = {id = 215,desc = "tw-h-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4201311,cardId = 1102002,lv = 52,bklv = 6,star = 2,mon = {id = 260,desc = "tw-h-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4201320,cardId = 1101012,lv = 52,bklv = 6,star = 2,mon = {id = 201,desc = "tw-h-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4201321,cardId = 1102018,lv = 52,bklv = 6,star = 2,mon = {id = 248,desc = "tw-h-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4201330,cardId = 1101003,lv = 52,bklv = 6,star = 2,mon = {id = 211,desc = "tw-h-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4201331,cardId = 1102005,lv = 52,bklv = 6,star = 2,mon = {id = 256,desc = "tw-h-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42014] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4201410,cardId = 1101001,lv = 54,bklv = 6,star = 2,mon = {id = 206,desc = "tw-h-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4201411,cardId = 1102002,lv = 54,bklv = 6,star = 2,mon = {id = 246,desc = "tw-h-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4201420,cardId = 1101012,lv = 54,bklv = 6,star = 2,mon = {id = 203,desc = "tw-h-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4201421,cardId = 1102018,lv = 54,bklv = 6,star = 2,mon = {id = 244,desc = "tw-h-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4201430,cardId = 1101003,lv = 54,bklv = 6,star = 2,mon = {id = 212,desc = "tw-h-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4201431,cardId = 1102005,lv = 54,bklv = 6,star = 2,mon = {id = 257,desc = "tw-h-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42015] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4201510,cardId = 1101001,lv = 56,bklv = 6,star = 2,mon = {id = 209,desc = "tw-h-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4201511,cardId = 1102002,lv = 56,bklv = 6,star = 2,mon = {id = 253,desc = "tw-h-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4201520,cardId = 1101012,lv = 56,bklv = 6,star = 2,mon = {id = 208,desc = "tw-h-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4201521,cardId = 1102018,lv = 56,bklv = 6,star = 2,mon = {id = 252,desc = "tw-h-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4201530,cardId = 1101003,lv = 56,bklv = 6,star = 2,mon = {id = 212,desc = "tw-h-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4201531,cardId = 1102005,lv = 56,bklv = 6,star = 2,mon = {id = 257,desc = "tw-h-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42016] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4201610,cardId = 1101001,lv = 58,bklv = 6,star = 2,mon = {id = 207,desc = "tw-h-16-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4201611,cardId = 1102002,lv = 58,bklv = 6,star = 2,mon = {id = 248,desc = "tw-h-16-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4201620,cardId = 1101014,lv = 58,bklv = 6,star = 2,mon = {id = 207,desc = "tw-h-16-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4201621,cardId = 1102020,lv = 58,bklv = 6,star = 2,mon = {id = 242,desc = "tw-h-16-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4201630,cardId = 1101003,lv = 58,bklv = 6,star = 2,mon = {id = 211,desc = "tw-h-16-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4201631,cardId = 1102005,lv = 58,bklv = 6,star = 2,mon = {id = 256,desc = "tw-h-16-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42017] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4201710,cardId = 1101001,lv = 59,bklv = 6,star = 2,mon = {id = 209,desc = "tw-h-17-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4201711,cardId = 1102002,lv = 59,bklv = 6,star = 2,mon = {id = 253,desc = "tw-h-17-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4201720,cardId = 1101014,lv = 59,bklv = 6,star = 2,mon = {id = 208,desc = "tw-h-17-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4201721,cardId = 1102020,lv = 59,bklv = 6,star = 2,mon = {id = 252,desc = "tw-h-17-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4201730,cardId = 1101003,lv = 59,bklv = 6,star = 2,mon = {id = 212,desc = "tw-h-17-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4201731,cardId = 1102005,lv = 59,bklv = 6,star = 2,mon = {id = 257,desc = "tw-h-17-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42018] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4201810,cardId = 1101001,lv = 60,bklv = 7,star = 2,mon = {id = 207,desc = "tw-h-18-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4201811,cardId = 1102002,lv = 60,bklv = 7,star = 2,mon = {id = 251,desc = "tw-h-18-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4201820,cardId = 1101014,lv = 60,bklv = 6,star = 2,mon = {id = 205,desc = "tw-h-18-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4201821,cardId = 1102020,lv = 60,bklv = 6,star = 2,mon = {id = 250,desc = "tw-h-18-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4201830,cardId = 1101003,lv = 60,bklv = 6,star = 2,mon = {id = 210,desc = "tw-h-18-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4201831,cardId = 1102005,lv = 60,bklv = 6,star = 2,mon = {id = 255,desc = "tw-h-18-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42019] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4201910,cardId = 1101001,lv = 60,bklv = 7,star = 2,mon = {id = 212,desc = "tw-h-19-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4201911,cardId = 1102002,lv = 60,bklv = 7,star = 2,mon = {id = 257,desc = "tw-h-19-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4201920,cardId = 1101014,lv = 60,bklv = 7,star = 2,mon = {id = 208,desc = "tw-h-19-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4201921,cardId = 1102020,lv = 60,bklv = 7,star = 2,mon = {id = 252,desc = "tw-h-19-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4201930,cardId = 1101003,lv = 60,bklv = 6,star = 2,mon = {id = 209,desc = "tw-h-19-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4201931,cardId = 1102005,lv = 60,bklv = 6,star = 2,mon = {id = 253,desc = "tw-h-19-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42020] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4202010,cardId = 1101007,lv = 60,bklv = 7,star = 2,mon = {id = 201,desc = "tw-h-20-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4202011,cardId = 1102002,lv = 60,bklv = 7,star = 2,mon = {id = 241,desc = "tw-h-20-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4202020,cardId = 1101014,lv = 60,bklv = 7,star = 2,mon = {id = 203,desc = "tw-h-20-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4202021,cardId = 1102020,lv = 60,bklv = 7,star = 2,mon = {id = 244,desc = "tw-h-20-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4202030,cardId = 1101003,lv = 60,bklv = 7,star = 2,mon = {id = 214,desc = "tw-h-20-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4202031,cardId = 1102005,lv = 60,bklv = 7,star = 2,mon = {id = 259,desc = "tw-h-20-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42021] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4202110,cardId = 1101007,lv = 61,bklv = 7,star = 2,mon = {id = 212,desc = "tw-h-21-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4202111,cardId = 1102002,lv = 61,bklv = 7,star = 2,mon = {id = 257,desc = "tw-h-21-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4202120,cardId = 1101014,lv = 61,bklv = 7,star = 2,mon = {id = 208,desc = "tw-h-21-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4202121,cardId = 1102020,lv = 61,bklv = 7,star = 2,mon = {id = 252,desc = "tw-h-21-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4202130,cardId = 1101003,lv = 61,bklv = 7,star = 2,mon = {id = 209,desc = "tw-h-21-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4202131,cardId = 1102005,lv = 61,bklv = 7,star = 2,mon = {id = 253,desc = "tw-h-21-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42022] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4202210,cardId = 1101007,lv = 62,bklv = 7,star = 2,mon = {id = 215,desc = "tw-h-22-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4202211,cardId = 1102002,lv = 62,bklv = 7,star = 2,mon = {id = 260,desc = "tw-h-22-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4202220,cardId = 1101014,lv = 62,bklv = 7,star = 2,mon = {id = 201,desc = "tw-h-22-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4202221,cardId = 1102020,lv = 62,bklv = 7,star = 2,mon = {id = 248,desc = "tw-h-22-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4202230,cardId = 1101003,lv = 62,bklv = 7,star = 2,mon = {id = 211,desc = "tw-h-22-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4202231,cardId = 1102005,lv = 62,bklv = 7,star = 2,mon = {id = 256,desc = "tw-h-22-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42023] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4202310,cardId = 1101007,lv = 63,bklv = 7,star = 2,mon = {id = 206,desc = "tw-h-23-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4202311,cardId = 1102002,lv = 63,bklv = 7,star = 2,mon = {id = 246,desc = "tw-h-23-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4202320,cardId = 1101014,lv = 63,bklv = 7,star = 2,mon = {id = 203,desc = "tw-h-23-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4202321,cardId = 1102020,lv = 63,bklv = 7,star = 2,mon = {id = 244,desc = "tw-h-23-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4202330,cardId = 1101003,lv = 63,bklv = 7,star = 2,mon = {id = 212,desc = "tw-h-23-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4202331,cardId = 1102005,lv = 63,bklv = 7,star = 2,mon = {id = 257,desc = "tw-h-23-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42024] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4202410,cardId = 1101007,lv = 56,bklv = 7,star = 2,mon = {id = 209,desc = "tw-h-24-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4202411,cardId = 1102002,lv = 56,bklv = 7,star = 2,mon = {id = 253,desc = "tw-h-24-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4202420,cardId = 1101014,lv = 56,bklv = 7,star = 2,mon = {id = 208,desc = "tw-h-24-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4202421,cardId = 1102020,lv = 56,bklv = 7,star = 2,mon = {id = 252,desc = "tw-h-24-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4202430,cardId = 1101003,lv = 56,bklv = 7,star = 2,mon = {id = 212,desc = "tw-h-24-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4202431,cardId = 1102005,lv = 56,bklv = 7,star = 2,mon = {id = 257,desc = "tw-h-24-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42025] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4202510,cardId = 1101007,lv = 66,bklv = 7,star = 3,mon = {id = 213,desc = "tw-h-25-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4202511,cardId = 1102002,lv = 66,bklv = 7,star = 3,mon = {id = 258,desc = "tw-h-25-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4202520,cardId = 1101014,lv = 66,bklv = 7,star = 3,mon = {id = 207,desc = "tw-h-25-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4202521,cardId = 1102020,lv = 66,bklv = 7,star = 3,mon = {id = 242,desc = "tw-h-25-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4202530,cardId = 1101003,lv = 66,bklv = 7,star = 3,mon = {id = 211,desc = "tw-h-25-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4202531,cardId = 1102005,lv = 66,bklv = 7,star = 3,mon = {id = 256,desc = "tw-h-25-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42026] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4202610,cardId = 1101007,lv = 68,bklv = 7,star = 3,mon = {id = 206,desc = "tw-h-26-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4202611,cardId = 1102002,lv = 68,bklv = 7,star = 3,mon = {id = 246,desc = "tw-h-26-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4202620,cardId = 1101014,lv = 68,bklv = 7,star = 3,mon = {id = 205,desc = "tw-h-26-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4202621,cardId = 1102020,lv = 68,bklv = 7,star = 3,mon = {id = 250,desc = "tw-h-26-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4202630,cardId = 1101003,lv = 68,bklv = 7,star = 3,mon = {id = 207,desc = "tw-h-26-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4202631,cardId = 1102005,lv = 68,bklv = 7,star = 3,mon = {id = 249,desc = "tw-h-26-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42027] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4202710,cardId = 1101007,lv = 69,bklv = 7,star = 3,mon = {id = 212,desc = "tw-h-27-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4202711,cardId = 1102002,lv = 69,bklv = 7,star = 3,mon = {id = 257,desc = "tw-h-27-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4202720,cardId = 1101014,lv = 69,bklv = 7,star = 3,mon = {id = 208,desc = "tw-h-27-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4202721,cardId = 1102020,lv = 69,bklv = 7,star = 3,mon = {id = 252,desc = "tw-h-27-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4202730,cardId = 1101003,lv = 69,bklv = 7,star = 3,mon = {id = 209,desc = "tw-h-27-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4202731,cardId = 1102005,lv = 69,bklv = 7,star = 3,mon = {id = 253,desc = "tw-h-27-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42028] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4202810,cardId = 1101007,lv = 70,bklv = 8,star = 3,mon = {id = 201,desc = "tw-h-28-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4202811,cardId = 1102002,lv = 70,bklv = 8,star = 3,mon = {id = 241,desc = "tw-h-28-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4202820,cardId = 1101014,lv = 70,bklv = 7,star = 3,mon = {id = 203,desc = "tw-h-28-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4202821,cardId = 1102020,lv = 70,bklv = 7,star = 3,mon = {id = 244,desc = "tw-h-28-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4202830,cardId = 1101003,lv = 70,bklv = 7,star = 3,mon = {id = 214,desc = "tw-h-28-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4202831,cardId = 1102005,lv = 70,bklv = 7,star = 3,mon = {id = 259,desc = "tw-h-28-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42029] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4202910,cardId = 1101007,lv = 70,bklv = 8,star = 3,mon = {id = 212,desc = "tw-h-29-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4202911,cardId = 1102002,lv = 70,bklv = 8,star = 3,mon = {id = 257,desc = "tw-h-29-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4202920,cardId = 1101014,lv = 70,bklv = 8,star = 3,mon = {id = 208,desc = "tw-h-29-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4202921,cardId = 1102020,lv = 70,bklv = 8,star = 3,mon = {id = 252,desc = "tw-h-29-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4202930,cardId = 1101003,lv = 70,bklv = 7,star = 3,mon = {id = 209,desc = "tw-h-29-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4202931,cardId = 1102005,lv = 70,bklv = 7,star = 3,mon = {id = 253,desc = "tw-h-29-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42030] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4203010,cardId = 1101009,lv = 70,bklv = 8,star = 3,mon = {id = 215,desc = "tw-h-30-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4203011,cardId = 1102014,lv = 70,bklv = 8,star = 3,mon = {id = 260,desc = "tw-h-30-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4203020,cardId = 1101007,lv = 70,bklv = 8,star = 3,mon = {id = 201,desc = "tw-h-30-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4203021,cardId = 1102003,lv = 70,bklv = 8,star = 3,mon = {id = 248,desc = "tw-h-30-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4203030,cardId = 1101011,lv = 70,bklv = 8,star = 3,mon = {id = 211,desc = "tw-h-30-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4203031,cardId = 1102017,lv = 70,bklv = 8,star = 3,mon = {id = 256,desc = "tw-h-30-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42031] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4203110,cardId = 1101009,lv = 71,bklv = 8,star = 3,mon = {id = 209,desc = "tw-h-31-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4203111,cardId = 1102014,lv = 71,bklv = 8,star = 3,mon = {id = 253,desc = "tw-h-31-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4203120,cardId = 1101007,lv = 71,bklv = 8,star = 3,mon = {id = 208,desc = "tw-h-31-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4203121,cardId = 1102003,lv = 71,bklv = 8,star = 3,mon = {id = 252,desc = "tw-h-31-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4203130,cardId = 1101011,lv = 71,bklv = 8,star = 3,mon = {id = 212,desc = "tw-h-31-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4203131,cardId = 1102017,lv = 71,bklv = 8,star = 3,mon = {id = 257,desc = "tw-h-31-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42032] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4203210,cardId = 1101009,lv = 72,bklv = 8,star = 3,mon = {id = 213,desc = "tw-h-32-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4203211,cardId = 1102014,lv = 72,bklv = 8,star = 3,mon = {id = 258,desc = "tw-h-32-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4203220,cardId = 1101007,lv = 72,bklv = 8,star = 3,mon = {id = 207,desc = "tw-h-32-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4203221,cardId = 1102003,lv = 72,bklv = 8,star = 3,mon = {id = 242,desc = "tw-h-32-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4203230,cardId = 1101011,lv = 72,bklv = 8,star = 3,mon = {id = 211,desc = "tw-h-32-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4203231,cardId = 1102017,lv = 72,bklv = 8,star = 3,mon = {id = 256,desc = "tw-h-32-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42033] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4203310,cardId = 1101009,lv = 73,bklv = 8,star = 3,mon = {id = 205,desc = "tw-h-33-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4203311,cardId = 1102014,lv = 73,bklv = 8,star = 3,mon = {id = 240,desc = "tw-h-33-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4203320,cardId = 1101007,lv = 73,bklv = 8,star = 3,mon = {id = 204,desc = "tw-h-33-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4203321,cardId = 1102003,lv = 73,bklv = 8,star = 3,mon = {id = 245,desc = "tw-h-33-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4203330,cardId = 1101011,lv = 73,bklv = 8,star = 3,mon = {id = 207,desc = "tw-h-33-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4203331,cardId = 1102017,lv = 73,bklv = 8,star = 3,mon = {id = 249,desc = "tw-h-33-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42034] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4203410,cardId = 1101009,lv = 66,bklv = 8,star = 3,mon = {id = 212,desc = "tw-h-34-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4203411,cardId = 1102014,lv = 66,bklv = 8,star = 3,mon = {id = 257,desc = "tw-h-34-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4203420,cardId = 1101007,lv = 66,bklv = 8,star = 3,mon = {id = 208,desc = "tw-h-34-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4203421,cardId = 1102003,lv = 66,bklv = 8,star = 3,mon = {id = 252,desc = "tw-h-34-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4203430,cardId = 1101011,lv = 66,bklv = 8,star = 3,mon = {id = 213,desc = "tw-h-34-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4203431,cardId = 1102017,lv = 66,bklv = 8,star = 3,mon = {id = 258,desc = "tw-h-34-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42035] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4203510,cardId = 1101009,lv = 76,bklv = 8,star = 3,mon = {id = 201,desc = "tw-h-35-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4203511,cardId = 1102014,lv = 76,bklv = 8,star = 3,mon = {id = 241,desc = "tw-h-35-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4203520,cardId = 1101007,lv = 76,bklv = 8,star = 3,mon = {id = 203,desc = "tw-h-35-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4203521,cardId = 1102003,lv = 76,bklv = 8,star = 3,mon = {id = 244,desc = "tw-h-35-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4203530,cardId = 1101011,lv = 76,bklv = 8,star = 3,mon = {id = 214,desc = "tw-h-35-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4203531,cardId = 1102017,lv = 76,bklv = 8,star = 3,mon = {id = 259,desc = "tw-h-35-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42036] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4203610,cardId = 1101009,lv = 78,bklv = 8,star = 3,mon = {id = 212,desc = "tw-h-36-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4203611,cardId = 1102014,lv = 78,bklv = 8,star = 3,mon = {id = 257,desc = "tw-h-36-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4203620,cardId = 1101007,lv = 78,bklv = 8,star = 3,mon = {id = 208,desc = "tw-h-36-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4203621,cardId = 1102003,lv = 78,bklv = 8,star = 3,mon = {id = 252,desc = "tw-h-36-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4203630,cardId = 1101011,lv = 78,bklv = 8,star = 3,mon = {id = 209,desc = "tw-h-36-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4203631,cardId = 1102017,lv = 78,bklv = 8,star = 3,mon = {id = 253,desc = "tw-h-36-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42037] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4203710,cardId = 1101009,lv = 79,bklv = 8,star = 3,mon = {id = 215,desc = "tw-h-37-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4203711,cardId = 1102014,lv = 79,bklv = 8,star = 3,mon = {id = 260,desc = "tw-h-37-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4203720,cardId = 1101007,lv = 79,bklv = 8,star = 3,mon = {id = 201,desc = "tw-h-37-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4203721,cardId = 1102003,lv = 79,bklv = 8,star = 3,mon = {id = 248,desc = "tw-h-37-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4203730,cardId = 1101011,lv = 79,bklv = 8,star = 3,mon = {id = 211,desc = "tw-h-37-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4203731,cardId = 1102017,lv = 79,bklv = 8,star = 3,mon = {id = 256,desc = "tw-h-37-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42038] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4203810,cardId = 1101009,lv = 80,bklv = 9,star = 3,mon = {id = 206,desc = "tw-h-38-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4203811,cardId = 1102014,lv = 80,bklv = 9,star = 3,mon = {id = 246,desc = "tw-h-38-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4203820,cardId = 1101007,lv = 80,bklv = 8,star = 3,mon = {id = 203,desc = "tw-h-38-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4203821,cardId = 1102003,lv = 80,bklv = 8,star = 3,mon = {id = 244,desc = "tw-h-38-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4203830,cardId = 1101011,lv = 80,bklv = 8,star = 3,mon = {id = 212,desc = "tw-h-38-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4203831,cardId = 1102017,lv = 80,bklv = 8,star = 3,mon = {id = 257,desc = "tw-h-38-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42039] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4203910,cardId = 1101009,lv = 80,bklv = 9,star = 3,mon = {id = 209,desc = "tw-h-39-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4203911,cardId = 1102014,lv = 80,bklv = 9,star = 3,mon = {id = 253,desc = "tw-h-39-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4203920,cardId = 1101007,lv = 80,bklv = 9,star = 3,mon = {id = 208,desc = "tw-h-39-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4203921,cardId = 1102003,lv = 80,bklv = 9,star = 3,mon = {id = 252,desc = "tw-h-39-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4203930,cardId = 1101011,lv = 80,bklv = 8,star = 3,mon = {id = 212,desc = "tw-h-39-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4203931,cardId = 1102017,lv = 80,bklv = 8,star = 3,mon = {id = 257,desc = "tw-h-39-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42040] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4204010,cardId = 1101009,lv = 80,bklv = 9,star = 3,mon = {id = 213,desc = "tw-h-40-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4204011,cardId = 1102014,lv = 80,bklv = 9,star = 3,mon = {id = 258,desc = "tw-h-40-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4204020,cardId = 1101007,lv = 80,bklv = 9,star = 3,mon = {id = 207,desc = "tw-h-40-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4204021,cardId = 1102003,lv = 80,bklv = 9,star = 3,mon = {id = 242,desc = "tw-h-40-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4204030,cardId = 1101011,lv = 80,bklv = 9,star = 3,mon = {id = 211,desc = "tw-h-40-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4204031,cardId = 1102017,lv = 80,bklv = 9,star = 3,mon = {id = 256,desc = "tw-h-40-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42041] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4204110,cardId = 1101009,lv = 81,bklv = 9,star = 3,mon = {id = 207,desc = "tw-h-41-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4204111,cardId = 1102014,lv = 81,bklv = 9,star = 3,mon = {id = 251,desc = "tw-h-41-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4204120,cardId = 1101007,lv = 81,bklv = 9,star = 3,mon = {id = 205,desc = "tw-h-41-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4204121,cardId = 1102003,lv = 81,bklv = 9,star = 3,mon = {id = 250,desc = "tw-h-41-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4204130,cardId = 1101011,lv = 81,bklv = 9,star = 3,mon = {id = 210,desc = "tw-h-41-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4204131,cardId = 1102017,lv = 81,bklv = 9,star = 3,mon = {id = 255,desc = "tw-h-41-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42042] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4204210,cardId = 1101009,lv = 82,bklv = 9,star = 3,mon = {id = 212,desc = "tw-h-42-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4204211,cardId = 1102014,lv = 82,bklv = 9,star = 3,mon = {id = 257,desc = "tw-h-42-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4204220,cardId = 1101007,lv = 82,bklv = 9,star = 3,mon = {id = 208,desc = "tw-h-42-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4204221,cardId = 1102003,lv = 82,bklv = 9,star = 3,mon = {id = 252,desc = "tw-h-42-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4204230,cardId = 1101011,lv = 82,bklv = 9,star = 3,mon = {id = 209,desc = "tw-h-42-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4204231,cardId = 1102017,lv = 82,bklv = 9,star = 3,mon = {id = 253,desc = "tw-h-42-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42043] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4204310,cardId = 1101009,lv = 82,bklv = 9,star = 3,mon = {id = 201,desc = "tw-h-43-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4204311,cardId = 1102014,lv = 82,bklv = 9,star = 3,mon = {id = 241,desc = "tw-h-43-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4204320,cardId = 1101007,lv = 82,bklv = 9,star = 3,mon = {id = 203,desc = "tw-h-43-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4204321,cardId = 1102003,lv = 82,bklv = 9,star = 3,mon = {id = 244,desc = "tw-h-43-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4204330,cardId = 1101011,lv = 82,bklv = 9,star = 3,mon = {id = 214,desc = "tw-h-43-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4204331,cardId = 1102017,lv = 82,bklv = 9,star = 3,mon = {id = 259,desc = "tw-h-43-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42044] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4204410,cardId = 1101009,lv = 83,bklv = 9,star = 3,mon = {id = 212,desc = "tw-h-44-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4204411,cardId = 1102014,lv = 83,bklv = 9,star = 3,mon = {id = 257,desc = "tw-h-44-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4204420,cardId = 1101007,lv = 83,bklv = 9,star = 3,mon = {id = 208,desc = "tw-h-44-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4204421,cardId = 1102003,lv = 83,bklv = 9,star = 3,mon = {id = 252,desc = "tw-h-44-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4204430,cardId = 1101011,lv = 83,bklv = 9,star = 3,mon = {id = 209,desc = "tw-h-44-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4204431,cardId = 1102017,lv = 83,bklv = 9,star = 3,mon = {id = 253,desc = "tw-h-44-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42045] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4204510,cardId = 1101009,lv = 85,bklv = 10,star = 3,mon = {id = 215,desc = "tw-h-45-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4204511,cardId = 1102014,lv = 85,bklv = 10,star = 3,mon = {id = 260,desc = "tw-h-45-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4204520,cardId = 1101007,lv = 85,bklv = 9,star = 3,mon = {id = 201,desc = "tw-h-45-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4204521,cardId = 1102003,lv = 85,bklv = 9,star = 3,mon = {id = 248,desc = "tw-h-45-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4204530,cardId = 1101011,lv = 85,bklv = 9,star = 3,mon = {id = 211,desc = "tw-h-45-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4204531,cardId = 1102017,lv = 85,bklv = 9,star = 3,mon = {id = 256,desc = "tw-h-45-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42046] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4204610,cardId = 1101009,lv = 85,bklv = 10,star = 3,mon = {id = 209,desc = "tw-h-46-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4204611,cardId = 1102014,lv = 85,bklv = 10,star = 3,mon = {id = 253,desc = "tw-h-46-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4204620,cardId = 1101007,lv = 85,bklv = 10,star = 3,mon = {id = 208,desc = "tw-h-46-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4204621,cardId = 1102003,lv = 85,bklv = 10,star = 3,mon = {id = 252,desc = "tw-h-46-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4204630,cardId = 1101011,lv = 85,bklv = 9,star = 3,mon = {id = 212,desc = "tw-h-46-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4204631,cardId = 1102017,lv = 85,bklv = 9,star = 3,mon = {id = 257,desc = "tw-h-46-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42047] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4204710,cardId = 1101009,lv = 85,bklv = 10,star = 3,mon = {id = 207,desc = "tw-h-47-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4204711,cardId = 1102014,lv = 85,bklv = 10,star = 3,mon = {id = 248,desc = "tw-h-47-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4204720,cardId = 1101007,lv = 85,bklv = 10,star = 3,mon = {id = 207,desc = "tw-h-47-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4204721,cardId = 1102003,lv = 85,bklv = 10,star = 3,mon = {id = 242,desc = "tw-h-47-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4204730,cardId = 1101011,lv = 85,bklv = 10,star = 3,mon = {id = 211,desc = "tw-h-47-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4204731,cardId = 1102017,lv = 85,bklv = 10,star = 3,mon = {id = 256,desc = "tw-h-47-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42048] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4204810,cardId = 1101009,lv = 86,bklv = 10,star = 3,mon = {id = 205,desc = "tw-h-48-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4204811,cardId = 1102014,lv = 86,bklv = 10,star = 3,mon = {id = 240,desc = "tw-h-48-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4204820,cardId = 1101007,lv = 86,bklv = 10,star = 3,mon = {id = 204,desc = "tw-h-48-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4204821,cardId = 1102003,lv = 86,bklv = 10,star = 3,mon = {id = 245,desc = "tw-h-48-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4204830,cardId = 1101011,lv = 86,bklv = 10,star = 3,mon = {id = 207,desc = "tw-h-48-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4204831,cardId = 1102017,lv = 86,bklv = 10,star = 3,mon = {id = 249,desc = "tw-h-48-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42049] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4204910,cardId = 1101009,lv = 87,bklv = 10,star = 3,mon = {id = 212,desc = "tw-h-49-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4204911,cardId = 1102014,lv = 87,bklv = 10,star = 3,mon = {id = 257,desc = "tw-h-49-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4204920,cardId = 1101007,lv = 87,bklv = 10,star = 3,mon = {id = 208,desc = "tw-h-49-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4204921,cardId = 1102003,lv = 87,bklv = 10,star = 3,mon = {id = 252,desc = "tw-h-49-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4204930,cardId = 1101011,lv = 87,bklv = 10,star = 3,mon = {id = 209,desc = "tw-h-49-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4204931,cardId = 1102017,lv = 87,bklv = 10,star = 3,mon = {id = 253,desc = "tw-h-49-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42050] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4205010,cardId = 1101009,lv = 87,bklv = 10,star = 3,mon = {id = 201,desc = "tw-h-50-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4205011,cardId = 1102014,lv = 87,bklv = 10,star = 3,mon = {id = 241,desc = "tw-h-50-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4205020,cardId = 1101007,lv = 87,bklv = 10,star = 3,mon = {id = 203,desc = "tw-h-50-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4205021,cardId = 1102003,lv = 87,bklv = 10,star = 3,mon = {id = 244,desc = "tw-h-50-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4205030,cardId = 1101011,lv = 87,bklv = 10,star = 3,mon = {id = 214,desc = "tw-h-50-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4205031,cardId = 1102017,lv = 87,bklv = 10,star = 3,mon = {id = 259,desc = "tw-h-50-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42051] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4205110,cardId = 1101007,lv = 88,bklv = 10,star = 3,mon = {id = 212,desc = "tw-h-51-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4205111,cardId = 1102012,lv = 88,bklv = 10,star = 3,mon = {id = 257,desc = "tw-h-51-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4205120,cardId = 1101005,lv = 88,bklv = 10,star = 3,mon = {id = 208,desc = "tw-h-51-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4205121,cardId = 1102011,lv = 88,bklv = 10,star = 3,mon = {id = 252,desc = "tw-h-51-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4205130,cardId = 1101010,lv = 88,bklv = 10,star = 3,mon = {id = 209,desc = "tw-h-51-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4205131,cardId = 1102016,lv = 88,bklv = 10,star = 3,mon = {id = 253,desc = "tw-h-51-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42052] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4205210,cardId = 1101007,lv = 89,bklv = 10,star = 3,mon = {id = 215,desc = "tw-h-52-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4205211,cardId = 1102012,lv = 89,bklv = 10,star = 3,mon = {id = 260,desc = "tw-h-52-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4205220,cardId = 1101005,lv = 89,bklv = 10,star = 3,mon = {id = 201,desc = "tw-h-52-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4205221,cardId = 1102011,lv = 89,bklv = 10,star = 3,mon = {id = 248,desc = "tw-h-52-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4205230,cardId = 1101010,lv = 89,bklv = 10,star = 3,mon = {id = 211,desc = "tw-h-52-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4205231,cardId = 1102016,lv = 89,bklv = 10,star = 3,mon = {id = 256,desc = "tw-h-52-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42053] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4205310,cardId = 1101007,lv = 90,bklv = 11,star = 3,mon = {id = 206,desc = "tw-h-53-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4205311,cardId = 1102012,lv = 90,bklv = 11,star = 3,mon = {id = 246,desc = "tw-h-53-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4205320,cardId = 1101005,lv = 90,bklv = 10,star = 3,mon = {id = 203,desc = "tw-h-53-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4205321,cardId = 1102011,lv = 90,bklv = 10,star = 3,mon = {id = 244,desc = "tw-h-53-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4205330,cardId = 1101010,lv = 90,bklv = 10,star = 3,mon = {id = 212,desc = "tw-h-53-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4205331,cardId = 1102016,lv = 90,bklv = 10,star = 3,mon = {id = 257,desc = "tw-h-53-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42054] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4205410,cardId = 1101007,lv = 90,bklv = 11,star = 3,mon = {id = 209,desc = "tw-h-54-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4205411,cardId = 1102012,lv = 90,bklv = 11,star = 3,mon = {id = 253,desc = "tw-h-54-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4205420,cardId = 1101005,lv = 90,bklv = 11,star = 3,mon = {id = 208,desc = "tw-h-54-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4205421,cardId = 1102011,lv = 90,bklv = 11,star = 3,mon = {id = 252,desc = "tw-h-54-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4205430,cardId = 1101010,lv = 90,bklv = 10,star = 3,mon = {id = 212,desc = "tw-h-54-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4205431,cardId = 1102016,lv = 90,bklv = 10,star = 3,mon = {id = 257,desc = "tw-h-54-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42055] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4205510,cardId = 1101007,lv = 90,bklv = 11,star = 3,mon = {id = 213,desc = "tw-h-55-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4205511,cardId = 1102012,lv = 90,bklv = 11,star = 3,mon = {id = 258,desc = "tw-h-55-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4205520,cardId = 1101005,lv = 90,bklv = 11,star = 3,mon = {id = 207,desc = "tw-h-55-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4205521,cardId = 1102011,lv = 90,bklv = 11,star = 3,mon = {id = 242,desc = "tw-h-55-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4205530,cardId = 1101010,lv = 90,bklv = 11,star = 3,mon = {id = 211,desc = "tw-h-55-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4205531,cardId = 1102016,lv = 90,bklv = 11,star = 3,mon = {id = 256,desc = "tw-h-55-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42056] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4205610,cardId = 1101007,lv = 91,bklv = 11,star = 3,mon = {id = 206,desc = "tw-h-56-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4205611,cardId = 1102012,lv = 91,bklv = 11,star = 3,mon = {id = 246,desc = "tw-h-56-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4205620,cardId = 1101005,lv = 91,bklv = 11,star = 3,mon = {id = 205,desc = "tw-h-56-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4205621,cardId = 1102011,lv = 91,bklv = 11,star = 3,mon = {id = 250,desc = "tw-h-56-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4205630,cardId = 1101010,lv = 91,bklv = 11,star = 3,mon = {id = 207,desc = "tw-h-56-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4205631,cardId = 1102016,lv = 91,bklv = 11,star = 3,mon = {id = 249,desc = "tw-h-56-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42057] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4205710,cardId = 1101007,lv = 92,bklv = 11,star = 3,mon = {id = 212,desc = "tw-h-57-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4205711,cardId = 1102012,lv = 92,bklv = 11,star = 3,mon = {id = 257,desc = "tw-h-57-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4205720,cardId = 1101005,lv = 92,bklv = 11,star = 3,mon = {id = 208,desc = "tw-h-57-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4205721,cardId = 1102011,lv = 92,bklv = 11,star = 3,mon = {id = 252,desc = "tw-h-57-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4205730,cardId = 1101010,lv = 92,bklv = 11,star = 3,mon = {id = 209,desc = "tw-h-57-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4205731,cardId = 1102016,lv = 92,bklv = 11,star = 3,mon = {id = 253,desc = "tw-h-57-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42058] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4205810,cardId = 1101007,lv = 92,bklv = 11,star = 3,mon = {id = 201,desc = "tw-h-58-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4205811,cardId = 1102012,lv = 92,bklv = 11,star = 3,mon = {id = 241,desc = "tw-h-58-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4205820,cardId = 1101005,lv = 92,bklv = 11,star = 3,mon = {id = 203,desc = "tw-h-58-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4205821,cardId = 1102011,lv = 92,bklv = 11,star = 3,mon = {id = 244,desc = "tw-h-58-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4205830,cardId = 1101010,lv = 92,bklv = 11,star = 3,mon = {id = 214,desc = "tw-h-58-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4205831,cardId = 1102016,lv = 92,bklv = 11,star = 3,mon = {id = 259,desc = "tw-h-58-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42059] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4205910,cardId = 1101007,lv = 93,bklv = 11,star = 3,mon = {id = 212,desc = "tw-h-59-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4205911,cardId = 1102012,lv = 93,bklv = 11,star = 3,mon = {id = 257,desc = "tw-h-59-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4205920,cardId = 1101005,lv = 93,bklv = 11,star = 3,mon = {id = 208,desc = "tw-h-59-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4205921,cardId = 1102011,lv = 93,bklv = 11,star = 3,mon = {id = 252,desc = "tw-h-59-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4205930,cardId = 1101010,lv = 93,bklv = 11,star = 3,mon = {id = 209,desc = "tw-h-59-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4205931,cardId = 1102016,lv = 93,bklv = 11,star = 3,mon = {id = 253,desc = "tw-h-59-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42060] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4206010,cardId = 1101007,lv = 95,bklv = 12,star = 3,mon = {id = 215,desc = "tw-h-60-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4206011,cardId = 1102012,lv = 95,bklv = 12,star = 3,mon = {id = 260,desc = "tw-h-60-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4206020,cardId = 1101005,lv = 95,bklv = 11,star = 3,mon = {id = 201,desc = "tw-h-60-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4206021,cardId = 1102011,lv = 95,bklv = 11,star = 3,mon = {id = 248,desc = "tw-h-60-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4206030,cardId = 1101010,lv = 95,bklv = 11,star = 3,mon = {id = 211,desc = "tw-h-60-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4206031,cardId = 1102016,lv = 95,bklv = 11,star = 3,mon = {id = 256,desc = "tw-h-60-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42061] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4206110,cardId = 1101007,lv = 95,bklv = 12,star = 4,mon = {id = 209,desc = "tw-h-61-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4206111,cardId = 1102012,lv = 95,bklv = 12,star = 4,mon = {id = 253,desc = "tw-h-61-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4206120,cardId = 1101005,lv = 95,bklv = 12,star = 4,mon = {id = 208,desc = "tw-h-61-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4206121,cardId = 1102011,lv = 95,bklv = 12,star = 4,mon = {id = 252,desc = "tw-h-61-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4206130,cardId = 1101010,lv = 95,bklv = 11,star = 4,mon = {id = 212,desc = "tw-h-61-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4206131,cardId = 1102016,lv = 95,bklv = 11,star = 4,mon = {id = 257,desc = "tw-h-61-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42062] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4206210,cardId = 1101007,lv = 95,bklv = 12,star = 4,mon = {id = 207,desc = "tw-h-62-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4206211,cardId = 1102012,lv = 95,bklv = 12,star = 4,mon = {id = 248,desc = "tw-h-62-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4206220,cardId = 1101005,lv = 95,bklv = 12,star = 4,mon = {id = 207,desc = "tw-h-62-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4206221,cardId = 1102011,lv = 95,bklv = 12,star = 4,mon = {id = 242,desc = "tw-h-62-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4206230,cardId = 1101010,lv = 95,bklv = 12,star = 4,mon = {id = 211,desc = "tw-h-62-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4206231,cardId = 1102016,lv = 95,bklv = 12,star = 4,mon = {id = 256,desc = "tw-h-62-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42063] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4206310,cardId = 1101007,lv = 96,bklv = 12,star = 4,mon = {id = 205,desc = "tw-h-63-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4206311,cardId = 1102012,lv = 96,bklv = 12,star = 4,mon = {id = 240,desc = "tw-h-63-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4206320,cardId = 1101005,lv = 96,bklv = 12,star = 4,mon = {id = 204,desc = "tw-h-63-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4206321,cardId = 1102011,lv = 96,bklv = 12,star = 4,mon = {id = 245,desc = "tw-h-63-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4206330,cardId = 1101010,lv = 96,bklv = 12,star = 4,mon = {id = 207,desc = "tw-h-63-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4206331,cardId = 1102016,lv = 96,bklv = 12,star = 4,mon = {id = 249,desc = "tw-h-63-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42064] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4206410,cardId = 1101007,lv = 97,bklv = 12,star = 4,mon = {id = 212,desc = "tw-h-64-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4206411,cardId = 1102012,lv = 97,bklv = 12,star = 4,mon = {id = 257,desc = "tw-h-64-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4206420,cardId = 1101005,lv = 97,bklv = 12,star = 4,mon = {id = 208,desc = "tw-h-64-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4206421,cardId = 1102011,lv = 97,bklv = 12,star = 4,mon = {id = 252,desc = "tw-h-64-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4206430,cardId = 1101010,lv = 97,bklv = 12,star = 4,mon = {id = 213,desc = "tw-h-64-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4206431,cardId = 1102016,lv = 97,bklv = 12,star = 4,mon = {id = 258,desc = "tw-h-64-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42065] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4206510,cardId = 1101007,lv = 97,bklv = 12,star = 4,mon = {id = 201,desc = "tw-h-65-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4206511,cardId = 1102012,lv = 97,bklv = 12,star = 4,mon = {id = 241,desc = "tw-h-65-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4206520,cardId = 1101005,lv = 97,bklv = 12,star = 4,mon = {id = 203,desc = "tw-h-65-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4206521,cardId = 1102011,lv = 97,bklv = 12,star = 4,mon = {id = 244,desc = "tw-h-65-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4206530,cardId = 1101010,lv = 97,bklv = 12,star = 4,mon = {id = 214,desc = "tw-h-65-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4206531,cardId = 1102016,lv = 97,bklv = 12,star = 4,mon = {id = 259,desc = "tw-h-65-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42066] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4206610,cardId = 1101007,lv = 98,bklv = 12,star = 4,mon = {id = 212,desc = "tw-h-66-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4206611,cardId = 1102012,lv = 98,bklv = 12,star = 4,mon = {id = 257,desc = "tw-h-66-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4206620,cardId = 1101005,lv = 98,bklv = 12,star = 4,mon = {id = 208,desc = "tw-h-66-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4206621,cardId = 1102011,lv = 98,bklv = 12,star = 4,mon = {id = 252,desc = "tw-h-66-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4206630,cardId = 1101010,lv = 98,bklv = 12,star = 4,mon = {id = 209,desc = "tw-h-66-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4206631,cardId = 1102016,lv = 98,bklv = 12,star = 4,mon = {id = 253,desc = "tw-h-66-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42067] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4206710,cardId = 1101007,lv = 99,bklv = 12,star = 4,mon = {id = 215,desc = "tw-h-67-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4206711,cardId = 1102012,lv = 99,bklv = 12,star = 4,mon = {id = 260,desc = "tw-h-67-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4206720,cardId = 1101005,lv = 99,bklv = 12,star = 4,mon = {id = 201,desc = "tw-h-67-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4206721,cardId = 1102011,lv = 99,bklv = 12,star = 4,mon = {id = 248,desc = "tw-h-67-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4206730,cardId = 1101010,lv = 99,bklv = 12,star = 4,mon = {id = 211,desc = "tw-h-67-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4206731,cardId = 1102016,lv = 99,bklv = 12,star = 4,mon = {id = 256,desc = "tw-h-67-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42068] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4206810,cardId = 1101007,lv = 100,bklv = 13,star = 4,mon = {id = 206,desc = "tw-h-68-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4206811,cardId = 1102012,lv = 100,bklv = 13,star = 4,mon = {id = 246,desc = "tw-h-68-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4206820,cardId = 1101005,lv = 100,bklv = 12,star = 4,mon = {id = 203,desc = "tw-h-68-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4206821,cardId = 1102011,lv = 100,bklv = 12,star = 4,mon = {id = 244,desc = "tw-h-68-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4206830,cardId = 1101010,lv = 100,bklv = 12,star = 4,mon = {id = 212,desc = "tw-h-68-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4206831,cardId = 1102016,lv = 100,bklv = 12,star = 4,mon = {id = 257,desc = "tw-h-68-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42069] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4206910,cardId = 1101007,lv = 100,bklv = 13,star = 4,mon = {id = 209,desc = "tw-h-69-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4206911,cardId = 1102012,lv = 100,bklv = 13,star = 4,mon = {id = 253,desc = "tw-h-69-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4206920,cardId = 1101005,lv = 100,bklv = 13,star = 4,mon = {id = 208,desc = "tw-h-69-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4206921,cardId = 1102011,lv = 100,bklv = 13,star = 4,mon = {id = 252,desc = "tw-h-69-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4206930,cardId = 1101010,lv = 100,bklv = 12,star = 4,mon = {id = 212,desc = "tw-h-69-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4206931,cardId = 1102016,lv = 100,bklv = 12,star = 4,mon = {id = 257,desc = "tw-h-69-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42070] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4207010,cardId = 1101007,lv = 100,bklv = 13,star = 4,mon = {id = 207,desc = "tw-h-70-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4207011,cardId = 1102012,lv = 100,bklv = 13,star = 4,mon = {id = 248,desc = "tw-h-70-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4207020,cardId = 1101005,lv = 100,bklv = 13,star = 4,mon = {id = 207,desc = "tw-h-70-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4207021,cardId = 1102011,lv = 100,bklv = 13,star = 4,mon = {id = 242,desc = "tw-h-70-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4207030,cardId = 1101010,lv = 100,bklv = 13,star = 4,mon = {id = 211,desc = "tw-h-70-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4207031,cardId = 1102016,lv = 100,bklv = 13,star = 4,mon = {id = 256,desc = "tw-h-70-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42071] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4207110,cardId = 1101007,lv = 101,bklv = 13,star = 4,mon = {id = 207,desc = "tw-h-71-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4207111,cardId = 1102012,lv = 101,bklv = 13,star = 4,mon = {id = 251,desc = "tw-h-71-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4207120,cardId = 1101005,lv = 101,bklv = 13,star = 4,mon = {id = 205,desc = "tw-h-71-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4207121,cardId = 1102011,lv = 101,bklv = 13,star = 4,mon = {id = 250,desc = "tw-h-71-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4207130,cardId = 1101010,lv = 101,bklv = 13,star = 4,mon = {id = 210,desc = "tw-h-71-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4207131,cardId = 1102016,lv = 101,bklv = 13,star = 4,mon = {id = 255,desc = "tw-h-71-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42072] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4207210,cardId = 1101007,lv = 102,bklv = 13,star = 4,mon = {id = 212,desc = "tw-h-72-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4207211,cardId = 1102012,lv = 102,bklv = 13,star = 4,mon = {id = 257,desc = "tw-h-72-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4207220,cardId = 1101005,lv = 102,bklv = 13,star = 4,mon = {id = 208,desc = "tw-h-72-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4207221,cardId = 1102011,lv = 102,bklv = 13,star = 4,mon = {id = 252,desc = "tw-h-72-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4207230,cardId = 1101010,lv = 102,bklv = 13,star = 4,mon = {id = 209,desc = "tw-h-72-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4207231,cardId = 1102016,lv = 102,bklv = 13,star = 4,mon = {id = 253,desc = "tw-h-72-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42073] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4207310,cardId = 1101007,lv = 102,bklv = 13,star = 4,mon = {id = 201,desc = "tw-h-73-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4207311,cardId = 1102012,lv = 102,bklv = 13,star = 4,mon = {id = 241,desc = "tw-h-73-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4207320,cardId = 1101005,lv = 102,bklv = 13,star = 4,mon = {id = 203,desc = "tw-h-73-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4207321,cardId = 1102011,lv = 102,bklv = 13,star = 4,mon = {id = 244,desc = "tw-h-73-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4207330,cardId = 1101010,lv = 102,bklv = 13,star = 4,mon = {id = 214,desc = "tw-h-73-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4207331,cardId = 1102016,lv = 102,bklv = 13,star = 4,mon = {id = 259,desc = "tw-h-73-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42074] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4207410,cardId = 1101007,lv = 103,bklv = 13,star = 4,mon = {id = 212,desc = "tw-h-74-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4207411,cardId = 1102012,lv = 103,bklv = 13,star = 4,mon = {id = 257,desc = "tw-h-74-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4207420,cardId = 1101005,lv = 103,bklv = 13,star = 4,mon = {id = 208,desc = "tw-h-74-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4207421,cardId = 1102011,lv = 103,bklv = 13,star = 4,mon = {id = 252,desc = "tw-h-74-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4207430,cardId = 1101010,lv = 103,bklv = 13,star = 4,mon = {id = 209,desc = "tw-h-74-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4207431,cardId = 1102016,lv = 103,bklv = 13,star = 4,mon = {id = 253,desc = "tw-h-74-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42075] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4207510,cardId = 1101007,lv = 105,bklv = 14,star = 4,mon = {id = 215,desc = "tw-h-75-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4207511,cardId = 1102012,lv = 105,bklv = 14,star = 4,mon = {id = 260,desc = "tw-h-75-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4207520,cardId = 1101005,lv = 105,bklv = 13,star = 4,mon = {id = 201,desc = "tw-h-75-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4207521,cardId = 1102011,lv = 105,bklv = 13,star = 4,mon = {id = 248,desc = "tw-h-75-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4207530,cardId = 1101010,lv = 105,bklv = 13,star = 4,mon = {id = 211,desc = "tw-h-75-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4207531,cardId = 1102016,lv = 105,bklv = 13,star = 4,mon = {id = 256,desc = "tw-h-75-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42076] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4207610,cardId = 1101007,lv = 105,bklv = 14,star = 4,mon = {id = 209,desc = "tw-h-76-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4207611,cardId = 1102012,lv = 105,bklv = 14,star = 4,mon = {id = 253,desc = "tw-h-76-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4207620,cardId = 1101005,lv = 105,bklv = 14,star = 4,mon = {id = 208,desc = "tw-h-76-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4207621,cardId = 1102011,lv = 105,bklv = 14,star = 4,mon = {id = 252,desc = "tw-h-76-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4207630,cardId = 1101010,lv = 105,bklv = 13,star = 4,mon = {id = 212,desc = "tw-h-76-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4207631,cardId = 1102016,lv = 105,bklv = 13,star = 4,mon = {id = 257,desc = "tw-h-76-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42077] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4207710,cardId = 1101007,lv = 105,bklv = 14,star = 4,mon = {id = 207,desc = "tw-h-77-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4207711,cardId = 1102012,lv = 105,bklv = 14,star = 4,mon = {id = 248,desc = "tw-h-77-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4207720,cardId = 1101005,lv = 105,bklv = 14,star = 4,mon = {id = 207,desc = "tw-h-77-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4207721,cardId = 1102011,lv = 105,bklv = 14,star = 4,mon = {id = 242,desc = "tw-h-77-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4207730,cardId = 1101010,lv = 105,bklv = 14,star = 4,mon = {id = 211,desc = "tw-h-77-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4207731,cardId = 1102016,lv = 105,bklv = 14,star = 4,mon = {id = 256,desc = "tw-h-77-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42078] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4207810,cardId = 1101007,lv = 106,bklv = 14,star = 4,mon = {id = 205,desc = "tw-h-78-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4207811,cardId = 1102012,lv = 106,bklv = 14,star = 4,mon = {id = 240,desc = "tw-h-78-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4207820,cardId = 1101005,lv = 106,bklv = 14,star = 4,mon = {id = 204,desc = "tw-h-78-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4207821,cardId = 1102011,lv = 106,bklv = 14,star = 4,mon = {id = 245,desc = "tw-h-78-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4207830,cardId = 1101010,lv = 106,bklv = 14,star = 4,mon = {id = 207,desc = "tw-h-78-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4207831,cardId = 1102016,lv = 106,bklv = 14,star = 4,mon = {id = 249,desc = "tw-h-78-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42079] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4207910,cardId = 1101007,lv = 107,bklv = 14,star = 4,mon = {id = 201,desc = "tw-h-79-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4207911,cardId = 1102012,lv = 107,bklv = 14,star = 4,mon = {id = 241,desc = "tw-h-79-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4207920,cardId = 1101005,lv = 107,bklv = 14,star = 4,mon = {id = 203,desc = "tw-h-79-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4207921,cardId = 1102011,lv = 107,bklv = 14,star = 4,mon = {id = 244,desc = "tw-h-79-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4207930,cardId = 1101010,lv = 107,bklv = 14,star = 4,mon = {id = 214,desc = "tw-h-79-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4207931,cardId = 1102016,lv = 107,bklv = 14,star = 4,mon = {id = 259,desc = "tw-h-79-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42080] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4208010,cardId = 1101007,lv = 107,bklv = 14,star = 5,mon = {id = 212,desc = "tw-h-80-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4208011,cardId = 1102012,lv = 107,bklv = 14,star = 5,mon = {id = 257,desc = "tw-h-80-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4208020,cardId = 1101005,lv = 107,bklv = 14,star = 5,mon = {id = 208,desc = "tw-h-80-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4208021,cardId = 1102011,lv = 107,bklv = 14,star = 5,mon = {id = 252,desc = "tw-h-80-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4208030,cardId = 1101010,lv = 107,bklv = 14,star = 5,mon = {id = 209,desc = "tw-h-80-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4208031,cardId = 1102016,lv = 107,bklv = 14,star = 5,mon = {id = 253,desc = "tw-h-80-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42081] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4208110,cardId = 1101007,lv = 108,bklv = 14,star = 5,mon = {id = 215,desc = "tw-h-81-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4208111,cardId = 1102012,lv = 108,bklv = 14,star = 5,mon = {id = 260,desc = "tw-h-81-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4208120,cardId = 1101005,lv = 108,bklv = 14,star = 5,mon = {id = 201,desc = "tw-h-81-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4208121,cardId = 1102011,lv = 108,bklv = 14,star = 5,mon = {id = 248,desc = "tw-h-81-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4208130,cardId = 1101010,lv = 108,bklv = 14,star = 5,mon = {id = 211,desc = "tw-h-81-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4208131,cardId = 1102016,lv = 108,bklv = 14,star = 5,mon = {id = 256,desc = "tw-h-81-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42082] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4208210,cardId = 1101007,lv = 109,bklv = 14,star = 5,mon = {id = 206,desc = "tw-h-82-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4208211,cardId = 1102012,lv = 109,bklv = 14,star = 5,mon = {id = 246,desc = "tw-h-82-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4208220,cardId = 1101005,lv = 109,bklv = 14,star = 5,mon = {id = 203,desc = "tw-h-82-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4208221,cardId = 1102011,lv = 109,bklv = 14,star = 5,mon = {id = 244,desc = "tw-h-82-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4208230,cardId = 1101010,lv = 109,bklv = 14,star = 5,mon = {id = 212,desc = "tw-h-82-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4208231,cardId = 1102016,lv = 109,bklv = 14,star = 5,mon = {id = 257,desc = "tw-h-82-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42083] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4208310,cardId = 1101007,lv = 110,bklv = 15,star = 5,mon = {id = 209,desc = "tw-h-83-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4208311,cardId = 1102012,lv = 110,bklv = 15,star = 5,mon = {id = 253,desc = "tw-h-83-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4208320,cardId = 1101005,lv = 110,bklv = 14,star = 5,mon = {id = 208,desc = "tw-h-83-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4208321,cardId = 1102011,lv = 110,bklv = 14,star = 5,mon = {id = 252,desc = "tw-h-83-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4208330,cardId = 1101010,lv = 110,bklv = 14,star = 5,mon = {id = 212,desc = "tw-h-83-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4208331,cardId = 1102016,lv = 110,bklv = 14,star = 5,mon = {id = 257,desc = "tw-h-83-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42084] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4208410,cardId = 1101007,lv = 110,bklv = 15,star = 5,mon = {id = 213,desc = "tw-h-84-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4208411,cardId = 1102012,lv = 110,bklv = 15,star = 5,mon = {id = 258,desc = "tw-h-84-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4208420,cardId = 1101005,lv = 110,bklv = 15,star = 5,mon = {id = 207,desc = "tw-h-84-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4208421,cardId = 1102011,lv = 110,bklv = 15,star = 5,mon = {id = 242,desc = "tw-h-84-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4208430,cardId = 1101010,lv = 110,bklv = 14,star = 5,mon = {id = 211,desc = "tw-h-84-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4208431,cardId = 1102016,lv = 110,bklv = 14,star = 5,mon = {id = 256,desc = "tw-h-84-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42085] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4208510,cardId = 1101007,lv = 110,bklv = 15,star = 5,mon = {id = 206,desc = "tw-h-85-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4208511,cardId = 1102012,lv = 110,bklv = 15,star = 5,mon = {id = 246,desc = "tw-h-85-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4208520,cardId = 1101005,lv = 110,bklv = 15,star = 5,mon = {id = 205,desc = "tw-h-85-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4208521,cardId = 1102011,lv = 110,bklv = 15,star = 5,mon = {id = 250,desc = "tw-h-85-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4208530,cardId = 1101010,lv = 110,bklv = 15,star = 5,mon = {id = 207,desc = "tw-h-85-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4208531,cardId = 1102016,lv = 110,bklv = 15,star = 5,mon = {id = 249,desc = "tw-h-85-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42086] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4208610,cardId = 1101007,lv = 111,bklv = 15,star = 5,mon = {id = 212,desc = "tw-h-86-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4208611,cardId = 1102012,lv = 111,bklv = 15,star = 5,mon = {id = 257,desc = "tw-h-86-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4208620,cardId = 1101005,lv = 111,bklv = 15,star = 5,mon = {id = 208,desc = "tw-h-86-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4208621,cardId = 1102011,lv = 111,bklv = 15,star = 5,mon = {id = 252,desc = "tw-h-86-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4208630,cardId = 1101010,lv = 111,bklv = 15,star = 5,mon = {id = 209,desc = "tw-h-86-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4208631,cardId = 1102016,lv = 111,bklv = 15,star = 5,mon = {id = 253,desc = "tw-h-86-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42087] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4208710,cardId = 1101007,lv = 112,bklv = 15,star = 5,mon = {id = 201,desc = "tw-h-87-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4208711,cardId = 1102012,lv = 112,bklv = 15,star = 5,mon = {id = 241,desc = "tw-h-87-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4208720,cardId = 1101005,lv = 112,bklv = 15,star = 5,mon = {id = 203,desc = "tw-h-87-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4208721,cardId = 1102011,lv = 112,bklv = 15,star = 5,mon = {id = 244,desc = "tw-h-87-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4208730,cardId = 1101010,lv = 112,bklv = 15,star = 5,mon = {id = 214,desc = "tw-h-87-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4208731,cardId = 1102016,lv = 112,bklv = 15,star = 5,mon = {id = 259,desc = "tw-h-87-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42088] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4208810,cardId = 1101007,lv = 112,bklv = 15,star = 5,mon = {id = 212,desc = "tw-h-88-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4208811,cardId = 1102012,lv = 112,bklv = 15,star = 5,mon = {id = 257,desc = "tw-h-88-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4208820,cardId = 1101005,lv = 112,bklv = 15,star = 5,mon = {id = 208,desc = "tw-h-88-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4208821,cardId = 1102011,lv = 112,bklv = 15,star = 5,mon = {id = 252,desc = "tw-h-88-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4208830,cardId = 1101010,lv = 112,bklv = 15,star = 5,mon = {id = 209,desc = "tw-h-88-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4208831,cardId = 1102016,lv = 112,bklv = 15,star = 5,mon = {id = 253,desc = "tw-h-88-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42089] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4208910,cardId = 1101007,lv = 113,bklv = 15,star = 5,mon = {id = 215,desc = "tw-h-89-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4208911,cardId = 1102012,lv = 113,bklv = 15,star = 5,mon = {id = 260,desc = "tw-h-89-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4208920,cardId = 1101005,lv = 113,bklv = 15,star = 5,mon = {id = 201,desc = "tw-h-89-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4208921,cardId = 1102011,lv = 113,bklv = 15,star = 5,mon = {id = 248,desc = "tw-h-89-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4208930,cardId = 1101010,lv = 113,bklv = 15,star = 5,mon = {id = 211,desc = "tw-h-89-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4208931,cardId = 1102016,lv = 113,bklv = 15,star = 5,mon = {id = 256,desc = "tw-h-89-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42090] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4209010,cardId = 1101007,lv = 115,bklv = 16,star = 5,mon = {id = 209,desc = "tw-h-90-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4209011,cardId = 1102012,lv = 115,bklv = 16,star = 5,mon = {id = 253,desc = "tw-h-90-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4209020,cardId = 1101005,lv = 115,bklv = 15,star = 5,mon = {id = 208,desc = "tw-h-90-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4209021,cardId = 1102011,lv = 115,bklv = 15,star = 5,mon = {id = 252,desc = "tw-h-90-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4209030,cardId = 1101010,lv = 115,bklv = 15,star = 5,mon = {id = 212,desc = "tw-h-90-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4209031,cardId = 1102016,lv = 115,bklv = 15,star = 5,mon = {id = 257,desc = "tw-h-90-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42091] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4209110,cardId = 1101007,lv = 115,bklv = 16,star = 5,mon = {id = 207,desc = "tw-h-91-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4209111,cardId = 1102012,lv = 115,bklv = 16,star = 5,mon = {id = 248,desc = "tw-h-91-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4209120,cardId = 1101005,lv = 115,bklv = 16,star = 5,mon = {id = 207,desc = "tw-h-91-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4209121,cardId = 1102011,lv = 115,bklv = 16,star = 5,mon = {id = 242,desc = "tw-h-91-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4209130,cardId = 1101010,lv = 115,bklv = 15,star = 5,mon = {id = 211,desc = "tw-h-91-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4209131,cardId = 1102016,lv = 115,bklv = 15,star = 5,mon = {id = 256,desc = "tw-h-91-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42092] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4209210,cardId = 1101007,lv = 115,bklv = 16,star = 5,mon = {id = 205,desc = "tw-h-92-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4209211,cardId = 1102012,lv = 115,bklv = 16,star = 5,mon = {id = 240,desc = "tw-h-92-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4209220,cardId = 1101005,lv = 115,bklv = 16,star = 5,mon = {id = 204,desc = "tw-h-92-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4209221,cardId = 1102011,lv = 115,bklv = 16,star = 5,mon = {id = 245,desc = "tw-h-92-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4209230,cardId = 1101010,lv = 115,bklv = 16,star = 5,mon = {id = 207,desc = "tw-h-92-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4209231,cardId = 1102016,lv = 115,bklv = 16,star = 5,mon = {id = 249,desc = "tw-h-92-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42093] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4209310,cardId = 1101007,lv = 116,bklv = 16,star = 5,mon = {id = 212,desc = "tw-h-93-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4209311,cardId = 1102012,lv = 116,bklv = 16,star = 5,mon = {id = 257,desc = "tw-h-93-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4209320,cardId = 1101005,lv = 116,bklv = 16,star = 5,mon = {id = 208,desc = "tw-h-93-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4209321,cardId = 1102011,lv = 116,bklv = 16,star = 5,mon = {id = 252,desc = "tw-h-93-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4209330,cardId = 1101010,lv = 116,bklv = 16,star = 5,mon = {id = 213,desc = "tw-h-93-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4209331,cardId = 1102016,lv = 116,bklv = 16,star = 5,mon = {id = 258,desc = "tw-h-93-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42094] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4209410,cardId = 1101007,lv = 117,bklv = 16,star = 5,mon = {id = 201,desc = "tw-h-94-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4209411,cardId = 1102012,lv = 117,bklv = 16,star = 5,mon = {id = 241,desc = "tw-h-94-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4209420,cardId = 1101005,lv = 117,bklv = 16,star = 5,mon = {id = 203,desc = "tw-h-94-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4209421,cardId = 1102011,lv = 117,bklv = 16,star = 5,mon = {id = 244,desc = "tw-h-94-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4209430,cardId = 1101010,lv = 117,bklv = 16,star = 5,mon = {id = 214,desc = "tw-h-94-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4209431,cardId = 1102016,lv = 117,bklv = 16,star = 5,mon = {id = 259,desc = "tw-h-94-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42095] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4209510,cardId = 1101007,lv = 117,bklv = 16,star = 5,mon = {id = 212,desc = "tw-h-95-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4209511,cardId = 1102012,lv = 117,bklv = 16,star = 5,mon = {id = 257,desc = "tw-h-95-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4209520,cardId = 1101005,lv = 117,bklv = 16,star = 5,mon = {id = 208,desc = "tw-h-95-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4209521,cardId = 1102011,lv = 117,bklv = 16,star = 5,mon = {id = 252,desc = "tw-h-95-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4209530,cardId = 1101010,lv = 117,bklv = 16,star = 5,mon = {id = 209,desc = "tw-h-95-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4209531,cardId = 1102016,lv = 117,bklv = 16,star = 5,mon = {id = 253,desc = "tw-h-95-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42096] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4209610,cardId = 1101007,lv = 118,bklv = 16,star = 5,mon = {id = 215,desc = "tw-h-96-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4209611,cardId = 1102012,lv = 118,bklv = 16,star = 5,mon = {id = 260,desc = "tw-h-96-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4209620,cardId = 1101005,lv = 118,bklv = 16,star = 5,mon = {id = 201,desc = "tw-h-96-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4209621,cardId = 1102011,lv = 118,bklv = 16,star = 5,mon = {id = 248,desc = "tw-h-96-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4209630,cardId = 1101010,lv = 118,bklv = 16,star = 5,mon = {id = 211,desc = "tw-h-96-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4209631,cardId = 1102016,lv = 118,bklv = 16,star = 5,mon = {id = 256,desc = "tw-h-96-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42097] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4209710,cardId = 1101007,lv = 119,bklv = 16,star = 5,mon = {id = 206,desc = "tw-h-97-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4209711,cardId = 1102012,lv = 119,bklv = 16,star = 5,mon = {id = 246,desc = "tw-h-97-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4209720,cardId = 1101005,lv = 119,bklv = 16,star = 5,mon = {id = 203,desc = "tw-h-97-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4209721,cardId = 1102011,lv = 119,bklv = 16,star = 5,mon = {id = 244,desc = "tw-h-97-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4209730,cardId = 1101010,lv = 119,bklv = 16,star = 5,mon = {id = 212,desc = "tw-h-97-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4209731,cardId = 1102016,lv = 119,bklv = 16,star = 5,mon = {id = 257,desc = "tw-h-97-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42098] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4209810,cardId = 1101007,lv = 120,bklv = 17,star = 5,mon = {id = 209,desc = "tw-h-98-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4209811,cardId = 1102012,lv = 120,bklv = 17,star = 5,mon = {id = 253,desc = "tw-h-98-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4209820,cardId = 1101005,lv = 120,bklv = 16,star = 5,mon = {id = 208,desc = "tw-h-98-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4209821,cardId = 1102011,lv = 120,bklv = 16,star = 5,mon = {id = 252,desc = "tw-h-98-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4209830,cardId = 1101010,lv = 120,bklv = 16,star = 5,mon = {id = 212,desc = "tw-h-98-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4209831,cardId = 1102016,lv = 120,bklv = 16,star = 5,mon = {id = 257,desc = "tw-h-98-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42099] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4209910,cardId = 1101007,lv = 120,bklv = 17,star = 5,mon = {id = 207,desc = "tw-h-99-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4209911,cardId = 1102012,lv = 120,bklv = 17,star = 5,mon = {id = 248,desc = "tw-h-99-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4209920,cardId = 1101005,lv = 120,bklv = 17,star = 5,mon = {id = 207,desc = "tw-h-99-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4209921,cardId = 1102011,lv = 120,bklv = 17,star = 5,mon = {id = 242,desc = "tw-h-99-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4209930,cardId = 1101010,lv = 120,bklv = 16,star = 5,mon = {id = 211,desc = "tw-h-99-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4209931,cardId = 1102016,lv = 120,bklv = 16,star = 5,mon = {id = 256,desc = "tw-h-99-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[42100] = {
		[1] = {
			jlr = {cha = "tw-h",id = 4210010,cardId = 1101007,lv = 120,bklv = 17,star = 5,mon = {id = 207,desc = "tw-h-100-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4210011,cardId = 1102012,lv = 120,bklv = 17,star = 5,mon = {id = 251,desc = "tw-h-100-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-h",id = 4210020,cardId = 1101005,lv = 120,bklv = 17,star = 5,mon = {id = 205,desc = "tw-h-100-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4210021,cardId = 1102011,lv = 120,bklv = 17,star = 5,mon = {id = 250,desc = "tw-h-100-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-h",id = 4210030,cardId = 1101010,lv = 120,bklv = 17,star = 5,mon = {id = 210,desc = "tw-h-100-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-h",id = 4210031,cardId = 1102016,lv = 120,bklv = 17,star = 5,mon = {id = 255,desc = "tw-h-100-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43001] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4300110,cardId = 1101001,lv = 40,bklv = 5,star = 2,mon = {id = 212,desc = "tw-x-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4300111,cardId = 1102015,lv = 40,bklv = 5,star = 2,mon = {id = 257,desc = "tw-x-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4300120,cardId = 1101002,lv = 40,bklv = 5,star = 2,mon = {id = 208,desc = "tw-x-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4300121,cardId = 1102004,lv = 40,bklv = 5,star = 2,mon = {id = 252,desc = "tw-x-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4300130,cardId = 1101003,lv = 40,bklv = 5,star = 2,mon = {id = 209,desc = "tw-x-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4300131,cardId = 1102005,lv = 40,bklv = 5,star = 2,mon = {id = 253,desc = "tw-x-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43002] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4300210,cardId = 1101001,lv = 45,bklv = 5,star = 2,mon = {id = 201,desc = "tw-x-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4300211,cardId = 1102015,lv = 45,bklv = 5,star = 2,mon = {id = 241,desc = "tw-x-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4300220,cardId = 1101002,lv = 45,bklv = 5,star = 2,mon = {id = 203,desc = "tw-x-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4300221,cardId = 1102004,lv = 45,bklv = 5,star = 2,mon = {id = 244,desc = "tw-x-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4300230,cardId = 1101003,lv = 45,bklv = 5,star = 2,mon = {id = 214,desc = "tw-x-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4300231,cardId = 1102005,lv = 45,bklv = 5,star = 2,mon = {id = 259,desc = "tw-x-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43003] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4300310,cardId = 1101001,lv = 48,bklv = 5,star = 2,mon = {id = 212,desc = "tw-x-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4300311,cardId = 1102015,lv = 48,bklv = 5,star = 2,mon = {id = 257,desc = "tw-x-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4300320,cardId = 1101002,lv = 48,bklv = 5,star = 2,mon = {id = 208,desc = "tw-x-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4300321,cardId = 1102004,lv = 48,bklv = 5,star = 2,mon = {id = 252,desc = "tw-x-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4300330,cardId = 1101003,lv = 48,bklv = 5,star = 2,mon = {id = 209,desc = "tw-x-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4300331,cardId = 1102005,lv = 48,bklv = 5,star = 2,mon = {id = 253,desc = "tw-x-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43004] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4300410,cardId = 1101001,lv = 50,bklv = 6,star = 2,mon = {id = 215,desc = "tw-x-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4300411,cardId = 1102015,lv = 50,bklv = 6,star = 2,mon = {id = 260,desc = "tw-x-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4300420,cardId = 1101002,lv = 50,bklv = 5,star = 2,mon = {id = 201,desc = "tw-x-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4300421,cardId = 1102004,lv = 50,bklv = 5,star = 2,mon = {id = 248,desc = "tw-x-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4300430,cardId = 1101003,lv = 50,bklv = 5,star = 2,mon = {id = 211,desc = "tw-x-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4300431,cardId = 1102005,lv = 50,bklv = 5,star = 2,mon = {id = 256,desc = "tw-x-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43005] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4300510,cardId = 1101001,lv = 50,bklv = 6,star = 2,mon = {id = 206,desc = "tw-x-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4300511,cardId = 1102015,lv = 50,bklv = 6,star = 2,mon = {id = 246,desc = "tw-x-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4300520,cardId = 1101002,lv = 50,bklv = 6,star = 2,mon = {id = 203,desc = "tw-x-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4300521,cardId = 1102004,lv = 50,bklv = 6,star = 2,mon = {id = 244,desc = "tw-x-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4300530,cardId = 1101003,lv = 50,bklv = 6,star = 2,mon = {id = 212,desc = "tw-x-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4300531,cardId = 1102005,lv = 50,bklv = 6,star = 2,mon = {id = 257,desc = "tw-x-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43006] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4300610,cardId = 1101001,lv = 52,bklv = 6,star = 2,mon = {id = 209,desc = "tw-x-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4300611,cardId = 1102015,lv = 52,bklv = 6,star = 2,mon = {id = 253,desc = "tw-x-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4300620,cardId = 1101002,lv = 52,bklv = 6,star = 2,mon = {id = 208,desc = "tw-x-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4300621,cardId = 1102004,lv = 52,bklv = 6,star = 2,mon = {id = 252,desc = "tw-x-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4300630,cardId = 1101003,lv = 52,bklv = 6,star = 2,mon = {id = 212,desc = "tw-x-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4300631,cardId = 1102005,lv = 52,bklv = 6,star = 2,mon = {id = 257,desc = "tw-x-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43007] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4300710,cardId = 1101001,lv = 55,bklv = 6,star = 2,mon = {id = 213,desc = "tw-x-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4300711,cardId = 1102015,lv = 55,bklv = 6,star = 2,mon = {id = 258,desc = "tw-x-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4300720,cardId = 1101002,lv = 55,bklv = 6,star = 2,mon = {id = 207,desc = "tw-x-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4300721,cardId = 1102004,lv = 55,bklv = 6,star = 2,mon = {id = 242,desc = "tw-x-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4300730,cardId = 1101003,lv = 55,bklv = 6,star = 2,mon = {id = 211,desc = "tw-x-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4300731,cardId = 1102005,lv = 55,bklv = 6,star = 2,mon = {id = 256,desc = "tw-x-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43008] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4300810,cardId = 1101001,lv = 58,bklv = 6,star = 2,mon = {id = 209,desc = "tw-x-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4300811,cardId = 1102002,lv = 58,bklv = 6,star = 2,mon = {id = 253,desc = "tw-x-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4300820,cardId = 1101012,lv = 58,bklv = 6,star = 2,mon = {id = 208,desc = "tw-x-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4300821,cardId = 1102018,lv = 58,bklv = 6,star = 2,mon = {id = 252,desc = "tw-x-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4300830,cardId = 1101003,lv = 58,bklv = 6,star = 2,mon = {id = 212,desc = "tw-x-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4300831,cardId = 1102005,lv = 58,bklv = 6,star = 2,mon = {id = 257,desc = "tw-x-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43009] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4300910,cardId = 1101001,lv = 60,bklv = 7,star = 2,mon = {id = 207,desc = "tw-x-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4300911,cardId = 1102002,lv = 60,bklv = 7,star = 2,mon = {id = 251,desc = "tw-x-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4300920,cardId = 1101012,lv = 60,bklv = 6,star = 2,mon = {id = 205,desc = "tw-x-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4300921,cardId = 1102018,lv = 60,bklv = 6,star = 2,mon = {id = 250,desc = "tw-x-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4300930,cardId = 1101003,lv = 60,bklv = 6,star = 2,mon = {id = 210,desc = "tw-x-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4300931,cardId = 1102005,lv = 60,bklv = 6,star = 2,mon = {id = 255,desc = "tw-x-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43010] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4301010,cardId = 1101001,lv = 60,bklv = 7,star = 2,mon = {id = 212,desc = "tw-x-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4301011,cardId = 1102002,lv = 60,bklv = 7,star = 2,mon = {id = 257,desc = "tw-x-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4301020,cardId = 1101012,lv = 60,bklv = 7,star = 2,mon = {id = 208,desc = "tw-x-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4301021,cardId = 1102018,lv = 60,bklv = 7,star = 2,mon = {id = 252,desc = "tw-x-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4301030,cardId = 1101003,lv = 60,bklv = 7,star = 2,mon = {id = 209,desc = "tw-x-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4301031,cardId = 1102005,lv = 60,bklv = 7,star = 2,mon = {id = 253,desc = "tw-x-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43011] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4301110,cardId = 1101001,lv = 62,bklv = 7,star = 2,mon = {id = 201,desc = "tw-x-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4301111,cardId = 1102002,lv = 62,bklv = 7,star = 2,mon = {id = 241,desc = "tw-x-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4301120,cardId = 1101012,lv = 62,bklv = 7,star = 2,mon = {id = 203,desc = "tw-x-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4301121,cardId = 1102018,lv = 62,bklv = 7,star = 2,mon = {id = 244,desc = "tw-x-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4301130,cardId = 1101003,lv = 62,bklv = 7,star = 2,mon = {id = 214,desc = "tw-x-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4301131,cardId = 1102005,lv = 62,bklv = 7,star = 2,mon = {id = 259,desc = "tw-x-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43012] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4301210,cardId = 1101001,lv = 65,bklv = 7,star = 2,mon = {id = 212,desc = "tw-x-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4301211,cardId = 1102002,lv = 65,bklv = 7,star = 2,mon = {id = 257,desc = "tw-x-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4301220,cardId = 1101012,lv = 65,bklv = 7,star = 2,mon = {id = 208,desc = "tw-x-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4301221,cardId = 1102018,lv = 65,bklv = 7,star = 2,mon = {id = 252,desc = "tw-x-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4301230,cardId = 1101003,lv = 65,bklv = 7,star = 2,mon = {id = 209,desc = "tw-x-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4301231,cardId = 1102005,lv = 65,bklv = 7,star = 2,mon = {id = 253,desc = "tw-x-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43013] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4301310,cardId = 1101001,lv = 68,bklv = 7,star = 2,mon = {id = 215,desc = "tw-x-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4301311,cardId = 1102002,lv = 68,bklv = 7,star = 2,mon = {id = 260,desc = "tw-x-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4301320,cardId = 1101012,lv = 68,bklv = 7,star = 2,mon = {id = 201,desc = "tw-x-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4301321,cardId = 1102018,lv = 68,bklv = 7,star = 2,mon = {id = 248,desc = "tw-x-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4301330,cardId = 1101003,lv = 68,bklv = 7,star = 2,mon = {id = 211,desc = "tw-x-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4301331,cardId = 1102005,lv = 68,bklv = 7,star = 2,mon = {id = 256,desc = "tw-x-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43014] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4301410,cardId = 1101001,lv = 70,bklv = 8,star = 2,mon = {id = 206,desc = "tw-x-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4301411,cardId = 1102002,lv = 70,bklv = 8,star = 2,mon = {id = 246,desc = "tw-x-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4301420,cardId = 1101012,lv = 70,bklv = 7,star = 2,mon = {id = 203,desc = "tw-x-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4301421,cardId = 1102018,lv = 70,bklv = 7,star = 2,mon = {id = 244,desc = "tw-x-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4301430,cardId = 1101003,lv = 70,bklv = 7,star = 2,mon = {id = 212,desc = "tw-x-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4301431,cardId = 1102005,lv = 70,bklv = 7,star = 2,mon = {id = 257,desc = "tw-x-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43015] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4301510,cardId = 1101001,lv = 70,bklv = 8,star = 2,mon = {id = 209,desc = "tw-x-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4301511,cardId = 1102002,lv = 70,bklv = 8,star = 2,mon = {id = 253,desc = "tw-x-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4301520,cardId = 1101012,lv = 70,bklv = 8,star = 2,mon = {id = 208,desc = "tw-x-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4301521,cardId = 1102018,lv = 70,bklv = 8,star = 2,mon = {id = 252,desc = "tw-x-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4301530,cardId = 1101003,lv = 70,bklv = 8,star = 2,mon = {id = 212,desc = "tw-x-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4301531,cardId = 1102005,lv = 70,bklv = 8,star = 2,mon = {id = 257,desc = "tw-x-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43016] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4301610,cardId = 1101001,lv = 72,bklv = 8,star = 2,mon = {id = 207,desc = "tw-x-16-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4301611,cardId = 1102002,lv = 72,bklv = 8,star = 2,mon = {id = 248,desc = "tw-x-16-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4301620,cardId = 1101014,lv = 72,bklv = 8,star = 2,mon = {id = 207,desc = "tw-x-16-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4301621,cardId = 1102020,lv = 72,bklv = 8,star = 2,mon = {id = 242,desc = "tw-x-16-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4301630,cardId = 1101003,lv = 72,bklv = 8,star = 2,mon = {id = 211,desc = "tw-x-16-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4301631,cardId = 1102005,lv = 72,bklv = 8,star = 2,mon = {id = 256,desc = "tw-x-16-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43017] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4301710,cardId = 1101001,lv = 75,bklv = 8,star = 2,mon = {id = 209,desc = "tw-x-17-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4301711,cardId = 1102002,lv = 75,bklv = 8,star = 2,mon = {id = 253,desc = "tw-x-17-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4301720,cardId = 1101014,lv = 75,bklv = 8,star = 2,mon = {id = 208,desc = "tw-x-17-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4301721,cardId = 1102020,lv = 75,bklv = 8,star = 2,mon = {id = 252,desc = "tw-x-17-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4301730,cardId = 1101003,lv = 75,bklv = 8,star = 2,mon = {id = 212,desc = "tw-x-17-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4301731,cardId = 1102005,lv = 75,bklv = 8,star = 2,mon = {id = 257,desc = "tw-x-17-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43018] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4301810,cardId = 1101001,lv = 78,bklv = 8,star = 2,mon = {id = 207,desc = "tw-x-18-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4301811,cardId = 1102002,lv = 78,bklv = 8,star = 2,mon = {id = 251,desc = "tw-x-18-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4301820,cardId = 1101014,lv = 78,bklv = 8,star = 2,mon = {id = 205,desc = "tw-x-18-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4301821,cardId = 1102020,lv = 78,bklv = 8,star = 2,mon = {id = 250,desc = "tw-x-18-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4301830,cardId = 1101003,lv = 78,bklv = 8,star = 2,mon = {id = 210,desc = "tw-x-18-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4301831,cardId = 1102005,lv = 78,bklv = 8,star = 2,mon = {id = 255,desc = "tw-x-18-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43019] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4301910,cardId = 1101001,lv = 80,bklv = 9,star = 2,mon = {id = 212,desc = "tw-x-19-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4301911,cardId = 1102002,lv = 80,bklv = 9,star = 2,mon = {id = 257,desc = "tw-x-19-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4301920,cardId = 1101014,lv = 80,bklv = 8,star = 2,mon = {id = 208,desc = "tw-x-19-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4301921,cardId = 1102020,lv = 80,bklv = 8,star = 2,mon = {id = 252,desc = "tw-x-19-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4301930,cardId = 1101003,lv = 80,bklv = 8,star = 2,mon = {id = 209,desc = "tw-x-19-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4301931,cardId = 1102005,lv = 80,bklv = 8,star = 2,mon = {id = 253,desc = "tw-x-19-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43020] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4302010,cardId = 1101007,lv = 80,bklv = 9,star = 2,mon = {id = 201,desc = "tw-x-20-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4302011,cardId = 1102002,lv = 80,bklv = 9,star = 2,mon = {id = 241,desc = "tw-x-20-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4302020,cardId = 1101014,lv = 80,bklv = 9,star = 2,mon = {id = 203,desc = "tw-x-20-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4302021,cardId = 1102020,lv = 80,bklv = 9,star = 2,mon = {id = 244,desc = "tw-x-20-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4302030,cardId = 1101003,lv = 80,bklv = 9,star = 2,mon = {id = 214,desc = "tw-x-20-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4302031,cardId = 1102005,lv = 80,bklv = 9,star = 2,mon = {id = 259,desc = "tw-x-20-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43021] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4302110,cardId = 1101007,lv = 81,bklv = 9,star = 2,mon = {id = 212,desc = "tw-x-21-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4302111,cardId = 1102002,lv = 81,bklv = 9,star = 2,mon = {id = 257,desc = "tw-x-21-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4302120,cardId = 1101014,lv = 81,bklv = 9,star = 2,mon = {id = 208,desc = "tw-x-21-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4302121,cardId = 1102020,lv = 81,bklv = 9,star = 2,mon = {id = 252,desc = "tw-x-21-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4302130,cardId = 1101003,lv = 81,bklv = 9,star = 2,mon = {id = 209,desc = "tw-x-21-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4302131,cardId = 1102005,lv = 81,bklv = 9,star = 2,mon = {id = 253,desc = "tw-x-21-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43022] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4302210,cardId = 1101007,lv = 82,bklv = 9,star = 2,mon = {id = 215,desc = "tw-x-22-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4302211,cardId = 1102002,lv = 82,bklv = 9,star = 2,mon = {id = 260,desc = "tw-x-22-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4302220,cardId = 1101014,lv = 82,bklv = 9,star = 2,mon = {id = 201,desc = "tw-x-22-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4302221,cardId = 1102020,lv = 82,bklv = 9,star = 2,mon = {id = 248,desc = "tw-x-22-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4302230,cardId = 1101003,lv = 82,bklv = 9,star = 2,mon = {id = 211,desc = "tw-x-22-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4302231,cardId = 1102005,lv = 82,bklv = 9,star = 2,mon = {id = 256,desc = "tw-x-22-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43023] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4302310,cardId = 1101007,lv = 83,bklv = 9,star = 2,mon = {id = 206,desc = "tw-x-23-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4302311,cardId = 1102002,lv = 83,bklv = 9,star = 2,mon = {id = 246,desc = "tw-x-23-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4302320,cardId = 1101014,lv = 83,bklv = 9,star = 2,mon = {id = 203,desc = "tw-x-23-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4302321,cardId = 1102020,lv = 83,bklv = 9,star = 2,mon = {id = 244,desc = "tw-x-23-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4302330,cardId = 1101003,lv = 83,bklv = 9,star = 2,mon = {id = 212,desc = "tw-x-23-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4302331,cardId = 1102005,lv = 83,bklv = 9,star = 2,mon = {id = 257,desc = "tw-x-23-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43024] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4302410,cardId = 1101007,lv = 85,bklv = 10,star = 2,mon = {id = 209,desc = "tw-x-24-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4302411,cardId = 1102002,lv = 85,bklv = 10,star = 2,mon = {id = 253,desc = "tw-x-24-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4302420,cardId = 1101014,lv = 85,bklv = 9,star = 2,mon = {id = 208,desc = "tw-x-24-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4302421,cardId = 1102020,lv = 85,bklv = 9,star = 2,mon = {id = 252,desc = "tw-x-24-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4302430,cardId = 1101003,lv = 85,bklv = 9,star = 2,mon = {id = 212,desc = "tw-x-24-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4302431,cardId = 1102005,lv = 85,bklv = 9,star = 2,mon = {id = 257,desc = "tw-x-24-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43025] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4302510,cardId = 1101007,lv = 85,bklv = 10,star = 2,mon = {id = 213,desc = "tw-x-25-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4302511,cardId = 1102002,lv = 85,bklv = 10,star = 2,mon = {id = 258,desc = "tw-x-25-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4302520,cardId = 1101014,lv = 85,bklv = 10,star = 2,mon = {id = 207,desc = "tw-x-25-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4302521,cardId = 1102020,lv = 85,bklv = 10,star = 2,mon = {id = 242,desc = "tw-x-25-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4302530,cardId = 1101003,lv = 85,bklv = 10,star = 2,mon = {id = 211,desc = "tw-x-25-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4302531,cardId = 1102005,lv = 85,bklv = 10,star = 2,mon = {id = 256,desc = "tw-x-25-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43026] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4302610,cardId = 1101007,lv = 86,bklv = 10,star = 3,mon = {id = 206,desc = "tw-x-26-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4302611,cardId = 1102002,lv = 86,bklv = 10,star = 3,mon = {id = 246,desc = "tw-x-26-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4302620,cardId = 1101014,lv = 86,bklv = 10,star = 3,mon = {id = 205,desc = "tw-x-26-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4302621,cardId = 1102020,lv = 86,bklv = 10,star = 3,mon = {id = 250,desc = "tw-x-26-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4302630,cardId = 1101003,lv = 86,bklv = 10,star = 3,mon = {id = 207,desc = "tw-x-26-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4302631,cardId = 1102005,lv = 86,bklv = 10,star = 3,mon = {id = 249,desc = "tw-x-26-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43027] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4302710,cardId = 1101007,lv = 87,bklv = 10,star = 3,mon = {id = 212,desc = "tw-x-27-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4302711,cardId = 1102002,lv = 87,bklv = 10,star = 3,mon = {id = 257,desc = "tw-x-27-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4302720,cardId = 1101014,lv = 87,bklv = 10,star = 3,mon = {id = 208,desc = "tw-x-27-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4302721,cardId = 1102020,lv = 87,bklv = 10,star = 3,mon = {id = 252,desc = "tw-x-27-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4302730,cardId = 1101003,lv = 87,bklv = 10,star = 3,mon = {id = 209,desc = "tw-x-27-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4302731,cardId = 1102005,lv = 87,bklv = 10,star = 3,mon = {id = 253,desc = "tw-x-27-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43028] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4302810,cardId = 1101007,lv = 88,bklv = 10,star = 3,mon = {id = 201,desc = "tw-x-28-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4302811,cardId = 1102002,lv = 88,bklv = 10,star = 3,mon = {id = 241,desc = "tw-x-28-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4302820,cardId = 1101014,lv = 88,bklv = 10,star = 3,mon = {id = 203,desc = "tw-x-28-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4302821,cardId = 1102020,lv = 88,bklv = 10,star = 3,mon = {id = 244,desc = "tw-x-28-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4302830,cardId = 1101003,lv = 88,bklv = 10,star = 3,mon = {id = 214,desc = "tw-x-28-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4302831,cardId = 1102005,lv = 88,bklv = 10,star = 3,mon = {id = 259,desc = "tw-x-28-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43029] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4302910,cardId = 1101007,lv = 90,bklv = 11,star = 3,mon = {id = 212,desc = "tw-x-29-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4302911,cardId = 1102002,lv = 90,bklv = 11,star = 3,mon = {id = 257,desc = "tw-x-29-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4302920,cardId = 1101014,lv = 90,bklv = 10,star = 3,mon = {id = 208,desc = "tw-x-29-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4302921,cardId = 1102020,lv = 90,bklv = 10,star = 3,mon = {id = 252,desc = "tw-x-29-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4302930,cardId = 1101003,lv = 90,bklv = 10,star = 3,mon = {id = 209,desc = "tw-x-29-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4302931,cardId = 1102005,lv = 90,bklv = 10,star = 3,mon = {id = 253,desc = "tw-x-29-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43030] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4303010,cardId = 1101009,lv = 90,bklv = 11,star = 3,mon = {id = 215,desc = "tw-x-30-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4303011,cardId = 1102014,lv = 90,bklv = 11,star = 3,mon = {id = 260,desc = "tw-x-30-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4303020,cardId = 1101007,lv = 90,bklv = 11,star = 3,mon = {id = 201,desc = "tw-x-30-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4303021,cardId = 1102003,lv = 90,bklv = 11,star = 3,mon = {id = 248,desc = "tw-x-30-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4303030,cardId = 1101011,lv = 90,bklv = 11,star = 3,mon = {id = 211,desc = "tw-x-30-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4303031,cardId = 1102017,lv = 90,bklv = 11,star = 3,mon = {id = 256,desc = "tw-x-30-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43031] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4303110,cardId = 1101009,lv = 91,bklv = 11,star = 3,mon = {id = 209,desc = "tw-x-31-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4303111,cardId = 1102014,lv = 91,bklv = 11,star = 3,mon = {id = 253,desc = "tw-x-31-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4303120,cardId = 1101007,lv = 91,bklv = 11,star = 3,mon = {id = 208,desc = "tw-x-31-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4303121,cardId = 1102003,lv = 91,bklv = 11,star = 3,mon = {id = 252,desc = "tw-x-31-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4303130,cardId = 1101011,lv = 91,bklv = 11,star = 3,mon = {id = 212,desc = "tw-x-31-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4303131,cardId = 1102017,lv = 91,bklv = 11,star = 3,mon = {id = 257,desc = "tw-x-31-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43032] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4303210,cardId = 1101009,lv = 92,bklv = 11,star = 3,mon = {id = 213,desc = "tw-x-32-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4303211,cardId = 1102014,lv = 92,bklv = 11,star = 3,mon = {id = 258,desc = "tw-x-32-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4303220,cardId = 1101007,lv = 92,bklv = 11,star = 3,mon = {id = 207,desc = "tw-x-32-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4303221,cardId = 1102003,lv = 92,bklv = 11,star = 3,mon = {id = 242,desc = "tw-x-32-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4303230,cardId = 1101011,lv = 92,bklv = 11,star = 3,mon = {id = 211,desc = "tw-x-32-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4303231,cardId = 1102017,lv = 92,bklv = 11,star = 3,mon = {id = 256,desc = "tw-x-32-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43033] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4303310,cardId = 1101009,lv = 93,bklv = 11,star = 3,mon = {id = 205,desc = "tw-x-33-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4303311,cardId = 1102014,lv = 93,bklv = 11,star = 3,mon = {id = 240,desc = "tw-x-33-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4303320,cardId = 1101007,lv = 93,bklv = 11,star = 3,mon = {id = 204,desc = "tw-x-33-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4303321,cardId = 1102003,lv = 93,bklv = 11,star = 3,mon = {id = 245,desc = "tw-x-33-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4303330,cardId = 1101011,lv = 93,bklv = 11,star = 3,mon = {id = 207,desc = "tw-x-33-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4303331,cardId = 1102017,lv = 93,bklv = 11,star = 3,mon = {id = 249,desc = "tw-x-33-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43034] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4303410,cardId = 1101009,lv = 94,bklv = 11,star = 3,mon = {id = 212,desc = "tw-x-34-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4303411,cardId = 1102014,lv = 94,bklv = 11,star = 3,mon = {id = 257,desc = "tw-x-34-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4303420,cardId = 1101007,lv = 94,bklv = 11,star = 3,mon = {id = 208,desc = "tw-x-34-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4303421,cardId = 1102003,lv = 94,bklv = 11,star = 3,mon = {id = 252,desc = "tw-x-34-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4303430,cardId = 1101011,lv = 94,bklv = 11,star = 3,mon = {id = 213,desc = "tw-x-34-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4303431,cardId = 1102017,lv = 94,bklv = 11,star = 3,mon = {id = 258,desc = "tw-x-34-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43035] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4303510,cardId = 1101009,lv = 95,bklv = 12,star = 3,mon = {id = 201,desc = "tw-x-35-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4303511,cardId = 1102014,lv = 95,bklv = 12,star = 3,mon = {id = 241,desc = "tw-x-35-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4303520,cardId = 1101007,lv = 95,bklv = 11,star = 3,mon = {id = 203,desc = "tw-x-35-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4303521,cardId = 1102003,lv = 95,bklv = 11,star = 3,mon = {id = 244,desc = "tw-x-35-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4303530,cardId = 1101011,lv = 95,bklv = 11,star = 3,mon = {id = 214,desc = "tw-x-35-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4303531,cardId = 1102017,lv = 95,bklv = 11,star = 3,mon = {id = 259,desc = "tw-x-35-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43036] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4303610,cardId = 1101009,lv = 95,bklv = 12,star = 3,mon = {id = 212,desc = "tw-x-36-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4303611,cardId = 1102014,lv = 95,bklv = 12,star = 3,mon = {id = 257,desc = "tw-x-36-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4303620,cardId = 1101007,lv = 95,bklv = 12,star = 3,mon = {id = 208,desc = "tw-x-36-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4303621,cardId = 1102003,lv = 95,bklv = 12,star = 3,mon = {id = 252,desc = "tw-x-36-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4303630,cardId = 1101011,lv = 95,bklv = 11,star = 3,mon = {id = 209,desc = "tw-x-36-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4303631,cardId = 1102017,lv = 95,bklv = 11,star = 3,mon = {id = 253,desc = "tw-x-36-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43037] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4303710,cardId = 1101009,lv = 95,bklv = 12,star = 3,mon = {id = 215,desc = "tw-x-37-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4303711,cardId = 1102014,lv = 95,bklv = 12,star = 3,mon = {id = 260,desc = "tw-x-37-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4303720,cardId = 1101007,lv = 95,bklv = 12,star = 3,mon = {id = 201,desc = "tw-x-37-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4303721,cardId = 1102003,lv = 95,bklv = 12,star = 3,mon = {id = 248,desc = "tw-x-37-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4303730,cardId = 1101011,lv = 95,bklv = 12,star = 3,mon = {id = 211,desc = "tw-x-37-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4303731,cardId = 1102017,lv = 95,bklv = 12,star = 3,mon = {id = 256,desc = "tw-x-37-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43038] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4303810,cardId = 1101009,lv = 96,bklv = 12,star = 3,mon = {id = 206,desc = "tw-x-38-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4303811,cardId = 1102014,lv = 96,bklv = 12,star = 3,mon = {id = 246,desc = "tw-x-38-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4303820,cardId = 1101007,lv = 96,bklv = 12,star = 3,mon = {id = 203,desc = "tw-x-38-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4303821,cardId = 1102003,lv = 96,bklv = 12,star = 3,mon = {id = 244,desc = "tw-x-38-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4303830,cardId = 1101011,lv = 96,bklv = 12,star = 3,mon = {id = 212,desc = "tw-x-38-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4303831,cardId = 1102017,lv = 96,bklv = 12,star = 3,mon = {id = 257,desc = "tw-x-38-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43039] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4303910,cardId = 1101009,lv = 97,bklv = 12,star = 3,mon = {id = 209,desc = "tw-x-39-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4303911,cardId = 1102014,lv = 97,bklv = 12,star = 3,mon = {id = 253,desc = "tw-x-39-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4303920,cardId = 1101007,lv = 97,bklv = 12,star = 3,mon = {id = 208,desc = "tw-x-39-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4303921,cardId = 1102003,lv = 97,bklv = 12,star = 3,mon = {id = 252,desc = "tw-x-39-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4303930,cardId = 1101011,lv = 97,bklv = 12,star = 3,mon = {id = 212,desc = "tw-x-39-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4303931,cardId = 1102017,lv = 97,bklv = 12,star = 3,mon = {id = 257,desc = "tw-x-39-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43040] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4304010,cardId = 1101009,lv = 98,bklv = 12,star = 3,mon = {id = 213,desc = "tw-x-40-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4304011,cardId = 1102014,lv = 98,bklv = 12,star = 3,mon = {id = 258,desc = "tw-x-40-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4304020,cardId = 1101007,lv = 98,bklv = 12,star = 3,mon = {id = 207,desc = "tw-x-40-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4304021,cardId = 1102003,lv = 98,bklv = 12,star = 3,mon = {id = 242,desc = "tw-x-40-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4304030,cardId = 1101011,lv = 98,bklv = 12,star = 3,mon = {id = 211,desc = "tw-x-40-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4304031,cardId = 1102017,lv = 98,bklv = 12,star = 3,mon = {id = 256,desc = "tw-x-40-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43041] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4304110,cardId = 1101009,lv = 98,bklv = 12,star = 3,mon = {id = 207,desc = "tw-x-41-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4304111,cardId = 1102014,lv = 98,bklv = 12,star = 3,mon = {id = 251,desc = "tw-x-41-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4304120,cardId = 1101007,lv = 98,bklv = 12,star = 3,mon = {id = 205,desc = "tw-x-41-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4304121,cardId = 1102003,lv = 98,bklv = 12,star = 3,mon = {id = 250,desc = "tw-x-41-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4304130,cardId = 1101011,lv = 98,bklv = 12,star = 3,mon = {id = 210,desc = "tw-x-41-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4304131,cardId = 1102017,lv = 98,bklv = 12,star = 3,mon = {id = 255,desc = "tw-x-41-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43042] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4304210,cardId = 1101009,lv = 99,bklv = 12,star = 3,mon = {id = 212,desc = "tw-x-42-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4304211,cardId = 1102014,lv = 99,bklv = 12,star = 3,mon = {id = 257,desc = "tw-x-42-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4304220,cardId = 1101007,lv = 99,bklv = 12,star = 3,mon = {id = 208,desc = "tw-x-42-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4304221,cardId = 1102003,lv = 99,bklv = 12,star = 3,mon = {id = 252,desc = "tw-x-42-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4304230,cardId = 1101011,lv = 99,bklv = 12,star = 3,mon = {id = 209,desc = "tw-x-42-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4304231,cardId = 1102017,lv = 99,bklv = 12,star = 3,mon = {id = 253,desc = "tw-x-42-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43043] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4304310,cardId = 1101009,lv = 100,bklv = 13,star = 3,mon = {id = 201,desc = "tw-x-43-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4304311,cardId = 1102014,lv = 100,bklv = 13,star = 3,mon = {id = 241,desc = "tw-x-43-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4304320,cardId = 1101007,lv = 100,bklv = 12,star = 3,mon = {id = 203,desc = "tw-x-43-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4304321,cardId = 1102003,lv = 100,bklv = 12,star = 3,mon = {id = 244,desc = "tw-x-43-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4304330,cardId = 1101011,lv = 100,bklv = 12,star = 3,mon = {id = 214,desc = "tw-x-43-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4304331,cardId = 1102017,lv = 100,bklv = 12,star = 3,mon = {id = 259,desc = "tw-x-43-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43044] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4304410,cardId = 1101009,lv = 100,bklv = 13,star = 3,mon = {id = 212,desc = "tw-x-44-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4304411,cardId = 1102014,lv = 100,bklv = 13,star = 3,mon = {id = 257,desc = "tw-x-44-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4304420,cardId = 1101007,lv = 100,bklv = 13,star = 3,mon = {id = 208,desc = "tw-x-44-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4304421,cardId = 1102003,lv = 100,bklv = 13,star = 3,mon = {id = 252,desc = "tw-x-44-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4304430,cardId = 1101011,lv = 100,bklv = 12,star = 3,mon = {id = 209,desc = "tw-x-44-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4304431,cardId = 1102017,lv = 100,bklv = 12,star = 3,mon = {id = 253,desc = "tw-x-44-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43045] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4304510,cardId = 1101009,lv = 100,bklv = 13,star = 3,mon = {id = 215,desc = "tw-x-45-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4304511,cardId = 1102014,lv = 100,bklv = 13,star = 3,mon = {id = 260,desc = "tw-x-45-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4304520,cardId = 1101007,lv = 100,bklv = 13,star = 3,mon = {id = 201,desc = "tw-x-45-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4304521,cardId = 1102003,lv = 100,bklv = 13,star = 3,mon = {id = 248,desc = "tw-x-45-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4304530,cardId = 1101011,lv = 100,bklv = 13,star = 3,mon = {id = 211,desc = "tw-x-45-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4304531,cardId = 1102017,lv = 100,bklv = 13,star = 3,mon = {id = 256,desc = "tw-x-45-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43046] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4304610,cardId = 1101009,lv = 101,bklv = 13,star = 4,mon = {id = 209,desc = "tw-x-46-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4304611,cardId = 1102014,lv = 101,bklv = 13,star = 4,mon = {id = 253,desc = "tw-x-46-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4304620,cardId = 1101007,lv = 101,bklv = 13,star = 4,mon = {id = 208,desc = "tw-x-46-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4304621,cardId = 1102003,lv = 101,bklv = 13,star = 4,mon = {id = 252,desc = "tw-x-46-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4304630,cardId = 1101011,lv = 101,bklv = 13,star = 4,mon = {id = 212,desc = "tw-x-46-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4304631,cardId = 1102017,lv = 101,bklv = 13,star = 4,mon = {id = 257,desc = "tw-x-46-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43047] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4304710,cardId = 1101009,lv = 102,bklv = 13,star = 4,mon = {id = 207,desc = "tw-x-47-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4304711,cardId = 1102014,lv = 102,bklv = 13,star = 4,mon = {id = 248,desc = "tw-x-47-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4304720,cardId = 1101007,lv = 102,bklv = 13,star = 4,mon = {id = 207,desc = "tw-x-47-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4304721,cardId = 1102003,lv = 102,bklv = 13,star = 4,mon = {id = 242,desc = "tw-x-47-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4304730,cardId = 1101011,lv = 102,bklv = 13,star = 4,mon = {id = 211,desc = "tw-x-47-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4304731,cardId = 1102017,lv = 102,bklv = 13,star = 4,mon = {id = 256,desc = "tw-x-47-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43048] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4304810,cardId = 1101009,lv = 103,bklv = 13,star = 4,mon = {id = 205,desc = "tw-x-48-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4304811,cardId = 1102014,lv = 103,bklv = 13,star = 4,mon = {id = 240,desc = "tw-x-48-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4304820,cardId = 1101007,lv = 103,bklv = 13,star = 4,mon = {id = 204,desc = "tw-x-48-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4304821,cardId = 1102003,lv = 103,bklv = 13,star = 4,mon = {id = 245,desc = "tw-x-48-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4304830,cardId = 1101011,lv = 103,bklv = 13,star = 4,mon = {id = 207,desc = "tw-x-48-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4304831,cardId = 1102017,lv = 103,bklv = 13,star = 4,mon = {id = 249,desc = "tw-x-48-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43049] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4304910,cardId = 1101009,lv = 104,bklv = 13,star = 4,mon = {id = 212,desc = "tw-x-49-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4304911,cardId = 1102014,lv = 104,bklv = 13,star = 4,mon = {id = 257,desc = "tw-x-49-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4304920,cardId = 1101007,lv = 104,bklv = 13,star = 4,mon = {id = 208,desc = "tw-x-49-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4304921,cardId = 1102003,lv = 104,bklv = 13,star = 4,mon = {id = 252,desc = "tw-x-49-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4304930,cardId = 1101011,lv = 104,bklv = 13,star = 4,mon = {id = 209,desc = "tw-x-49-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4304931,cardId = 1102017,lv = 104,bklv = 13,star = 4,mon = {id = 253,desc = "tw-x-49-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43050] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4305010,cardId = 1101009,lv = 105,bklv = 14,star = 4,mon = {id = 201,desc = "tw-x-50-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4305011,cardId = 1102014,lv = 105,bklv = 14,star = 4,mon = {id = 241,desc = "tw-x-50-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4305020,cardId = 1101007,lv = 105,bklv = 13,star = 4,mon = {id = 203,desc = "tw-x-50-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4305021,cardId = 1102003,lv = 105,bklv = 13,star = 4,mon = {id = 244,desc = "tw-x-50-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4305030,cardId = 1101011,lv = 105,bklv = 13,star = 4,mon = {id = 214,desc = "tw-x-50-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4305031,cardId = 1102017,lv = 105,bklv = 13,star = 4,mon = {id = 259,desc = "tw-x-50-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43051] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4305110,cardId = 1101007,lv = 105,bklv = 14,star = 4,mon = {id = 212,desc = "tw-x-51-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4305111,cardId = 1102012,lv = 105,bklv = 14,star = 4,mon = {id = 257,desc = "tw-x-51-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4305120,cardId = 1101005,lv = 105,bklv = 14,star = 4,mon = {id = 208,desc = "tw-x-51-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4305121,cardId = 1102011,lv = 105,bklv = 14,star = 4,mon = {id = 252,desc = "tw-x-51-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4305130,cardId = 1101010,lv = 105,bklv = 13,star = 4,mon = {id = 209,desc = "tw-x-51-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4305131,cardId = 1102016,lv = 105,bklv = 13,star = 4,mon = {id = 253,desc = "tw-x-51-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43052] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4305210,cardId = 1101007,lv = 105,bklv = 14,star = 4,mon = {id = 215,desc = "tw-x-52-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4305211,cardId = 1102012,lv = 105,bklv = 14,star = 4,mon = {id = 260,desc = "tw-x-52-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4305220,cardId = 1101005,lv = 105,bklv = 14,star = 4,mon = {id = 201,desc = "tw-x-52-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4305221,cardId = 1102011,lv = 105,bklv = 14,star = 4,mon = {id = 248,desc = "tw-x-52-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4305230,cardId = 1101010,lv = 105,bklv = 14,star = 4,mon = {id = 211,desc = "tw-x-52-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4305231,cardId = 1102016,lv = 105,bklv = 14,star = 4,mon = {id = 256,desc = "tw-x-52-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43053] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4305310,cardId = 1101007,lv = 106,bklv = 14,star = 4,mon = {id = 206,desc = "tw-x-53-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4305311,cardId = 1102012,lv = 106,bklv = 14,star = 4,mon = {id = 246,desc = "tw-x-53-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4305320,cardId = 1101005,lv = 106,bklv = 14,star = 4,mon = {id = 203,desc = "tw-x-53-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4305321,cardId = 1102011,lv = 106,bklv = 14,star = 4,mon = {id = 244,desc = "tw-x-53-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4305330,cardId = 1101010,lv = 106,bklv = 14,star = 4,mon = {id = 212,desc = "tw-x-53-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4305331,cardId = 1102016,lv = 106,bklv = 14,star = 4,mon = {id = 257,desc = "tw-x-53-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43054] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4305410,cardId = 1101007,lv = 107,bklv = 14,star = 4,mon = {id = 209,desc = "tw-x-54-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4305411,cardId = 1102012,lv = 107,bklv = 14,star = 4,mon = {id = 253,desc = "tw-x-54-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4305420,cardId = 1101005,lv = 107,bklv = 14,star = 4,mon = {id = 208,desc = "tw-x-54-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4305421,cardId = 1102011,lv = 107,bklv = 14,star = 4,mon = {id = 252,desc = "tw-x-54-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4305430,cardId = 1101010,lv = 107,bklv = 14,star = 4,mon = {id = 212,desc = "tw-x-54-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4305431,cardId = 1102016,lv = 107,bklv = 14,star = 4,mon = {id = 257,desc = "tw-x-54-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43055] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4305510,cardId = 1101007,lv = 108,bklv = 14,star = 4,mon = {id = 213,desc = "tw-x-55-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4305511,cardId = 1102012,lv = 108,bklv = 14,star = 4,mon = {id = 258,desc = "tw-x-55-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4305520,cardId = 1101005,lv = 108,bklv = 14,star = 4,mon = {id = 207,desc = "tw-x-55-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4305521,cardId = 1102011,lv = 108,bklv = 14,star = 4,mon = {id = 242,desc = "tw-x-55-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4305530,cardId = 1101010,lv = 108,bklv = 14,star = 4,mon = {id = 211,desc = "tw-x-55-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4305531,cardId = 1102016,lv = 108,bklv = 14,star = 4,mon = {id = 256,desc = "tw-x-55-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43056] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4305610,cardId = 1101007,lv = 108,bklv = 14,star = 4,mon = {id = 206,desc = "tw-x-56-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4305611,cardId = 1102012,lv = 108,bklv = 14,star = 4,mon = {id = 246,desc = "tw-x-56-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4305620,cardId = 1101005,lv = 108,bklv = 14,star = 4,mon = {id = 205,desc = "tw-x-56-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4305621,cardId = 1102011,lv = 108,bklv = 14,star = 4,mon = {id = 250,desc = "tw-x-56-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4305630,cardId = 1101010,lv = 108,bklv = 14,star = 4,mon = {id = 207,desc = "tw-x-56-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4305631,cardId = 1102016,lv = 108,bklv = 14,star = 4,mon = {id = 249,desc = "tw-x-56-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43057] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4305710,cardId = 1101007,lv = 109,bklv = 14,star = 4,mon = {id = 212,desc = "tw-x-57-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4305711,cardId = 1102012,lv = 109,bklv = 14,star = 4,mon = {id = 257,desc = "tw-x-57-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4305720,cardId = 1101005,lv = 109,bklv = 14,star = 4,mon = {id = 208,desc = "tw-x-57-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4305721,cardId = 1102011,lv = 109,bklv = 14,star = 4,mon = {id = 252,desc = "tw-x-57-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4305730,cardId = 1101010,lv = 109,bklv = 14,star = 4,mon = {id = 209,desc = "tw-x-57-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4305731,cardId = 1102016,lv = 109,bklv = 14,star = 4,mon = {id = 253,desc = "tw-x-57-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43058] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4305810,cardId = 1101007,lv = 110,bklv = 15,star = 4,mon = {id = 201,desc = "tw-x-58-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4305811,cardId = 1102012,lv = 110,bklv = 15,star = 4,mon = {id = 241,desc = "tw-x-58-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4305820,cardId = 1101005,lv = 110,bklv = 14,star = 4,mon = {id = 203,desc = "tw-x-58-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4305821,cardId = 1102011,lv = 110,bklv = 14,star = 4,mon = {id = 244,desc = "tw-x-58-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4305830,cardId = 1101010,lv = 110,bklv = 14,star = 4,mon = {id = 214,desc = "tw-x-58-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4305831,cardId = 1102016,lv = 110,bklv = 14,star = 4,mon = {id = 259,desc = "tw-x-58-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43059] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4305910,cardId = 1101007,lv = 110,bklv = 15,star = 4,mon = {id = 212,desc = "tw-x-59-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4305911,cardId = 1102012,lv = 110,bklv = 15,star = 4,mon = {id = 257,desc = "tw-x-59-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4305920,cardId = 1101005,lv = 110,bklv = 15,star = 4,mon = {id = 208,desc = "tw-x-59-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4305921,cardId = 1102011,lv = 110,bklv = 15,star = 4,mon = {id = 252,desc = "tw-x-59-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4305930,cardId = 1101010,lv = 110,bklv = 14,star = 4,mon = {id = 209,desc = "tw-x-59-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4305931,cardId = 1102016,lv = 110,bklv = 14,star = 4,mon = {id = 253,desc = "tw-x-59-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43060] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4306010,cardId = 1101007,lv = 110,bklv = 15,star = 4,mon = {id = 215,desc = "tw-x-60-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4306011,cardId = 1102012,lv = 110,bklv = 15,star = 4,mon = {id = 260,desc = "tw-x-60-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4306020,cardId = 1101005,lv = 110,bklv = 15,star = 4,mon = {id = 201,desc = "tw-x-60-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4306021,cardId = 1102011,lv = 110,bklv = 15,star = 4,mon = {id = 248,desc = "tw-x-60-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4306030,cardId = 1101010,lv = 110,bklv = 15,star = 4,mon = {id = 211,desc = "tw-x-60-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4306031,cardId = 1102016,lv = 110,bklv = 15,star = 4,mon = {id = 256,desc = "tw-x-60-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43061] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4306110,cardId = 1101007,lv = 111,bklv = 15,star = 4,mon = {id = 209,desc = "tw-x-61-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4306111,cardId = 1102012,lv = 111,bklv = 15,star = 4,mon = {id = 253,desc = "tw-x-61-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4306120,cardId = 1101005,lv = 111,bklv = 15,star = 4,mon = {id = 208,desc = "tw-x-61-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4306121,cardId = 1102011,lv = 111,bklv = 15,star = 4,mon = {id = 252,desc = "tw-x-61-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4306130,cardId = 1101010,lv = 111,bklv = 15,star = 4,mon = {id = 212,desc = "tw-x-61-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4306131,cardId = 1102016,lv = 111,bklv = 15,star = 4,mon = {id = 257,desc = "tw-x-61-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43062] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4306210,cardId = 1101007,lv = 112,bklv = 15,star = 4,mon = {id = 207,desc = "tw-x-62-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4306211,cardId = 1102012,lv = 112,bklv = 15,star = 4,mon = {id = 248,desc = "tw-x-62-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4306220,cardId = 1101005,lv = 112,bklv = 15,star = 4,mon = {id = 207,desc = "tw-x-62-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4306221,cardId = 1102011,lv = 112,bklv = 15,star = 4,mon = {id = 242,desc = "tw-x-62-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4306230,cardId = 1101010,lv = 112,bklv = 15,star = 4,mon = {id = 211,desc = "tw-x-62-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4306231,cardId = 1102016,lv = 112,bklv = 15,star = 4,mon = {id = 256,desc = "tw-x-62-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43063] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4306310,cardId = 1101007,lv = 112,bklv = 15,star = 4,mon = {id = 205,desc = "tw-x-63-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4306311,cardId = 1102012,lv = 112,bklv = 15,star = 4,mon = {id = 240,desc = "tw-x-63-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4306320,cardId = 1101005,lv = 112,bklv = 15,star = 4,mon = {id = 204,desc = "tw-x-63-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4306321,cardId = 1102011,lv = 112,bklv = 15,star = 4,mon = {id = 245,desc = "tw-x-63-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4306330,cardId = 1101010,lv = 112,bklv = 15,star = 4,mon = {id = 207,desc = "tw-x-63-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4306331,cardId = 1102016,lv = 112,bklv = 15,star = 4,mon = {id = 249,desc = "tw-x-63-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43064] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4306410,cardId = 1101007,lv = 113,bklv = 15,star = 4,mon = {id = 212,desc = "tw-x-64-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4306411,cardId = 1102012,lv = 113,bklv = 15,star = 4,mon = {id = 257,desc = "tw-x-64-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4306420,cardId = 1101005,lv = 113,bklv = 15,star = 4,mon = {id = 208,desc = "tw-x-64-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4306421,cardId = 1102011,lv = 113,bklv = 15,star = 4,mon = {id = 252,desc = "tw-x-64-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4306430,cardId = 1101010,lv = 113,bklv = 15,star = 4,mon = {id = 213,desc = "tw-x-64-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4306431,cardId = 1102016,lv = 113,bklv = 15,star = 4,mon = {id = 258,desc = "tw-x-64-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43065] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4306510,cardId = 1101007,lv = 113,bklv = 15,star = 4,mon = {id = 201,desc = "tw-x-65-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4306511,cardId = 1102012,lv = 113,bklv = 15,star = 4,mon = {id = 241,desc = "tw-x-65-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4306520,cardId = 1101005,lv = 113,bklv = 15,star = 4,mon = {id = 203,desc = "tw-x-65-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4306521,cardId = 1102011,lv = 113,bklv = 15,star = 4,mon = {id = 244,desc = "tw-x-65-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4306530,cardId = 1101010,lv = 113,bklv = 15,star = 4,mon = {id = 214,desc = "tw-x-65-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4306531,cardId = 1102016,lv = 113,bklv = 15,star = 4,mon = {id = 259,desc = "tw-x-65-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43066] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4306610,cardId = 1101007,lv = 114,bklv = 15,star = 4,mon = {id = 212,desc = "tw-x-66-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4306611,cardId = 1102012,lv = 114,bklv = 15,star = 4,mon = {id = 257,desc = "tw-x-66-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4306620,cardId = 1101005,lv = 114,bklv = 15,star = 4,mon = {id = 208,desc = "tw-x-66-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4306621,cardId = 1102011,lv = 114,bklv = 15,star = 4,mon = {id = 252,desc = "tw-x-66-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4306630,cardId = 1101010,lv = 114,bklv = 15,star = 4,mon = {id = 209,desc = "tw-x-66-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4306631,cardId = 1102016,lv = 114,bklv = 15,star = 4,mon = {id = 253,desc = "tw-x-66-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43067] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4306710,cardId = 1101007,lv = 114,bklv = 15,star = 4,mon = {id = 215,desc = "tw-x-67-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4306711,cardId = 1102012,lv = 114,bklv = 15,star = 4,mon = {id = 260,desc = "tw-x-67-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4306720,cardId = 1101005,lv = 114,bklv = 15,star = 4,mon = {id = 201,desc = "tw-x-67-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4306721,cardId = 1102011,lv = 114,bklv = 15,star = 4,mon = {id = 248,desc = "tw-x-67-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4306730,cardId = 1101010,lv = 114,bklv = 15,star = 4,mon = {id = 211,desc = "tw-x-67-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4306731,cardId = 1102016,lv = 114,bklv = 15,star = 4,mon = {id = 256,desc = "tw-x-67-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43068] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4306810,cardId = 1101007,lv = 115,bklv = 16,star = 4,mon = {id = 206,desc = "tw-x-68-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4306811,cardId = 1102012,lv = 115,bklv = 16,star = 4,mon = {id = 246,desc = "tw-x-68-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4306820,cardId = 1101005,lv = 115,bklv = 15,star = 4,mon = {id = 203,desc = "tw-x-68-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4306821,cardId = 1102011,lv = 115,bklv = 15,star = 4,mon = {id = 244,desc = "tw-x-68-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4306830,cardId = 1101010,lv = 115,bklv = 15,star = 4,mon = {id = 212,desc = "tw-x-68-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4306831,cardId = 1102016,lv = 115,bklv = 15,star = 4,mon = {id = 257,desc = "tw-x-68-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43069] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4306910,cardId = 1101007,lv = 115,bklv = 16,star = 4,mon = {id = 209,desc = "tw-x-69-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4306911,cardId = 1102012,lv = 115,bklv = 16,star = 4,mon = {id = 253,desc = "tw-x-69-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4306920,cardId = 1101005,lv = 115,bklv = 16,star = 4,mon = {id = 208,desc = "tw-x-69-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4306921,cardId = 1102011,lv = 115,bklv = 16,star = 4,mon = {id = 252,desc = "tw-x-69-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4306930,cardId = 1101010,lv = 115,bklv = 15,star = 4,mon = {id = 212,desc = "tw-x-69-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4306931,cardId = 1102016,lv = 115,bklv = 15,star = 4,mon = {id = 257,desc = "tw-x-69-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43070] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4307010,cardId = 1101007,lv = 115,bklv = 16,star = 4,mon = {id = 207,desc = "tw-x-70-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4307011,cardId = 1102012,lv = 115,bklv = 16,star = 4,mon = {id = 248,desc = "tw-x-70-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4307020,cardId = 1101005,lv = 115,bklv = 16,star = 4,mon = {id = 207,desc = "tw-x-70-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4307021,cardId = 1102011,lv = 115,bklv = 16,star = 4,mon = {id = 242,desc = "tw-x-70-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4307030,cardId = 1101010,lv = 115,bklv = 16,star = 4,mon = {id = 211,desc = "tw-x-70-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4307031,cardId = 1102016,lv = 115,bklv = 16,star = 4,mon = {id = 256,desc = "tw-x-70-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43071] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4307110,cardId = 1101007,lv = 116,bklv = 16,star = 4,mon = {id = 207,desc = "tw-x-71-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4307111,cardId = 1102012,lv = 116,bklv = 16,star = 4,mon = {id = 251,desc = "tw-x-71-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4307120,cardId = 1101005,lv = 116,bklv = 16,star = 4,mon = {id = 205,desc = "tw-x-71-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4307121,cardId = 1102011,lv = 116,bklv = 16,star = 4,mon = {id = 250,desc = "tw-x-71-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4307130,cardId = 1101010,lv = 116,bklv = 16,star = 4,mon = {id = 210,desc = "tw-x-71-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4307131,cardId = 1102016,lv = 116,bklv = 16,star = 4,mon = {id = 255,desc = "tw-x-71-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43072] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4307210,cardId = 1101007,lv = 117,bklv = 16,star = 4,mon = {id = 212,desc = "tw-x-72-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4307211,cardId = 1102012,lv = 117,bklv = 16,star = 4,mon = {id = 257,desc = "tw-x-72-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4307220,cardId = 1101005,lv = 117,bklv = 16,star = 4,mon = {id = 208,desc = "tw-x-72-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4307221,cardId = 1102011,lv = 117,bklv = 16,star = 4,mon = {id = 252,desc = "tw-x-72-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4307230,cardId = 1101010,lv = 117,bklv = 16,star = 4,mon = {id = 209,desc = "tw-x-72-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4307231,cardId = 1102016,lv = 117,bklv = 16,star = 4,mon = {id = 253,desc = "tw-x-72-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43073] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4307310,cardId = 1101007,lv = 117,bklv = 16,star = 4,mon = {id = 201,desc = "tw-x-73-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4307311,cardId = 1102012,lv = 117,bklv = 16,star = 4,mon = {id = 241,desc = "tw-x-73-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4307320,cardId = 1101005,lv = 117,bklv = 16,star = 4,mon = {id = 203,desc = "tw-x-73-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4307321,cardId = 1102011,lv = 117,bklv = 16,star = 4,mon = {id = 244,desc = "tw-x-73-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4307330,cardId = 1101010,lv = 117,bklv = 16,star = 4,mon = {id = 214,desc = "tw-x-73-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4307331,cardId = 1102016,lv = 117,bklv = 16,star = 4,mon = {id = 259,desc = "tw-x-73-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43074] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4307410,cardId = 1101007,lv = 118,bklv = 16,star = 4,mon = {id = 212,desc = "tw-x-74-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4307411,cardId = 1102012,lv = 118,bklv = 16,star = 4,mon = {id = 257,desc = "tw-x-74-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4307420,cardId = 1101005,lv = 118,bklv = 16,star = 4,mon = {id = 208,desc = "tw-x-74-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4307421,cardId = 1102011,lv = 118,bklv = 16,star = 4,mon = {id = 252,desc = "tw-x-74-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4307430,cardId = 1101010,lv = 118,bklv = 16,star = 4,mon = {id = 209,desc = "tw-x-74-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4307431,cardId = 1102016,lv = 118,bklv = 16,star = 4,mon = {id = 253,desc = "tw-x-74-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43075] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4307510,cardId = 1101007,lv = 118,bklv = 16,star = 4,mon = {id = 215,desc = "tw-x-75-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4307511,cardId = 1102012,lv = 118,bklv = 16,star = 4,mon = {id = 260,desc = "tw-x-75-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4307520,cardId = 1101005,lv = 118,bklv = 16,star = 4,mon = {id = 201,desc = "tw-x-75-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4307521,cardId = 1102011,lv = 118,bklv = 16,star = 4,mon = {id = 248,desc = "tw-x-75-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4307530,cardId = 1101010,lv = 118,bklv = 16,star = 4,mon = {id = 211,desc = "tw-x-75-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4307531,cardId = 1102016,lv = 118,bklv = 16,star = 4,mon = {id = 256,desc = "tw-x-75-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43076] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4307610,cardId = 1101007,lv = 119,bklv = 16,star = 4,mon = {id = 209,desc = "tw-x-76-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4307611,cardId = 1102012,lv = 119,bklv = 16,star = 4,mon = {id = 253,desc = "tw-x-76-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4307620,cardId = 1101005,lv = 119,bklv = 16,star = 4,mon = {id = 208,desc = "tw-x-76-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4307621,cardId = 1102011,lv = 119,bklv = 16,star = 4,mon = {id = 252,desc = "tw-x-76-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4307630,cardId = 1101010,lv = 119,bklv = 16,star = 4,mon = {id = 212,desc = "tw-x-76-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4307631,cardId = 1102016,lv = 119,bklv = 16,star = 4,mon = {id = 257,desc = "tw-x-76-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43077] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4307710,cardId = 1101007,lv = 119,bklv = 16,star = 4,mon = {id = 207,desc = "tw-x-77-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4307711,cardId = 1102012,lv = 119,bklv = 16,star = 4,mon = {id = 248,desc = "tw-x-77-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4307720,cardId = 1101005,lv = 119,bklv = 16,star = 4,mon = {id = 207,desc = "tw-x-77-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4307721,cardId = 1102011,lv = 119,bklv = 16,star = 4,mon = {id = 242,desc = "tw-x-77-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4307730,cardId = 1101010,lv = 119,bklv = 16,star = 4,mon = {id = 211,desc = "tw-x-77-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4307731,cardId = 1102016,lv = 119,bklv = 16,star = 4,mon = {id = 256,desc = "tw-x-77-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43078] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4307810,cardId = 1101007,lv = 120,bklv = 17,star = 4,mon = {id = 205,desc = "tw-x-78-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4307811,cardId = 1102012,lv = 120,bklv = 17,star = 4,mon = {id = 240,desc = "tw-x-78-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4307820,cardId = 1101005,lv = 120,bklv = 16,star = 4,mon = {id = 204,desc = "tw-x-78-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4307821,cardId = 1102011,lv = 120,bklv = 16,star = 4,mon = {id = 245,desc = "tw-x-78-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4307830,cardId = 1101010,lv = 120,bklv = 16,star = 4,mon = {id = 207,desc = "tw-x-78-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4307831,cardId = 1102016,lv = 120,bklv = 16,star = 4,mon = {id = 249,desc = "tw-x-78-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43079] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4307910,cardId = 1101007,lv = 120,bklv = 17,star = 4,mon = {id = 201,desc = "tw-x-79-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4307911,cardId = 1102012,lv = 120,bklv = 17,star = 4,mon = {id = 241,desc = "tw-x-79-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4307920,cardId = 1101005,lv = 120,bklv = 17,star = 4,mon = {id = 203,desc = "tw-x-79-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4307921,cardId = 1102011,lv = 120,bklv = 17,star = 4,mon = {id = 244,desc = "tw-x-79-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4307930,cardId = 1101010,lv = 120,bklv = 16,star = 4,mon = {id = 214,desc = "tw-x-79-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4307931,cardId = 1102016,lv = 120,bklv = 16,star = 4,mon = {id = 259,desc = "tw-x-79-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43080] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4308010,cardId = 1101007,lv = 120,bklv = 17,star = 5,mon = {id = 212,desc = "tw-x-80-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4308011,cardId = 1102012,lv = 120,bklv = 17,star = 5,mon = {id = 257,desc = "tw-x-80-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4308020,cardId = 1101005,lv = 120,bklv = 17,star = 5,mon = {id = 208,desc = "tw-x-80-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4308021,cardId = 1102011,lv = 120,bklv = 17,star = 5,mon = {id = 252,desc = "tw-x-80-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4308030,cardId = 1101010,lv = 120,bklv = 17,star = 5,mon = {id = 209,desc = "tw-x-80-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4308031,cardId = 1102016,lv = 120,bklv = 17,star = 5,mon = {id = 253,desc = "tw-x-80-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43081] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4308110,cardId = 1101007,lv = 121,bklv = 17,star = 5,mon = {id = 215,desc = "tw-x-81-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4308111,cardId = 1102012,lv = 121,bklv = 17,star = 5,mon = {id = 260,desc = "tw-x-81-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4308120,cardId = 1101005,lv = 121,bklv = 17,star = 5,mon = {id = 201,desc = "tw-x-81-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4308121,cardId = 1102011,lv = 121,bklv = 17,star = 5,mon = {id = 248,desc = "tw-x-81-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4308130,cardId = 1101010,lv = 121,bklv = 17,star = 5,mon = {id = 211,desc = "tw-x-81-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4308131,cardId = 1102016,lv = 121,bklv = 17,star = 5,mon = {id = 256,desc = "tw-x-81-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43082] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4308210,cardId = 1101007,lv = 122,bklv = 17,star = 5,mon = {id = 206,desc = "tw-x-82-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4308211,cardId = 1102012,lv = 122,bklv = 17,star = 5,mon = {id = 246,desc = "tw-x-82-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4308220,cardId = 1101005,lv = 122,bklv = 17,star = 5,mon = {id = 203,desc = "tw-x-82-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4308221,cardId = 1102011,lv = 122,bklv = 17,star = 5,mon = {id = 244,desc = "tw-x-82-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4308230,cardId = 1101010,lv = 122,bklv = 17,star = 5,mon = {id = 212,desc = "tw-x-82-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4308231,cardId = 1102016,lv = 122,bklv = 17,star = 5,mon = {id = 257,desc = "tw-x-82-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43083] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4308310,cardId = 1101007,lv = 123,bklv = 17,star = 5,mon = {id = 209,desc = "tw-x-83-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4308311,cardId = 1102012,lv = 123,bklv = 17,star = 5,mon = {id = 253,desc = "tw-x-83-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4308320,cardId = 1101005,lv = 123,bklv = 17,star = 5,mon = {id = 208,desc = "tw-x-83-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4308321,cardId = 1102011,lv = 123,bklv = 17,star = 5,mon = {id = 252,desc = "tw-x-83-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4308330,cardId = 1101010,lv = 123,bklv = 17,star = 5,mon = {id = 212,desc = "tw-x-83-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4308331,cardId = 1102016,lv = 123,bklv = 17,star = 5,mon = {id = 257,desc = "tw-x-83-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43084] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4308410,cardId = 1101007,lv = 125,bklv = 17,star = 5,mon = {id = 213,desc = "tw-x-84-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4308411,cardId = 1102012,lv = 125,bklv = 17,star = 5,mon = {id = 258,desc = "tw-x-84-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4308420,cardId = 1101005,lv = 125,bklv = 18,star = 5,mon = {id = 207,desc = "tw-x-84-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4308421,cardId = 1102011,lv = 125,bklv = 18,star = 5,mon = {id = 242,desc = "tw-x-84-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4308430,cardId = 1101010,lv = 125,bklv = 17,star = 5,mon = {id = 211,desc = "tw-x-84-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4308431,cardId = 1102016,lv = 125,bklv = 17,star = 5,mon = {id = 256,desc = "tw-x-84-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43085] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4308510,cardId = 1101007,lv = 125,bklv = 18,star = 5,mon = {id = 206,desc = "tw-x-85-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4308511,cardId = 1102012,lv = 125,bklv = 18,star = 5,mon = {id = 246,desc = "tw-x-85-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4308520,cardId = 1101005,lv = 125,bklv = 18,star = 5,mon = {id = 205,desc = "tw-x-85-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4308521,cardId = 1102011,lv = 125,bklv = 18,star = 5,mon = {id = 250,desc = "tw-x-85-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4308530,cardId = 1101010,lv = 125,bklv = 18,star = 5,mon = {id = 207,desc = "tw-x-85-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4308531,cardId = 1102016,lv = 125,bklv = 18,star = 5,mon = {id = 249,desc = "tw-x-85-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43086] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4308610,cardId = 1101007,lv = 126,bklv = 18,star = 5,mon = {id = 212,desc = "tw-x-86-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4308611,cardId = 1102012,lv = 126,bklv = 18,star = 5,mon = {id = 257,desc = "tw-x-86-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4308620,cardId = 1101005,lv = 126,bklv = 18,star = 5,mon = {id = 208,desc = "tw-x-86-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4308621,cardId = 1102011,lv = 126,bklv = 18,star = 5,mon = {id = 252,desc = "tw-x-86-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4308630,cardId = 1101010,lv = 126,bklv = 18,star = 5,mon = {id = 209,desc = "tw-x-86-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4308631,cardId = 1102016,lv = 126,bklv = 18,star = 5,mon = {id = 253,desc = "tw-x-86-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43087] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4308710,cardId = 1101007,lv = 127,bklv = 18,star = 5,mon = {id = 201,desc = "tw-x-87-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4308711,cardId = 1102012,lv = 127,bklv = 18,star = 5,mon = {id = 241,desc = "tw-x-87-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4308720,cardId = 1101005,lv = 127,bklv = 18,star = 5,mon = {id = 203,desc = "tw-x-87-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4308721,cardId = 1102011,lv = 127,bklv = 18,star = 5,mon = {id = 244,desc = "tw-x-87-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4308730,cardId = 1101010,lv = 127,bklv = 18,star = 5,mon = {id = 214,desc = "tw-x-87-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4308731,cardId = 1102016,lv = 127,bklv = 18,star = 5,mon = {id = 259,desc = "tw-x-87-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43088] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4308810,cardId = 1101007,lv = 128,bklv = 18,star = 5,mon = {id = 212,desc = "tw-x-88-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4308811,cardId = 1102012,lv = 128,bklv = 18,star = 5,mon = {id = 257,desc = "tw-x-88-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4308820,cardId = 1101005,lv = 128,bklv = 18,star = 5,mon = {id = 208,desc = "tw-x-88-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4308821,cardId = 1102011,lv = 128,bklv = 18,star = 5,mon = {id = 252,desc = "tw-x-88-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4308830,cardId = 1101010,lv = 128,bklv = 18,star = 5,mon = {id = 209,desc = "tw-x-88-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4308831,cardId = 1102016,lv = 128,bklv = 18,star = 5,mon = {id = 253,desc = "tw-x-88-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43089] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4308910,cardId = 1101007,lv = 130,bklv = 19,star = 5,mon = {id = 215,desc = "tw-x-89-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4308911,cardId = 1102012,lv = 130,bklv = 19,star = 5,mon = {id = 260,desc = "tw-x-89-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4308920,cardId = 1101005,lv = 130,bklv = 18,star = 5,mon = {id = 201,desc = "tw-x-89-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4308921,cardId = 1102011,lv = 130,bklv = 18,star = 5,mon = {id = 248,desc = "tw-x-89-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4308930,cardId = 1101010,lv = 130,bklv = 18,star = 5,mon = {id = 211,desc = "tw-x-89-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4308931,cardId = 1102016,lv = 130,bklv = 18,star = 5,mon = {id = 256,desc = "tw-x-89-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43090] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4309010,cardId = 1101007,lv = 130,bklv = 19,star = 5,mon = {id = 209,desc = "tw-x-90-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4309011,cardId = 1102012,lv = 130,bklv = 19,star = 5,mon = {id = 253,desc = "tw-x-90-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4309020,cardId = 1101005,lv = 130,bklv = 19,star = 5,mon = {id = 208,desc = "tw-x-90-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4309021,cardId = 1102011,lv = 130,bklv = 19,star = 5,mon = {id = 252,desc = "tw-x-90-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4309030,cardId = 1101010,lv = 130,bklv = 18,star = 5,mon = {id = 212,desc = "tw-x-90-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4309031,cardId = 1102016,lv = 130,bklv = 18,star = 5,mon = {id = 257,desc = "tw-x-90-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43091] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4309110,cardId = 1101007,lv = 130,bklv = 19,star = 5,mon = {id = 207,desc = "tw-x-91-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4309111,cardId = 1102012,lv = 130,bklv = 19,star = 5,mon = {id = 248,desc = "tw-x-91-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4309120,cardId = 1101005,lv = 130,bklv = 19,star = 5,mon = {id = 207,desc = "tw-x-91-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4309121,cardId = 1102011,lv = 130,bklv = 19,star = 5,mon = {id = 242,desc = "tw-x-91-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4309130,cardId = 1101010,lv = 130,bklv = 19,star = 5,mon = {id = 211,desc = "tw-x-91-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4309131,cardId = 1102016,lv = 130,bklv = 19,star = 5,mon = {id = 256,desc = "tw-x-91-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43092] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4309210,cardId = 1101007,lv = 131,bklv = 19,star = 5,mon = {id = 205,desc = "tw-x-92-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4309211,cardId = 1102012,lv = 131,bklv = 19,star = 5,mon = {id = 240,desc = "tw-x-92-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4309220,cardId = 1101005,lv = 131,bklv = 19,star = 5,mon = {id = 204,desc = "tw-x-92-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4309221,cardId = 1102011,lv = 131,bklv = 19,star = 5,mon = {id = 245,desc = "tw-x-92-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4309230,cardId = 1101010,lv = 131,bklv = 19,star = 5,mon = {id = 207,desc = "tw-x-92-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4309231,cardId = 1102016,lv = 131,bklv = 19,star = 5,mon = {id = 249,desc = "tw-x-92-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43093] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4309310,cardId = 1101007,lv = 132,bklv = 19,star = 5,mon = {id = 212,desc = "tw-x-93-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4309311,cardId = 1102012,lv = 132,bklv = 19,star = 5,mon = {id = 257,desc = "tw-x-93-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4309320,cardId = 1101005,lv = 132,bklv = 19,star = 5,mon = {id = 208,desc = "tw-x-93-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4309321,cardId = 1102011,lv = 132,bklv = 19,star = 5,mon = {id = 252,desc = "tw-x-93-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4309330,cardId = 1101010,lv = 132,bklv = 19,star = 5,mon = {id = 213,desc = "tw-x-93-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4309331,cardId = 1102016,lv = 132,bklv = 19,star = 5,mon = {id = 258,desc = "tw-x-93-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43094] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4309410,cardId = 1101007,lv = 133,bklv = 19,star = 5,mon = {id = 201,desc = "tw-x-94-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4309411,cardId = 1102012,lv = 133,bklv = 19,star = 5,mon = {id = 241,desc = "tw-x-94-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4309420,cardId = 1101005,lv = 133,bklv = 19,star = 5,mon = {id = 203,desc = "tw-x-94-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4309421,cardId = 1102011,lv = 133,bklv = 19,star = 5,mon = {id = 244,desc = "tw-x-94-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4309430,cardId = 1101010,lv = 133,bklv = 19,star = 5,mon = {id = 214,desc = "tw-x-94-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4309431,cardId = 1102016,lv = 133,bklv = 19,star = 5,mon = {id = 259,desc = "tw-x-94-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43095] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4309510,cardId = 1101007,lv = 134,bklv = 19,star = 5,mon = {id = 212,desc = "tw-x-95-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4309511,cardId = 1102012,lv = 134,bklv = 19,star = 5,mon = {id = 257,desc = "tw-x-95-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4309520,cardId = 1101005,lv = 134,bklv = 19,star = 5,mon = {id = 208,desc = "tw-x-95-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4309521,cardId = 1102011,lv = 134,bklv = 19,star = 5,mon = {id = 252,desc = "tw-x-95-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4309530,cardId = 1101010,lv = 134,bklv = 19,star = 5,mon = {id = 209,desc = "tw-x-95-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4309531,cardId = 1102016,lv = 134,bklv = 19,star = 5,mon = {id = 253,desc = "tw-x-95-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43096] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4309610,cardId = 1101007,lv = 135,bklv = 19,star = 5,mon = {id = 215,desc = "tw-x-96-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4309611,cardId = 1102012,lv = 135,bklv = 19,star = 5,mon = {id = 260,desc = "tw-x-96-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4309620,cardId = 1101005,lv = 135,bklv = 20,star = 5,mon = {id = 201,desc = "tw-x-96-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4309621,cardId = 1102011,lv = 135,bklv = 20,star = 5,mon = {id = 248,desc = "tw-x-96-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4309630,cardId = 1101010,lv = 135,bklv = 19,star = 5,mon = {id = 211,desc = "tw-x-96-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4309631,cardId = 1102016,lv = 135,bklv = 19,star = 5,mon = {id = 256,desc = "tw-x-96-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43097] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4309710,cardId = 1101007,lv = 135,bklv = 20,star = 5,mon = {id = 206,desc = "tw-x-97-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4309711,cardId = 1102012,lv = 135,bklv = 20,star = 5,mon = {id = 246,desc = "tw-x-97-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4309720,cardId = 1101005,lv = 135,bklv = 20,star = 5,mon = {id = 203,desc = "tw-x-97-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4309721,cardId = 1102011,lv = 135,bklv = 20,star = 5,mon = {id = 244,desc = "tw-x-97-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4309730,cardId = 1101010,lv = 135,bklv = 20,star = 5,mon = {id = 212,desc = "tw-x-97-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4309731,cardId = 1102016,lv = 135,bklv = 20,star = 5,mon = {id = 257,desc = "tw-x-97-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43098] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4309810,cardId = 1101007,lv = 137,bklv = 20,star = 5,mon = {id = 209,desc = "tw-x-98-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4309811,cardId = 1102012,lv = 137,bklv = 20,star = 5,mon = {id = 253,desc = "tw-x-98-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4309820,cardId = 1101005,lv = 137,bklv = 20,star = 5,mon = {id = 208,desc = "tw-x-98-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4309821,cardId = 1102011,lv = 137,bklv = 20,star = 5,mon = {id = 252,desc = "tw-x-98-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4309830,cardId = 1101010,lv = 137,bklv = 20,star = 5,mon = {id = 212,desc = "tw-x-98-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4309831,cardId = 1102016,lv = 137,bklv = 20,star = 5,mon = {id = 257,desc = "tw-x-98-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43099] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4309910,cardId = 1101007,lv = 138,bklv = 20,star = 5,mon = {id = 207,desc = "tw-x-99-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4309911,cardId = 1102012,lv = 138,bklv = 20,star = 5,mon = {id = 248,desc = "tw-x-99-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4309920,cardId = 1101005,lv = 138,bklv = 20,star = 5,mon = {id = 207,desc = "tw-x-99-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4309921,cardId = 1102011,lv = 138,bklv = 20,star = 5,mon = {id = 242,desc = "tw-x-99-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4309930,cardId = 1101010,lv = 138,bklv = 20,star = 5,mon = {id = 211,desc = "tw-x-99-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4309931,cardId = 1102016,lv = 138,bklv = 20,star = 5,mon = {id = 256,desc = "tw-x-99-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[43100] = {
		[1] = {
			jlr = {cha = "tw-x",id = 4310010,cardId = 1101007,lv = 140,bklv = 21,star = 5,mon = {id = 207,desc = "tw-x-100-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4310011,cardId = 1102012,lv = 140,bklv = 21,star = 5,mon = {id = 251,desc = "tw-x-100-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-x",id = 4310020,cardId = 1101005,lv = 140,bklv = 21,star = 5,mon = {id = 205,desc = "tw-x-100-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4310021,cardId = 1102011,lv = 140,bklv = 21,star = 5,mon = {id = 250,desc = "tw-x-100-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-x",id = 4310030,cardId = 1101010,lv = 140,bklv = 21,star = 5,mon = {id = 210,desc = "tw-x-100-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-x",id = 4310031,cardId = 1102016,lv = 140,bklv = 21,star = 5,mon = {id = 255,desc = "tw-x-100-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44001] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4400110,cardId = 1101001,lv = 40,bklv = 5,star = 2,mon = {id = 212,desc = "tw-y-1-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4400111,cardId = 1102015,lv = 40,bklv = 5,star = 2,mon = {id = 257,desc = "tw-y-1-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4400120,cardId = 1101002,lv = 40,bklv = 5,star = 2,mon = {id = 208,desc = "tw-y-1-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4400121,cardId = 1102004,lv = 40,bklv = 5,star = 2,mon = {id = 252,desc = "tw-y-1-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4400130,cardId = 1101003,lv = 40,bklv = 5,star = 2,mon = {id = 209,desc = "tw-y-1-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4400131,cardId = 1102005,lv = 40,bklv = 5,star = 2,mon = {id = 253,desc = "tw-y-1-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44002] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4400210,cardId = 1101001,lv = 45,bklv = 5,star = 2,mon = {id = 201,desc = "tw-y-2-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4400211,cardId = 1102015,lv = 45,bklv = 5,star = 2,mon = {id = 241,desc = "tw-y-2-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4400220,cardId = 1101002,lv = 45,bklv = 5,star = 2,mon = {id = 203,desc = "tw-y-2-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4400221,cardId = 1102004,lv = 45,bklv = 5,star = 2,mon = {id = 244,desc = "tw-y-2-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4400230,cardId = 1101003,lv = 45,bklv = 5,star = 2,mon = {id = 214,desc = "tw-y-2-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4400231,cardId = 1102005,lv = 45,bklv = 5,star = 2,mon = {id = 259,desc = "tw-y-2-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44003] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4400310,cardId = 1101001,lv = 48,bklv = 5,star = 2,mon = {id = 212,desc = "tw-y-3-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4400311,cardId = 1102015,lv = 48,bklv = 5,star = 2,mon = {id = 257,desc = "tw-y-3-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4400320,cardId = 1101002,lv = 48,bklv = 5,star = 2,mon = {id = 208,desc = "tw-y-3-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4400321,cardId = 1102004,lv = 48,bklv = 5,star = 2,mon = {id = 252,desc = "tw-y-3-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4400330,cardId = 1101003,lv = 48,bklv = 5,star = 2,mon = {id = 209,desc = "tw-y-3-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4400331,cardId = 1102005,lv = 48,bklv = 5,star = 2,mon = {id = 253,desc = "tw-y-3-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44004] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4400410,cardId = 1101001,lv = 50,bklv = 6,star = 2,mon = {id = 215,desc = "tw-y-4-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4400411,cardId = 1102015,lv = 50,bklv = 6,star = 2,mon = {id = 260,desc = "tw-y-4-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4400420,cardId = 1101002,lv = 50,bklv = 5,star = 2,mon = {id = 201,desc = "tw-y-4-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4400421,cardId = 1102004,lv = 50,bklv = 5,star = 2,mon = {id = 248,desc = "tw-y-4-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4400430,cardId = 1101003,lv = 50,bklv = 5,star = 2,mon = {id = 211,desc = "tw-y-4-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4400431,cardId = 1102005,lv = 50,bklv = 5,star = 2,mon = {id = 256,desc = "tw-y-4-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44005] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4400510,cardId = 1101001,lv = 50,bklv = 6,star = 2,mon = {id = 206,desc = "tw-y-5-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4400511,cardId = 1102015,lv = 50,bklv = 6,star = 2,mon = {id = 246,desc = "tw-y-5-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4400520,cardId = 1101002,lv = 50,bklv = 6,star = 2,mon = {id = 203,desc = "tw-y-5-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4400521,cardId = 1102004,lv = 50,bklv = 6,star = 2,mon = {id = 244,desc = "tw-y-5-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4400530,cardId = 1101003,lv = 50,bklv = 6,star = 2,mon = {id = 212,desc = "tw-y-5-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4400531,cardId = 1102005,lv = 50,bklv = 6,star = 2,mon = {id = 257,desc = "tw-y-5-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44006] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4400610,cardId = 1101001,lv = 52,bklv = 6,star = 2,mon = {id = 209,desc = "tw-y-6-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4400611,cardId = 1102015,lv = 52,bklv = 6,star = 2,mon = {id = 253,desc = "tw-y-6-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4400620,cardId = 1101002,lv = 52,bklv = 6,star = 2,mon = {id = 208,desc = "tw-y-6-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4400621,cardId = 1102004,lv = 52,bklv = 6,star = 2,mon = {id = 252,desc = "tw-y-6-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4400630,cardId = 1101003,lv = 52,bklv = 6,star = 2,mon = {id = 212,desc = "tw-y-6-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4400631,cardId = 1102005,lv = 52,bklv = 6,star = 2,mon = {id = 257,desc = "tw-y-6-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44007] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4400710,cardId = 1101001,lv = 55,bklv = 6,star = 2,mon = {id = 213,desc = "tw-y-7-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4400711,cardId = 1102015,lv = 55,bklv = 6,star = 2,mon = {id = 258,desc = "tw-y-7-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4400720,cardId = 1101002,lv = 55,bklv = 6,star = 2,mon = {id = 207,desc = "tw-y-7-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4400721,cardId = 1102004,lv = 55,bklv = 6,star = 2,mon = {id = 242,desc = "tw-y-7-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4400730,cardId = 1101003,lv = 55,bklv = 6,star = 2,mon = {id = 211,desc = "tw-y-7-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4400731,cardId = 1102005,lv = 55,bklv = 6,star = 2,mon = {id = 256,desc = "tw-y-7-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44008] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4400810,cardId = 1101001,lv = 58,bklv = 6,star = 2,mon = {id = 209,desc = "tw-y-8-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4400811,cardId = 1102002,lv = 58,bklv = 6,star = 2,mon = {id = 253,desc = "tw-y-8-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4400820,cardId = 1101012,lv = 58,bklv = 6,star = 2,mon = {id = 208,desc = "tw-y-8-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4400821,cardId = 1102018,lv = 58,bklv = 6,star = 2,mon = {id = 252,desc = "tw-y-8-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4400830,cardId = 1101003,lv = 58,bklv = 6,star = 2,mon = {id = 212,desc = "tw-y-8-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4400831,cardId = 1102005,lv = 58,bklv = 6,star = 2,mon = {id = 257,desc = "tw-y-8-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44009] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4400910,cardId = 1101001,lv = 60,bklv = 7,star = 2,mon = {id = 207,desc = "tw-y-9-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4400911,cardId = 1102002,lv = 60,bklv = 7,star = 2,mon = {id = 251,desc = "tw-y-9-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4400920,cardId = 1101012,lv = 60,bklv = 6,star = 2,mon = {id = 205,desc = "tw-y-9-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4400921,cardId = 1102018,lv = 60,bklv = 6,star = 2,mon = {id = 250,desc = "tw-y-9-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4400930,cardId = 1101003,lv = 60,bklv = 6,star = 2,mon = {id = 210,desc = "tw-y-9-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4400931,cardId = 1102005,lv = 60,bklv = 6,star = 2,mon = {id = 255,desc = "tw-y-9-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44010] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4401010,cardId = 1101001,lv = 60,bklv = 7,star = 2,mon = {id = 212,desc = "tw-y-10-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4401011,cardId = 1102002,lv = 60,bklv = 7,star = 2,mon = {id = 257,desc = "tw-y-10-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4401020,cardId = 1101012,lv = 60,bklv = 7,star = 2,mon = {id = 208,desc = "tw-y-10-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4401021,cardId = 1102018,lv = 60,bklv = 7,star = 2,mon = {id = 252,desc = "tw-y-10-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4401030,cardId = 1101003,lv = 60,bklv = 7,star = 2,mon = {id = 209,desc = "tw-y-10-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4401031,cardId = 1102005,lv = 60,bklv = 7,star = 2,mon = {id = 253,desc = "tw-y-10-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44011] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4401110,cardId = 1101001,lv = 62,bklv = 7,star = 2,mon = {id = 201,desc = "tw-y-11-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4401111,cardId = 1102002,lv = 62,bklv = 7,star = 2,mon = {id = 241,desc = "tw-y-11-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4401120,cardId = 1101012,lv = 62,bklv = 7,star = 2,mon = {id = 203,desc = "tw-y-11-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4401121,cardId = 1102018,lv = 62,bklv = 7,star = 2,mon = {id = 244,desc = "tw-y-11-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4401130,cardId = 1101003,lv = 62,bklv = 7,star = 2,mon = {id = 214,desc = "tw-y-11-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4401131,cardId = 1102005,lv = 62,bklv = 7,star = 2,mon = {id = 259,desc = "tw-y-11-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44012] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4401210,cardId = 1101001,lv = 65,bklv = 7,star = 2,mon = {id = 212,desc = "tw-y-12-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4401211,cardId = 1102002,lv = 65,bklv = 7,star = 2,mon = {id = 257,desc = "tw-y-12-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4401220,cardId = 1101012,lv = 65,bklv = 7,star = 2,mon = {id = 208,desc = "tw-y-12-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4401221,cardId = 1102018,lv = 65,bklv = 7,star = 2,mon = {id = 252,desc = "tw-y-12-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4401230,cardId = 1101003,lv = 65,bklv = 7,star = 2,mon = {id = 209,desc = "tw-y-12-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4401231,cardId = 1102005,lv = 65,bklv = 7,star = 2,mon = {id = 253,desc = "tw-y-12-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44013] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4401310,cardId = 1101001,lv = 68,bklv = 7,star = 2,mon = {id = 215,desc = "tw-y-13-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4401311,cardId = 1102002,lv = 68,bklv = 7,star = 2,mon = {id = 260,desc = "tw-y-13-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4401320,cardId = 1101012,lv = 68,bklv = 7,star = 2,mon = {id = 201,desc = "tw-y-13-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4401321,cardId = 1102018,lv = 68,bklv = 7,star = 2,mon = {id = 248,desc = "tw-y-13-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4401330,cardId = 1101003,lv = 68,bklv = 7,star = 2,mon = {id = 211,desc = "tw-y-13-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4401331,cardId = 1102005,lv = 68,bklv = 7,star = 2,mon = {id = 256,desc = "tw-y-13-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44014] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4401410,cardId = 1101001,lv = 70,bklv = 8,star = 2,mon = {id = 206,desc = "tw-y-14-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4401411,cardId = 1102002,lv = 70,bklv = 8,star = 2,mon = {id = 246,desc = "tw-y-14-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4401420,cardId = 1101012,lv = 70,bklv = 7,star = 2,mon = {id = 203,desc = "tw-y-14-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4401421,cardId = 1102018,lv = 70,bklv = 7,star = 2,mon = {id = 244,desc = "tw-y-14-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4401430,cardId = 1101003,lv = 70,bklv = 7,star = 2,mon = {id = 212,desc = "tw-y-14-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4401431,cardId = 1102005,lv = 70,bklv = 7,star = 2,mon = {id = 257,desc = "tw-y-14-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44015] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4401510,cardId = 1101001,lv = 70,bklv = 8,star = 2,mon = {id = 209,desc = "tw-y-15-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4401511,cardId = 1102002,lv = 70,bklv = 8,star = 2,mon = {id = 253,desc = "tw-y-15-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4401520,cardId = 1101012,lv = 70,bklv = 8,star = 2,mon = {id = 208,desc = "tw-y-15-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4401521,cardId = 1102018,lv = 70,bklv = 8,star = 2,mon = {id = 252,desc = "tw-y-15-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4401530,cardId = 1101003,lv = 70,bklv = 8,star = 2,mon = {id = 212,desc = "tw-y-15-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4401531,cardId = 1102005,lv = 70,bklv = 8,star = 2,mon = {id = 257,desc = "tw-y-15-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44016] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4401610,cardId = 1101001,lv = 72,bklv = 8,star = 2,mon = {id = 207,desc = "tw-y-16-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4401611,cardId = 1102002,lv = 72,bklv = 8,star = 2,mon = {id = 248,desc = "tw-y-16-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4401620,cardId = 1101014,lv = 72,bklv = 8,star = 2,mon = {id = 207,desc = "tw-y-16-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4401621,cardId = 1102020,lv = 72,bklv = 8,star = 2,mon = {id = 242,desc = "tw-y-16-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4401630,cardId = 1101003,lv = 72,bklv = 8,star = 2,mon = {id = 211,desc = "tw-y-16-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4401631,cardId = 1102005,lv = 72,bklv = 8,star = 2,mon = {id = 256,desc = "tw-y-16-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44017] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4401710,cardId = 1101001,lv = 75,bklv = 8,star = 2,mon = {id = 209,desc = "tw-y-17-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4401711,cardId = 1102002,lv = 75,bklv = 8,star = 2,mon = {id = 253,desc = "tw-y-17-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4401720,cardId = 1101014,lv = 75,bklv = 8,star = 2,mon = {id = 208,desc = "tw-y-17-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4401721,cardId = 1102020,lv = 75,bklv = 8,star = 2,mon = {id = 252,desc = "tw-y-17-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4401730,cardId = 1101003,lv = 75,bklv = 8,star = 2,mon = {id = 212,desc = "tw-y-17-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4401731,cardId = 1102005,lv = 75,bklv = 8,star = 2,mon = {id = 257,desc = "tw-y-17-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44018] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4401810,cardId = 1101001,lv = 78,bklv = 8,star = 2,mon = {id = 207,desc = "tw-y-18-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4401811,cardId = 1102002,lv = 78,bklv = 8,star = 2,mon = {id = 251,desc = "tw-y-18-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4401820,cardId = 1101014,lv = 78,bklv = 8,star = 2,mon = {id = 205,desc = "tw-y-18-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4401821,cardId = 1102020,lv = 78,bklv = 8,star = 2,mon = {id = 250,desc = "tw-y-18-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4401830,cardId = 1101003,lv = 78,bklv = 8,star = 2,mon = {id = 210,desc = "tw-y-18-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4401831,cardId = 1102005,lv = 78,bklv = 8,star = 2,mon = {id = 255,desc = "tw-y-18-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44019] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4401910,cardId = 1101001,lv = 80,bklv = 9,star = 2,mon = {id = 212,desc = "tw-y-19-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4401911,cardId = 1102002,lv = 80,bklv = 9,star = 2,mon = {id = 257,desc = "tw-y-19-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4401920,cardId = 1101014,lv = 80,bklv = 8,star = 2,mon = {id = 208,desc = "tw-y-19-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4401921,cardId = 1102020,lv = 80,bklv = 8,star = 2,mon = {id = 252,desc = "tw-y-19-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4401930,cardId = 1101003,lv = 80,bklv = 8,star = 2,mon = {id = 209,desc = "tw-y-19-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4401931,cardId = 1102005,lv = 80,bklv = 8,star = 2,mon = {id = 253,desc = "tw-y-19-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44020] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4402010,cardId = 1101007,lv = 80,bklv = 9,star = 2,mon = {id = 201,desc = "tw-y-20-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4402011,cardId = 1102002,lv = 80,bklv = 9,star = 2,mon = {id = 241,desc = "tw-y-20-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4402020,cardId = 1101014,lv = 80,bklv = 9,star = 2,mon = {id = 203,desc = "tw-y-20-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4402021,cardId = 1102020,lv = 80,bklv = 9,star = 2,mon = {id = 244,desc = "tw-y-20-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4402030,cardId = 1101003,lv = 80,bklv = 9,star = 2,mon = {id = 214,desc = "tw-y-20-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4402031,cardId = 1102005,lv = 80,bklv = 9,star = 2,mon = {id = 259,desc = "tw-y-20-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44021] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4402110,cardId = 1101007,lv = 81,bklv = 9,star = 2,mon = {id = 212,desc = "tw-y-21-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4402111,cardId = 1102002,lv = 81,bklv = 9,star = 2,mon = {id = 257,desc = "tw-y-21-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4402120,cardId = 1101014,lv = 81,bklv = 9,star = 2,mon = {id = 208,desc = "tw-y-21-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4402121,cardId = 1102020,lv = 81,bklv = 9,star = 2,mon = {id = 252,desc = "tw-y-21-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4402130,cardId = 1101003,lv = 81,bklv = 9,star = 2,mon = {id = 209,desc = "tw-y-21-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4402131,cardId = 1102005,lv = 81,bklv = 9,star = 2,mon = {id = 253,desc = "tw-y-21-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44022] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4402210,cardId = 1101007,lv = 82,bklv = 9,star = 2,mon = {id = 215,desc = "tw-y-22-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4402211,cardId = 1102002,lv = 82,bklv = 9,star = 2,mon = {id = 260,desc = "tw-y-22-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4402220,cardId = 1101014,lv = 82,bklv = 9,star = 2,mon = {id = 201,desc = "tw-y-22-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4402221,cardId = 1102020,lv = 82,bklv = 9,star = 2,mon = {id = 248,desc = "tw-y-22-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4402230,cardId = 1101003,lv = 82,bklv = 9,star = 2,mon = {id = 211,desc = "tw-y-22-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4402231,cardId = 1102005,lv = 82,bklv = 9,star = 2,mon = {id = 256,desc = "tw-y-22-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44023] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4402310,cardId = 1101007,lv = 83,bklv = 9,star = 2,mon = {id = 206,desc = "tw-y-23-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4402311,cardId = 1102002,lv = 83,bklv = 9,star = 2,mon = {id = 246,desc = "tw-y-23-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4402320,cardId = 1101014,lv = 83,bklv = 9,star = 2,mon = {id = 203,desc = "tw-y-23-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4402321,cardId = 1102020,lv = 83,bklv = 9,star = 2,mon = {id = 244,desc = "tw-y-23-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4402330,cardId = 1101003,lv = 83,bklv = 9,star = 2,mon = {id = 212,desc = "tw-y-23-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4402331,cardId = 1102005,lv = 83,bklv = 9,star = 2,mon = {id = 257,desc = "tw-y-23-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44024] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4402410,cardId = 1101007,lv = 85,bklv = 10,star = 2,mon = {id = 209,desc = "tw-y-24-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4402411,cardId = 1102002,lv = 85,bklv = 10,star = 2,mon = {id = 253,desc = "tw-y-24-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4402420,cardId = 1101014,lv = 85,bklv = 9,star = 2,mon = {id = 208,desc = "tw-y-24-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4402421,cardId = 1102020,lv = 85,bklv = 9,star = 2,mon = {id = 252,desc = "tw-y-24-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4402430,cardId = 1101003,lv = 85,bklv = 9,star = 2,mon = {id = 212,desc = "tw-y-24-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4402431,cardId = 1102005,lv = 85,bklv = 9,star = 2,mon = {id = 257,desc = "tw-y-24-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44025] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4402510,cardId = 1101007,lv = 85,bklv = 10,star = 2,mon = {id = 213,desc = "tw-y-25-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4402511,cardId = 1102002,lv = 85,bklv = 10,star = 2,mon = {id = 258,desc = "tw-y-25-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4402520,cardId = 1101014,lv = 85,bklv = 10,star = 2,mon = {id = 207,desc = "tw-y-25-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4402521,cardId = 1102020,lv = 85,bklv = 10,star = 2,mon = {id = 242,desc = "tw-y-25-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4402530,cardId = 1101003,lv = 85,bklv = 10,star = 2,mon = {id = 211,desc = "tw-y-25-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4402531,cardId = 1102005,lv = 85,bklv = 10,star = 2,mon = {id = 256,desc = "tw-y-25-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44026] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4402610,cardId = 1101007,lv = 86,bklv = 10,star = 3,mon = {id = 206,desc = "tw-y-26-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4402611,cardId = 1102002,lv = 86,bklv = 10,star = 3,mon = {id = 246,desc = "tw-y-26-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4402620,cardId = 1101014,lv = 86,bklv = 10,star = 3,mon = {id = 205,desc = "tw-y-26-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4402621,cardId = 1102020,lv = 86,bklv = 10,star = 3,mon = {id = 250,desc = "tw-y-26-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4402630,cardId = 1101003,lv = 86,bklv = 10,star = 3,mon = {id = 207,desc = "tw-y-26-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4402631,cardId = 1102005,lv = 86,bklv = 10,star = 3,mon = {id = 249,desc = "tw-y-26-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44027] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4402710,cardId = 1101007,lv = 87,bklv = 10,star = 3,mon = {id = 212,desc = "tw-y-27-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4402711,cardId = 1102002,lv = 87,bklv = 10,star = 3,mon = {id = 257,desc = "tw-y-27-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4402720,cardId = 1101014,lv = 87,bklv = 10,star = 3,mon = {id = 208,desc = "tw-y-27-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4402721,cardId = 1102020,lv = 87,bklv = 10,star = 3,mon = {id = 252,desc = "tw-y-27-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4402730,cardId = 1101003,lv = 87,bklv = 10,star = 3,mon = {id = 209,desc = "tw-y-27-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4402731,cardId = 1102005,lv = 87,bklv = 10,star = 3,mon = {id = 253,desc = "tw-y-27-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44028] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4402810,cardId = 1101007,lv = 88,bklv = 10,star = 3,mon = {id = 201,desc = "tw-y-28-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4402811,cardId = 1102002,lv = 88,bklv = 10,star = 3,mon = {id = 241,desc = "tw-y-28-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4402820,cardId = 1101014,lv = 88,bklv = 10,star = 3,mon = {id = 203,desc = "tw-y-28-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4402821,cardId = 1102020,lv = 88,bklv = 10,star = 3,mon = {id = 244,desc = "tw-y-28-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4402830,cardId = 1101003,lv = 88,bklv = 10,star = 3,mon = {id = 214,desc = "tw-y-28-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4402831,cardId = 1102005,lv = 88,bklv = 10,star = 3,mon = {id = 259,desc = "tw-y-28-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44029] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4402910,cardId = 1101007,lv = 90,bklv = 11,star = 3,mon = {id = 212,desc = "tw-y-29-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4402911,cardId = 1102002,lv = 90,bklv = 11,star = 3,mon = {id = 257,desc = "tw-y-29-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4402920,cardId = 1101014,lv = 90,bklv = 10,star = 3,mon = {id = 208,desc = "tw-y-29-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4402921,cardId = 1102020,lv = 90,bklv = 10,star = 3,mon = {id = 252,desc = "tw-y-29-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4402930,cardId = 1101003,lv = 90,bklv = 10,star = 3,mon = {id = 209,desc = "tw-y-29-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4402931,cardId = 1102005,lv = 90,bklv = 10,star = 3,mon = {id = 253,desc = "tw-y-29-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44030] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4403010,cardId = 1101009,lv = 90,bklv = 11,star = 3,mon = {id = 215,desc = "tw-y-30-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4403011,cardId = 1102014,lv = 90,bklv = 11,star = 3,mon = {id = 260,desc = "tw-y-30-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4403020,cardId = 1101007,lv = 90,bklv = 11,star = 3,mon = {id = 201,desc = "tw-y-30-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4403021,cardId = 1102003,lv = 90,bklv = 11,star = 3,mon = {id = 248,desc = "tw-y-30-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4403030,cardId = 1101011,lv = 90,bklv = 11,star = 3,mon = {id = 211,desc = "tw-y-30-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4403031,cardId = 1102017,lv = 90,bklv = 11,star = 3,mon = {id = 256,desc = "tw-y-30-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44031] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4403110,cardId = 1101009,lv = 91,bklv = 11,star = 3,mon = {id = 209,desc = "tw-y-31-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4403111,cardId = 1102014,lv = 91,bklv = 11,star = 3,mon = {id = 253,desc = "tw-y-31-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4403120,cardId = 1101007,lv = 91,bklv = 11,star = 3,mon = {id = 208,desc = "tw-y-31-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4403121,cardId = 1102003,lv = 91,bklv = 11,star = 3,mon = {id = 252,desc = "tw-y-31-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4403130,cardId = 1101011,lv = 91,bklv = 11,star = 3,mon = {id = 212,desc = "tw-y-31-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4403131,cardId = 1102017,lv = 91,bklv = 11,star = 3,mon = {id = 257,desc = "tw-y-31-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44032] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4403210,cardId = 1101009,lv = 92,bklv = 11,star = 3,mon = {id = 213,desc = "tw-y-32-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4403211,cardId = 1102014,lv = 92,bklv = 11,star = 3,mon = {id = 258,desc = "tw-y-32-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4403220,cardId = 1101007,lv = 92,bklv = 11,star = 3,mon = {id = 207,desc = "tw-y-32-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4403221,cardId = 1102003,lv = 92,bklv = 11,star = 3,mon = {id = 242,desc = "tw-y-32-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4403230,cardId = 1101011,lv = 92,bklv = 11,star = 3,mon = {id = 211,desc = "tw-y-32-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4403231,cardId = 1102017,lv = 92,bklv = 11,star = 3,mon = {id = 256,desc = "tw-y-32-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44033] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4403310,cardId = 1101009,lv = 93,bklv = 11,star = 3,mon = {id = 205,desc = "tw-y-33-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4403311,cardId = 1102014,lv = 93,bklv = 11,star = 3,mon = {id = 240,desc = "tw-y-33-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4403320,cardId = 1101007,lv = 93,bklv = 11,star = 3,mon = {id = 204,desc = "tw-y-33-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4403321,cardId = 1102003,lv = 93,bklv = 11,star = 3,mon = {id = 245,desc = "tw-y-33-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4403330,cardId = 1101011,lv = 93,bklv = 11,star = 3,mon = {id = 207,desc = "tw-y-33-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4403331,cardId = 1102017,lv = 93,bklv = 11,star = 3,mon = {id = 249,desc = "tw-y-33-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44034] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4403410,cardId = 1101009,lv = 94,bklv = 11,star = 3,mon = {id = 212,desc = "tw-y-34-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4403411,cardId = 1102014,lv = 94,bklv = 11,star = 3,mon = {id = 257,desc = "tw-y-34-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4403420,cardId = 1101007,lv = 94,bklv = 11,star = 3,mon = {id = 208,desc = "tw-y-34-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4403421,cardId = 1102003,lv = 94,bklv = 11,star = 3,mon = {id = 252,desc = "tw-y-34-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4403430,cardId = 1101011,lv = 94,bklv = 11,star = 3,mon = {id = 213,desc = "tw-y-34-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4403431,cardId = 1102017,lv = 94,bklv = 11,star = 3,mon = {id = 258,desc = "tw-y-34-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44035] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4403510,cardId = 1101009,lv = 95,bklv = 12,star = 3,mon = {id = 201,desc = "tw-y-35-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4403511,cardId = 1102014,lv = 95,bklv = 12,star = 3,mon = {id = 241,desc = "tw-y-35-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4403520,cardId = 1101007,lv = 95,bklv = 11,star = 3,mon = {id = 203,desc = "tw-y-35-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4403521,cardId = 1102003,lv = 95,bklv = 11,star = 3,mon = {id = 244,desc = "tw-y-35-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4403530,cardId = 1101011,lv = 95,bklv = 11,star = 3,mon = {id = 214,desc = "tw-y-35-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4403531,cardId = 1102017,lv = 95,bklv = 11,star = 3,mon = {id = 259,desc = "tw-y-35-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44036] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4403610,cardId = 1101009,lv = 95,bklv = 12,star = 3,mon = {id = 212,desc = "tw-y-36-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4403611,cardId = 1102014,lv = 95,bklv = 12,star = 3,mon = {id = 257,desc = "tw-y-36-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4403620,cardId = 1101007,lv = 95,bklv = 12,star = 3,mon = {id = 208,desc = "tw-y-36-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4403621,cardId = 1102003,lv = 95,bklv = 12,star = 3,mon = {id = 252,desc = "tw-y-36-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4403630,cardId = 1101011,lv = 95,bklv = 11,star = 3,mon = {id = 209,desc = "tw-y-36-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4403631,cardId = 1102017,lv = 95,bklv = 11,star = 3,mon = {id = 253,desc = "tw-y-36-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44037] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4403710,cardId = 1101009,lv = 95,bklv = 12,star = 3,mon = {id = 215,desc = "tw-y-37-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4403711,cardId = 1102014,lv = 95,bklv = 12,star = 3,mon = {id = 260,desc = "tw-y-37-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4403720,cardId = 1101007,lv = 95,bklv = 12,star = 3,mon = {id = 201,desc = "tw-y-37-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4403721,cardId = 1102003,lv = 95,bklv = 12,star = 3,mon = {id = 248,desc = "tw-y-37-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4403730,cardId = 1101011,lv = 95,bklv = 12,star = 3,mon = {id = 211,desc = "tw-y-37-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4403731,cardId = 1102017,lv = 95,bklv = 12,star = 3,mon = {id = 256,desc = "tw-y-37-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44038] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4403810,cardId = 1101009,lv = 96,bklv = 12,star = 3,mon = {id = 206,desc = "tw-y-38-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4403811,cardId = 1102014,lv = 96,bklv = 12,star = 3,mon = {id = 246,desc = "tw-y-38-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4403820,cardId = 1101007,lv = 96,bklv = 12,star = 3,mon = {id = 203,desc = "tw-y-38-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4403821,cardId = 1102003,lv = 96,bklv = 12,star = 3,mon = {id = 244,desc = "tw-y-38-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4403830,cardId = 1101011,lv = 96,bklv = 12,star = 3,mon = {id = 212,desc = "tw-y-38-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4403831,cardId = 1102017,lv = 96,bklv = 12,star = 3,mon = {id = 257,desc = "tw-y-38-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44039] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4403910,cardId = 1101009,lv = 97,bklv = 12,star = 3,mon = {id = 209,desc = "tw-y-39-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4403911,cardId = 1102014,lv = 97,bklv = 12,star = 3,mon = {id = 253,desc = "tw-y-39-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4403920,cardId = 1101007,lv = 97,bklv = 12,star = 3,mon = {id = 208,desc = "tw-y-39-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4403921,cardId = 1102003,lv = 97,bklv = 12,star = 3,mon = {id = 252,desc = "tw-y-39-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4403930,cardId = 1101011,lv = 97,bklv = 12,star = 3,mon = {id = 212,desc = "tw-y-39-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4403931,cardId = 1102017,lv = 97,bklv = 12,star = 3,mon = {id = 257,desc = "tw-y-39-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44040] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4404010,cardId = 1101009,lv = 98,bklv = 12,star = 3,mon = {id = 213,desc = "tw-y-40-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4404011,cardId = 1102014,lv = 98,bklv = 12,star = 3,mon = {id = 258,desc = "tw-y-40-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4404020,cardId = 1101007,lv = 98,bklv = 12,star = 3,mon = {id = 207,desc = "tw-y-40-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4404021,cardId = 1102003,lv = 98,bklv = 12,star = 3,mon = {id = 242,desc = "tw-y-40-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4404030,cardId = 1101011,lv = 98,bklv = 12,star = 3,mon = {id = 211,desc = "tw-y-40-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4404031,cardId = 1102017,lv = 98,bklv = 12,star = 3,mon = {id = 256,desc = "tw-y-40-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44041] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4404110,cardId = 1101009,lv = 98,bklv = 12,star = 3,mon = {id = 207,desc = "tw-y-41-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4404111,cardId = 1102014,lv = 98,bklv = 12,star = 3,mon = {id = 251,desc = "tw-y-41-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4404120,cardId = 1101007,lv = 98,bklv = 12,star = 3,mon = {id = 205,desc = "tw-y-41-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4404121,cardId = 1102003,lv = 98,bklv = 12,star = 3,mon = {id = 250,desc = "tw-y-41-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4404130,cardId = 1101011,lv = 98,bklv = 12,star = 3,mon = {id = 210,desc = "tw-y-41-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4404131,cardId = 1102017,lv = 98,bklv = 12,star = 3,mon = {id = 255,desc = "tw-y-41-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44042] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4404210,cardId = 1101009,lv = 99,bklv = 12,star = 3,mon = {id = 212,desc = "tw-y-42-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4404211,cardId = 1102014,lv = 99,bklv = 12,star = 3,mon = {id = 257,desc = "tw-y-42-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4404220,cardId = 1101007,lv = 99,bklv = 12,star = 3,mon = {id = 208,desc = "tw-y-42-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4404221,cardId = 1102003,lv = 99,bklv = 12,star = 3,mon = {id = 252,desc = "tw-y-42-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4404230,cardId = 1101011,lv = 99,bklv = 12,star = 3,mon = {id = 209,desc = "tw-y-42-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4404231,cardId = 1102017,lv = 99,bklv = 12,star = 3,mon = {id = 253,desc = "tw-y-42-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44043] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4404310,cardId = 1101009,lv = 100,bklv = 13,star = 3,mon = {id = 201,desc = "tw-y-43-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4404311,cardId = 1102014,lv = 100,bklv = 13,star = 3,mon = {id = 241,desc = "tw-y-43-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4404320,cardId = 1101007,lv = 100,bklv = 12,star = 3,mon = {id = 203,desc = "tw-y-43-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4404321,cardId = 1102003,lv = 100,bklv = 12,star = 3,mon = {id = 244,desc = "tw-y-43-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4404330,cardId = 1101011,lv = 100,bklv = 12,star = 3,mon = {id = 214,desc = "tw-y-43-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4404331,cardId = 1102017,lv = 100,bklv = 12,star = 3,mon = {id = 259,desc = "tw-y-43-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44044] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4404410,cardId = 1101009,lv = 100,bklv = 13,star = 3,mon = {id = 212,desc = "tw-y-44-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4404411,cardId = 1102014,lv = 100,bklv = 13,star = 3,mon = {id = 257,desc = "tw-y-44-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4404420,cardId = 1101007,lv = 100,bklv = 13,star = 3,mon = {id = 208,desc = "tw-y-44-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4404421,cardId = 1102003,lv = 100,bklv = 13,star = 3,mon = {id = 252,desc = "tw-y-44-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4404430,cardId = 1101011,lv = 100,bklv = 12,star = 3,mon = {id = 209,desc = "tw-y-44-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4404431,cardId = 1102017,lv = 100,bklv = 12,star = 3,mon = {id = 253,desc = "tw-y-44-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44045] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4404510,cardId = 1101009,lv = 100,bklv = 13,star = 3,mon = {id = 215,desc = "tw-y-45-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4404511,cardId = 1102014,lv = 100,bklv = 13,star = 3,mon = {id = 260,desc = "tw-y-45-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4404520,cardId = 1101007,lv = 100,bklv = 13,star = 3,mon = {id = 201,desc = "tw-y-45-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4404521,cardId = 1102003,lv = 100,bklv = 13,star = 3,mon = {id = 248,desc = "tw-y-45-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4404530,cardId = 1101011,lv = 100,bklv = 13,star = 3,mon = {id = 211,desc = "tw-y-45-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4404531,cardId = 1102017,lv = 100,bklv = 13,star = 3,mon = {id = 256,desc = "tw-y-45-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44046] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4404610,cardId = 1101009,lv = 101,bklv = 13,star = 4,mon = {id = 209,desc = "tw-y-46-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4404611,cardId = 1102014,lv = 101,bklv = 13,star = 4,mon = {id = 253,desc = "tw-y-46-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4404620,cardId = 1101007,lv = 101,bklv = 13,star = 4,mon = {id = 208,desc = "tw-y-46-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4404621,cardId = 1102003,lv = 101,bklv = 13,star = 4,mon = {id = 252,desc = "tw-y-46-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4404630,cardId = 1101011,lv = 101,bklv = 13,star = 4,mon = {id = 212,desc = "tw-y-46-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4404631,cardId = 1102017,lv = 101,bklv = 13,star = 4,mon = {id = 257,desc = "tw-y-46-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44047] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4404710,cardId = 1101009,lv = 102,bklv = 13,star = 4,mon = {id = 207,desc = "tw-y-47-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4404711,cardId = 1102014,lv = 102,bklv = 13,star = 4,mon = {id = 248,desc = "tw-y-47-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4404720,cardId = 1101007,lv = 102,bklv = 13,star = 4,mon = {id = 207,desc = "tw-y-47-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4404721,cardId = 1102003,lv = 102,bklv = 13,star = 4,mon = {id = 242,desc = "tw-y-47-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4404730,cardId = 1101011,lv = 102,bklv = 13,star = 4,mon = {id = 211,desc = "tw-y-47-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4404731,cardId = 1102017,lv = 102,bklv = 13,star = 4,mon = {id = 256,desc = "tw-y-47-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44048] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4404810,cardId = 1101009,lv = 103,bklv = 13,star = 4,mon = {id = 205,desc = "tw-y-48-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4404811,cardId = 1102014,lv = 103,bklv = 13,star = 4,mon = {id = 240,desc = "tw-y-48-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4404820,cardId = 1101007,lv = 103,bklv = 13,star = 4,mon = {id = 204,desc = "tw-y-48-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4404821,cardId = 1102003,lv = 103,bklv = 13,star = 4,mon = {id = 245,desc = "tw-y-48-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4404830,cardId = 1101011,lv = 103,bklv = 13,star = 4,mon = {id = 207,desc = "tw-y-48-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4404831,cardId = 1102017,lv = 103,bklv = 13,star = 4,mon = {id = 249,desc = "tw-y-48-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44049] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4404910,cardId = 1101009,lv = 104,bklv = 13,star = 4,mon = {id = 212,desc = "tw-y-49-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4404911,cardId = 1102014,lv = 104,bklv = 13,star = 4,mon = {id = 257,desc = "tw-y-49-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4404920,cardId = 1101007,lv = 104,bklv = 13,star = 4,mon = {id = 208,desc = "tw-y-49-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4404921,cardId = 1102003,lv = 104,bklv = 13,star = 4,mon = {id = 252,desc = "tw-y-49-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4404930,cardId = 1101011,lv = 104,bklv = 13,star = 4,mon = {id = 209,desc = "tw-y-49-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4404931,cardId = 1102017,lv = 104,bklv = 13,star = 4,mon = {id = 253,desc = "tw-y-49-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44050] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4405010,cardId = 1101009,lv = 105,bklv = 14,star = 4,mon = {id = 201,desc = "tw-y-50-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4405011,cardId = 1102014,lv = 105,bklv = 14,star = 4,mon = {id = 241,desc = "tw-y-50-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4405020,cardId = 1101007,lv = 105,bklv = 13,star = 4,mon = {id = 203,desc = "tw-y-50-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4405021,cardId = 1102003,lv = 105,bklv = 13,star = 4,mon = {id = 244,desc = "tw-y-50-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4405030,cardId = 1101011,lv = 105,bklv = 13,star = 4,mon = {id = 214,desc = "tw-y-50-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4405031,cardId = 1102017,lv = 105,bklv = 13,star = 4,mon = {id = 259,desc = "tw-y-50-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44051] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4405110,cardId = 1101007,lv = 105,bklv = 14,star = 4,mon = {id = 212,desc = "tw-y-51-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4405111,cardId = 1102012,lv = 105,bklv = 14,star = 4,mon = {id = 257,desc = "tw-y-51-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4405120,cardId = 1101005,lv = 105,bklv = 14,star = 4,mon = {id = 208,desc = "tw-y-51-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4405121,cardId = 1102011,lv = 105,bklv = 14,star = 4,mon = {id = 252,desc = "tw-y-51-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4405130,cardId = 1101010,lv = 105,bklv = 13,star = 4,mon = {id = 209,desc = "tw-y-51-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4405131,cardId = 1102016,lv = 105,bklv = 13,star = 4,mon = {id = 253,desc = "tw-y-51-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44052] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4405210,cardId = 1101007,lv = 105,bklv = 14,star = 4,mon = {id = 215,desc = "tw-y-52-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4405211,cardId = 1102012,lv = 105,bklv = 14,star = 4,mon = {id = 260,desc = "tw-y-52-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4405220,cardId = 1101005,lv = 105,bklv = 14,star = 4,mon = {id = 201,desc = "tw-y-52-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4405221,cardId = 1102011,lv = 105,bklv = 14,star = 4,mon = {id = 248,desc = "tw-y-52-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4405230,cardId = 1101010,lv = 105,bklv = 14,star = 4,mon = {id = 211,desc = "tw-y-52-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4405231,cardId = 1102016,lv = 105,bklv = 14,star = 4,mon = {id = 256,desc = "tw-y-52-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44053] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4405310,cardId = 1101007,lv = 106,bklv = 14,star = 4,mon = {id = 206,desc = "tw-y-53-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4405311,cardId = 1102012,lv = 106,bklv = 14,star = 4,mon = {id = 246,desc = "tw-y-53-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4405320,cardId = 1101005,lv = 106,bklv = 14,star = 4,mon = {id = 203,desc = "tw-y-53-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4405321,cardId = 1102011,lv = 106,bklv = 14,star = 4,mon = {id = 244,desc = "tw-y-53-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4405330,cardId = 1101010,lv = 106,bklv = 14,star = 4,mon = {id = 212,desc = "tw-y-53-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4405331,cardId = 1102016,lv = 106,bklv = 14,star = 4,mon = {id = 257,desc = "tw-y-53-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44054] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4405410,cardId = 1101007,lv = 107,bklv = 14,star = 4,mon = {id = 209,desc = "tw-y-54-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4405411,cardId = 1102012,lv = 107,bklv = 14,star = 4,mon = {id = 253,desc = "tw-y-54-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4405420,cardId = 1101005,lv = 107,bklv = 14,star = 4,mon = {id = 208,desc = "tw-y-54-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4405421,cardId = 1102011,lv = 107,bklv = 14,star = 4,mon = {id = 252,desc = "tw-y-54-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4405430,cardId = 1101010,lv = 107,bklv = 14,star = 4,mon = {id = 212,desc = "tw-y-54-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4405431,cardId = 1102016,lv = 107,bklv = 14,star = 4,mon = {id = 257,desc = "tw-y-54-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44055] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4405510,cardId = 1101007,lv = 108,bklv = 14,star = 4,mon = {id = 213,desc = "tw-y-55-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4405511,cardId = 1102012,lv = 108,bklv = 14,star = 4,mon = {id = 258,desc = "tw-y-55-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4405520,cardId = 1101005,lv = 108,bklv = 14,star = 4,mon = {id = 207,desc = "tw-y-55-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4405521,cardId = 1102011,lv = 108,bklv = 14,star = 4,mon = {id = 242,desc = "tw-y-55-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4405530,cardId = 1101010,lv = 108,bklv = 14,star = 4,mon = {id = 211,desc = "tw-y-55-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4405531,cardId = 1102016,lv = 108,bklv = 14,star = 4,mon = {id = 256,desc = "tw-y-55-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44056] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4405610,cardId = 1101007,lv = 108,bklv = 14,star = 4,mon = {id = 206,desc = "tw-y-56-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4405611,cardId = 1102012,lv = 108,bklv = 14,star = 4,mon = {id = 246,desc = "tw-y-56-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4405620,cardId = 1101005,lv = 108,bklv = 14,star = 4,mon = {id = 205,desc = "tw-y-56-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4405621,cardId = 1102011,lv = 108,bklv = 14,star = 4,mon = {id = 250,desc = "tw-y-56-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4405630,cardId = 1101010,lv = 108,bklv = 14,star = 4,mon = {id = 207,desc = "tw-y-56-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4405631,cardId = 1102016,lv = 108,bklv = 14,star = 4,mon = {id = 249,desc = "tw-y-56-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44057] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4405710,cardId = 1101007,lv = 109,bklv = 14,star = 4,mon = {id = 212,desc = "tw-y-57-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4405711,cardId = 1102012,lv = 109,bklv = 14,star = 4,mon = {id = 257,desc = "tw-y-57-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4405720,cardId = 1101005,lv = 109,bklv = 14,star = 4,mon = {id = 208,desc = "tw-y-57-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4405721,cardId = 1102011,lv = 109,bklv = 14,star = 4,mon = {id = 252,desc = "tw-y-57-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4405730,cardId = 1101010,lv = 109,bklv = 14,star = 4,mon = {id = 209,desc = "tw-y-57-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4405731,cardId = 1102016,lv = 109,bklv = 14,star = 4,mon = {id = 253,desc = "tw-y-57-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44058] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4405810,cardId = 1101007,lv = 110,bklv = 15,star = 4,mon = {id = 201,desc = "tw-y-58-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4405811,cardId = 1102012,lv = 110,bklv = 15,star = 4,mon = {id = 241,desc = "tw-y-58-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4405820,cardId = 1101005,lv = 110,bklv = 14,star = 4,mon = {id = 203,desc = "tw-y-58-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4405821,cardId = 1102011,lv = 110,bklv = 14,star = 4,mon = {id = 244,desc = "tw-y-58-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4405830,cardId = 1101010,lv = 110,bklv = 14,star = 4,mon = {id = 214,desc = "tw-y-58-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4405831,cardId = 1102016,lv = 110,bklv = 14,star = 4,mon = {id = 259,desc = "tw-y-58-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44059] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4405910,cardId = 1101007,lv = 110,bklv = 15,star = 4,mon = {id = 212,desc = "tw-y-59-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4405911,cardId = 1102012,lv = 110,bklv = 15,star = 4,mon = {id = 257,desc = "tw-y-59-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4405920,cardId = 1101005,lv = 110,bklv = 15,star = 4,mon = {id = 208,desc = "tw-y-59-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4405921,cardId = 1102011,lv = 110,bklv = 15,star = 4,mon = {id = 252,desc = "tw-y-59-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4405930,cardId = 1101010,lv = 110,bklv = 14,star = 4,mon = {id = 209,desc = "tw-y-59-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4405931,cardId = 1102016,lv = 110,bklv = 14,star = 4,mon = {id = 253,desc = "tw-y-59-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44060] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4406010,cardId = 1101007,lv = 110,bklv = 15,star = 4,mon = {id = 215,desc = "tw-y-60-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4406011,cardId = 1102012,lv = 110,bklv = 15,star = 4,mon = {id = 260,desc = "tw-y-60-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4406020,cardId = 1101005,lv = 110,bklv = 15,star = 4,mon = {id = 201,desc = "tw-y-60-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4406021,cardId = 1102011,lv = 110,bklv = 15,star = 4,mon = {id = 248,desc = "tw-y-60-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4406030,cardId = 1101010,lv = 110,bklv = 15,star = 4,mon = {id = 211,desc = "tw-y-60-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4406031,cardId = 1102016,lv = 110,bklv = 15,star = 4,mon = {id = 256,desc = "tw-y-60-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44061] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4406110,cardId = 1101007,lv = 111,bklv = 15,star = 4,mon = {id = 209,desc = "tw-y-61-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4406111,cardId = 1102012,lv = 111,bklv = 15,star = 4,mon = {id = 253,desc = "tw-y-61-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4406120,cardId = 1101005,lv = 111,bklv = 15,star = 4,mon = {id = 208,desc = "tw-y-61-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4406121,cardId = 1102011,lv = 111,bklv = 15,star = 4,mon = {id = 252,desc = "tw-y-61-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4406130,cardId = 1101010,lv = 111,bklv = 15,star = 4,mon = {id = 212,desc = "tw-y-61-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4406131,cardId = 1102016,lv = 111,bklv = 15,star = 4,mon = {id = 257,desc = "tw-y-61-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44062] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4406210,cardId = 1101007,lv = 112,bklv = 15,star = 4,mon = {id = 207,desc = "tw-y-62-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4406211,cardId = 1102012,lv = 112,bklv = 15,star = 4,mon = {id = 248,desc = "tw-y-62-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4406220,cardId = 1101005,lv = 112,bklv = 15,star = 4,mon = {id = 207,desc = "tw-y-62-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4406221,cardId = 1102011,lv = 112,bklv = 15,star = 4,mon = {id = 242,desc = "tw-y-62-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4406230,cardId = 1101010,lv = 112,bklv = 15,star = 4,mon = {id = 211,desc = "tw-y-62-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4406231,cardId = 1102016,lv = 112,bklv = 15,star = 4,mon = {id = 256,desc = "tw-y-62-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44063] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4406310,cardId = 1101007,lv = 112,bklv = 15,star = 4,mon = {id = 205,desc = "tw-y-63-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4406311,cardId = 1102012,lv = 112,bklv = 15,star = 4,mon = {id = 240,desc = "tw-y-63-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4406320,cardId = 1101005,lv = 112,bklv = 15,star = 4,mon = {id = 204,desc = "tw-y-63-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4406321,cardId = 1102011,lv = 112,bklv = 15,star = 4,mon = {id = 245,desc = "tw-y-63-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4406330,cardId = 1101010,lv = 112,bklv = 15,star = 4,mon = {id = 207,desc = "tw-y-63-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4406331,cardId = 1102016,lv = 112,bklv = 15,star = 4,mon = {id = 249,desc = "tw-y-63-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44064] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4406410,cardId = 1101007,lv = 113,bklv = 15,star = 4,mon = {id = 212,desc = "tw-y-64-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4406411,cardId = 1102012,lv = 113,bklv = 15,star = 4,mon = {id = 257,desc = "tw-y-64-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4406420,cardId = 1101005,lv = 113,bklv = 15,star = 4,mon = {id = 208,desc = "tw-y-64-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4406421,cardId = 1102011,lv = 113,bklv = 15,star = 4,mon = {id = 252,desc = "tw-y-64-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4406430,cardId = 1101010,lv = 113,bklv = 15,star = 4,mon = {id = 213,desc = "tw-y-64-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4406431,cardId = 1102016,lv = 113,bklv = 15,star = 4,mon = {id = 258,desc = "tw-y-64-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44065] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4406510,cardId = 1101007,lv = 113,bklv = 15,star = 4,mon = {id = 201,desc = "tw-y-65-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4406511,cardId = 1102012,lv = 113,bklv = 15,star = 4,mon = {id = 241,desc = "tw-y-65-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4406520,cardId = 1101005,lv = 113,bklv = 15,star = 4,mon = {id = 203,desc = "tw-y-65-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4406521,cardId = 1102011,lv = 113,bklv = 15,star = 4,mon = {id = 244,desc = "tw-y-65-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4406530,cardId = 1101010,lv = 113,bklv = 15,star = 4,mon = {id = 214,desc = "tw-y-65-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4406531,cardId = 1102016,lv = 113,bklv = 15,star = 4,mon = {id = 259,desc = "tw-y-65-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44066] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4406610,cardId = 1101007,lv = 114,bklv = 15,star = 4,mon = {id = 212,desc = "tw-y-66-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4406611,cardId = 1102012,lv = 114,bklv = 15,star = 4,mon = {id = 257,desc = "tw-y-66-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4406620,cardId = 1101005,lv = 114,bklv = 15,star = 4,mon = {id = 208,desc = "tw-y-66-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4406621,cardId = 1102011,lv = 114,bklv = 15,star = 4,mon = {id = 252,desc = "tw-y-66-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4406630,cardId = 1101010,lv = 114,bklv = 15,star = 4,mon = {id = 209,desc = "tw-y-66-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4406631,cardId = 1102016,lv = 114,bklv = 15,star = 4,mon = {id = 253,desc = "tw-y-66-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44067] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4406710,cardId = 1101007,lv = 114,bklv = 15,star = 4,mon = {id = 215,desc = "tw-y-67-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4406711,cardId = 1102012,lv = 114,bklv = 15,star = 4,mon = {id = 260,desc = "tw-y-67-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4406720,cardId = 1101005,lv = 114,bklv = 15,star = 4,mon = {id = 201,desc = "tw-y-67-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4406721,cardId = 1102011,lv = 114,bklv = 15,star = 4,mon = {id = 248,desc = "tw-y-67-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4406730,cardId = 1101010,lv = 114,bklv = 15,star = 4,mon = {id = 211,desc = "tw-y-67-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4406731,cardId = 1102016,lv = 114,bklv = 15,star = 4,mon = {id = 256,desc = "tw-y-67-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44068] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4406810,cardId = 1101007,lv = 115,bklv = 16,star = 4,mon = {id = 206,desc = "tw-y-68-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4406811,cardId = 1102012,lv = 115,bklv = 16,star = 4,mon = {id = 246,desc = "tw-y-68-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4406820,cardId = 1101005,lv = 115,bklv = 15,star = 4,mon = {id = 203,desc = "tw-y-68-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4406821,cardId = 1102011,lv = 115,bklv = 15,star = 4,mon = {id = 244,desc = "tw-y-68-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4406830,cardId = 1101010,lv = 115,bklv = 15,star = 4,mon = {id = 212,desc = "tw-y-68-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4406831,cardId = 1102016,lv = 115,bklv = 15,star = 4,mon = {id = 257,desc = "tw-y-68-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44069] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4406910,cardId = 1101007,lv = 115,bklv = 16,star = 4,mon = {id = 209,desc = "tw-y-69-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4406911,cardId = 1102012,lv = 115,bklv = 16,star = 4,mon = {id = 253,desc = "tw-y-69-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4406920,cardId = 1101005,lv = 115,bklv = 16,star = 4,mon = {id = 208,desc = "tw-y-69-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4406921,cardId = 1102011,lv = 115,bklv = 16,star = 4,mon = {id = 252,desc = "tw-y-69-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4406930,cardId = 1101010,lv = 115,bklv = 15,star = 4,mon = {id = 212,desc = "tw-y-69-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4406931,cardId = 1102016,lv = 115,bklv = 15,star = 4,mon = {id = 257,desc = "tw-y-69-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44070] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4407010,cardId = 1101007,lv = 115,bklv = 16,star = 4,mon = {id = 207,desc = "tw-y-70-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4407011,cardId = 1102012,lv = 115,bklv = 16,star = 4,mon = {id = 248,desc = "tw-y-70-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4407020,cardId = 1101005,lv = 115,bklv = 16,star = 4,mon = {id = 207,desc = "tw-y-70-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4407021,cardId = 1102011,lv = 115,bklv = 16,star = 4,mon = {id = 242,desc = "tw-y-70-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4407030,cardId = 1101010,lv = 115,bklv = 16,star = 4,mon = {id = 211,desc = "tw-y-70-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4407031,cardId = 1102016,lv = 115,bklv = 16,star = 4,mon = {id = 256,desc = "tw-y-70-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44071] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4407110,cardId = 1101007,lv = 116,bklv = 16,star = 4,mon = {id = 207,desc = "tw-y-71-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4407111,cardId = 1102012,lv = 116,bklv = 16,star = 4,mon = {id = 251,desc = "tw-y-71-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4407120,cardId = 1101005,lv = 116,bklv = 16,star = 4,mon = {id = 205,desc = "tw-y-71-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4407121,cardId = 1102011,lv = 116,bklv = 16,star = 4,mon = {id = 250,desc = "tw-y-71-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4407130,cardId = 1101010,lv = 116,bklv = 16,star = 4,mon = {id = 210,desc = "tw-y-71-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4407131,cardId = 1102016,lv = 116,bklv = 16,star = 4,mon = {id = 255,desc = "tw-y-71-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44072] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4407210,cardId = 1101007,lv = 117,bklv = 16,star = 4,mon = {id = 212,desc = "tw-y-72-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4407211,cardId = 1102012,lv = 117,bklv = 16,star = 4,mon = {id = 257,desc = "tw-y-72-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4407220,cardId = 1101005,lv = 117,bklv = 16,star = 4,mon = {id = 208,desc = "tw-y-72-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4407221,cardId = 1102011,lv = 117,bklv = 16,star = 4,mon = {id = 252,desc = "tw-y-72-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4407230,cardId = 1101010,lv = 117,bklv = 16,star = 4,mon = {id = 209,desc = "tw-y-72-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4407231,cardId = 1102016,lv = 117,bklv = 16,star = 4,mon = {id = 253,desc = "tw-y-72-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44073] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4407310,cardId = 1101007,lv = 117,bklv = 16,star = 4,mon = {id = 201,desc = "tw-y-73-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4407311,cardId = 1102012,lv = 117,bklv = 16,star = 4,mon = {id = 241,desc = "tw-y-73-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4407320,cardId = 1101005,lv = 117,bklv = 16,star = 4,mon = {id = 203,desc = "tw-y-73-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4407321,cardId = 1102011,lv = 117,bklv = 16,star = 4,mon = {id = 244,desc = "tw-y-73-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4407330,cardId = 1101010,lv = 117,bklv = 16,star = 4,mon = {id = 214,desc = "tw-y-73-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4407331,cardId = 1102016,lv = 117,bklv = 16,star = 4,mon = {id = 259,desc = "tw-y-73-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44074] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4407410,cardId = 1101007,lv = 118,bklv = 16,star = 4,mon = {id = 212,desc = "tw-y-74-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4407411,cardId = 1102012,lv = 118,bklv = 16,star = 4,mon = {id = 257,desc = "tw-y-74-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4407420,cardId = 1101005,lv = 118,bklv = 16,star = 4,mon = {id = 208,desc = "tw-y-74-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4407421,cardId = 1102011,lv = 118,bklv = 16,star = 4,mon = {id = 252,desc = "tw-y-74-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4407430,cardId = 1101010,lv = 118,bklv = 16,star = 4,mon = {id = 209,desc = "tw-y-74-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4407431,cardId = 1102016,lv = 118,bklv = 16,star = 4,mon = {id = 253,desc = "tw-y-74-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44075] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4407510,cardId = 1101007,lv = 118,bklv = 16,star = 4,mon = {id = 215,desc = "tw-y-75-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4407511,cardId = 1102012,lv = 118,bklv = 16,star = 4,mon = {id = 260,desc = "tw-y-75-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4407520,cardId = 1101005,lv = 118,bklv = 16,star = 4,mon = {id = 201,desc = "tw-y-75-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4407521,cardId = 1102011,lv = 118,bklv = 16,star = 4,mon = {id = 248,desc = "tw-y-75-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4407530,cardId = 1101010,lv = 118,bklv = 16,star = 4,mon = {id = 211,desc = "tw-y-75-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4407531,cardId = 1102016,lv = 118,bklv = 16,star = 4,mon = {id = 256,desc = "tw-y-75-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44076] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4407610,cardId = 1101007,lv = 119,bklv = 16,star = 4,mon = {id = 209,desc = "tw-y-76-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4407611,cardId = 1102012,lv = 119,bklv = 16,star = 4,mon = {id = 253,desc = "tw-y-76-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4407620,cardId = 1101005,lv = 119,bklv = 16,star = 4,mon = {id = 208,desc = "tw-y-76-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4407621,cardId = 1102011,lv = 119,bklv = 16,star = 4,mon = {id = 252,desc = "tw-y-76-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4407630,cardId = 1101010,lv = 119,bklv = 16,star = 4,mon = {id = 212,desc = "tw-y-76-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4407631,cardId = 1102016,lv = 119,bklv = 16,star = 4,mon = {id = 257,desc = "tw-y-76-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44077] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4407710,cardId = 1101007,lv = 119,bklv = 16,star = 4,mon = {id = 207,desc = "tw-y-77-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4407711,cardId = 1102012,lv = 119,bklv = 16,star = 4,mon = {id = 248,desc = "tw-y-77-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4407720,cardId = 1101005,lv = 119,bklv = 16,star = 4,mon = {id = 207,desc = "tw-y-77-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4407721,cardId = 1102011,lv = 119,bklv = 16,star = 4,mon = {id = 242,desc = "tw-y-77-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4407730,cardId = 1101010,lv = 119,bklv = 16,star = 4,mon = {id = 211,desc = "tw-y-77-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4407731,cardId = 1102016,lv = 119,bklv = 16,star = 4,mon = {id = 256,desc = "tw-y-77-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44078] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4407810,cardId = 1101007,lv = 120,bklv = 17,star = 4,mon = {id = 205,desc = "tw-y-78-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4407811,cardId = 1102012,lv = 120,bklv = 17,star = 4,mon = {id = 240,desc = "tw-y-78-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4407820,cardId = 1101005,lv = 120,bklv = 16,star = 4,mon = {id = 204,desc = "tw-y-78-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4407821,cardId = 1102011,lv = 120,bklv = 16,star = 4,mon = {id = 245,desc = "tw-y-78-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4407830,cardId = 1101010,lv = 120,bklv = 16,star = 4,mon = {id = 207,desc = "tw-y-78-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4407831,cardId = 1102016,lv = 120,bklv = 16,star = 4,mon = {id = 249,desc = "tw-y-78-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44079] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4407910,cardId = 1101007,lv = 120,bklv = 17,star = 4,mon = {id = 201,desc = "tw-y-79-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4407911,cardId = 1102012,lv = 120,bklv = 17,star = 4,mon = {id = 241,desc = "tw-y-79-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4407920,cardId = 1101005,lv = 120,bklv = 17,star = 4,mon = {id = 203,desc = "tw-y-79-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4407921,cardId = 1102011,lv = 120,bklv = 17,star = 4,mon = {id = 244,desc = "tw-y-79-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4407930,cardId = 1101010,lv = 120,bklv = 16,star = 4,mon = {id = 214,desc = "tw-y-79-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4407931,cardId = 1102016,lv = 120,bklv = 16,star = 4,mon = {id = 259,desc = "tw-y-79-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44080] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4408010,cardId = 1101007,lv = 120,bklv = 17,star = 5,mon = {id = 212,desc = "tw-y-80-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4408011,cardId = 1102012,lv = 120,bklv = 17,star = 5,mon = {id = 257,desc = "tw-y-80-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4408020,cardId = 1101005,lv = 120,bklv = 17,star = 5,mon = {id = 208,desc = "tw-y-80-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4408021,cardId = 1102011,lv = 120,bklv = 17,star = 5,mon = {id = 252,desc = "tw-y-80-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4408030,cardId = 1101010,lv = 120,bklv = 17,star = 5,mon = {id = 209,desc = "tw-y-80-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4408031,cardId = 1102016,lv = 120,bklv = 17,star = 5,mon = {id = 253,desc = "tw-y-80-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44081] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4408110,cardId = 1101007,lv = 121,bklv = 17,star = 5,mon = {id = 215,desc = "tw-y-81-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4408111,cardId = 1102012,lv = 121,bklv = 17,star = 5,mon = {id = 260,desc = "tw-y-81-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4408120,cardId = 1101005,lv = 121,bklv = 17,star = 5,mon = {id = 201,desc = "tw-y-81-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4408121,cardId = 1102011,lv = 121,bklv = 17,star = 5,mon = {id = 248,desc = "tw-y-81-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4408130,cardId = 1101010,lv = 121,bklv = 17,star = 5,mon = {id = 211,desc = "tw-y-81-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4408131,cardId = 1102016,lv = 121,bklv = 17,star = 5,mon = {id = 256,desc = "tw-y-81-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44082] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4408210,cardId = 1101007,lv = 122,bklv = 17,star = 5,mon = {id = 206,desc = "tw-y-82-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4408211,cardId = 1102012,lv = 122,bklv = 17,star = 5,mon = {id = 246,desc = "tw-y-82-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4408220,cardId = 1101005,lv = 122,bklv = 17,star = 5,mon = {id = 203,desc = "tw-y-82-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4408221,cardId = 1102011,lv = 122,bklv = 17,star = 5,mon = {id = 244,desc = "tw-y-82-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4408230,cardId = 1101010,lv = 122,bklv = 17,star = 5,mon = {id = 212,desc = "tw-y-82-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4408231,cardId = 1102016,lv = 122,bklv = 17,star = 5,mon = {id = 257,desc = "tw-y-82-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44083] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4408310,cardId = 1101007,lv = 123,bklv = 17,star = 5,mon = {id = 209,desc = "tw-y-83-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4408311,cardId = 1102012,lv = 123,bklv = 17,star = 5,mon = {id = 253,desc = "tw-y-83-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4408320,cardId = 1101005,lv = 123,bklv = 17,star = 5,mon = {id = 208,desc = "tw-y-83-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4408321,cardId = 1102011,lv = 123,bklv = 17,star = 5,mon = {id = 252,desc = "tw-y-83-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4408330,cardId = 1101010,lv = 123,bklv = 17,star = 5,mon = {id = 212,desc = "tw-y-83-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4408331,cardId = 1102016,lv = 123,bklv = 17,star = 5,mon = {id = 257,desc = "tw-y-83-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44084] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4408410,cardId = 1101007,lv = 125,bklv = 17,star = 5,mon = {id = 213,desc = "tw-y-84-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4408411,cardId = 1102012,lv = 125,bklv = 17,star = 5,mon = {id = 258,desc = "tw-y-84-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4408420,cardId = 1101005,lv = 125,bklv = 18,star = 5,mon = {id = 207,desc = "tw-y-84-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4408421,cardId = 1102011,lv = 125,bklv = 18,star = 5,mon = {id = 242,desc = "tw-y-84-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4408430,cardId = 1101010,lv = 125,bklv = 17,star = 5,mon = {id = 211,desc = "tw-y-84-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4408431,cardId = 1102016,lv = 125,bklv = 17,star = 5,mon = {id = 256,desc = "tw-y-84-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44085] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4408510,cardId = 1101007,lv = 125,bklv = 18,star = 5,mon = {id = 206,desc = "tw-y-85-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4408511,cardId = 1102012,lv = 125,bklv = 18,star = 5,mon = {id = 246,desc = "tw-y-85-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4408520,cardId = 1101005,lv = 125,bklv = 18,star = 5,mon = {id = 205,desc = "tw-y-85-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4408521,cardId = 1102011,lv = 125,bklv = 18,star = 5,mon = {id = 250,desc = "tw-y-85-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4408530,cardId = 1101010,lv = 125,bklv = 18,star = 5,mon = {id = 207,desc = "tw-y-85-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4408531,cardId = 1102016,lv = 125,bklv = 18,star = 5,mon = {id = 249,desc = "tw-y-85-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44086] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4408610,cardId = 1101007,lv = 126,bklv = 18,star = 5,mon = {id = 212,desc = "tw-y-86-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4408611,cardId = 1102012,lv = 126,bklv = 18,star = 5,mon = {id = 257,desc = "tw-y-86-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4408620,cardId = 1101005,lv = 126,bklv = 18,star = 5,mon = {id = 208,desc = "tw-y-86-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4408621,cardId = 1102011,lv = 126,bklv = 18,star = 5,mon = {id = 252,desc = "tw-y-86-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4408630,cardId = 1101010,lv = 126,bklv = 18,star = 5,mon = {id = 209,desc = "tw-y-86-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4408631,cardId = 1102016,lv = 126,bklv = 18,star = 5,mon = {id = 253,desc = "tw-y-86-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44087] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4408710,cardId = 1101007,lv = 127,bklv = 18,star = 5,mon = {id = 201,desc = "tw-y-87-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4408711,cardId = 1102012,lv = 127,bklv = 18,star = 5,mon = {id = 241,desc = "tw-y-87-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4408720,cardId = 1101005,lv = 127,bklv = 18,star = 5,mon = {id = 203,desc = "tw-y-87-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4408721,cardId = 1102011,lv = 127,bklv = 18,star = 5,mon = {id = 244,desc = "tw-y-87-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4408730,cardId = 1101010,lv = 127,bklv = 18,star = 5,mon = {id = 214,desc = "tw-y-87-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4408731,cardId = 1102016,lv = 127,bklv = 18,star = 5,mon = {id = 259,desc = "tw-y-87-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44088] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4408810,cardId = 1101007,lv = 128,bklv = 18,star = 5,mon = {id = 212,desc = "tw-y-88-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4408811,cardId = 1102012,lv = 128,bklv = 18,star = 5,mon = {id = 257,desc = "tw-y-88-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4408820,cardId = 1101005,lv = 128,bklv = 18,star = 5,mon = {id = 208,desc = "tw-y-88-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4408821,cardId = 1102011,lv = 128,bklv = 18,star = 5,mon = {id = 252,desc = "tw-y-88-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4408830,cardId = 1101010,lv = 128,bklv = 18,star = 5,mon = {id = 209,desc = "tw-y-88-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4408831,cardId = 1102016,lv = 128,bklv = 18,star = 5,mon = {id = 253,desc = "tw-y-88-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44089] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4408910,cardId = 1101007,lv = 130,bklv = 19,star = 5,mon = {id = 215,desc = "tw-y-89-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4408911,cardId = 1102012,lv = 130,bklv = 19,star = 5,mon = {id = 260,desc = "tw-y-89-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4408920,cardId = 1101005,lv = 130,bklv = 18,star = 5,mon = {id = 201,desc = "tw-y-89-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4408921,cardId = 1102011,lv = 130,bklv = 18,star = 5,mon = {id = 248,desc = "tw-y-89-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4408930,cardId = 1101010,lv = 130,bklv = 18,star = 5,mon = {id = 211,desc = "tw-y-89-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4408931,cardId = 1102016,lv = 130,bklv = 18,star = 5,mon = {id = 256,desc = "tw-y-89-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44090] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4409010,cardId = 1101007,lv = 130,bklv = 19,star = 5,mon = {id = 209,desc = "tw-y-90-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4409011,cardId = 1102012,lv = 130,bklv = 19,star = 5,mon = {id = 253,desc = "tw-y-90-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4409020,cardId = 1101005,lv = 130,bklv = 19,star = 5,mon = {id = 208,desc = "tw-y-90-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4409021,cardId = 1102011,lv = 130,bklv = 19,star = 5,mon = {id = 252,desc = "tw-y-90-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4409030,cardId = 1101010,lv = 130,bklv = 18,star = 5,mon = {id = 212,desc = "tw-y-90-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4409031,cardId = 1102016,lv = 130,bklv = 18,star = 5,mon = {id = 257,desc = "tw-y-90-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44091] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4409110,cardId = 1101007,lv = 130,bklv = 19,star = 5,mon = {id = 207,desc = "tw-y-91-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4409111,cardId = 1102012,lv = 130,bklv = 19,star = 5,mon = {id = 248,desc = "tw-y-91-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4409120,cardId = 1101005,lv = 130,bklv = 19,star = 5,mon = {id = 207,desc = "tw-y-91-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4409121,cardId = 1102011,lv = 130,bklv = 19,star = 5,mon = {id = 242,desc = "tw-y-91-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4409130,cardId = 1101010,lv = 130,bklv = 19,star = 5,mon = {id = 211,desc = "tw-y-91-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4409131,cardId = 1102016,lv = 130,bklv = 19,star = 5,mon = {id = 256,desc = "tw-y-91-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44092] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4409210,cardId = 1101007,lv = 131,bklv = 19,star = 5,mon = {id = 205,desc = "tw-y-92-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4409211,cardId = 1102012,lv = 131,bklv = 19,star = 5,mon = {id = 240,desc = "tw-y-92-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4409220,cardId = 1101005,lv = 131,bklv = 19,star = 5,mon = {id = 204,desc = "tw-y-92-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4409221,cardId = 1102011,lv = 131,bklv = 19,star = 5,mon = {id = 245,desc = "tw-y-92-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4409230,cardId = 1101010,lv = 131,bklv = 19,star = 5,mon = {id = 207,desc = "tw-y-92-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4409231,cardId = 1102016,lv = 131,bklv = 19,star = 5,mon = {id = 249,desc = "tw-y-92-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44093] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4409310,cardId = 1101007,lv = 132,bklv = 19,star = 5,mon = {id = 212,desc = "tw-y-93-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4409311,cardId = 1102012,lv = 132,bklv = 19,star = 5,mon = {id = 257,desc = "tw-y-93-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4409320,cardId = 1101005,lv = 132,bklv = 19,star = 5,mon = {id = 208,desc = "tw-y-93-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4409321,cardId = 1102011,lv = 132,bklv = 19,star = 5,mon = {id = 252,desc = "tw-y-93-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4409330,cardId = 1101010,lv = 132,bklv = 19,star = 5,mon = {id = 213,desc = "tw-y-93-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4409331,cardId = 1102016,lv = 132,bklv = 19,star = 5,mon = {id = 258,desc = "tw-y-93-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44094] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4409410,cardId = 1101007,lv = 133,bklv = 19,star = 5,mon = {id = 201,desc = "tw-y-94-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4409411,cardId = 1102012,lv = 133,bklv = 19,star = 5,mon = {id = 241,desc = "tw-y-94-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4409420,cardId = 1101005,lv = 133,bklv = 19,star = 5,mon = {id = 203,desc = "tw-y-94-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4409421,cardId = 1102011,lv = 133,bklv = 19,star = 5,mon = {id = 244,desc = "tw-y-94-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4409430,cardId = 1101010,lv = 133,bklv = 19,star = 5,mon = {id = 214,desc = "tw-y-94-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4409431,cardId = 1102016,lv = 133,bklv = 19,star = 5,mon = {id = 259,desc = "tw-y-94-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44095] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4409510,cardId = 1101007,lv = 134,bklv = 19,star = 5,mon = {id = 212,desc = "tw-y-95-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4409511,cardId = 1102012,lv = 134,bklv = 19,star = 5,mon = {id = 257,desc = "tw-y-95-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4409520,cardId = 1101005,lv = 134,bklv = 19,star = 5,mon = {id = 208,desc = "tw-y-95-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4409521,cardId = 1102011,lv = 134,bklv = 19,star = 5,mon = {id = 252,desc = "tw-y-95-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4409530,cardId = 1101010,lv = 134,bklv = 19,star = 5,mon = {id = 209,desc = "tw-y-95-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4409531,cardId = 1102016,lv = 134,bklv = 19,star = 5,mon = {id = 253,desc = "tw-y-95-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44096] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4409610,cardId = 1101007,lv = 135,bklv = 19,star = 5,mon = {id = 215,desc = "tw-y-96-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4409611,cardId = 1102012,lv = 135,bklv = 19,star = 5,mon = {id = 260,desc = "tw-y-96-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4409620,cardId = 1101005,lv = 135,bklv = 20,star = 5,mon = {id = 201,desc = "tw-y-96-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4409621,cardId = 1102011,lv = 135,bklv = 20,star = 5,mon = {id = 248,desc = "tw-y-96-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4409630,cardId = 1101010,lv = 135,bklv = 19,star = 5,mon = {id = 211,desc = "tw-y-96-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4409631,cardId = 1102016,lv = 135,bklv = 19,star = 5,mon = {id = 256,desc = "tw-y-96-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44097] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4409710,cardId = 1101007,lv = 135,bklv = 20,star = 5,mon = {id = 206,desc = "tw-y-97-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4409711,cardId = 1102012,lv = 135,bklv = 20,star = 5,mon = {id = 246,desc = "tw-y-97-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4409720,cardId = 1101005,lv = 135,bklv = 20,star = 5,mon = {id = 203,desc = "tw-y-97-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4409721,cardId = 1102011,lv = 135,bklv = 20,star = 5,mon = {id = 244,desc = "tw-y-97-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4409730,cardId = 1101010,lv = 135,bklv = 20,star = 5,mon = {id = 212,desc = "tw-y-97-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4409731,cardId = 1102016,lv = 135,bklv = 20,star = 5,mon = {id = 257,desc = "tw-y-97-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44098] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4409810,cardId = 1101007,lv = 137,bklv = 20,star = 5,mon = {id = 209,desc = "tw-y-98-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4409811,cardId = 1102012,lv = 137,bklv = 20,star = 5,mon = {id = 253,desc = "tw-y-98-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4409820,cardId = 1101005,lv = 137,bklv = 20,star = 5,mon = {id = 208,desc = "tw-y-98-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4409821,cardId = 1102011,lv = 137,bklv = 20,star = 5,mon = {id = 252,desc = "tw-y-98-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4409830,cardId = 1101010,lv = 137,bklv = 20,star = 5,mon = {id = 212,desc = "tw-y-98-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4409831,cardId = 1102016,lv = 137,bklv = 20,star = 5,mon = {id = 257,desc = "tw-y-98-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44099] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4409910,cardId = 1101007,lv = 138,bklv = 20,star = 5,mon = {id = 207,desc = "tw-y-99-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4409911,cardId = 1102012,lv = 138,bklv = 20,star = 5,mon = {id = 248,desc = "tw-y-99-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4409920,cardId = 1101005,lv = 138,bklv = 20,star = 5,mon = {id = 207,desc = "tw-y-99-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4409921,cardId = 1102011,lv = 138,bklv = 20,star = 5,mon = {id = 242,desc = "tw-y-99-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4409930,cardId = 1101010,lv = 138,bklv = 20,star = 5,mon = {id = 211,desc = "tw-y-99-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4409931,cardId = 1102016,lv = 138,bklv = 20,star = 5,mon = {id = 256,desc = "tw-y-99-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[44100] = {
		[1] = {
			jlr = {cha = "tw-y",id = 4410010,cardId = 1101007,lv = 140,bklv = 21,star = 5,mon = {id = 207,desc = "tw-y-100-jlr-loc1",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4410011,cardId = 1102012,lv = 140,bklv = 21,star = 5,mon = {id = 251,desc = "tw-y-100-shl-loc1",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tw-y",id = 4410020,cardId = 1101005,lv = 140,bklv = 21,star = 5,mon = {id = 205,desc = "tw-y-100-jlr-loc2",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4410021,cardId = 1102011,lv = 140,bklv = 21,star = 5,mon = {id = 250,desc = "tw-y-100-shl-loc2",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tw-y",id = 4410030,cardId = 1101010,lv = 140,bklv = 21,star = 5,mon = {id = 210,desc = "tw-y-100-jlr-loc3",bsFac = 1,rou = 1}},
			shl = {cha = "tw-y",id = 4410031,cardId = 1102016,lv = 140,bklv = 21,star = 5,mon = {id = 255,desc = "tw-y-100-shl-loc3",bsFac = 1,rou = 1}}
		}
	},
	[50001] = {
		[1] = {
			jlr = {cha = "ds1",id = 5000110,cardId = 1101007,lv = 40,bklv = 3,star = 1,mon = {id = 212,desc = "ds1-loc1-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds1",id = 5000111,cardId = 1102002,lv = 40,bklv = 3,star = 1,mon = {id = 236,desc = "ds1-loc1-shl",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "ds1",id = 5000120,cardId = 1101014,lv = 40,bklv = 3,star = 1,mon = {id = 208,desc = "ds1-loc2-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds1",id = 5000121,cardId = 1102020,lv = 40,bklv = 3,star = 1,mon = {id = 231,desc = "ds1-loc2-shl",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "ds1",id = 5000130,cardId = 1101003,lv = 40,bklv = 3,star = 1,mon = {id = 209,desc = "ds1-loc3-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds1",id = 5000131,cardId = 1102005,lv = 40,bklv = 3,star = 1,mon = {id = 232,desc = "ds1-loc3-shl",bsFac = 1,rou = 1}}
		}
	},
	[50002] = {
		[1] = {
			jlr = {cha = "ds2",id = 5000210,cardId = 1101007,lv = 45,bklv = 4,star = 1,mon = {id = 212,desc = "ds2-loc1-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds2",id = 5000211,cardId = 1102002,lv = 45,bklv = 4,star = 1,mon = {id = 236,desc = "ds2-loc1-shl",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "ds2",id = 5000220,cardId = 1101014,lv = 45,bklv = 4,star = 1,mon = {id = 208,desc = "ds2-loc2-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds2",id = 5000221,cardId = 1102020,lv = 45,bklv = 4,star = 1,mon = {id = 231,desc = "ds2-loc2-shl",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "ds2",id = 5000230,cardId = 1101003,lv = 45,bklv = 4,star = 1,mon = {id = 209,desc = "ds2-loc3-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds2",id = 5000231,cardId = 1102005,lv = 45,bklv = 4,star = 1,mon = {id = 232,desc = "ds2-loc3-shl",bsFac = 1,rou = 1}}
		}
	},
	[50003] = {
		[1] = {
			jlr = {cha = "ds3",id = 5000310,cardId = 1101007,lv = 50,bklv = 5,star = 2,mon = {id = 212,desc = "ds3-loc1-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds3",id = 5000311,cardId = 1102002,lv = 50,bklv = 5,star = 2,mon = {id = 236,desc = "ds3-loc1-shl",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "ds3",id = 5000320,cardId = 1101014,lv = 50,bklv = 5,star = 2,mon = {id = 208,desc = "ds3-loc2-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds3",id = 5000321,cardId = 1102020,lv = 50,bklv = 5,star = 2,mon = {id = 231,desc = "ds3-loc2-shl",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "ds3",id = 5000330,cardId = 1101003,lv = 50,bklv = 5,star = 2,mon = {id = 209,desc = "ds3-loc3-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds3",id = 5000331,cardId = 1102005,lv = 50,bklv = 5,star = 2,mon = {id = 232,desc = "ds3-loc3-shl",bsFac = 1,rou = 1}}
		}
	},
	[50004] = {
		[1] = {
			jlr = {cha = "ds4",id = 5000410,cardId = 1101007,lv = 60,bklv = 6,star = 2,mon = {id = 212,desc = "ds4-loc1-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds4",id = 5000411,cardId = 1102002,lv = 60,bklv = 6,star = 2,mon = {id = 236,desc = "ds4-loc1-shl",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "ds4",id = 5000420,cardId = 1101014,lv = 60,bklv = 6,star = 2,mon = {id = 208,desc = "ds4-loc2-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds4",id = 5000421,cardId = 1102020,lv = 60,bklv = 6,star = 2,mon = {id = 231,desc = "ds4-loc2-shl",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "ds4",id = 5000430,cardId = 1101003,lv = 60,bklv = 6,star = 2,mon = {id = 209,desc = "ds4-loc3-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds4",id = 5000431,cardId = 1102005,lv = 60,bklv = 6,star = 2,mon = {id = 232,desc = "ds4-loc3-shl",bsFac = 1,rou = 1}}
		}
	},
	[50005] = {
		[1] = {
			jlr = {cha = "ds5",id = 5000510,cardId = 1101007,lv = 70,bklv = 7,star = 2,mon = {id = 212,desc = "ds5-loc1-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds5",id = 5000511,cardId = 1102002,lv = 70,bklv = 7,star = 2,mon = {id = 236,desc = "ds5-loc1-shl",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "ds5",id = 5000520,cardId = 1101014,lv = 70,bklv = 7,star = 2,mon = {id = 208,desc = "ds5-loc2-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds5",id = 5000521,cardId = 1102020,lv = 70,bklv = 7,star = 2,mon = {id = 231,desc = "ds5-loc2-shl",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "ds5",id = 5000530,cardId = 1101003,lv = 70,bklv = 7,star = 2,mon = {id = 209,desc = "ds5-loc3-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds5",id = 5000531,cardId = 1102005,lv = 70,bklv = 7,star = 2,mon = {id = 232,desc = "ds5-loc3-shl",bsFac = 1,rou = 1}}
		}
	},
	[50006] = {
		[1] = {
			jlr = {cha = "ds6",id = 5000610,cardId = 1101007,lv = 80,bklv = 8,star = 3,mon = {id = 212,desc = "ds6-loc1-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds6",id = 5000611,cardId = 1102002,lv = 80,bklv = 8,star = 3,mon = {id = 236,desc = "ds6-loc1-shl",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "ds6",id = 5000620,cardId = 1101014,lv = 80,bklv = 8,star = 3,mon = {id = 208,desc = "ds6-loc2-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds6",id = 5000621,cardId = 1102020,lv = 80,bklv = 8,star = 3,mon = {id = 231,desc = "ds6-loc2-shl",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "ds6",id = 5000630,cardId = 1101003,lv = 80,bklv = 8,star = 3,mon = {id = 209,desc = "ds6-loc3-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds6",id = 5000631,cardId = 1102005,lv = 80,bklv = 8,star = 3,mon = {id = 232,desc = "ds6-loc3-shl",bsFac = 1,rou = 1}}
		}
	},
	[50007] = {
		[1] = {
			jlr = {cha = "ds7",id = 5000710,cardId = 1101007,lv = 80,bklv = 8,star = 3,mon = {id = 212,desc = "ds7-loc1-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds7",id = 5000711,cardId = 1102002,lv = 80,bklv = 8,star = 3,mon = {id = 236,desc = "ds7-loc1-shl",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "ds7",id = 5000720,cardId = 1101014,lv = 80,bklv = 8,star = 3,mon = {id = 208,desc = "ds7-loc2-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds7",id = 5000721,cardId = 1102020,lv = 80,bklv = 8,star = 3,mon = {id = 231,desc = "ds7-loc2-shl",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "ds7",id = 5000730,cardId = 1101003,lv = 80,bklv = 8,star = 3,mon = {id = 209,desc = "ds7-loc3-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds7",id = 5000731,cardId = 1102005,lv = 80,bklv = 8,star = 3,mon = {id = 232,desc = "ds7-loc3-shl",bsFac = 1,rou = 1}}
		}
	},
	[50008] = {
		[1] = {
			jlr = {cha = "ds8",id = 5000810,cardId = 1101007,lv = 80,bklv = 8,star = 3,mon = {id = 212,desc = "ds8-loc1-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds8",id = 5000811,cardId = 1102002,lv = 80,bklv = 8,star = 3,mon = {id = 236,desc = "ds8-loc1-shl",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "ds8",id = 5000820,cardId = 1101014,lv = 80,bklv = 8,star = 3,mon = {id = 208,desc = "ds8-loc2-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds8",id = 5000821,cardId = 1102020,lv = 80,bklv = 8,star = 3,mon = {id = 231,desc = "ds8-loc2-shl",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "ds8",id = 5000830,cardId = 1101003,lv = 80,bklv = 8,star = 3,mon = {id = 209,desc = "ds8-loc3-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds8",id = 5000831,cardId = 1102005,lv = 80,bklv = 8,star = 3,mon = {id = 232,desc = "ds8-loc3-shl",bsFac = 1,rou = 1}}
		}
	},
	[50009] = {
		[1] = {
			jlr = {cha = "ds9",id = 5000910,cardId = 1101007,lv = 90,bklv = 10,star = 3,mon = {id = 212,desc = "ds9-loc1-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds9",id = 5000911,cardId = 1102002,lv = 90,bklv = 10,star = 3,mon = {id = 236,desc = "ds9-loc1-shl",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "ds9",id = 5000920,cardId = 1101014,lv = 90,bklv = 10,star = 3,mon = {id = 208,desc = "ds9-loc2-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds9",id = 5000921,cardId = 1102020,lv = 90,bklv = 10,star = 3,mon = {id = 231,desc = "ds9-loc2-shl",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "ds9",id = 5000930,cardId = 1101003,lv = 90,bklv = 10,star = 3,mon = {id = 209,desc = "ds9-loc3-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "ds9",id = 5000931,cardId = 1102005,lv = 90,bklv = 10,star = 3,mon = {id = 232,desc = "ds9-loc3-shl",bsFac = 1,rou = 1}}
		}
	},
	[50010] = {
		[1] = {
			jlr = {cha = "tg1",id = 5001010,cardId = 1101007,lv = 100,bklv = 12,star = 4,mon = {id = 212,desc = "tg1-loc1-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "tg1",id = 5001011,cardId = 1102002,lv = 100,bklv = 12,star = 4,mon = {id = 236,desc = "tg1-loc1-shl",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tg1",id = 5001020,cardId = 1101014,lv = 100,bklv = 12,star = 4,mon = {id = 208,desc = "tg1-loc2-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "tg1",id = 5001021,cardId = 1102020,lv = 100,bklv = 12,star = 4,mon = {id = 231,desc = "tg1-loc2-shl",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tg1",id = 5001030,cardId = 1101003,lv = 100,bklv = 12,star = 4,mon = {id = 209,desc = "tg1-loc3-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "tg1",id = 5001031,cardId = 1102005,lv = 100,bklv = 12,star = 4,mon = {id = 232,desc = "tg1-loc3-shl",bsFac = 1,rou = 1}}
		}
	},
	[50011] = {
		[1] = {
			jlr = {cha = "tg2",id = 5001110,cardId = 1101007,lv = 100,bklv = 12,star = 4,mon = {id = 212,desc = "tg2-loc1-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "tg2",id = 5001111,cardId = 1102002,lv = 100,bklv = 12,star = 4,mon = {id = 236,desc = "tg2-loc1-shl",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tg2",id = 5001120,cardId = 1101014,lv = 100,bklv = 12,star = 4,mon = {id = 208,desc = "tg2-loc2-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "tg2",id = 5001121,cardId = 1102020,lv = 100,bklv = 12,star = 4,mon = {id = 231,desc = "tg2-loc2-shl",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tg2",id = 5001130,cardId = 1101003,lv = 100,bklv = 12,star = 4,mon = {id = 209,desc = "tg2-loc3-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "tg2",id = 5001131,cardId = 1102005,lv = 100,bklv = 12,star = 4,mon = {id = 232,desc = "tg2-loc3-shl",bsFac = 1,rou = 1}}
		}
	},
	[50012] = {
		[1] = {
			jlr = {cha = "tg3",id = 5001210,cardId = 1101007,lv = 100,bklv = 12,star = 5,mon = {id = 212,desc = "tg3-loc1-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "tg3",id = 5001211,cardId = 1102002,lv = 100,bklv = 12,star = 5,mon = {id = 236,desc = "tg3-loc1-shl",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tg3",id = 5001220,cardId = 1101014,lv = 100,bklv = 12,star = 5,mon = {id = 208,desc = "tg3-loc2-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "tg3",id = 5001221,cardId = 1102020,lv = 100,bklv = 12,star = 5,mon = {id = 231,desc = "tg3-loc2-shl",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tg3",id = 5001230,cardId = 1101003,lv = 100,bklv = 12,star = 5,mon = {id = 209,desc = "tg3-loc3-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "tg3",id = 5001231,cardId = 1102005,lv = 100,bklv = 12,star = 5,mon = {id = 232,desc = "tg3-loc3-shl",bsFac = 1,rou = 1}}
		}
	},
	[50013] = {
		[1] = {
			jlr = {cha = "tg4",id = 5001310,cardId = 1101007,lv = 110,bklv = 14,star = 5,mon = {id = 212,desc = "tg4-loc1-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "tg4",id = 5001311,cardId = 1102002,lv = 110,bklv = 14,star = 5,mon = {id = 236,desc = "tg4-loc1-shl",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tg4",id = 5001320,cardId = 1101014,lv = 110,bklv = 14,star = 5,mon = {id = 208,desc = "tg4-loc2-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "tg4",id = 5001321,cardId = 1102020,lv = 110,bklv = 14,star = 5,mon = {id = 231,desc = "tg4-loc2-shl",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tg4",id = 5001330,cardId = 1101003,lv = 110,bklv = 14,star = 5,mon = {id = 209,desc = "tg4-loc3-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "tg4",id = 5001331,cardId = 1102005,lv = 110,bklv = 14,star = 5,mon = {id = 232,desc = "tg4-loc3-shl",bsFac = 1,rou = 1}}
		}
	},
	[50014] = {
		[1] = {
			jlr = {cha = "tg5",id = 5001410,cardId = 1101007,lv = 120,bklv = 16,star = 5,mon = {id = 212,desc = "tg5-loc1-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "tg5",id = 5001411,cardId = 1102002,lv = 120,bklv = 16,star = 5,mon = {id = 236,desc = "tg5-loc1-shl",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tg5",id = 5001420,cardId = 1101014,lv = 120,bklv = 16,star = 5,mon = {id = 208,desc = "tg5-loc2-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "tg5",id = 5001421,cardId = 1102020,lv = 120,bklv = 16,star = 5,mon = {id = 231,desc = "tg5-loc2-shl",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tg5",id = 5001430,cardId = 1101003,lv = 120,bklv = 16,star = 5,mon = {id = 209,desc = "tg5-loc3-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "tg5",id = 5001431,cardId = 1102005,lv = 120,bklv = 16,star = 5,mon = {id = 232,desc = "tg5-loc3-shl",bsFac = 1,rou = 1}}
		}
	},
	[50015] = {
		[1] = {
			jlr = {cha = "tg6",id = 5001510,cardId = 1101007,lv = 130,bklv = 18,star = 5,mon = {id = 212,desc = "tg6-loc1-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "tg6",id = 5001511,cardId = 1102002,lv = 130,bklv = 18,star = 5,mon = {id = 236,desc = "tg6-loc1-shl",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "tg6",id = 5001520,cardId = 1101014,lv = 130,bklv = 18,star = 5,mon = {id = 208,desc = "tg6-loc2-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "tg6",id = 5001521,cardId = 1102020,lv = 130,bklv = 18,star = 5,mon = {id = 231,desc = "tg6-loc2-shl",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "tg6",id = 5001530,cardId = 1101003,lv = 130,bklv = 18,star = 5,mon = {id = 209,desc = "tg6-loc3-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "tg6",id = 5001531,cardId = 1102005,lv = 130,bklv = 18,star = 5,mon = {id = 232,desc = "tg6-loc3-shl",bsFac = 1,rou = 1}}
		}
	},
	[50016] = {
		[1] = {
			jlr = {cha = "xy",id = 5001610,cardId = 1101007,lv = 140,bklv = 20,star = 5,mon = {id = 212,desc = "xy-loc1-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "xy",id = 5001611,cardId = 1102002,lv = 140,bklv = 20,star = 5,mon = {id = 236,desc = "xy-loc1-shl",bsFac = 1,rou = 1}}
		},
		[2] = {
			jlr = {cha = "xy",id = 5001620,cardId = 1101014,lv = 140,bklv = 20,star = 5,mon = {id = 208,desc = "xy-loc2-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "xy",id = 5001621,cardId = 1102020,lv = 140,bklv = 20,star = 5,mon = {id = 231,desc = "xy-loc2-shl",bsFac = 1,rou = 1}}
		},
		[3] = {
			jlr = {cha = "xy",id = 5001630,cardId = 1101003,lv = 140,bklv = 20,star = 5,mon = {id = 209,desc = "xy-loc3-jlr",bsFac = 1,rou = 1}},
			shl = {cha = "xy",id = 5001631,cardId = 1102005,lv = 140,bklv = 20,star = 5,mon = {id = 232,desc = "xy-loc3-shl",bsFac = 1,rou = 1}}
		}
	}
}
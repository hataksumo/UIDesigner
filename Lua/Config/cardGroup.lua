--[[
--note:

colums:
{id,卡牌Id} ,{group,组} ,{loc,位置} ,{type,类型} ,{cardId,卡牌ID} ,{lv,等级} ,{bklv,突破} ,{star,星级} ,{ghost,魂火} ,{exWeapon[1],专属武器魂珠1} ,{exWeapon[2],专属武器魂珠2} ,{exWeapon[3],专属武器魂珠3} ,{exWeapon[4],专属武器魂珠4} ,{exWeapon[5],专属武器魂珠5} ,{exWeapon[6],专属武器魂珠6} ,{exWeapon[7],专属武器魂珠7} ,{exWeapon[8],专属武器魂珠8} ,{equip[1].id,装备1Id} ,{equip[1].lv,装备1强化} ,{equip[2].id,装备1Id} ,{equip[2].lv,装备1强化} ,{equip[3].id,装备1Id} ,{equip[3].lv,装备1强化} ,{equip[4].id,装备1Id} ,{equip[4].lv,装备1强化} ,{equip[5].id,装备1Id} ,{equip[5].lv,装备1强化} ,{equip[6].id,装备1Id} ,{equip[6].lv,装备1强化} ,{equip[7].id,装备1Id} ,{equip[7].lv,装备1强化} ,{equip[8].id,装备1Id} ,{equip[8].lv,装备1强化} ,{mon.id,怪物模组ID} ,{mon.srcLoc,源属性位} ,{mon.srcType,源属性类型} ,{mon.desc,备注} ,{mon.skillLv,技能等级} ,{mon.exert,施加攻击} ,{mon.suffer,承受攻击}
primary key:
#0 [卡牌组]: group,loc,type
]]
local _T = LangUtil.Language
return{
	[10101] = {
		[1] = {
			jlr = {id = 1010110,cardId = 1101041,lv = 1,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-1-1-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1010111,cardId = 1102050,lv = 1,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1010120,cardId = 1101002,lv = 1,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-1-1-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1010121,cardId = 1102004,lv = 1,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1010130,cardId = 1101001,lv = 1,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-1-1-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1010131,cardId = 1102015,lv = 1,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10102] = {
		[1] = {
			jlr = {id = 1010210,cardId = 1101041,lv = 2,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-1-2-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1010211,cardId = 1102050,lv = 2,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1010220,cardId = 1101002,lv = 2,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-1-2-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1010221,cardId = 1102004,lv = 2,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1010230,cardId = 1101001,lv = 2,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-1-2-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1010231,cardId = 1102015,lv = 2,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10103] = {
		[1] = {
			jlr = {id = 1010310,cardId = 1101041,lv = 2,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-1-3-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1010311,cardId = 1102050,lv = 2,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1010320,cardId = 1101002,lv = 2,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 297,srcLoc = 2,srcType = 1,desc = "pt-1-3-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1010321,cardId = 1102004,lv = 2,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1010330,cardId = 1101001,lv = 2,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-1-3-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1010331,cardId = 1102015,lv = 2,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10104] = {
		[1] = {
			jlr = {id = 1010410,cardId = 1101041,lv = 3,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-1-4-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1010411,cardId = 1102050,lv = 3,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1010420,cardId = 1101002,lv = 3,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-1-4-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1010421,cardId = 1102004,lv = 3,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1010430,cardId = 1101001,lv = 3,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-1-4-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1010431,cardId = 1102015,lv = 3,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10105] = {
		[1] = {
			jlr = {id = 1010510,cardId = 1101041,lv = 4,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-1-5-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1010511,cardId = 1102050,lv = 4,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1010520,cardId = 1101002,lv = 4,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-1-5-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1010521,cardId = 1102004,lv = 4,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1010530,cardId = 1101001,lv = 4,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-1-5-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1010531,cardId = 1102015,lv = 4,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10106] = {
		[1] = {
			jlr = {id = 1010610,cardId = 1101041,lv = 5,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-1-6-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1010611,cardId = 1102050,lv = 5,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1010620,cardId = 1101002,lv = 5,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-1-6-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1010621,cardId = 1102004,lv = 5,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1010630,cardId = 1101001,lv = 5,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-1-6-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1010631,cardId = 1102015,lv = 5,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10107] = {
		[1] = {
			jlr = {id = 1010710,cardId = 1101041,lv = 6,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-1-7-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1010711,cardId = 1102050,lv = 6,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1010720,cardId = 1101002,lv = 6,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 297,srcLoc = 2,srcType = 1,desc = "pt-1-7-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1010721,cardId = 1102004,lv = 6,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1010730,cardId = 1101001,lv = 6,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-1-7-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1010731,cardId = 1102015,lv = 6,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10108] = {
		[1] = {
			jlr = {id = 1010810,cardId = 1101041,lv = 7,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-1-8-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1010811,cardId = 1102050,lv = 7,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1010820,cardId = 1101002,lv = 7,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-1-8-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1010821,cardId = 1102004,lv = 7,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1010830,cardId = 1101001,lv = 7,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-1-8-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1010831,cardId = 1102015,lv = 7,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10109] = {
		[1] = {
			jlr = {id = 1010910,cardId = 1101041,lv = 7,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-1-9-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1010911,cardId = 1102050,lv = 7,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1010920,cardId = 1101002,lv = 7,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-1-9-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1010921,cardId = 1102004,lv = 7,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1010930,cardId = 1101001,lv = 7,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-1-9-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1010931,cardId = 1102015,lv = 7,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10110] = {
		[1] = {
			jlr = {id = 1011010,cardId = 1101041,lv = 8,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-1-10-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1011011,cardId = 1102050,lv = 8,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1011020,cardId = 1101002,lv = 8,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 298,srcLoc = 2,srcType = 1,desc = "pt-1-10-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1011021,cardId = 1102004,lv = 8,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1011030,cardId = 1101001,lv = 8,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-1-10-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1011031,cardId = 1102015,lv = 8,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10201] = {
		[1] = {
			jlr = {id = 1020110,cardId = 1101041,lv = 9,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-2-1-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1020111,cardId = 1102050,lv = 9,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1020120,cardId = 1101002,lv = 9,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-2-1-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1020121,cardId = 1102004,lv = 9,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1020130,cardId = 1101001,lv = 9,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-2-1-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1020131,cardId = 1102015,lv = 9,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10202] = {
		[1] = {
			jlr = {id = 1020210,cardId = 1101041,lv = 10,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-2-2-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1020211,cardId = 1102050,lv = 10,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1020220,cardId = 1101002,lv = 10,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-2-2-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1020221,cardId = 1102004,lv = 10,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1020230,cardId = 1101001,lv = 10,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-2-2-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1020231,cardId = 1102015,lv = 10,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10203] = {
		[1] = {
			jlr = {id = 1020310,cardId = 1101041,lv = 10,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-2-3-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1020311,cardId = 1102050,lv = 10,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1020320,cardId = 1101002,lv = 10,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 301,srcLoc = 2,srcType = 1,desc = "pt-2-3-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1020321,cardId = 1102004,lv = 10,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1020330,cardId = 1101001,lv = 10,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-2-3-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1020331,cardId = 1102015,lv = 10,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10204] = {
		[1] = {
			jlr = {id = 1020410,cardId = 1101041,lv = 11,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-2-4-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1020411,cardId = 1102050,lv = 11,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1020420,cardId = 1101002,lv = 11,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-2-4-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1020421,cardId = 1102004,lv = 11,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1020430,cardId = 1101001,lv = 11,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-2-4-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1020431,cardId = 1102015,lv = 11,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10205] = {
		[1] = {
			jlr = {id = 1020510,cardId = 1101041,lv = 11,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-2-5-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1020511,cardId = 1102050,lv = 11,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1020520,cardId = 1101002,lv = 11,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-2-5-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1020521,cardId = 1102004,lv = 11,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1020530,cardId = 1101001,lv = 11,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-2-5-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1020531,cardId = 1102015,lv = 11,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10206] = {
		[1] = {
			jlr = {id = 1020610,cardId = 1101041,lv = 11,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-2-6-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1020611,cardId = 1102050,lv = 11,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1020620,cardId = 1101002,lv = 11,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-2-6-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1020621,cardId = 1102004,lv = 11,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1020630,cardId = 1101001,lv = 11,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-2-6-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1020631,cardId = 1102015,lv = 11,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10207] = {
		[1] = {
			jlr = {id = 1020710,cardId = 1101041,lv = 12,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 301,srcLoc = 2,srcType = 1,desc = "pt-2-7-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1020711,cardId = 1102050,lv = 12,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1020720,cardId = 1101002,lv = 12,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 299,srcLoc = 2,srcType = 1,desc = "pt-2-7-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1020721,cardId = 1102004,lv = 12,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1020730,cardId = 1101001,lv = 12,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 301,srcLoc = 2,srcType = 1,desc = "pt-2-7-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1020731,cardId = 1102015,lv = 12,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10208] = {
		[1] = {
			jlr = {id = 1020810,cardId = 1101041,lv = 12,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-2-8-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1020811,cardId = 1102050,lv = 12,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1020820,cardId = 1101002,lv = 12,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-2-8-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1020821,cardId = 1102004,lv = 12,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1020830,cardId = 1101001,lv = 12,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-2-8-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1020831,cardId = 1102015,lv = 12,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10209] = {
		[1] = {
			jlr = {id = 1020910,cardId = 1101001,lv = 12,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-2-9-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1020911,cardId = 1102002,lv = 12,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 0}}}
		},
		[2] = {
			jlr = {id = 1020920,cardId = 1101003,lv = 12,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-2-9-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1020921,cardId = 1102005,lv = 12,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 0}}}
		},
		[3] = {
			jlr = {id = 1020930,cardId = 1101002,lv = 12,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-2-9-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1020931,cardId = 1102004,lv = 12,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 0}}}
		}
	},
	[10210] = {
		[1] = {
			jlr = {id = 1021010,cardId = 1101001,lv = 12,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2001301,lv = 2}},mon = {id = 301,srcLoc = 2,srcType = 1,desc = "pt-2-10-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1021011,cardId = 1102002,lv = 12,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 0}}}
		},
		[2] = {
			jlr = {id = 1021020,cardId = 1101003,lv = 12,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2001301,lv = 2}},mon = {id = 300,srcLoc = 2,srcType = 1,desc = "pt-2-10-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1021021,cardId = 1102005,lv = 12,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 0}}}
		},
		[3] = {
			jlr = {id = 1021030,cardId = 1101002,lv = 12,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2001301,lv = 2}},mon = {id = 301,srcLoc = 2,srcType = 1,desc = "pt-2-10-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1021031,cardId = 1102004,lv = 12,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 0}}}
		}
	},
	[10301] = {
		[1] = {
			jlr = {id = 1030110,cardId = 1101001,lv = 13,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2001301,lv = 4},[2] = {id = 2001302,lv = 4}},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-3-1-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1030111,cardId = 1102002,lv = 13,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 4},[2] = {id = 2101302,lv = 4}}}
		},
		[2] = {
			jlr = {id = 1030120,cardId = 1101003,lv = 13,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2001301,lv = 4},[2] = {id = 2001302,lv = 4}},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-3-1-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1030121,cardId = 1102005,lv = 13,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 4},[2] = {id = 2101302,lv = 4}}}
		},
		[3] = {
			jlr = {id = 1030130,cardId = 1101002,lv = 13,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2001301,lv = 4},[2] = {id = 2001302,lv = 4}},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-3-1-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1030131,cardId = 1102004,lv = 13,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 4},[2] = {id = 2101302,lv = 4}}}
		}
	},
	[10302] = {
		[1] = {
			jlr = {id = 1030210,cardId = 1101001,lv = 13,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2001301,lv = 4},[2] = {id = 2001302,lv = 4}},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-3-2-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1030211,cardId = 1102002,lv = 13,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 6},[2] = {id = 2101302,lv = 6},[3] = {id = 2101303,lv = 6}}}
		},
		[2] = {
			jlr = {id = 1030220,cardId = 1101003,lv = 13,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2001301,lv = 4},[2] = {id = 2001302,lv = 4}},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-3-2-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1030221,cardId = 1102005,lv = 13,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 6},[2] = {id = 2101302,lv = 6},[3] = {id = 2101303,lv = 6}}}
		},
		[3] = {
			jlr = {id = 1030230,cardId = 1101002,lv = 13,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2001301,lv = 4},[2] = {id = 2001302,lv = 4}},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-3-2-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1030231,cardId = 1102004,lv = 13,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 6},[2] = {id = 2101302,lv = 6},[3] = {id = 2101303,lv = 6}}}
		}
	},
	[10303] = {
		[1] = {
			jlr = {id = 1030310,cardId = 1101001,lv = 13,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2001301,lv = 8},[2] = {id = 2001302,lv = 8},[3] = {id = 2001303,lv = 8}},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-3-3-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1030311,cardId = 1102002,lv = 13,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 6},[2] = {id = 2101302,lv = 6},[3] = {id = 2101303,lv = 6}}}
		},
		[2] = {
			jlr = {id = 1030320,cardId = 1101003,lv = 13,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2001301,lv = 8},[2] = {id = 2001302,lv = 8},[3] = {id = 2001303,lv = 8}},mon = {id = 303,srcLoc = 2,srcType = 1,desc = "pt-3-3-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1030321,cardId = 1102005,lv = 13,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 6},[2] = {id = 2101302,lv = 6},[3] = {id = 2101303,lv = 6}}}
		},
		[3] = {
			jlr = {id = 1030330,cardId = 1101002,lv = 13,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2001301,lv = 8},[2] = {id = 2001302,lv = 8},[3] = {id = 2001303,lv = 8}},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-3-3-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1030331,cardId = 1102004,lv = 13,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 6},[2] = {id = 2101302,lv = 6},[3] = {id = 2101303,lv = 6}}}
		}
	},
	[10304] = {
		[1] = {
			jlr = {id = 1030410,cardId = 1101001,lv = 14,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2001301,lv = 9},[2] = {id = 2001302,lv = 9},[3] = {id = 2001303,lv = 9},[4] = {id = 2001304,lv = 9}},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-3-4-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1030411,cardId = 1102002,lv = 14,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 9},[2] = {id = 2101302,lv = 9},[3] = {id = 2101303,lv = 9},[4] = {id = 2101304,lv = 9}}}
		},
		[2] = {
			jlr = {id = 1030420,cardId = 1101003,lv = 14,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2001301,lv = 9},[2] = {id = 2001302,lv = 9},[3] = {id = 2001303,lv = 9},[4] = {id = 2001304,lv = 9}},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-3-4-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1030421,cardId = 1102005,lv = 14,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 9},[2] = {id = 2101302,lv = 9},[3] = {id = 2101303,lv = 9},[4] = {id = 2101304,lv = 9}}}
		},
		[3] = {
			jlr = {id = 1030430,cardId = 1101002,lv = 14,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2001301,lv = 9},[2] = {id = 2001302,lv = 9},[3] = {id = 2001303,lv = 9},[4] = {id = 2001304,lv = 9}},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-3-4-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1030431,cardId = 1102004,lv = 14,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 9},[2] = {id = 2101302,lv = 9},[3] = {id = 2101303,lv = 9},[4] = {id = 2101304,lv = 9}}}
		}
	},
	[10305] = {
		[1] = {
			jlr = {id = 1030510,cardId = 1101001,lv = 14,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2001301,lv = 10},[2] = {id = 2001302,lv = 10},[3] = {id = 2001303,lv = 10},[4] = {id = 2001304,lv = 10},[5] = {id = 2001305,lv = 10}},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-3-5-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1030511,cardId = 1102002,lv = 14,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 10},[2] = {id = 2101302,lv = 10},[3] = {id = 2101303,lv = 10},[4] = {id = 2101304,lv = 10},[5] = {id = 2101305,lv = 10}}}
		},
		[2] = {
			jlr = {id = 1030520,cardId = 1101003,lv = 14,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2001301,lv = 10},[2] = {id = 2001302,lv = 10},[3] = {id = 2001303,lv = 10},[4] = {id = 2001304,lv = 10},[5] = {id = 2001305,lv = 10}},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-3-5-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1030521,cardId = 1102005,lv = 14,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 10},[2] = {id = 2101302,lv = 10},[3] = {id = 2101303,lv = 10},[4] = {id = 2101304,lv = 10},[5] = {id = 2101305,lv = 10}}}
		},
		[3] = {
			jlr = {id = 1030530,cardId = 1101002,lv = 14,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2001301,lv = 10},[2] = {id = 2001302,lv = 10},[3] = {id = 2001303,lv = 10},[4] = {id = 2001304,lv = 10},[5] = {id = 2001305,lv = 10}},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-3-5-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1030531,cardId = 1102004,lv = 14,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 10},[2] = {id = 2101302,lv = 10},[3] = {id = 2101303,lv = 10},[4] = {id = 2101304,lv = 10},[5] = {id = 2101305,lv = 10}}}
		}
	},
	[10306] = {
		[1] = {
			jlr = {id = 1030610,cardId = 1101001,lv = 14,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2001301,lv = 12},[2] = {id = 2001302,lv = 12},[3] = {id = 2001303,lv = 12},[4] = {id = 2001304,lv = 12},[5] = {id = 2001305,lv = 12},[6] = {id = 2001306,lv = 12}},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-3-6-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1030611,cardId = 1102002,lv = 14,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 12},[2] = {id = 2101302,lv = 12},[3] = {id = 2101303,lv = 12},[4] = {id = 2101304,lv = 12},[5] = {id = 2101305,lv = 12},[6] = {id = 2101306,lv = 12}}}
		},
		[2] = {
			jlr = {id = 1030620,cardId = 1101003,lv = 14,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2001301,lv = 12},[2] = {id = 2001302,lv = 12},[3] = {id = 2001303,lv = 12},[4] = {id = 2001304,lv = 12},[5] = {id = 2001305,lv = 12},[6] = {id = 2001306,lv = 12}},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-3-6-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1030621,cardId = 1102005,lv = 14,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 12},[2] = {id = 2101302,lv = 12},[3] = {id = 2101303,lv = 12},[4] = {id = 2101304,lv = 12},[5] = {id = 2101305,lv = 12},[6] = {id = 2101306,lv = 12}}}
		},
		[3] = {
			jlr = {id = 1030630,cardId = 1101002,lv = 14,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2001301,lv = 12},[2] = {id = 2001302,lv = 12},[3] = {id = 2001303,lv = 12},[4] = {id = 2001304,lv = 12},[5] = {id = 2001305,lv = 12},[6] = {id = 2001306,lv = 12}},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-3-6-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1030631,cardId = 1102004,lv = 14,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 12},[2] = {id = 2101302,lv = 12},[3] = {id = 2101303,lv = 12},[4] = {id = 2101304,lv = 12},[5] = {id = 2101305,lv = 12},[6] = {id = 2101306,lv = 12}}}
		}
	},
	[10307] = {
		[1] = {
			jlr = {id = 1030710,cardId = 1101001,lv = 14,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2001301,lv = 12},[2] = {id = 2001302,lv = 12},[3] = {id = 2001303,lv = 12},[4] = {id = 2001304,lv = 12},[5] = {id = 2001305,lv = 12},[6] = {id = 2001306,lv = 12}},mon = {id = 303,srcLoc = 2,srcType = 1,desc = "pt-3-7-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1030711,cardId = 1102002,lv = 14,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 14},[2] = {id = 2101302,lv = 14},[3] = {id = 2101303,lv = 14},[4] = {id = 2101304,lv = 14},[5] = {id = 2101305,lv = 14},[6] = {id = 2101306,lv = 14},[7] = {id = 2101307,lv = 14}}}
		},
		[2] = {
			jlr = {id = 1030720,cardId = 1101003,lv = 14,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2001301,lv = 12},[2] = {id = 2001302,lv = 12},[3] = {id = 2001303,lv = 12},[4] = {id = 2001304,lv = 12},[5] = {id = 2001305,lv = 12},[6] = {id = 2001306,lv = 12}},mon = {id = 300,srcLoc = 2,srcType = 1,desc = "pt-3-7-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1030721,cardId = 1102005,lv = 14,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 14},[2] = {id = 2101302,lv = 14},[3] = {id = 2101303,lv = 14},[4] = {id = 2101304,lv = 14},[5] = {id = 2101305,lv = 14},[6] = {id = 2101306,lv = 14},[7] = {id = 2101307,lv = 14}}}
		},
		[3] = {
			jlr = {id = 1030730,cardId = 1101002,lv = 14,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2001301,lv = 12},[2] = {id = 2001302,lv = 12},[3] = {id = 2001303,lv = 12},[4] = {id = 2001304,lv = 12},[5] = {id = 2001305,lv = 12},[6] = {id = 2001306,lv = 12}},mon = {id = 303,srcLoc = 2,srcType = 1,desc = "pt-3-7-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1030731,cardId = 1102004,lv = 14,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 14},[2] = {id = 2101302,lv = 14},[3] = {id = 2101303,lv = 14},[4] = {id = 2101304,lv = 14},[5] = {id = 2101305,lv = 14},[6] = {id = 2101306,lv = 14},[7] = {id = 2101307,lv = 14}}}
		}
	},
	[10308] = {
		[1] = {
			jlr = {id = 1030810,cardId = 1101001,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2001301,lv = 16},[2] = {id = 2001302,lv = 16},[3] = {id = 2001303,lv = 16},[4] = {id = 2001304,lv = 16},[5] = {id = 2001305,lv = 16},[6] = {id = 2001306,lv = 16},[7] = {id = 2001307,lv = 16},[8] = {id = 2001308,lv = 16}},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-3-8-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1030811,cardId = 1102002,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 14},[2] = {id = 2101302,lv = 14},[3] = {id = 2101303,lv = 14},[4] = {id = 2101304,lv = 14},[5] = {id = 2101305,lv = 14},[6] = {id = 2101306,lv = 14},[7] = {id = 2101307,lv = 14},[8] = {id = 2101308,lv = 14}}}
		},
		[2] = {
			jlr = {id = 1030820,cardId = 1101003,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2001301,lv = 16},[2] = {id = 2001302,lv = 16},[3] = {id = 2001303,lv = 16},[4] = {id = 2001304,lv = 16},[5] = {id = 2001305,lv = 16},[6] = {id = 2001306,lv = 16},[7] = {id = 2001307,lv = 16},[8] = {id = 2001308,lv = 16}},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-3-8-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1030821,cardId = 1102005,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 14},[2] = {id = 2101302,lv = 14},[3] = {id = 2101303,lv = 14},[4] = {id = 2101304,lv = 14},[5] = {id = 2101305,lv = 14},[6] = {id = 2101306,lv = 14},[7] = {id = 2101307,lv = 14},[8] = {id = 2101308,lv = 14}}}
		},
		[3] = {
			jlr = {id = 1030830,cardId = 1101002,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2001301,lv = 16},[2] = {id = 2001302,lv = 16},[3] = {id = 2001303,lv = 16},[4] = {id = 2001304,lv = 16},[5] = {id = 2001305,lv = 16},[6] = {id = 2001306,lv = 16},[7] = {id = 2001307,lv = 16},[8] = {id = 2001308,lv = 16}},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-3-8-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1030831,cardId = 1102004,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 14},[2] = {id = 2101302,lv = 14},[3] = {id = 2101303,lv = 14},[4] = {id = 2101304,lv = 14},[5] = {id = 2101305,lv = 14},[6] = {id = 2101306,lv = 14},[7] = {id = 2101307,lv = 14},[8] = {id = 2101308,lv = 14}}}
		}
	},
	[10309] = {
		[1] = {
			jlr = {id = 1030910,cardId = 1101001,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 1,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-3-9-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1030911,cardId = 1102002,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 1,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[2] = {
			jlr = {id = 1030920,cardId = 1101003,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 1,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-3-9-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1030921,cardId = 1102005,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 1,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[3] = {
			jlr = {id = 1030930,cardId = 1101002,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 1,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-3-9-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1030931,cardId = 1102004,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 1,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		}
	},
	[10310] = {
		[1] = {
			jlr = {id = 1031010,cardId = 1101001,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 298,srcLoc = 2,srcType = 1,desc = "pt-3-10-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1031011,cardId = 1102002,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[2] = {
			jlr = {id = 1031020,cardId = 1101003,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 304,srcLoc = 2,srcType = 1,desc = "pt-3-10-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1031021,cardId = 1102005,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[3] = {
			jlr = {id = 1031030,cardId = 1101002,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 298,srcLoc = 2,srcType = 1,desc = "pt-3-10-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1031031,cardId = 1102004,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		}
	},
	[10401] = {
		[1] = {
			jlr = {id = 1040110,cardId = 1101001,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 3,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-4-1-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1040111,cardId = 1102002,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 3,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[2] = {
			jlr = {id = 1040120,cardId = 1101003,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 3,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-4-1-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1040121,cardId = 1102005,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 3,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[3] = {
			jlr = {id = 1040130,cardId = 1101002,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 3,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-4-1-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1040131,cardId = 1102004,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 3,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		}
	},
	[10402] = {
		[1] = {
			jlr = {id = 1040210,cardId = 1101001,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 4,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-4-2-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1040211,cardId = 1102002,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 4,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[2] = {
			jlr = {id = 1040220,cardId = 1101003,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 4,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-4-2-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1040221,cardId = 1102005,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 4,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[3] = {
			jlr = {id = 1040230,cardId = 1101002,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 4,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-4-2-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1040231,cardId = 1102004,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 4,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		}
	},
	[10403] = {
		[1] = {
			jlr = {id = 1040310,cardId = 1101001,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 5,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 306,srcLoc = 2,srcType = 1,desc = "pt-4-3-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1040311,cardId = 1102002,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 5,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[2] = {
			jlr = {id = 1040320,cardId = 1101003,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 5,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 306,srcLoc = 2,srcType = 1,desc = "pt-4-3-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1040321,cardId = 1102005,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 5,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[3] = {
			jlr = {id = 1040330,cardId = 1101002,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 5,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 306,srcLoc = 2,srcType = 1,desc = "pt-4-3-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1040331,cardId = 1102004,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 5,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		}
	},
	[10404] = {
		[1] = {
			jlr = {id = 1040410,cardId = 1101001,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 6,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-4-4-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1040411,cardId = 1102002,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 6,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[2] = {
			jlr = {id = 1040420,cardId = 1101003,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 6,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-4-4-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1040421,cardId = 1102005,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 6,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[3] = {
			jlr = {id = 1040430,cardId = 1101002,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 6,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-4-4-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1040431,cardId = 1102004,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 6,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		}
	},
	[10405] = {
		[1] = {
			jlr = {id = 1040510,cardId = 1101001,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-4-5-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1040511,cardId = 1102002,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[2] = {
			jlr = {id = 1040520,cardId = 1101003,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-4-5-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1040521,cardId = 1102005,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[3] = {
			jlr = {id = 1040530,cardId = 1101002,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-4-5-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1040531,cardId = 1102004,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		}
	},
	[10406] = {
		[1] = {
			jlr = {id = 1040610,cardId = 1101001,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-4-6-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1040611,cardId = 1102002,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[2] = {
			jlr = {id = 1040620,cardId = 1101003,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-4-6-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1040621,cardId = 1102005,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[3] = {
			jlr = {id = 1040630,cardId = 1101002,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-4-6-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1040631,cardId = 1102004,lv = 15,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		}
	},
	[10407] = {
		[1] = {
			jlr = {id = 1040710,cardId = 1101001,lv = 16,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 2,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 306,srcLoc = 2,srcType = 1,desc = "pt-4-7-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1040711,cardId = 1102002,lv = 16,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 2,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[2] = {
			jlr = {id = 1040720,cardId = 1101003,lv = 16,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 2,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 306,srcLoc = 2,srcType = 1,desc = "pt-4-7-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1040721,cardId = 1102005,lv = 16,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 2,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[3] = {
			jlr = {id = 1040730,cardId = 1101002,lv = 16,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 2,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 306,srcLoc = 2,srcType = 1,desc = "pt-4-7-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1040731,cardId = 1102004,lv = 16,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 2,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		}
	},
	[10408] = {
		[1] = {
			jlr = {id = 1040810,cardId = 1101001,lv = 16,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-4-8-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1040811,cardId = 1102002,lv = 16,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[2] = {
			jlr = {id = 1040820,cardId = 1101003,lv = 16,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-4-8-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1040821,cardId = 1102005,lv = 16,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[3] = {
			jlr = {id = 1040830,cardId = 1101002,lv = 16,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-4-8-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1040831,cardId = 1102004,lv = 16,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		}
	},
	[10409] = {
		[1] = {
			jlr = {id = 1040910,cardId = 1101001,lv = 16,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-4-9-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1040911,cardId = 1102002,lv = 16,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[2] = {
			jlr = {id = 1040920,cardId = 1101003,lv = 16,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-4-9-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1040921,cardId = 1102005,lv = 16,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[3] = {
			jlr = {id = 1040930,cardId = 1101002,lv = 16,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-4-9-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1040931,cardId = 1102004,lv = 16,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		}
	},
	[10410] = {
		[1] = {
			jlr = {id = 1041010,cardId = 1101001,lv = 16,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 1,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 306,srcLoc = 2,srcType = 1,desc = "pt-4-10-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1041011,cardId = 1102002,lv = 16,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 1,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[2] = {
			jlr = {id = 1041020,cardId = 1101003,lv = 16,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 1,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 305,srcLoc = 2,srcType = 1,desc = "pt-4-10-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1041021,cardId = 1102005,lv = 16,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 1,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[3] = {
			jlr = {id = 1041030,cardId = 1101002,lv = 16,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 1,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 306,srcLoc = 2,srcType = 1,desc = "pt-4-10-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1041031,cardId = 1102004,lv = 16,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 1,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		}
	},
	[10501] = {
		[1] = {
			jlr = {id = 1050110,cardId = 1101001,lv = 16,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 1,[6] = 1,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-5-1-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1050111,cardId = 1102002,lv = 16,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 1,[6] = 1,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[2] = {
			jlr = {id = 1050120,cardId = 1101003,lv = 16,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 1,[6] = 1,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-5-1-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1050121,cardId = 1102005,lv = 16,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 1,[6] = 1,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[3] = {
			jlr = {id = 1050130,cardId = 1101002,lv = 16,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 1,[6] = 1,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-5-1-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1050131,cardId = 1102004,lv = 16,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 1,[6] = 1,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		}
	},
	[10502] = {
		[1] = {
			jlr = {id = 1050210,cardId = 1101001,lv = 16,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 1,[6] = 1,[7] = 1,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-5-2-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1050211,cardId = 1102002,lv = 16,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 1,[6] = 1,[7] = 1,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[2] = {
			jlr = {id = 1050220,cardId = 1101003,lv = 16,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 1,[6] = 1,[7] = 1,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-5-2-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1050221,cardId = 1102005,lv = 16,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 1,[6] = 1,[7] = 1,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[3] = {
			jlr = {id = 1050230,cardId = 1101002,lv = 16,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 1,[6] = 1,[7] = 1,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-5-2-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1050231,cardId = 1102004,lv = 16,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 1,[6] = 1,[7] = 1,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		}
	},
	[10503] = {
		[1] = {
			jlr = {id = 1050310,cardId = 1101001,lv = 16,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 1,[6] = 1,[7] = 1,[8] = 1},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-5-3-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1050311,cardId = 1102002,lv = 16,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 1,[6] = 1,[7] = 1,[8] = 1},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[2] = {
			jlr = {id = 1050320,cardId = 1101003,lv = 16,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 1,[6] = 1,[7] = 1,[8] = 1},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-5-3-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1050321,cardId = 1102005,lv = 16,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 1,[6] = 1,[7] = 1,[8] = 1},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[3] = {
			jlr = {id = 1050330,cardId = 1101002,lv = 16,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 1,[6] = 1,[7] = 1,[8] = 1},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-5-3-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1050331,cardId = 1102004,lv = 16,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 1,[6] = 1,[7] = 1,[8] = 1},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		}
	},
	[10504] = {
		[1] = {
			jlr = {id = 1050410,cardId = 1101001,lv = 16,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-5-4-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1050411,cardId = 1102002,lv = 16,bklv = 2,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[2] = {
			jlr = {id = 1050420,cardId = 1101003,lv = 16,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-5-4-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1050421,cardId = 1102005,lv = 16,bklv = 2,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[3] = {
			jlr = {id = 1050430,cardId = 1101002,lv = 16,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-5-4-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1050431,cardId = 1102004,lv = 16,bklv = 2,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		}
	},
	[10505] = {
		[1] = {
			jlr = {id = 1050510,cardId = 1101001,lv = 17,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-5-5-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1050511,cardId = 1102002,lv = 17,bklv = 2,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[2] = {
			jlr = {id = 1050520,cardId = 1101003,lv = 17,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-5-5-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1050521,cardId = 1102005,lv = 17,bklv = 2,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[3] = {
			jlr = {id = 1050530,cardId = 1101002,lv = 17,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-5-5-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1050531,cardId = 1102004,lv = 17,bklv = 2,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		}
	},
	[10506] = {
		[1] = {
			jlr = {id = 1050610,cardId = 1101001,lv = 17,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-5-6-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1050611,cardId = 1102002,lv = 17,bklv = 2,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[2] = {
			jlr = {id = 1050620,cardId = 1101003,lv = 17,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-5-6-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1050621,cardId = 1102005,lv = 17,bklv = 2,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[3] = {
			jlr = {id = 1050630,cardId = 1101002,lv = 17,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-5-6-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1050631,cardId = 1102004,lv = 17,bklv = 2,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		}
	},
	[10507] = {
		[1] = {
			jlr = {id = 1050710,cardId = 1101001,lv = 17,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-5-7-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1050711,cardId = 1102002,lv = 17,bklv = 2,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[2] = {
			jlr = {id = 1050720,cardId = 1101003,lv = 17,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-5-7-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1050721,cardId = 1102005,lv = 17,bklv = 2,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[3] = {
			jlr = {id = 1050730,cardId = 1101002,lv = 17,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-5-7-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1050731,cardId = 1102004,lv = 17,bklv = 2,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		}
	},
	[10508] = {
		[1] = {
			jlr = {id = 1050810,cardId = 1101001,lv = 17,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-5-8-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1050811,cardId = 1102002,lv = 17,bklv = 3,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[2] = {
			jlr = {id = 1050820,cardId = 1101003,lv = 17,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-5-8-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1050821,cardId = 1102005,lv = 17,bklv = 3,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[3] = {
			jlr = {id = 1050830,cardId = 1101002,lv = 17,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-5-8-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1050831,cardId = 1102004,lv = 17,bklv = 3,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		}
	},
	[10509] = {
		[1] = {
			jlr = {id = 1050910,cardId = 1101001,lv = 17,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-5-9-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1050911,cardId = 1102002,lv = 17,bklv = 3,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[2] = {
			jlr = {id = 1050920,cardId = 1101003,lv = 17,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-5-9-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1050921,cardId = 1102005,lv = 17,bklv = 3,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[3] = {
			jlr = {id = 1050930,cardId = 1101002,lv = 17,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-5-9-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1050931,cardId = 1102004,lv = 17,bklv = 3,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		}
	},
	[10510] = {
		[1] = {
			jlr = {id = 1051010,cardId = 1101001,lv = 17,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-5-10-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1051011,cardId = 1102002,lv = 17,bklv = 3,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[2] = {
			jlr = {id = 1051020,cardId = 1101003,lv = 17,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-5-10-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1051021,cardId = 1102005,lv = 17,bklv = 3,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[3] = {
			jlr = {id = 1051030,cardId = 1101002,lv = 17,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-5-10-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1051031,cardId = 1102004,lv = 17,bklv = 3,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		}
	},
	[10601] = {
		[1] = {
			jlr = {id = 1060110,cardId = 1101001,lv = 17,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-6-1-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1060111,cardId = 1102002,lv = 17,bklv = 3,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[2] = {
			jlr = {id = 1060120,cardId = 1101003,lv = 17,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-6-1-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1060121,cardId = 1102005,lv = 17,bklv = 3,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[3] = {
			jlr = {id = 1060130,cardId = 1101002,lv = 17,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-6-1-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1060131,cardId = 1102004,lv = 17,bklv = 3,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		}
	},
	[10602] = {
		[1] = {
			jlr = {id = 1060210,cardId = 1101001,lv = 17,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-6-2-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1060211,cardId = 1102002,lv = 17,bklv = 3,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[2] = {
			jlr = {id = 1060220,cardId = 1101003,lv = 17,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-6-2-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1060221,cardId = 1102005,lv = 17,bklv = 3,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[3] = {
			jlr = {id = 1060230,cardId = 1101002,lv = 17,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-6-2-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1060231,cardId = 1102004,lv = 17,bklv = 3,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		}
	},
	[10603] = {
		[1] = {
			jlr = {id = 1060310,cardId = 1101001,lv = 17,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-6-3-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1060311,cardId = 1102002,lv = 17,bklv = 3,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[2] = {
			jlr = {id = 1060320,cardId = 1101003,lv = 17,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-6-3-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1060321,cardId = 1102005,lv = 17,bklv = 3,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[3] = {
			jlr = {id = 1060330,cardId = 1101002,lv = 17,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-6-3-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1060331,cardId = 1102004,lv = 17,bklv = 3,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		}
	},
	[10604] = {
		[1] = {
			jlr = {id = 1060410,cardId = 1101001,lv = 18,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-6-4-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1060411,cardId = 1102002,lv = 18,bklv = 3,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[2] = {
			jlr = {id = 1060420,cardId = 1101003,lv = 18,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-6-4-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1060421,cardId = 1102005,lv = 18,bklv = 3,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[3] = {
			jlr = {id = 1060430,cardId = 1101002,lv = 18,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-6-4-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1060431,cardId = 1102004,lv = 18,bklv = 3,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		}
	},
	[10605] = {
		[1] = {
			jlr = {id = 1060510,cardId = 1101001,lv = 18,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-6-5-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1060511,cardId = 1102002,lv = 18,bklv = 3,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[2] = {
			jlr = {id = 1060520,cardId = 1101003,lv = 18,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-6-5-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1060521,cardId = 1102005,lv = 18,bklv = 3,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[3] = {
			jlr = {id = 1060530,cardId = 1101002,lv = 18,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-6-5-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1060531,cardId = 1102004,lv = 18,bklv = 3,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		}
	},
	[10606] = {
		[1] = {
			jlr = {id = 1060610,cardId = 1101001,lv = 18,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-6-6-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1060611,cardId = 1102002,lv = 18,bklv = 3,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[2] = {
			jlr = {id = 1060620,cardId = 1101003,lv = 18,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-6-6-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1060621,cardId = 1102005,lv = 18,bklv = 3,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[3] = {
			jlr = {id = 1060630,cardId = 1101002,lv = 18,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-6-6-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1060631,cardId = 1102004,lv = 18,bklv = 3,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		}
	},
	[10607] = {
		[1] = {
			jlr = {id = 1060710,cardId = 1101001,lv = 18,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-6-7-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1060711,cardId = 1102002,lv = 18,bklv = 3,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[2] = {
			jlr = {id = 1060720,cardId = 1101003,lv = 18,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-6-7-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1060721,cardId = 1102005,lv = 18,bklv = 3,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[3] = {
			jlr = {id = 1060730,cardId = 1101002,lv = 18,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-6-7-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1060731,cardId = 1102004,lv = 18,bklv = 3,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		}
	},
	[10608] = {
		[1] = {
			jlr = {id = 1060810,cardId = 1101001,lv = 18,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-6-8-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1060811,cardId = 1102002,lv = 18,bklv = 3,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[2] = {
			jlr = {id = 1060820,cardId = 1101003,lv = 18,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-6-8-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1060821,cardId = 1102005,lv = 18,bklv = 3,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[3] = {
			jlr = {id = 1060830,cardId = 1101002,lv = 18,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-6-8-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1060831,cardId = 1102004,lv = 18,bklv = 3,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		}
	},
	[10609] = {
		[1] = {
			jlr = {id = 1060910,cardId = 1101001,lv = 18,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-6-9-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1060911,cardId = 1102002,lv = 18,bklv = 3,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[2] = {
			jlr = {id = 1060920,cardId = 1101003,lv = 18,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-6-9-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1060921,cardId = 1102005,lv = 18,bklv = 3,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[3] = {
			jlr = {id = 1060930,cardId = 1101002,lv = 18,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-6-9-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1060931,cardId = 1102004,lv = 18,bklv = 3,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		}
	},
	[10610] = {
		[1] = {
			jlr = {id = 1061010,cardId = 1101001,lv = 18,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 271,srcLoc = 2,srcType = 1,desc = "pt-6-10-jlr-loc1",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1061011,cardId = 1102002,lv = 18,bklv = 3,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[2] = {
			jlr = {id = 1061020,cardId = 1101003,lv = 18,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-6-10-jlr-loc2",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1061021,cardId = 1102005,lv = 18,bklv = 3,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		},
		[3] = {
			jlr = {id = 1061030,cardId = 1101002,lv = 18,bklv = 1,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 280,srcLoc = 2,srcType = 1,desc = "pt-6-10-jlr-loc3",skillLv = 1,exert = 7,suffer = 4}},
			shl = {id = 1061031,cardId = 1102004,lv = 18,bklv = 3,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}}}
		}
	}
}
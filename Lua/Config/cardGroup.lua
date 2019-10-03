--[[
--note:

colums:
{id,卡牌Id} ,{group,组} ,{loc,位置} ,{type,类型} ,{cardId,卡牌ID} ,{lv,等级} ,{bklv,突破} ,{star,星级} ,{ghost,魂火} ,{equip[1].id,装备1Id} ,{equip[1].lv,装备1强化} ,{equip[2].id,装备1Id} ,{equip[2].lv,装备1强化} ,{equip[3].id,装备1Id} ,{equip[3].lv,装备1强化} ,{equip[4].id,装备1Id} ,{equip[4].lv,装备1强化} ,{equip[5].id,装备1Id} ,{equip[5].lv,装备1强化} ,{equip[6].id,装备1Id} ,{equip[6].lv,装备1强化} ,{equip[7].id,装备1Id} ,{equip[7].lv,装备1强化} ,{equip[8].id,装备1Id} ,{equip[8].lv,装备1强化} ,{exWeapon[1],专属武器魂珠1} ,{exWeapon[2],专属武器魂珠2} ,{exWeapon[3],专属武器魂珠3} ,{exWeapon[4],专属武器魂珠4} ,{exWeapon[5],专属武器魂珠5} ,{exWeapon[6],专属武器魂珠6} ,{exWeapon[7],专属武器魂珠7} ,{exWeapon[8],专属武器魂珠8} ,{mon.id,怪物模组ID} ,{mon.srcLoc,源属性位} ,{mon.srcType,源属性类型} ,{mon.desc,备注} ,{mon.skillLv,技能等级} ,{mon.exert,施加攻击} ,{mon.suffer,承受攻击}
primary key:
#0 [卡牌组]: group,loc,type
]]
local _T = LangUtil.Language
return{
	[10101] = {
		[1] = {
			jlr = {id = 1010110,cardId = 1101999,lv = 1,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 325,srcLoc = 2,srcType = 1,desc = "pt-1-1-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1010111,cardId = 1102999,lv = 1,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1010120,cardId = 1101999,lv = 1,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 299,srcLoc = 2,srcType = 1,desc = "pt-1-1-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1010121,cardId = 1102999,lv = 1,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1010130,cardId = 1101999,lv = 1,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 312,srcLoc = 2,srcType = 1,desc = "pt-1-1-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1010131,cardId = 1102999,lv = 1,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10102] = {
		[1] = {
			jlr = {id = 1010210,cardId = 1101999,lv = 1,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 325,srcLoc = 2,srcType = 1,desc = "pt-1-2-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1010211,cardId = 1102999,lv = 1,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1010220,cardId = 1101999,lv = 1,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 299,srcLoc = 2,srcType = 1,desc = "pt-1-2-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1010221,cardId = 1102999,lv = 1,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1010230,cardId = 1101999,lv = 1,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 312,srcLoc = 2,srcType = 1,desc = "pt-1-2-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1010231,cardId = 1102999,lv = 1,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10103] = {
		[1] = {
			jlr = {id = 1010310,cardId = 1101999,lv = 2,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 325,srcLoc = 2,srcType = 1,desc = "pt-1-3-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1010311,cardId = 1102999,lv = 1,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1010320,cardId = 1101998,lv = 2,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 299,srcLoc = 2,srcType = 1,desc = "pt-1-3-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1010321,cardId = 1102998,lv = 5,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1010330,cardId = 1101999,lv = 2,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 312,srcLoc = 2,srcType = 1,desc = "pt-1-3-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1010331,cardId = 1102999,lv = 1,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10104] = {
		[1] = {
			jlr = {id = 1010410,cardId = 1101999,lv = 2,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 325,srcLoc = 2,srcType = 1,desc = "pt-1-4-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1010411,cardId = 1102999,lv = 1,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1010420,cardId = 1101999,lv = 2,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 299,srcLoc = 2,srcType = 1,desc = "pt-1-4-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1010421,cardId = 1102999,lv = 5,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1010430,cardId = 1101999,lv = 2,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 312,srcLoc = 2,srcType = 1,desc = "pt-1-4-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1010431,cardId = 1102999,lv = 1,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10105] = {
		[1] = {
			jlr = {id = 1010510,cardId = 1101999,lv = 3,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 325,srcLoc = 2,srcType = 1,desc = "pt-1-5-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1010511,cardId = 1102999,lv = 1,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1010520,cardId = 1101999,lv = 3,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 299,srcLoc = 2,srcType = 1,desc = "pt-1-5-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1010521,cardId = 1102999,lv = 5,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1010530,cardId = 1101999,lv = 3,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 312,srcLoc = 2,srcType = 1,desc = "pt-1-5-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1010531,cardId = 1102999,lv = 1,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10106] = {
		[1] = {
			jlr = {id = 1010610,cardId = 1101998,lv = 3,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 325,srcLoc = 2,srcType = 1,desc = "pt-1-6-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1010611,cardId = 1102998,lv = 5,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1010620,cardId = 1101998,lv = 3,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 299,srcLoc = 2,srcType = 1,desc = "pt-1-6-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1010621,cardId = 1102998,lv = 5,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1010630,cardId = 1101998,lv = 3,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 312,srcLoc = 2,srcType = 1,desc = "pt-1-6-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1010631,cardId = 1102998,lv = 1,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10107] = {
		[1] = {
			jlr = {id = 1010710,cardId = 1101999,lv = 4,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 325,srcLoc = 2,srcType = 1,desc = "pt-1-7-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1010711,cardId = 1102999,lv = 5,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1010720,cardId = 1101999,lv = 4,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 299,srcLoc = 2,srcType = 1,desc = "pt-1-7-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1010721,cardId = 1102999,lv = 5,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1010730,cardId = 1101999,lv = 4,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 312,srcLoc = 2,srcType = 1,desc = "pt-1-7-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1010731,cardId = 1102999,lv = 1,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10108] = {
		[1] = {
			jlr = {id = 1010810,cardId = 1101999,lv = 4,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 325,srcLoc = 2,srcType = 1,desc = "pt-1-8-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1010811,cardId = 1102999,lv = 5,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1010820,cardId = 1101999,lv = 4,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 299,srcLoc = 2,srcType = 1,desc = "pt-1-8-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1010821,cardId = 1102999,lv = 5,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1010830,cardId = 1101999,lv = 4,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 312,srcLoc = 2,srcType = 1,desc = "pt-1-8-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1010831,cardId = 1102999,lv = 1,bklv = 1,star = 1,ghost = 0,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10109] = {
		[1] = {
			jlr = {id = 1010910,cardId = 1101998,lv = 5,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 325,srcLoc = 2,srcType = 1,desc = "pt-1-9-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1010911,cardId = 1102998,lv = 5,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1010920,cardId = 1101998,lv = 5,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 299,srcLoc = 2,srcType = 1,desc = "pt-1-9-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1010921,cardId = 1102998,lv = 5,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1010930,cardId = 1101998,lv = 5,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 312,srcLoc = 2,srcType = 1,desc = "pt-1-9-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1010931,cardId = 1102998,lv = 5,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10110] = {
		[1] = {
			jlr = {id = 1011010,cardId = 1101998,lv = 5,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 325,srcLoc = 2,srcType = 1,desc = "pt-1-10-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1011011,cardId = 1102998,lv = 5,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1011020,cardId = 1101998,lv = 5,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 299,srcLoc = 2,srcType = 1,desc = "pt-1-10-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1011021,cardId = 1102998,lv = 5,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1011030,cardId = 1101998,lv = 5,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 312,srcLoc = 2,srcType = 1,desc = "pt-1-10-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1011031,cardId = 1102998,lv = 5,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10201] = {
		[1] = {
			jlr = {id = 1020110,cardId = 1101999,lv = 5,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 325,srcLoc = 2,srcType = 1,desc = "pt-2-1-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1020111,cardId = 1102999,lv = 5,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1020120,cardId = 1101999,lv = 5,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 299,srcLoc = 2,srcType = 1,desc = "pt-2-1-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1020121,cardId = 1102999,lv = 5,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1020130,cardId = 1101999,lv = 5,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 312,srcLoc = 2,srcType = 1,desc = "pt-2-1-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1020131,cardId = 1102999,lv = 5,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10202] = {
		[1] = {
			jlr = {id = 1020210,cardId = 1101999,lv = 6,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 325,srcLoc = 2,srcType = 1,desc = "pt-2-2-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1020211,cardId = 1102999,lv = 5,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1020220,cardId = 1101999,lv = 6,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 299,srcLoc = 2,srcType = 1,desc = "pt-2-2-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1020221,cardId = 1102999,lv = 5,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1020230,cardId = 1101999,lv = 6,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 312,srcLoc = 2,srcType = 1,desc = "pt-2-2-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1020231,cardId = 1102999,lv = 5,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10203] = {
		[1] = {
			jlr = {id = 1020310,cardId = 1101999,lv = 8,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 325,srcLoc = 2,srcType = 1,desc = "pt-2-3-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1020311,cardId = 1102999,lv = 5,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1020320,cardId = 1101998,lv = 8,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 299,srcLoc = 2,srcType = 1,desc = "pt-2-3-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1020321,cardId = 1102998,lv = 15,bklv = 2,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1020330,cardId = 1101999,lv = 8,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 312,srcLoc = 2,srcType = 1,desc = "pt-2-3-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1020331,cardId = 1102999,lv = 5,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10204] = {
		[1] = {
			jlr = {id = 1020410,cardId = 1101999,lv = 9,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 325,srcLoc = 2,srcType = 1,desc = "pt-2-4-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1020411,cardId = 1102999,lv = 5,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1020420,cardId = 1101999,lv = 9,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 299,srcLoc = 2,srcType = 1,desc = "pt-2-4-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1020421,cardId = 1102999,lv = 15,bklv = 2,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1020430,cardId = 1101999,lv = 9,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 312,srcLoc = 2,srcType = 1,desc = "pt-2-4-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1020431,cardId = 1102999,lv = 5,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10205] = {
		[1] = {
			jlr = {id = 1020510,cardId = 1101999,lv = 10,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 325,srcLoc = 2,srcType = 1,desc = "pt-2-5-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1020511,cardId = 1102999,lv = 5,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1020520,cardId = 1101999,lv = 10,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 299,srcLoc = 2,srcType = 1,desc = "pt-2-5-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1020521,cardId = 1102999,lv = 15,bklv = 2,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1020530,cardId = 1101999,lv = 10,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 312,srcLoc = 2,srcType = 1,desc = "pt-2-5-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1020531,cardId = 1102999,lv = 5,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10206] = {
		[1] = {
			jlr = {id = 1020610,cardId = 1101998,lv = 12,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 325,srcLoc = 2,srcType = 1,desc = "pt-2-6-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1020611,cardId = 1102998,lv = 15,bklv = 2,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1020620,cardId = 1101998,lv = 12,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 299,srcLoc = 2,srcType = 1,desc = "pt-2-6-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1020621,cardId = 1102998,lv = 15,bklv = 2,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1020630,cardId = 1101998,lv = 12,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 312,srcLoc = 2,srcType = 1,desc = "pt-2-6-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1020631,cardId = 1102998,lv = 5,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10207] = {
		[1] = {
			jlr = {id = 1020710,cardId = 1101999,lv = 13,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 325,srcLoc = 2,srcType = 1,desc = "pt-2-7-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1020711,cardId = 1102999,lv = 15,bklv = 2,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1020720,cardId = 1101999,lv = 13,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 299,srcLoc = 2,srcType = 1,desc = "pt-2-7-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1020721,cardId = 1102999,lv = 15,bklv = 2,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1020730,cardId = 1101999,lv = 13,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 312,srcLoc = 2,srcType = 1,desc = "pt-2-7-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1020731,cardId = 1102999,lv = 5,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10208] = {
		[1] = {
			jlr = {id = 1020810,cardId = 1101999,lv = 14,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 325,srcLoc = 2,srcType = 1,desc = "pt-2-8-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1020811,cardId = 1102999,lv = 15,bklv = 2,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1020820,cardId = 1101999,lv = 14,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 299,srcLoc = 2,srcType = 1,desc = "pt-2-8-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1020821,cardId = 1102999,lv = 15,bklv = 2,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1020830,cardId = 1101999,lv = 14,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 312,srcLoc = 2,srcType = 1,desc = "pt-2-8-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1020831,cardId = 1102999,lv = 5,bklv = 1,star = 1,ghost = 2,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10209] = {
		[1] = {
			jlr = {id = 1020910,cardId = 1101998,lv = 15,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 325,srcLoc = 2,srcType = 1,desc = "pt-2-9-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1020911,cardId = 1102998,lv = 15,bklv = 2,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1020920,cardId = 1101998,lv = 15,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 299,srcLoc = 2,srcType = 1,desc = "pt-2-9-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1020921,cardId = 1102998,lv = 15,bklv = 2,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1020930,cardId = 1101998,lv = 15,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 312,srcLoc = 2,srcType = 1,desc = "pt-2-9-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1020931,cardId = 1102998,lv = 15,bklv = 2,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10210] = {
		[1] = {
			jlr = {id = 1021010,cardId = 1101998,lv = 15,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 325,srcLoc = 2,srcType = 1,desc = "pt-2-10-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1021011,cardId = 1102998,lv = 15,bklv = 2,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1021020,cardId = 1101998,lv = 15,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 299,srcLoc = 2,srcType = 1,desc = "pt-2-10-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1021021,cardId = 1102998,lv = 15,bklv = 2,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1021030,cardId = 1101998,lv = 15,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 312,srcLoc = 2,srcType = 1,desc = "pt-2-10-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1021031,cardId = 1102998,lv = 15,bklv = 2,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10301] = {
		[1] = {
			jlr = {id = 1030110,cardId = 1101999,lv = 15,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-3-1-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1030111,cardId = 1102999,lv = 15,bklv = 2,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1030120,cardId = 1101999,lv = 15,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-3-1-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1030121,cardId = 1102999,lv = 15,bklv = 2,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1030130,cardId = 1101999,lv = 15,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-3-1-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1030131,cardId = 1102999,lv = 15,bklv = 2,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10302] = {
		[1] = {
			jlr = {id = 1030210,cardId = 1101999,lv = 16,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-3-2-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1030211,cardId = 1102999,lv = 15,bklv = 2,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1030220,cardId = 1101999,lv = 16,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-3-2-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1030221,cardId = 1102999,lv = 15,bklv = 2,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1030230,cardId = 1101999,lv = 16,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-3-2-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1030231,cardId = 1102999,lv = 15,bklv = 2,star = 1,ghost = 3,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10303] = {
		[1] = {
			jlr = {id = 1030310,cardId = 1101999,lv = 18,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 325,srcLoc = 2,srcType = 1,desc = "pt-3-3-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1030311,cardId = 1102999,lv = 15,bklv = 2,star = 1,ghost = 3,equip = {[1] = {id = 2101201,lv = 18},[2] = {id = 2101202,lv = 18},[3] = {id = 2101203,lv = 18},[4] = {id = 2101204,lv = 18},[5] = {id = 2101205,lv = 18},[6] = {id = 2101206,lv = 18},[7] = {id = 2101207,lv = 18},[8] = {id = 2101208,lv = 18}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1030320,cardId = 1101998,lv = 18,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 337,srcLoc = 2,srcType = 1,desc = "pt-3-3-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1030321,cardId = 1102998,lv = 25,bklv = 3,star = 1,ghost = 4,equip = {[1] = {id = 2101201,lv = 18},[2] = {id = 2101202,lv = 18},[3] = {id = 2101203,lv = 18},[4] = {id = 2101204,lv = 18},[5] = {id = 2101205,lv = 18},[6] = {id = 2101206,lv = 18},[7] = {id = 2101207,lv = 18},[8] = {id = 2101208,lv = 18}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1030330,cardId = 1101999,lv = 18,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 312,srcLoc = 2,srcType = 1,desc = "pt-3-3-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1030331,cardId = 1102999,lv = 15,bklv = 2,star = 1,ghost = 3,equip = {[1] = {id = 2101201,lv = 18},[2] = {id = 2101202,lv = 18},[3] = {id = 2101203,lv = 18},[4] = {id = 2101204,lv = 18},[5] = {id = 2101205,lv = 18},[6] = {id = 2101206,lv = 18},[7] = {id = 2101207,lv = 18},[8] = {id = 2101208,lv = 18}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10304] = {
		[1] = {
			jlr = {id = 1030410,cardId = 1101999,lv = 19,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-3-4-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1030411,cardId = 1102999,lv = 15,bklv = 2,star = 1,ghost = 4,equip = {[1] = {id = 2101201,lv = 19},[2] = {id = 2101202,lv = 19},[3] = {id = 2101203,lv = 19},[4] = {id = 2101204,lv = 19},[5] = {id = 2101205,lv = 19},[6] = {id = 2101206,lv = 19},[7] = {id = 2101207,lv = 19},[8] = {id = 2101208,lv = 19}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1030420,cardId = 1101999,lv = 19,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-3-4-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1030421,cardId = 1102999,lv = 25,bklv = 3,star = 1,ghost = 4,equip = {[1] = {id = 2101201,lv = 19},[2] = {id = 2101202,lv = 19},[3] = {id = 2101203,lv = 19},[4] = {id = 2101204,lv = 19},[5] = {id = 2101205,lv = 19},[6] = {id = 2101206,lv = 19},[7] = {id = 2101207,lv = 19},[8] = {id = 2101208,lv = 19}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1030430,cardId = 1101999,lv = 19,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-3-4-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1030431,cardId = 1102999,lv = 15,bklv = 2,star = 1,ghost = 3,equip = {[1] = {id = 2101201,lv = 19},[2] = {id = 2101202,lv = 19},[3] = {id = 2101203,lv = 19},[4] = {id = 2101204,lv = 19},[5] = {id = 2101205,lv = 19},[6] = {id = 2101206,lv = 19},[7] = {id = 2101207,lv = 19},[8] = {id = 2101208,lv = 19}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10305] = {
		[1] = {
			jlr = {id = 1030510,cardId = 1101999,lv = 20,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-3-5-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1030511,cardId = 1102999,lv = 15,bklv = 2,star = 1,ghost = 4,equip = {[1] = {id = 2101201,lv = 20},[2] = {id = 2101202,lv = 20},[3] = {id = 2101203,lv = 20},[4] = {id = 2101204,lv = 20},[5] = {id = 2101205,lv = 20},[6] = {id = 2101206,lv = 20},[7] = {id = 2101207,lv = 20},[8] = {id = 2101208,lv = 20}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1030520,cardId = 1101999,lv = 20,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-3-5-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1030521,cardId = 1102999,lv = 25,bklv = 3,star = 1,ghost = 4,equip = {[1] = {id = 2101201,lv = 20},[2] = {id = 2101202,lv = 20},[3] = {id = 2101203,lv = 20},[4] = {id = 2101204,lv = 20},[5] = {id = 2101205,lv = 20},[6] = {id = 2101206,lv = 20},[7] = {id = 2101207,lv = 20},[8] = {id = 2101208,lv = 20}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1030530,cardId = 1101999,lv = 20,bklv = 1,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-3-5-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1030531,cardId = 1102999,lv = 15,bklv = 2,star = 1,ghost = 4,equip = {[1] = {id = 2101201,lv = 20},[2] = {id = 2101202,lv = 20},[3] = {id = 2101203,lv = 20},[4] = {id = 2101204,lv = 20},[5] = {id = 2101205,lv = 20},[6] = {id = 2101206,lv = 20},[7] = {id = 2101207,lv = 20},[8] = {id = 2101208,lv = 20}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10306] = {
		[1] = {
			jlr = {id = 1030610,cardId = 1101998,lv = 22,bklv = 2,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 325,srcLoc = 2,srcType = 1,desc = "pt-3-6-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1030611,cardId = 1102998,lv = 25,bklv = 3,star = 1,ghost = 4,equip = {[1] = {id = 2101201,lv = 22},[2] = {id = 2101202,lv = 22},[3] = {id = 2101203,lv = 22},[4] = {id = 2101204,lv = 22},[5] = {id = 2101205,lv = 22},[6] = {id = 2101206,lv = 22},[7] = {id = 2101207,lv = 22},[8] = {id = 2101208,lv = 22}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1030620,cardId = 1101998,lv = 22,bklv = 2,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 340,srcLoc = 2,srcType = 1,desc = "pt-3-6-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1030621,cardId = 1102998,lv = 25,bklv = 3,star = 1,ghost = 5,equip = {[1] = {id = 2101201,lv = 22},[2] = {id = 2101202,lv = 22},[3] = {id = 2101203,lv = 22},[4] = {id = 2101204,lv = 22},[5] = {id = 2101205,lv = 22},[6] = {id = 2101206,lv = 22},[7] = {id = 2101207,lv = 22},[8] = {id = 2101208,lv = 22}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1030630,cardId = 1101998,lv = 22,bklv = 2,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 312,srcLoc = 2,srcType = 1,desc = "pt-3-6-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1030631,cardId = 1102998,lv = 15,bklv = 2,star = 1,ghost = 4,equip = {[1] = {id = 2101201,lv = 22},[2] = {id = 2101202,lv = 22},[3] = {id = 2101203,lv = 22},[4] = {id = 2101204,lv = 22},[5] = {id = 2101205,lv = 22},[6] = {id = 2101206,lv = 22},[7] = {id = 2101207,lv = 22},[8] = {id = 2101208,lv = 22}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10307] = {
		[1] = {
			jlr = {id = 1030710,cardId = 1101999,lv = 23,bklv = 2,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-3-7-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1030711,cardId = 1102999,lv = 25,bklv = 3,star = 1,ghost = 4,equip = {[1] = {id = 2101201,lv = 23},[2] = {id = 2101202,lv = 23},[3] = {id = 2101203,lv = 23},[4] = {id = 2101204,lv = 23},[5] = {id = 2101205,lv = 23},[6] = {id = 2101206,lv = 23},[7] = {id = 2101207,lv = 23},[8] = {id = 2101208,lv = 23}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1030720,cardId = 1101999,lv = 23,bklv = 2,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-3-7-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1030721,cardId = 1102999,lv = 25,bklv = 3,star = 1,ghost = 5,equip = {[1] = {id = 2101201,lv = 23},[2] = {id = 2101202,lv = 23},[3] = {id = 2101203,lv = 23},[4] = {id = 2101204,lv = 23},[5] = {id = 2101205,lv = 23},[6] = {id = 2101206,lv = 23},[7] = {id = 2101207,lv = 23},[8] = {id = 2101208,lv = 23}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1030730,cardId = 1101999,lv = 23,bklv = 2,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-3-7-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1030731,cardId = 1102999,lv = 15,bklv = 2,star = 1,ghost = 4,equip = {[1] = {id = 2101201,lv = 23},[2] = {id = 2101202,lv = 23},[3] = {id = 2101203,lv = 23},[4] = {id = 2101204,lv = 23},[5] = {id = 2101205,lv = 23},[6] = {id = 2101206,lv = 23},[7] = {id = 2101207,lv = 23},[8] = {id = 2101208,lv = 23}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10308] = {
		[1] = {
			jlr = {id = 1030810,cardId = 1101999,lv = 24,bklv = 2,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-3-8-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1030811,cardId = 1102999,lv = 25,bklv = 3,star = 1,ghost = 4,equip = {[1] = {id = 2101201,lv = 24},[2] = {id = 2101202,lv = 24},[3] = {id = 2101203,lv = 24},[4] = {id = 2101204,lv = 24},[5] = {id = 2101205,lv = 24},[6] = {id = 2101206,lv = 24},[7] = {id = 2101207,lv = 24},[8] = {id = 2101208,lv = 24}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1030820,cardId = 1101999,lv = 24,bklv = 2,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-3-8-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1030821,cardId = 1102999,lv = 25,bklv = 3,star = 1,ghost = 5,equip = {[1] = {id = 2101201,lv = 24},[2] = {id = 2101202,lv = 24},[3] = {id = 2101203,lv = 24},[4] = {id = 2101204,lv = 24},[5] = {id = 2101205,lv = 24},[6] = {id = 2101206,lv = 24},[7] = {id = 2101207,lv = 24},[8] = {id = 2101208,lv = 24}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1030830,cardId = 1101999,lv = 24,bklv = 2,star = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-3-8-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1030831,cardId = 1102999,lv = 15,bklv = 2,star = 1,ghost = 4,equip = {[1] = {id = 2101201,lv = 24},[2] = {id = 2101202,lv = 24},[3] = {id = 2101203,lv = 24},[4] = {id = 2101204,lv = 24},[5] = {id = 2101205,lv = 24},[6] = {id = 2101206,lv = 24},[7] = {id = 2101207,lv = 24},[8] = {id = 2101208,lv = 24}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10309] = {
		[1] = {
			jlr = {id = 1030910,cardId = 1101998,lv = 25,bklv = 2,star = 1,exWeapon = {[1] = 1,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-3-9-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1030911,cardId = 1102998,lv = 25,bklv = 3,star = 1,ghost = 5,equip = {[1] = {id = 2101201,lv = 25},[2] = {id = 2101202,lv = 25},[3] = {id = 2101203,lv = 25},[4] = {id = 2101204,lv = 25},[5] = {id = 2101205,lv = 25},[6] = {id = 2101206,lv = 25},[7] = {id = 2101207,lv = 25},[8] = {id = 2101208,lv = 25}},exWeapon = {[1] = 1,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1030920,cardId = 1101998,lv = 25,bklv = 2,star = 1,exWeapon = {[1] = 1,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 343,srcLoc = 2,srcType = 1,desc = "pt-3-9-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1030921,cardId = 1102998,lv = 25,bklv = 3,star = 1,ghost = 5,equip = {[1] = {id = 2101201,lv = 25},[2] = {id = 2101202,lv = 25},[3] = {id = 2101203,lv = 25},[4] = {id = 2101204,lv = 25},[5] = {id = 2101205,lv = 25},[6] = {id = 2101206,lv = 25},[7] = {id = 2101207,lv = 25},[8] = {id = 2101208,lv = 25}},exWeapon = {[1] = 1,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1030930,cardId = 1101998,lv = 25,bklv = 2,star = 1,exWeapon = {[1] = 1,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-3-9-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1030931,cardId = 1102998,lv = 25,bklv = 3,star = 1,ghost = 5,equip = {[1] = {id = 2101201,lv = 25},[2] = {id = 2101202,lv = 25},[3] = {id = 2101203,lv = 25},[4] = {id = 2101204,lv = 25},[5] = {id = 2101205,lv = 25},[6] = {id = 2101206,lv = 25},[7] = {id = 2101207,lv = 25},[8] = {id = 2101208,lv = 25}},exWeapon = {[1] = 1,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10310] = {
		[1] = {
			jlr = {id = 1031010,cardId = 1101998,lv = 25,bklv = 2,star = 1,exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 347,srcLoc = 2,srcType = 1,desc = "pt-3-10-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1031011,cardId = 1102998,lv = 25,bklv = 3,star = 1,ghost = 5,equip = {[1] = {id = 2101201,lv = 25},[2] = {id = 2101202,lv = 25},[3] = {id = 2101203,lv = 25},[4] = {id = 2101204,lv = 25},[5] = {id = 2101205,lv = 25},[6] = {id = 2101206,lv = 25},[7] = {id = 2101207,lv = 25},[8] = {id = 2101208,lv = 25}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1031020,cardId = 1101998,lv = 25,bklv = 2,star = 1,exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 289,srcLoc = 2,srcType = 1,desc = "pt-3-10-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1031021,cardId = 1102998,lv = 25,bklv = 3,star = 1,ghost = 5,equip = {[1] = {id = 2101201,lv = 25},[2] = {id = 2101202,lv = 25},[3] = {id = 2101203,lv = 25},[4] = {id = 2101204,lv = 25},[5] = {id = 2101205,lv = 25},[6] = {id = 2101206,lv = 25},[7] = {id = 2101207,lv = 25},[8] = {id = 2101208,lv = 25}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1031030,cardId = 1101998,lv = 25,bklv = 2,star = 1,exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 348,srcLoc = 2,srcType = 1,desc = "pt-3-10-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1031031,cardId = 1102998,lv = 25,bklv = 3,star = 1,ghost = 5,equip = {[1] = {id = 2101201,lv = 25},[2] = {id = 2101202,lv = 25},[3] = {id = 2101203,lv = 25},[4] = {id = 2101204,lv = 25},[5] = {id = 2101205,lv = 25},[6] = {id = 2101206,lv = 25},[7] = {id = 2101207,lv = 25},[8] = {id = 2101208,lv = 25}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10401] = {
		[1] = {
			jlr = {id = 1040110,cardId = 1101999,lv = 25,bklv = 2,star = 1,exWeapon = {[1] = 3,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-4-1-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1040111,cardId = 1102999,lv = 25,bklv = 3,star = 1,ghost = 5,equip = {[1] = {id = 2101201,lv = 25},[2] = {id = 2101202,lv = 25},[3] = {id = 2101203,lv = 25},[4] = {id = 2101204,lv = 25},[5] = {id = 2101205,lv = 25},[6] = {id = 2101206,lv = 25},[7] = {id = 2101207,lv = 25},[8] = {id = 2101208,lv = 25}},exWeapon = {[1] = 3,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1040120,cardId = 1101999,lv = 25,bklv = 2,star = 1,exWeapon = {[1] = 3,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-4-1-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1040121,cardId = 1102999,lv = 25,bklv = 3,star = 1,ghost = 5,equip = {[1] = {id = 2101201,lv = 25},[2] = {id = 2101202,lv = 25},[3] = {id = 2101203,lv = 25},[4] = {id = 2101204,lv = 25},[5] = {id = 2101205,lv = 25},[6] = {id = 2101206,lv = 25},[7] = {id = 2101207,lv = 25},[8] = {id = 2101208,lv = 25}},exWeapon = {[1] = 3,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1040130,cardId = 1101999,lv = 25,bklv = 2,star = 1,exWeapon = {[1] = 3,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-4-1-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1040131,cardId = 1102999,lv = 25,bklv = 3,star = 1,ghost = 5,equip = {[1] = {id = 2101201,lv = 25},[2] = {id = 2101202,lv = 25},[3] = {id = 2101203,lv = 25},[4] = {id = 2101204,lv = 25},[5] = {id = 2101205,lv = 25},[6] = {id = 2101206,lv = 25},[7] = {id = 2101207,lv = 25},[8] = {id = 2101208,lv = 25}},exWeapon = {[1] = 3,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10402] = {
		[1] = {
			jlr = {id = 1040210,cardId = 1101999,lv = 25,bklv = 2,star = 1,exWeapon = {[1] = 4,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-4-2-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1040211,cardId = 1102999,lv = 25,bklv = 3,star = 1,ghost = 5,equip = {[1] = {id = 2101201,lv = 25},[2] = {id = 2101202,lv = 25},[3] = {id = 2101203,lv = 25},[4] = {id = 2101204,lv = 25},[5] = {id = 2101205,lv = 25},[6] = {id = 2101206,lv = 25},[7] = {id = 2101207,lv = 25},[8] = {id = 2101208,lv = 25}},exWeapon = {[1] = 4,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1040220,cardId = 1101999,lv = 25,bklv = 2,star = 1,exWeapon = {[1] = 4,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-4-2-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1040221,cardId = 1102999,lv = 25,bklv = 3,star = 1,ghost = 5,equip = {[1] = {id = 2101201,lv = 25},[2] = {id = 2101202,lv = 25},[3] = {id = 2101203,lv = 25},[4] = {id = 2101204,lv = 25},[5] = {id = 2101205,lv = 25},[6] = {id = 2101206,lv = 25},[7] = {id = 2101207,lv = 25},[8] = {id = 2101208,lv = 25}},exWeapon = {[1] = 4,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1040230,cardId = 1101999,lv = 25,bklv = 2,star = 1,exWeapon = {[1] = 4,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-4-2-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1040231,cardId = 1102999,lv = 25,bklv = 3,star = 1,ghost = 5,equip = {[1] = {id = 2101201,lv = 25},[2] = {id = 2101202,lv = 25},[3] = {id = 2101203,lv = 25},[4] = {id = 2101204,lv = 25},[5] = {id = 2101205,lv = 25},[6] = {id = 2101206,lv = 25},[7] = {id = 2101207,lv = 25},[8] = {id = 2101208,lv = 25}},exWeapon = {[1] = 4,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10403] = {
		[1] = {
			jlr = {id = 1040310,cardId = 1101999,lv = 26,bklv = 2,star = 1,exWeapon = {[1] = 5,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-4-3-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1040311,cardId = 1102999,lv = 25,bklv = 3,star = 1,ghost = 5,equip = {[1] = {id = 2101201,lv = 26},[2] = {id = 2101202,lv = 26},[3] = {id = 2101203,lv = 26},[4] = {id = 2101204,lv = 26},[5] = {id = 2101205,lv = 26},[6] = {id = 2101206,lv = 26},[7] = {id = 2101207,lv = 26},[8] = {id = 2101208,lv = 26}},exWeapon = {[1] = 5,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1040320,cardId = 1101998,lv = 26,bklv = 2,star = 1,exWeapon = {[1] = 5,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-4-3-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1040321,cardId = 1102998,lv = 30,bklv = 4,star = 1,ghost = 5,equip = {[1] = {id = 2101201,lv = 26},[2] = {id = 2101202,lv = 26},[3] = {id = 2101203,lv = 26},[4] = {id = 2101204,lv = 26},[5] = {id = 2101205,lv = 26},[6] = {id = 2101206,lv = 26},[7] = {id = 2101207,lv = 26},[8] = {id = 2101208,lv = 26}},exWeapon = {[1] = 5,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1040330,cardId = 1101999,lv = 26,bklv = 2,star = 1,exWeapon = {[1] = 5,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-4-3-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1040331,cardId = 1102999,lv = 25,bklv = 3,star = 1,ghost = 5,equip = {[1] = {id = 2101201,lv = 26},[2] = {id = 2101202,lv = 26},[3] = {id = 2101203,lv = 26},[4] = {id = 2101204,lv = 26},[5] = {id = 2101205,lv = 26},[6] = {id = 2101206,lv = 26},[7] = {id = 2101207,lv = 26},[8] = {id = 2101208,lv = 26}},exWeapon = {[1] = 5,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10404] = {
		[1] = {
			jlr = {id = 1040410,cardId = 1101999,lv = 27,bklv = 2,star = 1,exWeapon = {[1] = 6,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-4-4-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1040411,cardId = 1102999,lv = 25,bklv = 3,star = 1,ghost = 5,equip = {[1] = {id = 2101201,lv = 27},[2] = {id = 2101202,lv = 27},[3] = {id = 2101203,lv = 27},[4] = {id = 2101204,lv = 27},[5] = {id = 2101205,lv = 27},[6] = {id = 2101206,lv = 27},[7] = {id = 2101207,lv = 27},[8] = {id = 2101208,lv = 27}},exWeapon = {[1] = 6,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1040420,cardId = 1101999,lv = 27,bklv = 2,star = 1,exWeapon = {[1] = 6,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-4-4-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1040421,cardId = 1102999,lv = 30,bklv = 4,star = 1,ghost = 5,equip = {[1] = {id = 2101201,lv = 27},[2] = {id = 2101202,lv = 27},[3] = {id = 2101203,lv = 27},[4] = {id = 2101204,lv = 27},[5] = {id = 2101205,lv = 27},[6] = {id = 2101206,lv = 27},[7] = {id = 2101207,lv = 27},[8] = {id = 2101208,lv = 27}},exWeapon = {[1] = 6,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1040430,cardId = 1101999,lv = 27,bklv = 2,star = 1,exWeapon = {[1] = 6,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-4-4-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1040431,cardId = 1102999,lv = 25,bklv = 3,star = 1,ghost = 5,equip = {[1] = {id = 2101201,lv = 27},[2] = {id = 2101202,lv = 27},[3] = {id = 2101203,lv = 27},[4] = {id = 2101204,lv = 27},[5] = {id = 2101205,lv = 27},[6] = {id = 2101206,lv = 27},[7] = {id = 2101207,lv = 27},[8] = {id = 2101208,lv = 27}},exWeapon = {[1] = 6,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10405] = {
		[1] = {
			jlr = {id = 1040510,cardId = 1101999,lv = 27,bklv = 2,star = 1,exWeapon = {[1] = 7,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-4-5-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1040511,cardId = 1102999,lv = 25,bklv = 3,star = 1,ghost = 5,equip = {[1] = {id = 2101201,lv = 27},[2] = {id = 2101202,lv = 27},[3] = {id = 2101203,lv = 27},[4] = {id = 2101204,lv = 27},[5] = {id = 2101205,lv = 27},[6] = {id = 2101206,lv = 27},[7] = {id = 2101207,lv = 27},[8] = {id = 2101208,lv = 27}},exWeapon = {[1] = 7,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1040520,cardId = 1101999,lv = 27,bklv = 2,star = 1,exWeapon = {[1] = 7,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-4-5-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1040521,cardId = 1102999,lv = 30,bklv = 4,star = 1,ghost = 5,equip = {[1] = {id = 2101201,lv = 27},[2] = {id = 2101202,lv = 27},[3] = {id = 2101203,lv = 27},[4] = {id = 2101204,lv = 27},[5] = {id = 2101205,lv = 27},[6] = {id = 2101206,lv = 27},[7] = {id = 2101207,lv = 27},[8] = {id = 2101208,lv = 27}},exWeapon = {[1] = 7,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1040530,cardId = 1101999,lv = 27,bklv = 2,star = 1,exWeapon = {[1] = 7,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-4-5-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1040531,cardId = 1102999,lv = 25,bklv = 3,star = 1,ghost = 5,equip = {[1] = {id = 2101201,lv = 27},[2] = {id = 2101202,lv = 27},[3] = {id = 2101203,lv = 27},[4] = {id = 2101204,lv = 27},[5] = {id = 2101205,lv = 27},[6] = {id = 2101206,lv = 27},[7] = {id = 2101207,lv = 27},[8] = {id = 2101208,lv = 27}},exWeapon = {[1] = 7,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10406] = {
		[1] = {
			jlr = {id = 1040610,cardId = 1101998,lv = 28,bklv = 3,star = 1,equip = {[1] = {id = 2001201,lv = 28},[2] = {id = 2001202,lv = 28},[3] = {id = 2001203,lv = 28},[4] = {id = 2001204,lv = 28},[5] = {id = 2001205,lv = 28},[6] = {id = 2001206,lv = 28},[7] = {id = 2001207,lv = 28},[8] = {id = 2001208,lv = 28}},exWeapon = {[1] = 7,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-4-6-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1040611,cardId = 1102998,lv = 30,bklv = 4,star = 1,ghost = 5,equip = {[1] = {id = 2101201,lv = 28},[2] = {id = 2101202,lv = 28},[3] = {id = 2101203,lv = 28},[4] = {id = 2101204,lv = 28},[5] = {id = 2101205,lv = 28},[6] = {id = 2101206,lv = 28},[7] = {id = 2101207,lv = 28},[8] = {id = 2101208,lv = 28}},exWeapon = {[1] = 7,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1040620,cardId = 1101998,lv = 28,bklv = 3,star = 1,equip = {[1] = {id = 2001201,lv = 28},[2] = {id = 2001202,lv = 28},[3] = {id = 2001203,lv = 28},[4] = {id = 2001204,lv = 28},[5] = {id = 2001205,lv = 28},[6] = {id = 2001206,lv = 28},[7] = {id = 2001207,lv = 28},[8] = {id = 2001208,lv = 28}},exWeapon = {[1] = 7,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-4-6-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1040621,cardId = 1102998,lv = 30,bklv = 4,star = 1,ghost = 6,equip = {[1] = {id = 2101201,lv = 28},[2] = {id = 2101202,lv = 28},[3] = {id = 2101203,lv = 28},[4] = {id = 2101204,lv = 28},[5] = {id = 2101205,lv = 28},[6] = {id = 2101206,lv = 28},[7] = {id = 2101207,lv = 28},[8] = {id = 2101208,lv = 28}},exWeapon = {[1] = 7,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1040630,cardId = 1101998,lv = 28,bklv = 3,star = 1,equip = {[1] = {id = 2001201,lv = 28},[2] = {id = 2001202,lv = 28},[3] = {id = 2001203,lv = 28},[4] = {id = 2001204,lv = 28},[5] = {id = 2001205,lv = 28},[6] = {id = 2001206,lv = 28},[7] = {id = 2001207,lv = 28},[8] = {id = 2001208,lv = 28}},exWeapon = {[1] = 7,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-4-6-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1040631,cardId = 1102998,lv = 25,bklv = 3,star = 1,ghost = 5,equip = {[1] = {id = 2101201,lv = 28},[2] = {id = 2101202,lv = 28},[3] = {id = 2101203,lv = 28},[4] = {id = 2101204,lv = 28},[5] = {id = 2101205,lv = 28},[6] = {id = 2101206,lv = 28},[7] = {id = 2101207,lv = 28},[8] = {id = 2101208,lv = 28}},exWeapon = {[1] = 7,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10407] = {
		[1] = {
			jlr = {id = 1040710,cardId = 1101999,lv = 29,bklv = 3,star = 1,equip = {[1] = {id = 2001201,lv = 29},[2] = {id = 2001202,lv = 29},[3] = {id = 2001203,lv = 29},[4] = {id = 2001204,lv = 29},[5] = {id = 2001205,lv = 29},[6] = {id = 2001206,lv = 29},[7] = {id = 2001207,lv = 29},[8] = {id = 2001208,lv = 29}},exWeapon = {[1] = 7,[2] = 2,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-4-7-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1040711,cardId = 1102999,lv = 30,bklv = 4,star = 1,ghost = 5,equip = {[1] = {id = 2101201,lv = 29},[2] = {id = 2101202,lv = 29},[3] = {id = 2101203,lv = 29},[4] = {id = 2101204,lv = 29},[5] = {id = 2101205,lv = 29},[6] = {id = 2101206,lv = 29},[7] = {id = 2101207,lv = 29},[8] = {id = 2101208,lv = 29}},exWeapon = {[1] = 7,[2] = 2,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1040720,cardId = 1101999,lv = 29,bklv = 3,star = 1,equip = {[1] = {id = 2001201,lv = 29},[2] = {id = 2001202,lv = 29},[3] = {id = 2001203,lv = 29},[4] = {id = 2001204,lv = 29},[5] = {id = 2001205,lv = 29},[6] = {id = 2001206,lv = 29},[7] = {id = 2001207,lv = 29},[8] = {id = 2001208,lv = 29}},exWeapon = {[1] = 7,[2] = 2,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-4-7-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1040721,cardId = 1102999,lv = 30,bklv = 4,star = 1,ghost = 6,equip = {[1] = {id = 2101201,lv = 29},[2] = {id = 2101202,lv = 29},[3] = {id = 2101203,lv = 29},[4] = {id = 2101204,lv = 29},[5] = {id = 2101205,lv = 29},[6] = {id = 2101206,lv = 29},[7] = {id = 2101207,lv = 29},[8] = {id = 2101208,lv = 29}},exWeapon = {[1] = 7,[2] = 2,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1040730,cardId = 1101999,lv = 29,bklv = 3,star = 1,equip = {[1] = {id = 2001201,lv = 29},[2] = {id = 2001202,lv = 29},[3] = {id = 2001203,lv = 29},[4] = {id = 2001204,lv = 29},[5] = {id = 2001205,lv = 29},[6] = {id = 2001206,lv = 29},[7] = {id = 2001207,lv = 29},[8] = {id = 2001208,lv = 29}},exWeapon = {[1] = 7,[2] = 2,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-4-7-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1040731,cardId = 1102999,lv = 25,bklv = 3,star = 1,ghost = 5,equip = {[1] = {id = 2101201,lv = 29},[2] = {id = 2101202,lv = 29},[3] = {id = 2101203,lv = 29},[4] = {id = 2101204,lv = 29},[5] = {id = 2101205,lv = 29},[6] = {id = 2101206,lv = 29},[7] = {id = 2101207,lv = 29},[8] = {id = 2101208,lv = 29}},exWeapon = {[1] = 7,[2] = 2,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10408] = {
		[1] = {
			jlr = {id = 1040810,cardId = 1101999,lv = 29,bklv = 3,star = 1,equip = {[1] = {id = 2001201,lv = 29},[2] = {id = 2001202,lv = 29},[3] = {id = 2001203,lv = 29},[4] = {id = 2001204,lv = 29},[5] = {id = 2001205,lv = 29},[6] = {id = 2001206,lv = 29},[7] = {id = 2001207,lv = 29},[8] = {id = 2001208,lv = 29}},exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-4-8-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1040811,cardId = 1102999,lv = 30,bklv = 4,star = 1,ghost = 5,equip = {[1] = {id = 2101201,lv = 29},[2] = {id = 2101202,lv = 29},[3] = {id = 2101203,lv = 29},[4] = {id = 2101204,lv = 29},[5] = {id = 2101205,lv = 29},[6] = {id = 2101206,lv = 29},[7] = {id = 2101207,lv = 29},[8] = {id = 2101208,lv = 29}},exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1040820,cardId = 1101999,lv = 29,bklv = 3,star = 1,equip = {[1] = {id = 2001201,lv = 29},[2] = {id = 2001202,lv = 29},[3] = {id = 2001203,lv = 29},[4] = {id = 2001204,lv = 29},[5] = {id = 2001205,lv = 29},[6] = {id = 2001206,lv = 29},[7] = {id = 2001207,lv = 29},[8] = {id = 2001208,lv = 29}},exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-4-8-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1040821,cardId = 1102999,lv = 30,bklv = 4,star = 1,ghost = 6,equip = {[1] = {id = 2101201,lv = 29},[2] = {id = 2101202,lv = 29},[3] = {id = 2101203,lv = 29},[4] = {id = 2101204,lv = 29},[5] = {id = 2101205,lv = 29},[6] = {id = 2101206,lv = 29},[7] = {id = 2101207,lv = 29},[8] = {id = 2101208,lv = 29}},exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1040830,cardId = 1101999,lv = 29,bklv = 3,star = 1,equip = {[1] = {id = 2001201,lv = 29},[2] = {id = 2001202,lv = 29},[3] = {id = 2001203,lv = 29},[4] = {id = 2001204,lv = 29},[5] = {id = 2001205,lv = 29},[6] = {id = 2001206,lv = 29},[7] = {id = 2001207,lv = 29},[8] = {id = 2001208,lv = 29}},exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-4-8-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1040831,cardId = 1102999,lv = 25,bklv = 3,star = 1,ghost = 5,equip = {[1] = {id = 2101201,lv = 29},[2] = {id = 2101202,lv = 29},[3] = {id = 2101203,lv = 29},[4] = {id = 2101204,lv = 29},[5] = {id = 2101205,lv = 29},[6] = {id = 2101206,lv = 29},[7] = {id = 2101207,lv = 29},[8] = {id = 2101208,lv = 29}},exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10409] = {
		[1] = {
			jlr = {id = 1040910,cardId = 1101998,lv = 30,bklv = 3,star = 1,equip = {[1] = {id = 2001201,lv = 30},[2] = {id = 2001202,lv = 30},[3] = {id = 2001203,lv = 30},[4] = {id = 2001204,lv = 30},[5] = {id = 2001205,lv = 30},[6] = {id = 2001206,lv = 30},[7] = {id = 2001207,lv = 30},[8] = {id = 2001208,lv = 30}},exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-4-9-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1040911,cardId = 1102998,lv = 30,bklv = 4,star = 1,ghost = 6,equip = {[1] = {id = 2101201,lv = 30},[2] = {id = 2101202,lv = 30},[3] = {id = 2101203,lv = 30},[4] = {id = 2101204,lv = 30},[5] = {id = 2101205,lv = 30},[6] = {id = 2101206,lv = 30},[7] = {id = 2101207,lv = 30},[8] = {id = 2101208,lv = 30}},exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1040920,cardId = 1101997,lv = 30,bklv = 3,star = 1,equip = {[1] = {id = 2001201,lv = 30},[2] = {id = 2001202,lv = 30},[3] = {id = 2001203,lv = 30},[4] = {id = 2001204,lv = 30},[5] = {id = 2001205,lv = 30},[6] = {id = 2001206,lv = 30},[7] = {id = 2001207,lv = 30},[8] = {id = 2001208,lv = 30}},exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-4-9-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1040921,cardId = 1102997,lv = 30,bklv = 4,star = 1,ghost = 6,equip = {[1] = {id = 2101201,lv = 30},[2] = {id = 2101202,lv = 30},[3] = {id = 2101203,lv = 30},[4] = {id = 2101204,lv = 30},[5] = {id = 2101205,lv = 30},[6] = {id = 2101206,lv = 30},[7] = {id = 2101207,lv = 30},[8] = {id = 2101208,lv = 30}},exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1040930,cardId = 1101998,lv = 30,bklv = 3,star = 1,equip = {[1] = {id = 2001201,lv = 30},[2] = {id = 2001202,lv = 30},[3] = {id = 2001203,lv = 30},[4] = {id = 2001204,lv = 30},[5] = {id = 2001205,lv = 30},[6] = {id = 2001206,lv = 30},[7] = {id = 2001207,lv = 30},[8] = {id = 2001208,lv = 30}},exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-4-9-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1040931,cardId = 1102998,lv = 30,bklv = 4,star = 1,ghost = 6,equip = {[1] = {id = 2101201,lv = 30},[2] = {id = 2101202,lv = 30},[3] = {id = 2101203,lv = 30},[4] = {id = 2101204,lv = 30},[5] = {id = 2101205,lv = 30},[6] = {id = 2101206,lv = 30},[7] = {id = 2101207,lv = 30},[8] = {id = 2101208,lv = 30}},exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10410] = {
		[1] = {
			jlr = {id = 1041010,cardId = 1101997,lv = 30,bklv = 3,star = 1,equip = {[1] = {id = 2001201,lv = 30},[2] = {id = 2001202,lv = 30},[3] = {id = 2001203,lv = 30},[4] = {id = 2001204,lv = 30},[5] = {id = 2001205,lv = 30},[6] = {id = 2001206,lv = 30},[7] = {id = 2001207,lv = 30},[8] = {id = 2001208,lv = 30}},exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 1,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-4-10-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1041011,cardId = 1102997,lv = 30,bklv = 4,star = 1,ghost = 6,equip = {[1] = {id = 2101201,lv = 30},[2] = {id = 2101202,lv = 30},[3] = {id = 2101203,lv = 30},[4] = {id = 2101204,lv = 30},[5] = {id = 2101205,lv = 30},[6] = {id = 2101206,lv = 30},[7] = {id = 2101207,lv = 30},[8] = {id = 2101208,lv = 30}},exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 1,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1041020,cardId = 1101997,lv = 30,bklv = 3,star = 1,equip = {[1] = {id = 2001201,lv = 30},[2] = {id = 2001202,lv = 30},[3] = {id = 2001203,lv = 30},[4] = {id = 2001204,lv = 30},[5] = {id = 2001205,lv = 30},[6] = {id = 2001206,lv = 30},[7] = {id = 2001207,lv = 30},[8] = {id = 2001208,lv = 30}},exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 1,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-4-10-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1041021,cardId = 1102997,lv = 30,bklv = 4,star = 1,ghost = 6,equip = {[1] = {id = 2101201,lv = 30},[2] = {id = 2101202,lv = 30},[3] = {id = 2101203,lv = 30},[4] = {id = 2101204,lv = 30},[5] = {id = 2101205,lv = 30},[6] = {id = 2101206,lv = 30},[7] = {id = 2101207,lv = 30},[8] = {id = 2101208,lv = 30}},exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 1,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1041030,cardId = 1101997,lv = 30,bklv = 3,star = 1,equip = {[1] = {id = 2001201,lv = 30},[2] = {id = 2001202,lv = 30},[3] = {id = 2001203,lv = 30},[4] = {id = 2001204,lv = 30},[5] = {id = 2001205,lv = 30},[6] = {id = 2001206,lv = 30},[7] = {id = 2001207,lv = 30},[8] = {id = 2001208,lv = 30}},exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 1,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-4-10-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1041031,cardId = 1102997,lv = 30,bklv = 4,star = 1,ghost = 6,equip = {[1] = {id = 2101201,lv = 30},[2] = {id = 2101202,lv = 30},[3] = {id = 2101203,lv = 30},[4] = {id = 2101204,lv = 30},[5] = {id = 2101205,lv = 30},[6] = {id = 2101206,lv = 30},[7] = {id = 2101207,lv = 30},[8] = {id = 2101208,lv = 30}},exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 1,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10501] = {
		[1] = {
			jlr = {id = 1050110,cardId = 1101999,lv = 30,bklv = 3,star = 1,equip = {[1] = {id = 2001201,lv = 30},[2] = {id = 2001202,lv = 30},[3] = {id = 2001203,lv = 30},[4] = {id = 2001204,lv = 30},[5] = {id = 2001205,lv = 30},[6] = {id = 2001206,lv = 30},[7] = {id = 2001207,lv = 30},[8] = {id = 2001208,lv = 30}},exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 1,[6] = 1,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-5-1-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1050111,cardId = 1102999,lv = 30,bklv = 4,star = 1,ghost = 6,equip = {[1] = {id = 2101201,lv = 30},[2] = {id = 2101202,lv = 30},[3] = {id = 2101203,lv = 30},[4] = {id = 2101204,lv = 30},[5] = {id = 2101205,lv = 30},[6] = {id = 2101206,lv = 30},[7] = {id = 2101207,lv = 30},[8] = {id = 2101208,lv = 30}},exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 1,[6] = 1,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1050120,cardId = 1101999,lv = 30,bklv = 3,star = 1,equip = {[1] = {id = 2001201,lv = 30},[2] = {id = 2001202,lv = 30},[3] = {id = 2001203,lv = 30},[4] = {id = 2001204,lv = 30},[5] = {id = 2001205,lv = 30},[6] = {id = 2001206,lv = 30},[7] = {id = 2001207,lv = 30},[8] = {id = 2001208,lv = 30}},exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 1,[6] = 1,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-5-1-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1050121,cardId = 1102999,lv = 30,bklv = 4,star = 1,ghost = 6,equip = {[1] = {id = 2101201,lv = 30},[2] = {id = 2101202,lv = 30},[3] = {id = 2101203,lv = 30},[4] = {id = 2101204,lv = 30},[5] = {id = 2101205,lv = 30},[6] = {id = 2101206,lv = 30},[7] = {id = 2101207,lv = 30},[8] = {id = 2101208,lv = 30}},exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 1,[6] = 1,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1050130,cardId = 1101999,lv = 30,bklv = 3,star = 1,equip = {[1] = {id = 2001201,lv = 30},[2] = {id = 2001202,lv = 30},[3] = {id = 2001203,lv = 30},[4] = {id = 2001204,lv = 30},[5] = {id = 2001205,lv = 30},[6] = {id = 2001206,lv = 30},[7] = {id = 2001207,lv = 30},[8] = {id = 2001208,lv = 30}},exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 1,[6] = 1,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-5-1-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1050131,cardId = 1102999,lv = 30,bklv = 4,star = 1,ghost = 6,equip = {[1] = {id = 2101201,lv = 30},[2] = {id = 2101202,lv = 30},[3] = {id = 2101203,lv = 30},[4] = {id = 2101204,lv = 30},[5] = {id = 2101205,lv = 30},[6] = {id = 2101206,lv = 30},[7] = {id = 2101207,lv = 30},[8] = {id = 2101208,lv = 30}},exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 1,[6] = 1,[7] = 0,[8] = 0}}
		}
	},
	[10502] = {
		[1] = {
			jlr = {id = 1050210,cardId = 1101999,lv = 30,bklv = 3,star = 1,equip = {[1] = {id = 2001201,lv = 30},[2] = {id = 2001202,lv = 30},[3] = {id = 2001203,lv = 30},[4] = {id = 2001204,lv = 30},[5] = {id = 2001205,lv = 30},[6] = {id = 2001206,lv = 30},[7] = {id = 2001207,lv = 30},[8] = {id = 2001208,lv = 30}},exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 1,[6] = 1,[7] = 1,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-5-2-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1050211,cardId = 1102999,lv = 30,bklv = 4,star = 1,ghost = 6,equip = {[1] = {id = 2101201,lv = 30},[2] = {id = 2101202,lv = 30},[3] = {id = 2101203,lv = 30},[4] = {id = 2101204,lv = 30},[5] = {id = 2101205,lv = 30},[6] = {id = 2101206,lv = 30},[7] = {id = 2101207,lv = 30},[8] = {id = 2101208,lv = 30}},exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 1,[6] = 1,[7] = 1,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1050220,cardId = 1101999,lv = 30,bklv = 3,star = 1,equip = {[1] = {id = 2001201,lv = 30},[2] = {id = 2001202,lv = 30},[3] = {id = 2001203,lv = 30},[4] = {id = 2001204,lv = 30},[5] = {id = 2001205,lv = 30},[6] = {id = 2001206,lv = 30},[7] = {id = 2001207,lv = 30},[8] = {id = 2001208,lv = 30}},exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 1,[6] = 1,[7] = 1,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-5-2-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1050221,cardId = 1102999,lv = 30,bklv = 4,star = 1,ghost = 6,equip = {[1] = {id = 2101201,lv = 30},[2] = {id = 2101202,lv = 30},[3] = {id = 2101203,lv = 30},[4] = {id = 2101204,lv = 30},[5] = {id = 2101205,lv = 30},[6] = {id = 2101206,lv = 30},[7] = {id = 2101207,lv = 30},[8] = {id = 2101208,lv = 30}},exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 1,[6] = 1,[7] = 1,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1050230,cardId = 1101999,lv = 30,bklv = 3,star = 1,equip = {[1] = {id = 2001201,lv = 30},[2] = {id = 2001202,lv = 30},[3] = {id = 2001203,lv = 30},[4] = {id = 2001204,lv = 30},[5] = {id = 2001205,lv = 30},[6] = {id = 2001206,lv = 30},[7] = {id = 2001207,lv = 30},[8] = {id = 2001208,lv = 30}},exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 1,[6] = 1,[7] = 1,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-5-2-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1050231,cardId = 1102999,lv = 30,bklv = 4,star = 1,ghost = 6,equip = {[1] = {id = 2101201,lv = 30},[2] = {id = 2101202,lv = 30},[3] = {id = 2101203,lv = 30},[4] = {id = 2101204,lv = 30},[5] = {id = 2101205,lv = 30},[6] = {id = 2101206,lv = 30},[7] = {id = 2101207,lv = 30},[8] = {id = 2101208,lv = 30}},exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 1,[6] = 1,[7] = 1,[8] = 0}}
		}
	},
	[10503] = {
		[1] = {
			jlr = {id = 1050310,cardId = 1101999,lv = 31,bklv = 3,star = 1,equip = {[1] = {id = 2001201,lv = 31},[2] = {id = 2001202,lv = 31},[3] = {id = 2001203,lv = 31},[4] = {id = 2001204,lv = 31},[5] = {id = 2001205,lv = 31},[6] = {id = 2001206,lv = 31},[7] = {id = 2001207,lv = 31},[8] = {id = 2001208,lv = 31}},exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 1,[6] = 1,[7] = 1,[8] = 1},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-5-3-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1050311,cardId = 1102999,lv = 30,bklv = 4,star = 1,ghost = 6,equip = {[1] = {id = 2101301,lv = 31},[2] = {id = 2101302,lv = 31},[3] = {id = 2101303,lv = 31},[4] = {id = 2101304,lv = 31},[5] = {id = 2101305,lv = 31},[6] = {id = 2101306,lv = 31},[7] = {id = 2101307,lv = 31},[8] = {id = 2101308,lv = 31}},exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 1,[6] = 1,[7] = 1,[8] = 1}}
		},
		[2] = {
			jlr = {id = 1050320,cardId = 1101998,lv = 31,bklv = 3,star = 1,equip = {[1] = {id = 2001201,lv = 31},[2] = {id = 2001202,lv = 31},[3] = {id = 2001203,lv = 31},[4] = {id = 2001204,lv = 31},[5] = {id = 2001205,lv = 31},[6] = {id = 2001206,lv = 31},[7] = {id = 2001207,lv = 31},[8] = {id = 2001208,lv = 31}},exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 1,[6] = 1,[7] = 1,[8] = 1},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-5-3-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1050321,cardId = 1102998,lv = 35,bklv = 4,star = 1,ghost = 6,equip = {[1] = {id = 2101301,lv = 31},[2] = {id = 2101302,lv = 31},[3] = {id = 2101303,lv = 31},[4] = {id = 2101304,lv = 31},[5] = {id = 2101305,lv = 31},[6] = {id = 2101306,lv = 31},[7] = {id = 2101307,lv = 31},[8] = {id = 2101308,lv = 31}},exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 1,[6] = 1,[7] = 1,[8] = 1}}
		},
		[3] = {
			jlr = {id = 1050330,cardId = 1101999,lv = 31,bklv = 3,star = 1,equip = {[1] = {id = 2001201,lv = 31},[2] = {id = 2001202,lv = 31},[3] = {id = 2001203,lv = 31},[4] = {id = 2001204,lv = 31},[5] = {id = 2001205,lv = 31},[6] = {id = 2001206,lv = 31},[7] = {id = 2001207,lv = 31},[8] = {id = 2001208,lv = 31}},exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 1,[6] = 1,[7] = 1,[8] = 1},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-5-3-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1050331,cardId = 1102999,lv = 30,bklv = 4,star = 1,ghost = 6,equip = {[1] = {id = 2101301,lv = 31},[2] = {id = 2101302,lv = 31},[3] = {id = 2101303,lv = 31},[4] = {id = 2101304,lv = 31},[5] = {id = 2101305,lv = 31},[6] = {id = 2101306,lv = 31},[7] = {id = 2101307,lv = 31},[8] = {id = 2101308,lv = 31}},exWeapon = {[1] = 7,[2] = 2,[3] = 1,[4] = 1,[5] = 1,[6] = 1,[7] = 1,[8] = 1}}
		}
	},
	[10504] = {
		[1] = {
			jlr = {id = 1050410,cardId = 1101999,lv = 32,bklv = 3,star = 1,equip = {[1] = {id = 2001201,lv = 32},[2] = {id = 2001202,lv = 32},[3] = {id = 2001203,lv = 32},[4] = {id = 2001204,lv = 32},[5] = {id = 2001205,lv = 32},[6] = {id = 2001206,lv = 32},[7] = {id = 2001207,lv = 32},[8] = {id = 2001208,lv = 32}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-5-4-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1050411,cardId = 1102999,lv = 30,bklv = 4,star = 1,ghost = 6,equip = {[1] = {id = 2101301,lv = 32},[2] = {id = 2101302,lv = 32},[3] = {id = 2101303,lv = 32},[4] = {id = 2101304,lv = 32},[5] = {id = 2101305,lv = 32},[6] = {id = 2101306,lv = 32},[7] = {id = 2101307,lv = 32},[8] = {id = 2101308,lv = 32}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1050420,cardId = 1101999,lv = 32,bklv = 3,star = 1,equip = {[1] = {id = 2001201,lv = 32},[2] = {id = 2001202,lv = 32},[3] = {id = 2001203,lv = 32},[4] = {id = 2001204,lv = 32},[5] = {id = 2001205,lv = 32},[6] = {id = 2001206,lv = 32},[7] = {id = 2001207,lv = 32},[8] = {id = 2001208,lv = 32}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-5-4-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1050421,cardId = 1102999,lv = 35,bklv = 4,star = 1,ghost = 6,equip = {[1] = {id = 2101301,lv = 32},[2] = {id = 2101302,lv = 32},[3] = {id = 2101303,lv = 32},[4] = {id = 2101304,lv = 32},[5] = {id = 2101305,lv = 32},[6] = {id = 2101306,lv = 32},[7] = {id = 2101307,lv = 32},[8] = {id = 2101308,lv = 32}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1050430,cardId = 1101999,lv = 32,bklv = 3,star = 1,equip = {[1] = {id = 2001201,lv = 32},[2] = {id = 2001202,lv = 32},[3] = {id = 2001203,lv = 32},[4] = {id = 2001204,lv = 32},[5] = {id = 2001205,lv = 32},[6] = {id = 2001206,lv = 32},[7] = {id = 2001207,lv = 32},[8] = {id = 2001208,lv = 32}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-5-4-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1050431,cardId = 1102999,lv = 30,bklv = 4,star = 1,ghost = 6,equip = {[1] = {id = 2101301,lv = 32},[2] = {id = 2101302,lv = 32},[3] = {id = 2101303,lv = 32},[4] = {id = 2101304,lv = 32},[5] = {id = 2101305,lv = 32},[6] = {id = 2101306,lv = 32},[7] = {id = 2101307,lv = 32},[8] = {id = 2101308,lv = 32}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10505] = {
		[1] = {
			jlr = {id = 1050510,cardId = 1101999,lv = 32,bklv = 3,star = 1,equip = {[1] = {id = 2001201,lv = 32},[2] = {id = 2001202,lv = 32},[3] = {id = 2001203,lv = 32},[4] = {id = 2001204,lv = 32},[5] = {id = 2001205,lv = 32},[6] = {id = 2001206,lv = 32},[7] = {id = 2001207,lv = 32},[8] = {id = 2001208,lv = 32}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-5-5-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1050511,cardId = 1102999,lv = 30,bklv = 4,star = 1,ghost = 6,equip = {[1] = {id = 2101301,lv = 32},[2] = {id = 2101302,lv = 32},[3] = {id = 2101303,lv = 32},[4] = {id = 2101304,lv = 32},[5] = {id = 2101305,lv = 32},[6] = {id = 2101306,lv = 32},[7] = {id = 2101307,lv = 32},[8] = {id = 2101308,lv = 32}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1050520,cardId = 1101999,lv = 32,bklv = 3,star = 1,equip = {[1] = {id = 2001201,lv = 32},[2] = {id = 2001202,lv = 32},[3] = {id = 2001203,lv = 32},[4] = {id = 2001204,lv = 32},[5] = {id = 2001205,lv = 32},[6] = {id = 2001206,lv = 32},[7] = {id = 2001207,lv = 32},[8] = {id = 2001208,lv = 32}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-5-5-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1050521,cardId = 1102999,lv = 35,bklv = 4,star = 1,ghost = 6,equip = {[1] = {id = 2101301,lv = 32},[2] = {id = 2101302,lv = 32},[3] = {id = 2101303,lv = 32},[4] = {id = 2101304,lv = 32},[5] = {id = 2101305,lv = 32},[6] = {id = 2101306,lv = 32},[7] = {id = 2101307,lv = 32},[8] = {id = 2101308,lv = 32}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1050530,cardId = 1101999,lv = 32,bklv = 3,star = 1,equip = {[1] = {id = 2001201,lv = 32},[2] = {id = 2001202,lv = 32},[3] = {id = 2001203,lv = 32},[4] = {id = 2001204,lv = 32},[5] = {id = 2001205,lv = 32},[6] = {id = 2001206,lv = 32},[7] = {id = 2001207,lv = 32},[8] = {id = 2001208,lv = 32}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-5-5-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1050531,cardId = 1102999,lv = 30,bklv = 4,star = 1,ghost = 6,equip = {[1] = {id = 2101301,lv = 32},[2] = {id = 2101302,lv = 32},[3] = {id = 2101303,lv = 32},[4] = {id = 2101304,lv = 32},[5] = {id = 2101305,lv = 32},[6] = {id = 2101306,lv = 32},[7] = {id = 2101307,lv = 32},[8] = {id = 2101308,lv = 32}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10506] = {
		[1] = {
			jlr = {id = 1050610,cardId = 1101998,lv = 33,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 33},[2] = {id = 2001302,lv = 33},[3] = {id = 2001303,lv = 33},[4] = {id = 2001304,lv = 33},[5] = {id = 2001305,lv = 33},[6] = {id = 2001306,lv = 33},[7] = {id = 2001307,lv = 33},[8] = {id = 2001308,lv = 33}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-5-6-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1050611,cardId = 1102998,lv = 35,bklv = 4,star = 1,ghost = 6,equip = {[1] = {id = 2101301,lv = 33},[2] = {id = 2101302,lv = 33},[3] = {id = 2101303,lv = 33},[4] = {id = 2101304,lv = 33},[5] = {id = 2101305,lv = 33},[6] = {id = 2101306,lv = 33},[7] = {id = 2101307,lv = 33},[8] = {id = 2101308,lv = 33}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1050620,cardId = 1101998,lv = 33,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 33},[2] = {id = 2001302,lv = 33},[3] = {id = 2001303,lv = 33},[4] = {id = 2001304,lv = 33},[5] = {id = 2001305,lv = 33},[6] = {id = 2001306,lv = 33},[7] = {id = 2001307,lv = 33},[8] = {id = 2001308,lv = 33}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-5-6-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1050621,cardId = 1102998,lv = 35,bklv = 4,star = 1,ghost = 7,equip = {[1] = {id = 2101301,lv = 33},[2] = {id = 2101302,lv = 33},[3] = {id = 2101303,lv = 33},[4] = {id = 2101304,lv = 33},[5] = {id = 2101305,lv = 33},[6] = {id = 2101306,lv = 33},[7] = {id = 2101307,lv = 33},[8] = {id = 2101308,lv = 33}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1050630,cardId = 1101998,lv = 33,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 33},[2] = {id = 2001302,lv = 33},[3] = {id = 2001303,lv = 33},[4] = {id = 2001304,lv = 33},[5] = {id = 2001305,lv = 33},[6] = {id = 2001306,lv = 33},[7] = {id = 2001307,lv = 33},[8] = {id = 2001308,lv = 33}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-5-6-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1050631,cardId = 1102998,lv = 30,bklv = 4,star = 1,ghost = 6,equip = {[1] = {id = 2101301,lv = 33},[2] = {id = 2101302,lv = 33},[3] = {id = 2101303,lv = 33},[4] = {id = 2101304,lv = 33},[5] = {id = 2101305,lv = 33},[6] = {id = 2101306,lv = 33},[7] = {id = 2101307,lv = 33},[8] = {id = 2101308,lv = 33}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10507] = {
		[1] = {
			jlr = {id = 1050710,cardId = 1101999,lv = 34,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 34},[2] = {id = 2001302,lv = 34},[3] = {id = 2001303,lv = 34},[4] = {id = 2001304,lv = 34},[5] = {id = 2001305,lv = 34},[6] = {id = 2001306,lv = 34},[7] = {id = 2001307,lv = 34},[8] = {id = 2001308,lv = 34}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-5-7-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1050711,cardId = 1102999,lv = 35,bklv = 4,star = 1,ghost = 6,equip = {[1] = {id = 2101301,lv = 34},[2] = {id = 2101302,lv = 34},[3] = {id = 2101303,lv = 34},[4] = {id = 2101304,lv = 34},[5] = {id = 2101305,lv = 34},[6] = {id = 2101306,lv = 34},[7] = {id = 2101307,lv = 34},[8] = {id = 2101308,lv = 34}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1050720,cardId = 1101999,lv = 34,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 34},[2] = {id = 2001302,lv = 34},[3] = {id = 2001303,lv = 34},[4] = {id = 2001304,lv = 34},[5] = {id = 2001305,lv = 34},[6] = {id = 2001306,lv = 34},[7] = {id = 2001307,lv = 34},[8] = {id = 2001308,lv = 34}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-5-7-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1050721,cardId = 1102999,lv = 35,bklv = 4,star = 1,ghost = 7,equip = {[1] = {id = 2101301,lv = 34},[2] = {id = 2101302,lv = 34},[3] = {id = 2101303,lv = 34},[4] = {id = 2101304,lv = 34},[5] = {id = 2101305,lv = 34},[6] = {id = 2101306,lv = 34},[7] = {id = 2101307,lv = 34},[8] = {id = 2101308,lv = 34}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1050730,cardId = 1101999,lv = 34,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 34},[2] = {id = 2001302,lv = 34},[3] = {id = 2001303,lv = 34},[4] = {id = 2001304,lv = 34},[5] = {id = 2001305,lv = 34},[6] = {id = 2001306,lv = 34},[7] = {id = 2001307,lv = 34},[8] = {id = 2001308,lv = 34}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-5-7-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1050731,cardId = 1102999,lv = 30,bklv = 4,star = 1,ghost = 6,equip = {[1] = {id = 2101301,lv = 34},[2] = {id = 2101302,lv = 34},[3] = {id = 2101303,lv = 34},[4] = {id = 2101304,lv = 34},[5] = {id = 2101305,lv = 34},[6] = {id = 2101306,lv = 34},[7] = {id = 2101307,lv = 34},[8] = {id = 2101308,lv = 34}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10508] = {
		[1] = {
			jlr = {id = 1050810,cardId = 1101999,lv = 34,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 34},[2] = {id = 2001302,lv = 34},[3] = {id = 2001303,lv = 34},[4] = {id = 2001304,lv = 34},[5] = {id = 2001305,lv = 34},[6] = {id = 2001306,lv = 34},[7] = {id = 2001307,lv = 34},[8] = {id = 2001308,lv = 34}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-5-8-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1050811,cardId = 1102999,lv = 35,bklv = 4,star = 1,ghost = 6,equip = {[1] = {id = 2101301,lv = 34},[2] = {id = 2101302,lv = 34},[3] = {id = 2101303,lv = 34},[4] = {id = 2101304,lv = 34},[5] = {id = 2101305,lv = 34},[6] = {id = 2101306,lv = 34},[7] = {id = 2101307,lv = 34},[8] = {id = 2101308,lv = 34}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1050820,cardId = 1101999,lv = 34,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 34},[2] = {id = 2001302,lv = 34},[3] = {id = 2001303,lv = 34},[4] = {id = 2001304,lv = 34},[5] = {id = 2001305,lv = 34},[6] = {id = 2001306,lv = 34},[7] = {id = 2001307,lv = 34},[8] = {id = 2001308,lv = 34}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-5-8-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1050821,cardId = 1102999,lv = 35,bklv = 4,star = 1,ghost = 7,equip = {[1] = {id = 2101301,lv = 34},[2] = {id = 2101302,lv = 34},[3] = {id = 2101303,lv = 34},[4] = {id = 2101304,lv = 34},[5] = {id = 2101305,lv = 34},[6] = {id = 2101306,lv = 34},[7] = {id = 2101307,lv = 34},[8] = {id = 2101308,lv = 34}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1050830,cardId = 1101999,lv = 34,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 34},[2] = {id = 2001302,lv = 34},[3] = {id = 2001303,lv = 34},[4] = {id = 2001304,lv = 34},[5] = {id = 2001305,lv = 34},[6] = {id = 2001306,lv = 34},[7] = {id = 2001307,lv = 34},[8] = {id = 2001308,lv = 34}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-5-8-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1050831,cardId = 1102999,lv = 30,bklv = 4,star = 1,ghost = 6,equip = {[1] = {id = 2101301,lv = 34},[2] = {id = 2101302,lv = 34},[3] = {id = 2101303,lv = 34},[4] = {id = 2101304,lv = 34},[5] = {id = 2101305,lv = 34},[6] = {id = 2101306,lv = 34},[7] = {id = 2101307,lv = 34},[8] = {id = 2101308,lv = 34}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10509] = {
		[1] = {
			jlr = {id = 1050910,cardId = 1101998,lv = 35,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 35},[2] = {id = 2001302,lv = 35},[3] = {id = 2001303,lv = 35},[4] = {id = 2001304,lv = 35},[5] = {id = 2001305,lv = 35},[6] = {id = 2001306,lv = 35},[7] = {id = 2001307,lv = 35},[8] = {id = 2001308,lv = 35}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-5-9-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1050911,cardId = 1102998,lv = 35,bklv = 4,star = 1,ghost = 7,equip = {[1] = {id = 2101301,lv = 35},[2] = {id = 2101302,lv = 35},[3] = {id = 2101303,lv = 35},[4] = {id = 2101304,lv = 35},[5] = {id = 2101305,lv = 35},[6] = {id = 2101306,lv = 35},[7] = {id = 2101307,lv = 35},[8] = {id = 2101308,lv = 35}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1050920,cardId = 1101997,lv = 35,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 35},[2] = {id = 2001302,lv = 35},[3] = {id = 2001303,lv = 35},[4] = {id = 2001304,lv = 35},[5] = {id = 2001305,lv = 35},[6] = {id = 2001306,lv = 35},[7] = {id = 2001307,lv = 35},[8] = {id = 2001308,lv = 35}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-5-9-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1050921,cardId = 1102997,lv = 35,bklv = 4,star = 1,ghost = 7,equip = {[1] = {id = 2101301,lv = 35},[2] = {id = 2101302,lv = 35},[3] = {id = 2101303,lv = 35},[4] = {id = 2101304,lv = 35},[5] = {id = 2101305,lv = 35},[6] = {id = 2101306,lv = 35},[7] = {id = 2101307,lv = 35},[8] = {id = 2101308,lv = 35}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1050930,cardId = 1101998,lv = 35,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 35},[2] = {id = 2001302,lv = 35},[3] = {id = 2001303,lv = 35},[4] = {id = 2001304,lv = 35},[5] = {id = 2001305,lv = 35},[6] = {id = 2001306,lv = 35},[7] = {id = 2001307,lv = 35},[8] = {id = 2001308,lv = 35}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-5-9-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1050931,cardId = 1102998,lv = 35,bklv = 4,star = 1,ghost = 7,equip = {[1] = {id = 2101301,lv = 35},[2] = {id = 2101302,lv = 35},[3] = {id = 2101303,lv = 35},[4] = {id = 2101304,lv = 35},[5] = {id = 2101305,lv = 35},[6] = {id = 2101306,lv = 35},[7] = {id = 2101307,lv = 35},[8] = {id = 2101308,lv = 35}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10510] = {
		[1] = {
			jlr = {id = 1051010,cardId = 1101997,lv = 35,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 35},[2] = {id = 2001302,lv = 35},[3] = {id = 2001303,lv = 35},[4] = {id = 2001304,lv = 35},[5] = {id = 2001305,lv = 35},[6] = {id = 2001306,lv = 35},[7] = {id = 2001307,lv = 35},[8] = {id = 2001308,lv = 35}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-5-10-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1051011,cardId = 1102997,lv = 35,bklv = 4,star = 1,ghost = 7,equip = {[1] = {id = 2101301,lv = 35},[2] = {id = 2101302,lv = 35},[3] = {id = 2101303,lv = 35},[4] = {id = 2101304,lv = 35},[5] = {id = 2101305,lv = 35},[6] = {id = 2101306,lv = 35},[7] = {id = 2101307,lv = 35},[8] = {id = 2101308,lv = 35}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1051020,cardId = 1101997,lv = 35,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 35},[2] = {id = 2001302,lv = 35},[3] = {id = 2001303,lv = 35},[4] = {id = 2001304,lv = 35},[5] = {id = 2001305,lv = 35},[6] = {id = 2001306,lv = 35},[7] = {id = 2001307,lv = 35},[8] = {id = 2001308,lv = 35}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-5-10-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1051021,cardId = 1102997,lv = 35,bklv = 4,star = 1,ghost = 7,equip = {[1] = {id = 2101301,lv = 35},[2] = {id = 2101302,lv = 35},[3] = {id = 2101303,lv = 35},[4] = {id = 2101304,lv = 35},[5] = {id = 2101305,lv = 35},[6] = {id = 2101306,lv = 35},[7] = {id = 2101307,lv = 35},[8] = {id = 2101308,lv = 35}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1051030,cardId = 1101997,lv = 35,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 35},[2] = {id = 2001302,lv = 35},[3] = {id = 2001303,lv = 35},[4] = {id = 2001304,lv = 35},[5] = {id = 2001305,lv = 35},[6] = {id = 2001306,lv = 35},[7] = {id = 2001307,lv = 35},[8] = {id = 2001308,lv = 35}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-5-10-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1051031,cardId = 1102997,lv = 35,bklv = 4,star = 1,ghost = 7,equip = {[1] = {id = 2101301,lv = 35},[2] = {id = 2101302,lv = 35},[3] = {id = 2101303,lv = 35},[4] = {id = 2101304,lv = 35},[5] = {id = 2101305,lv = 35},[6] = {id = 2101306,lv = 35},[7] = {id = 2101307,lv = 35},[8] = {id = 2101308,lv = 35}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10601] = {
		[1] = {
			jlr = {id = 1060110,cardId = 1101999,lv = 35,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 35},[2] = {id = 2001302,lv = 35},[3] = {id = 2001303,lv = 35},[4] = {id = 2001304,lv = 35},[5] = {id = 2001305,lv = 35},[6] = {id = 2001306,lv = 35},[7] = {id = 2001307,lv = 35},[8] = {id = 2001308,lv = 35}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-6-1-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1060111,cardId = 1102999,lv = 35,bklv = 4,star = 1,ghost = 7,equip = {[1] = {id = 2101301,lv = 35},[2] = {id = 2101302,lv = 35},[3] = {id = 2101303,lv = 35},[4] = {id = 2101304,lv = 35},[5] = {id = 2101305,lv = 35},[6] = {id = 2101306,lv = 35},[7] = {id = 2101307,lv = 35},[8] = {id = 2101308,lv = 35}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1060120,cardId = 1101999,lv = 35,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 35},[2] = {id = 2001302,lv = 35},[3] = {id = 2001303,lv = 35},[4] = {id = 2001304,lv = 35},[5] = {id = 2001305,lv = 35},[6] = {id = 2001306,lv = 35},[7] = {id = 2001307,lv = 35},[8] = {id = 2001308,lv = 35}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-6-1-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1060121,cardId = 1102999,lv = 35,bklv = 4,star = 1,ghost = 7,equip = {[1] = {id = 2101301,lv = 35},[2] = {id = 2101302,lv = 35},[3] = {id = 2101303,lv = 35},[4] = {id = 2101304,lv = 35},[5] = {id = 2101305,lv = 35},[6] = {id = 2101306,lv = 35},[7] = {id = 2101307,lv = 35},[8] = {id = 2101308,lv = 35}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1060130,cardId = 1101999,lv = 35,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 35},[2] = {id = 2001302,lv = 35},[3] = {id = 2001303,lv = 35},[4] = {id = 2001304,lv = 35},[5] = {id = 2001305,lv = 35},[6] = {id = 2001306,lv = 35},[7] = {id = 2001307,lv = 35},[8] = {id = 2001308,lv = 35}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-6-1-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1060131,cardId = 1102999,lv = 35,bklv = 4,star = 1,ghost = 7,equip = {[1] = {id = 2101301,lv = 35},[2] = {id = 2101302,lv = 35},[3] = {id = 2101303,lv = 35},[4] = {id = 2101304,lv = 35},[5] = {id = 2101305,lv = 35},[6] = {id = 2101306,lv = 35},[7] = {id = 2101307,lv = 35},[8] = {id = 2101308,lv = 35}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10602] = {
		[1] = {
			jlr = {id = 1060210,cardId = 1101999,lv = 35,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 35},[2] = {id = 2001302,lv = 35},[3] = {id = 2001303,lv = 35},[4] = {id = 2001304,lv = 35},[5] = {id = 2001305,lv = 35},[6] = {id = 2001306,lv = 35},[7] = {id = 2001307,lv = 35},[8] = {id = 2001308,lv = 35}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-6-2-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1060211,cardId = 1102999,lv = 35,bklv = 4,star = 1,ghost = 7,equip = {[1] = {id = 2101301,lv = 35},[2] = {id = 2101302,lv = 35},[3] = {id = 2101303,lv = 35},[4] = {id = 2101304,lv = 35},[5] = {id = 2101305,lv = 35},[6] = {id = 2101306,lv = 35},[7] = {id = 2101307,lv = 35},[8] = {id = 2101308,lv = 35}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1060220,cardId = 1101999,lv = 35,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 35},[2] = {id = 2001302,lv = 35},[3] = {id = 2001303,lv = 35},[4] = {id = 2001304,lv = 35},[5] = {id = 2001305,lv = 35},[6] = {id = 2001306,lv = 35},[7] = {id = 2001307,lv = 35},[8] = {id = 2001308,lv = 35}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-6-2-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1060221,cardId = 1102999,lv = 35,bklv = 4,star = 1,ghost = 7,equip = {[1] = {id = 2101301,lv = 35},[2] = {id = 2101302,lv = 35},[3] = {id = 2101303,lv = 35},[4] = {id = 2101304,lv = 35},[5] = {id = 2101305,lv = 35},[6] = {id = 2101306,lv = 35},[7] = {id = 2101307,lv = 35},[8] = {id = 2101308,lv = 35}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1060230,cardId = 1101999,lv = 35,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 35},[2] = {id = 2001302,lv = 35},[3] = {id = 2001303,lv = 35},[4] = {id = 2001304,lv = 35},[5] = {id = 2001305,lv = 35},[6] = {id = 2001306,lv = 35},[7] = {id = 2001307,lv = 35},[8] = {id = 2001308,lv = 35}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-6-2-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1060231,cardId = 1102999,lv = 35,bklv = 4,star = 1,ghost = 7,equip = {[1] = {id = 2101301,lv = 35},[2] = {id = 2101302,lv = 35},[3] = {id = 2101303,lv = 35},[4] = {id = 2101304,lv = 35},[5] = {id = 2101305,lv = 35},[6] = {id = 2101306,lv = 35},[7] = {id = 2101307,lv = 35},[8] = {id = 2101308,lv = 35}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10603] = {
		[1] = {
			jlr = {id = 1060310,cardId = 1101999,lv = 36,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 36},[2] = {id = 2001302,lv = 36},[3] = {id = 2001303,lv = 36},[4] = {id = 2001304,lv = 36},[5] = {id = 2001305,lv = 36},[6] = {id = 2001306,lv = 36},[7] = {id = 2001307,lv = 36},[8] = {id = 2001308,lv = 36}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-6-3-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1060311,cardId = 1102999,lv = 35,bklv = 4,star = 1,ghost = 7,equip = {[1] = {id = 2101301,lv = 36},[2] = {id = 2101302,lv = 36},[3] = {id = 2101303,lv = 36},[4] = {id = 2101304,lv = 36},[5] = {id = 2101305,lv = 36},[6] = {id = 2101306,lv = 36},[7] = {id = 2101307,lv = 36},[8] = {id = 2101308,lv = 36}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1060320,cardId = 1101998,lv = 36,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 36},[2] = {id = 2001302,lv = 36},[3] = {id = 2001303,lv = 36},[4] = {id = 2001304,lv = 36},[5] = {id = 2001305,lv = 36},[6] = {id = 2001306,lv = 36},[7] = {id = 2001307,lv = 36},[8] = {id = 2001308,lv = 36}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-6-3-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1060321,cardId = 1102998,lv = 40,bklv = 5,star = 1,ghost = 7,equip = {[1] = {id = 2102301,lv = 36},[2] = {id = 2102302,lv = 36},[3] = {id = 2102303,lv = 36},[4] = {id = 2102304,lv = 36},[5] = {id = 2102305,lv = 36},[6] = {id = 2102306,lv = 36},[7] = {id = 2102307,lv = 36},[8] = {id = 2102308,lv = 36}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1060330,cardId = 1101999,lv = 36,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 36},[2] = {id = 2001302,lv = 36},[3] = {id = 2001303,lv = 36},[4] = {id = 2001304,lv = 36},[5] = {id = 2001305,lv = 36},[6] = {id = 2001306,lv = 36},[7] = {id = 2001307,lv = 36},[8] = {id = 2001308,lv = 36}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-6-3-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1060331,cardId = 1102999,lv = 35,bklv = 4,star = 1,ghost = 7,equip = {[1] = {id = 2102301,lv = 36},[2] = {id = 2102302,lv = 36},[3] = {id = 2102303,lv = 36},[4] = {id = 2102304,lv = 36},[5] = {id = 2102305,lv = 36},[6] = {id = 2102306,lv = 36},[7] = {id = 2102307,lv = 36},[8] = {id = 2102308,lv = 36}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10604] = {
		[1] = {
			jlr = {id = 1060410,cardId = 1101999,lv = 37,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 37},[2] = {id = 2001302,lv = 37},[3] = {id = 2001303,lv = 37},[4] = {id = 2001304,lv = 37},[5] = {id = 2001305,lv = 37},[6] = {id = 2001306,lv = 37},[7] = {id = 2001307,lv = 37},[8] = {id = 2001308,lv = 37}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-6-4-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1060411,cardId = 1102999,lv = 35,bklv = 4,star = 1,ghost = 7,equip = {[1] = {id = 2101301,lv = 37},[2] = {id = 2101302,lv = 37},[3] = {id = 2101303,lv = 37},[4] = {id = 2101304,lv = 37},[5] = {id = 2101305,lv = 37},[6] = {id = 2101306,lv = 37},[7] = {id = 2101307,lv = 37},[8] = {id = 2101308,lv = 37}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1060420,cardId = 1101999,lv = 37,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 37},[2] = {id = 2001302,lv = 37},[3] = {id = 2001303,lv = 37},[4] = {id = 2001304,lv = 37},[5] = {id = 2001305,lv = 37},[6] = {id = 2001306,lv = 37},[7] = {id = 2001307,lv = 37},[8] = {id = 2001308,lv = 37}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-6-4-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1060421,cardId = 1102999,lv = 40,bklv = 5,star = 1,ghost = 7,equip = {[1] = {id = 2102301,lv = 37},[2] = {id = 2102302,lv = 37},[3] = {id = 2102303,lv = 37},[4] = {id = 2102304,lv = 37},[5] = {id = 2102305,lv = 37},[6] = {id = 2102306,lv = 37},[7] = {id = 2102307,lv = 37},[8] = {id = 2102308,lv = 37}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1060430,cardId = 1101999,lv = 37,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 37},[2] = {id = 2001302,lv = 37},[3] = {id = 2001303,lv = 37},[4] = {id = 2001304,lv = 37},[5] = {id = 2001305,lv = 37},[6] = {id = 2001306,lv = 37},[7] = {id = 2001307,lv = 37},[8] = {id = 2001308,lv = 37}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-6-4-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1060431,cardId = 1102999,lv = 35,bklv = 4,star = 1,ghost = 7,equip = {[1] = {id = 2102301,lv = 37},[2] = {id = 2102302,lv = 37},[3] = {id = 2102303,lv = 37},[4] = {id = 2102304,lv = 37},[5] = {id = 2102305,lv = 37},[6] = {id = 2102306,lv = 37},[7] = {id = 2102307,lv = 37},[8] = {id = 2102308,lv = 37}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10605] = {
		[1] = {
			jlr = {id = 1060510,cardId = 1101999,lv = 37,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 37},[2] = {id = 2001302,lv = 37},[3] = {id = 2001303,lv = 37},[4] = {id = 2001304,lv = 37},[5] = {id = 2001305,lv = 37},[6] = {id = 2001306,lv = 37},[7] = {id = 2001307,lv = 37},[8] = {id = 2001308,lv = 37}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-6-5-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1060511,cardId = 1102999,lv = 35,bklv = 4,star = 1,ghost = 7,equip = {[1] = {id = 2101301,lv = 37},[2] = {id = 2101302,lv = 37},[3] = {id = 2101303,lv = 37},[4] = {id = 2101304,lv = 37},[5] = {id = 2101305,lv = 37},[6] = {id = 2101306,lv = 37},[7] = {id = 2101307,lv = 37},[8] = {id = 2101308,lv = 37}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1060520,cardId = 1101999,lv = 37,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 37},[2] = {id = 2001302,lv = 37},[3] = {id = 2001303,lv = 37},[4] = {id = 2001304,lv = 37},[5] = {id = 2001305,lv = 37},[6] = {id = 2001306,lv = 37},[7] = {id = 2001307,lv = 37},[8] = {id = 2001308,lv = 37}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-6-5-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1060521,cardId = 1102999,lv = 40,bklv = 5,star = 1,ghost = 7,equip = {[1] = {id = 2102301,lv = 37},[2] = {id = 2102302,lv = 37},[3] = {id = 2102303,lv = 37},[4] = {id = 2102304,lv = 37},[5] = {id = 2102305,lv = 37},[6] = {id = 2102306,lv = 37},[7] = {id = 2102307,lv = 37},[8] = {id = 2102308,lv = 37}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1060530,cardId = 1101999,lv = 37,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 37},[2] = {id = 2001302,lv = 37},[3] = {id = 2001303,lv = 37},[4] = {id = 2001304,lv = 37},[5] = {id = 2001305,lv = 37},[6] = {id = 2001306,lv = 37},[7] = {id = 2001307,lv = 37},[8] = {id = 2001308,lv = 37}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-6-5-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1060531,cardId = 1102999,lv = 35,bklv = 4,star = 1,ghost = 7,equip = {[1] = {id = 2102301,lv = 37},[2] = {id = 2102302,lv = 37},[3] = {id = 2102303,lv = 37},[4] = {id = 2102304,lv = 37},[5] = {id = 2102305,lv = 37},[6] = {id = 2102306,lv = 37},[7] = {id = 2102307,lv = 37},[8] = {id = 2102308,lv = 37}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10606] = {
		[1] = {
			jlr = {id = 1060610,cardId = 1101998,lv = 38,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 38},[2] = {id = 2001302,lv = 38},[3] = {id = 2001303,lv = 38},[4] = {id = 2001304,lv = 38},[5] = {id = 2001305,lv = 38},[6] = {id = 2001306,lv = 38},[7] = {id = 2001307,lv = 38},[8] = {id = 2001308,lv = 38}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-6-6-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1060611,cardId = 1102998,lv = 40,bklv = 5,star = 1,ghost = 7,equip = {[1] = {id = 2101301,lv = 38},[2] = {id = 2101302,lv = 38},[3] = {id = 2101303,lv = 38},[4] = {id = 2101304,lv = 38},[5] = {id = 2101305,lv = 38},[6] = {id = 2101306,lv = 38},[7] = {id = 2101307,lv = 38},[8] = {id = 2101308,lv = 38}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1060620,cardId = 1101998,lv = 38,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 38},[2] = {id = 2001302,lv = 38},[3] = {id = 2001303,lv = 38},[4] = {id = 2001304,lv = 38},[5] = {id = 2001305,lv = 38},[6] = {id = 2001306,lv = 38},[7] = {id = 2001307,lv = 38},[8] = {id = 2001308,lv = 38}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-6-6-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1060621,cardId = 1102998,lv = 40,bklv = 5,star = 1,ghost = 8,equip = {[1] = {id = 2102301,lv = 38},[2] = {id = 2102302,lv = 38},[3] = {id = 2102303,lv = 38},[4] = {id = 2102304,lv = 38},[5] = {id = 2102305,lv = 38},[6] = {id = 2102306,lv = 38},[7] = {id = 2102307,lv = 38},[8] = {id = 2102308,lv = 38}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1060630,cardId = 1101998,lv = 38,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 38},[2] = {id = 2001302,lv = 38},[3] = {id = 2001303,lv = 38},[4] = {id = 2001304,lv = 38},[5] = {id = 2001305,lv = 38},[6] = {id = 2001306,lv = 38},[7] = {id = 2001307,lv = 38},[8] = {id = 2001308,lv = 38}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-6-6-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1060631,cardId = 1102998,lv = 35,bklv = 4,star = 1,ghost = 7,equip = {[1] = {id = 2102301,lv = 38},[2] = {id = 2102302,lv = 38},[3] = {id = 2102303,lv = 38},[4] = {id = 2102304,lv = 38},[5] = {id = 2102305,lv = 38},[6] = {id = 2102306,lv = 38},[7] = {id = 2102307,lv = 38},[8] = {id = 2102308,lv = 38}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10607] = {
		[1] = {
			jlr = {id = 1060710,cardId = 1101999,lv = 39,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 39},[2] = {id = 2001302,lv = 39},[3] = {id = 2001303,lv = 39},[4] = {id = 2001304,lv = 39},[5] = {id = 2001305,lv = 39},[6] = {id = 2001306,lv = 39},[7] = {id = 2001307,lv = 39},[8] = {id = 2001308,lv = 39}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-6-7-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1060711,cardId = 1102999,lv = 40,bklv = 5,star = 1,ghost = 7,equip = {[1] = {id = 2101301,lv = 39},[2] = {id = 2101302,lv = 39},[3] = {id = 2101303,lv = 39},[4] = {id = 2101304,lv = 39},[5] = {id = 2101305,lv = 39},[6] = {id = 2101306,lv = 39},[7] = {id = 2101307,lv = 39},[8] = {id = 2101308,lv = 39}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1060720,cardId = 1101999,lv = 39,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 39},[2] = {id = 2001302,lv = 39},[3] = {id = 2001303,lv = 39},[4] = {id = 2001304,lv = 39},[5] = {id = 2001305,lv = 39},[6] = {id = 2001306,lv = 39},[7] = {id = 2001307,lv = 39},[8] = {id = 2001308,lv = 39}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-6-7-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1060721,cardId = 1102999,lv = 40,bklv = 5,star = 1,ghost = 8,equip = {[1] = {id = 2102301,lv = 39},[2] = {id = 2102302,lv = 39},[3] = {id = 2102303,lv = 39},[4] = {id = 2102304,lv = 39},[5] = {id = 2102305,lv = 39},[6] = {id = 2102306,lv = 39},[7] = {id = 2102307,lv = 39},[8] = {id = 2102308,lv = 39}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1060730,cardId = 1101999,lv = 39,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 39},[2] = {id = 2001302,lv = 39},[3] = {id = 2001303,lv = 39},[4] = {id = 2001304,lv = 39},[5] = {id = 2001305,lv = 39},[6] = {id = 2001306,lv = 39},[7] = {id = 2001307,lv = 39},[8] = {id = 2001308,lv = 39}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-6-7-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1060731,cardId = 1102999,lv = 35,bklv = 4,star = 1,ghost = 7,equip = {[1] = {id = 2102301,lv = 39},[2] = {id = 2102302,lv = 39},[3] = {id = 2102303,lv = 39},[4] = {id = 2102304,lv = 39},[5] = {id = 2102305,lv = 39},[6] = {id = 2102306,lv = 39},[7] = {id = 2102307,lv = 39},[8] = {id = 2102308,lv = 39}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10608] = {
		[1] = {
			jlr = {id = 1060810,cardId = 1101999,lv = 39,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 39},[2] = {id = 2001302,lv = 39},[3] = {id = 2001303,lv = 39},[4] = {id = 2001304,lv = 39},[5] = {id = 2001305,lv = 39},[6] = {id = 2001306,lv = 39},[7] = {id = 2001307,lv = 39},[8] = {id = 2001308,lv = 39}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-6-8-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1060811,cardId = 1102999,lv = 40,bklv = 5,star = 1,ghost = 7,equip = {[1] = {id = 2101301,lv = 39},[2] = {id = 2101302,lv = 39},[3] = {id = 2101303,lv = 39},[4] = {id = 2101304,lv = 39},[5] = {id = 2101305,lv = 39},[6] = {id = 2101306,lv = 39},[7] = {id = 2101307,lv = 39},[8] = {id = 2101308,lv = 39}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1060820,cardId = 1101999,lv = 39,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 39},[2] = {id = 2001302,lv = 39},[3] = {id = 2001303,lv = 39},[4] = {id = 2001304,lv = 39},[5] = {id = 2001305,lv = 39},[6] = {id = 2001306,lv = 39},[7] = {id = 2001307,lv = 39},[8] = {id = 2001308,lv = 39}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-6-8-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1060821,cardId = 1102999,lv = 40,bklv = 5,star = 1,ghost = 8,equip = {[1] = {id = 2102301,lv = 39},[2] = {id = 2102302,lv = 39},[3] = {id = 2102303,lv = 39},[4] = {id = 2102304,lv = 39},[5] = {id = 2102305,lv = 39},[6] = {id = 2102306,lv = 39},[7] = {id = 2102307,lv = 39},[8] = {id = 2102308,lv = 39}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1060830,cardId = 1101999,lv = 39,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 39},[2] = {id = 2001302,lv = 39},[3] = {id = 2001303,lv = 39},[4] = {id = 2001304,lv = 39},[5] = {id = 2001305,lv = 39},[6] = {id = 2001306,lv = 39},[7] = {id = 2001307,lv = 39},[8] = {id = 2001308,lv = 39}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-6-8-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1060831,cardId = 1102999,lv = 35,bklv = 4,star = 1,ghost = 7,equip = {[1] = {id = 2102301,lv = 39},[2] = {id = 2102302,lv = 39},[3] = {id = 2102303,lv = 39},[4] = {id = 2102304,lv = 39},[5] = {id = 2102305,lv = 39},[6] = {id = 2102306,lv = 39},[7] = {id = 2102307,lv = 39},[8] = {id = 2102308,lv = 39}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10609] = {
		[1] = {
			jlr = {id = 1060910,cardId = 1101998,lv = 40,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 40},[2] = {id = 2001302,lv = 40},[3] = {id = 2001303,lv = 40},[4] = {id = 2001304,lv = 40},[5] = {id = 2001305,lv = 40},[6] = {id = 2001306,lv = 40},[7] = {id = 2001307,lv = 40},[8] = {id = 2001308,lv = 40}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-6-9-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1060911,cardId = 1102998,lv = 40,bklv = 5,star = 1,ghost = 8,equip = {[1] = {id = 2101301,lv = 40},[2] = {id = 2101302,lv = 40},[3] = {id = 2101303,lv = 40},[4] = {id = 2101304,lv = 40},[5] = {id = 2101305,lv = 40},[6] = {id = 2101306,lv = 40},[7] = {id = 2101307,lv = 40},[8] = {id = 2101308,lv = 40}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1060920,cardId = 1101997,lv = 40,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 40},[2] = {id = 2001302,lv = 40},[3] = {id = 2001303,lv = 40},[4] = {id = 2001304,lv = 40},[5] = {id = 2001305,lv = 40},[6] = {id = 2001306,lv = 40},[7] = {id = 2001307,lv = 40},[8] = {id = 2001308,lv = 40}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-6-9-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1060921,cardId = 1102997,lv = 40,bklv = 5,star = 1,ghost = 8,equip = {[1] = {id = 2102301,lv = 40},[2] = {id = 2102302,lv = 40},[3] = {id = 2102303,lv = 40},[4] = {id = 2102304,lv = 40},[5] = {id = 2102305,lv = 40},[6] = {id = 2102306,lv = 40},[7] = {id = 2102307,lv = 40},[8] = {id = 2102308,lv = 40}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1060930,cardId = 1101998,lv = 40,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 40},[2] = {id = 2001302,lv = 40},[3] = {id = 2001303,lv = 40},[4] = {id = 2001304,lv = 40},[5] = {id = 2001305,lv = 40},[6] = {id = 2001306,lv = 40},[7] = {id = 2001307,lv = 40},[8] = {id = 2001308,lv = 40}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-6-9-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1060931,cardId = 1102998,lv = 40,bklv = 5,star = 1,ghost = 8,equip = {[1] = {id = 2102301,lv = 40},[2] = {id = 2102302,lv = 40},[3] = {id = 2102303,lv = 40},[4] = {id = 2102304,lv = 40},[5] = {id = 2102305,lv = 40},[6] = {id = 2102306,lv = 40},[7] = {id = 2102307,lv = 40},[8] = {id = 2102308,lv = 40}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10610] = {
		[1] = {
			jlr = {id = 1061010,cardId = 1101997,lv = 40,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 40},[2] = {id = 2001302,lv = 40},[3] = {id = 2001303,lv = 40},[4] = {id = 2001304,lv = 40},[5] = {id = 2001305,lv = 40},[6] = {id = 2001306,lv = 40},[7] = {id = 2001307,lv = 40},[8] = {id = 2001308,lv = 40}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-6-10-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1061011,cardId = 1102997,lv = 40,bklv = 5,star = 1,ghost = 8,equip = {[1] = {id = 2101301,lv = 40},[2] = {id = 2101302,lv = 40},[3] = {id = 2101303,lv = 40},[4] = {id = 2101304,lv = 40},[5] = {id = 2101305,lv = 40},[6] = {id = 2101306,lv = 40},[7] = {id = 2101307,lv = 40},[8] = {id = 2101308,lv = 40}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1061020,cardId = 1101997,lv = 40,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 40},[2] = {id = 2001302,lv = 40},[3] = {id = 2001303,lv = 40},[4] = {id = 2001304,lv = 40},[5] = {id = 2001305,lv = 40},[6] = {id = 2001306,lv = 40},[7] = {id = 2001307,lv = 40},[8] = {id = 2001308,lv = 40}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-6-10-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1061021,cardId = 1102997,lv = 40,bklv = 5,star = 1,ghost = 8,equip = {[1] = {id = 2102301,lv = 40},[2] = {id = 2102302,lv = 40},[3] = {id = 2102303,lv = 40},[4] = {id = 2102304,lv = 40},[5] = {id = 2102305,lv = 40},[6] = {id = 2102306,lv = 40},[7] = {id = 2102307,lv = 40},[8] = {id = 2102308,lv = 40}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1061030,cardId = 1101997,lv = 40,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 40},[2] = {id = 2001302,lv = 40},[3] = {id = 2001303,lv = 40},[4] = {id = 2001304,lv = 40},[5] = {id = 2001305,lv = 40},[6] = {id = 2001306,lv = 40},[7] = {id = 2001307,lv = 40},[8] = {id = 2001308,lv = 40}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-6-10-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1061031,cardId = 1102997,lv = 40,bklv = 5,star = 1,ghost = 8,equip = {[1] = {id = 2102301,lv = 40},[2] = {id = 2102302,lv = 40},[3] = {id = 2102303,lv = 40},[4] = {id = 2102304,lv = 40},[5] = {id = 2102305,lv = 40},[6] = {id = 2102306,lv = 40},[7] = {id = 2102307,lv = 40},[8] = {id = 2102308,lv = 40}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10701] = {
		[1] = {
			jlr = {id = 1070110,cardId = 1101999,lv = 40,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 40},[2] = {id = 2001302,lv = 40},[3] = {id = 2001303,lv = 40},[4] = {id = 2001304,lv = 40},[5] = {id = 2001305,lv = 40},[6] = {id = 2001306,lv = 40},[7] = {id = 2001307,lv = 40},[8] = {id = 2001308,lv = 40}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-7-1-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1070111,cardId = 1102999,lv = 40,bklv = 5,star = 1,ghost = 8,equip = {[1] = {id = 2101301,lv = 40},[2] = {id = 2101302,lv = 40},[3] = {id = 2101303,lv = 40},[4] = {id = 2101304,lv = 40},[5] = {id = 2101305,lv = 40},[6] = {id = 2101306,lv = 40},[7] = {id = 2101307,lv = 40},[8] = {id = 2101308,lv = 40}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1070120,cardId = 1101999,lv = 40,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 40},[2] = {id = 2001302,lv = 40},[3] = {id = 2001303,lv = 40},[4] = {id = 2001304,lv = 40},[5] = {id = 2001305,lv = 40},[6] = {id = 2001306,lv = 40},[7] = {id = 2001307,lv = 40},[8] = {id = 2001308,lv = 40}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-7-1-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1070121,cardId = 1102999,lv = 40,bklv = 5,star = 1,ghost = 8,equip = {[1] = {id = 2102301,lv = 40},[2] = {id = 2102302,lv = 40},[3] = {id = 2102303,lv = 40},[4] = {id = 2102304,lv = 40},[5] = {id = 2102305,lv = 40},[6] = {id = 2102306,lv = 40},[7] = {id = 2102307,lv = 40},[8] = {id = 2102308,lv = 40}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1070130,cardId = 1101999,lv = 40,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 40},[2] = {id = 2001302,lv = 40},[3] = {id = 2001303,lv = 40},[4] = {id = 2001304,lv = 40},[5] = {id = 2001305,lv = 40},[6] = {id = 2001306,lv = 40},[7] = {id = 2001307,lv = 40},[8] = {id = 2001308,lv = 40}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-7-1-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1070131,cardId = 1102999,lv = 40,bklv = 5,star = 1,ghost = 8,equip = {[1] = {id = 2102301,lv = 40},[2] = {id = 2102302,lv = 40},[3] = {id = 2102303,lv = 40},[4] = {id = 2102304,lv = 40},[5] = {id = 2102305,lv = 40},[6] = {id = 2102306,lv = 40},[7] = {id = 2102307,lv = 40},[8] = {id = 2102308,lv = 40}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10702] = {
		[1] = {
			jlr = {id = 1070210,cardId = 1101999,lv = 40,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 40},[2] = {id = 2001302,lv = 40},[3] = {id = 2001303,lv = 40},[4] = {id = 2001304,lv = 40},[5] = {id = 2001305,lv = 40},[6] = {id = 2001306,lv = 40},[7] = {id = 2001307,lv = 40},[8] = {id = 2001308,lv = 40}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-7-2-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1070211,cardId = 1102999,lv = 40,bklv = 5,star = 1,ghost = 8,equip = {[1] = {id = 2101301,lv = 40},[2] = {id = 2101302,lv = 40},[3] = {id = 2101303,lv = 40},[4] = {id = 2101304,lv = 40},[5] = {id = 2101305,lv = 40},[6] = {id = 2101306,lv = 40},[7] = {id = 2101307,lv = 40},[8] = {id = 2101308,lv = 40}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1070220,cardId = 1101999,lv = 40,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 40},[2] = {id = 2001302,lv = 40},[3] = {id = 2001303,lv = 40},[4] = {id = 2001304,lv = 40},[5] = {id = 2001305,lv = 40},[6] = {id = 2001306,lv = 40},[7] = {id = 2001307,lv = 40},[8] = {id = 2001308,lv = 40}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-7-2-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1070221,cardId = 1102999,lv = 40,bklv = 5,star = 1,ghost = 8,equip = {[1] = {id = 2102301,lv = 40},[2] = {id = 2102302,lv = 40},[3] = {id = 2102303,lv = 40},[4] = {id = 2102304,lv = 40},[5] = {id = 2102305,lv = 40},[6] = {id = 2102306,lv = 40},[7] = {id = 2102307,lv = 40},[8] = {id = 2102308,lv = 40}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1070230,cardId = 1101999,lv = 40,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 40},[2] = {id = 2001302,lv = 40},[3] = {id = 2001303,lv = 40},[4] = {id = 2001304,lv = 40},[5] = {id = 2001305,lv = 40},[6] = {id = 2001306,lv = 40},[7] = {id = 2001307,lv = 40},[8] = {id = 2001308,lv = 40}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-7-2-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1070231,cardId = 1102999,lv = 40,bklv = 5,star = 1,ghost = 8,equip = {[1] = {id = 2102301,lv = 40},[2] = {id = 2102302,lv = 40},[3] = {id = 2102303,lv = 40},[4] = {id = 2102304,lv = 40},[5] = {id = 2102305,lv = 40},[6] = {id = 2102306,lv = 40},[7] = {id = 2102307,lv = 40},[8] = {id = 2102308,lv = 40}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10703] = {
		[1] = {
			jlr = {id = 1070310,cardId = 1101999,lv = 41,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 41},[2] = {id = 2001302,lv = 41},[3] = {id = 2001303,lv = 41},[4] = {id = 2001304,lv = 41},[5] = {id = 2001305,lv = 41},[6] = {id = 2001306,lv = 41},[7] = {id = 2001307,lv = 41},[8] = {id = 2001308,lv = 41}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-7-3-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1070311,cardId = 1102999,lv = 40,bklv = 5,star = 1,ghost = 8,equip = {[1] = {id = 2102301,lv = 41},[2] = {id = 2102302,lv = 41},[3] = {id = 2102303,lv = 41},[4] = {id = 2102304,lv = 41},[5] = {id = 2102305,lv = 41},[6] = {id = 2102306,lv = 41},[7] = {id = 2102307,lv = 41},[8] = {id = 2102308,lv = 41}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1070320,cardId = 1101998,lv = 41,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 41},[2] = {id = 2001302,lv = 41},[3] = {id = 2001303,lv = 41},[4] = {id = 2001304,lv = 41},[5] = {id = 2001305,lv = 41},[6] = {id = 2001306,lv = 41},[7] = {id = 2001307,lv = 41},[8] = {id = 2001308,lv = 41}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-7-3-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1070321,cardId = 1102998,lv = 45,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102301,lv = 41},[2] = {id = 2102302,lv = 41},[3] = {id = 2102303,lv = 41},[4] = {id = 2102304,lv = 41},[5] = {id = 2102305,lv = 41},[6] = {id = 2102306,lv = 41},[7] = {id = 2102307,lv = 41},[8] = {id = 2102308,lv = 41}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1070330,cardId = 1101999,lv = 41,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 41},[2] = {id = 2001302,lv = 41},[3] = {id = 2001303,lv = 41},[4] = {id = 2001304,lv = 41},[5] = {id = 2001305,lv = 41},[6] = {id = 2001306,lv = 41},[7] = {id = 2001307,lv = 41},[8] = {id = 2001308,lv = 41}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-7-3-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1070331,cardId = 1102999,lv = 40,bklv = 5,star = 1,ghost = 8,equip = {[1] = {id = 2102301,lv = 41},[2] = {id = 2102302,lv = 41},[3] = {id = 2102303,lv = 41},[4] = {id = 2102304,lv = 41},[5] = {id = 2102305,lv = 41},[6] = {id = 2102306,lv = 41},[7] = {id = 2102307,lv = 41},[8] = {id = 2102308,lv = 41}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10704] = {
		[1] = {
			jlr = {id = 1070410,cardId = 1101999,lv = 42,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 42},[2] = {id = 2001302,lv = 42},[3] = {id = 2001303,lv = 42},[4] = {id = 2001304,lv = 42},[5] = {id = 2001305,lv = 42},[6] = {id = 2001306,lv = 42},[7] = {id = 2001307,lv = 42},[8] = {id = 2001308,lv = 42}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-7-4-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1070411,cardId = 1102999,lv = 40,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102301,lv = 42},[2] = {id = 2102302,lv = 42},[3] = {id = 2102303,lv = 42},[4] = {id = 2102304,lv = 42},[5] = {id = 2102305,lv = 42},[6] = {id = 2102306,lv = 42},[7] = {id = 2102307,lv = 42},[8] = {id = 2102308,lv = 42}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1070420,cardId = 1101999,lv = 42,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 42},[2] = {id = 2001302,lv = 42},[3] = {id = 2001303,lv = 42},[4] = {id = 2001304,lv = 42},[5] = {id = 2001305,lv = 42},[6] = {id = 2001306,lv = 42},[7] = {id = 2001307,lv = 42},[8] = {id = 2001308,lv = 42}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-7-4-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1070421,cardId = 1102999,lv = 45,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102301,lv = 42},[2] = {id = 2102302,lv = 42},[3] = {id = 2102303,lv = 42},[4] = {id = 2102304,lv = 42},[5] = {id = 2102305,lv = 42},[6] = {id = 2102306,lv = 42},[7] = {id = 2102307,lv = 42},[8] = {id = 2102308,lv = 42}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1070430,cardId = 1101999,lv = 42,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 42},[2] = {id = 2001302,lv = 42},[3] = {id = 2001303,lv = 42},[4] = {id = 2001304,lv = 42},[5] = {id = 2001305,lv = 42},[6] = {id = 2001306,lv = 42},[7] = {id = 2001307,lv = 42},[8] = {id = 2001308,lv = 42}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-7-4-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1070431,cardId = 1102999,lv = 40,bklv = 5,star = 1,ghost = 8,equip = {[1] = {id = 2102301,lv = 42},[2] = {id = 2102302,lv = 42},[3] = {id = 2102303,lv = 42},[4] = {id = 2102304,lv = 42},[5] = {id = 2102305,lv = 42},[6] = {id = 2102306,lv = 42},[7] = {id = 2102307,lv = 42},[8] = {id = 2102308,lv = 42}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10705] = {
		[1] = {
			jlr = {id = 1070510,cardId = 1101999,lv = 42,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 42},[2] = {id = 2001302,lv = 42},[3] = {id = 2001303,lv = 42},[4] = {id = 2001304,lv = 42},[5] = {id = 2001305,lv = 42},[6] = {id = 2001306,lv = 42},[7] = {id = 2001307,lv = 42},[8] = {id = 2001308,lv = 42}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-7-5-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1070511,cardId = 1102999,lv = 40,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102301,lv = 42},[2] = {id = 2102302,lv = 42},[3] = {id = 2102303,lv = 42},[4] = {id = 2102304,lv = 42},[5] = {id = 2102305,lv = 42},[6] = {id = 2102306,lv = 42},[7] = {id = 2102307,lv = 42},[8] = {id = 2102308,lv = 42}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1070520,cardId = 1101999,lv = 42,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 42},[2] = {id = 2001302,lv = 42},[3] = {id = 2001303,lv = 42},[4] = {id = 2001304,lv = 42},[5] = {id = 2001305,lv = 42},[6] = {id = 2001306,lv = 42},[7] = {id = 2001307,lv = 42},[8] = {id = 2001308,lv = 42}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-7-5-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1070521,cardId = 1102999,lv = 45,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102301,lv = 42},[2] = {id = 2102302,lv = 42},[3] = {id = 2102303,lv = 42},[4] = {id = 2102304,lv = 42},[5] = {id = 2102305,lv = 42},[6] = {id = 2102306,lv = 42},[7] = {id = 2102307,lv = 42},[8] = {id = 2102308,lv = 42}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1070530,cardId = 1101999,lv = 42,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 42},[2] = {id = 2001302,lv = 42},[3] = {id = 2001303,lv = 42},[4] = {id = 2001304,lv = 42},[5] = {id = 2001305,lv = 42},[6] = {id = 2001306,lv = 42},[7] = {id = 2001307,lv = 42},[8] = {id = 2001308,lv = 42}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-7-5-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1070531,cardId = 1102999,lv = 40,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102301,lv = 42},[2] = {id = 2102302,lv = 42},[3] = {id = 2102303,lv = 42},[4] = {id = 2102304,lv = 42},[5] = {id = 2102305,lv = 42},[6] = {id = 2102306,lv = 42},[7] = {id = 2102307,lv = 42},[8] = {id = 2102308,lv = 42}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10706] = {
		[1] = {
			jlr = {id = 1070610,cardId = 1101998,lv = 43,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 43},[2] = {id = 2001302,lv = 43},[3] = {id = 2001303,lv = 43},[4] = {id = 2001304,lv = 43},[5] = {id = 2001305,lv = 43},[6] = {id = 2001306,lv = 43},[7] = {id = 2001307,lv = 43},[8] = {id = 2001308,lv = 43}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-7-6-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1070611,cardId = 1102998,lv = 45,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102301,lv = 43},[2] = {id = 2102302,lv = 43},[3] = {id = 2102303,lv = 43},[4] = {id = 2102304,lv = 43},[5] = {id = 2102305,lv = 43},[6] = {id = 2102306,lv = 43},[7] = {id = 2102307,lv = 43},[8] = {id = 2102308,lv = 43}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1070620,cardId = 1101998,lv = 43,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 43},[2] = {id = 2001302,lv = 43},[3] = {id = 2001303,lv = 43},[4] = {id = 2001304,lv = 43},[5] = {id = 2001305,lv = 43},[6] = {id = 2001306,lv = 43},[7] = {id = 2001307,lv = 43},[8] = {id = 2001308,lv = 43}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-7-6-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1070621,cardId = 1102998,lv = 45,bklv = 5,star = 1,ghost = 10,equip = {[1] = {id = 2102301,lv = 43},[2] = {id = 2102302,lv = 43},[3] = {id = 2102303,lv = 43},[4] = {id = 2102304,lv = 43},[5] = {id = 2102305,lv = 43},[6] = {id = 2102306,lv = 43},[7] = {id = 2102307,lv = 43},[8] = {id = 2102308,lv = 43}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1070630,cardId = 1101998,lv = 43,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 43},[2] = {id = 2001302,lv = 43},[3] = {id = 2001303,lv = 43},[4] = {id = 2001304,lv = 43},[5] = {id = 2001305,lv = 43},[6] = {id = 2001306,lv = 43},[7] = {id = 2001307,lv = 43},[8] = {id = 2001308,lv = 43}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-7-6-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1070631,cardId = 1102998,lv = 40,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102301,lv = 43},[2] = {id = 2102302,lv = 43},[3] = {id = 2102303,lv = 43},[4] = {id = 2102304,lv = 43},[5] = {id = 2102305,lv = 43},[6] = {id = 2102306,lv = 43},[7] = {id = 2102307,lv = 43},[8] = {id = 2102308,lv = 43}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10707] = {
		[1] = {
			jlr = {id = 1070710,cardId = 1101999,lv = 44,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 44},[2] = {id = 2001302,lv = 44},[3] = {id = 2001303,lv = 44},[4] = {id = 2001304,lv = 44},[5] = {id = 2001305,lv = 44},[6] = {id = 2001306,lv = 44},[7] = {id = 2001307,lv = 44},[8] = {id = 2001308,lv = 44}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-7-7-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1070711,cardId = 1102999,lv = 45,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102301,lv = 44},[2] = {id = 2102302,lv = 44},[3] = {id = 2102303,lv = 44},[4] = {id = 2102304,lv = 44},[5] = {id = 2102305,lv = 44},[6] = {id = 2102306,lv = 44},[7] = {id = 2102307,lv = 44},[8] = {id = 2102308,lv = 44}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1070720,cardId = 1101999,lv = 44,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 44},[2] = {id = 2001302,lv = 44},[3] = {id = 2001303,lv = 44},[4] = {id = 2001304,lv = 44},[5] = {id = 2001305,lv = 44},[6] = {id = 2001306,lv = 44},[7] = {id = 2001307,lv = 44},[8] = {id = 2001308,lv = 44}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-7-7-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1070721,cardId = 1102999,lv = 45,bklv = 5,star = 1,ghost = 10,equip = {[1] = {id = 2102301,lv = 44},[2] = {id = 2102302,lv = 44},[3] = {id = 2102303,lv = 44},[4] = {id = 2102304,lv = 44},[5] = {id = 2102305,lv = 44},[6] = {id = 2102306,lv = 44},[7] = {id = 2102307,lv = 44},[8] = {id = 2102308,lv = 44}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1070730,cardId = 1101999,lv = 44,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 44},[2] = {id = 2001302,lv = 44},[3] = {id = 2001303,lv = 44},[4] = {id = 2001304,lv = 44},[5] = {id = 2001305,lv = 44},[6] = {id = 2001306,lv = 44},[7] = {id = 2001307,lv = 44},[8] = {id = 2001308,lv = 44}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-7-7-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1070731,cardId = 1102999,lv = 40,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102301,lv = 44},[2] = {id = 2102302,lv = 44},[3] = {id = 2102303,lv = 44},[4] = {id = 2102304,lv = 44},[5] = {id = 2102305,lv = 44},[6] = {id = 2102306,lv = 44},[7] = {id = 2102307,lv = 44},[8] = {id = 2102308,lv = 44}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10708] = {
		[1] = {
			jlr = {id = 1070810,cardId = 1101999,lv = 44,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 44},[2] = {id = 2001302,lv = 44},[3] = {id = 2001303,lv = 44},[4] = {id = 2001304,lv = 44},[5] = {id = 2001305,lv = 44},[6] = {id = 2001306,lv = 44},[7] = {id = 2001307,lv = 44},[8] = {id = 2001308,lv = 44}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-7-8-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1070811,cardId = 1102999,lv = 45,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102301,lv = 44},[2] = {id = 2102302,lv = 44},[3] = {id = 2102303,lv = 44},[4] = {id = 2102304,lv = 44},[5] = {id = 2102305,lv = 44},[6] = {id = 2102306,lv = 44},[7] = {id = 2102307,lv = 44},[8] = {id = 2102308,lv = 44}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1070820,cardId = 1101999,lv = 44,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 44},[2] = {id = 2001302,lv = 44},[3] = {id = 2001303,lv = 44},[4] = {id = 2001304,lv = 44},[5] = {id = 2001305,lv = 44},[6] = {id = 2001306,lv = 44},[7] = {id = 2001307,lv = 44},[8] = {id = 2001308,lv = 44}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-7-8-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1070821,cardId = 1102999,lv = 45,bklv = 5,star = 1,ghost = 10,equip = {[1] = {id = 2102301,lv = 44},[2] = {id = 2102302,lv = 44},[3] = {id = 2102303,lv = 44},[4] = {id = 2102304,lv = 44},[5] = {id = 2102305,lv = 44},[6] = {id = 2102306,lv = 44},[7] = {id = 2102307,lv = 44},[8] = {id = 2102308,lv = 44}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1070830,cardId = 1101999,lv = 44,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 44},[2] = {id = 2001302,lv = 44},[3] = {id = 2001303,lv = 44},[4] = {id = 2001304,lv = 44},[5] = {id = 2001305,lv = 44},[6] = {id = 2001306,lv = 44},[7] = {id = 2001307,lv = 44},[8] = {id = 2001308,lv = 44}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-7-8-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1070831,cardId = 1102999,lv = 40,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102301,lv = 44},[2] = {id = 2102302,lv = 44},[3] = {id = 2102303,lv = 44},[4] = {id = 2102304,lv = 44},[5] = {id = 2102305,lv = 44},[6] = {id = 2102306,lv = 44},[7] = {id = 2102307,lv = 44},[8] = {id = 2102308,lv = 44}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10709] = {
		[1] = {
			jlr = {id = 1070910,cardId = 1101998,lv = 45,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 45},[2] = {id = 2001302,lv = 45},[3] = {id = 2001303,lv = 45},[4] = {id = 2001304,lv = 45},[5] = {id = 2001305,lv = 45},[6] = {id = 2001306,lv = 45},[7] = {id = 2001307,lv = 45},[8] = {id = 2001308,lv = 45}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-7-9-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1070911,cardId = 1102998,lv = 45,bklv = 5,star = 1,ghost = 10,equip = {[1] = {id = 2102301,lv = 45},[2] = {id = 2102302,lv = 45},[3] = {id = 2102303,lv = 45},[4] = {id = 2102304,lv = 45},[5] = {id = 2102305,lv = 45},[6] = {id = 2102306,lv = 45},[7] = {id = 2102307,lv = 45},[8] = {id = 2102308,lv = 45}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1070920,cardId = 1101997,lv = 45,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 45},[2] = {id = 2001302,lv = 45},[3] = {id = 2001303,lv = 45},[4] = {id = 2001304,lv = 45},[5] = {id = 2001305,lv = 45},[6] = {id = 2001306,lv = 45},[7] = {id = 2001307,lv = 45},[8] = {id = 2001308,lv = 45}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-7-9-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1070921,cardId = 1102997,lv = 45,bklv = 5,star = 1,ghost = 10,equip = {[1] = {id = 2102301,lv = 45},[2] = {id = 2102302,lv = 45},[3] = {id = 2102303,lv = 45},[4] = {id = 2102304,lv = 45},[5] = {id = 2102305,lv = 45},[6] = {id = 2102306,lv = 45},[7] = {id = 2102307,lv = 45},[8] = {id = 2102308,lv = 45}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1070930,cardId = 1101998,lv = 45,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 45},[2] = {id = 2001302,lv = 45},[3] = {id = 2001303,lv = 45},[4] = {id = 2001304,lv = 45},[5] = {id = 2001305,lv = 45},[6] = {id = 2001306,lv = 45},[7] = {id = 2001307,lv = 45},[8] = {id = 2001308,lv = 45}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-7-9-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1070931,cardId = 1102998,lv = 45,bklv = 5,star = 1,ghost = 10,equip = {[1] = {id = 2102301,lv = 45},[2] = {id = 2102302,lv = 45},[3] = {id = 2102303,lv = 45},[4] = {id = 2102304,lv = 45},[5] = {id = 2102305,lv = 45},[6] = {id = 2102306,lv = 45},[7] = {id = 2102307,lv = 45},[8] = {id = 2102308,lv = 45}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10710] = {
		[1] = {
			jlr = {id = 1071010,cardId = 1101997,lv = 45,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 45},[2] = {id = 2001302,lv = 45},[3] = {id = 2001303,lv = 45},[4] = {id = 2001304,lv = 45},[5] = {id = 2001305,lv = 45},[6] = {id = 2001306,lv = 45},[7] = {id = 2001307,lv = 45},[8] = {id = 2001308,lv = 45}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-7-10-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1071011,cardId = 1102997,lv = 45,bklv = 5,star = 1,ghost = 10,equip = {[1] = {id = 2102301,lv = 45},[2] = {id = 2102302,lv = 45},[3] = {id = 2102303,lv = 45},[4] = {id = 2102304,lv = 45},[5] = {id = 2102305,lv = 45},[6] = {id = 2102306,lv = 45},[7] = {id = 2102307,lv = 45},[8] = {id = 2102308,lv = 45}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1071020,cardId = 1101997,lv = 45,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 45},[2] = {id = 2001302,lv = 45},[3] = {id = 2001303,lv = 45},[4] = {id = 2001304,lv = 45},[5] = {id = 2001305,lv = 45},[6] = {id = 2001306,lv = 45},[7] = {id = 2001307,lv = 45},[8] = {id = 2001308,lv = 45}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-7-10-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1071021,cardId = 1102997,lv = 45,bklv = 5,star = 1,ghost = 10,equip = {[1] = {id = 2102301,lv = 45},[2] = {id = 2102302,lv = 45},[3] = {id = 2102303,lv = 45},[4] = {id = 2102304,lv = 45},[5] = {id = 2102305,lv = 45},[6] = {id = 2102306,lv = 45},[7] = {id = 2102307,lv = 45},[8] = {id = 2102308,lv = 45}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1071030,cardId = 1101997,lv = 45,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 45},[2] = {id = 2001302,lv = 45},[3] = {id = 2001303,lv = 45},[4] = {id = 2001304,lv = 45},[5] = {id = 2001305,lv = 45},[6] = {id = 2001306,lv = 45},[7] = {id = 2001307,lv = 45},[8] = {id = 2001308,lv = 45}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-7-10-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1071031,cardId = 1102997,lv = 45,bklv = 5,star = 1,ghost = 10,equip = {[1] = {id = 2102301,lv = 45},[2] = {id = 2102302,lv = 45},[3] = {id = 2102303,lv = 45},[4] = {id = 2102304,lv = 45},[5] = {id = 2102305,lv = 45},[6] = {id = 2102306,lv = 45},[7] = {id = 2102307,lv = 45},[8] = {id = 2102308,lv = 45}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10801] = {
		[1] = {
			jlr = {id = 1080110,cardId = 1101999,lv = 45,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 45},[2] = {id = 2001302,lv = 45},[3] = {id = 2001303,lv = 45},[4] = {id = 2001304,lv = 45},[5] = {id = 2001305,lv = 45},[6] = {id = 2001306,lv = 45},[7] = {id = 2001307,lv = 45},[8] = {id = 2001308,lv = 45}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-8-1-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1080111,cardId = 1102999,lv = 45,bklv = 5,star = 1,ghost = 10,equip = {[1] = {id = 2102301,lv = 45},[2] = {id = 2102302,lv = 45},[3] = {id = 2102303,lv = 45},[4] = {id = 2102304,lv = 45},[5] = {id = 2102305,lv = 45},[6] = {id = 2102306,lv = 45},[7] = {id = 2102307,lv = 45},[8] = {id = 2102308,lv = 45}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1080120,cardId = 1101999,lv = 45,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 45},[2] = {id = 2001302,lv = 45},[3] = {id = 2001303,lv = 45},[4] = {id = 2001304,lv = 45},[5] = {id = 2001305,lv = 45},[6] = {id = 2001306,lv = 45},[7] = {id = 2001307,lv = 45},[8] = {id = 2001308,lv = 45}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-8-1-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1080121,cardId = 1102999,lv = 45,bklv = 5,star = 1,ghost = 10,equip = {[1] = {id = 2102301,lv = 45},[2] = {id = 2102302,lv = 45},[3] = {id = 2102303,lv = 45},[4] = {id = 2102304,lv = 45},[5] = {id = 2102305,lv = 45},[6] = {id = 2102306,lv = 45},[7] = {id = 2102307,lv = 45},[8] = {id = 2102308,lv = 45}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1080130,cardId = 1101999,lv = 45,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 45},[2] = {id = 2001302,lv = 45},[3] = {id = 2001303,lv = 45},[4] = {id = 2001304,lv = 45},[5] = {id = 2001305,lv = 45},[6] = {id = 2001306,lv = 45},[7] = {id = 2001307,lv = 45},[8] = {id = 2001308,lv = 45}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-8-1-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1080131,cardId = 1102999,lv = 45,bklv = 5,star = 1,ghost = 10,equip = {[1] = {id = 2102301,lv = 45},[2] = {id = 2102302,lv = 45},[3] = {id = 2102303,lv = 45},[4] = {id = 2102304,lv = 45},[5] = {id = 2102305,lv = 45},[6] = {id = 2102306,lv = 45},[7] = {id = 2102307,lv = 45},[8] = {id = 2102308,lv = 45}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10802] = {
		[1] = {
			jlr = {id = 1080210,cardId = 1101999,lv = 45,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 45},[2] = {id = 2001302,lv = 45},[3] = {id = 2001303,lv = 45},[4] = {id = 2001304,lv = 45},[5] = {id = 2001305,lv = 45},[6] = {id = 2001306,lv = 45},[7] = {id = 2001307,lv = 45},[8] = {id = 2001308,lv = 45}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-8-2-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1080211,cardId = 1102999,lv = 45,bklv = 5,star = 1,ghost = 10,equip = {[1] = {id = 2102301,lv = 45},[2] = {id = 2102302,lv = 45},[3] = {id = 2102303,lv = 45},[4] = {id = 2102304,lv = 45},[5] = {id = 2102305,lv = 45},[6] = {id = 2102306,lv = 45},[7] = {id = 2102307,lv = 45},[8] = {id = 2102308,lv = 45}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1080220,cardId = 1101999,lv = 45,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 45},[2] = {id = 2001302,lv = 45},[3] = {id = 2001303,lv = 45},[4] = {id = 2001304,lv = 45},[5] = {id = 2001305,lv = 45},[6] = {id = 2001306,lv = 45},[7] = {id = 2001307,lv = 45},[8] = {id = 2001308,lv = 45}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-8-2-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1080221,cardId = 1102999,lv = 45,bklv = 5,star = 1,ghost = 10,equip = {[1] = {id = 2102301,lv = 45},[2] = {id = 2102302,lv = 45},[3] = {id = 2102303,lv = 45},[4] = {id = 2102304,lv = 45},[5] = {id = 2102305,lv = 45},[6] = {id = 2102306,lv = 45},[7] = {id = 2102307,lv = 45},[8] = {id = 2102308,lv = 45}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1080230,cardId = 1101999,lv = 45,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 45},[2] = {id = 2001302,lv = 45},[3] = {id = 2001303,lv = 45},[4] = {id = 2001304,lv = 45},[5] = {id = 2001305,lv = 45},[6] = {id = 2001306,lv = 45},[7] = {id = 2001307,lv = 45},[8] = {id = 2001308,lv = 45}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-8-2-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1080231,cardId = 1102999,lv = 45,bklv = 5,star = 1,ghost = 10,equip = {[1] = {id = 2102301,lv = 45},[2] = {id = 2102302,lv = 45},[3] = {id = 2102303,lv = 45},[4] = {id = 2102304,lv = 45},[5] = {id = 2102305,lv = 45},[6] = {id = 2102306,lv = 45},[7] = {id = 2102307,lv = 45},[8] = {id = 2102308,lv = 45}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10803] = {
		[1] = {
			jlr = {id = 1080310,cardId = 1101999,lv = 46,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 46},[2] = {id = 2001302,lv = 46},[3] = {id = 2001303,lv = 46},[4] = {id = 2001304,lv = 46},[5] = {id = 2001305,lv = 46},[6] = {id = 2001306,lv = 46},[7] = {id = 2001307,lv = 46},[8] = {id = 2001308,lv = 46}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-8-3-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1080311,cardId = 1102999,lv = 45,bklv = 5,star = 1,ghost = 10,equip = {[1] = {id = 2102301,lv = 46},[2] = {id = 2102302,lv = 46},[3] = {id = 2102303,lv = 46},[4] = {id = 2102304,lv = 46},[5] = {id = 2102305,lv = 46},[6] = {id = 2102306,lv = 46},[7] = {id = 2102307,lv = 46},[8] = {id = 2102308,lv = 46}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1080320,cardId = 1101998,lv = 46,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 46},[2] = {id = 2001302,lv = 46},[3] = {id = 2001303,lv = 46},[4] = {id = 2001304,lv = 46},[5] = {id = 2001305,lv = 46},[6] = {id = 2001306,lv = 46},[7] = {id = 2001307,lv = 46},[8] = {id = 2001308,lv = 46}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-8-3-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1080321,cardId = 1102998,lv = 50,bklv = 6,star = 1,ghost = 11,equip = {[1] = {id = 2102301,lv = 46},[2] = {id = 2102302,lv = 46},[3] = {id = 2102303,lv = 46},[4] = {id = 2102304,lv = 46},[5] = {id = 2102305,lv = 46},[6] = {id = 2102306,lv = 46},[7] = {id = 2102307,lv = 46},[8] = {id = 2102308,lv = 46}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1080330,cardId = 1101999,lv = 46,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 46},[2] = {id = 2001302,lv = 46},[3] = {id = 2001303,lv = 46},[4] = {id = 2001304,lv = 46},[5] = {id = 2001305,lv = 46},[6] = {id = 2001306,lv = 46},[7] = {id = 2001307,lv = 46},[8] = {id = 2001308,lv = 46}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-8-3-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1080331,cardId = 1102999,lv = 45,bklv = 5,star = 1,ghost = 10,equip = {[1] = {id = 2102301,lv = 46},[2] = {id = 2102302,lv = 46},[3] = {id = 2102303,lv = 46},[4] = {id = 2102304,lv = 46},[5] = {id = 2102305,lv = 46},[6] = {id = 2102306,lv = 46},[7] = {id = 2102307,lv = 46},[8] = {id = 2102308,lv = 46}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10804] = {
		[1] = {
			jlr = {id = 1080410,cardId = 1101999,lv = 47,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 47},[2] = {id = 2001302,lv = 47},[3] = {id = 2001303,lv = 47},[4] = {id = 2001304,lv = 47},[5] = {id = 2001305,lv = 47},[6] = {id = 2001306,lv = 47},[7] = {id = 2001307,lv = 47},[8] = {id = 2001308,lv = 47}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-8-4-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1080411,cardId = 1102999,lv = 45,bklv = 5,star = 1,ghost = 11,equip = {[1] = {id = 2102301,lv = 47},[2] = {id = 2102302,lv = 47},[3] = {id = 2102303,lv = 47},[4] = {id = 2102304,lv = 47},[5] = {id = 2102305,lv = 47},[6] = {id = 2102306,lv = 47},[7] = {id = 2102307,lv = 47},[8] = {id = 2102308,lv = 47}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1080420,cardId = 1101999,lv = 47,bklv = 5,star = 2,equip = {[1] = {id = 2001301,lv = 47},[2] = {id = 2001302,lv = 47},[3] = {id = 2001303,lv = 47},[4] = {id = 2001304,lv = 47},[5] = {id = 2001305,lv = 47},[6] = {id = 2001306,lv = 47},[7] = {id = 2001307,lv = 47},[8] = {id = 2001308,lv = 47}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-8-4-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1080421,cardId = 1102999,lv = 50,bklv = 6,star = 2,ghost = 11,equip = {[1] = {id = 2102301,lv = 47},[2] = {id = 2102302,lv = 47},[3] = {id = 2102303,lv = 47},[4] = {id = 2102304,lv = 47},[5] = {id = 2102305,lv = 47},[6] = {id = 2102306,lv = 47},[7] = {id = 2102307,lv = 47},[8] = {id = 2102308,lv = 47}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1080430,cardId = 1101999,lv = 47,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 47},[2] = {id = 2001302,lv = 47},[3] = {id = 2001303,lv = 47},[4] = {id = 2001304,lv = 47},[5] = {id = 2001305,lv = 47},[6] = {id = 2001306,lv = 47},[7] = {id = 2001307,lv = 47},[8] = {id = 2001308,lv = 47}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-8-4-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1080431,cardId = 1102999,lv = 45,bklv = 5,star = 1,ghost = 10,equip = {[1] = {id = 2102301,lv = 47},[2] = {id = 2102302,lv = 47},[3] = {id = 2102303,lv = 47},[4] = {id = 2102304,lv = 47},[5] = {id = 2102305,lv = 47},[6] = {id = 2102306,lv = 47},[7] = {id = 2102307,lv = 47},[8] = {id = 2102308,lv = 47}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10805] = {
		[1] = {
			jlr = {id = 1080510,cardId = 1101999,lv = 47,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 47},[2] = {id = 2001302,lv = 47},[3] = {id = 2001303,lv = 47},[4] = {id = 2001304,lv = 47},[5] = {id = 2001305,lv = 47},[6] = {id = 2001306,lv = 47},[7] = {id = 2001307,lv = 47},[8] = {id = 2001308,lv = 47}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-8-5-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1080511,cardId = 1102999,lv = 45,bklv = 5,star = 1,ghost = 11,equip = {[1] = {id = 2102301,lv = 47},[2] = {id = 2102302,lv = 47},[3] = {id = 2102303,lv = 47},[4] = {id = 2102304,lv = 47},[5] = {id = 2102305,lv = 47},[6] = {id = 2102306,lv = 47},[7] = {id = 2102307,lv = 47},[8] = {id = 2102308,lv = 47}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1080520,cardId = 1101999,lv = 47,bklv = 5,star = 2,equip = {[1] = {id = 2001301,lv = 47},[2] = {id = 2001302,lv = 47},[3] = {id = 2001303,lv = 47},[4] = {id = 2001304,lv = 47},[5] = {id = 2001305,lv = 47},[6] = {id = 2001306,lv = 47},[7] = {id = 2001307,lv = 47},[8] = {id = 2001308,lv = 47}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-8-5-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1080521,cardId = 1102999,lv = 50,bklv = 6,star = 2,ghost = 11,equip = {[1] = {id = 2102301,lv = 47},[2] = {id = 2102302,lv = 47},[3] = {id = 2102303,lv = 47},[4] = {id = 2102304,lv = 47},[5] = {id = 2102305,lv = 47},[6] = {id = 2102306,lv = 47},[7] = {id = 2102307,lv = 47},[8] = {id = 2102308,lv = 47}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1080530,cardId = 1101999,lv = 47,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 47},[2] = {id = 2001302,lv = 47},[3] = {id = 2001303,lv = 47},[4] = {id = 2001304,lv = 47},[5] = {id = 2001305,lv = 47},[6] = {id = 2001306,lv = 47},[7] = {id = 2001307,lv = 47},[8] = {id = 2001308,lv = 47}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-8-5-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1080531,cardId = 1102999,lv = 45,bklv = 5,star = 1,ghost = 11,equip = {[1] = {id = 2102301,lv = 47},[2] = {id = 2102302,lv = 47},[3] = {id = 2102303,lv = 47},[4] = {id = 2102304,lv = 47},[5] = {id = 2102305,lv = 47},[6] = {id = 2102306,lv = 47},[7] = {id = 2102307,lv = 47},[8] = {id = 2102308,lv = 47}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10806] = {
		[1] = {
			jlr = {id = 1080610,cardId = 1101998,lv = 48,bklv = 6,star = 1,equip = {[1] = {id = 2002301,lv = 48},[2] = {id = 2002302,lv = 48},[3] = {id = 2002303,lv = 48},[4] = {id = 2002304,lv = 48},[5] = {id = 2002305,lv = 48},[6] = {id = 2002306,lv = 48},[7] = {id = 2002307,lv = 48},[8] = {id = 2002308,lv = 48}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-8-6-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1080611,cardId = 1102998,lv = 50,bklv = 6,star = 1,ghost = 11,equip = {[1] = {id = 2102301,lv = 48},[2] = {id = 2102302,lv = 48},[3] = {id = 2102303,lv = 48},[4] = {id = 2102304,lv = 48},[5] = {id = 2102305,lv = 48},[6] = {id = 2102306,lv = 48},[7] = {id = 2102307,lv = 48},[8] = {id = 2102308,lv = 48}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1080620,cardId = 1101998,lv = 48,bklv = 6,star = 1,equip = {[1] = {id = 2002301,lv = 48},[2] = {id = 2002302,lv = 48},[3] = {id = 2002303,lv = 48},[4] = {id = 2002304,lv = 48},[5] = {id = 2002305,lv = 48},[6] = {id = 2002306,lv = 48},[7] = {id = 2002307,lv = 48},[8] = {id = 2002308,lv = 48}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-8-6-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1080621,cardId = 1102998,lv = 50,bklv = 6,star = 1,ghost = 12,equip = {[1] = {id = 2102301,lv = 48},[2] = {id = 2102302,lv = 48},[3] = {id = 2102303,lv = 48},[4] = {id = 2102304,lv = 48},[5] = {id = 2102305,lv = 48},[6] = {id = 2102306,lv = 48},[7] = {id = 2102307,lv = 48},[8] = {id = 2102308,lv = 48}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1080630,cardId = 1101998,lv = 48,bklv = 6,star = 1,equip = {[1] = {id = 2002301,lv = 48},[2] = {id = 2002302,lv = 48},[3] = {id = 2002303,lv = 48},[4] = {id = 2002304,lv = 48},[5] = {id = 2002305,lv = 48},[6] = {id = 2002306,lv = 48},[7] = {id = 2002307,lv = 48},[8] = {id = 2002308,lv = 48}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-8-6-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1080631,cardId = 1102998,lv = 45,bklv = 5,star = 1,ghost = 11,equip = {[1] = {id = 2102301,lv = 48},[2] = {id = 2102302,lv = 48},[3] = {id = 2102303,lv = 48},[4] = {id = 2102304,lv = 48},[5] = {id = 2102305,lv = 48},[6] = {id = 2102306,lv = 48},[7] = {id = 2102307,lv = 48},[8] = {id = 2102308,lv = 48}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10807] = {
		[1] = {
			jlr = {id = 1080710,cardId = 1101999,lv = 49,bklv = 6,star = 2,equip = {[1] = {id = 2002301,lv = 49},[2] = {id = 2002302,lv = 49},[3] = {id = 2002303,lv = 49},[4] = {id = 2002304,lv = 49},[5] = {id = 2002305,lv = 49},[6] = {id = 2002306,lv = 49},[7] = {id = 2002307,lv = 49},[8] = {id = 2002308,lv = 49}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-8-7-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1080711,cardId = 1102999,lv = 50,bklv = 6,star = 2,ghost = 11,equip = {[1] = {id = 2102301,lv = 49},[2] = {id = 2102302,lv = 49},[3] = {id = 2102303,lv = 49},[4] = {id = 2102304,lv = 49},[5] = {id = 2102305,lv = 49},[6] = {id = 2102306,lv = 49},[7] = {id = 2102307,lv = 49},[8] = {id = 2102308,lv = 49}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1080720,cardId = 1101999,lv = 49,bklv = 6,star = 2,equip = {[1] = {id = 2002301,lv = 49},[2] = {id = 2002302,lv = 49},[3] = {id = 2002303,lv = 49},[4] = {id = 2002304,lv = 49},[5] = {id = 2002305,lv = 49},[6] = {id = 2002306,lv = 49},[7] = {id = 2002307,lv = 49},[8] = {id = 2002308,lv = 49}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-8-7-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1080721,cardId = 1102999,lv = 50,bklv = 6,star = 2,ghost = 12,equip = {[1] = {id = 2102301,lv = 49},[2] = {id = 2102302,lv = 49},[3] = {id = 2102303,lv = 49},[4] = {id = 2102304,lv = 49},[5] = {id = 2102305,lv = 49},[6] = {id = 2102306,lv = 49},[7] = {id = 2102307,lv = 49},[8] = {id = 2102308,lv = 49}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1080730,cardId = 1101999,lv = 49,bklv = 6,star = 1,equip = {[1] = {id = 2002301,lv = 49},[2] = {id = 2002302,lv = 49},[3] = {id = 2002303,lv = 49},[4] = {id = 2002304,lv = 49},[5] = {id = 2002305,lv = 49},[6] = {id = 2002306,lv = 49},[7] = {id = 2002307,lv = 49},[8] = {id = 2002308,lv = 49}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-8-7-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1080731,cardId = 1102999,lv = 45,bklv = 5,star = 1,ghost = 11,equip = {[1] = {id = 2102301,lv = 49},[2] = {id = 2102302,lv = 49},[3] = {id = 2102303,lv = 49},[4] = {id = 2102304,lv = 49},[5] = {id = 2102305,lv = 49},[6] = {id = 2102306,lv = 49},[7] = {id = 2102307,lv = 49},[8] = {id = 2102308,lv = 49}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10808] = {
		[1] = {
			jlr = {id = 1080810,cardId = 1101999,lv = 49,bklv = 6,star = 2,equip = {[1] = {id = 2002301,lv = 49},[2] = {id = 2002302,lv = 49},[3] = {id = 2002303,lv = 49},[4] = {id = 2002304,lv = 49},[5] = {id = 2002305,lv = 49},[6] = {id = 2002306,lv = 49},[7] = {id = 2002307,lv = 49},[8] = {id = 2002308,lv = 49}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-8-8-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1080811,cardId = 1102999,lv = 50,bklv = 6,star = 2,ghost = 11,equip = {[1] = {id = 2102301,lv = 49},[2] = {id = 2102302,lv = 49},[3] = {id = 2102303,lv = 49},[4] = {id = 2102304,lv = 49},[5] = {id = 2102305,lv = 49},[6] = {id = 2102306,lv = 49},[7] = {id = 2102307,lv = 49},[8] = {id = 2102308,lv = 49}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1080820,cardId = 1101999,lv = 49,bklv = 6,star = 2,equip = {[1] = {id = 2002301,lv = 49},[2] = {id = 2002302,lv = 49},[3] = {id = 2002303,lv = 49},[4] = {id = 2002304,lv = 49},[5] = {id = 2002305,lv = 49},[6] = {id = 2002306,lv = 49},[7] = {id = 2002307,lv = 49},[8] = {id = 2002308,lv = 49}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-8-8-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1080821,cardId = 1102999,lv = 50,bklv = 6,star = 2,ghost = 12,equip = {[1] = {id = 2102301,lv = 49},[2] = {id = 2102302,lv = 49},[3] = {id = 2102303,lv = 49},[4] = {id = 2102304,lv = 49},[5] = {id = 2102305,lv = 49},[6] = {id = 2102306,lv = 49},[7] = {id = 2102307,lv = 49},[8] = {id = 2102308,lv = 49}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1080830,cardId = 1101999,lv = 49,bklv = 6,star = 1,equip = {[1] = {id = 2002301,lv = 49},[2] = {id = 2002302,lv = 49},[3] = {id = 2002303,lv = 49},[4] = {id = 2002304,lv = 49},[5] = {id = 2002305,lv = 49},[6] = {id = 2002306,lv = 49},[7] = {id = 2002307,lv = 49},[8] = {id = 2002308,lv = 49}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-8-8-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1080831,cardId = 1102999,lv = 45,bklv = 5,star = 1,ghost = 11,equip = {[1] = {id = 2102301,lv = 49},[2] = {id = 2102302,lv = 49},[3] = {id = 2102303,lv = 49},[4] = {id = 2102304,lv = 49},[5] = {id = 2102305,lv = 49},[6] = {id = 2102306,lv = 49},[7] = {id = 2102307,lv = 49},[8] = {id = 2102308,lv = 49}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10809] = {
		[1] = {
			jlr = {id = 1080910,cardId = 1101998,lv = 50,bklv = 6,star = 1,equip = {[1] = {id = 2002301,lv = 50},[2] = {id = 2002302,lv = 50},[3] = {id = 2002303,lv = 50},[4] = {id = 2002304,lv = 50},[5] = {id = 2002305,lv = 50},[6] = {id = 2002306,lv = 50},[7] = {id = 2002307,lv = 50},[8] = {id = 2002308,lv = 50}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-8-9-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1080911,cardId = 1102998,lv = 50,bklv = 6,star = 1,ghost = 12,equip = {[1] = {id = 2102301,lv = 50},[2] = {id = 2102302,lv = 50},[3] = {id = 2102303,lv = 50},[4] = {id = 2102304,lv = 50},[5] = {id = 2102305,lv = 50},[6] = {id = 2102306,lv = 50},[7] = {id = 2102307,lv = 50},[8] = {id = 2102308,lv = 50}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1080920,cardId = 1101997,lv = 50,bklv = 6,star = 1,equip = {[1] = {id = 2002301,lv = 50},[2] = {id = 2002302,lv = 50},[3] = {id = 2002303,lv = 50},[4] = {id = 2002304,lv = 50},[5] = {id = 2002305,lv = 50},[6] = {id = 2002306,lv = 50},[7] = {id = 2002307,lv = 50},[8] = {id = 2002308,lv = 50}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-8-9-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1080921,cardId = 1102997,lv = 50,bklv = 6,star = 1,ghost = 12,equip = {[1] = {id = 2102301,lv = 50},[2] = {id = 2102302,lv = 50},[3] = {id = 2102303,lv = 50},[4] = {id = 2102304,lv = 50},[5] = {id = 2102305,lv = 50},[6] = {id = 2102306,lv = 50},[7] = {id = 2102307,lv = 50},[8] = {id = 2102308,lv = 50}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1080930,cardId = 1101998,lv = 50,bklv = 6,star = 1,equip = {[1] = {id = 2002301,lv = 50},[2] = {id = 2002302,lv = 50},[3] = {id = 2002303,lv = 50},[4] = {id = 2002304,lv = 50},[5] = {id = 2002305,lv = 50},[6] = {id = 2002306,lv = 50},[7] = {id = 2002307,lv = 50},[8] = {id = 2002308,lv = 50}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-8-9-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1080931,cardId = 1102998,lv = 50,bklv = 6,star = 1,ghost = 12,equip = {[1] = {id = 2102301,lv = 50},[2] = {id = 2102302,lv = 50},[3] = {id = 2102303,lv = 50},[4] = {id = 2102304,lv = 50},[5] = {id = 2102305,lv = 50},[6] = {id = 2102306,lv = 50},[7] = {id = 2102307,lv = 50},[8] = {id = 2102308,lv = 50}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10810] = {
		[1] = {
			jlr = {id = 1081010,cardId = 1101997,lv = 50,bklv = 6,star = 1,equip = {[1] = {id = 2002301,lv = 50},[2] = {id = 2002302,lv = 50},[3] = {id = 2002303,lv = 50},[4] = {id = 2002304,lv = 50},[5] = {id = 2002305,lv = 50},[6] = {id = 2002306,lv = 50},[7] = {id = 2002307,lv = 50},[8] = {id = 2002308,lv = 50}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-8-10-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1081011,cardId = 1102997,lv = 50,bklv = 6,star = 1,ghost = 12,equip = {[1] = {id = 2102301,lv = 50},[2] = {id = 2102302,lv = 50},[3] = {id = 2102303,lv = 50},[4] = {id = 2102304,lv = 50},[5] = {id = 2102305,lv = 50},[6] = {id = 2102306,lv = 50},[7] = {id = 2102307,lv = 50},[8] = {id = 2102308,lv = 50}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1081020,cardId = 1101997,lv = 50,bklv = 6,star = 1,equip = {[1] = {id = 2002301,lv = 50},[2] = {id = 2002302,lv = 50},[3] = {id = 2002303,lv = 50},[4] = {id = 2002304,lv = 50},[5] = {id = 2002305,lv = 50},[6] = {id = 2002306,lv = 50},[7] = {id = 2002307,lv = 50},[8] = {id = 2002308,lv = 50}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-8-10-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1081021,cardId = 1102997,lv = 50,bklv = 6,star = 1,ghost = 12,equip = {[1] = {id = 2102301,lv = 50},[2] = {id = 2102302,lv = 50},[3] = {id = 2102303,lv = 50},[4] = {id = 2102304,lv = 50},[5] = {id = 2102305,lv = 50},[6] = {id = 2102306,lv = 50},[7] = {id = 2102307,lv = 50},[8] = {id = 2102308,lv = 50}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1081030,cardId = 1101997,lv = 50,bklv = 6,star = 1,equip = {[1] = {id = 2002301,lv = 50},[2] = {id = 2002302,lv = 50},[3] = {id = 2002303,lv = 50},[4] = {id = 2002304,lv = 50},[5] = {id = 2002305,lv = 50},[6] = {id = 2002306,lv = 50},[7] = {id = 2002307,lv = 50},[8] = {id = 2002308,lv = 50}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-8-10-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1081031,cardId = 1102997,lv = 50,bklv = 6,star = 1,ghost = 12,equip = {[1] = {id = 2102301,lv = 50},[2] = {id = 2102302,lv = 50},[3] = {id = 2102303,lv = 50},[4] = {id = 2102304,lv = 50},[5] = {id = 2102305,lv = 50},[6] = {id = 2102306,lv = 50},[7] = {id = 2102307,lv = 50},[8] = {id = 2102308,lv = 50}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10901] = {
		[1] = {
			jlr = {id = 1090110,cardId = 1101999,lv = 50,bklv = 6,star = 2,equip = {[1] = {id = 2002301,lv = 50},[2] = {id = 2002302,lv = 50},[3] = {id = 2002303,lv = 50},[4] = {id = 2002304,lv = 50},[5] = {id = 2002305,lv = 50},[6] = {id = 2002306,lv = 50},[7] = {id = 2002307,lv = 50},[8] = {id = 2002308,lv = 50}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-9-1-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1090111,cardId = 1102999,lv = 50,bklv = 6,star = 2,ghost = 12,equip = {[1] = {id = 2102301,lv = 50},[2] = {id = 2102302,lv = 50},[3] = {id = 2102303,lv = 50},[4] = {id = 2102304,lv = 50},[5] = {id = 2102305,lv = 50},[6] = {id = 2102306,lv = 50},[7] = {id = 2102307,lv = 50},[8] = {id = 2102308,lv = 50}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1090120,cardId = 1101999,lv = 50,bklv = 6,star = 2,equip = {[1] = {id = 2002301,lv = 50},[2] = {id = 2002302,lv = 50},[3] = {id = 2002303,lv = 50},[4] = {id = 2002304,lv = 50},[5] = {id = 2002305,lv = 50},[6] = {id = 2002306,lv = 50},[7] = {id = 2002307,lv = 50},[8] = {id = 2002308,lv = 50}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-9-1-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1090121,cardId = 1102999,lv = 50,bklv = 6,star = 2,ghost = 12,equip = {[1] = {id = 2102301,lv = 50},[2] = {id = 2102302,lv = 50},[3] = {id = 2102303,lv = 50},[4] = {id = 2102304,lv = 50},[5] = {id = 2102305,lv = 50},[6] = {id = 2102306,lv = 50},[7] = {id = 2102307,lv = 50},[8] = {id = 2102308,lv = 50}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1090130,cardId = 1101999,lv = 50,bklv = 6,star = 2,equip = {[1] = {id = 2002301,lv = 50},[2] = {id = 2002302,lv = 50},[3] = {id = 2002303,lv = 50},[4] = {id = 2002304,lv = 50},[5] = {id = 2002305,lv = 50},[6] = {id = 2002306,lv = 50},[7] = {id = 2002307,lv = 50},[8] = {id = 2002308,lv = 50}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-9-1-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1090131,cardId = 1102999,lv = 50,bklv = 6,star = 2,ghost = 12,equip = {[1] = {id = 2102301,lv = 50},[2] = {id = 2102302,lv = 50},[3] = {id = 2102303,lv = 50},[4] = {id = 2102304,lv = 50},[5] = {id = 2102305,lv = 50},[6] = {id = 2102306,lv = 50},[7] = {id = 2102307,lv = 50},[8] = {id = 2102308,lv = 50}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10902] = {
		[1] = {
			jlr = {id = 1090210,cardId = 1101999,lv = 50,bklv = 6,star = 2,equip = {[1] = {id = 2002301,lv = 50},[2] = {id = 2002302,lv = 50},[3] = {id = 2002303,lv = 50},[4] = {id = 2002304,lv = 50},[5] = {id = 2002305,lv = 50},[6] = {id = 2002306,lv = 50},[7] = {id = 2002307,lv = 50},[8] = {id = 2002308,lv = 50}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-9-2-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1090211,cardId = 1102999,lv = 50,bklv = 6,star = 2,ghost = 12,equip = {[1] = {id = 2102301,lv = 50},[2] = {id = 2102302,lv = 50},[3] = {id = 2102303,lv = 50},[4] = {id = 2102304,lv = 50},[5] = {id = 2102305,lv = 50},[6] = {id = 2102306,lv = 50},[7] = {id = 2102307,lv = 50},[8] = {id = 2102308,lv = 50}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1090220,cardId = 1101999,lv = 50,bklv = 6,star = 2,equip = {[1] = {id = 2002301,lv = 50},[2] = {id = 2002302,lv = 50},[3] = {id = 2002303,lv = 50},[4] = {id = 2002304,lv = 50},[5] = {id = 2002305,lv = 50},[6] = {id = 2002306,lv = 50},[7] = {id = 2002307,lv = 50},[8] = {id = 2002308,lv = 50}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-9-2-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1090221,cardId = 1102999,lv = 50,bklv = 6,star = 2,ghost = 12,equip = {[1] = {id = 2102301,lv = 50},[2] = {id = 2102302,lv = 50},[3] = {id = 2102303,lv = 50},[4] = {id = 2102304,lv = 50},[5] = {id = 2102305,lv = 50},[6] = {id = 2102306,lv = 50},[7] = {id = 2102307,lv = 50},[8] = {id = 2102308,lv = 50}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1090230,cardId = 1101999,lv = 50,bklv = 6,star = 2,equip = {[1] = {id = 2002301,lv = 50},[2] = {id = 2002302,lv = 50},[3] = {id = 2002303,lv = 50},[4] = {id = 2002304,lv = 50},[5] = {id = 2002305,lv = 50},[6] = {id = 2002306,lv = 50},[7] = {id = 2002307,lv = 50},[8] = {id = 2002308,lv = 50}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-9-2-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1090231,cardId = 1102999,lv = 50,bklv = 6,star = 2,ghost = 12,equip = {[1] = {id = 2102301,lv = 50},[2] = {id = 2102302,lv = 50},[3] = {id = 2102303,lv = 50},[4] = {id = 2102304,lv = 50},[5] = {id = 2102305,lv = 50},[6] = {id = 2102306,lv = 50},[7] = {id = 2102307,lv = 50},[8] = {id = 2102308,lv = 50}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10903] = {
		[1] = {
			jlr = {id = 1090310,cardId = 1101999,lv = 51,bklv = 6,star = 2,equip = {[1] = {id = 2002301,lv = 51},[2] = {id = 2002302,lv = 51},[3] = {id = 2002303,lv = 51},[4] = {id = 2002304,lv = 51},[5] = {id = 2002305,lv = 51},[6] = {id = 2002306,lv = 51},[7] = {id = 2002307,lv = 51},[8] = {id = 2002308,lv = 51}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-9-3-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1090311,cardId = 1102999,lv = 50,bklv = 6,star = 2,ghost = 12,equip = {[1] = {id = 2102301,lv = 51},[2] = {id = 2102302,lv = 51},[3] = {id = 2102303,lv = 51},[4] = {id = 2102304,lv = 51},[5] = {id = 2102305,lv = 51},[6] = {id = 2102306,lv = 51},[7] = {id = 2102307,lv = 51},[8] = {id = 2102308,lv = 51}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1090320,cardId = 1101998,lv = 51,bklv = 6,star = 1,equip = {[1] = {id = 2002301,lv = 51},[2] = {id = 2002302,lv = 51},[3] = {id = 2002303,lv = 51},[4] = {id = 2002304,lv = 51},[5] = {id = 2002305,lv = 51},[6] = {id = 2002306,lv = 51},[7] = {id = 2002307,lv = 51},[8] = {id = 2002308,lv = 51}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-9-3-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1090321,cardId = 1102998,lv = 55,bklv = 7,star = 1,ghost = 13,equip = {[1] = {id = 2102301,lv = 51},[2] = {id = 2102302,lv = 51},[3] = {id = 2102303,lv = 51},[4] = {id = 2102304,lv = 51},[5] = {id = 2102305,lv = 51},[6] = {id = 2102306,lv = 51},[7] = {id = 2102307,lv = 51},[8] = {id = 2102308,lv = 51}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1090330,cardId = 1101999,lv = 51,bklv = 6,star = 2,equip = {[1] = {id = 2002301,lv = 51},[2] = {id = 2002302,lv = 51},[3] = {id = 2002303,lv = 51},[4] = {id = 2002304,lv = 51},[5] = {id = 2002305,lv = 51},[6] = {id = 2002306,lv = 51},[7] = {id = 2002307,lv = 51},[8] = {id = 2002308,lv = 51}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-9-3-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1090331,cardId = 1102999,lv = 50,bklv = 6,star = 2,ghost = 12,equip = {[1] = {id = 2102301,lv = 51},[2] = {id = 2102302,lv = 51},[3] = {id = 2102303,lv = 51},[4] = {id = 2102304,lv = 51},[5] = {id = 2102305,lv = 51},[6] = {id = 2102306,lv = 51},[7] = {id = 2102307,lv = 51},[8] = {id = 2102308,lv = 51}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10904] = {
		[1] = {
			jlr = {id = 1090410,cardId = 1101999,lv = 52,bklv = 6,star = 2,equip = {[1] = {id = 2002301,lv = 52},[2] = {id = 2002302,lv = 52},[3] = {id = 2002303,lv = 52},[4] = {id = 2002304,lv = 52},[5] = {id = 2002305,lv = 52},[6] = {id = 2002306,lv = 52},[7] = {id = 2002307,lv = 52},[8] = {id = 2002308,lv = 52}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-9-4-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1090411,cardId = 1102999,lv = 50,bklv = 6,star = 2,ghost = 13,equip = {[1] = {id = 2102301,lv = 52},[2] = {id = 2102302,lv = 52},[3] = {id = 2102303,lv = 52},[4] = {id = 2102304,lv = 52},[5] = {id = 2102305,lv = 52},[6] = {id = 2102306,lv = 52},[7] = {id = 2102307,lv = 52},[8] = {id = 2102308,lv = 52}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1090420,cardId = 1101999,lv = 52,bklv = 6,star = 2,equip = {[1] = {id = 2002301,lv = 52},[2] = {id = 2002302,lv = 52},[3] = {id = 2002303,lv = 52},[4] = {id = 2002304,lv = 52},[5] = {id = 2002305,lv = 52},[6] = {id = 2002306,lv = 52},[7] = {id = 2002307,lv = 52},[8] = {id = 2002308,lv = 52}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-9-4-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1090421,cardId = 1102999,lv = 55,bklv = 7,star = 2,ghost = 13,equip = {[1] = {id = 2102301,lv = 52},[2] = {id = 2102302,lv = 52},[3] = {id = 2102303,lv = 52},[4] = {id = 2102304,lv = 52},[5] = {id = 2102305,lv = 52},[6] = {id = 2102306,lv = 52},[7] = {id = 2102307,lv = 52},[8] = {id = 2102308,lv = 52}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1090430,cardId = 1101999,lv = 52,bklv = 6,star = 2,equip = {[1] = {id = 2002301,lv = 52},[2] = {id = 2002302,lv = 52},[3] = {id = 2002303,lv = 52},[4] = {id = 2002304,lv = 52},[5] = {id = 2002305,lv = 52},[6] = {id = 2002306,lv = 52},[7] = {id = 2002307,lv = 52},[8] = {id = 2002308,lv = 52}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-9-4-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1090431,cardId = 1102999,lv = 50,bklv = 6,star = 2,ghost = 12,equip = {[1] = {id = 2102301,lv = 52},[2] = {id = 2102302,lv = 52},[3] = {id = 2102303,lv = 52},[4] = {id = 2102304,lv = 52},[5] = {id = 2102305,lv = 52},[6] = {id = 2102306,lv = 52},[7] = {id = 2102307,lv = 52},[8] = {id = 2102308,lv = 52}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10905] = {
		[1] = {
			jlr = {id = 1090510,cardId = 1101999,lv = 52,bklv = 6,star = 2,equip = {[1] = {id = 2002301,lv = 52},[2] = {id = 2002302,lv = 52},[3] = {id = 2002303,lv = 52},[4] = {id = 2002304,lv = 52},[5] = {id = 2002305,lv = 52},[6] = {id = 2002306,lv = 52},[7] = {id = 2002307,lv = 52},[8] = {id = 2002308,lv = 52}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-9-5-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1090511,cardId = 1102999,lv = 50,bklv = 6,star = 2,ghost = 13,equip = {[1] = {id = 2102301,lv = 52},[2] = {id = 2102302,lv = 52},[3] = {id = 2102303,lv = 52},[4] = {id = 2102304,lv = 52},[5] = {id = 2102305,lv = 52},[6] = {id = 2102306,lv = 52},[7] = {id = 2102307,lv = 52},[8] = {id = 2102308,lv = 52}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1090520,cardId = 1101999,lv = 52,bklv = 6,star = 2,equip = {[1] = {id = 2002301,lv = 52},[2] = {id = 2002302,lv = 52},[3] = {id = 2002303,lv = 52},[4] = {id = 2002304,lv = 52},[5] = {id = 2002305,lv = 52},[6] = {id = 2002306,lv = 52},[7] = {id = 2002307,lv = 52},[8] = {id = 2002308,lv = 52}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-9-5-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1090521,cardId = 1102999,lv = 55,bklv = 7,star = 2,ghost = 13,equip = {[1] = {id = 2102301,lv = 52},[2] = {id = 2102302,lv = 52},[3] = {id = 2102303,lv = 52},[4] = {id = 2102304,lv = 52},[5] = {id = 2102305,lv = 52},[6] = {id = 2102306,lv = 52},[7] = {id = 2102307,lv = 52},[8] = {id = 2102308,lv = 52}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1090530,cardId = 1101999,lv = 52,bklv = 6,star = 2,equip = {[1] = {id = 2002301,lv = 52},[2] = {id = 2002302,lv = 52},[3] = {id = 2002303,lv = 52},[4] = {id = 2002304,lv = 52},[5] = {id = 2002305,lv = 52},[6] = {id = 2002306,lv = 52},[7] = {id = 2002307,lv = 52},[8] = {id = 2002308,lv = 52}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-9-5-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1090531,cardId = 1102999,lv = 50,bklv = 6,star = 2,ghost = 13,equip = {[1] = {id = 2102301,lv = 52},[2] = {id = 2102302,lv = 52},[3] = {id = 2102303,lv = 52},[4] = {id = 2102304,lv = 52},[5] = {id = 2102305,lv = 52},[6] = {id = 2102306,lv = 52},[7] = {id = 2102307,lv = 52},[8] = {id = 2102308,lv = 52}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10906] = {
		[1] = {
			jlr = {id = 1090610,cardId = 1101998,lv = 53,bklv = 7,star = 1,equip = {[1] = {id = 2002301,lv = 53},[2] = {id = 2002302,lv = 53},[3] = {id = 2002303,lv = 53},[4] = {id = 2002304,lv = 53},[5] = {id = 2002305,lv = 53},[6] = {id = 2002306,lv = 53},[7] = {id = 2002307,lv = 53},[8] = {id = 2002308,lv = 53}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-9-6-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1090611,cardId = 1102998,lv = 55,bklv = 7,star = 1,ghost = 13,equip = {[1] = {id = 2102301,lv = 53},[2] = {id = 2102302,lv = 53},[3] = {id = 2102303,lv = 53},[4] = {id = 2102304,lv = 53},[5] = {id = 2102305,lv = 53},[6] = {id = 2102306,lv = 53},[7] = {id = 2102307,lv = 53},[8] = {id = 2102308,lv = 53}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1090620,cardId = 1101998,lv = 53,bklv = 7,star = 1,equip = {[1] = {id = 2002301,lv = 53},[2] = {id = 2002302,lv = 53},[3] = {id = 2002303,lv = 53},[4] = {id = 2002304,lv = 53},[5] = {id = 2002305,lv = 53},[6] = {id = 2002306,lv = 53},[7] = {id = 2002307,lv = 53},[8] = {id = 2002308,lv = 53}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-9-6-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1090621,cardId = 1102998,lv = 55,bklv = 7,star = 1,ghost = 14,equip = {[1] = {id = 2102301,lv = 53},[2] = {id = 2102302,lv = 53},[3] = {id = 2102303,lv = 53},[4] = {id = 2102304,lv = 53},[5] = {id = 2102305,lv = 53},[6] = {id = 2102306,lv = 53},[7] = {id = 2102307,lv = 53},[8] = {id = 2102308,lv = 53}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1090630,cardId = 1101998,lv = 53,bklv = 7,star = 1,equip = {[1] = {id = 2002301,lv = 53},[2] = {id = 2002302,lv = 53},[3] = {id = 2002303,lv = 53},[4] = {id = 2002304,lv = 53},[5] = {id = 2002305,lv = 53},[6] = {id = 2002306,lv = 53},[7] = {id = 2002307,lv = 53},[8] = {id = 2002308,lv = 53}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-9-6-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1090631,cardId = 1102998,lv = 50,bklv = 6,star = 1,ghost = 13,equip = {[1] = {id = 2102301,lv = 53},[2] = {id = 2102302,lv = 53},[3] = {id = 2102303,lv = 53},[4] = {id = 2102304,lv = 53},[5] = {id = 2102305,lv = 53},[6] = {id = 2102306,lv = 53},[7] = {id = 2102307,lv = 53},[8] = {id = 2102308,lv = 53}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10907] = {
		[1] = {
			jlr = {id = 1090710,cardId = 1101999,lv = 54,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 54},[2] = {id = 2002302,lv = 54},[3] = {id = 2002303,lv = 54},[4] = {id = 2002304,lv = 54},[5] = {id = 2002305,lv = 54},[6] = {id = 2002306,lv = 54},[7] = {id = 2002307,lv = 54},[8] = {id = 2002308,lv = 54}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-9-7-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1090711,cardId = 1102999,lv = 55,bklv = 7,star = 2,ghost = 13,equip = {[1] = {id = 2102301,lv = 54},[2] = {id = 2102302,lv = 54},[3] = {id = 2102303,lv = 54},[4] = {id = 2102304,lv = 54},[5] = {id = 2102305,lv = 54},[6] = {id = 2102306,lv = 54},[7] = {id = 2102307,lv = 54},[8] = {id = 2102308,lv = 54}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1090720,cardId = 1101999,lv = 54,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 54},[2] = {id = 2002302,lv = 54},[3] = {id = 2002303,lv = 54},[4] = {id = 2002304,lv = 54},[5] = {id = 2002305,lv = 54},[6] = {id = 2002306,lv = 54},[7] = {id = 2002307,lv = 54},[8] = {id = 2002308,lv = 54}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-9-7-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1090721,cardId = 1102999,lv = 55,bklv = 7,star = 2,ghost = 14,equip = {[1] = {id = 2102301,lv = 54},[2] = {id = 2102302,lv = 54},[3] = {id = 2102303,lv = 54},[4] = {id = 2102304,lv = 54},[5] = {id = 2102305,lv = 54},[6] = {id = 2102306,lv = 54},[7] = {id = 2102307,lv = 54},[8] = {id = 2102308,lv = 54}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1090730,cardId = 1101999,lv = 54,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 54},[2] = {id = 2002302,lv = 54},[3] = {id = 2002303,lv = 54},[4] = {id = 2002304,lv = 54},[5] = {id = 2002305,lv = 54},[6] = {id = 2002306,lv = 54},[7] = {id = 2002307,lv = 54},[8] = {id = 2002308,lv = 54}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-9-7-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1090731,cardId = 1102999,lv = 50,bklv = 6,star = 2,ghost = 13,equip = {[1] = {id = 2102301,lv = 54},[2] = {id = 2102302,lv = 54},[3] = {id = 2102303,lv = 54},[4] = {id = 2102304,lv = 54},[5] = {id = 2102305,lv = 54},[6] = {id = 2102306,lv = 54},[7] = {id = 2102307,lv = 54},[8] = {id = 2102308,lv = 54}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10908] = {
		[1] = {
			jlr = {id = 1090810,cardId = 1101999,lv = 54,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 54},[2] = {id = 2002302,lv = 54},[3] = {id = 2002303,lv = 54},[4] = {id = 2002304,lv = 54},[5] = {id = 2002305,lv = 54},[6] = {id = 2002306,lv = 54},[7] = {id = 2002307,lv = 54},[8] = {id = 2002308,lv = 54}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-9-8-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1090811,cardId = 1102999,lv = 55,bklv = 7,star = 2,ghost = 13,equip = {[1] = {id = 2102301,lv = 54},[2] = {id = 2102302,lv = 54},[3] = {id = 2102303,lv = 54},[4] = {id = 2102304,lv = 54},[5] = {id = 2102305,lv = 54},[6] = {id = 2102306,lv = 54},[7] = {id = 2102307,lv = 54},[8] = {id = 2102308,lv = 54}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1090820,cardId = 1101999,lv = 54,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 54},[2] = {id = 2002302,lv = 54},[3] = {id = 2002303,lv = 54},[4] = {id = 2002304,lv = 54},[5] = {id = 2002305,lv = 54},[6] = {id = 2002306,lv = 54},[7] = {id = 2002307,lv = 54},[8] = {id = 2002308,lv = 54}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-9-8-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1090821,cardId = 1102999,lv = 55,bklv = 7,star = 2,ghost = 14,equip = {[1] = {id = 2102301,lv = 54},[2] = {id = 2102302,lv = 54},[3] = {id = 2102303,lv = 54},[4] = {id = 2102304,lv = 54},[5] = {id = 2102305,lv = 54},[6] = {id = 2102306,lv = 54},[7] = {id = 2102307,lv = 54},[8] = {id = 2102308,lv = 54}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1090830,cardId = 1101999,lv = 54,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 54},[2] = {id = 2002302,lv = 54},[3] = {id = 2002303,lv = 54},[4] = {id = 2002304,lv = 54},[5] = {id = 2002305,lv = 54},[6] = {id = 2002306,lv = 54},[7] = {id = 2002307,lv = 54},[8] = {id = 2002308,lv = 54}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-9-8-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1090831,cardId = 1102999,lv = 50,bklv = 6,star = 2,ghost = 13,equip = {[1] = {id = 2102301,lv = 54},[2] = {id = 2102302,lv = 54},[3] = {id = 2102303,lv = 54},[4] = {id = 2102304,lv = 54},[5] = {id = 2102305,lv = 54},[6] = {id = 2102306,lv = 54},[7] = {id = 2102307,lv = 54},[8] = {id = 2102308,lv = 54}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10909] = {
		[1] = {
			jlr = {id = 1090910,cardId = 1101998,lv = 55,bklv = 7,star = 1,equip = {[1] = {id = 2002301,lv = 55},[2] = {id = 2002302,lv = 55},[3] = {id = 2002303,lv = 55},[4] = {id = 2002304,lv = 55},[5] = {id = 2002305,lv = 55},[6] = {id = 2002306,lv = 55},[7] = {id = 2002307,lv = 55},[8] = {id = 2002308,lv = 55}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-9-9-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1090911,cardId = 1102998,lv = 55,bklv = 7,star = 1,ghost = 14,equip = {[1] = {id = 2102301,lv = 55},[2] = {id = 2102302,lv = 55},[3] = {id = 2102303,lv = 55},[4] = {id = 2102304,lv = 55},[5] = {id = 2102305,lv = 55},[6] = {id = 2102306,lv = 55},[7] = {id = 2102307,lv = 55},[8] = {id = 2102308,lv = 55}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1090920,cardId = 1101997,lv = 55,bklv = 7,star = 1,equip = {[1] = {id = 2002301,lv = 55},[2] = {id = 2002302,lv = 55},[3] = {id = 2002303,lv = 55},[4] = {id = 2002304,lv = 55},[5] = {id = 2002305,lv = 55},[6] = {id = 2002306,lv = 55},[7] = {id = 2002307,lv = 55},[8] = {id = 2002308,lv = 55}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-9-9-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1090921,cardId = 1102997,lv = 55,bklv = 7,star = 1,ghost = 14,equip = {[1] = {id = 2102301,lv = 55},[2] = {id = 2102302,lv = 55},[3] = {id = 2102303,lv = 55},[4] = {id = 2102304,lv = 55},[5] = {id = 2102305,lv = 55},[6] = {id = 2102306,lv = 55},[7] = {id = 2102307,lv = 55},[8] = {id = 2102308,lv = 55}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1090930,cardId = 1101998,lv = 55,bklv = 7,star = 1,equip = {[1] = {id = 2002301,lv = 55},[2] = {id = 2002302,lv = 55},[3] = {id = 2002303,lv = 55},[4] = {id = 2002304,lv = 55},[5] = {id = 2002305,lv = 55},[6] = {id = 2002306,lv = 55},[7] = {id = 2002307,lv = 55},[8] = {id = 2002308,lv = 55}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-9-9-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1090931,cardId = 1102998,lv = 55,bklv = 7,star = 1,ghost = 14,equip = {[1] = {id = 2102301,lv = 55},[2] = {id = 2102302,lv = 55},[3] = {id = 2102303,lv = 55},[4] = {id = 2102304,lv = 55},[5] = {id = 2102305,lv = 55},[6] = {id = 2102306,lv = 55},[7] = {id = 2102307,lv = 55},[8] = {id = 2102308,lv = 55}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[10910] = {
		[1] = {
			jlr = {id = 1091010,cardId = 1101997,lv = 55,bklv = 7,star = 1,equip = {[1] = {id = 2002301,lv = 55},[2] = {id = 2002302,lv = 55},[3] = {id = 2002303,lv = 55},[4] = {id = 2002304,lv = 55},[5] = {id = 2002305,lv = 55},[6] = {id = 2002306,lv = 55},[7] = {id = 2002307,lv = 55},[8] = {id = 2002308,lv = 55}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-9-10-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1091011,cardId = 1102997,lv = 55,bklv = 7,star = 1,ghost = 14,equip = {[1] = {id = 2102301,lv = 55},[2] = {id = 2102302,lv = 55},[3] = {id = 2102303,lv = 55},[4] = {id = 2102304,lv = 55},[5] = {id = 2102305,lv = 55},[6] = {id = 2102306,lv = 55},[7] = {id = 2102307,lv = 55},[8] = {id = 2102308,lv = 55}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1091020,cardId = 1101997,lv = 55,bklv = 7,star = 1,equip = {[1] = {id = 2002301,lv = 55},[2] = {id = 2002302,lv = 55},[3] = {id = 2002303,lv = 55},[4] = {id = 2002304,lv = 55},[5] = {id = 2002305,lv = 55},[6] = {id = 2002306,lv = 55},[7] = {id = 2002307,lv = 55},[8] = {id = 2002308,lv = 55}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-9-10-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1091021,cardId = 1102997,lv = 55,bklv = 7,star = 1,ghost = 14,equip = {[1] = {id = 2102301,lv = 55},[2] = {id = 2102302,lv = 55},[3] = {id = 2102303,lv = 55},[4] = {id = 2102304,lv = 55},[5] = {id = 2102305,lv = 55},[6] = {id = 2102306,lv = 55},[7] = {id = 2102307,lv = 55},[8] = {id = 2102308,lv = 55}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1091030,cardId = 1101997,lv = 55,bklv = 7,star = 1,equip = {[1] = {id = 2002301,lv = 55},[2] = {id = 2002302,lv = 55},[3] = {id = 2002303,lv = 55},[4] = {id = 2002304,lv = 55},[5] = {id = 2002305,lv = 55},[6] = {id = 2002306,lv = 55},[7] = {id = 2002307,lv = 55},[8] = {id = 2002308,lv = 55}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-9-10-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1091031,cardId = 1102997,lv = 55,bklv = 7,star = 1,ghost = 14,equip = {[1] = {id = 2102301,lv = 55},[2] = {id = 2102302,lv = 55},[3] = {id = 2102303,lv = 55},[4] = {id = 2102304,lv = 55},[5] = {id = 2102305,lv = 55},[6] = {id = 2102306,lv = 55},[7] = {id = 2102307,lv = 55},[8] = {id = 2102308,lv = 55}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11001] = {
		[1] = {
			jlr = {id = 1100110,cardId = 1101999,lv = 55,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 55},[2] = {id = 2002302,lv = 55},[3] = {id = 2002303,lv = 55},[4] = {id = 2002304,lv = 55},[5] = {id = 2002305,lv = 55},[6] = {id = 2002306,lv = 55},[7] = {id = 2002307,lv = 55},[8] = {id = 2002308,lv = 55}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-10-1-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1100111,cardId = 1102999,lv = 55,bklv = 7,star = 2,ghost = 14,equip = {[1] = {id = 2102301,lv = 55},[2] = {id = 2102302,lv = 55},[3] = {id = 2102303,lv = 55},[4] = {id = 2102304,lv = 55},[5] = {id = 2102305,lv = 55},[6] = {id = 2102306,lv = 55},[7] = {id = 2102307,lv = 55},[8] = {id = 2102308,lv = 55}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1100120,cardId = 1101999,lv = 55,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 55},[2] = {id = 2002302,lv = 55},[3] = {id = 2002303,lv = 55},[4] = {id = 2002304,lv = 55},[5] = {id = 2002305,lv = 55},[6] = {id = 2002306,lv = 55},[7] = {id = 2002307,lv = 55},[8] = {id = 2002308,lv = 55}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-10-1-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1100121,cardId = 1102999,lv = 55,bklv = 7,star = 2,ghost = 14,equip = {[1] = {id = 2102301,lv = 55},[2] = {id = 2102302,lv = 55},[3] = {id = 2102303,lv = 55},[4] = {id = 2102304,lv = 55},[5] = {id = 2102305,lv = 55},[6] = {id = 2102306,lv = 55},[7] = {id = 2102307,lv = 55},[8] = {id = 2102308,lv = 55}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1100130,cardId = 1101999,lv = 55,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 55},[2] = {id = 2002302,lv = 55},[3] = {id = 2002303,lv = 55},[4] = {id = 2002304,lv = 55},[5] = {id = 2002305,lv = 55},[6] = {id = 2002306,lv = 55},[7] = {id = 2002307,lv = 55},[8] = {id = 2002308,lv = 55}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-10-1-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1100131,cardId = 1102999,lv = 55,bklv = 7,star = 2,ghost = 14,equip = {[1] = {id = 2102301,lv = 55},[2] = {id = 2102302,lv = 55},[3] = {id = 2102303,lv = 55},[4] = {id = 2102304,lv = 55},[5] = {id = 2102305,lv = 55},[6] = {id = 2102306,lv = 55},[7] = {id = 2102307,lv = 55},[8] = {id = 2102308,lv = 55}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11002] = {
		[1] = {
			jlr = {id = 1100210,cardId = 1101999,lv = 55,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 55},[2] = {id = 2002302,lv = 55},[3] = {id = 2002303,lv = 55},[4] = {id = 2002304,lv = 55},[5] = {id = 2002305,lv = 55},[6] = {id = 2002306,lv = 55},[7] = {id = 2002307,lv = 55},[8] = {id = 2002308,lv = 55}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-10-2-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1100211,cardId = 1102999,lv = 55,bklv = 7,star = 2,ghost = 14,equip = {[1] = {id = 2102301,lv = 55},[2] = {id = 2102302,lv = 55},[3] = {id = 2102303,lv = 55},[4] = {id = 2102304,lv = 55},[5] = {id = 2102305,lv = 55},[6] = {id = 2102306,lv = 55},[7] = {id = 2102307,lv = 55},[8] = {id = 2102308,lv = 55}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1100220,cardId = 1101999,lv = 55,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 55},[2] = {id = 2002302,lv = 55},[3] = {id = 2002303,lv = 55},[4] = {id = 2002304,lv = 55},[5] = {id = 2002305,lv = 55},[6] = {id = 2002306,lv = 55},[7] = {id = 2002307,lv = 55},[8] = {id = 2002308,lv = 55}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-10-2-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1100221,cardId = 1102999,lv = 55,bklv = 7,star = 2,ghost = 14,equip = {[1] = {id = 2102301,lv = 55},[2] = {id = 2102302,lv = 55},[3] = {id = 2102303,lv = 55},[4] = {id = 2102304,lv = 55},[5] = {id = 2102305,lv = 55},[6] = {id = 2102306,lv = 55},[7] = {id = 2102307,lv = 55},[8] = {id = 2102308,lv = 55}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1100230,cardId = 1101999,lv = 55,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 55},[2] = {id = 2002302,lv = 55},[3] = {id = 2002303,lv = 55},[4] = {id = 2002304,lv = 55},[5] = {id = 2002305,lv = 55},[6] = {id = 2002306,lv = 55},[7] = {id = 2002307,lv = 55},[8] = {id = 2002308,lv = 55}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-10-2-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1100231,cardId = 1102999,lv = 55,bklv = 7,star = 2,ghost = 14,equip = {[1] = {id = 2102301,lv = 55},[2] = {id = 2102302,lv = 55},[3] = {id = 2102303,lv = 55},[4] = {id = 2102304,lv = 55},[5] = {id = 2102305,lv = 55},[6] = {id = 2102306,lv = 55},[7] = {id = 2102307,lv = 55},[8] = {id = 2102308,lv = 55}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11003] = {
		[1] = {
			jlr = {id = 1100310,cardId = 1101999,lv = 56,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 56},[2] = {id = 2002302,lv = 56},[3] = {id = 2002303,lv = 56},[4] = {id = 2002304,lv = 56},[5] = {id = 2002305,lv = 56},[6] = {id = 2002306,lv = 56},[7] = {id = 2002307,lv = 56},[8] = {id = 2002308,lv = 56}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-10-3-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1100311,cardId = 1102999,lv = 55,bklv = 7,star = 2,ghost = 14,equip = {[1] = {id = 2102301,lv = 56},[2] = {id = 2102302,lv = 56},[3] = {id = 2102303,lv = 56},[4] = {id = 2102304,lv = 56},[5] = {id = 2102305,lv = 56},[6] = {id = 2102306,lv = 56},[7] = {id = 2102307,lv = 56},[8] = {id = 2102308,lv = 56}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1100320,cardId = 1101998,lv = 56,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 56},[2] = {id = 2002302,lv = 56},[3] = {id = 2002303,lv = 56},[4] = {id = 2002304,lv = 56},[5] = {id = 2002305,lv = 56},[6] = {id = 2002306,lv = 56},[7] = {id = 2002307,lv = 56},[8] = {id = 2002308,lv = 56}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-10-3-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1100321,cardId = 1102998,lv = 60,bklv = 8,star = 2,ghost = 15,equip = {[1] = {id = 2103301,lv = 56},[2] = {id = 2103302,lv = 56},[3] = {id = 2103303,lv = 56},[4] = {id = 2103304,lv = 56},[5] = {id = 2103305,lv = 56},[6] = {id = 2103306,lv = 56},[7] = {id = 2103307,lv = 56},[8] = {id = 2103308,lv = 56}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1100330,cardId = 1101999,lv = 56,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 56},[2] = {id = 2002302,lv = 56},[3] = {id = 2002303,lv = 56},[4] = {id = 2002304,lv = 56},[5] = {id = 2002305,lv = 56},[6] = {id = 2002306,lv = 56},[7] = {id = 2002307,lv = 56},[8] = {id = 2002308,lv = 56}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-10-3-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1100331,cardId = 1102999,lv = 55,bklv = 7,star = 2,ghost = 14,equip = {[1] = {id = 2102301,lv = 56},[2] = {id = 2102302,lv = 56},[3] = {id = 2102303,lv = 56},[4] = {id = 2102304,lv = 56},[5] = {id = 2102305,lv = 56},[6] = {id = 2102306,lv = 56},[7] = {id = 2102307,lv = 56},[8] = {id = 2102308,lv = 56}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11004] = {
		[1] = {
			jlr = {id = 1100410,cardId = 1101999,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 57},[2] = {id = 2002302,lv = 57},[3] = {id = 2002303,lv = 57},[4] = {id = 2002304,lv = 57},[5] = {id = 2002305,lv = 57},[6] = {id = 2002306,lv = 57},[7] = {id = 2002307,lv = 57},[8] = {id = 2002308,lv = 57}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-10-4-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1100411,cardId = 1102999,lv = 55,bklv = 7,star = 2,ghost = 15,equip = {[1] = {id = 2102301,lv = 57},[2] = {id = 2102302,lv = 57},[3] = {id = 2102303,lv = 57},[4] = {id = 2102304,lv = 57},[5] = {id = 2102305,lv = 57},[6] = {id = 2102306,lv = 57},[7] = {id = 2102307,lv = 57},[8] = {id = 2102308,lv = 57}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1100420,cardId = 1101999,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 57},[2] = {id = 2002302,lv = 57},[3] = {id = 2002303,lv = 57},[4] = {id = 2002304,lv = 57},[5] = {id = 2002305,lv = 57},[6] = {id = 2002306,lv = 57},[7] = {id = 2002307,lv = 57},[8] = {id = 2002308,lv = 57}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-10-4-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1100421,cardId = 1102999,lv = 60,bklv = 8,star = 2,ghost = 15,equip = {[1] = {id = 2103301,lv = 57},[2] = {id = 2103302,lv = 57},[3] = {id = 2103303,lv = 57},[4] = {id = 2103304,lv = 57},[5] = {id = 2103305,lv = 57},[6] = {id = 2103306,lv = 57},[7] = {id = 2103307,lv = 57},[8] = {id = 2103308,lv = 57}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1100430,cardId = 1101999,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 57},[2] = {id = 2002302,lv = 57},[3] = {id = 2002303,lv = 57},[4] = {id = 2002304,lv = 57},[5] = {id = 2002305,lv = 57},[6] = {id = 2002306,lv = 57},[7] = {id = 2002307,lv = 57},[8] = {id = 2002308,lv = 57}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-10-4-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1100431,cardId = 1102999,lv = 55,bklv = 7,star = 2,ghost = 14,equip = {[1] = {id = 2102301,lv = 57},[2] = {id = 2102302,lv = 57},[3] = {id = 2102303,lv = 57},[4] = {id = 2102304,lv = 57},[5] = {id = 2102305,lv = 57},[6] = {id = 2102306,lv = 57},[7] = {id = 2102307,lv = 57},[8] = {id = 2102308,lv = 57}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11005] = {
		[1] = {
			jlr = {id = 1100510,cardId = 1101999,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 57},[2] = {id = 2002302,lv = 57},[3] = {id = 2002303,lv = 57},[4] = {id = 2002304,lv = 57},[5] = {id = 2002305,lv = 57},[6] = {id = 2002306,lv = 57},[7] = {id = 2002307,lv = 57},[8] = {id = 2002308,lv = 57}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-10-5-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1100511,cardId = 1102999,lv = 55,bklv = 7,star = 2,ghost = 15,equip = {[1] = {id = 2102301,lv = 57},[2] = {id = 2102302,lv = 57},[3] = {id = 2102303,lv = 57},[4] = {id = 2102304,lv = 57},[5] = {id = 2102305,lv = 57},[6] = {id = 2102306,lv = 57},[7] = {id = 2102307,lv = 57},[8] = {id = 2102308,lv = 57}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1100520,cardId = 1101999,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 57},[2] = {id = 2002302,lv = 57},[3] = {id = 2002303,lv = 57},[4] = {id = 2002304,lv = 57},[5] = {id = 2002305,lv = 57},[6] = {id = 2002306,lv = 57},[7] = {id = 2002307,lv = 57},[8] = {id = 2002308,lv = 57}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-10-5-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1100521,cardId = 1102999,lv = 60,bklv = 8,star = 2,ghost = 15,equip = {[1] = {id = 2103301,lv = 57},[2] = {id = 2103302,lv = 57},[3] = {id = 2103303,lv = 57},[4] = {id = 2103304,lv = 57},[5] = {id = 2103305,lv = 57},[6] = {id = 2103306,lv = 57},[7] = {id = 2103307,lv = 57},[8] = {id = 2103308,lv = 57}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1100530,cardId = 1101999,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 57},[2] = {id = 2002302,lv = 57},[3] = {id = 2002303,lv = 57},[4] = {id = 2002304,lv = 57},[5] = {id = 2002305,lv = 57},[6] = {id = 2002306,lv = 57},[7] = {id = 2002307,lv = 57},[8] = {id = 2002308,lv = 57}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-10-5-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1100531,cardId = 1102999,lv = 55,bklv = 7,star = 2,ghost = 15,equip = {[1] = {id = 2102301,lv = 57},[2] = {id = 2102302,lv = 57},[3] = {id = 2102303,lv = 57},[4] = {id = 2102304,lv = 57},[5] = {id = 2102305,lv = 57},[6] = {id = 2102306,lv = 57},[7] = {id = 2102307,lv = 57},[8] = {id = 2102308,lv = 57}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11006] = {
		[1] = {
			jlr = {id = 1100610,cardId = 1101998,lv = 58,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 58},[2] = {id = 2002302,lv = 58},[3] = {id = 2002303,lv = 58},[4] = {id = 2002304,lv = 58},[5] = {id = 2002305,lv = 58},[6] = {id = 2002306,lv = 58},[7] = {id = 2002307,lv = 58},[8] = {id = 2002308,lv = 58}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-10-6-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1100611,cardId = 1102998,lv = 60,bklv = 8,star = 2,ghost = 15,equip = {[1] = {id = 2102301,lv = 58},[2] = {id = 2102302,lv = 58},[3] = {id = 2102303,lv = 58},[4] = {id = 2102304,lv = 58},[5] = {id = 2102305,lv = 58},[6] = {id = 2102306,lv = 58},[7] = {id = 2102307,lv = 58},[8] = {id = 2102308,lv = 58}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1100620,cardId = 1101998,lv = 58,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 58},[2] = {id = 2002302,lv = 58},[3] = {id = 2002303,lv = 58},[4] = {id = 2002304,lv = 58},[5] = {id = 2002305,lv = 58},[6] = {id = 2002306,lv = 58},[7] = {id = 2002307,lv = 58},[8] = {id = 2002308,lv = 58}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-10-6-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1100621,cardId = 1102998,lv = 60,bklv = 8,star = 2,ghost = 16,equip = {[1] = {id = 2103301,lv = 58},[2] = {id = 2103302,lv = 58},[3] = {id = 2103303,lv = 58},[4] = {id = 2103304,lv = 58},[5] = {id = 2103305,lv = 58},[6] = {id = 2103306,lv = 58},[7] = {id = 2103307,lv = 58},[8] = {id = 2103308,lv = 58}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1100630,cardId = 1101998,lv = 58,bklv = 7,star = 1,equip = {[1] = {id = 2002301,lv = 58},[2] = {id = 2002302,lv = 58},[3] = {id = 2002303,lv = 58},[4] = {id = 2002304,lv = 58},[5] = {id = 2002305,lv = 58},[6] = {id = 2002306,lv = 58},[7] = {id = 2002307,lv = 58},[8] = {id = 2002308,lv = 58}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-10-6-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1100631,cardId = 1102998,lv = 55,bklv = 7,star = 1,ghost = 15,equip = {[1] = {id = 2102301,lv = 58},[2] = {id = 2102302,lv = 58},[3] = {id = 2102303,lv = 58},[4] = {id = 2102304,lv = 58},[5] = {id = 2102305,lv = 58},[6] = {id = 2102306,lv = 58},[7] = {id = 2102307,lv = 58},[8] = {id = 2102308,lv = 58}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11007] = {
		[1] = {
			jlr = {id = 1100710,cardId = 1101999,lv = 59,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 59},[2] = {id = 2002302,lv = 59},[3] = {id = 2002303,lv = 59},[4] = {id = 2002304,lv = 59},[5] = {id = 2002305,lv = 59},[6] = {id = 2002306,lv = 59},[7] = {id = 2002307,lv = 59},[8] = {id = 2002308,lv = 59}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-10-7-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1100711,cardId = 1102999,lv = 60,bklv = 8,star = 2,ghost = 15,equip = {[1] = {id = 2102301,lv = 59},[2] = {id = 2102302,lv = 59},[3] = {id = 2102303,lv = 59},[4] = {id = 2102304,lv = 59},[5] = {id = 2102305,lv = 59},[6] = {id = 2102306,lv = 59},[7] = {id = 2102307,lv = 59},[8] = {id = 2102308,lv = 59}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1100720,cardId = 1101999,lv = 59,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 59},[2] = {id = 2002302,lv = 59},[3] = {id = 2002303,lv = 59},[4] = {id = 2002304,lv = 59},[5] = {id = 2002305,lv = 59},[6] = {id = 2002306,lv = 59},[7] = {id = 2002307,lv = 59},[8] = {id = 2002308,lv = 59}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-10-7-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1100721,cardId = 1102999,lv = 60,bklv = 8,star = 2,ghost = 16,equip = {[1] = {id = 2103301,lv = 59},[2] = {id = 2103302,lv = 59},[3] = {id = 2103303,lv = 59},[4] = {id = 2103304,lv = 59},[5] = {id = 2103305,lv = 59},[6] = {id = 2103306,lv = 59},[7] = {id = 2103307,lv = 59},[8] = {id = 2103308,lv = 59}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1100730,cardId = 1101999,lv = 59,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 59},[2] = {id = 2002302,lv = 59},[3] = {id = 2002303,lv = 59},[4] = {id = 2002304,lv = 59},[5] = {id = 2002305,lv = 59},[6] = {id = 2002306,lv = 59},[7] = {id = 2002307,lv = 59},[8] = {id = 2002308,lv = 59}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-10-7-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1100731,cardId = 1102999,lv = 55,bklv = 7,star = 2,ghost = 15,equip = {[1] = {id = 2102301,lv = 59},[2] = {id = 2102302,lv = 59},[3] = {id = 2102303,lv = 59},[4] = {id = 2102304,lv = 59},[5] = {id = 2102305,lv = 59},[6] = {id = 2102306,lv = 59},[7] = {id = 2102307,lv = 59},[8] = {id = 2102308,lv = 59}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11008] = {
		[1] = {
			jlr = {id = 1100810,cardId = 1101999,lv = 59,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 59},[2] = {id = 2002302,lv = 59},[3] = {id = 2002303,lv = 59},[4] = {id = 2002304,lv = 59},[5] = {id = 2002305,lv = 59},[6] = {id = 2002306,lv = 59},[7] = {id = 2002307,lv = 59},[8] = {id = 2002308,lv = 59}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-10-8-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1100811,cardId = 1102999,lv = 60,bklv = 8,star = 2,ghost = 15,equip = {[1] = {id = 2102301,lv = 59},[2] = {id = 2102302,lv = 59},[3] = {id = 2102303,lv = 59},[4] = {id = 2102304,lv = 59},[5] = {id = 2102305,lv = 59},[6] = {id = 2102306,lv = 59},[7] = {id = 2102307,lv = 59},[8] = {id = 2102308,lv = 59}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1100820,cardId = 1101999,lv = 59,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 59},[2] = {id = 2002302,lv = 59},[3] = {id = 2002303,lv = 59},[4] = {id = 2002304,lv = 59},[5] = {id = 2002305,lv = 59},[6] = {id = 2002306,lv = 59},[7] = {id = 2002307,lv = 59},[8] = {id = 2002308,lv = 59}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-10-8-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1100821,cardId = 1102999,lv = 60,bklv = 8,star = 2,ghost = 16,equip = {[1] = {id = 2103301,lv = 59},[2] = {id = 2103302,lv = 59},[3] = {id = 2103303,lv = 59},[4] = {id = 2103304,lv = 59},[5] = {id = 2103305,lv = 59},[6] = {id = 2103306,lv = 59},[7] = {id = 2103307,lv = 59},[8] = {id = 2103308,lv = 59}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1100830,cardId = 1101999,lv = 59,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 59},[2] = {id = 2002302,lv = 59},[3] = {id = 2002303,lv = 59},[4] = {id = 2002304,lv = 59},[5] = {id = 2002305,lv = 59},[6] = {id = 2002306,lv = 59},[7] = {id = 2002307,lv = 59},[8] = {id = 2002308,lv = 59}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-10-8-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1100831,cardId = 1102999,lv = 55,bklv = 7,star = 2,ghost = 15,equip = {[1] = {id = 2102301,lv = 59},[2] = {id = 2102302,lv = 59},[3] = {id = 2102303,lv = 59},[4] = {id = 2102304,lv = 59},[5] = {id = 2102305,lv = 59},[6] = {id = 2102306,lv = 59},[7] = {id = 2102307,lv = 59},[8] = {id = 2102308,lv = 59}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11009] = {
		[1] = {
			jlr = {id = 1100910,cardId = 1101998,lv = 60,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 60},[2] = {id = 2002302,lv = 60},[3] = {id = 2002303,lv = 60},[4] = {id = 2002304,lv = 60},[5] = {id = 2002305,lv = 60},[6] = {id = 2002306,lv = 60},[7] = {id = 2002307,lv = 60},[8] = {id = 2002308,lv = 60}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-10-9-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1100911,cardId = 1102998,lv = 60,bklv = 8,star = 2,ghost = 16,equip = {[1] = {id = 2102301,lv = 60},[2] = {id = 2102302,lv = 60},[3] = {id = 2102303,lv = 60},[4] = {id = 2102304,lv = 60},[5] = {id = 2102305,lv = 60},[6] = {id = 2102306,lv = 60},[7] = {id = 2102307,lv = 60},[8] = {id = 2102308,lv = 60}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1100920,cardId = 1101997,lv = 60,bklv = 7,star = 1,equip = {[1] = {id = 2002301,lv = 60},[2] = {id = 2002302,lv = 60},[3] = {id = 2002303,lv = 60},[4] = {id = 2002304,lv = 60},[5] = {id = 2002305,lv = 60},[6] = {id = 2002306,lv = 60},[7] = {id = 2002307,lv = 60},[8] = {id = 2002308,lv = 60}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-10-9-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1100921,cardId = 1102997,lv = 60,bklv = 8,star = 1,ghost = 16,equip = {[1] = {id = 2103301,lv = 60},[2] = {id = 2103302,lv = 60},[3] = {id = 2103303,lv = 60},[4] = {id = 2103304,lv = 60},[5] = {id = 2103305,lv = 60},[6] = {id = 2103306,lv = 60},[7] = {id = 2103307,lv = 60},[8] = {id = 2103308,lv = 60}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1100930,cardId = 1101998,lv = 60,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 60},[2] = {id = 2002302,lv = 60},[3] = {id = 2002303,lv = 60},[4] = {id = 2002304,lv = 60},[5] = {id = 2002305,lv = 60},[6] = {id = 2002306,lv = 60},[7] = {id = 2002307,lv = 60},[8] = {id = 2002308,lv = 60}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-10-9-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1100931,cardId = 1102998,lv = 60,bklv = 8,star = 2,ghost = 16,equip = {[1] = {id = 2102301,lv = 60},[2] = {id = 2102302,lv = 60},[3] = {id = 2102303,lv = 60},[4] = {id = 2102304,lv = 60},[5] = {id = 2102305,lv = 60},[6] = {id = 2102306,lv = 60},[7] = {id = 2102307,lv = 60},[8] = {id = 2102308,lv = 60}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11010] = {
		[1] = {
			jlr = {id = 1101010,cardId = 1101997,lv = 60,bklv = 7,star = 1,equip = {[1] = {id = 2002301,lv = 60},[2] = {id = 2002302,lv = 60},[3] = {id = 2002303,lv = 60},[4] = {id = 2002304,lv = 60},[5] = {id = 2002305,lv = 60},[6] = {id = 2002306,lv = 60},[7] = {id = 2002307,lv = 60},[8] = {id = 2002308,lv = 60}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-10-10-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1101011,cardId = 1102997,lv = 60,bklv = 8,star = 1,ghost = 16,equip = {[1] = {id = 2102301,lv = 60},[2] = {id = 2102302,lv = 60},[3] = {id = 2102303,lv = 60},[4] = {id = 2102304,lv = 60},[5] = {id = 2102305,lv = 60},[6] = {id = 2102306,lv = 60},[7] = {id = 2102307,lv = 60},[8] = {id = 2102308,lv = 60}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1101020,cardId = 1101997,lv = 60,bklv = 7,star = 1,equip = {[1] = {id = 2002301,lv = 60},[2] = {id = 2002302,lv = 60},[3] = {id = 2002303,lv = 60},[4] = {id = 2002304,lv = 60},[5] = {id = 2002305,lv = 60},[6] = {id = 2002306,lv = 60},[7] = {id = 2002307,lv = 60},[8] = {id = 2002308,lv = 60}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-10-10-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1101021,cardId = 1102997,lv = 60,bklv = 8,star = 1,ghost = 16,equip = {[1] = {id = 2103301,lv = 60},[2] = {id = 2103302,lv = 60},[3] = {id = 2103303,lv = 60},[4] = {id = 2103304,lv = 60},[5] = {id = 2103305,lv = 60},[6] = {id = 2103306,lv = 60},[7] = {id = 2103307,lv = 60},[8] = {id = 2103308,lv = 60}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1101030,cardId = 1101997,lv = 60,bklv = 7,star = 1,equip = {[1] = {id = 2002301,lv = 60},[2] = {id = 2002302,lv = 60},[3] = {id = 2002303,lv = 60},[4] = {id = 2002304,lv = 60},[5] = {id = 2002305,lv = 60},[6] = {id = 2002306,lv = 60},[7] = {id = 2002307,lv = 60},[8] = {id = 2002308,lv = 60}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-10-10-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1101031,cardId = 1102997,lv = 60,bklv = 8,star = 1,ghost = 16,equip = {[1] = {id = 2102301,lv = 60},[2] = {id = 2102302,lv = 60},[3] = {id = 2102303,lv = 60},[4] = {id = 2102304,lv = 60},[5] = {id = 2102305,lv = 60},[6] = {id = 2102306,lv = 60},[7] = {id = 2102307,lv = 60},[8] = {id = 2102308,lv = 60}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11101] = {
		[1] = {
			jlr = {id = 1110110,cardId = 1101999,lv = 60,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 60},[2] = {id = 2002302,lv = 60},[3] = {id = 2002303,lv = 60},[4] = {id = 2002304,lv = 60},[5] = {id = 2002305,lv = 60},[6] = {id = 2002306,lv = 60},[7] = {id = 2002307,lv = 60},[8] = {id = 2002308,lv = 60}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-11-1-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1110111,cardId = 1102999,lv = 60,bklv = 8,star = 2,ghost = 16,equip = {[1] = {id = 2102301,lv = 60},[2] = {id = 2102302,lv = 60},[3] = {id = 2102303,lv = 60},[4] = {id = 2102304,lv = 60},[5] = {id = 2102305,lv = 60},[6] = {id = 2102306,lv = 60},[7] = {id = 2102307,lv = 60},[8] = {id = 2102308,lv = 60}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1110120,cardId = 1101999,lv = 60,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 60},[2] = {id = 2002302,lv = 60},[3] = {id = 2002303,lv = 60},[4] = {id = 2002304,lv = 60},[5] = {id = 2002305,lv = 60},[6] = {id = 2002306,lv = 60},[7] = {id = 2002307,lv = 60},[8] = {id = 2002308,lv = 60}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-11-1-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1110121,cardId = 1102999,lv = 60,bklv = 8,star = 2,ghost = 16,equip = {[1] = {id = 2103301,lv = 60},[2] = {id = 2103302,lv = 60},[3] = {id = 2103303,lv = 60},[4] = {id = 2103304,lv = 60},[5] = {id = 2103305,lv = 60},[6] = {id = 2103306,lv = 60},[7] = {id = 2103307,lv = 60},[8] = {id = 2103308,lv = 60}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1110130,cardId = 1101999,lv = 60,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 60},[2] = {id = 2002302,lv = 60},[3] = {id = 2002303,lv = 60},[4] = {id = 2002304,lv = 60},[5] = {id = 2002305,lv = 60},[6] = {id = 2002306,lv = 60},[7] = {id = 2002307,lv = 60},[8] = {id = 2002308,lv = 60}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-11-1-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1110131,cardId = 1102999,lv = 60,bklv = 8,star = 2,ghost = 16,equip = {[1] = {id = 2102301,lv = 60},[2] = {id = 2102302,lv = 60},[3] = {id = 2102303,lv = 60},[4] = {id = 2102304,lv = 60},[5] = {id = 2102305,lv = 60},[6] = {id = 2102306,lv = 60},[7] = {id = 2102307,lv = 60},[8] = {id = 2102308,lv = 60}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11102] = {
		[1] = {
			jlr = {id = 1110210,cardId = 1101999,lv = 60,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 60},[2] = {id = 2002302,lv = 60},[3] = {id = 2002303,lv = 60},[4] = {id = 2002304,lv = 60},[5] = {id = 2002305,lv = 60},[6] = {id = 2002306,lv = 60},[7] = {id = 2002307,lv = 60},[8] = {id = 2002308,lv = 60}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-11-2-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1110211,cardId = 1102999,lv = 60,bklv = 8,star = 2,ghost = 16,equip = {[1] = {id = 2102301,lv = 60},[2] = {id = 2102302,lv = 60},[3] = {id = 2102303,lv = 60},[4] = {id = 2102304,lv = 60},[5] = {id = 2102305,lv = 60},[6] = {id = 2102306,lv = 60},[7] = {id = 2102307,lv = 60},[8] = {id = 2102308,lv = 60}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1110220,cardId = 1101999,lv = 60,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 60},[2] = {id = 2002302,lv = 60},[3] = {id = 2002303,lv = 60},[4] = {id = 2002304,lv = 60},[5] = {id = 2002305,lv = 60},[6] = {id = 2002306,lv = 60},[7] = {id = 2002307,lv = 60},[8] = {id = 2002308,lv = 60}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-11-2-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1110221,cardId = 1102999,lv = 60,bklv = 8,star = 2,ghost = 16,equip = {[1] = {id = 2103301,lv = 60},[2] = {id = 2103302,lv = 60},[3] = {id = 2103303,lv = 60},[4] = {id = 2103304,lv = 60},[5] = {id = 2103305,lv = 60},[6] = {id = 2103306,lv = 60},[7] = {id = 2103307,lv = 60},[8] = {id = 2103308,lv = 60}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1110230,cardId = 1101999,lv = 60,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 60},[2] = {id = 2002302,lv = 60},[3] = {id = 2002303,lv = 60},[4] = {id = 2002304,lv = 60},[5] = {id = 2002305,lv = 60},[6] = {id = 2002306,lv = 60},[7] = {id = 2002307,lv = 60},[8] = {id = 2002308,lv = 60}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-11-2-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1110231,cardId = 1102999,lv = 60,bklv = 8,star = 2,ghost = 16,equip = {[1] = {id = 2102301,lv = 60},[2] = {id = 2102302,lv = 60},[3] = {id = 2102303,lv = 60},[4] = {id = 2102304,lv = 60},[5] = {id = 2102305,lv = 60},[6] = {id = 2102306,lv = 60},[7] = {id = 2102307,lv = 60},[8] = {id = 2102308,lv = 60}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11103] = {
		[1] = {
			jlr = {id = 1110310,cardId = 1101999,lv = 61,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 61},[2] = {id = 2002302,lv = 61},[3] = {id = 2002303,lv = 61},[4] = {id = 2002304,lv = 61},[5] = {id = 2002305,lv = 61},[6] = {id = 2002306,lv = 61},[7] = {id = 2002307,lv = 61},[8] = {id = 2002308,lv = 61}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-11-3-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1110311,cardId = 1102999,lv = 60,bklv = 8,star = 2,ghost = 16,equip = {[1] = {id = 2103301,lv = 61},[2] = {id = 2103302,lv = 61},[3] = {id = 2103303,lv = 61},[4] = {id = 2103304,lv = 61},[5] = {id = 2103305,lv = 61},[6] = {id = 2103306,lv = 61},[7] = {id = 2103307,lv = 61},[8] = {id = 2103308,lv = 61}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1110320,cardId = 1101998,lv = 61,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 61},[2] = {id = 2002302,lv = 61},[3] = {id = 2002303,lv = 61},[4] = {id = 2002304,lv = 61},[5] = {id = 2002305,lv = 61},[6] = {id = 2002306,lv = 61},[7] = {id = 2002307,lv = 61},[8] = {id = 2002308,lv = 61}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-11-3-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1110321,cardId = 1102998,lv = 65,bklv = 9,star = 2,ghost = 17,equip = {[1] = {id = 2103301,lv = 61},[2] = {id = 2103302,lv = 61},[3] = {id = 2103303,lv = 61},[4] = {id = 2103304,lv = 61},[5] = {id = 2103305,lv = 61},[6] = {id = 2103306,lv = 61},[7] = {id = 2103307,lv = 61},[8] = {id = 2103308,lv = 61}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1110330,cardId = 1101999,lv = 61,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 61},[2] = {id = 2002302,lv = 61},[3] = {id = 2002303,lv = 61},[4] = {id = 2002304,lv = 61},[5] = {id = 2002305,lv = 61},[6] = {id = 2002306,lv = 61},[7] = {id = 2002307,lv = 61},[8] = {id = 2002308,lv = 61}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-11-3-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1110331,cardId = 1102999,lv = 60,bklv = 8,star = 2,ghost = 16,equip = {[1] = {id = 2103301,lv = 61},[2] = {id = 2103302,lv = 61},[3] = {id = 2103303,lv = 61},[4] = {id = 2103304,lv = 61},[5] = {id = 2103305,lv = 61},[6] = {id = 2103306,lv = 61},[7] = {id = 2103307,lv = 61},[8] = {id = 2103308,lv = 61}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11104] = {
		[1] = {
			jlr = {id = 1110410,cardId = 1101999,lv = 62,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 62},[2] = {id = 2002302,lv = 62},[3] = {id = 2002303,lv = 62},[4] = {id = 2002304,lv = 62},[5] = {id = 2002305,lv = 62},[6] = {id = 2002306,lv = 62},[7] = {id = 2002307,lv = 62},[8] = {id = 2002308,lv = 62}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-11-4-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1110411,cardId = 1102999,lv = 60,bklv = 8,star = 2,ghost = 17,equip = {[1] = {id = 2103301,lv = 62},[2] = {id = 2103302,lv = 62},[3] = {id = 2103303,lv = 62},[4] = {id = 2103304,lv = 62},[5] = {id = 2103305,lv = 62},[6] = {id = 2103306,lv = 62},[7] = {id = 2103307,lv = 62},[8] = {id = 2103308,lv = 62}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1110420,cardId = 1101999,lv = 62,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 62},[2] = {id = 2002302,lv = 62},[3] = {id = 2002303,lv = 62},[4] = {id = 2002304,lv = 62},[5] = {id = 2002305,lv = 62},[6] = {id = 2002306,lv = 62},[7] = {id = 2002307,lv = 62},[8] = {id = 2002308,lv = 62}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-11-4-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1110421,cardId = 1102999,lv = 65,bklv = 9,star = 2,ghost = 17,equip = {[1] = {id = 2103301,lv = 62},[2] = {id = 2103302,lv = 62},[3] = {id = 2103303,lv = 62},[4] = {id = 2103304,lv = 62},[5] = {id = 2103305,lv = 62},[6] = {id = 2103306,lv = 62},[7] = {id = 2103307,lv = 62},[8] = {id = 2103308,lv = 62}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1110430,cardId = 1101999,lv = 62,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 62},[2] = {id = 2002302,lv = 62},[3] = {id = 2002303,lv = 62},[4] = {id = 2002304,lv = 62},[5] = {id = 2002305,lv = 62},[6] = {id = 2002306,lv = 62},[7] = {id = 2002307,lv = 62},[8] = {id = 2002308,lv = 62}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-11-4-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1110431,cardId = 1102999,lv = 60,bklv = 8,star = 2,ghost = 16,equip = {[1] = {id = 2103301,lv = 62},[2] = {id = 2103302,lv = 62},[3] = {id = 2103303,lv = 62},[4] = {id = 2103304,lv = 62},[5] = {id = 2103305,lv = 62},[6] = {id = 2103306,lv = 62},[7] = {id = 2103307,lv = 62},[8] = {id = 2103308,lv = 62}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11105] = {
		[1] = {
			jlr = {id = 1110510,cardId = 1101999,lv = 62,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 62},[2] = {id = 2002302,lv = 62},[3] = {id = 2002303,lv = 62},[4] = {id = 2002304,lv = 62},[5] = {id = 2002305,lv = 62},[6] = {id = 2002306,lv = 62},[7] = {id = 2002307,lv = 62},[8] = {id = 2002308,lv = 62}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-11-5-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1110511,cardId = 1102999,lv = 60,bklv = 8,star = 2,ghost = 17,equip = {[1] = {id = 2103301,lv = 62},[2] = {id = 2103302,lv = 62},[3] = {id = 2103303,lv = 62},[4] = {id = 2103304,lv = 62},[5] = {id = 2103305,lv = 62},[6] = {id = 2103306,lv = 62},[7] = {id = 2103307,lv = 62},[8] = {id = 2103308,lv = 62}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1110520,cardId = 1101999,lv = 62,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 62},[2] = {id = 2002302,lv = 62},[3] = {id = 2002303,lv = 62},[4] = {id = 2002304,lv = 62},[5] = {id = 2002305,lv = 62},[6] = {id = 2002306,lv = 62},[7] = {id = 2002307,lv = 62},[8] = {id = 2002308,lv = 62}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-11-5-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1110521,cardId = 1102999,lv = 65,bklv = 9,star = 2,ghost = 17,equip = {[1] = {id = 2103301,lv = 62},[2] = {id = 2103302,lv = 62},[3] = {id = 2103303,lv = 62},[4] = {id = 2103304,lv = 62},[5] = {id = 2103305,lv = 62},[6] = {id = 2103306,lv = 62},[7] = {id = 2103307,lv = 62},[8] = {id = 2103308,lv = 62}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1110530,cardId = 1101999,lv = 62,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 62},[2] = {id = 2002302,lv = 62},[3] = {id = 2002303,lv = 62},[4] = {id = 2002304,lv = 62},[5] = {id = 2002305,lv = 62},[6] = {id = 2002306,lv = 62},[7] = {id = 2002307,lv = 62},[8] = {id = 2002308,lv = 62}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-11-5-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1110531,cardId = 1102999,lv = 60,bklv = 8,star = 2,ghost = 17,equip = {[1] = {id = 2103301,lv = 62},[2] = {id = 2103302,lv = 62},[3] = {id = 2103303,lv = 62},[4] = {id = 2103304,lv = 62},[5] = {id = 2103305,lv = 62},[6] = {id = 2103306,lv = 62},[7] = {id = 2103307,lv = 62},[8] = {id = 2103308,lv = 62}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11106] = {
		[1] = {
			jlr = {id = 1110610,cardId = 1101998,lv = 63,bklv = 8,star = 2,equip = {[1] = {id = 2002301,lv = 63},[2] = {id = 2002302,lv = 63},[3] = {id = 2002303,lv = 63},[4] = {id = 2002304,lv = 63},[5] = {id = 2002305,lv = 63},[6] = {id = 2002306,lv = 63},[7] = {id = 2002307,lv = 63},[8] = {id = 2002308,lv = 63}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-11-6-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1110611,cardId = 1102998,lv = 65,bklv = 9,star = 2,ghost = 17,equip = {[1] = {id = 2103301,lv = 63},[2] = {id = 2103302,lv = 63},[3] = {id = 2103303,lv = 63},[4] = {id = 2103304,lv = 63},[5] = {id = 2103305,lv = 63},[6] = {id = 2103306,lv = 63},[7] = {id = 2103307,lv = 63},[8] = {id = 2103308,lv = 63}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1110620,cardId = 1101998,lv = 63,bklv = 8,star = 2,equip = {[1] = {id = 2002301,lv = 63},[2] = {id = 2002302,lv = 63},[3] = {id = 2002303,lv = 63},[4] = {id = 2002304,lv = 63},[5] = {id = 2002305,lv = 63},[6] = {id = 2002306,lv = 63},[7] = {id = 2002307,lv = 63},[8] = {id = 2002308,lv = 63}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-11-6-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1110621,cardId = 1102998,lv = 65,bklv = 9,star = 2,ghost = 18,equip = {[1] = {id = 2103301,lv = 63},[2] = {id = 2103302,lv = 63},[3] = {id = 2103303,lv = 63},[4] = {id = 2103304,lv = 63},[5] = {id = 2103305,lv = 63},[6] = {id = 2103306,lv = 63},[7] = {id = 2103307,lv = 63},[8] = {id = 2103308,lv = 63}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1110630,cardId = 1101998,lv = 63,bklv = 8,star = 2,equip = {[1] = {id = 2002301,lv = 63},[2] = {id = 2002302,lv = 63},[3] = {id = 2002303,lv = 63},[4] = {id = 2002304,lv = 63},[5] = {id = 2002305,lv = 63},[6] = {id = 2002306,lv = 63},[7] = {id = 2002307,lv = 63},[8] = {id = 2002308,lv = 63}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-11-6-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1110631,cardId = 1102998,lv = 60,bklv = 8,star = 2,ghost = 17,equip = {[1] = {id = 2103301,lv = 63},[2] = {id = 2103302,lv = 63},[3] = {id = 2103303,lv = 63},[4] = {id = 2103304,lv = 63},[5] = {id = 2103305,lv = 63},[6] = {id = 2103306,lv = 63},[7] = {id = 2103307,lv = 63},[8] = {id = 2103308,lv = 63}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11107] = {
		[1] = {
			jlr = {id = 1110710,cardId = 1101999,lv = 64,bklv = 8,star = 2,equip = {[1] = {id = 2002301,lv = 64},[2] = {id = 2002302,lv = 64},[3] = {id = 2002303,lv = 64},[4] = {id = 2002304,lv = 64},[5] = {id = 2002305,lv = 64},[6] = {id = 2002306,lv = 64},[7] = {id = 2002307,lv = 64},[8] = {id = 2002308,lv = 64}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-11-7-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1110711,cardId = 1102999,lv = 65,bklv = 9,star = 2,ghost = 17,equip = {[1] = {id = 2103301,lv = 64},[2] = {id = 2103302,lv = 64},[3] = {id = 2103303,lv = 64},[4] = {id = 2103304,lv = 64},[5] = {id = 2103305,lv = 64},[6] = {id = 2103306,lv = 64},[7] = {id = 2103307,lv = 64},[8] = {id = 2103308,lv = 64}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1110720,cardId = 1101999,lv = 64,bklv = 8,star = 2,equip = {[1] = {id = 2002301,lv = 64},[2] = {id = 2002302,lv = 64},[3] = {id = 2002303,lv = 64},[4] = {id = 2002304,lv = 64},[5] = {id = 2002305,lv = 64},[6] = {id = 2002306,lv = 64},[7] = {id = 2002307,lv = 64},[8] = {id = 2002308,lv = 64}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-11-7-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1110721,cardId = 1102999,lv = 65,bklv = 9,star = 2,ghost = 18,equip = {[1] = {id = 2103301,lv = 64},[2] = {id = 2103302,lv = 64},[3] = {id = 2103303,lv = 64},[4] = {id = 2103304,lv = 64},[5] = {id = 2103305,lv = 64},[6] = {id = 2103306,lv = 64},[7] = {id = 2103307,lv = 64},[8] = {id = 2103308,lv = 64}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1110730,cardId = 1101999,lv = 64,bklv = 8,star = 2,equip = {[1] = {id = 2002301,lv = 64},[2] = {id = 2002302,lv = 64},[3] = {id = 2002303,lv = 64},[4] = {id = 2002304,lv = 64},[5] = {id = 2002305,lv = 64},[6] = {id = 2002306,lv = 64},[7] = {id = 2002307,lv = 64},[8] = {id = 2002308,lv = 64}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-11-7-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1110731,cardId = 1102999,lv = 60,bklv = 8,star = 2,ghost = 17,equip = {[1] = {id = 2103301,lv = 64},[2] = {id = 2103302,lv = 64},[3] = {id = 2103303,lv = 64},[4] = {id = 2103304,lv = 64},[5] = {id = 2103305,lv = 64},[6] = {id = 2103306,lv = 64},[7] = {id = 2103307,lv = 64},[8] = {id = 2103308,lv = 64}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11108] = {
		[1] = {
			jlr = {id = 1110810,cardId = 1101999,lv = 64,bklv = 8,star = 2,equip = {[1] = {id = 2002301,lv = 64},[2] = {id = 2002302,lv = 64},[3] = {id = 2002303,lv = 64},[4] = {id = 2002304,lv = 64},[5] = {id = 2002305,lv = 64},[6] = {id = 2002306,lv = 64},[7] = {id = 2002307,lv = 64},[8] = {id = 2002308,lv = 64}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-11-8-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1110811,cardId = 1102999,lv = 65,bklv = 9,star = 2,ghost = 17,equip = {[1] = {id = 2103301,lv = 64},[2] = {id = 2103302,lv = 64},[3] = {id = 2103303,lv = 64},[4] = {id = 2103304,lv = 64},[5] = {id = 2103305,lv = 64},[6] = {id = 2103306,lv = 64},[7] = {id = 2103307,lv = 64},[8] = {id = 2103308,lv = 64}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1110820,cardId = 1101999,lv = 64,bklv = 8,star = 2,equip = {[1] = {id = 2002301,lv = 64},[2] = {id = 2002302,lv = 64},[3] = {id = 2002303,lv = 64},[4] = {id = 2002304,lv = 64},[5] = {id = 2002305,lv = 64},[6] = {id = 2002306,lv = 64},[7] = {id = 2002307,lv = 64},[8] = {id = 2002308,lv = 64}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-11-8-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1110821,cardId = 1102999,lv = 65,bklv = 9,star = 2,ghost = 18,equip = {[1] = {id = 2103301,lv = 64},[2] = {id = 2103302,lv = 64},[3] = {id = 2103303,lv = 64},[4] = {id = 2103304,lv = 64},[5] = {id = 2103305,lv = 64},[6] = {id = 2103306,lv = 64},[7] = {id = 2103307,lv = 64},[8] = {id = 2103308,lv = 64}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1110830,cardId = 1101999,lv = 64,bklv = 8,star = 2,equip = {[1] = {id = 2002301,lv = 64},[2] = {id = 2002302,lv = 64},[3] = {id = 2002303,lv = 64},[4] = {id = 2002304,lv = 64},[5] = {id = 2002305,lv = 64},[6] = {id = 2002306,lv = 64},[7] = {id = 2002307,lv = 64},[8] = {id = 2002308,lv = 64}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-11-8-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1110831,cardId = 1102999,lv = 60,bklv = 8,star = 2,ghost = 17,equip = {[1] = {id = 2103301,lv = 64},[2] = {id = 2103302,lv = 64},[3] = {id = 2103303,lv = 64},[4] = {id = 2103304,lv = 64},[5] = {id = 2103305,lv = 64},[6] = {id = 2103306,lv = 64},[7] = {id = 2103307,lv = 64},[8] = {id = 2103308,lv = 64}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11109] = {
		[1] = {
			jlr = {id = 1110910,cardId = 1101998,lv = 65,bklv = 8,star = 2,equip = {[1] = {id = 2002301,lv = 65},[2] = {id = 2002302,lv = 65},[3] = {id = 2002303,lv = 65},[4] = {id = 2002304,lv = 65},[5] = {id = 2002305,lv = 65},[6] = {id = 2002306,lv = 65},[7] = {id = 2002307,lv = 65},[8] = {id = 2002308,lv = 65}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-11-9-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1110911,cardId = 1102998,lv = 65,bklv = 9,star = 2,ghost = 18,equip = {[1] = {id = 2103301,lv = 65},[2] = {id = 2103302,lv = 65},[3] = {id = 2103303,lv = 65},[4] = {id = 2103304,lv = 65},[5] = {id = 2103305,lv = 65},[6] = {id = 2103306,lv = 65},[7] = {id = 2103307,lv = 65},[8] = {id = 2103308,lv = 65}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1110920,cardId = 1101997,lv = 65,bklv = 8,star = 1,equip = {[1] = {id = 2002301,lv = 65},[2] = {id = 2002302,lv = 65},[3] = {id = 2002303,lv = 65},[4] = {id = 2002304,lv = 65},[5] = {id = 2002305,lv = 65},[6] = {id = 2002306,lv = 65},[7] = {id = 2002307,lv = 65},[8] = {id = 2002308,lv = 65}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-11-9-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1110921,cardId = 1102997,lv = 65,bklv = 9,star = 1,ghost = 18,equip = {[1] = {id = 2103301,lv = 65},[2] = {id = 2103302,lv = 65},[3] = {id = 2103303,lv = 65},[4] = {id = 2103304,lv = 65},[5] = {id = 2103305,lv = 65},[6] = {id = 2103306,lv = 65},[7] = {id = 2103307,lv = 65},[8] = {id = 2103308,lv = 65}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1110930,cardId = 1101998,lv = 65,bklv = 8,star = 2,equip = {[1] = {id = 2002301,lv = 65},[2] = {id = 2002302,lv = 65},[3] = {id = 2002303,lv = 65},[4] = {id = 2002304,lv = 65},[5] = {id = 2002305,lv = 65},[6] = {id = 2002306,lv = 65},[7] = {id = 2002307,lv = 65},[8] = {id = 2002308,lv = 65}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-11-9-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1110931,cardId = 1102998,lv = 65,bklv = 9,star = 2,ghost = 18,equip = {[1] = {id = 2103301,lv = 65},[2] = {id = 2103302,lv = 65},[3] = {id = 2103303,lv = 65},[4] = {id = 2103304,lv = 65},[5] = {id = 2103305,lv = 65},[6] = {id = 2103306,lv = 65},[7] = {id = 2103307,lv = 65},[8] = {id = 2103308,lv = 65}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11110] = {
		[1] = {
			jlr = {id = 1111010,cardId = 1101997,lv = 65,bklv = 8,star = 1,equip = {[1] = {id = 2002301,lv = 65},[2] = {id = 2002302,lv = 65},[3] = {id = 2002303,lv = 65},[4] = {id = 2002304,lv = 65},[5] = {id = 2002305,lv = 65},[6] = {id = 2002306,lv = 65},[7] = {id = 2002307,lv = 65},[8] = {id = 2002308,lv = 65}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-11-10-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1111011,cardId = 1102997,lv = 65,bklv = 9,star = 1,ghost = 18,equip = {[1] = {id = 2103301,lv = 65},[2] = {id = 2103302,lv = 65},[3] = {id = 2103303,lv = 65},[4] = {id = 2103304,lv = 65},[5] = {id = 2103305,lv = 65},[6] = {id = 2103306,lv = 65},[7] = {id = 2103307,lv = 65},[8] = {id = 2103308,lv = 65}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1111020,cardId = 1101997,lv = 65,bklv = 8,star = 1,equip = {[1] = {id = 2002301,lv = 65},[2] = {id = 2002302,lv = 65},[3] = {id = 2002303,lv = 65},[4] = {id = 2002304,lv = 65},[5] = {id = 2002305,lv = 65},[6] = {id = 2002306,lv = 65},[7] = {id = 2002307,lv = 65},[8] = {id = 2002308,lv = 65}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-11-10-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1111021,cardId = 1102997,lv = 65,bklv = 9,star = 1,ghost = 18,equip = {[1] = {id = 2103301,lv = 65},[2] = {id = 2103302,lv = 65},[3] = {id = 2103303,lv = 65},[4] = {id = 2103304,lv = 65},[5] = {id = 2103305,lv = 65},[6] = {id = 2103306,lv = 65},[7] = {id = 2103307,lv = 65},[8] = {id = 2103308,lv = 65}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1111030,cardId = 1101997,lv = 65,bklv = 8,star = 1,equip = {[1] = {id = 2002301,lv = 65},[2] = {id = 2002302,lv = 65},[3] = {id = 2002303,lv = 65},[4] = {id = 2002304,lv = 65},[5] = {id = 2002305,lv = 65},[6] = {id = 2002306,lv = 65},[7] = {id = 2002307,lv = 65},[8] = {id = 2002308,lv = 65}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-11-10-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1111031,cardId = 1102997,lv = 65,bklv = 9,star = 1,ghost = 18,equip = {[1] = {id = 2103301,lv = 65},[2] = {id = 2103302,lv = 65},[3] = {id = 2103303,lv = 65},[4] = {id = 2103304,lv = 65},[5] = {id = 2103305,lv = 65},[6] = {id = 2103306,lv = 65},[7] = {id = 2103307,lv = 65},[8] = {id = 2103308,lv = 65}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11201] = {
		[1] = {
			jlr = {id = 1120110,cardId = 1101999,lv = 65,bklv = 8,star = 2,equip = {[1] = {id = 2002301,lv = 65},[2] = {id = 2002302,lv = 65},[3] = {id = 2002303,lv = 65},[4] = {id = 2002304,lv = 65},[5] = {id = 2002305,lv = 65},[6] = {id = 2002306,lv = 65},[7] = {id = 2002307,lv = 65},[8] = {id = 2002308,lv = 65}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-12-1-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1120111,cardId = 1102999,lv = 65,bklv = 9,star = 2,ghost = 18,equip = {[1] = {id = 2103301,lv = 65},[2] = {id = 2103302,lv = 65},[3] = {id = 2103303,lv = 65},[4] = {id = 2103304,lv = 65},[5] = {id = 2103305,lv = 65},[6] = {id = 2103306,lv = 65},[7] = {id = 2103307,lv = 65},[8] = {id = 2103308,lv = 65}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1120120,cardId = 1101999,lv = 65,bklv = 8,star = 2,equip = {[1] = {id = 2002301,lv = 65},[2] = {id = 2002302,lv = 65},[3] = {id = 2002303,lv = 65},[4] = {id = 2002304,lv = 65},[5] = {id = 2002305,lv = 65},[6] = {id = 2002306,lv = 65},[7] = {id = 2002307,lv = 65},[8] = {id = 2002308,lv = 65}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-12-1-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1120121,cardId = 1102999,lv = 65,bklv = 9,star = 2,ghost = 18,equip = {[1] = {id = 2103301,lv = 65},[2] = {id = 2103302,lv = 65},[3] = {id = 2103303,lv = 65},[4] = {id = 2103304,lv = 65},[5] = {id = 2103305,lv = 65},[6] = {id = 2103306,lv = 65},[7] = {id = 2103307,lv = 65},[8] = {id = 2103308,lv = 65}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1120130,cardId = 1101999,lv = 65,bklv = 8,star = 2,equip = {[1] = {id = 2002301,lv = 65},[2] = {id = 2002302,lv = 65},[3] = {id = 2002303,lv = 65},[4] = {id = 2002304,lv = 65},[5] = {id = 2002305,lv = 65},[6] = {id = 2002306,lv = 65},[7] = {id = 2002307,lv = 65},[8] = {id = 2002308,lv = 65}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-12-1-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1120131,cardId = 1102999,lv = 65,bklv = 9,star = 2,ghost = 18,equip = {[1] = {id = 2103301,lv = 65},[2] = {id = 2103302,lv = 65},[3] = {id = 2103303,lv = 65},[4] = {id = 2103304,lv = 65},[5] = {id = 2103305,lv = 65},[6] = {id = 2103306,lv = 65},[7] = {id = 2103307,lv = 65},[8] = {id = 2103308,lv = 65}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11202] = {
		[1] = {
			jlr = {id = 1120210,cardId = 1101999,lv = 65,bklv = 8,star = 2,equip = {[1] = {id = 2002301,lv = 65},[2] = {id = 2002302,lv = 65},[3] = {id = 2002303,lv = 65},[4] = {id = 2002304,lv = 65},[5] = {id = 2002305,lv = 65},[6] = {id = 2002306,lv = 65},[7] = {id = 2002307,lv = 65},[8] = {id = 2002308,lv = 65}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-12-2-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1120211,cardId = 1102999,lv = 65,bklv = 9,star = 2,ghost = 18,equip = {[1] = {id = 2103301,lv = 65},[2] = {id = 2103302,lv = 65},[3] = {id = 2103303,lv = 65},[4] = {id = 2103304,lv = 65},[5] = {id = 2103305,lv = 65},[6] = {id = 2103306,lv = 65},[7] = {id = 2103307,lv = 65},[8] = {id = 2103308,lv = 65}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1120220,cardId = 1101999,lv = 65,bklv = 8,star = 2,equip = {[1] = {id = 2002301,lv = 65},[2] = {id = 2002302,lv = 65},[3] = {id = 2002303,lv = 65},[4] = {id = 2002304,lv = 65},[5] = {id = 2002305,lv = 65},[6] = {id = 2002306,lv = 65},[7] = {id = 2002307,lv = 65},[8] = {id = 2002308,lv = 65}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-12-2-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1120221,cardId = 1102999,lv = 65,bklv = 9,star = 2,ghost = 18,equip = {[1] = {id = 2103301,lv = 65},[2] = {id = 2103302,lv = 65},[3] = {id = 2103303,lv = 65},[4] = {id = 2103304,lv = 65},[5] = {id = 2103305,lv = 65},[6] = {id = 2103306,lv = 65},[7] = {id = 2103307,lv = 65},[8] = {id = 2103308,lv = 65}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1120230,cardId = 1101999,lv = 65,bklv = 8,star = 2,equip = {[1] = {id = 2002301,lv = 65},[2] = {id = 2002302,lv = 65},[3] = {id = 2002303,lv = 65},[4] = {id = 2002304,lv = 65},[5] = {id = 2002305,lv = 65},[6] = {id = 2002306,lv = 65},[7] = {id = 2002307,lv = 65},[8] = {id = 2002308,lv = 65}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-12-2-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1120231,cardId = 1102999,lv = 65,bklv = 9,star = 2,ghost = 18,equip = {[1] = {id = 2103301,lv = 65},[2] = {id = 2103302,lv = 65},[3] = {id = 2103303,lv = 65},[4] = {id = 2103304,lv = 65},[5] = {id = 2103305,lv = 65},[6] = {id = 2103306,lv = 65},[7] = {id = 2103307,lv = 65},[8] = {id = 2103308,lv = 65}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11203] = {
		[1] = {
			jlr = {id = 1120310,cardId = 1101999,lv = 66,bklv = 8,star = 2,equip = {[1] = {id = 2002301,lv = 66},[2] = {id = 2002302,lv = 66},[3] = {id = 2002303,lv = 66},[4] = {id = 2002304,lv = 66},[5] = {id = 2002305,lv = 66},[6] = {id = 2002306,lv = 66},[7] = {id = 2002307,lv = 66},[8] = {id = 2002308,lv = 66}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-12-3-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1120311,cardId = 1102999,lv = 65,bklv = 9,star = 2,ghost = 18,equip = {[1] = {id = 2103301,lv = 66},[2] = {id = 2103302,lv = 66},[3] = {id = 2103303,lv = 66},[4] = {id = 2103304,lv = 66},[5] = {id = 2103305,lv = 66},[6] = {id = 2103306,lv = 66},[7] = {id = 2103307,lv = 66},[8] = {id = 2103308,lv = 66}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1120320,cardId = 1101998,lv = 66,bklv = 8,star = 2,equip = {[1] = {id = 2002301,lv = 66},[2] = {id = 2002302,lv = 66},[3] = {id = 2002303,lv = 66},[4] = {id = 2002304,lv = 66},[5] = {id = 2002305,lv = 66},[6] = {id = 2002306,lv = 66},[7] = {id = 2002307,lv = 66},[8] = {id = 2002308,lv = 66}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-12-3-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1120321,cardId = 1102998,lv = 70,bklv = 10,star = 2,ghost = 19,equip = {[1] = {id = 2103301,lv = 66},[2] = {id = 2103302,lv = 66},[3] = {id = 2103303,lv = 66},[4] = {id = 2103304,lv = 66},[5] = {id = 2103305,lv = 66},[6] = {id = 2103306,lv = 66},[7] = {id = 2103307,lv = 66},[8] = {id = 2103308,lv = 66}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1120330,cardId = 1101999,lv = 66,bklv = 8,star = 2,equip = {[1] = {id = 2002301,lv = 66},[2] = {id = 2002302,lv = 66},[3] = {id = 2002303,lv = 66},[4] = {id = 2002304,lv = 66},[5] = {id = 2002305,lv = 66},[6] = {id = 2002306,lv = 66},[7] = {id = 2002307,lv = 66},[8] = {id = 2002308,lv = 66}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-12-3-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1120331,cardId = 1102999,lv = 65,bklv = 9,star = 2,ghost = 18,equip = {[1] = {id = 2103301,lv = 66},[2] = {id = 2103302,lv = 66},[3] = {id = 2103303,lv = 66},[4] = {id = 2103304,lv = 66},[5] = {id = 2103305,lv = 66},[6] = {id = 2103306,lv = 66},[7] = {id = 2103307,lv = 66},[8] = {id = 2103308,lv = 66}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11204] = {
		[1] = {
			jlr = {id = 1120410,cardId = 1101999,lv = 67,bklv = 8,star = 2,equip = {[1] = {id = 2002301,lv = 67},[2] = {id = 2002302,lv = 67},[3] = {id = 2002303,lv = 67},[4] = {id = 2002304,lv = 67},[5] = {id = 2002305,lv = 67},[6] = {id = 2002306,lv = 67},[7] = {id = 2002307,lv = 67},[8] = {id = 2002308,lv = 67}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-12-4-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1120411,cardId = 1102999,lv = 65,bklv = 9,star = 2,ghost = 19,equip = {[1] = {id = 2103301,lv = 67},[2] = {id = 2103302,lv = 67},[3] = {id = 2103303,lv = 67},[4] = {id = 2103304,lv = 67},[5] = {id = 2103305,lv = 67},[6] = {id = 2103306,lv = 67},[7] = {id = 2103307,lv = 67},[8] = {id = 2103308,lv = 67}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1120420,cardId = 1101999,lv = 67,bklv = 8,star = 2,equip = {[1] = {id = 2002301,lv = 67},[2] = {id = 2002302,lv = 67},[3] = {id = 2002303,lv = 67},[4] = {id = 2002304,lv = 67},[5] = {id = 2002305,lv = 67},[6] = {id = 2002306,lv = 67},[7] = {id = 2002307,lv = 67},[8] = {id = 2002308,lv = 67}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-12-4-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1120421,cardId = 1102999,lv = 70,bklv = 10,star = 2,ghost = 19,equip = {[1] = {id = 2103301,lv = 67},[2] = {id = 2103302,lv = 67},[3] = {id = 2103303,lv = 67},[4] = {id = 2103304,lv = 67},[5] = {id = 2103305,lv = 67},[6] = {id = 2103306,lv = 67},[7] = {id = 2103307,lv = 67},[8] = {id = 2103308,lv = 67}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1120430,cardId = 1101999,lv = 67,bklv = 8,star = 2,equip = {[1] = {id = 2002301,lv = 67},[2] = {id = 2002302,lv = 67},[3] = {id = 2002303,lv = 67},[4] = {id = 2002304,lv = 67},[5] = {id = 2002305,lv = 67},[6] = {id = 2002306,lv = 67},[7] = {id = 2002307,lv = 67},[8] = {id = 2002308,lv = 67}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-12-4-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1120431,cardId = 1102999,lv = 65,bklv = 9,star = 2,ghost = 18,equip = {[1] = {id = 2103301,lv = 67},[2] = {id = 2103302,lv = 67},[3] = {id = 2103303,lv = 67},[4] = {id = 2103304,lv = 67},[5] = {id = 2103305,lv = 67},[6] = {id = 2103306,lv = 67},[7] = {id = 2103307,lv = 67},[8] = {id = 2103308,lv = 67}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11205] = {
		[1] = {
			jlr = {id = 1120510,cardId = 1101999,lv = 67,bklv = 8,star = 2,equip = {[1] = {id = 2002301,lv = 67},[2] = {id = 2002302,lv = 67},[3] = {id = 2002303,lv = 67},[4] = {id = 2002304,lv = 67},[5] = {id = 2002305,lv = 67},[6] = {id = 2002306,lv = 67},[7] = {id = 2002307,lv = 67},[8] = {id = 2002308,lv = 67}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-12-5-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1120511,cardId = 1102999,lv = 65,bklv = 9,star = 2,ghost = 19,equip = {[1] = {id = 2103301,lv = 67},[2] = {id = 2103302,lv = 67},[3] = {id = 2103303,lv = 67},[4] = {id = 2103304,lv = 67},[5] = {id = 2103305,lv = 67},[6] = {id = 2103306,lv = 67},[7] = {id = 2103307,lv = 67},[8] = {id = 2103308,lv = 67}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1120520,cardId = 1101999,lv = 67,bklv = 8,star = 2,equip = {[1] = {id = 2002301,lv = 67},[2] = {id = 2002302,lv = 67},[3] = {id = 2002303,lv = 67},[4] = {id = 2002304,lv = 67},[5] = {id = 2002305,lv = 67},[6] = {id = 2002306,lv = 67},[7] = {id = 2002307,lv = 67},[8] = {id = 2002308,lv = 67}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-12-5-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1120521,cardId = 1102999,lv = 70,bklv = 10,star = 2,ghost = 19,equip = {[1] = {id = 2103301,lv = 67},[2] = {id = 2103302,lv = 67},[3] = {id = 2103303,lv = 67},[4] = {id = 2103304,lv = 67},[5] = {id = 2103305,lv = 67},[6] = {id = 2103306,lv = 67},[7] = {id = 2103307,lv = 67},[8] = {id = 2103308,lv = 67}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1120530,cardId = 1101999,lv = 67,bklv = 8,star = 2,equip = {[1] = {id = 2002301,lv = 67},[2] = {id = 2002302,lv = 67},[3] = {id = 2002303,lv = 67},[4] = {id = 2002304,lv = 67},[5] = {id = 2002305,lv = 67},[6] = {id = 2002306,lv = 67},[7] = {id = 2002307,lv = 67},[8] = {id = 2002308,lv = 67}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-12-5-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1120531,cardId = 1102999,lv = 65,bklv = 9,star = 2,ghost = 19,equip = {[1] = {id = 2103301,lv = 67},[2] = {id = 2103302,lv = 67},[3] = {id = 2103303,lv = 67},[4] = {id = 2103304,lv = 67},[5] = {id = 2103305,lv = 67},[6] = {id = 2103306,lv = 67},[7] = {id = 2103307,lv = 67},[8] = {id = 2103308,lv = 67}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11206] = {
		[1] = {
			jlr = {id = 1120610,cardId = 1101998,lv = 68,bklv = 9,star = 2,equip = {[1] = {id = 2003301,lv = 68},[2] = {id = 2003302,lv = 68},[3] = {id = 2003303,lv = 68},[4] = {id = 2003304,lv = 68},[5] = {id = 2003305,lv = 68},[6] = {id = 2003306,lv = 68},[7] = {id = 2003307,lv = 68},[8] = {id = 2003308,lv = 68}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-12-6-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1120611,cardId = 1102998,lv = 70,bklv = 10,star = 2,ghost = 19,equip = {[1] = {id = 2103301,lv = 68},[2] = {id = 2103302,lv = 68},[3] = {id = 2103303,lv = 68},[4] = {id = 2103304,lv = 68},[5] = {id = 2103305,lv = 68},[6] = {id = 2103306,lv = 68},[7] = {id = 2103307,lv = 68},[8] = {id = 2103308,lv = 68}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1120620,cardId = 1101998,lv = 68,bklv = 9,star = 2,equip = {[1] = {id = 2003301,lv = 68},[2] = {id = 2003302,lv = 68},[3] = {id = 2003303,lv = 68},[4] = {id = 2003304,lv = 68},[5] = {id = 2003305,lv = 68},[6] = {id = 2003306,lv = 68},[7] = {id = 2003307,lv = 68},[8] = {id = 2003308,lv = 68}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-12-6-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1120621,cardId = 1102998,lv = 70,bklv = 10,star = 2,ghost = 20,equip = {[1] = {id = 2103301,lv = 68},[2] = {id = 2103302,lv = 68},[3] = {id = 2103303,lv = 68},[4] = {id = 2103304,lv = 68},[5] = {id = 2103305,lv = 68},[6] = {id = 2103306,lv = 68},[7] = {id = 2103307,lv = 68},[8] = {id = 2103308,lv = 68}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1120630,cardId = 1101998,lv = 68,bklv = 9,star = 2,equip = {[1] = {id = 2003301,lv = 68},[2] = {id = 2003302,lv = 68},[3] = {id = 2003303,lv = 68},[4] = {id = 2003304,lv = 68},[5] = {id = 2003305,lv = 68},[6] = {id = 2003306,lv = 68},[7] = {id = 2003307,lv = 68},[8] = {id = 2003308,lv = 68}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-12-6-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1120631,cardId = 1102998,lv = 65,bklv = 9,star = 2,ghost = 19,equip = {[1] = {id = 2103301,lv = 68},[2] = {id = 2103302,lv = 68},[3] = {id = 2103303,lv = 68},[4] = {id = 2103304,lv = 68},[5] = {id = 2103305,lv = 68},[6] = {id = 2103306,lv = 68},[7] = {id = 2103307,lv = 68},[8] = {id = 2103308,lv = 68}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11207] = {
		[1] = {
			jlr = {id = 1120710,cardId = 1101999,lv = 69,bklv = 9,star = 2,equip = {[1] = {id = 2003301,lv = 69},[2] = {id = 2003302,lv = 69},[3] = {id = 2003303,lv = 69},[4] = {id = 2003304,lv = 69},[5] = {id = 2003305,lv = 69},[6] = {id = 2003306,lv = 69},[7] = {id = 2003307,lv = 69},[8] = {id = 2003308,lv = 69}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-12-7-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1120711,cardId = 1102999,lv = 70,bklv = 10,star = 2,ghost = 19,equip = {[1] = {id = 2103301,lv = 69},[2] = {id = 2103302,lv = 69},[3] = {id = 2103303,lv = 69},[4] = {id = 2103304,lv = 69},[5] = {id = 2103305,lv = 69},[6] = {id = 2103306,lv = 69},[7] = {id = 2103307,lv = 69},[8] = {id = 2103308,lv = 69}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1120720,cardId = 1101999,lv = 69,bklv = 9,star = 2,equip = {[1] = {id = 2003301,lv = 69},[2] = {id = 2003302,lv = 69},[3] = {id = 2003303,lv = 69},[4] = {id = 2003304,lv = 69},[5] = {id = 2003305,lv = 69},[6] = {id = 2003306,lv = 69},[7] = {id = 2003307,lv = 69},[8] = {id = 2003308,lv = 69}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-12-7-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1120721,cardId = 1102999,lv = 70,bklv = 10,star = 2,ghost = 20,equip = {[1] = {id = 2103301,lv = 69},[2] = {id = 2103302,lv = 69},[3] = {id = 2103303,lv = 69},[4] = {id = 2103304,lv = 69},[5] = {id = 2103305,lv = 69},[6] = {id = 2103306,lv = 69},[7] = {id = 2103307,lv = 69},[8] = {id = 2103308,lv = 69}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1120730,cardId = 1101999,lv = 69,bklv = 9,star = 2,equip = {[1] = {id = 2003301,lv = 69},[2] = {id = 2003302,lv = 69},[3] = {id = 2003303,lv = 69},[4] = {id = 2003304,lv = 69},[5] = {id = 2003305,lv = 69},[6] = {id = 2003306,lv = 69},[7] = {id = 2003307,lv = 69},[8] = {id = 2003308,lv = 69}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-12-7-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1120731,cardId = 1102999,lv = 65,bklv = 9,star = 2,ghost = 19,equip = {[1] = {id = 2103301,lv = 69},[2] = {id = 2103302,lv = 69},[3] = {id = 2103303,lv = 69},[4] = {id = 2103304,lv = 69},[5] = {id = 2103305,lv = 69},[6] = {id = 2103306,lv = 69},[7] = {id = 2103307,lv = 69},[8] = {id = 2103308,lv = 69}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11208] = {
		[1] = {
			jlr = {id = 1120810,cardId = 1101999,lv = 69,bklv = 9,star = 2,equip = {[1] = {id = 2003301,lv = 69},[2] = {id = 2003302,lv = 69},[3] = {id = 2003303,lv = 69},[4] = {id = 2003304,lv = 69},[5] = {id = 2003305,lv = 69},[6] = {id = 2003306,lv = 69},[7] = {id = 2003307,lv = 69},[8] = {id = 2003308,lv = 69}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-12-8-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1120811,cardId = 1102999,lv = 70,bklv = 10,star = 2,ghost = 19,equip = {[1] = {id = 2103301,lv = 69},[2] = {id = 2103302,lv = 69},[3] = {id = 2103303,lv = 69},[4] = {id = 2103304,lv = 69},[5] = {id = 2103305,lv = 69},[6] = {id = 2103306,lv = 69},[7] = {id = 2103307,lv = 69},[8] = {id = 2103308,lv = 69}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1120820,cardId = 1101999,lv = 69,bklv = 9,star = 2,equip = {[1] = {id = 2003301,lv = 69},[2] = {id = 2003302,lv = 69},[3] = {id = 2003303,lv = 69},[4] = {id = 2003304,lv = 69},[5] = {id = 2003305,lv = 69},[6] = {id = 2003306,lv = 69},[7] = {id = 2003307,lv = 69},[8] = {id = 2003308,lv = 69}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-12-8-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1120821,cardId = 1102999,lv = 70,bklv = 10,star = 2,ghost = 20,equip = {[1] = {id = 2103301,lv = 69},[2] = {id = 2103302,lv = 69},[3] = {id = 2103303,lv = 69},[4] = {id = 2103304,lv = 69},[5] = {id = 2103305,lv = 69},[6] = {id = 2103306,lv = 69},[7] = {id = 2103307,lv = 69},[8] = {id = 2103308,lv = 69}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1120830,cardId = 1101999,lv = 69,bklv = 9,star = 2,equip = {[1] = {id = 2003301,lv = 69},[2] = {id = 2003302,lv = 69},[3] = {id = 2003303,lv = 69},[4] = {id = 2003304,lv = 69},[5] = {id = 2003305,lv = 69},[6] = {id = 2003306,lv = 69},[7] = {id = 2003307,lv = 69},[8] = {id = 2003308,lv = 69}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-12-8-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1120831,cardId = 1102999,lv = 65,bklv = 9,star = 2,ghost = 19,equip = {[1] = {id = 2103301,lv = 69},[2] = {id = 2103302,lv = 69},[3] = {id = 2103303,lv = 69},[4] = {id = 2103304,lv = 69},[5] = {id = 2103305,lv = 69},[6] = {id = 2103306,lv = 69},[7] = {id = 2103307,lv = 69},[8] = {id = 2103308,lv = 69}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11209] = {
		[1] = {
			jlr = {id = 1120910,cardId = 1101998,lv = 70,bklv = 9,star = 2,equip = {[1] = {id = 2003301,lv = 70},[2] = {id = 2003302,lv = 70},[3] = {id = 2003303,lv = 70},[4] = {id = 2003304,lv = 70},[5] = {id = 2003305,lv = 70},[6] = {id = 2003306,lv = 70},[7] = {id = 2003307,lv = 70},[8] = {id = 2003308,lv = 70}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-12-9-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1120911,cardId = 1102998,lv = 70,bklv = 10,star = 2,ghost = 20,equip = {[1] = {id = 2103301,lv = 70},[2] = {id = 2103302,lv = 70},[3] = {id = 2103303,lv = 70},[4] = {id = 2103304,lv = 70},[5] = {id = 2103305,lv = 70},[6] = {id = 2103306,lv = 70},[7] = {id = 2103307,lv = 70},[8] = {id = 2103308,lv = 70}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1120920,cardId = 1101997,lv = 70,bklv = 9,star = 2,equip = {[1] = {id = 2003301,lv = 70},[2] = {id = 2003302,lv = 70},[3] = {id = 2003303,lv = 70},[4] = {id = 2003304,lv = 70},[5] = {id = 2003305,lv = 70},[6] = {id = 2003306,lv = 70},[7] = {id = 2003307,lv = 70},[8] = {id = 2003308,lv = 70}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-12-9-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1120921,cardId = 1102997,lv = 70,bklv = 10,star = 2,ghost = 20,equip = {[1] = {id = 2103301,lv = 70},[2] = {id = 2103302,lv = 70},[3] = {id = 2103303,lv = 70},[4] = {id = 2103304,lv = 70},[5] = {id = 2103305,lv = 70},[6] = {id = 2103306,lv = 70},[7] = {id = 2103307,lv = 70},[8] = {id = 2103308,lv = 70}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1120930,cardId = 1101998,lv = 70,bklv = 9,star = 2,equip = {[1] = {id = 2003301,lv = 70},[2] = {id = 2003302,lv = 70},[3] = {id = 2003303,lv = 70},[4] = {id = 2003304,lv = 70},[5] = {id = 2003305,lv = 70},[6] = {id = 2003306,lv = 70},[7] = {id = 2003307,lv = 70},[8] = {id = 2003308,lv = 70}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-12-9-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1120931,cardId = 1102998,lv = 70,bklv = 10,star = 2,ghost = 20,equip = {[1] = {id = 2103301,lv = 70},[2] = {id = 2103302,lv = 70},[3] = {id = 2103303,lv = 70},[4] = {id = 2103304,lv = 70},[5] = {id = 2103305,lv = 70},[6] = {id = 2103306,lv = 70},[7] = {id = 2103307,lv = 70},[8] = {id = 2103308,lv = 70}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11210] = {
		[1] = {
			jlr = {id = 1121010,cardId = 1101997,lv = 70,bklv = 9,star = 2,equip = {[1] = {id = 2003301,lv = 70},[2] = {id = 2003302,lv = 70},[3] = {id = 2003303,lv = 70},[4] = {id = 2003304,lv = 70},[5] = {id = 2003305,lv = 70},[6] = {id = 2003306,lv = 70},[7] = {id = 2003307,lv = 70},[8] = {id = 2003308,lv = 70}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-12-10-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1121011,cardId = 1102997,lv = 70,bklv = 10,star = 2,ghost = 20,equip = {[1] = {id = 2103301,lv = 70},[2] = {id = 2103302,lv = 70},[3] = {id = 2103303,lv = 70},[4] = {id = 2103304,lv = 70},[5] = {id = 2103305,lv = 70},[6] = {id = 2103306,lv = 70},[7] = {id = 2103307,lv = 70},[8] = {id = 2103308,lv = 70}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1121020,cardId = 1101997,lv = 70,bklv = 9,star = 2,equip = {[1] = {id = 2003301,lv = 70},[2] = {id = 2003302,lv = 70},[3] = {id = 2003303,lv = 70},[4] = {id = 2003304,lv = 70},[5] = {id = 2003305,lv = 70},[6] = {id = 2003306,lv = 70},[7] = {id = 2003307,lv = 70},[8] = {id = 2003308,lv = 70}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-12-10-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1121021,cardId = 1102997,lv = 70,bklv = 10,star = 2,ghost = 20,equip = {[1] = {id = 2103301,lv = 70},[2] = {id = 2103302,lv = 70},[3] = {id = 2103303,lv = 70},[4] = {id = 2103304,lv = 70},[5] = {id = 2103305,lv = 70},[6] = {id = 2103306,lv = 70},[7] = {id = 2103307,lv = 70},[8] = {id = 2103308,lv = 70}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1121030,cardId = 1101997,lv = 70,bklv = 9,star = 2,equip = {[1] = {id = 2003301,lv = 70},[2] = {id = 2003302,lv = 70},[3] = {id = 2003303,lv = 70},[4] = {id = 2003304,lv = 70},[5] = {id = 2003305,lv = 70},[6] = {id = 2003306,lv = 70},[7] = {id = 2003307,lv = 70},[8] = {id = 2003308,lv = 70}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-12-10-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1121031,cardId = 1102997,lv = 70,bklv = 10,star = 2,ghost = 20,equip = {[1] = {id = 2103301,lv = 70},[2] = {id = 2103302,lv = 70},[3] = {id = 2103303,lv = 70},[4] = {id = 2103304,lv = 70},[5] = {id = 2103305,lv = 70},[6] = {id = 2103306,lv = 70},[7] = {id = 2103307,lv = 70},[8] = {id = 2103308,lv = 70}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11301] = {
		[1] = {
			jlr = {id = 1130110,cardId = 1101999,lv = 70,bklv = 9,star = 2,equip = {[1] = {id = 2003301,lv = 70},[2] = {id = 2003302,lv = 70},[3] = {id = 2003303,lv = 70},[4] = {id = 2003304,lv = 70},[5] = {id = 2003305,lv = 70},[6] = {id = 2003306,lv = 70},[7] = {id = 2003307,lv = 70},[8] = {id = 2003308,lv = 70}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-13-1-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1130111,cardId = 1102999,lv = 70,bklv = 10,star = 2,ghost = 20,equip = {[1] = {id = 2103301,lv = 70},[2] = {id = 2103302,lv = 70},[3] = {id = 2103303,lv = 70},[4] = {id = 2103304,lv = 70},[5] = {id = 2103305,lv = 70},[6] = {id = 2103306,lv = 70},[7] = {id = 2103307,lv = 70},[8] = {id = 2103308,lv = 70}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1130120,cardId = 1101999,lv = 70,bklv = 9,star = 2,equip = {[1] = {id = 2003301,lv = 70},[2] = {id = 2003302,lv = 70},[3] = {id = 2003303,lv = 70},[4] = {id = 2003304,lv = 70},[5] = {id = 2003305,lv = 70},[6] = {id = 2003306,lv = 70},[7] = {id = 2003307,lv = 70},[8] = {id = 2003308,lv = 70}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-13-1-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1130121,cardId = 1102999,lv = 70,bklv = 10,star = 2,ghost = 20,equip = {[1] = {id = 2103301,lv = 70},[2] = {id = 2103302,lv = 70},[3] = {id = 2103303,lv = 70},[4] = {id = 2103304,lv = 70},[5] = {id = 2103305,lv = 70},[6] = {id = 2103306,lv = 70},[7] = {id = 2103307,lv = 70},[8] = {id = 2103308,lv = 70}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1130130,cardId = 1101999,lv = 70,bklv = 9,star = 2,equip = {[1] = {id = 2003301,lv = 70},[2] = {id = 2003302,lv = 70},[3] = {id = 2003303,lv = 70},[4] = {id = 2003304,lv = 70},[5] = {id = 2003305,lv = 70},[6] = {id = 2003306,lv = 70},[7] = {id = 2003307,lv = 70},[8] = {id = 2003308,lv = 70}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-13-1-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1130131,cardId = 1102999,lv = 70,bklv = 10,star = 2,ghost = 20,equip = {[1] = {id = 2103301,lv = 70},[2] = {id = 2103302,lv = 70},[3] = {id = 2103303,lv = 70},[4] = {id = 2103304,lv = 70},[5] = {id = 2103305,lv = 70},[6] = {id = 2103306,lv = 70},[7] = {id = 2103307,lv = 70},[8] = {id = 2103308,lv = 70}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11302] = {
		[1] = {
			jlr = {id = 1130210,cardId = 1101999,lv = 70,bklv = 9,star = 2,equip = {[1] = {id = 2003301,lv = 70},[2] = {id = 2003302,lv = 70},[3] = {id = 2003303,lv = 70},[4] = {id = 2003304,lv = 70},[5] = {id = 2003305,lv = 70},[6] = {id = 2003306,lv = 70},[7] = {id = 2003307,lv = 70},[8] = {id = 2003308,lv = 70}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-13-2-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1130211,cardId = 1102999,lv = 70,bklv = 10,star = 2,ghost = 20,equip = {[1] = {id = 2103301,lv = 70},[2] = {id = 2103302,lv = 70},[3] = {id = 2103303,lv = 70},[4] = {id = 2103304,lv = 70},[5] = {id = 2103305,lv = 70},[6] = {id = 2103306,lv = 70},[7] = {id = 2103307,lv = 70},[8] = {id = 2103308,lv = 70}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1130220,cardId = 1101999,lv = 70,bklv = 9,star = 2,equip = {[1] = {id = 2003301,lv = 70},[2] = {id = 2003302,lv = 70},[3] = {id = 2003303,lv = 70},[4] = {id = 2003304,lv = 70},[5] = {id = 2003305,lv = 70},[6] = {id = 2003306,lv = 70},[7] = {id = 2003307,lv = 70},[8] = {id = 2003308,lv = 70}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-13-2-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1130221,cardId = 1102999,lv = 70,bklv = 10,star = 2,ghost = 20,equip = {[1] = {id = 2103301,lv = 70},[2] = {id = 2103302,lv = 70},[3] = {id = 2103303,lv = 70},[4] = {id = 2103304,lv = 70},[5] = {id = 2103305,lv = 70},[6] = {id = 2103306,lv = 70},[7] = {id = 2103307,lv = 70},[8] = {id = 2103308,lv = 70}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1130230,cardId = 1101999,lv = 70,bklv = 9,star = 2,equip = {[1] = {id = 2003301,lv = 70},[2] = {id = 2003302,lv = 70},[3] = {id = 2003303,lv = 70},[4] = {id = 2003304,lv = 70},[5] = {id = 2003305,lv = 70},[6] = {id = 2003306,lv = 70},[7] = {id = 2003307,lv = 70},[8] = {id = 2003308,lv = 70}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-13-2-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1130231,cardId = 1102999,lv = 70,bklv = 10,star = 2,ghost = 20,equip = {[1] = {id = 2103301,lv = 70},[2] = {id = 2103302,lv = 70},[3] = {id = 2103303,lv = 70},[4] = {id = 2103304,lv = 70},[5] = {id = 2103305,lv = 70},[6] = {id = 2103306,lv = 70},[7] = {id = 2103307,lv = 70},[8] = {id = 2103308,lv = 70}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11303] = {
		[1] = {
			jlr = {id = 1130310,cardId = 1101999,lv = 71,bklv = 9,star = 2,equip = {[1] = {id = 2003301,lv = 71},[2] = {id = 2003302,lv = 71},[3] = {id = 2003303,lv = 71},[4] = {id = 2003304,lv = 71},[5] = {id = 2003305,lv = 71},[6] = {id = 2003306,lv = 71},[7] = {id = 2003307,lv = 71},[8] = {id = 2003308,lv = 71}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-13-3-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1130311,cardId = 1102999,lv = 70,bklv = 10,star = 2,ghost = 20,equip = {[1] = {id = 2103301,lv = 71},[2] = {id = 2103302,lv = 71},[3] = {id = 2103303,lv = 71},[4] = {id = 2103304,lv = 71},[5] = {id = 2103305,lv = 71},[6] = {id = 2103306,lv = 71},[7] = {id = 2103307,lv = 71},[8] = {id = 2103308,lv = 71}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1130320,cardId = 1101998,lv = 71,bklv = 9,star = 2,equip = {[1] = {id = 2003301,lv = 71},[2] = {id = 2003302,lv = 71},[3] = {id = 2003303,lv = 71},[4] = {id = 2003304,lv = 71},[5] = {id = 2003305,lv = 71},[6] = {id = 2003306,lv = 71},[7] = {id = 2003307,lv = 71},[8] = {id = 2003308,lv = 71}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-13-3-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1130321,cardId = 1102998,lv = 75,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103301,lv = 71},[2] = {id = 2103302,lv = 71},[3] = {id = 2103303,lv = 71},[4] = {id = 2103304,lv = 71},[5] = {id = 2103305,lv = 71},[6] = {id = 2103306,lv = 71},[7] = {id = 2103307,lv = 71},[8] = {id = 2103308,lv = 71}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1130330,cardId = 1101999,lv = 71,bklv = 9,star = 2,equip = {[1] = {id = 2003301,lv = 71},[2] = {id = 2003302,lv = 71},[3] = {id = 2003303,lv = 71},[4] = {id = 2003304,lv = 71},[5] = {id = 2003305,lv = 71},[6] = {id = 2003306,lv = 71},[7] = {id = 2003307,lv = 71},[8] = {id = 2003308,lv = 71}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-13-3-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1130331,cardId = 1102999,lv = 70,bklv = 10,star = 2,ghost = 20,equip = {[1] = {id = 2103301,lv = 71},[2] = {id = 2103302,lv = 71},[3] = {id = 2103303,lv = 71},[4] = {id = 2103304,lv = 71},[5] = {id = 2103305,lv = 71},[6] = {id = 2103306,lv = 71},[7] = {id = 2103307,lv = 71},[8] = {id = 2103308,lv = 71}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11304] = {
		[1] = {
			jlr = {id = 1130410,cardId = 1101999,lv = 72,bklv = 9,star = 2,equip = {[1] = {id = 2003301,lv = 72},[2] = {id = 2003302,lv = 72},[3] = {id = 2003303,lv = 72},[4] = {id = 2003304,lv = 72},[5] = {id = 2003305,lv = 72},[6] = {id = 2003306,lv = 72},[7] = {id = 2003307,lv = 72},[8] = {id = 2003308,lv = 72}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-13-4-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1130411,cardId = 1102999,lv = 70,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103301,lv = 72},[2] = {id = 2103302,lv = 72},[3] = {id = 2103303,lv = 72},[4] = {id = 2103304,lv = 72},[5] = {id = 2103305,lv = 72},[6] = {id = 2103306,lv = 72},[7] = {id = 2103307,lv = 72},[8] = {id = 2103308,lv = 72}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1130420,cardId = 1101999,lv = 72,bklv = 9,star = 2,equip = {[1] = {id = 2003301,lv = 72},[2] = {id = 2003302,lv = 72},[3] = {id = 2003303,lv = 72},[4] = {id = 2003304,lv = 72},[5] = {id = 2003305,lv = 72},[6] = {id = 2003306,lv = 72},[7] = {id = 2003307,lv = 72},[8] = {id = 2003308,lv = 72}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-13-4-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1130421,cardId = 1102999,lv = 75,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103301,lv = 72},[2] = {id = 2103302,lv = 72},[3] = {id = 2103303,lv = 72},[4] = {id = 2103304,lv = 72},[5] = {id = 2103305,lv = 72},[6] = {id = 2103306,lv = 72},[7] = {id = 2103307,lv = 72},[8] = {id = 2103308,lv = 72}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1130430,cardId = 1101999,lv = 72,bklv = 9,star = 2,equip = {[1] = {id = 2003301,lv = 72},[2] = {id = 2003302,lv = 72},[3] = {id = 2003303,lv = 72},[4] = {id = 2003304,lv = 72},[5] = {id = 2003305,lv = 72},[6] = {id = 2003306,lv = 72},[7] = {id = 2003307,lv = 72},[8] = {id = 2003308,lv = 72}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-13-4-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1130431,cardId = 1102999,lv = 70,bklv = 10,star = 2,ghost = 20,equip = {[1] = {id = 2103301,lv = 72},[2] = {id = 2103302,lv = 72},[3] = {id = 2103303,lv = 72},[4] = {id = 2103304,lv = 72},[5] = {id = 2103305,lv = 72},[6] = {id = 2103306,lv = 72},[7] = {id = 2103307,lv = 72},[8] = {id = 2103308,lv = 72}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11305] = {
		[1] = {
			jlr = {id = 1130510,cardId = 1101999,lv = 72,bklv = 9,star = 2,equip = {[1] = {id = 2003301,lv = 72},[2] = {id = 2003302,lv = 72},[3] = {id = 2003303,lv = 72},[4] = {id = 2003304,lv = 72},[5] = {id = 2003305,lv = 72},[6] = {id = 2003306,lv = 72},[7] = {id = 2003307,lv = 72},[8] = {id = 2003308,lv = 72}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-13-5-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1130511,cardId = 1102999,lv = 70,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103301,lv = 72},[2] = {id = 2103302,lv = 72},[3] = {id = 2103303,lv = 72},[4] = {id = 2103304,lv = 72},[5] = {id = 2103305,lv = 72},[6] = {id = 2103306,lv = 72},[7] = {id = 2103307,lv = 72},[8] = {id = 2103308,lv = 72}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1130520,cardId = 1101999,lv = 72,bklv = 9,star = 2,equip = {[1] = {id = 2003301,lv = 72},[2] = {id = 2003302,lv = 72},[3] = {id = 2003303,lv = 72},[4] = {id = 2003304,lv = 72},[5] = {id = 2003305,lv = 72},[6] = {id = 2003306,lv = 72},[7] = {id = 2003307,lv = 72},[8] = {id = 2003308,lv = 72}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-13-5-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1130521,cardId = 1102999,lv = 75,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103301,lv = 72},[2] = {id = 2103302,lv = 72},[3] = {id = 2103303,lv = 72},[4] = {id = 2103304,lv = 72},[5] = {id = 2103305,lv = 72},[6] = {id = 2103306,lv = 72},[7] = {id = 2103307,lv = 72},[8] = {id = 2103308,lv = 72}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1130530,cardId = 1101999,lv = 72,bklv = 9,star = 2,equip = {[1] = {id = 2003301,lv = 72},[2] = {id = 2003302,lv = 72},[3] = {id = 2003303,lv = 72},[4] = {id = 2003304,lv = 72},[5] = {id = 2003305,lv = 72},[6] = {id = 2003306,lv = 72},[7] = {id = 2003307,lv = 72},[8] = {id = 2003308,lv = 72}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-13-5-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1130531,cardId = 1102999,lv = 70,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103301,lv = 72},[2] = {id = 2103302,lv = 72},[3] = {id = 2103303,lv = 72},[4] = {id = 2103304,lv = 72},[5] = {id = 2103305,lv = 72},[6] = {id = 2103306,lv = 72},[7] = {id = 2103307,lv = 72},[8] = {id = 2103308,lv = 72}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11306] = {
		[1] = {
			jlr = {id = 1130610,cardId = 1101998,lv = 73,bklv = 10,star = 2,equip = {[1] = {id = 2003301,lv = 73},[2] = {id = 2003302,lv = 73},[3] = {id = 2003303,lv = 73},[4] = {id = 2003304,lv = 73},[5] = {id = 2003305,lv = 73},[6] = {id = 2003306,lv = 73},[7] = {id = 2003307,lv = 73},[8] = {id = 2003308,lv = 73}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-13-6-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1130611,cardId = 1102998,lv = 75,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103301,lv = 73},[2] = {id = 2103302,lv = 73},[3] = {id = 2103303,lv = 73},[4] = {id = 2103304,lv = 73},[5] = {id = 2103305,lv = 73},[6] = {id = 2103306,lv = 73},[7] = {id = 2103307,lv = 73},[8] = {id = 2103308,lv = 73}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1130620,cardId = 1101998,lv = 73,bklv = 10,star = 2,equip = {[1] = {id = 2003301,lv = 73},[2] = {id = 2003302,lv = 73},[3] = {id = 2003303,lv = 73},[4] = {id = 2003304,lv = 73},[5] = {id = 2003305,lv = 73},[6] = {id = 2003306,lv = 73},[7] = {id = 2003307,lv = 73},[8] = {id = 2003308,lv = 73}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-13-6-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1130621,cardId = 1102998,lv = 75,bklv = 10,star = 2,ghost = 22,equip = {[1] = {id = 2103301,lv = 73},[2] = {id = 2103302,lv = 73},[3] = {id = 2103303,lv = 73},[4] = {id = 2103304,lv = 73},[5] = {id = 2103305,lv = 73},[6] = {id = 2103306,lv = 73},[7] = {id = 2103307,lv = 73},[8] = {id = 2103308,lv = 73}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1130630,cardId = 1101998,lv = 73,bklv = 10,star = 2,equip = {[1] = {id = 2003301,lv = 73},[2] = {id = 2003302,lv = 73},[3] = {id = 2003303,lv = 73},[4] = {id = 2003304,lv = 73},[5] = {id = 2003305,lv = 73},[6] = {id = 2003306,lv = 73},[7] = {id = 2003307,lv = 73},[8] = {id = 2003308,lv = 73}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-13-6-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1130631,cardId = 1102998,lv = 70,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103301,lv = 73},[2] = {id = 2103302,lv = 73},[3] = {id = 2103303,lv = 73},[4] = {id = 2103304,lv = 73},[5] = {id = 2103305,lv = 73},[6] = {id = 2103306,lv = 73},[7] = {id = 2103307,lv = 73},[8] = {id = 2103308,lv = 73}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11307] = {
		[1] = {
			jlr = {id = 1130710,cardId = 1101999,lv = 74,bklv = 10,star = 2,equip = {[1] = {id = 2003301,lv = 74},[2] = {id = 2003302,lv = 74},[3] = {id = 2003303,lv = 74},[4] = {id = 2003304,lv = 74},[5] = {id = 2003305,lv = 74},[6] = {id = 2003306,lv = 74},[7] = {id = 2003307,lv = 74},[8] = {id = 2003308,lv = 74}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-13-7-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1130711,cardId = 1102999,lv = 75,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103301,lv = 74},[2] = {id = 2103302,lv = 74},[3] = {id = 2103303,lv = 74},[4] = {id = 2103304,lv = 74},[5] = {id = 2103305,lv = 74},[6] = {id = 2103306,lv = 74},[7] = {id = 2103307,lv = 74},[8] = {id = 2103308,lv = 74}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1130720,cardId = 1101999,lv = 74,bklv = 10,star = 2,equip = {[1] = {id = 2003301,lv = 74},[2] = {id = 2003302,lv = 74},[3] = {id = 2003303,lv = 74},[4] = {id = 2003304,lv = 74},[5] = {id = 2003305,lv = 74},[6] = {id = 2003306,lv = 74},[7] = {id = 2003307,lv = 74},[8] = {id = 2003308,lv = 74}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-13-7-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1130721,cardId = 1102999,lv = 75,bklv = 10,star = 2,ghost = 22,equip = {[1] = {id = 2103301,lv = 74},[2] = {id = 2103302,lv = 74},[3] = {id = 2103303,lv = 74},[4] = {id = 2103304,lv = 74},[5] = {id = 2103305,lv = 74},[6] = {id = 2103306,lv = 74},[7] = {id = 2103307,lv = 74},[8] = {id = 2103308,lv = 74}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1130730,cardId = 1101999,lv = 74,bklv = 10,star = 2,equip = {[1] = {id = 2003301,lv = 74},[2] = {id = 2003302,lv = 74},[3] = {id = 2003303,lv = 74},[4] = {id = 2003304,lv = 74},[5] = {id = 2003305,lv = 74},[6] = {id = 2003306,lv = 74},[7] = {id = 2003307,lv = 74},[8] = {id = 2003308,lv = 74}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-13-7-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1130731,cardId = 1102999,lv = 70,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103301,lv = 74},[2] = {id = 2103302,lv = 74},[3] = {id = 2103303,lv = 74},[4] = {id = 2103304,lv = 74},[5] = {id = 2103305,lv = 74},[6] = {id = 2103306,lv = 74},[7] = {id = 2103307,lv = 74},[8] = {id = 2103308,lv = 74}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11308] = {
		[1] = {
			jlr = {id = 1130810,cardId = 1101999,lv = 74,bklv = 10,star = 2,equip = {[1] = {id = 2003301,lv = 74},[2] = {id = 2003302,lv = 74},[3] = {id = 2003303,lv = 74},[4] = {id = 2003304,lv = 74},[5] = {id = 2003305,lv = 74},[6] = {id = 2003306,lv = 74},[7] = {id = 2003307,lv = 74},[8] = {id = 2003308,lv = 74}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-13-8-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1130811,cardId = 1102999,lv = 75,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103301,lv = 74},[2] = {id = 2103302,lv = 74},[3] = {id = 2103303,lv = 74},[4] = {id = 2103304,lv = 74},[5] = {id = 2103305,lv = 74},[6] = {id = 2103306,lv = 74},[7] = {id = 2103307,lv = 74},[8] = {id = 2103308,lv = 74}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1130820,cardId = 1101999,lv = 74,bklv = 10,star = 2,equip = {[1] = {id = 2003301,lv = 74},[2] = {id = 2003302,lv = 74},[3] = {id = 2003303,lv = 74},[4] = {id = 2003304,lv = 74},[5] = {id = 2003305,lv = 74},[6] = {id = 2003306,lv = 74},[7] = {id = 2003307,lv = 74},[8] = {id = 2003308,lv = 74}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-13-8-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1130821,cardId = 1102999,lv = 75,bklv = 10,star = 2,ghost = 22,equip = {[1] = {id = 2103301,lv = 74},[2] = {id = 2103302,lv = 74},[3] = {id = 2103303,lv = 74},[4] = {id = 2103304,lv = 74},[5] = {id = 2103305,lv = 74},[6] = {id = 2103306,lv = 74},[7] = {id = 2103307,lv = 74},[8] = {id = 2103308,lv = 74}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1130830,cardId = 1101999,lv = 74,bklv = 10,star = 2,equip = {[1] = {id = 2003301,lv = 74},[2] = {id = 2003302,lv = 74},[3] = {id = 2003303,lv = 74},[4] = {id = 2003304,lv = 74},[5] = {id = 2003305,lv = 74},[6] = {id = 2003306,lv = 74},[7] = {id = 2003307,lv = 74},[8] = {id = 2003308,lv = 74}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-13-8-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1130831,cardId = 1102999,lv = 70,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103301,lv = 74},[2] = {id = 2103302,lv = 74},[3] = {id = 2103303,lv = 74},[4] = {id = 2103304,lv = 74},[5] = {id = 2103305,lv = 74},[6] = {id = 2103306,lv = 74},[7] = {id = 2103307,lv = 74},[8] = {id = 2103308,lv = 74}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11309] = {
		[1] = {
			jlr = {id = 1130910,cardId = 1101998,lv = 75,bklv = 10,star = 2,equip = {[1] = {id = 2003301,lv = 75},[2] = {id = 2003302,lv = 75},[3] = {id = 2003303,lv = 75},[4] = {id = 2003304,lv = 75},[5] = {id = 2003305,lv = 75},[6] = {id = 2003306,lv = 75},[7] = {id = 2003307,lv = 75},[8] = {id = 2003308,lv = 75}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-13-9-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1130911,cardId = 1102998,lv = 75,bklv = 10,star = 2,ghost = 22,equip = {[1] = {id = 2103301,lv = 75},[2] = {id = 2103302,lv = 75},[3] = {id = 2103303,lv = 75},[4] = {id = 2103304,lv = 75},[5] = {id = 2103305,lv = 75},[6] = {id = 2103306,lv = 75},[7] = {id = 2103307,lv = 75},[8] = {id = 2103308,lv = 75}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1130920,cardId = 1101997,lv = 75,bklv = 10,star = 2,equip = {[1] = {id = 2003301,lv = 75},[2] = {id = 2003302,lv = 75},[3] = {id = 2003303,lv = 75},[4] = {id = 2003304,lv = 75},[5] = {id = 2003305,lv = 75},[6] = {id = 2003306,lv = 75},[7] = {id = 2003307,lv = 75},[8] = {id = 2003308,lv = 75}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-13-9-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1130921,cardId = 1102997,lv = 75,bklv = 10,star = 2,ghost = 22,equip = {[1] = {id = 2103301,lv = 75},[2] = {id = 2103302,lv = 75},[3] = {id = 2103303,lv = 75},[4] = {id = 2103304,lv = 75},[5] = {id = 2103305,lv = 75},[6] = {id = 2103306,lv = 75},[7] = {id = 2103307,lv = 75},[8] = {id = 2103308,lv = 75}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1130930,cardId = 1101998,lv = 75,bklv = 10,star = 2,equip = {[1] = {id = 2003301,lv = 75},[2] = {id = 2003302,lv = 75},[3] = {id = 2003303,lv = 75},[4] = {id = 2003304,lv = 75},[5] = {id = 2003305,lv = 75},[6] = {id = 2003306,lv = 75},[7] = {id = 2003307,lv = 75},[8] = {id = 2003308,lv = 75}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-13-9-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1130931,cardId = 1102998,lv = 75,bklv = 10,star = 2,ghost = 22,equip = {[1] = {id = 2103301,lv = 75},[2] = {id = 2103302,lv = 75},[3] = {id = 2103303,lv = 75},[4] = {id = 2103304,lv = 75},[5] = {id = 2103305,lv = 75},[6] = {id = 2103306,lv = 75},[7] = {id = 2103307,lv = 75},[8] = {id = 2103308,lv = 75}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11310] = {
		[1] = {
			jlr = {id = 1131010,cardId = 1101997,lv = 75,bklv = 10,star = 2,equip = {[1] = {id = 2003301,lv = 75},[2] = {id = 2003302,lv = 75},[3] = {id = 2003303,lv = 75},[4] = {id = 2003304,lv = 75},[5] = {id = 2003305,lv = 75},[6] = {id = 2003306,lv = 75},[7] = {id = 2003307,lv = 75},[8] = {id = 2003308,lv = 75}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-13-10-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1131011,cardId = 1102997,lv = 75,bklv = 10,star = 2,ghost = 22,equip = {[1] = {id = 2103301,lv = 75},[2] = {id = 2103302,lv = 75},[3] = {id = 2103303,lv = 75},[4] = {id = 2103304,lv = 75},[5] = {id = 2103305,lv = 75},[6] = {id = 2103306,lv = 75},[7] = {id = 2103307,lv = 75},[8] = {id = 2103308,lv = 75}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1131020,cardId = 1101997,lv = 75,bklv = 10,star = 2,equip = {[1] = {id = 2003301,lv = 75},[2] = {id = 2003302,lv = 75},[3] = {id = 2003303,lv = 75},[4] = {id = 2003304,lv = 75},[5] = {id = 2003305,lv = 75},[6] = {id = 2003306,lv = 75},[7] = {id = 2003307,lv = 75},[8] = {id = 2003308,lv = 75}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-13-10-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1131021,cardId = 1102997,lv = 75,bklv = 10,star = 2,ghost = 22,equip = {[1] = {id = 2103301,lv = 75},[2] = {id = 2103302,lv = 75},[3] = {id = 2103303,lv = 75},[4] = {id = 2103304,lv = 75},[5] = {id = 2103305,lv = 75},[6] = {id = 2103306,lv = 75},[7] = {id = 2103307,lv = 75},[8] = {id = 2103308,lv = 75}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1131030,cardId = 1101997,lv = 75,bklv = 10,star = 2,equip = {[1] = {id = 2003301,lv = 75},[2] = {id = 2003302,lv = 75},[3] = {id = 2003303,lv = 75},[4] = {id = 2003304,lv = 75},[5] = {id = 2003305,lv = 75},[6] = {id = 2003306,lv = 75},[7] = {id = 2003307,lv = 75},[8] = {id = 2003308,lv = 75}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-13-10-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1131031,cardId = 1102997,lv = 75,bklv = 10,star = 2,ghost = 22,equip = {[1] = {id = 2103301,lv = 75},[2] = {id = 2103302,lv = 75},[3] = {id = 2103303,lv = 75},[4] = {id = 2103304,lv = 75},[5] = {id = 2103305,lv = 75},[6] = {id = 2103306,lv = 75},[7] = {id = 2103307,lv = 75},[8] = {id = 2103308,lv = 75}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11401] = {
		[1] = {
			jlr = {id = 1140110,cardId = 1101999,lv = 75,bklv = 10,star = 2,equip = {[1] = {id = 2003301,lv = 75},[2] = {id = 2003302,lv = 75},[3] = {id = 2003303,lv = 75},[4] = {id = 2003304,lv = 75},[5] = {id = 2003305,lv = 75},[6] = {id = 2003306,lv = 75},[7] = {id = 2003307,lv = 75},[8] = {id = 2003308,lv = 75}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-14-1-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1140111,cardId = 1102999,lv = 75,bklv = 10,star = 2,ghost = 22,equip = {[1] = {id = 2103301,lv = 75},[2] = {id = 2103302,lv = 75},[3] = {id = 2103303,lv = 75},[4] = {id = 2103304,lv = 75},[5] = {id = 2103305,lv = 75},[6] = {id = 2103306,lv = 75},[7] = {id = 2103307,lv = 75},[8] = {id = 2103308,lv = 75}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1140120,cardId = 1101999,lv = 75,bklv = 10,star = 2,equip = {[1] = {id = 2003301,lv = 75},[2] = {id = 2003302,lv = 75},[3] = {id = 2003303,lv = 75},[4] = {id = 2003304,lv = 75},[5] = {id = 2003305,lv = 75},[6] = {id = 2003306,lv = 75},[7] = {id = 2003307,lv = 75},[8] = {id = 2003308,lv = 75}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-14-1-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1140121,cardId = 1102999,lv = 75,bklv = 10,star = 2,ghost = 22,equip = {[1] = {id = 2103301,lv = 75},[2] = {id = 2103302,lv = 75},[3] = {id = 2103303,lv = 75},[4] = {id = 2103304,lv = 75},[5] = {id = 2103305,lv = 75},[6] = {id = 2103306,lv = 75},[7] = {id = 2103307,lv = 75},[8] = {id = 2103308,lv = 75}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1140130,cardId = 1101999,lv = 75,bklv = 10,star = 2,equip = {[1] = {id = 2003301,lv = 75},[2] = {id = 2003302,lv = 75},[3] = {id = 2003303,lv = 75},[4] = {id = 2003304,lv = 75},[5] = {id = 2003305,lv = 75},[6] = {id = 2003306,lv = 75},[7] = {id = 2003307,lv = 75},[8] = {id = 2003308,lv = 75}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-14-1-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1140131,cardId = 1102999,lv = 75,bklv = 10,star = 2,ghost = 22,equip = {[1] = {id = 2103301,lv = 75},[2] = {id = 2103302,lv = 75},[3] = {id = 2103303,lv = 75},[4] = {id = 2103304,lv = 75},[5] = {id = 2103305,lv = 75},[6] = {id = 2103306,lv = 75},[7] = {id = 2103307,lv = 75},[8] = {id = 2103308,lv = 75}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11402] = {
		[1] = {
			jlr = {id = 1140210,cardId = 1101999,lv = 75,bklv = 10,star = 2,equip = {[1] = {id = 2003301,lv = 75},[2] = {id = 2003302,lv = 75},[3] = {id = 2003303,lv = 75},[4] = {id = 2003304,lv = 75},[5] = {id = 2003305,lv = 75},[6] = {id = 2003306,lv = 75},[7] = {id = 2003307,lv = 75},[8] = {id = 2003308,lv = 75}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-14-2-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1140211,cardId = 1102999,lv = 75,bklv = 10,star = 2,ghost = 22,equip = {[1] = {id = 2103301,lv = 75},[2] = {id = 2103302,lv = 75},[3] = {id = 2103303,lv = 75},[4] = {id = 2103304,lv = 75},[5] = {id = 2103305,lv = 75},[6] = {id = 2103306,lv = 75},[7] = {id = 2103307,lv = 75},[8] = {id = 2103308,lv = 75}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1140220,cardId = 1101999,lv = 75,bklv = 10,star = 2,equip = {[1] = {id = 2003301,lv = 75},[2] = {id = 2003302,lv = 75},[3] = {id = 2003303,lv = 75},[4] = {id = 2003304,lv = 75},[5] = {id = 2003305,lv = 75},[6] = {id = 2003306,lv = 75},[7] = {id = 2003307,lv = 75},[8] = {id = 2003308,lv = 75}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-14-2-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1140221,cardId = 1102999,lv = 75,bklv = 10,star = 2,ghost = 22,equip = {[1] = {id = 2103301,lv = 75},[2] = {id = 2103302,lv = 75},[3] = {id = 2103303,lv = 75},[4] = {id = 2103304,lv = 75},[5] = {id = 2103305,lv = 75},[6] = {id = 2103306,lv = 75},[7] = {id = 2103307,lv = 75},[8] = {id = 2103308,lv = 75}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1140230,cardId = 1101999,lv = 75,bklv = 10,star = 2,equip = {[1] = {id = 2003301,lv = 75},[2] = {id = 2003302,lv = 75},[3] = {id = 2003303,lv = 75},[4] = {id = 2003304,lv = 75},[5] = {id = 2003305,lv = 75},[6] = {id = 2003306,lv = 75},[7] = {id = 2003307,lv = 75},[8] = {id = 2003308,lv = 75}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-14-2-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1140231,cardId = 1102999,lv = 75,bklv = 10,star = 2,ghost = 22,equip = {[1] = {id = 2103301,lv = 75},[2] = {id = 2103302,lv = 75},[3] = {id = 2103303,lv = 75},[4] = {id = 2103304,lv = 75},[5] = {id = 2103305,lv = 75},[6] = {id = 2103306,lv = 75},[7] = {id = 2103307,lv = 75},[8] = {id = 2103308,lv = 75}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11403] = {
		[1] = {
			jlr = {id = 1140310,cardId = 1101999,lv = 76,bklv = 10,star = 2,equip = {[1] = {id = 2003301,lv = 76},[2] = {id = 2003302,lv = 76},[3] = {id = 2003303,lv = 76},[4] = {id = 2003304,lv = 76},[5] = {id = 2003305,lv = 76},[6] = {id = 2003306,lv = 76},[7] = {id = 2003307,lv = 76},[8] = {id = 2003308,lv = 76}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-14-3-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1140311,cardId = 1102999,lv = 75,bklv = 10,star = 2,ghost = 22,equip = {[1] = {id = 2104301,lv = 76},[2] = {id = 2104302,lv = 76},[3] = {id = 2104303,lv = 76},[4] = {id = 2104304,lv = 76},[5] = {id = 2104305,lv = 76},[6] = {id = 2104306,lv = 76},[7] = {id = 2104307,lv = 76},[8] = {id = 2104308,lv = 76}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1140320,cardId = 1101998,lv = 76,bklv = 10,star = 2,equip = {[1] = {id = 2003301,lv = 76},[2] = {id = 2003302,lv = 76},[3] = {id = 2003303,lv = 76},[4] = {id = 2003304,lv = 76},[5] = {id = 2003305,lv = 76},[6] = {id = 2003306,lv = 76},[7] = {id = 2003307,lv = 76},[8] = {id = 2003308,lv = 76}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-14-3-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1140321,cardId = 1102998,lv = 80,bklv = 11,star = 2,ghost = 23,equip = {[1] = {id = 2104301,lv = 76},[2] = {id = 2104302,lv = 76},[3] = {id = 2104303,lv = 76},[4] = {id = 2104304,lv = 76},[5] = {id = 2104305,lv = 76},[6] = {id = 2104306,lv = 76},[7] = {id = 2104307,lv = 76},[8] = {id = 2104308,lv = 76}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1140330,cardId = 1101999,lv = 76,bklv = 10,star = 2,equip = {[1] = {id = 2003301,lv = 76},[2] = {id = 2003302,lv = 76},[3] = {id = 2003303,lv = 76},[4] = {id = 2003304,lv = 76},[5] = {id = 2003305,lv = 76},[6] = {id = 2003306,lv = 76},[7] = {id = 2003307,lv = 76},[8] = {id = 2003308,lv = 76}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-14-3-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1140331,cardId = 1102999,lv = 75,bklv = 10,star = 2,ghost = 22,equip = {[1] = {id = 2104301,lv = 76},[2] = {id = 2104302,lv = 76},[3] = {id = 2104303,lv = 76},[4] = {id = 2104304,lv = 76},[5] = {id = 2104305,lv = 76},[6] = {id = 2104306,lv = 76},[7] = {id = 2104307,lv = 76},[8] = {id = 2104308,lv = 76}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11404] = {
		[1] = {
			jlr = {id = 1140410,cardId = 1101999,lv = 77,bklv = 10,star = 2,equip = {[1] = {id = 2003301,lv = 77},[2] = {id = 2003302,lv = 77},[3] = {id = 2003303,lv = 77},[4] = {id = 2003304,lv = 77},[5] = {id = 2003305,lv = 77},[6] = {id = 2003306,lv = 77},[7] = {id = 2003307,lv = 77},[8] = {id = 2003308,lv = 77}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-14-4-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1140411,cardId = 1102999,lv = 75,bklv = 10,star = 2,ghost = 23,equip = {[1] = {id = 2104301,lv = 77},[2] = {id = 2104302,lv = 77},[3] = {id = 2104303,lv = 77},[4] = {id = 2104304,lv = 77},[5] = {id = 2104305,lv = 77},[6] = {id = 2104306,lv = 77},[7] = {id = 2104307,lv = 77},[8] = {id = 2104308,lv = 77}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1140420,cardId = 1101999,lv = 77,bklv = 10,star = 3,equip = {[1] = {id = 2003301,lv = 77},[2] = {id = 2003302,lv = 77},[3] = {id = 2003303,lv = 77},[4] = {id = 2003304,lv = 77},[5] = {id = 2003305,lv = 77},[6] = {id = 2003306,lv = 77},[7] = {id = 2003307,lv = 77},[8] = {id = 2003308,lv = 77}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-14-4-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1140421,cardId = 1102999,lv = 80,bklv = 11,star = 3,ghost = 23,equip = {[1] = {id = 2104301,lv = 77},[2] = {id = 2104302,lv = 77},[3] = {id = 2104303,lv = 77},[4] = {id = 2104304,lv = 77},[5] = {id = 2104305,lv = 77},[6] = {id = 2104306,lv = 77},[7] = {id = 2104307,lv = 77},[8] = {id = 2104308,lv = 77}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1140430,cardId = 1101999,lv = 77,bklv = 10,star = 2,equip = {[1] = {id = 2003301,lv = 77},[2] = {id = 2003302,lv = 77},[3] = {id = 2003303,lv = 77},[4] = {id = 2003304,lv = 77},[5] = {id = 2003305,lv = 77},[6] = {id = 2003306,lv = 77},[7] = {id = 2003307,lv = 77},[8] = {id = 2003308,lv = 77}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-14-4-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1140431,cardId = 1102999,lv = 75,bklv = 10,star = 2,ghost = 22,equip = {[1] = {id = 2104301,lv = 77},[2] = {id = 2104302,lv = 77},[3] = {id = 2104303,lv = 77},[4] = {id = 2104304,lv = 77},[5] = {id = 2104305,lv = 77},[6] = {id = 2104306,lv = 77},[7] = {id = 2104307,lv = 77},[8] = {id = 2104308,lv = 77}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11405] = {
		[1] = {
			jlr = {id = 1140510,cardId = 1101999,lv = 77,bklv = 10,star = 2,equip = {[1] = {id = 2003301,lv = 77},[2] = {id = 2003302,lv = 77},[3] = {id = 2003303,lv = 77},[4] = {id = 2003304,lv = 77},[5] = {id = 2003305,lv = 77},[6] = {id = 2003306,lv = 77},[7] = {id = 2003307,lv = 77},[8] = {id = 2003308,lv = 77}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-14-5-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1140511,cardId = 1102999,lv = 75,bklv = 10,star = 2,ghost = 23,equip = {[1] = {id = 2104301,lv = 77},[2] = {id = 2104302,lv = 77},[3] = {id = 2104303,lv = 77},[4] = {id = 2104304,lv = 77},[5] = {id = 2104305,lv = 77},[6] = {id = 2104306,lv = 77},[7] = {id = 2104307,lv = 77},[8] = {id = 2104308,lv = 77}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1140520,cardId = 1101999,lv = 77,bklv = 10,star = 3,equip = {[1] = {id = 2003301,lv = 77},[2] = {id = 2003302,lv = 77},[3] = {id = 2003303,lv = 77},[4] = {id = 2003304,lv = 77},[5] = {id = 2003305,lv = 77},[6] = {id = 2003306,lv = 77},[7] = {id = 2003307,lv = 77},[8] = {id = 2003308,lv = 77}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-14-5-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1140521,cardId = 1102999,lv = 80,bklv = 11,star = 3,ghost = 23,equip = {[1] = {id = 2104301,lv = 77},[2] = {id = 2104302,lv = 77},[3] = {id = 2104303,lv = 77},[4] = {id = 2104304,lv = 77},[5] = {id = 2104305,lv = 77},[6] = {id = 2104306,lv = 77},[7] = {id = 2104307,lv = 77},[8] = {id = 2104308,lv = 77}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1140530,cardId = 1101999,lv = 77,bklv = 10,star = 2,equip = {[1] = {id = 2003301,lv = 77},[2] = {id = 2003302,lv = 77},[3] = {id = 2003303,lv = 77},[4] = {id = 2003304,lv = 77},[5] = {id = 2003305,lv = 77},[6] = {id = 2003306,lv = 77},[7] = {id = 2003307,lv = 77},[8] = {id = 2003308,lv = 77}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-14-5-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1140531,cardId = 1102999,lv = 75,bklv = 10,star = 2,ghost = 23,equip = {[1] = {id = 2104301,lv = 77},[2] = {id = 2104302,lv = 77},[3] = {id = 2104303,lv = 77},[4] = {id = 2104304,lv = 77},[5] = {id = 2104305,lv = 77},[6] = {id = 2104306,lv = 77},[7] = {id = 2104307,lv = 77},[8] = {id = 2104308,lv = 77}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11406] = {
		[1] = {
			jlr = {id = 1140610,cardId = 1101998,lv = 78,bklv = 10,star = 2,equip = {[1] = {id = 2003301,lv = 78},[2] = {id = 2003302,lv = 78},[3] = {id = 2003303,lv = 78},[4] = {id = 2003304,lv = 78},[5] = {id = 2003305,lv = 78},[6] = {id = 2003306,lv = 78},[7] = {id = 2003307,lv = 78},[8] = {id = 2003308,lv = 78}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-14-6-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1140611,cardId = 1102998,lv = 80,bklv = 11,star = 2,ghost = 23,equip = {[1] = {id = 2104301,lv = 78},[2] = {id = 2104302,lv = 78},[3] = {id = 2104303,lv = 78},[4] = {id = 2104304,lv = 78},[5] = {id = 2104305,lv = 78},[6] = {id = 2104306,lv = 78},[7] = {id = 2104307,lv = 78},[8] = {id = 2104308,lv = 78}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1140620,cardId = 1101998,lv = 78,bklv = 10,star = 2,equip = {[1] = {id = 2003301,lv = 78},[2] = {id = 2003302,lv = 78},[3] = {id = 2003303,lv = 78},[4] = {id = 2003304,lv = 78},[5] = {id = 2003305,lv = 78},[6] = {id = 2003306,lv = 78},[7] = {id = 2003307,lv = 78},[8] = {id = 2003308,lv = 78}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-14-6-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1140621,cardId = 1102998,lv = 80,bklv = 11,star = 2,ghost = 24,equip = {[1] = {id = 2104301,lv = 78},[2] = {id = 2104302,lv = 78},[3] = {id = 2104303,lv = 78},[4] = {id = 2104304,lv = 78},[5] = {id = 2104305,lv = 78},[6] = {id = 2104306,lv = 78},[7] = {id = 2104307,lv = 78},[8] = {id = 2104308,lv = 78}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1140630,cardId = 1101998,lv = 78,bklv = 10,star = 2,equip = {[1] = {id = 2003301,lv = 78},[2] = {id = 2003302,lv = 78},[3] = {id = 2003303,lv = 78},[4] = {id = 2003304,lv = 78},[5] = {id = 2003305,lv = 78},[6] = {id = 2003306,lv = 78},[7] = {id = 2003307,lv = 78},[8] = {id = 2003308,lv = 78}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-14-6-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1140631,cardId = 1102998,lv = 75,bklv = 10,star = 2,ghost = 23,equip = {[1] = {id = 2104301,lv = 78},[2] = {id = 2104302,lv = 78},[3] = {id = 2104303,lv = 78},[4] = {id = 2104304,lv = 78},[5] = {id = 2104305,lv = 78},[6] = {id = 2104306,lv = 78},[7] = {id = 2104307,lv = 78},[8] = {id = 2104308,lv = 78}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11407] = {
		[1] = {
			jlr = {id = 1140710,cardId = 1101999,lv = 79,bklv = 10,star = 3,equip = {[1] = {id = 2003301,lv = 79},[2] = {id = 2003302,lv = 79},[3] = {id = 2003303,lv = 79},[4] = {id = 2003304,lv = 79},[5] = {id = 2003305,lv = 79},[6] = {id = 2003306,lv = 79},[7] = {id = 2003307,lv = 79},[8] = {id = 2003308,lv = 79}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-14-7-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1140711,cardId = 1102999,lv = 80,bklv = 11,star = 3,ghost = 23,equip = {[1] = {id = 2104301,lv = 79},[2] = {id = 2104302,lv = 79},[3] = {id = 2104303,lv = 79},[4] = {id = 2104304,lv = 79},[5] = {id = 2104305,lv = 79},[6] = {id = 2104306,lv = 79},[7] = {id = 2104307,lv = 79},[8] = {id = 2104308,lv = 79}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1140720,cardId = 1101999,lv = 79,bklv = 10,star = 3,equip = {[1] = {id = 2003301,lv = 79},[2] = {id = 2003302,lv = 79},[3] = {id = 2003303,lv = 79},[4] = {id = 2003304,lv = 79},[5] = {id = 2003305,lv = 79},[6] = {id = 2003306,lv = 79},[7] = {id = 2003307,lv = 79},[8] = {id = 2003308,lv = 79}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-14-7-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1140721,cardId = 1102999,lv = 80,bklv = 11,star = 3,ghost = 24,equip = {[1] = {id = 2104301,lv = 79},[2] = {id = 2104302,lv = 79},[3] = {id = 2104303,lv = 79},[4] = {id = 2104304,lv = 79},[5] = {id = 2104305,lv = 79},[6] = {id = 2104306,lv = 79},[7] = {id = 2104307,lv = 79},[8] = {id = 2104308,lv = 79}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1140730,cardId = 1101999,lv = 79,bklv = 10,star = 2,equip = {[1] = {id = 2003301,lv = 79},[2] = {id = 2003302,lv = 79},[3] = {id = 2003303,lv = 79},[4] = {id = 2003304,lv = 79},[5] = {id = 2003305,lv = 79},[6] = {id = 2003306,lv = 79},[7] = {id = 2003307,lv = 79},[8] = {id = 2003308,lv = 79}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-14-7-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1140731,cardId = 1102999,lv = 75,bklv = 10,star = 2,ghost = 23,equip = {[1] = {id = 2104301,lv = 79},[2] = {id = 2104302,lv = 79},[3] = {id = 2104303,lv = 79},[4] = {id = 2104304,lv = 79},[5] = {id = 2104305,lv = 79},[6] = {id = 2104306,lv = 79},[7] = {id = 2104307,lv = 79},[8] = {id = 2104308,lv = 79}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11408] = {
		[1] = {
			jlr = {id = 1140810,cardId = 1101999,lv = 79,bklv = 10,star = 3,equip = {[1] = {id = 2003301,lv = 79},[2] = {id = 2003302,lv = 79},[3] = {id = 2003303,lv = 79},[4] = {id = 2003304,lv = 79},[5] = {id = 2003305,lv = 79},[6] = {id = 2003306,lv = 79},[7] = {id = 2003307,lv = 79},[8] = {id = 2003308,lv = 79}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-14-8-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1140811,cardId = 1102999,lv = 80,bklv = 11,star = 3,ghost = 23,equip = {[1] = {id = 2104301,lv = 79},[2] = {id = 2104302,lv = 79},[3] = {id = 2104303,lv = 79},[4] = {id = 2104304,lv = 79},[5] = {id = 2104305,lv = 79},[6] = {id = 2104306,lv = 79},[7] = {id = 2104307,lv = 79},[8] = {id = 2104308,lv = 79}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1140820,cardId = 1101999,lv = 79,bklv = 10,star = 3,equip = {[1] = {id = 2003301,lv = 79},[2] = {id = 2003302,lv = 79},[3] = {id = 2003303,lv = 79},[4] = {id = 2003304,lv = 79},[5] = {id = 2003305,lv = 79},[6] = {id = 2003306,lv = 79},[7] = {id = 2003307,lv = 79},[8] = {id = 2003308,lv = 79}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-14-8-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1140821,cardId = 1102999,lv = 80,bklv = 11,star = 3,ghost = 24,equip = {[1] = {id = 2104301,lv = 79},[2] = {id = 2104302,lv = 79},[3] = {id = 2104303,lv = 79},[4] = {id = 2104304,lv = 79},[5] = {id = 2104305,lv = 79},[6] = {id = 2104306,lv = 79},[7] = {id = 2104307,lv = 79},[8] = {id = 2104308,lv = 79}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1140830,cardId = 1101999,lv = 79,bklv = 10,star = 2,equip = {[1] = {id = 2003301,lv = 79},[2] = {id = 2003302,lv = 79},[3] = {id = 2003303,lv = 79},[4] = {id = 2003304,lv = 79},[5] = {id = 2003305,lv = 79},[6] = {id = 2003306,lv = 79},[7] = {id = 2003307,lv = 79},[8] = {id = 2003308,lv = 79}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-14-8-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1140831,cardId = 1102999,lv = 75,bklv = 10,star = 2,ghost = 23,equip = {[1] = {id = 2104301,lv = 79},[2] = {id = 2104302,lv = 79},[3] = {id = 2104303,lv = 79},[4] = {id = 2104304,lv = 79},[5] = {id = 2104305,lv = 79},[6] = {id = 2104306,lv = 79},[7] = {id = 2104307,lv = 79},[8] = {id = 2104308,lv = 79}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11409] = {
		[1] = {
			jlr = {id = 1140910,cardId = 1101998,lv = 80,bklv = 10,star = 2,equip = {[1] = {id = 2003301,lv = 80},[2] = {id = 2003302,lv = 80},[3] = {id = 2003303,lv = 80},[4] = {id = 2003304,lv = 80},[5] = {id = 2003305,lv = 80},[6] = {id = 2003306,lv = 80},[7] = {id = 2003307,lv = 80},[8] = {id = 2003308,lv = 80}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-14-9-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1140911,cardId = 1102998,lv = 80,bklv = 11,star = 2,ghost = 24,equip = {[1] = {id = 2104301,lv = 80},[2] = {id = 2104302,lv = 80},[3] = {id = 2104303,lv = 80},[4] = {id = 2104304,lv = 80},[5] = {id = 2104305,lv = 80},[6] = {id = 2104306,lv = 80},[7] = {id = 2104307,lv = 80},[8] = {id = 2104308,lv = 80}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1140920,cardId = 1101997,lv = 80,bklv = 10,star = 2,equip = {[1] = {id = 2003301,lv = 80},[2] = {id = 2003302,lv = 80},[3] = {id = 2003303,lv = 80},[4] = {id = 2003304,lv = 80},[5] = {id = 2003305,lv = 80},[6] = {id = 2003306,lv = 80},[7] = {id = 2003307,lv = 80},[8] = {id = 2003308,lv = 80}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-14-9-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1140921,cardId = 1102997,lv = 80,bklv = 11,star = 2,ghost = 24,equip = {[1] = {id = 2104301,lv = 80},[2] = {id = 2104302,lv = 80},[3] = {id = 2104303,lv = 80},[4] = {id = 2104304,lv = 80},[5] = {id = 2104305,lv = 80},[6] = {id = 2104306,lv = 80},[7] = {id = 2104307,lv = 80},[8] = {id = 2104308,lv = 80}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1140930,cardId = 1101998,lv = 80,bklv = 10,star = 2,equip = {[1] = {id = 2003301,lv = 80},[2] = {id = 2003302,lv = 80},[3] = {id = 2003303,lv = 80},[4] = {id = 2003304,lv = 80},[5] = {id = 2003305,lv = 80},[6] = {id = 2003306,lv = 80},[7] = {id = 2003307,lv = 80},[8] = {id = 2003308,lv = 80}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-14-9-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1140931,cardId = 1102998,lv = 80,bklv = 11,star = 2,ghost = 24,equip = {[1] = {id = 2104301,lv = 80},[2] = {id = 2104302,lv = 80},[3] = {id = 2104303,lv = 80},[4] = {id = 2104304,lv = 80},[5] = {id = 2104305,lv = 80},[6] = {id = 2104306,lv = 80},[7] = {id = 2104307,lv = 80},[8] = {id = 2104308,lv = 80}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11410] = {
		[1] = {
			jlr = {id = 1141010,cardId = 1101997,lv = 80,bklv = 10,star = 2,equip = {[1] = {id = 2003301,lv = 80},[2] = {id = 2003302,lv = 80},[3] = {id = 2003303,lv = 80},[4] = {id = 2003304,lv = 80},[5] = {id = 2003305,lv = 80},[6] = {id = 2003306,lv = 80},[7] = {id = 2003307,lv = 80},[8] = {id = 2003308,lv = 80}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-14-10-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1141011,cardId = 1102997,lv = 80,bklv = 11,star = 2,ghost = 24,equip = {[1] = {id = 2104301,lv = 80},[2] = {id = 2104302,lv = 80},[3] = {id = 2104303,lv = 80},[4] = {id = 2104304,lv = 80},[5] = {id = 2104305,lv = 80},[6] = {id = 2104306,lv = 80},[7] = {id = 2104307,lv = 80},[8] = {id = 2104308,lv = 80}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1141020,cardId = 1101997,lv = 80,bklv = 10,star = 2,equip = {[1] = {id = 2003301,lv = 80},[2] = {id = 2003302,lv = 80},[3] = {id = 2003303,lv = 80},[4] = {id = 2003304,lv = 80},[5] = {id = 2003305,lv = 80},[6] = {id = 2003306,lv = 80},[7] = {id = 2003307,lv = 80},[8] = {id = 2003308,lv = 80}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-14-10-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1141021,cardId = 1102997,lv = 80,bklv = 11,star = 2,ghost = 24,equip = {[1] = {id = 2104301,lv = 80},[2] = {id = 2104302,lv = 80},[3] = {id = 2104303,lv = 80},[4] = {id = 2104304,lv = 80},[5] = {id = 2104305,lv = 80},[6] = {id = 2104306,lv = 80},[7] = {id = 2104307,lv = 80},[8] = {id = 2104308,lv = 80}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1141030,cardId = 1101997,lv = 80,bklv = 10,star = 2,equip = {[1] = {id = 2003301,lv = 80},[2] = {id = 2003302,lv = 80},[3] = {id = 2003303,lv = 80},[4] = {id = 2003304,lv = 80},[5] = {id = 2003305,lv = 80},[6] = {id = 2003306,lv = 80},[7] = {id = 2003307,lv = 80},[8] = {id = 2003308,lv = 80}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-14-10-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1141031,cardId = 1102997,lv = 80,bklv = 11,star = 2,ghost = 24,equip = {[1] = {id = 2104301,lv = 80},[2] = {id = 2104302,lv = 80},[3] = {id = 2104303,lv = 80},[4] = {id = 2104304,lv = 80},[5] = {id = 2104305,lv = 80},[6] = {id = 2104306,lv = 80},[7] = {id = 2104307,lv = 80},[8] = {id = 2104308,lv = 80}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11501] = {
		[1] = {
			jlr = {id = 1150110,cardId = 1101999,lv = 80,bklv = 10,star = 3,equip = {[1] = {id = 2003301,lv = 80},[2] = {id = 2003302,lv = 80},[3] = {id = 2003303,lv = 80},[4] = {id = 2003304,lv = 80},[5] = {id = 2003305,lv = 80},[6] = {id = 2003306,lv = 80},[7] = {id = 2003307,lv = 80},[8] = {id = 2003308,lv = 80}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-15-1-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1150111,cardId = 1102999,lv = 80,bklv = 11,star = 3,ghost = 24,equip = {[1] = {id = 2104301,lv = 80},[2] = {id = 2104302,lv = 80},[3] = {id = 2104303,lv = 80},[4] = {id = 2104304,lv = 80},[5] = {id = 2104305,lv = 80},[6] = {id = 2104306,lv = 80},[7] = {id = 2104307,lv = 80},[8] = {id = 2104308,lv = 80}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1150120,cardId = 1101999,lv = 80,bklv = 10,star = 3,equip = {[1] = {id = 2003301,lv = 80},[2] = {id = 2003302,lv = 80},[3] = {id = 2003303,lv = 80},[4] = {id = 2003304,lv = 80},[5] = {id = 2003305,lv = 80},[6] = {id = 2003306,lv = 80},[7] = {id = 2003307,lv = 80},[8] = {id = 2003308,lv = 80}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-15-1-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1150121,cardId = 1102999,lv = 80,bklv = 11,star = 3,ghost = 24,equip = {[1] = {id = 2104301,lv = 80},[2] = {id = 2104302,lv = 80},[3] = {id = 2104303,lv = 80},[4] = {id = 2104304,lv = 80},[5] = {id = 2104305,lv = 80},[6] = {id = 2104306,lv = 80},[7] = {id = 2104307,lv = 80},[8] = {id = 2104308,lv = 80}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1150130,cardId = 1101999,lv = 80,bklv = 10,star = 3,equip = {[1] = {id = 2003301,lv = 80},[2] = {id = 2003302,lv = 80},[3] = {id = 2003303,lv = 80},[4] = {id = 2003304,lv = 80},[5] = {id = 2003305,lv = 80},[6] = {id = 2003306,lv = 80},[7] = {id = 2003307,lv = 80},[8] = {id = 2003308,lv = 80}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-15-1-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1150131,cardId = 1102999,lv = 80,bklv = 11,star = 3,ghost = 24,equip = {[1] = {id = 2104301,lv = 80},[2] = {id = 2104302,lv = 80},[3] = {id = 2104303,lv = 80},[4] = {id = 2104304,lv = 80},[5] = {id = 2104305,lv = 80},[6] = {id = 2104306,lv = 80},[7] = {id = 2104307,lv = 80},[8] = {id = 2104308,lv = 80}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11502] = {
		[1] = {
			jlr = {id = 1150210,cardId = 1101999,lv = 80,bklv = 10,star = 3,equip = {[1] = {id = 2003301,lv = 80},[2] = {id = 2003302,lv = 80},[3] = {id = 2003303,lv = 80},[4] = {id = 2003304,lv = 80},[5] = {id = 2003305,lv = 80},[6] = {id = 2003306,lv = 80},[7] = {id = 2003307,lv = 80},[8] = {id = 2003308,lv = 80}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-15-2-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1150211,cardId = 1102999,lv = 80,bklv = 11,star = 3,ghost = 24,equip = {[1] = {id = 2104301,lv = 80},[2] = {id = 2104302,lv = 80},[3] = {id = 2104303,lv = 80},[4] = {id = 2104304,lv = 80},[5] = {id = 2104305,lv = 80},[6] = {id = 2104306,lv = 80},[7] = {id = 2104307,lv = 80},[8] = {id = 2104308,lv = 80}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1150220,cardId = 1101999,lv = 80,bklv = 10,star = 3,equip = {[1] = {id = 2003301,lv = 80},[2] = {id = 2003302,lv = 80},[3] = {id = 2003303,lv = 80},[4] = {id = 2003304,lv = 80},[5] = {id = 2003305,lv = 80},[6] = {id = 2003306,lv = 80},[7] = {id = 2003307,lv = 80},[8] = {id = 2003308,lv = 80}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-15-2-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1150221,cardId = 1102999,lv = 80,bklv = 11,star = 3,ghost = 24,equip = {[1] = {id = 2104301,lv = 80},[2] = {id = 2104302,lv = 80},[3] = {id = 2104303,lv = 80},[4] = {id = 2104304,lv = 80},[5] = {id = 2104305,lv = 80},[6] = {id = 2104306,lv = 80},[7] = {id = 2104307,lv = 80},[8] = {id = 2104308,lv = 80}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1150230,cardId = 1101999,lv = 80,bklv = 10,star = 3,equip = {[1] = {id = 2003301,lv = 80},[2] = {id = 2003302,lv = 80},[3] = {id = 2003303,lv = 80},[4] = {id = 2003304,lv = 80},[5] = {id = 2003305,lv = 80},[6] = {id = 2003306,lv = 80},[7] = {id = 2003307,lv = 80},[8] = {id = 2003308,lv = 80}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-15-2-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1150231,cardId = 1102999,lv = 80,bklv = 11,star = 3,ghost = 24,equip = {[1] = {id = 2104301,lv = 80},[2] = {id = 2104302,lv = 80},[3] = {id = 2104303,lv = 80},[4] = {id = 2104304,lv = 80},[5] = {id = 2104305,lv = 80},[6] = {id = 2104306,lv = 80},[7] = {id = 2104307,lv = 80},[8] = {id = 2104308,lv = 80}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11503] = {
		[1] = {
			jlr = {id = 1150310,cardId = 1101999,lv = 81,bklv = 10,star = 3,equip = {[1] = {id = 2003301,lv = 81},[2] = {id = 2003302,lv = 81},[3] = {id = 2003303,lv = 81},[4] = {id = 2003304,lv = 81},[5] = {id = 2003305,lv = 81},[6] = {id = 2003306,lv = 81},[7] = {id = 2003307,lv = 81},[8] = {id = 2003308,lv = 81}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-15-3-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1150311,cardId = 1102999,lv = 80,bklv = 11,star = 3,ghost = 24,equip = {[1] = {id = 2104301,lv = 81},[2] = {id = 2104302,lv = 81},[3] = {id = 2104303,lv = 81},[4] = {id = 2104304,lv = 81},[5] = {id = 2104305,lv = 81},[6] = {id = 2104306,lv = 81},[7] = {id = 2104307,lv = 81},[8] = {id = 2104308,lv = 81}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1150320,cardId = 1101998,lv = 81,bklv = 10,star = 2,equip = {[1] = {id = 2003301,lv = 81},[2] = {id = 2003302,lv = 81},[3] = {id = 2003303,lv = 81},[4] = {id = 2003304,lv = 81},[5] = {id = 2003305,lv = 81},[6] = {id = 2003306,lv = 81},[7] = {id = 2003307,lv = 81},[8] = {id = 2003308,lv = 81}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-15-3-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1150321,cardId = 1102998,lv = 85,bklv = 12,star = 2,ghost = 25,equip = {[1] = {id = 2104301,lv = 81},[2] = {id = 2104302,lv = 81},[3] = {id = 2104303,lv = 81},[4] = {id = 2104304,lv = 81},[5] = {id = 2104305,lv = 81},[6] = {id = 2104306,lv = 81},[7] = {id = 2104307,lv = 81},[8] = {id = 2104308,lv = 81}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1150330,cardId = 1101999,lv = 81,bklv = 10,star = 3,equip = {[1] = {id = 2003301,lv = 81},[2] = {id = 2003302,lv = 81},[3] = {id = 2003303,lv = 81},[4] = {id = 2003304,lv = 81},[5] = {id = 2003305,lv = 81},[6] = {id = 2003306,lv = 81},[7] = {id = 2003307,lv = 81},[8] = {id = 2003308,lv = 81}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-15-3-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1150331,cardId = 1102999,lv = 80,bklv = 11,star = 3,ghost = 24,equip = {[1] = {id = 2104301,lv = 81},[2] = {id = 2104302,lv = 81},[3] = {id = 2104303,lv = 81},[4] = {id = 2104304,lv = 81},[5] = {id = 2104305,lv = 81},[6] = {id = 2104306,lv = 81},[7] = {id = 2104307,lv = 81},[8] = {id = 2104308,lv = 81}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11504] = {
		[1] = {
			jlr = {id = 1150410,cardId = 1101999,lv = 82,bklv = 10,star = 3,equip = {[1] = {id = 2003301,lv = 82},[2] = {id = 2003302,lv = 82},[3] = {id = 2003303,lv = 82},[4] = {id = 2003304,lv = 82},[5] = {id = 2003305,lv = 82},[6] = {id = 2003306,lv = 82},[7] = {id = 2003307,lv = 82},[8] = {id = 2003308,lv = 82}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-15-4-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1150411,cardId = 1102999,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2104301,lv = 82},[2] = {id = 2104302,lv = 82},[3] = {id = 2104303,lv = 82},[4] = {id = 2104304,lv = 82},[5] = {id = 2104305,lv = 82},[6] = {id = 2104306,lv = 82},[7] = {id = 2104307,lv = 82},[8] = {id = 2104308,lv = 82}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1150420,cardId = 1101999,lv = 82,bklv = 10,star = 3,equip = {[1] = {id = 2003301,lv = 82},[2] = {id = 2003302,lv = 82},[3] = {id = 2003303,lv = 82},[4] = {id = 2003304,lv = 82},[5] = {id = 2003305,lv = 82},[6] = {id = 2003306,lv = 82},[7] = {id = 2003307,lv = 82},[8] = {id = 2003308,lv = 82}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-15-4-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1150421,cardId = 1102999,lv = 85,bklv = 12,star = 3,ghost = 25,equip = {[1] = {id = 2104301,lv = 82},[2] = {id = 2104302,lv = 82},[3] = {id = 2104303,lv = 82},[4] = {id = 2104304,lv = 82},[5] = {id = 2104305,lv = 82},[6] = {id = 2104306,lv = 82},[7] = {id = 2104307,lv = 82},[8] = {id = 2104308,lv = 82}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1150430,cardId = 1101999,lv = 82,bklv = 10,star = 3,equip = {[1] = {id = 2003301,lv = 82},[2] = {id = 2003302,lv = 82},[3] = {id = 2003303,lv = 82},[4] = {id = 2003304,lv = 82},[5] = {id = 2003305,lv = 82},[6] = {id = 2003306,lv = 82},[7] = {id = 2003307,lv = 82},[8] = {id = 2003308,lv = 82}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-15-4-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1150431,cardId = 1102999,lv = 80,bklv = 11,star = 3,ghost = 24,equip = {[1] = {id = 2104301,lv = 82},[2] = {id = 2104302,lv = 82},[3] = {id = 2104303,lv = 82},[4] = {id = 2104304,lv = 82},[5] = {id = 2104305,lv = 82},[6] = {id = 2104306,lv = 82},[7] = {id = 2104307,lv = 82},[8] = {id = 2104308,lv = 82}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11505] = {
		[1] = {
			jlr = {id = 1150510,cardId = 1101999,lv = 82,bklv = 10,star = 3,equip = {[1] = {id = 2003301,lv = 82},[2] = {id = 2003302,lv = 82},[3] = {id = 2003303,lv = 82},[4] = {id = 2003304,lv = 82},[5] = {id = 2003305,lv = 82},[6] = {id = 2003306,lv = 82},[7] = {id = 2003307,lv = 82},[8] = {id = 2003308,lv = 82}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-15-5-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1150511,cardId = 1102999,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2104301,lv = 82},[2] = {id = 2104302,lv = 82},[3] = {id = 2104303,lv = 82},[4] = {id = 2104304,lv = 82},[5] = {id = 2104305,lv = 82},[6] = {id = 2104306,lv = 82},[7] = {id = 2104307,lv = 82},[8] = {id = 2104308,lv = 82}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1150520,cardId = 1101999,lv = 82,bklv = 10,star = 3,equip = {[1] = {id = 2003301,lv = 82},[2] = {id = 2003302,lv = 82},[3] = {id = 2003303,lv = 82},[4] = {id = 2003304,lv = 82},[5] = {id = 2003305,lv = 82},[6] = {id = 2003306,lv = 82},[7] = {id = 2003307,lv = 82},[8] = {id = 2003308,lv = 82}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-15-5-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1150521,cardId = 1102999,lv = 85,bklv = 12,star = 3,ghost = 25,equip = {[1] = {id = 2104301,lv = 82},[2] = {id = 2104302,lv = 82},[3] = {id = 2104303,lv = 82},[4] = {id = 2104304,lv = 82},[5] = {id = 2104305,lv = 82},[6] = {id = 2104306,lv = 82},[7] = {id = 2104307,lv = 82},[8] = {id = 2104308,lv = 82}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1150530,cardId = 1101999,lv = 82,bklv = 10,star = 3,equip = {[1] = {id = 2003301,lv = 82},[2] = {id = 2003302,lv = 82},[3] = {id = 2003303,lv = 82},[4] = {id = 2003304,lv = 82},[5] = {id = 2003305,lv = 82},[6] = {id = 2003306,lv = 82},[7] = {id = 2003307,lv = 82},[8] = {id = 2003308,lv = 82}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-15-5-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1150531,cardId = 1102999,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2104301,lv = 82},[2] = {id = 2104302,lv = 82},[3] = {id = 2104303,lv = 82},[4] = {id = 2104304,lv = 82},[5] = {id = 2104305,lv = 82},[6] = {id = 2104306,lv = 82},[7] = {id = 2104307,lv = 82},[8] = {id = 2104308,lv = 82}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11506] = {
		[1] = {
			jlr = {id = 1150610,cardId = 1101998,lv = 83,bklv = 11,star = 2,equip = {[1] = {id = 2004301,lv = 83},[2] = {id = 2004302,lv = 83},[3] = {id = 2004303,lv = 83},[4] = {id = 2004304,lv = 83},[5] = {id = 2004305,lv = 83},[6] = {id = 2004306,lv = 83},[7] = {id = 2004307,lv = 83},[8] = {id = 2004308,lv = 83}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-15-6-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1150611,cardId = 1102998,lv = 85,bklv = 12,star = 2,ghost = 25,equip = {[1] = {id = 2104301,lv = 83},[2] = {id = 2104302,lv = 83},[3] = {id = 2104303,lv = 83},[4] = {id = 2104304,lv = 83},[5] = {id = 2104305,lv = 83},[6] = {id = 2104306,lv = 83},[7] = {id = 2104307,lv = 83},[8] = {id = 2104308,lv = 83}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1150620,cardId = 1101998,lv = 83,bklv = 11,star = 2,equip = {[1] = {id = 2004301,lv = 83},[2] = {id = 2004302,lv = 83},[3] = {id = 2004303,lv = 83},[4] = {id = 2004304,lv = 83},[5] = {id = 2004305,lv = 83},[6] = {id = 2004306,lv = 83},[7] = {id = 2004307,lv = 83},[8] = {id = 2004308,lv = 83}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-15-6-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1150621,cardId = 1102998,lv = 85,bklv = 12,star = 2,ghost = 26,equip = {[1] = {id = 2104301,lv = 83},[2] = {id = 2104302,lv = 83},[3] = {id = 2104303,lv = 83},[4] = {id = 2104304,lv = 83},[5] = {id = 2104305,lv = 83},[6] = {id = 2104306,lv = 83},[7] = {id = 2104307,lv = 83},[8] = {id = 2104308,lv = 83}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1150630,cardId = 1101998,lv = 83,bklv = 11,star = 2,equip = {[1] = {id = 2004301,lv = 83},[2] = {id = 2004302,lv = 83},[3] = {id = 2004303,lv = 83},[4] = {id = 2004304,lv = 83},[5] = {id = 2004305,lv = 83},[6] = {id = 2004306,lv = 83},[7] = {id = 2004307,lv = 83},[8] = {id = 2004308,lv = 83}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-15-6-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1150631,cardId = 1102998,lv = 80,bklv = 11,star = 2,ghost = 25,equip = {[1] = {id = 2104301,lv = 83},[2] = {id = 2104302,lv = 83},[3] = {id = 2104303,lv = 83},[4] = {id = 2104304,lv = 83},[5] = {id = 2104305,lv = 83},[6] = {id = 2104306,lv = 83},[7] = {id = 2104307,lv = 83},[8] = {id = 2104308,lv = 83}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11507] = {
		[1] = {
			jlr = {id = 1150710,cardId = 1101999,lv = 84,bklv = 11,star = 3,equip = {[1] = {id = 2004301,lv = 84},[2] = {id = 2004302,lv = 84},[3] = {id = 2004303,lv = 84},[4] = {id = 2004304,lv = 84},[5] = {id = 2004305,lv = 84},[6] = {id = 2004306,lv = 84},[7] = {id = 2004307,lv = 84},[8] = {id = 2004308,lv = 84}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-15-7-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1150711,cardId = 1102999,lv = 85,bklv = 12,star = 3,ghost = 25,equip = {[1] = {id = 2104301,lv = 84},[2] = {id = 2104302,lv = 84},[3] = {id = 2104303,lv = 84},[4] = {id = 2104304,lv = 84},[5] = {id = 2104305,lv = 84},[6] = {id = 2104306,lv = 84},[7] = {id = 2104307,lv = 84},[8] = {id = 2104308,lv = 84}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1150720,cardId = 1101999,lv = 84,bklv = 11,star = 3,equip = {[1] = {id = 2004301,lv = 84},[2] = {id = 2004302,lv = 84},[3] = {id = 2004303,lv = 84},[4] = {id = 2004304,lv = 84},[5] = {id = 2004305,lv = 84},[6] = {id = 2004306,lv = 84},[7] = {id = 2004307,lv = 84},[8] = {id = 2004308,lv = 84}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-15-7-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1150721,cardId = 1102999,lv = 85,bklv = 12,star = 3,ghost = 26,equip = {[1] = {id = 2104301,lv = 84},[2] = {id = 2104302,lv = 84},[3] = {id = 2104303,lv = 84},[4] = {id = 2104304,lv = 84},[5] = {id = 2104305,lv = 84},[6] = {id = 2104306,lv = 84},[7] = {id = 2104307,lv = 84},[8] = {id = 2104308,lv = 84}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1150730,cardId = 1101999,lv = 84,bklv = 11,star = 3,equip = {[1] = {id = 2004301,lv = 84},[2] = {id = 2004302,lv = 84},[3] = {id = 2004303,lv = 84},[4] = {id = 2004304,lv = 84},[5] = {id = 2004305,lv = 84},[6] = {id = 2004306,lv = 84},[7] = {id = 2004307,lv = 84},[8] = {id = 2004308,lv = 84}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-15-7-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1150731,cardId = 1102999,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2104301,lv = 84},[2] = {id = 2104302,lv = 84},[3] = {id = 2104303,lv = 84},[4] = {id = 2104304,lv = 84},[5] = {id = 2104305,lv = 84},[6] = {id = 2104306,lv = 84},[7] = {id = 2104307,lv = 84},[8] = {id = 2104308,lv = 84}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11508] = {
		[1] = {
			jlr = {id = 1150810,cardId = 1101999,lv = 84,bklv = 11,star = 3,equip = {[1] = {id = 2004301,lv = 84},[2] = {id = 2004302,lv = 84},[3] = {id = 2004303,lv = 84},[4] = {id = 2004304,lv = 84},[5] = {id = 2004305,lv = 84},[6] = {id = 2004306,lv = 84},[7] = {id = 2004307,lv = 84},[8] = {id = 2004308,lv = 84}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-15-8-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1150811,cardId = 1102999,lv = 85,bklv = 12,star = 3,ghost = 25,equip = {[1] = {id = 2104301,lv = 84},[2] = {id = 2104302,lv = 84},[3] = {id = 2104303,lv = 84},[4] = {id = 2104304,lv = 84},[5] = {id = 2104305,lv = 84},[6] = {id = 2104306,lv = 84},[7] = {id = 2104307,lv = 84},[8] = {id = 2104308,lv = 84}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1150820,cardId = 1101999,lv = 84,bklv = 11,star = 3,equip = {[1] = {id = 2004301,lv = 84},[2] = {id = 2004302,lv = 84},[3] = {id = 2004303,lv = 84},[4] = {id = 2004304,lv = 84},[5] = {id = 2004305,lv = 84},[6] = {id = 2004306,lv = 84},[7] = {id = 2004307,lv = 84},[8] = {id = 2004308,lv = 84}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-15-8-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1150821,cardId = 1102999,lv = 85,bklv = 12,star = 3,ghost = 26,equip = {[1] = {id = 2104301,lv = 84},[2] = {id = 2104302,lv = 84},[3] = {id = 2104303,lv = 84},[4] = {id = 2104304,lv = 84},[5] = {id = 2104305,lv = 84},[6] = {id = 2104306,lv = 84},[7] = {id = 2104307,lv = 84},[8] = {id = 2104308,lv = 84}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1150830,cardId = 1101999,lv = 84,bklv = 11,star = 3,equip = {[1] = {id = 2004301,lv = 84},[2] = {id = 2004302,lv = 84},[3] = {id = 2004303,lv = 84},[4] = {id = 2004304,lv = 84},[5] = {id = 2004305,lv = 84},[6] = {id = 2004306,lv = 84},[7] = {id = 2004307,lv = 84},[8] = {id = 2004308,lv = 84}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-15-8-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1150831,cardId = 1102999,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2104301,lv = 84},[2] = {id = 2104302,lv = 84},[3] = {id = 2104303,lv = 84},[4] = {id = 2104304,lv = 84},[5] = {id = 2104305,lv = 84},[6] = {id = 2104306,lv = 84},[7] = {id = 2104307,lv = 84},[8] = {id = 2104308,lv = 84}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11509] = {
		[1] = {
			jlr = {id = 1150910,cardId = 1101998,lv = 85,bklv = 11,star = 2,equip = {[1] = {id = 2004301,lv = 85},[2] = {id = 2004302,lv = 85},[3] = {id = 2004303,lv = 85},[4] = {id = 2004304,lv = 85},[5] = {id = 2004305,lv = 85},[6] = {id = 2004306,lv = 85},[7] = {id = 2004307,lv = 85},[8] = {id = 2004308,lv = 85}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-15-9-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1150911,cardId = 1102998,lv = 85,bklv = 12,star = 2,ghost = 26,equip = {[1] = {id = 2104301,lv = 85},[2] = {id = 2104302,lv = 85},[3] = {id = 2104303,lv = 85},[4] = {id = 2104304,lv = 85},[5] = {id = 2104305,lv = 85},[6] = {id = 2104306,lv = 85},[7] = {id = 2104307,lv = 85},[8] = {id = 2104308,lv = 85}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1150920,cardId = 1101997,lv = 85,bklv = 11,star = 2,equip = {[1] = {id = 2004301,lv = 85},[2] = {id = 2004302,lv = 85},[3] = {id = 2004303,lv = 85},[4] = {id = 2004304,lv = 85},[5] = {id = 2004305,lv = 85},[6] = {id = 2004306,lv = 85},[7] = {id = 2004307,lv = 85},[8] = {id = 2004308,lv = 85}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-15-9-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1150921,cardId = 1102997,lv = 85,bklv = 12,star = 2,ghost = 26,equip = {[1] = {id = 2104301,lv = 85},[2] = {id = 2104302,lv = 85},[3] = {id = 2104303,lv = 85},[4] = {id = 2104304,lv = 85},[5] = {id = 2104305,lv = 85},[6] = {id = 2104306,lv = 85},[7] = {id = 2104307,lv = 85},[8] = {id = 2104308,lv = 85}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1150930,cardId = 1101998,lv = 85,bklv = 11,star = 2,equip = {[1] = {id = 2004301,lv = 85},[2] = {id = 2004302,lv = 85},[3] = {id = 2004303,lv = 85},[4] = {id = 2004304,lv = 85},[5] = {id = 2004305,lv = 85},[6] = {id = 2004306,lv = 85},[7] = {id = 2004307,lv = 85},[8] = {id = 2004308,lv = 85}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-15-9-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1150931,cardId = 1102998,lv = 85,bklv = 12,star = 2,ghost = 26,equip = {[1] = {id = 2104301,lv = 85},[2] = {id = 2104302,lv = 85},[3] = {id = 2104303,lv = 85},[4] = {id = 2104304,lv = 85},[5] = {id = 2104305,lv = 85},[6] = {id = 2104306,lv = 85},[7] = {id = 2104307,lv = 85},[8] = {id = 2104308,lv = 85}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11510] = {
		[1] = {
			jlr = {id = 1151010,cardId = 1101997,lv = 85,bklv = 11,star = 2,equip = {[1] = {id = 2004301,lv = 85},[2] = {id = 2004302,lv = 85},[3] = {id = 2004303,lv = 85},[4] = {id = 2004304,lv = 85},[5] = {id = 2004305,lv = 85},[6] = {id = 2004306,lv = 85},[7] = {id = 2004307,lv = 85},[8] = {id = 2004308,lv = 85}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-15-10-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1151011,cardId = 1102997,lv = 85,bklv = 12,star = 2,ghost = 26,equip = {[1] = {id = 2104301,lv = 85},[2] = {id = 2104302,lv = 85},[3] = {id = 2104303,lv = 85},[4] = {id = 2104304,lv = 85},[5] = {id = 2104305,lv = 85},[6] = {id = 2104306,lv = 85},[7] = {id = 2104307,lv = 85},[8] = {id = 2104308,lv = 85}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1151020,cardId = 1101997,lv = 85,bklv = 11,star = 2,equip = {[1] = {id = 2004301,lv = 85},[2] = {id = 2004302,lv = 85},[3] = {id = 2004303,lv = 85},[4] = {id = 2004304,lv = 85},[5] = {id = 2004305,lv = 85},[6] = {id = 2004306,lv = 85},[7] = {id = 2004307,lv = 85},[8] = {id = 2004308,lv = 85}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-15-10-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1151021,cardId = 1102997,lv = 85,bklv = 12,star = 2,ghost = 26,equip = {[1] = {id = 2104301,lv = 85},[2] = {id = 2104302,lv = 85},[3] = {id = 2104303,lv = 85},[4] = {id = 2104304,lv = 85},[5] = {id = 2104305,lv = 85},[6] = {id = 2104306,lv = 85},[7] = {id = 2104307,lv = 85},[8] = {id = 2104308,lv = 85}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1151030,cardId = 1101997,lv = 85,bklv = 11,star = 2,equip = {[1] = {id = 2004301,lv = 85},[2] = {id = 2004302,lv = 85},[3] = {id = 2004303,lv = 85},[4] = {id = 2004304,lv = 85},[5] = {id = 2004305,lv = 85},[6] = {id = 2004306,lv = 85},[7] = {id = 2004307,lv = 85},[8] = {id = 2004308,lv = 85}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-15-10-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1151031,cardId = 1102997,lv = 85,bklv = 12,star = 2,ghost = 26,equip = {[1] = {id = 2104301,lv = 85},[2] = {id = 2104302,lv = 85},[3] = {id = 2104303,lv = 85},[4] = {id = 2104304,lv = 85},[5] = {id = 2104305,lv = 85},[6] = {id = 2104306,lv = 85},[7] = {id = 2104307,lv = 85},[8] = {id = 2104308,lv = 85}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11601] = {
		[1] = {
			jlr = {id = 1160110,cardId = 1101999,lv = 85,bklv = 11,star = 3,equip = {[1] = {id = 2004301,lv = 85},[2] = {id = 2004302,lv = 85},[3] = {id = 2004303,lv = 85},[4] = {id = 2004304,lv = 85},[5] = {id = 2004305,lv = 85},[6] = {id = 2004306,lv = 85},[7] = {id = 2004307,lv = 85},[8] = {id = 2004308,lv = 85}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-16-1-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1160111,cardId = 1102999,lv = 85,bklv = 12,star = 3,ghost = 26,equip = {[1] = {id = 2104301,lv = 85},[2] = {id = 2104302,lv = 85},[3] = {id = 2104303,lv = 85},[4] = {id = 2104304,lv = 85},[5] = {id = 2104305,lv = 85},[6] = {id = 2104306,lv = 85},[7] = {id = 2104307,lv = 85},[8] = {id = 2104308,lv = 85}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1160120,cardId = 1101999,lv = 85,bklv = 11,star = 3,equip = {[1] = {id = 2004301,lv = 85},[2] = {id = 2004302,lv = 85},[3] = {id = 2004303,lv = 85},[4] = {id = 2004304,lv = 85},[5] = {id = 2004305,lv = 85},[6] = {id = 2004306,lv = 85},[7] = {id = 2004307,lv = 85},[8] = {id = 2004308,lv = 85}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-16-1-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1160121,cardId = 1102999,lv = 85,bklv = 12,star = 3,ghost = 26,equip = {[1] = {id = 2104301,lv = 85},[2] = {id = 2104302,lv = 85},[3] = {id = 2104303,lv = 85},[4] = {id = 2104304,lv = 85},[5] = {id = 2104305,lv = 85},[6] = {id = 2104306,lv = 85},[7] = {id = 2104307,lv = 85},[8] = {id = 2104308,lv = 85}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1160130,cardId = 1101999,lv = 85,bklv = 11,star = 3,equip = {[1] = {id = 2004301,lv = 85},[2] = {id = 2004302,lv = 85},[3] = {id = 2004303,lv = 85},[4] = {id = 2004304,lv = 85},[5] = {id = 2004305,lv = 85},[6] = {id = 2004306,lv = 85},[7] = {id = 2004307,lv = 85},[8] = {id = 2004308,lv = 85}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-16-1-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1160131,cardId = 1102999,lv = 85,bklv = 12,star = 3,ghost = 26,equip = {[1] = {id = 2104301,lv = 85},[2] = {id = 2104302,lv = 85},[3] = {id = 2104303,lv = 85},[4] = {id = 2104304,lv = 85},[5] = {id = 2104305,lv = 85},[6] = {id = 2104306,lv = 85},[7] = {id = 2104307,lv = 85},[8] = {id = 2104308,lv = 85}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11602] = {
		[1] = {
			jlr = {id = 1160210,cardId = 1101999,lv = 85,bklv = 11,star = 3,equip = {[1] = {id = 2004301,lv = 85},[2] = {id = 2004302,lv = 85},[3] = {id = 2004303,lv = 85},[4] = {id = 2004304,lv = 85},[5] = {id = 2004305,lv = 85},[6] = {id = 2004306,lv = 85},[7] = {id = 2004307,lv = 85},[8] = {id = 2004308,lv = 85}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-16-2-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1160211,cardId = 1102999,lv = 85,bklv = 12,star = 3,ghost = 26,equip = {[1] = {id = 2104301,lv = 85},[2] = {id = 2104302,lv = 85},[3] = {id = 2104303,lv = 85},[4] = {id = 2104304,lv = 85},[5] = {id = 2104305,lv = 85},[6] = {id = 2104306,lv = 85},[7] = {id = 2104307,lv = 85},[8] = {id = 2104308,lv = 85}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1160220,cardId = 1101999,lv = 85,bklv = 11,star = 3,equip = {[1] = {id = 2004301,lv = 85},[2] = {id = 2004302,lv = 85},[3] = {id = 2004303,lv = 85},[4] = {id = 2004304,lv = 85},[5] = {id = 2004305,lv = 85},[6] = {id = 2004306,lv = 85},[7] = {id = 2004307,lv = 85},[8] = {id = 2004308,lv = 85}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-16-2-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1160221,cardId = 1102999,lv = 85,bklv = 12,star = 3,ghost = 26,equip = {[1] = {id = 2104301,lv = 85},[2] = {id = 2104302,lv = 85},[3] = {id = 2104303,lv = 85},[4] = {id = 2104304,lv = 85},[5] = {id = 2104305,lv = 85},[6] = {id = 2104306,lv = 85},[7] = {id = 2104307,lv = 85},[8] = {id = 2104308,lv = 85}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1160230,cardId = 1101999,lv = 85,bklv = 11,star = 3,equip = {[1] = {id = 2004301,lv = 85},[2] = {id = 2004302,lv = 85},[3] = {id = 2004303,lv = 85},[4] = {id = 2004304,lv = 85},[5] = {id = 2004305,lv = 85},[6] = {id = 2004306,lv = 85},[7] = {id = 2004307,lv = 85},[8] = {id = 2004308,lv = 85}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-16-2-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1160231,cardId = 1102999,lv = 85,bklv = 12,star = 3,ghost = 26,equip = {[1] = {id = 2104301,lv = 85},[2] = {id = 2104302,lv = 85},[3] = {id = 2104303,lv = 85},[4] = {id = 2104304,lv = 85},[5] = {id = 2104305,lv = 85},[6] = {id = 2104306,lv = 85},[7] = {id = 2104307,lv = 85},[8] = {id = 2104308,lv = 85}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11603] = {
		[1] = {
			jlr = {id = 1160310,cardId = 1101999,lv = 86,bklv = 11,star = 3,equip = {[1] = {id = 2004301,lv = 86},[2] = {id = 2004302,lv = 86},[3] = {id = 2004303,lv = 86},[4] = {id = 2004304,lv = 86},[5] = {id = 2004305,lv = 86},[6] = {id = 2004306,lv = 86},[7] = {id = 2004307,lv = 86},[8] = {id = 2004308,lv = 86}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-16-3-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1160311,cardId = 1102999,lv = 85,bklv = 12,star = 3,ghost = 26,equip = {[1] = {id = 2105301,lv = 86},[2] = {id = 2105302,lv = 86},[3] = {id = 2105303,lv = 86},[4] = {id = 2105304,lv = 86},[5] = {id = 2105305,lv = 86},[6] = {id = 2105306,lv = 86},[7] = {id = 2105307,lv = 86},[8] = {id = 2105308,lv = 86}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1160320,cardId = 1101998,lv = 86,bklv = 11,star = 3,equip = {[1] = {id = 2004301,lv = 86},[2] = {id = 2004302,lv = 86},[3] = {id = 2004303,lv = 86},[4] = {id = 2004304,lv = 86},[5] = {id = 2004305,lv = 86},[6] = {id = 2004306,lv = 86},[7] = {id = 2004307,lv = 86},[8] = {id = 2004308,lv = 86}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-16-3-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1160321,cardId = 1102998,lv = 90,bklv = 12,star = 3,ghost = 27,equip = {[1] = {id = 2105301,lv = 86},[2] = {id = 2105302,lv = 86},[3] = {id = 2105303,lv = 86},[4] = {id = 2105304,lv = 86},[5] = {id = 2105305,lv = 86},[6] = {id = 2105306,lv = 86},[7] = {id = 2105307,lv = 86},[8] = {id = 2105308,lv = 86}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1160330,cardId = 1101999,lv = 86,bklv = 11,star = 3,equip = {[1] = {id = 2004301,lv = 86},[2] = {id = 2004302,lv = 86},[3] = {id = 2004303,lv = 86},[4] = {id = 2004304,lv = 86},[5] = {id = 2004305,lv = 86},[6] = {id = 2004306,lv = 86},[7] = {id = 2004307,lv = 86},[8] = {id = 2004308,lv = 86}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-16-3-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1160331,cardId = 1102999,lv = 85,bklv = 12,star = 3,ghost = 26,equip = {[1] = {id = 2105301,lv = 86},[2] = {id = 2105302,lv = 86},[3] = {id = 2105303,lv = 86},[4] = {id = 2105304,lv = 86},[5] = {id = 2105305,lv = 86},[6] = {id = 2105306,lv = 86},[7] = {id = 2105307,lv = 86},[8] = {id = 2105308,lv = 86}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11604] = {
		[1] = {
			jlr = {id = 1160410,cardId = 1101999,lv = 87,bklv = 11,star = 3,equip = {[1] = {id = 2004301,lv = 87},[2] = {id = 2004302,lv = 87},[3] = {id = 2004303,lv = 87},[4] = {id = 2004304,lv = 87},[5] = {id = 2004305,lv = 87},[6] = {id = 2004306,lv = 87},[7] = {id = 2004307,lv = 87},[8] = {id = 2004308,lv = 87}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-16-4-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1160411,cardId = 1102999,lv = 85,bklv = 12,star = 3,ghost = 27,equip = {[1] = {id = 2105301,lv = 87},[2] = {id = 2105302,lv = 87},[3] = {id = 2105303,lv = 87},[4] = {id = 2105304,lv = 87},[5] = {id = 2105305,lv = 87},[6] = {id = 2105306,lv = 87},[7] = {id = 2105307,lv = 87},[8] = {id = 2105308,lv = 87}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1160420,cardId = 1101999,lv = 87,bklv = 11,star = 3,equip = {[1] = {id = 2004301,lv = 87},[2] = {id = 2004302,lv = 87},[3] = {id = 2004303,lv = 87},[4] = {id = 2004304,lv = 87},[5] = {id = 2004305,lv = 87},[6] = {id = 2004306,lv = 87},[7] = {id = 2004307,lv = 87},[8] = {id = 2004308,lv = 87}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-16-4-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1160421,cardId = 1102999,lv = 90,bklv = 12,star = 3,ghost = 27,equip = {[1] = {id = 2105301,lv = 87},[2] = {id = 2105302,lv = 87},[3] = {id = 2105303,lv = 87},[4] = {id = 2105304,lv = 87},[5] = {id = 2105305,lv = 87},[6] = {id = 2105306,lv = 87},[7] = {id = 2105307,lv = 87},[8] = {id = 2105308,lv = 87}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1160430,cardId = 1101999,lv = 87,bklv = 11,star = 3,equip = {[1] = {id = 2004301,lv = 87},[2] = {id = 2004302,lv = 87},[3] = {id = 2004303,lv = 87},[4] = {id = 2004304,lv = 87},[5] = {id = 2004305,lv = 87},[6] = {id = 2004306,lv = 87},[7] = {id = 2004307,lv = 87},[8] = {id = 2004308,lv = 87}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-16-4-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1160431,cardId = 1102999,lv = 85,bklv = 12,star = 3,ghost = 26,equip = {[1] = {id = 2105301,lv = 87},[2] = {id = 2105302,lv = 87},[3] = {id = 2105303,lv = 87},[4] = {id = 2105304,lv = 87},[5] = {id = 2105305,lv = 87},[6] = {id = 2105306,lv = 87},[7] = {id = 2105307,lv = 87},[8] = {id = 2105308,lv = 87}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11605] = {
		[1] = {
			jlr = {id = 1160510,cardId = 1101999,lv = 87,bklv = 11,star = 3,equip = {[1] = {id = 2004301,lv = 87},[2] = {id = 2004302,lv = 87},[3] = {id = 2004303,lv = 87},[4] = {id = 2004304,lv = 87},[5] = {id = 2004305,lv = 87},[6] = {id = 2004306,lv = 87},[7] = {id = 2004307,lv = 87},[8] = {id = 2004308,lv = 87}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-16-5-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1160511,cardId = 1102999,lv = 85,bklv = 12,star = 3,ghost = 27,equip = {[1] = {id = 2105301,lv = 87},[2] = {id = 2105302,lv = 87},[3] = {id = 2105303,lv = 87},[4] = {id = 2105304,lv = 87},[5] = {id = 2105305,lv = 87},[6] = {id = 2105306,lv = 87},[7] = {id = 2105307,lv = 87},[8] = {id = 2105308,lv = 87}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1160520,cardId = 1101999,lv = 87,bklv = 11,star = 3,equip = {[1] = {id = 2004301,lv = 87},[2] = {id = 2004302,lv = 87},[3] = {id = 2004303,lv = 87},[4] = {id = 2004304,lv = 87},[5] = {id = 2004305,lv = 87},[6] = {id = 2004306,lv = 87},[7] = {id = 2004307,lv = 87},[8] = {id = 2004308,lv = 87}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-16-5-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1160521,cardId = 1102999,lv = 90,bklv = 12,star = 3,ghost = 27,equip = {[1] = {id = 2105301,lv = 87},[2] = {id = 2105302,lv = 87},[3] = {id = 2105303,lv = 87},[4] = {id = 2105304,lv = 87},[5] = {id = 2105305,lv = 87},[6] = {id = 2105306,lv = 87},[7] = {id = 2105307,lv = 87},[8] = {id = 2105308,lv = 87}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1160530,cardId = 1101999,lv = 87,bklv = 11,star = 3,equip = {[1] = {id = 2004301,lv = 87},[2] = {id = 2004302,lv = 87},[3] = {id = 2004303,lv = 87},[4] = {id = 2004304,lv = 87},[5] = {id = 2004305,lv = 87},[6] = {id = 2004306,lv = 87},[7] = {id = 2004307,lv = 87},[8] = {id = 2004308,lv = 87}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-16-5-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1160531,cardId = 1102999,lv = 85,bklv = 12,star = 3,ghost = 27,equip = {[1] = {id = 2105301,lv = 87},[2] = {id = 2105302,lv = 87},[3] = {id = 2105303,lv = 87},[4] = {id = 2105304,lv = 87},[5] = {id = 2105305,lv = 87},[6] = {id = 2105306,lv = 87},[7] = {id = 2105307,lv = 87},[8] = {id = 2105308,lv = 87}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11606] = {
		[1] = {
			jlr = {id = 1160610,cardId = 1101998,lv = 88,bklv = 12,star = 3,equip = {[1] = {id = 2004301,lv = 88},[2] = {id = 2004302,lv = 88},[3] = {id = 2004303,lv = 88},[4] = {id = 2004304,lv = 88},[5] = {id = 2004305,lv = 88},[6] = {id = 2004306,lv = 88},[7] = {id = 2004307,lv = 88},[8] = {id = 2004308,lv = 88}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-16-6-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1160611,cardId = 1102998,lv = 90,bklv = 12,star = 3,ghost = 27,equip = {[1] = {id = 2105301,lv = 88},[2] = {id = 2105302,lv = 88},[3] = {id = 2105303,lv = 88},[4] = {id = 2105304,lv = 88},[5] = {id = 2105305,lv = 88},[6] = {id = 2105306,lv = 88},[7] = {id = 2105307,lv = 88},[8] = {id = 2105308,lv = 88}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1160620,cardId = 1101998,lv = 88,bklv = 12,star = 3,equip = {[1] = {id = 2004301,lv = 88},[2] = {id = 2004302,lv = 88},[3] = {id = 2004303,lv = 88},[4] = {id = 2004304,lv = 88},[5] = {id = 2004305,lv = 88},[6] = {id = 2004306,lv = 88},[7] = {id = 2004307,lv = 88},[8] = {id = 2004308,lv = 88}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-16-6-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1160621,cardId = 1102998,lv = 90,bklv = 12,star = 3,ghost = 28,equip = {[1] = {id = 2105301,lv = 88},[2] = {id = 2105302,lv = 88},[3] = {id = 2105303,lv = 88},[4] = {id = 2105304,lv = 88},[5] = {id = 2105305,lv = 88},[6] = {id = 2105306,lv = 88},[7] = {id = 2105307,lv = 88},[8] = {id = 2105308,lv = 88}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1160630,cardId = 1101998,lv = 88,bklv = 12,star = 2,equip = {[1] = {id = 2004301,lv = 88},[2] = {id = 2004302,lv = 88},[3] = {id = 2004303,lv = 88},[4] = {id = 2004304,lv = 88},[5] = {id = 2004305,lv = 88},[6] = {id = 2004306,lv = 88},[7] = {id = 2004307,lv = 88},[8] = {id = 2004308,lv = 88}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-16-6-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1160631,cardId = 1102998,lv = 85,bklv = 12,star = 2,ghost = 27,equip = {[1] = {id = 2105301,lv = 88},[2] = {id = 2105302,lv = 88},[3] = {id = 2105303,lv = 88},[4] = {id = 2105304,lv = 88},[5] = {id = 2105305,lv = 88},[6] = {id = 2105306,lv = 88},[7] = {id = 2105307,lv = 88},[8] = {id = 2105308,lv = 88}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11607] = {
		[1] = {
			jlr = {id = 1160710,cardId = 1101999,lv = 89,bklv = 12,star = 3,equip = {[1] = {id = 2004301,lv = 89},[2] = {id = 2004302,lv = 89},[3] = {id = 2004303,lv = 89},[4] = {id = 2004304,lv = 89},[5] = {id = 2004305,lv = 89},[6] = {id = 2004306,lv = 89},[7] = {id = 2004307,lv = 89},[8] = {id = 2004308,lv = 89}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-16-7-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1160711,cardId = 1102999,lv = 90,bklv = 12,star = 3,ghost = 27,equip = {[1] = {id = 2105301,lv = 89},[2] = {id = 2105302,lv = 89},[3] = {id = 2105303,lv = 89},[4] = {id = 2105304,lv = 89},[5] = {id = 2105305,lv = 89},[6] = {id = 2105306,lv = 89},[7] = {id = 2105307,lv = 89},[8] = {id = 2105308,lv = 89}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1160720,cardId = 1101999,lv = 89,bklv = 12,star = 3,equip = {[1] = {id = 2004301,lv = 89},[2] = {id = 2004302,lv = 89},[3] = {id = 2004303,lv = 89},[4] = {id = 2004304,lv = 89},[5] = {id = 2004305,lv = 89},[6] = {id = 2004306,lv = 89},[7] = {id = 2004307,lv = 89},[8] = {id = 2004308,lv = 89}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-16-7-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1160721,cardId = 1102999,lv = 90,bklv = 12,star = 3,ghost = 28,equip = {[1] = {id = 2105301,lv = 89},[2] = {id = 2105302,lv = 89},[3] = {id = 2105303,lv = 89},[4] = {id = 2105304,lv = 89},[5] = {id = 2105305,lv = 89},[6] = {id = 2105306,lv = 89},[7] = {id = 2105307,lv = 89},[8] = {id = 2105308,lv = 89}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1160730,cardId = 1101999,lv = 89,bklv = 12,star = 3,equip = {[1] = {id = 2004301,lv = 89},[2] = {id = 2004302,lv = 89},[3] = {id = 2004303,lv = 89},[4] = {id = 2004304,lv = 89},[5] = {id = 2004305,lv = 89},[6] = {id = 2004306,lv = 89},[7] = {id = 2004307,lv = 89},[8] = {id = 2004308,lv = 89}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-16-7-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1160731,cardId = 1102999,lv = 85,bklv = 12,star = 3,ghost = 27,equip = {[1] = {id = 2105301,lv = 89},[2] = {id = 2105302,lv = 89},[3] = {id = 2105303,lv = 89},[4] = {id = 2105304,lv = 89},[5] = {id = 2105305,lv = 89},[6] = {id = 2105306,lv = 89},[7] = {id = 2105307,lv = 89},[8] = {id = 2105308,lv = 89}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11608] = {
		[1] = {
			jlr = {id = 1160810,cardId = 1101999,lv = 89,bklv = 12,star = 3,equip = {[1] = {id = 2004301,lv = 89},[2] = {id = 2004302,lv = 89},[3] = {id = 2004303,lv = 89},[4] = {id = 2004304,lv = 89},[5] = {id = 2004305,lv = 89},[6] = {id = 2004306,lv = 89},[7] = {id = 2004307,lv = 89},[8] = {id = 2004308,lv = 89}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-16-8-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1160811,cardId = 1102999,lv = 90,bklv = 12,star = 3,ghost = 27,equip = {[1] = {id = 2105301,lv = 89},[2] = {id = 2105302,lv = 89},[3] = {id = 2105303,lv = 89},[4] = {id = 2105304,lv = 89},[5] = {id = 2105305,lv = 89},[6] = {id = 2105306,lv = 89},[7] = {id = 2105307,lv = 89},[8] = {id = 2105308,lv = 89}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1160820,cardId = 1101999,lv = 89,bklv = 12,star = 3,equip = {[1] = {id = 2004301,lv = 89},[2] = {id = 2004302,lv = 89},[3] = {id = 2004303,lv = 89},[4] = {id = 2004304,lv = 89},[5] = {id = 2004305,lv = 89},[6] = {id = 2004306,lv = 89},[7] = {id = 2004307,lv = 89},[8] = {id = 2004308,lv = 89}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-16-8-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1160821,cardId = 1102999,lv = 90,bklv = 12,star = 3,ghost = 28,equip = {[1] = {id = 2105301,lv = 89},[2] = {id = 2105302,lv = 89},[3] = {id = 2105303,lv = 89},[4] = {id = 2105304,lv = 89},[5] = {id = 2105305,lv = 89},[6] = {id = 2105306,lv = 89},[7] = {id = 2105307,lv = 89},[8] = {id = 2105308,lv = 89}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1160830,cardId = 1101999,lv = 89,bklv = 12,star = 3,equip = {[1] = {id = 2004301,lv = 89},[2] = {id = 2004302,lv = 89},[3] = {id = 2004303,lv = 89},[4] = {id = 2004304,lv = 89},[5] = {id = 2004305,lv = 89},[6] = {id = 2004306,lv = 89},[7] = {id = 2004307,lv = 89},[8] = {id = 2004308,lv = 89}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-16-8-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1160831,cardId = 1102999,lv = 85,bklv = 12,star = 3,ghost = 27,equip = {[1] = {id = 2105301,lv = 89},[2] = {id = 2105302,lv = 89},[3] = {id = 2105303,lv = 89},[4] = {id = 2105304,lv = 89},[5] = {id = 2105305,lv = 89},[6] = {id = 2105306,lv = 89},[7] = {id = 2105307,lv = 89},[8] = {id = 2105308,lv = 89}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11609] = {
		[1] = {
			jlr = {id = 1160910,cardId = 1101998,lv = 90,bklv = 12,star = 3,equip = {[1] = {id = 2004301,lv = 90},[2] = {id = 2004302,lv = 90},[3] = {id = 2004303,lv = 90},[4] = {id = 2004304,lv = 90},[5] = {id = 2004305,lv = 90},[6] = {id = 2004306,lv = 90},[7] = {id = 2004307,lv = 90},[8] = {id = 2004308,lv = 90}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-16-9-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1160911,cardId = 1102998,lv = 90,bklv = 12,star = 3,ghost = 28,equip = {[1] = {id = 2105301,lv = 90},[2] = {id = 2105302,lv = 90},[3] = {id = 2105303,lv = 90},[4] = {id = 2105304,lv = 90},[5] = {id = 2105305,lv = 90},[6] = {id = 2105306,lv = 90},[7] = {id = 2105307,lv = 90},[8] = {id = 2105308,lv = 90}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1160920,cardId = 1101997,lv = 90,bklv = 12,star = 2,equip = {[1] = {id = 2004301,lv = 90},[2] = {id = 2004302,lv = 90},[3] = {id = 2004303,lv = 90},[4] = {id = 2004304,lv = 90},[5] = {id = 2004305,lv = 90},[6] = {id = 2004306,lv = 90},[7] = {id = 2004307,lv = 90},[8] = {id = 2004308,lv = 90}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-16-9-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1160921,cardId = 1102997,lv = 90,bklv = 12,star = 2,ghost = 28,equip = {[1] = {id = 2105301,lv = 90},[2] = {id = 2105302,lv = 90},[3] = {id = 2105303,lv = 90},[4] = {id = 2105304,lv = 90},[5] = {id = 2105305,lv = 90},[6] = {id = 2105306,lv = 90},[7] = {id = 2105307,lv = 90},[8] = {id = 2105308,lv = 90}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1160930,cardId = 1101998,lv = 90,bklv = 12,star = 3,equip = {[1] = {id = 2004301,lv = 90},[2] = {id = 2004302,lv = 90},[3] = {id = 2004303,lv = 90},[4] = {id = 2004304,lv = 90},[5] = {id = 2004305,lv = 90},[6] = {id = 2004306,lv = 90},[7] = {id = 2004307,lv = 90},[8] = {id = 2004308,lv = 90}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-16-9-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1160931,cardId = 1102998,lv = 90,bklv = 12,star = 3,ghost = 28,equip = {[1] = {id = 2105301,lv = 90},[2] = {id = 2105302,lv = 90},[3] = {id = 2105303,lv = 90},[4] = {id = 2105304,lv = 90},[5] = {id = 2105305,lv = 90},[6] = {id = 2105306,lv = 90},[7] = {id = 2105307,lv = 90},[8] = {id = 2105308,lv = 90}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11610] = {
		[1] = {
			jlr = {id = 1161010,cardId = 1101997,lv = 90,bklv = 12,star = 2,equip = {[1] = {id = 2004301,lv = 90},[2] = {id = 2004302,lv = 90},[3] = {id = 2004303,lv = 90},[4] = {id = 2004304,lv = 90},[5] = {id = 2004305,lv = 90},[6] = {id = 2004306,lv = 90},[7] = {id = 2004307,lv = 90},[8] = {id = 2004308,lv = 90}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-16-10-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1161011,cardId = 1102997,lv = 90,bklv = 12,star = 2,ghost = 28,equip = {[1] = {id = 2105301,lv = 90},[2] = {id = 2105302,lv = 90},[3] = {id = 2105303,lv = 90},[4] = {id = 2105304,lv = 90},[5] = {id = 2105305,lv = 90},[6] = {id = 2105306,lv = 90},[7] = {id = 2105307,lv = 90},[8] = {id = 2105308,lv = 90}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1161020,cardId = 1101997,lv = 90,bklv = 12,star = 2,equip = {[1] = {id = 2004301,lv = 90},[2] = {id = 2004302,lv = 90},[3] = {id = 2004303,lv = 90},[4] = {id = 2004304,lv = 90},[5] = {id = 2004305,lv = 90},[6] = {id = 2004306,lv = 90},[7] = {id = 2004307,lv = 90},[8] = {id = 2004308,lv = 90}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-16-10-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1161021,cardId = 1102997,lv = 90,bklv = 12,star = 2,ghost = 28,equip = {[1] = {id = 2105301,lv = 90},[2] = {id = 2105302,lv = 90},[3] = {id = 2105303,lv = 90},[4] = {id = 2105304,lv = 90},[5] = {id = 2105305,lv = 90},[6] = {id = 2105306,lv = 90},[7] = {id = 2105307,lv = 90},[8] = {id = 2105308,lv = 90}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1161030,cardId = 1101997,lv = 90,bklv = 12,star = 2,equip = {[1] = {id = 2004301,lv = 90},[2] = {id = 2004302,lv = 90},[3] = {id = 2004303,lv = 90},[4] = {id = 2004304,lv = 90},[5] = {id = 2004305,lv = 90},[6] = {id = 2004306,lv = 90},[7] = {id = 2004307,lv = 90},[8] = {id = 2004308,lv = 90}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-16-10-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1161031,cardId = 1102997,lv = 90,bklv = 12,star = 2,ghost = 28,equip = {[1] = {id = 2105301,lv = 90},[2] = {id = 2105302,lv = 90},[3] = {id = 2105303,lv = 90},[4] = {id = 2105304,lv = 90},[5] = {id = 2105305,lv = 90},[6] = {id = 2105306,lv = 90},[7] = {id = 2105307,lv = 90},[8] = {id = 2105308,lv = 90}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11701] = {
		[1] = {
			jlr = {id = 1170110,cardId = 1101999,lv = 90,bklv = 12,star = 3,equip = {[1] = {id = 2004301,lv = 90},[2] = {id = 2004302,lv = 90},[3] = {id = 2004303,lv = 90},[4] = {id = 2004304,lv = 90},[5] = {id = 2004305,lv = 90},[6] = {id = 2004306,lv = 90},[7] = {id = 2004307,lv = 90},[8] = {id = 2004308,lv = 90}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-17-1-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1170111,cardId = 1102999,lv = 90,bklv = 12,star = 3,ghost = 28,equip = {[1] = {id = 2105301,lv = 90},[2] = {id = 2105302,lv = 90},[3] = {id = 2105303,lv = 90},[4] = {id = 2105304,lv = 90},[5] = {id = 2105305,lv = 90},[6] = {id = 2105306,lv = 90},[7] = {id = 2105307,lv = 90},[8] = {id = 2105308,lv = 90}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1170120,cardId = 1101999,lv = 90,bklv = 12,star = 3,equip = {[1] = {id = 2004301,lv = 90},[2] = {id = 2004302,lv = 90},[3] = {id = 2004303,lv = 90},[4] = {id = 2004304,lv = 90},[5] = {id = 2004305,lv = 90},[6] = {id = 2004306,lv = 90},[7] = {id = 2004307,lv = 90},[8] = {id = 2004308,lv = 90}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-17-1-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1170121,cardId = 1102999,lv = 90,bklv = 12,star = 3,ghost = 28,equip = {[1] = {id = 2105301,lv = 90},[2] = {id = 2105302,lv = 90},[3] = {id = 2105303,lv = 90},[4] = {id = 2105304,lv = 90},[5] = {id = 2105305,lv = 90},[6] = {id = 2105306,lv = 90},[7] = {id = 2105307,lv = 90},[8] = {id = 2105308,lv = 90}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1170130,cardId = 1101999,lv = 90,bklv = 12,star = 3,equip = {[1] = {id = 2004301,lv = 90},[2] = {id = 2004302,lv = 90},[3] = {id = 2004303,lv = 90},[4] = {id = 2004304,lv = 90},[5] = {id = 2004305,lv = 90},[6] = {id = 2004306,lv = 90},[7] = {id = 2004307,lv = 90},[8] = {id = 2004308,lv = 90}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-17-1-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1170131,cardId = 1102999,lv = 90,bklv = 12,star = 3,ghost = 28,equip = {[1] = {id = 2105301,lv = 90},[2] = {id = 2105302,lv = 90},[3] = {id = 2105303,lv = 90},[4] = {id = 2105304,lv = 90},[5] = {id = 2105305,lv = 90},[6] = {id = 2105306,lv = 90},[7] = {id = 2105307,lv = 90},[8] = {id = 2105308,lv = 90}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11702] = {
		[1] = {
			jlr = {id = 1170210,cardId = 1101999,lv = 90,bklv = 12,star = 3,equip = {[1] = {id = 2004301,lv = 90},[2] = {id = 2004302,lv = 90},[3] = {id = 2004303,lv = 90},[4] = {id = 2004304,lv = 90},[5] = {id = 2004305,lv = 90},[6] = {id = 2004306,lv = 90},[7] = {id = 2004307,lv = 90},[8] = {id = 2004308,lv = 90}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-17-2-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1170211,cardId = 1102999,lv = 90,bklv = 12,star = 3,ghost = 28,equip = {[1] = {id = 2105301,lv = 90},[2] = {id = 2105302,lv = 90},[3] = {id = 2105303,lv = 90},[4] = {id = 2105304,lv = 90},[5] = {id = 2105305,lv = 90},[6] = {id = 2105306,lv = 90},[7] = {id = 2105307,lv = 90},[8] = {id = 2105308,lv = 90}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1170220,cardId = 1101999,lv = 90,bklv = 12,star = 3,equip = {[1] = {id = 2004301,lv = 90},[2] = {id = 2004302,lv = 90},[3] = {id = 2004303,lv = 90},[4] = {id = 2004304,lv = 90},[5] = {id = 2004305,lv = 90},[6] = {id = 2004306,lv = 90},[7] = {id = 2004307,lv = 90},[8] = {id = 2004308,lv = 90}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-17-2-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1170221,cardId = 1102999,lv = 90,bklv = 12,star = 3,ghost = 28,equip = {[1] = {id = 2105301,lv = 90},[2] = {id = 2105302,lv = 90},[3] = {id = 2105303,lv = 90},[4] = {id = 2105304,lv = 90},[5] = {id = 2105305,lv = 90},[6] = {id = 2105306,lv = 90},[7] = {id = 2105307,lv = 90},[8] = {id = 2105308,lv = 90}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1170230,cardId = 1101999,lv = 90,bklv = 12,star = 3,equip = {[1] = {id = 2004301,lv = 90},[2] = {id = 2004302,lv = 90},[3] = {id = 2004303,lv = 90},[4] = {id = 2004304,lv = 90},[5] = {id = 2004305,lv = 90},[6] = {id = 2004306,lv = 90},[7] = {id = 2004307,lv = 90},[8] = {id = 2004308,lv = 90}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-17-2-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1170231,cardId = 1102999,lv = 90,bklv = 12,star = 3,ghost = 28,equip = {[1] = {id = 2105301,lv = 90},[2] = {id = 2105302,lv = 90},[3] = {id = 2105303,lv = 90},[4] = {id = 2105304,lv = 90},[5] = {id = 2105305,lv = 90},[6] = {id = 2105306,lv = 90},[7] = {id = 2105307,lv = 90},[8] = {id = 2105308,lv = 90}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11703] = {
		[1] = {
			jlr = {id = 1170310,cardId = 1101999,lv = 91,bklv = 12,star = 3,equip = {[1] = {id = 2004301,lv = 91},[2] = {id = 2004302,lv = 91},[3] = {id = 2004303,lv = 91},[4] = {id = 2004304,lv = 91},[5] = {id = 2004305,lv = 91},[6] = {id = 2004306,lv = 91},[7] = {id = 2004307,lv = 91},[8] = {id = 2004308,lv = 91}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-17-3-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1170311,cardId = 1102999,lv = 90,bklv = 12,star = 3,ghost = 28,equip = {[1] = {id = 2105301,lv = 91},[2] = {id = 2105302,lv = 91},[3] = {id = 2105303,lv = 91},[4] = {id = 2105304,lv = 91},[5] = {id = 2105305,lv = 91},[6] = {id = 2105306,lv = 91},[7] = {id = 2105307,lv = 91},[8] = {id = 2105308,lv = 91}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1170320,cardId = 1101998,lv = 91,bklv = 12,star = 3,equip = {[1] = {id = 2004301,lv = 91},[2] = {id = 2004302,lv = 91},[3] = {id = 2004303,lv = 91},[4] = {id = 2004304,lv = 91},[5] = {id = 2004305,lv = 91},[6] = {id = 2004306,lv = 91},[7] = {id = 2004307,lv = 91},[8] = {id = 2004308,lv = 91}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-17-3-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1170321,cardId = 1102998,lv = 95,bklv = 13,star = 3,ghost = 29,equip = {[1] = {id = 2105301,lv = 91},[2] = {id = 2105302,lv = 91},[3] = {id = 2105303,lv = 91},[4] = {id = 2105304,lv = 91},[5] = {id = 2105305,lv = 91},[6] = {id = 2105306,lv = 91},[7] = {id = 2105307,lv = 91},[8] = {id = 2105308,lv = 91}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1170330,cardId = 1101999,lv = 91,bklv = 12,star = 3,equip = {[1] = {id = 2004301,lv = 91},[2] = {id = 2004302,lv = 91},[3] = {id = 2004303,lv = 91},[4] = {id = 2004304,lv = 91},[5] = {id = 2004305,lv = 91},[6] = {id = 2004306,lv = 91},[7] = {id = 2004307,lv = 91},[8] = {id = 2004308,lv = 91}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-17-3-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1170331,cardId = 1102999,lv = 90,bklv = 12,star = 3,ghost = 28,equip = {[1] = {id = 2105301,lv = 91},[2] = {id = 2105302,lv = 91},[3] = {id = 2105303,lv = 91},[4] = {id = 2105304,lv = 91},[5] = {id = 2105305,lv = 91},[6] = {id = 2105306,lv = 91},[7] = {id = 2105307,lv = 91},[8] = {id = 2105308,lv = 91}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11704] = {
		[1] = {
			jlr = {id = 1170410,cardId = 1101999,lv = 92,bklv = 12,star = 3,equip = {[1] = {id = 2004301,lv = 92},[2] = {id = 2004302,lv = 92},[3] = {id = 2004303,lv = 92},[4] = {id = 2004304,lv = 92},[5] = {id = 2004305,lv = 92},[6] = {id = 2004306,lv = 92},[7] = {id = 2004307,lv = 92},[8] = {id = 2004308,lv = 92}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-17-4-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1170411,cardId = 1102999,lv = 90,bklv = 12,star = 3,ghost = 29,equip = {[1] = {id = 2105301,lv = 92},[2] = {id = 2105302,lv = 92},[3] = {id = 2105303,lv = 92},[4] = {id = 2105304,lv = 92},[5] = {id = 2105305,lv = 92},[6] = {id = 2105306,lv = 92},[7] = {id = 2105307,lv = 92},[8] = {id = 2105308,lv = 92}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1170420,cardId = 1101999,lv = 92,bklv = 12,star = 3,equip = {[1] = {id = 2004301,lv = 92},[2] = {id = 2004302,lv = 92},[3] = {id = 2004303,lv = 92},[4] = {id = 2004304,lv = 92},[5] = {id = 2004305,lv = 92},[6] = {id = 2004306,lv = 92},[7] = {id = 2004307,lv = 92},[8] = {id = 2004308,lv = 92}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-17-4-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1170421,cardId = 1102999,lv = 95,bklv = 13,star = 3,ghost = 29,equip = {[1] = {id = 2105301,lv = 92},[2] = {id = 2105302,lv = 92},[3] = {id = 2105303,lv = 92},[4] = {id = 2105304,lv = 92},[5] = {id = 2105305,lv = 92},[6] = {id = 2105306,lv = 92},[7] = {id = 2105307,lv = 92},[8] = {id = 2105308,lv = 92}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1170430,cardId = 1101999,lv = 92,bklv = 12,star = 3,equip = {[1] = {id = 2004301,lv = 92},[2] = {id = 2004302,lv = 92},[3] = {id = 2004303,lv = 92},[4] = {id = 2004304,lv = 92},[5] = {id = 2004305,lv = 92},[6] = {id = 2004306,lv = 92},[7] = {id = 2004307,lv = 92},[8] = {id = 2004308,lv = 92}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-17-4-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1170431,cardId = 1102999,lv = 90,bklv = 12,star = 3,ghost = 28,equip = {[1] = {id = 2105301,lv = 92},[2] = {id = 2105302,lv = 92},[3] = {id = 2105303,lv = 92},[4] = {id = 2105304,lv = 92},[5] = {id = 2105305,lv = 92},[6] = {id = 2105306,lv = 92},[7] = {id = 2105307,lv = 92},[8] = {id = 2105308,lv = 92}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11705] = {
		[1] = {
			jlr = {id = 1170510,cardId = 1101999,lv = 92,bklv = 12,star = 3,equip = {[1] = {id = 2004301,lv = 92},[2] = {id = 2004302,lv = 92},[3] = {id = 2004303,lv = 92},[4] = {id = 2004304,lv = 92},[5] = {id = 2004305,lv = 92},[6] = {id = 2004306,lv = 92},[7] = {id = 2004307,lv = 92},[8] = {id = 2004308,lv = 92}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-17-5-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1170511,cardId = 1102999,lv = 90,bklv = 12,star = 3,ghost = 29,equip = {[1] = {id = 2105301,lv = 92},[2] = {id = 2105302,lv = 92},[3] = {id = 2105303,lv = 92},[4] = {id = 2105304,lv = 92},[5] = {id = 2105305,lv = 92},[6] = {id = 2105306,lv = 92},[7] = {id = 2105307,lv = 92},[8] = {id = 2105308,lv = 92}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1170520,cardId = 1101999,lv = 92,bklv = 12,star = 3,equip = {[1] = {id = 2004301,lv = 92},[2] = {id = 2004302,lv = 92},[3] = {id = 2004303,lv = 92},[4] = {id = 2004304,lv = 92},[5] = {id = 2004305,lv = 92},[6] = {id = 2004306,lv = 92},[7] = {id = 2004307,lv = 92},[8] = {id = 2004308,lv = 92}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-17-5-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1170521,cardId = 1102999,lv = 95,bklv = 13,star = 3,ghost = 29,equip = {[1] = {id = 2105301,lv = 92},[2] = {id = 2105302,lv = 92},[3] = {id = 2105303,lv = 92},[4] = {id = 2105304,lv = 92},[5] = {id = 2105305,lv = 92},[6] = {id = 2105306,lv = 92},[7] = {id = 2105307,lv = 92},[8] = {id = 2105308,lv = 92}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1170530,cardId = 1101999,lv = 92,bklv = 12,star = 3,equip = {[1] = {id = 2004301,lv = 92},[2] = {id = 2004302,lv = 92},[3] = {id = 2004303,lv = 92},[4] = {id = 2004304,lv = 92},[5] = {id = 2004305,lv = 92},[6] = {id = 2004306,lv = 92},[7] = {id = 2004307,lv = 92},[8] = {id = 2004308,lv = 92}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-17-5-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1170531,cardId = 1102999,lv = 90,bklv = 12,star = 3,ghost = 29,equip = {[1] = {id = 2105301,lv = 92},[2] = {id = 2105302,lv = 92},[3] = {id = 2105303,lv = 92},[4] = {id = 2105304,lv = 92},[5] = {id = 2105305,lv = 92},[6] = {id = 2105306,lv = 92},[7] = {id = 2105307,lv = 92},[8] = {id = 2105308,lv = 92}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11706] = {
		[1] = {
			jlr = {id = 1170610,cardId = 1101998,lv = 93,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 93},[2] = {id = 2005302,lv = 93},[3] = {id = 2005303,lv = 93},[4] = {id = 2005304,lv = 93},[5] = {id = 2005305,lv = 93},[6] = {id = 2005306,lv = 93},[7] = {id = 2005307,lv = 93},[8] = {id = 2005308,lv = 93}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-17-6-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1170611,cardId = 1102998,lv = 95,bklv = 13,star = 3,ghost = 29,equip = {[1] = {id = 2105301,lv = 93},[2] = {id = 2105302,lv = 93},[3] = {id = 2105303,lv = 93},[4] = {id = 2105304,lv = 93},[5] = {id = 2105305,lv = 93},[6] = {id = 2105306,lv = 93},[7] = {id = 2105307,lv = 93},[8] = {id = 2105308,lv = 93}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1170620,cardId = 1101998,lv = 93,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 93},[2] = {id = 2005302,lv = 93},[3] = {id = 2005303,lv = 93},[4] = {id = 2005304,lv = 93},[5] = {id = 2005305,lv = 93},[6] = {id = 2005306,lv = 93},[7] = {id = 2005307,lv = 93},[8] = {id = 2005308,lv = 93}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-17-6-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1170621,cardId = 1102998,lv = 95,bklv = 13,star = 3,ghost = 30,equip = {[1] = {id = 2105301,lv = 93},[2] = {id = 2105302,lv = 93},[3] = {id = 2105303,lv = 93},[4] = {id = 2105304,lv = 93},[5] = {id = 2105305,lv = 93},[6] = {id = 2105306,lv = 93},[7] = {id = 2105307,lv = 93},[8] = {id = 2105308,lv = 93}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1170630,cardId = 1101998,lv = 93,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 93},[2] = {id = 2005302,lv = 93},[3] = {id = 2005303,lv = 93},[4] = {id = 2005304,lv = 93},[5] = {id = 2005305,lv = 93},[6] = {id = 2005306,lv = 93},[7] = {id = 2005307,lv = 93},[8] = {id = 2005308,lv = 93}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-17-6-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1170631,cardId = 1102998,lv = 90,bklv = 12,star = 3,ghost = 29,equip = {[1] = {id = 2105301,lv = 93},[2] = {id = 2105302,lv = 93},[3] = {id = 2105303,lv = 93},[4] = {id = 2105304,lv = 93},[5] = {id = 2105305,lv = 93},[6] = {id = 2105306,lv = 93},[7] = {id = 2105307,lv = 93},[8] = {id = 2105308,lv = 93}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11707] = {
		[1] = {
			jlr = {id = 1170710,cardId = 1101999,lv = 94,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 94},[2] = {id = 2005302,lv = 94},[3] = {id = 2005303,lv = 94},[4] = {id = 2005304,lv = 94},[5] = {id = 2005305,lv = 94},[6] = {id = 2005306,lv = 94},[7] = {id = 2005307,lv = 94},[8] = {id = 2005308,lv = 94}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-17-7-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1170711,cardId = 1102999,lv = 95,bklv = 13,star = 3,ghost = 29,equip = {[1] = {id = 2105301,lv = 94},[2] = {id = 2105302,lv = 94},[3] = {id = 2105303,lv = 94},[4] = {id = 2105304,lv = 94},[5] = {id = 2105305,lv = 94},[6] = {id = 2105306,lv = 94},[7] = {id = 2105307,lv = 94},[8] = {id = 2105308,lv = 94}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1170720,cardId = 1101999,lv = 94,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 94},[2] = {id = 2005302,lv = 94},[3] = {id = 2005303,lv = 94},[4] = {id = 2005304,lv = 94},[5] = {id = 2005305,lv = 94},[6] = {id = 2005306,lv = 94},[7] = {id = 2005307,lv = 94},[8] = {id = 2005308,lv = 94}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-17-7-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1170721,cardId = 1102999,lv = 95,bklv = 13,star = 3,ghost = 30,equip = {[1] = {id = 2105301,lv = 94},[2] = {id = 2105302,lv = 94},[3] = {id = 2105303,lv = 94},[4] = {id = 2105304,lv = 94},[5] = {id = 2105305,lv = 94},[6] = {id = 2105306,lv = 94},[7] = {id = 2105307,lv = 94},[8] = {id = 2105308,lv = 94}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1170730,cardId = 1101999,lv = 94,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 94},[2] = {id = 2005302,lv = 94},[3] = {id = 2005303,lv = 94},[4] = {id = 2005304,lv = 94},[5] = {id = 2005305,lv = 94},[6] = {id = 2005306,lv = 94},[7] = {id = 2005307,lv = 94},[8] = {id = 2005308,lv = 94}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-17-7-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1170731,cardId = 1102999,lv = 90,bklv = 12,star = 3,ghost = 29,equip = {[1] = {id = 2105301,lv = 94},[2] = {id = 2105302,lv = 94},[3] = {id = 2105303,lv = 94},[4] = {id = 2105304,lv = 94},[5] = {id = 2105305,lv = 94},[6] = {id = 2105306,lv = 94},[7] = {id = 2105307,lv = 94},[8] = {id = 2105308,lv = 94}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11708] = {
		[1] = {
			jlr = {id = 1170810,cardId = 1101999,lv = 94,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 94},[2] = {id = 2005302,lv = 94},[3] = {id = 2005303,lv = 94},[4] = {id = 2005304,lv = 94},[5] = {id = 2005305,lv = 94},[6] = {id = 2005306,lv = 94},[7] = {id = 2005307,lv = 94},[8] = {id = 2005308,lv = 94}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-17-8-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1170811,cardId = 1102999,lv = 95,bklv = 13,star = 3,ghost = 29,equip = {[1] = {id = 2105301,lv = 94},[2] = {id = 2105302,lv = 94},[3] = {id = 2105303,lv = 94},[4] = {id = 2105304,lv = 94},[5] = {id = 2105305,lv = 94},[6] = {id = 2105306,lv = 94},[7] = {id = 2105307,lv = 94},[8] = {id = 2105308,lv = 94}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1170820,cardId = 1101999,lv = 94,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 94},[2] = {id = 2005302,lv = 94},[3] = {id = 2005303,lv = 94},[4] = {id = 2005304,lv = 94},[5] = {id = 2005305,lv = 94},[6] = {id = 2005306,lv = 94},[7] = {id = 2005307,lv = 94},[8] = {id = 2005308,lv = 94}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-17-8-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1170821,cardId = 1102999,lv = 95,bklv = 13,star = 3,ghost = 30,equip = {[1] = {id = 2105301,lv = 94},[2] = {id = 2105302,lv = 94},[3] = {id = 2105303,lv = 94},[4] = {id = 2105304,lv = 94},[5] = {id = 2105305,lv = 94},[6] = {id = 2105306,lv = 94},[7] = {id = 2105307,lv = 94},[8] = {id = 2105308,lv = 94}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1170830,cardId = 1101999,lv = 94,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 94},[2] = {id = 2005302,lv = 94},[3] = {id = 2005303,lv = 94},[4] = {id = 2005304,lv = 94},[5] = {id = 2005305,lv = 94},[6] = {id = 2005306,lv = 94},[7] = {id = 2005307,lv = 94},[8] = {id = 2005308,lv = 94}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-17-8-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1170831,cardId = 1102999,lv = 90,bklv = 12,star = 3,ghost = 29,equip = {[1] = {id = 2105301,lv = 94},[2] = {id = 2105302,lv = 94},[3] = {id = 2105303,lv = 94},[4] = {id = 2105304,lv = 94},[5] = {id = 2105305,lv = 94},[6] = {id = 2105306,lv = 94},[7] = {id = 2105307,lv = 94},[8] = {id = 2105308,lv = 94}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11709] = {
		[1] = {
			jlr = {id = 1170910,cardId = 1101998,lv = 95,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 95},[2] = {id = 2005302,lv = 95},[3] = {id = 2005303,lv = 95},[4] = {id = 2005304,lv = 95},[5] = {id = 2005305,lv = 95},[6] = {id = 2005306,lv = 95},[7] = {id = 2005307,lv = 95},[8] = {id = 2005308,lv = 95}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-17-9-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1170911,cardId = 1102998,lv = 95,bklv = 13,star = 3,ghost = 30,equip = {[1] = {id = 2105301,lv = 95},[2] = {id = 2105302,lv = 95},[3] = {id = 2105303,lv = 95},[4] = {id = 2105304,lv = 95},[5] = {id = 2105305,lv = 95},[6] = {id = 2105306,lv = 95},[7] = {id = 2105307,lv = 95},[8] = {id = 2105308,lv = 95}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1170920,cardId = 1101997,lv = 95,bklv = 13,star = 2,equip = {[1] = {id = 2005301,lv = 95},[2] = {id = 2005302,lv = 95},[3] = {id = 2005303,lv = 95},[4] = {id = 2005304,lv = 95},[5] = {id = 2005305,lv = 95},[6] = {id = 2005306,lv = 95},[7] = {id = 2005307,lv = 95},[8] = {id = 2005308,lv = 95}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-17-9-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1170921,cardId = 1102997,lv = 95,bklv = 13,star = 2,ghost = 30,equip = {[1] = {id = 2105301,lv = 95},[2] = {id = 2105302,lv = 95},[3] = {id = 2105303,lv = 95},[4] = {id = 2105304,lv = 95},[5] = {id = 2105305,lv = 95},[6] = {id = 2105306,lv = 95},[7] = {id = 2105307,lv = 95},[8] = {id = 2105308,lv = 95}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1170930,cardId = 1101998,lv = 95,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 95},[2] = {id = 2005302,lv = 95},[3] = {id = 2005303,lv = 95},[4] = {id = 2005304,lv = 95},[5] = {id = 2005305,lv = 95},[6] = {id = 2005306,lv = 95},[7] = {id = 2005307,lv = 95},[8] = {id = 2005308,lv = 95}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-17-9-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1170931,cardId = 1102998,lv = 95,bklv = 13,star = 3,ghost = 30,equip = {[1] = {id = 2105301,lv = 95},[2] = {id = 2105302,lv = 95},[3] = {id = 2105303,lv = 95},[4] = {id = 2105304,lv = 95},[5] = {id = 2105305,lv = 95},[6] = {id = 2105306,lv = 95},[7] = {id = 2105307,lv = 95},[8] = {id = 2105308,lv = 95}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11710] = {
		[1] = {
			jlr = {id = 1171010,cardId = 1101997,lv = 95,bklv = 13,star = 2,equip = {[1] = {id = 2005301,lv = 95},[2] = {id = 2005302,lv = 95},[3] = {id = 2005303,lv = 95},[4] = {id = 2005304,lv = 95},[5] = {id = 2005305,lv = 95},[6] = {id = 2005306,lv = 95},[7] = {id = 2005307,lv = 95},[8] = {id = 2005308,lv = 95}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-17-10-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1171011,cardId = 1102997,lv = 95,bklv = 13,star = 2,ghost = 30,equip = {[1] = {id = 2105301,lv = 95},[2] = {id = 2105302,lv = 95},[3] = {id = 2105303,lv = 95},[4] = {id = 2105304,lv = 95},[5] = {id = 2105305,lv = 95},[6] = {id = 2105306,lv = 95},[7] = {id = 2105307,lv = 95},[8] = {id = 2105308,lv = 95}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1171020,cardId = 1101997,lv = 95,bklv = 13,star = 2,equip = {[1] = {id = 2005301,lv = 95},[2] = {id = 2005302,lv = 95},[3] = {id = 2005303,lv = 95},[4] = {id = 2005304,lv = 95},[5] = {id = 2005305,lv = 95},[6] = {id = 2005306,lv = 95},[7] = {id = 2005307,lv = 95},[8] = {id = 2005308,lv = 95}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-17-10-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1171021,cardId = 1102997,lv = 95,bklv = 13,star = 2,ghost = 30,equip = {[1] = {id = 2105301,lv = 95},[2] = {id = 2105302,lv = 95},[3] = {id = 2105303,lv = 95},[4] = {id = 2105304,lv = 95},[5] = {id = 2105305,lv = 95},[6] = {id = 2105306,lv = 95},[7] = {id = 2105307,lv = 95},[8] = {id = 2105308,lv = 95}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1171030,cardId = 1101997,lv = 95,bklv = 13,star = 2,equip = {[1] = {id = 2005301,lv = 95},[2] = {id = 2005302,lv = 95},[3] = {id = 2005303,lv = 95},[4] = {id = 2005304,lv = 95},[5] = {id = 2005305,lv = 95},[6] = {id = 2005306,lv = 95},[7] = {id = 2005307,lv = 95},[8] = {id = 2005308,lv = 95}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-17-10-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1171031,cardId = 1102997,lv = 95,bklv = 13,star = 2,ghost = 30,equip = {[1] = {id = 2105301,lv = 95},[2] = {id = 2105302,lv = 95},[3] = {id = 2105303,lv = 95},[4] = {id = 2105304,lv = 95},[5] = {id = 2105305,lv = 95},[6] = {id = 2105306,lv = 95},[7] = {id = 2105307,lv = 95},[8] = {id = 2105308,lv = 95}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11801] = {
		[1] = {
			jlr = {id = 1180110,cardId = 1101999,lv = 95,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 95},[2] = {id = 2005302,lv = 95},[3] = {id = 2005303,lv = 95},[4] = {id = 2005304,lv = 95},[5] = {id = 2005305,lv = 95},[6] = {id = 2005306,lv = 95},[7] = {id = 2005307,lv = 95},[8] = {id = 2005308,lv = 95}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-18-1-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1180111,cardId = 1102999,lv = 95,bklv = 13,star = 3,ghost = 30,equip = {[1] = {id = 2105301,lv = 95},[2] = {id = 2105302,lv = 95},[3] = {id = 2105303,lv = 95},[4] = {id = 2105304,lv = 95},[5] = {id = 2105305,lv = 95},[6] = {id = 2105306,lv = 95},[7] = {id = 2105307,lv = 95},[8] = {id = 2105308,lv = 95}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1180120,cardId = 1101999,lv = 95,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 95},[2] = {id = 2005302,lv = 95},[3] = {id = 2005303,lv = 95},[4] = {id = 2005304,lv = 95},[5] = {id = 2005305,lv = 95},[6] = {id = 2005306,lv = 95},[7] = {id = 2005307,lv = 95},[8] = {id = 2005308,lv = 95}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-18-1-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1180121,cardId = 1102999,lv = 95,bklv = 13,star = 3,ghost = 30,equip = {[1] = {id = 2105301,lv = 95},[2] = {id = 2105302,lv = 95},[3] = {id = 2105303,lv = 95},[4] = {id = 2105304,lv = 95},[5] = {id = 2105305,lv = 95},[6] = {id = 2105306,lv = 95},[7] = {id = 2105307,lv = 95},[8] = {id = 2105308,lv = 95}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1180130,cardId = 1101999,lv = 95,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 95},[2] = {id = 2005302,lv = 95},[3] = {id = 2005303,lv = 95},[4] = {id = 2005304,lv = 95},[5] = {id = 2005305,lv = 95},[6] = {id = 2005306,lv = 95},[7] = {id = 2005307,lv = 95},[8] = {id = 2005308,lv = 95}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-18-1-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1180131,cardId = 1102999,lv = 95,bklv = 13,star = 3,ghost = 30,equip = {[1] = {id = 2105301,lv = 95},[2] = {id = 2105302,lv = 95},[3] = {id = 2105303,lv = 95},[4] = {id = 2105304,lv = 95},[5] = {id = 2105305,lv = 95},[6] = {id = 2105306,lv = 95},[7] = {id = 2105307,lv = 95},[8] = {id = 2105308,lv = 95}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11802] = {
		[1] = {
			jlr = {id = 1180210,cardId = 1101999,lv = 95,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 95},[2] = {id = 2005302,lv = 95},[3] = {id = 2005303,lv = 95},[4] = {id = 2005304,lv = 95},[5] = {id = 2005305,lv = 95},[6] = {id = 2005306,lv = 95},[7] = {id = 2005307,lv = 95},[8] = {id = 2005308,lv = 95}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-18-2-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1180211,cardId = 1102999,lv = 95,bklv = 13,star = 3,ghost = 30,equip = {[1] = {id = 2105301,lv = 95},[2] = {id = 2105302,lv = 95},[3] = {id = 2105303,lv = 95},[4] = {id = 2105304,lv = 95},[5] = {id = 2105305,lv = 95},[6] = {id = 2105306,lv = 95},[7] = {id = 2105307,lv = 95},[8] = {id = 2105308,lv = 95}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1180220,cardId = 1101999,lv = 95,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 95},[2] = {id = 2005302,lv = 95},[3] = {id = 2005303,lv = 95},[4] = {id = 2005304,lv = 95},[5] = {id = 2005305,lv = 95},[6] = {id = 2005306,lv = 95},[7] = {id = 2005307,lv = 95},[8] = {id = 2005308,lv = 95}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-18-2-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1180221,cardId = 1102999,lv = 95,bklv = 13,star = 3,ghost = 30,equip = {[1] = {id = 2105301,lv = 95},[2] = {id = 2105302,lv = 95},[3] = {id = 2105303,lv = 95},[4] = {id = 2105304,lv = 95},[5] = {id = 2105305,lv = 95},[6] = {id = 2105306,lv = 95},[7] = {id = 2105307,lv = 95},[8] = {id = 2105308,lv = 95}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1180230,cardId = 1101999,lv = 95,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 95},[2] = {id = 2005302,lv = 95},[3] = {id = 2005303,lv = 95},[4] = {id = 2005304,lv = 95},[5] = {id = 2005305,lv = 95},[6] = {id = 2005306,lv = 95},[7] = {id = 2005307,lv = 95},[8] = {id = 2005308,lv = 95}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-18-2-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1180231,cardId = 1102999,lv = 95,bklv = 13,star = 3,ghost = 30,equip = {[1] = {id = 2105301,lv = 95},[2] = {id = 2105302,lv = 95},[3] = {id = 2105303,lv = 95},[4] = {id = 2105304,lv = 95},[5] = {id = 2105305,lv = 95},[6] = {id = 2105306,lv = 95},[7] = {id = 2105307,lv = 95},[8] = {id = 2105308,lv = 95}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11803] = {
		[1] = {
			jlr = {id = 1180310,cardId = 1101999,lv = 96,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 96},[2] = {id = 2005302,lv = 96},[3] = {id = 2005303,lv = 96},[4] = {id = 2005304,lv = 96},[5] = {id = 2005305,lv = 96},[6] = {id = 2005306,lv = 96},[7] = {id = 2005307,lv = 96},[8] = {id = 2005308,lv = 96}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-18-3-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1180311,cardId = 1102999,lv = 95,bklv = 13,star = 3,ghost = 30,equip = {[1] = {id = 2106301,lv = 96},[2] = {id = 2106302,lv = 96},[3] = {id = 2106303,lv = 96},[4] = {id = 2106304,lv = 96},[5] = {id = 2106305,lv = 96},[6] = {id = 2106306,lv = 96},[7] = {id = 2106307,lv = 96},[8] = {id = 2106308,lv = 96}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1180320,cardId = 1101998,lv = 96,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 96},[2] = {id = 2005302,lv = 96},[3] = {id = 2005303,lv = 96},[4] = {id = 2005304,lv = 96},[5] = {id = 2005305,lv = 96},[6] = {id = 2005306,lv = 96},[7] = {id = 2005307,lv = 96},[8] = {id = 2005308,lv = 96}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-18-3-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1180321,cardId = 1102998,lv = 100,bklv = 14,star = 3,ghost = 31,equip = {[1] = {id = 2106301,lv = 96},[2] = {id = 2106302,lv = 96},[3] = {id = 2106303,lv = 96},[4] = {id = 2106304,lv = 96},[5] = {id = 2106305,lv = 96},[6] = {id = 2106306,lv = 96},[7] = {id = 2106307,lv = 96},[8] = {id = 2106308,lv = 96}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1180330,cardId = 1101999,lv = 96,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 96},[2] = {id = 2005302,lv = 96},[3] = {id = 2005303,lv = 96},[4] = {id = 2005304,lv = 96},[5] = {id = 2005305,lv = 96},[6] = {id = 2005306,lv = 96},[7] = {id = 2005307,lv = 96},[8] = {id = 2005308,lv = 96}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-18-3-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1180331,cardId = 1102999,lv = 95,bklv = 13,star = 3,ghost = 30,equip = {[1] = {id = 2106301,lv = 96},[2] = {id = 2106302,lv = 96},[3] = {id = 2106303,lv = 96},[4] = {id = 2106304,lv = 96},[5] = {id = 2106305,lv = 96},[6] = {id = 2106306,lv = 96},[7] = {id = 2106307,lv = 96},[8] = {id = 2106308,lv = 96}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11804] = {
		[1] = {
			jlr = {id = 1180410,cardId = 1101999,lv = 97,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 97},[2] = {id = 2005302,lv = 97},[3] = {id = 2005303,lv = 97},[4] = {id = 2005304,lv = 97},[5] = {id = 2005305,lv = 97},[6] = {id = 2005306,lv = 97},[7] = {id = 2005307,lv = 97},[8] = {id = 2005308,lv = 97}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-18-4-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1180411,cardId = 1102999,lv = 95,bklv = 13,star = 3,ghost = 31,equip = {[1] = {id = 2106301,lv = 97},[2] = {id = 2106302,lv = 97},[3] = {id = 2106303,lv = 97},[4] = {id = 2106304,lv = 97},[5] = {id = 2106305,lv = 97},[6] = {id = 2106306,lv = 97},[7] = {id = 2106307,lv = 97},[8] = {id = 2106308,lv = 97}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1180420,cardId = 1101999,lv = 97,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 97},[2] = {id = 2005302,lv = 97},[3] = {id = 2005303,lv = 97},[4] = {id = 2005304,lv = 97},[5] = {id = 2005305,lv = 97},[6] = {id = 2005306,lv = 97},[7] = {id = 2005307,lv = 97},[8] = {id = 2005308,lv = 97}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-18-4-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1180421,cardId = 1102999,lv = 100,bklv = 14,star = 3,ghost = 31,equip = {[1] = {id = 2106301,lv = 97},[2] = {id = 2106302,lv = 97},[3] = {id = 2106303,lv = 97},[4] = {id = 2106304,lv = 97},[5] = {id = 2106305,lv = 97},[6] = {id = 2106306,lv = 97},[7] = {id = 2106307,lv = 97},[8] = {id = 2106308,lv = 97}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1180430,cardId = 1101999,lv = 97,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 97},[2] = {id = 2005302,lv = 97},[3] = {id = 2005303,lv = 97},[4] = {id = 2005304,lv = 97},[5] = {id = 2005305,lv = 97},[6] = {id = 2005306,lv = 97},[7] = {id = 2005307,lv = 97},[8] = {id = 2005308,lv = 97}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-18-4-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1180431,cardId = 1102999,lv = 95,bklv = 13,star = 3,ghost = 30,equip = {[1] = {id = 2106301,lv = 97},[2] = {id = 2106302,lv = 97},[3] = {id = 2106303,lv = 97},[4] = {id = 2106304,lv = 97},[5] = {id = 2106305,lv = 97},[6] = {id = 2106306,lv = 97},[7] = {id = 2106307,lv = 97},[8] = {id = 2106308,lv = 97}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11805] = {
		[1] = {
			jlr = {id = 1180510,cardId = 1101999,lv = 97,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 97},[2] = {id = 2005302,lv = 97},[3] = {id = 2005303,lv = 97},[4] = {id = 2005304,lv = 97},[5] = {id = 2005305,lv = 97},[6] = {id = 2005306,lv = 97},[7] = {id = 2005307,lv = 97},[8] = {id = 2005308,lv = 97}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-18-5-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1180511,cardId = 1102999,lv = 95,bklv = 13,star = 3,ghost = 31,equip = {[1] = {id = 2106301,lv = 97},[2] = {id = 2106302,lv = 97},[3] = {id = 2106303,lv = 97},[4] = {id = 2106304,lv = 97},[5] = {id = 2106305,lv = 97},[6] = {id = 2106306,lv = 97},[7] = {id = 2106307,lv = 97},[8] = {id = 2106308,lv = 97}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1180520,cardId = 1101999,lv = 97,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 97},[2] = {id = 2005302,lv = 97},[3] = {id = 2005303,lv = 97},[4] = {id = 2005304,lv = 97},[5] = {id = 2005305,lv = 97},[6] = {id = 2005306,lv = 97},[7] = {id = 2005307,lv = 97},[8] = {id = 2005308,lv = 97}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-18-5-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1180521,cardId = 1102999,lv = 100,bklv = 14,star = 3,ghost = 31,equip = {[1] = {id = 2106301,lv = 97},[2] = {id = 2106302,lv = 97},[3] = {id = 2106303,lv = 97},[4] = {id = 2106304,lv = 97},[5] = {id = 2106305,lv = 97},[6] = {id = 2106306,lv = 97},[7] = {id = 2106307,lv = 97},[8] = {id = 2106308,lv = 97}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1180530,cardId = 1101999,lv = 97,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 97},[2] = {id = 2005302,lv = 97},[3] = {id = 2005303,lv = 97},[4] = {id = 2005304,lv = 97},[5] = {id = 2005305,lv = 97},[6] = {id = 2005306,lv = 97},[7] = {id = 2005307,lv = 97},[8] = {id = 2005308,lv = 97}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-18-5-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1180531,cardId = 1102999,lv = 95,bklv = 13,star = 3,ghost = 31,equip = {[1] = {id = 2106301,lv = 97},[2] = {id = 2106302,lv = 97},[3] = {id = 2106303,lv = 97},[4] = {id = 2106304,lv = 97},[5] = {id = 2106305,lv = 97},[6] = {id = 2106306,lv = 97},[7] = {id = 2106307,lv = 97},[8] = {id = 2106308,lv = 97}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11806] = {
		[1] = {
			jlr = {id = 1180610,cardId = 1101998,lv = 98,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 98},[2] = {id = 2005302,lv = 98},[3] = {id = 2005303,lv = 98},[4] = {id = 2005304,lv = 98},[5] = {id = 2005305,lv = 98},[6] = {id = 2005306,lv = 98},[7] = {id = 2005307,lv = 98},[8] = {id = 2005308,lv = 98}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-18-6-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1180611,cardId = 1102998,lv = 100,bklv = 14,star = 3,ghost = 31,equip = {[1] = {id = 2106301,lv = 98},[2] = {id = 2106302,lv = 98},[3] = {id = 2106303,lv = 98},[4] = {id = 2106304,lv = 98},[5] = {id = 2106305,lv = 98},[6] = {id = 2106306,lv = 98},[7] = {id = 2106307,lv = 98},[8] = {id = 2106308,lv = 98}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1180620,cardId = 1101998,lv = 98,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 98},[2] = {id = 2005302,lv = 98},[3] = {id = 2005303,lv = 98},[4] = {id = 2005304,lv = 98},[5] = {id = 2005305,lv = 98},[6] = {id = 2005306,lv = 98},[7] = {id = 2005307,lv = 98},[8] = {id = 2005308,lv = 98}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-18-6-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1180621,cardId = 1102998,lv = 100,bklv = 14,star = 3,ghost = 32,equip = {[1] = {id = 2106301,lv = 98},[2] = {id = 2106302,lv = 98},[3] = {id = 2106303,lv = 98},[4] = {id = 2106304,lv = 98},[5] = {id = 2106305,lv = 98},[6] = {id = 2106306,lv = 98},[7] = {id = 2106307,lv = 98},[8] = {id = 2106308,lv = 98}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1180630,cardId = 1101998,lv = 98,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 98},[2] = {id = 2005302,lv = 98},[3] = {id = 2005303,lv = 98},[4] = {id = 2005304,lv = 98},[5] = {id = 2005305,lv = 98},[6] = {id = 2005306,lv = 98},[7] = {id = 2005307,lv = 98},[8] = {id = 2005308,lv = 98}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-18-6-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1180631,cardId = 1102998,lv = 95,bklv = 13,star = 3,ghost = 31,equip = {[1] = {id = 2106301,lv = 98},[2] = {id = 2106302,lv = 98},[3] = {id = 2106303,lv = 98},[4] = {id = 2106304,lv = 98},[5] = {id = 2106305,lv = 98},[6] = {id = 2106306,lv = 98},[7] = {id = 2106307,lv = 98},[8] = {id = 2106308,lv = 98}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11807] = {
		[1] = {
			jlr = {id = 1180710,cardId = 1101999,lv = 99,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 99},[2] = {id = 2005302,lv = 99},[3] = {id = 2005303,lv = 99},[4] = {id = 2005304,lv = 99},[5] = {id = 2005305,lv = 99},[6] = {id = 2005306,lv = 99},[7] = {id = 2005307,lv = 99},[8] = {id = 2005308,lv = 99}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-18-7-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1180711,cardId = 1102999,lv = 100,bklv = 14,star = 3,ghost = 31,equip = {[1] = {id = 2106301,lv = 99},[2] = {id = 2106302,lv = 99},[3] = {id = 2106303,lv = 99},[4] = {id = 2106304,lv = 99},[5] = {id = 2106305,lv = 99},[6] = {id = 2106306,lv = 99},[7] = {id = 2106307,lv = 99},[8] = {id = 2106308,lv = 99}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1180720,cardId = 1101999,lv = 99,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 99},[2] = {id = 2005302,lv = 99},[3] = {id = 2005303,lv = 99},[4] = {id = 2005304,lv = 99},[5] = {id = 2005305,lv = 99},[6] = {id = 2005306,lv = 99},[7] = {id = 2005307,lv = 99},[8] = {id = 2005308,lv = 99}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-18-7-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1180721,cardId = 1102999,lv = 100,bklv = 14,star = 3,ghost = 32,equip = {[1] = {id = 2106301,lv = 99},[2] = {id = 2106302,lv = 99},[3] = {id = 2106303,lv = 99},[4] = {id = 2106304,lv = 99},[5] = {id = 2106305,lv = 99},[6] = {id = 2106306,lv = 99},[7] = {id = 2106307,lv = 99},[8] = {id = 2106308,lv = 99}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1180730,cardId = 1101999,lv = 99,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 99},[2] = {id = 2005302,lv = 99},[3] = {id = 2005303,lv = 99},[4] = {id = 2005304,lv = 99},[5] = {id = 2005305,lv = 99},[6] = {id = 2005306,lv = 99},[7] = {id = 2005307,lv = 99},[8] = {id = 2005308,lv = 99}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-18-7-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1180731,cardId = 1102999,lv = 95,bklv = 13,star = 3,ghost = 31,equip = {[1] = {id = 2106301,lv = 99},[2] = {id = 2106302,lv = 99},[3] = {id = 2106303,lv = 99},[4] = {id = 2106304,lv = 99},[5] = {id = 2106305,lv = 99},[6] = {id = 2106306,lv = 99},[7] = {id = 2106307,lv = 99},[8] = {id = 2106308,lv = 99}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11808] = {
		[1] = {
			jlr = {id = 1180810,cardId = 1101999,lv = 99,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 99},[2] = {id = 2005302,lv = 99},[3] = {id = 2005303,lv = 99},[4] = {id = 2005304,lv = 99},[5] = {id = 2005305,lv = 99},[6] = {id = 2005306,lv = 99},[7] = {id = 2005307,lv = 99},[8] = {id = 2005308,lv = 99}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-18-8-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1180811,cardId = 1102999,lv = 100,bklv = 14,star = 3,ghost = 31,equip = {[1] = {id = 2106301,lv = 99},[2] = {id = 2106302,lv = 99},[3] = {id = 2106303,lv = 99},[4] = {id = 2106304,lv = 99},[5] = {id = 2106305,lv = 99},[6] = {id = 2106306,lv = 99},[7] = {id = 2106307,lv = 99},[8] = {id = 2106308,lv = 99}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1180820,cardId = 1101999,lv = 99,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 99},[2] = {id = 2005302,lv = 99},[3] = {id = 2005303,lv = 99},[4] = {id = 2005304,lv = 99},[5] = {id = 2005305,lv = 99},[6] = {id = 2005306,lv = 99},[7] = {id = 2005307,lv = 99},[8] = {id = 2005308,lv = 99}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-18-8-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1180821,cardId = 1102999,lv = 100,bklv = 14,star = 3,ghost = 32,equip = {[1] = {id = 2106301,lv = 99},[2] = {id = 2106302,lv = 99},[3] = {id = 2106303,lv = 99},[4] = {id = 2106304,lv = 99},[5] = {id = 2106305,lv = 99},[6] = {id = 2106306,lv = 99},[7] = {id = 2106307,lv = 99},[8] = {id = 2106308,lv = 99}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1180830,cardId = 1101999,lv = 99,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 99},[2] = {id = 2005302,lv = 99},[3] = {id = 2005303,lv = 99},[4] = {id = 2005304,lv = 99},[5] = {id = 2005305,lv = 99},[6] = {id = 2005306,lv = 99},[7] = {id = 2005307,lv = 99},[8] = {id = 2005308,lv = 99}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-18-8-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1180831,cardId = 1102999,lv = 95,bklv = 13,star = 3,ghost = 31,equip = {[1] = {id = 2106301,lv = 99},[2] = {id = 2106302,lv = 99},[3] = {id = 2106303,lv = 99},[4] = {id = 2106304,lv = 99},[5] = {id = 2106305,lv = 99},[6] = {id = 2106306,lv = 99},[7] = {id = 2106307,lv = 99},[8] = {id = 2106308,lv = 99}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11809] = {
		[1] = {
			jlr = {id = 1180910,cardId = 1101998,lv = 100,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 100},[2] = {id = 2005302,lv = 100},[3] = {id = 2005303,lv = 100},[4] = {id = 2005304,lv = 100},[5] = {id = 2005305,lv = 100},[6] = {id = 2005306,lv = 100},[7] = {id = 2005307,lv = 100},[8] = {id = 2005308,lv = 100}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-18-9-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1180911,cardId = 1102998,lv = 100,bklv = 14,star = 3,ghost = 32,equip = {[1] = {id = 2106301,lv = 100},[2] = {id = 2106302,lv = 100},[3] = {id = 2106303,lv = 100},[4] = {id = 2106304,lv = 100},[5] = {id = 2106305,lv = 100},[6] = {id = 2106306,lv = 100},[7] = {id = 2106307,lv = 100},[8] = {id = 2106308,lv = 100}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1180920,cardId = 1101997,lv = 100,bklv = 13,star = 2,equip = {[1] = {id = 2005301,lv = 100},[2] = {id = 2005302,lv = 100},[3] = {id = 2005303,lv = 100},[4] = {id = 2005304,lv = 100},[5] = {id = 2005305,lv = 100},[6] = {id = 2005306,lv = 100},[7] = {id = 2005307,lv = 100},[8] = {id = 2005308,lv = 100}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-18-9-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1180921,cardId = 1102997,lv = 100,bklv = 14,star = 2,ghost = 32,equip = {[1] = {id = 2106301,lv = 100},[2] = {id = 2106302,lv = 100},[3] = {id = 2106303,lv = 100},[4] = {id = 2106304,lv = 100},[5] = {id = 2106305,lv = 100},[6] = {id = 2106306,lv = 100},[7] = {id = 2106307,lv = 100},[8] = {id = 2106308,lv = 100}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1180930,cardId = 1101998,lv = 100,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 100},[2] = {id = 2005302,lv = 100},[3] = {id = 2005303,lv = 100},[4] = {id = 2005304,lv = 100},[5] = {id = 2005305,lv = 100},[6] = {id = 2005306,lv = 100},[7] = {id = 2005307,lv = 100},[8] = {id = 2005308,lv = 100}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-18-9-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1180931,cardId = 1102998,lv = 100,bklv = 14,star = 3,ghost = 32,equip = {[1] = {id = 2106301,lv = 100},[2] = {id = 2106302,lv = 100},[3] = {id = 2106303,lv = 100},[4] = {id = 2106304,lv = 100},[5] = {id = 2106305,lv = 100},[6] = {id = 2106306,lv = 100},[7] = {id = 2106307,lv = 100},[8] = {id = 2106308,lv = 100}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11810] = {
		[1] = {
			jlr = {id = 1181010,cardId = 1101997,lv = 100,bklv = 13,star = 2,equip = {[1] = {id = 2005301,lv = 100},[2] = {id = 2005302,lv = 100},[3] = {id = 2005303,lv = 100},[4] = {id = 2005304,lv = 100},[5] = {id = 2005305,lv = 100},[6] = {id = 2005306,lv = 100},[7] = {id = 2005307,lv = 100},[8] = {id = 2005308,lv = 100}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-18-10-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1181011,cardId = 1102997,lv = 100,bklv = 14,star = 2,ghost = 32,equip = {[1] = {id = 2106301,lv = 100},[2] = {id = 2106302,lv = 100},[3] = {id = 2106303,lv = 100},[4] = {id = 2106304,lv = 100},[5] = {id = 2106305,lv = 100},[6] = {id = 2106306,lv = 100},[7] = {id = 2106307,lv = 100},[8] = {id = 2106308,lv = 100}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1181020,cardId = 1101997,lv = 100,bklv = 13,star = 2,equip = {[1] = {id = 2005301,lv = 100},[2] = {id = 2005302,lv = 100},[3] = {id = 2005303,lv = 100},[4] = {id = 2005304,lv = 100},[5] = {id = 2005305,lv = 100},[6] = {id = 2005306,lv = 100},[7] = {id = 2005307,lv = 100},[8] = {id = 2005308,lv = 100}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-18-10-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1181021,cardId = 1102997,lv = 100,bklv = 14,star = 2,ghost = 32,equip = {[1] = {id = 2106301,lv = 100},[2] = {id = 2106302,lv = 100},[3] = {id = 2106303,lv = 100},[4] = {id = 2106304,lv = 100},[5] = {id = 2106305,lv = 100},[6] = {id = 2106306,lv = 100},[7] = {id = 2106307,lv = 100},[8] = {id = 2106308,lv = 100}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1181030,cardId = 1101997,lv = 100,bklv = 13,star = 2,equip = {[1] = {id = 2005301,lv = 100},[2] = {id = 2005302,lv = 100},[3] = {id = 2005303,lv = 100},[4] = {id = 2005304,lv = 100},[5] = {id = 2005305,lv = 100},[6] = {id = 2005306,lv = 100},[7] = {id = 2005307,lv = 100},[8] = {id = 2005308,lv = 100}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-18-10-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1181031,cardId = 1102997,lv = 100,bklv = 14,star = 2,ghost = 32,equip = {[1] = {id = 2106301,lv = 100},[2] = {id = 2106302,lv = 100},[3] = {id = 2106303,lv = 100},[4] = {id = 2106304,lv = 100},[5] = {id = 2106305,lv = 100},[6] = {id = 2106306,lv = 100},[7] = {id = 2106307,lv = 100},[8] = {id = 2106308,lv = 100}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11901] = {
		[1] = {
			jlr = {id = 1190110,cardId = 1101999,lv = 100,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 100},[2] = {id = 2005302,lv = 100},[3] = {id = 2005303,lv = 100},[4] = {id = 2005304,lv = 100},[5] = {id = 2005305,lv = 100},[6] = {id = 2005306,lv = 100},[7] = {id = 2005307,lv = 100},[8] = {id = 2005308,lv = 100}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-19-1-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1190111,cardId = 1102999,lv = 100,bklv = 14,star = 3,ghost = 32,equip = {[1] = {id = 2106301,lv = 100},[2] = {id = 2106302,lv = 100},[3] = {id = 2106303,lv = 100},[4] = {id = 2106304,lv = 100},[5] = {id = 2106305,lv = 100},[6] = {id = 2106306,lv = 100},[7] = {id = 2106307,lv = 100},[8] = {id = 2106308,lv = 100}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1190120,cardId = 1101999,lv = 100,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 100},[2] = {id = 2005302,lv = 100},[3] = {id = 2005303,lv = 100},[4] = {id = 2005304,lv = 100},[5] = {id = 2005305,lv = 100},[6] = {id = 2005306,lv = 100},[7] = {id = 2005307,lv = 100},[8] = {id = 2005308,lv = 100}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-19-1-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1190121,cardId = 1102999,lv = 100,bklv = 14,star = 3,ghost = 32,equip = {[1] = {id = 2106301,lv = 100},[2] = {id = 2106302,lv = 100},[3] = {id = 2106303,lv = 100},[4] = {id = 2106304,lv = 100},[5] = {id = 2106305,lv = 100},[6] = {id = 2106306,lv = 100},[7] = {id = 2106307,lv = 100},[8] = {id = 2106308,lv = 100}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1190130,cardId = 1101999,lv = 100,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 100},[2] = {id = 2005302,lv = 100},[3] = {id = 2005303,lv = 100},[4] = {id = 2005304,lv = 100},[5] = {id = 2005305,lv = 100},[6] = {id = 2005306,lv = 100},[7] = {id = 2005307,lv = 100},[8] = {id = 2005308,lv = 100}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-19-1-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1190131,cardId = 1102999,lv = 100,bklv = 14,star = 3,ghost = 32,equip = {[1] = {id = 2106301,lv = 100},[2] = {id = 2106302,lv = 100},[3] = {id = 2106303,lv = 100},[4] = {id = 2106304,lv = 100},[5] = {id = 2106305,lv = 100},[6] = {id = 2106306,lv = 100},[7] = {id = 2106307,lv = 100},[8] = {id = 2106308,lv = 100}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11902] = {
		[1] = {
			jlr = {id = 1190210,cardId = 1101999,lv = 100,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 100},[2] = {id = 2005302,lv = 100},[3] = {id = 2005303,lv = 100},[4] = {id = 2005304,lv = 100},[5] = {id = 2005305,lv = 100},[6] = {id = 2005306,lv = 100},[7] = {id = 2005307,lv = 100},[8] = {id = 2005308,lv = 100}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-19-2-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1190211,cardId = 1102999,lv = 100,bklv = 14,star = 3,ghost = 32,equip = {[1] = {id = 2106301,lv = 100},[2] = {id = 2106302,lv = 100},[3] = {id = 2106303,lv = 100},[4] = {id = 2106304,lv = 100},[5] = {id = 2106305,lv = 100},[6] = {id = 2106306,lv = 100},[7] = {id = 2106307,lv = 100},[8] = {id = 2106308,lv = 100}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1190220,cardId = 1101999,lv = 100,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 100},[2] = {id = 2005302,lv = 100},[3] = {id = 2005303,lv = 100},[4] = {id = 2005304,lv = 100},[5] = {id = 2005305,lv = 100},[6] = {id = 2005306,lv = 100},[7] = {id = 2005307,lv = 100},[8] = {id = 2005308,lv = 100}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-19-2-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1190221,cardId = 1102999,lv = 100,bklv = 14,star = 3,ghost = 32,equip = {[1] = {id = 2106301,lv = 100},[2] = {id = 2106302,lv = 100},[3] = {id = 2106303,lv = 100},[4] = {id = 2106304,lv = 100},[5] = {id = 2106305,lv = 100},[6] = {id = 2106306,lv = 100},[7] = {id = 2106307,lv = 100},[8] = {id = 2106308,lv = 100}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1190230,cardId = 1101999,lv = 100,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 100},[2] = {id = 2005302,lv = 100},[3] = {id = 2005303,lv = 100},[4] = {id = 2005304,lv = 100},[5] = {id = 2005305,lv = 100},[6] = {id = 2005306,lv = 100},[7] = {id = 2005307,lv = 100},[8] = {id = 2005308,lv = 100}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-19-2-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1190231,cardId = 1102999,lv = 100,bklv = 14,star = 3,ghost = 32,equip = {[1] = {id = 2106301,lv = 100},[2] = {id = 2106302,lv = 100},[3] = {id = 2106303,lv = 100},[4] = {id = 2106304,lv = 100},[5] = {id = 2106305,lv = 100},[6] = {id = 2106306,lv = 100},[7] = {id = 2106307,lv = 100},[8] = {id = 2106308,lv = 100}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11903] = {
		[1] = {
			jlr = {id = 1190310,cardId = 1101999,lv = 101,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 101},[2] = {id = 2005302,lv = 101},[3] = {id = 2005303,lv = 101},[4] = {id = 2005304,lv = 101},[5] = {id = 2005305,lv = 101},[6] = {id = 2005306,lv = 101},[7] = {id = 2005307,lv = 101},[8] = {id = 2005308,lv = 101}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-19-3-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1190311,cardId = 1102999,lv = 100,bklv = 14,star = 3,ghost = 32,equip = {[1] = {id = 2106301,lv = 101},[2] = {id = 2106302,lv = 101},[3] = {id = 2106303,lv = 101},[4] = {id = 2106304,lv = 101},[5] = {id = 2106305,lv = 101},[6] = {id = 2106306,lv = 101},[7] = {id = 2106307,lv = 101},[8] = {id = 2106308,lv = 101}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1190320,cardId = 1101998,lv = 101,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 101},[2] = {id = 2005302,lv = 101},[3] = {id = 2005303,lv = 101},[4] = {id = 2005304,lv = 101},[5] = {id = 2005305,lv = 101},[6] = {id = 2005306,lv = 101},[7] = {id = 2005307,lv = 101},[8] = {id = 2005308,lv = 101}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-19-3-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1190321,cardId = 1102998,lv = 105,bklv = 14,star = 3,ghost = 33,equip = {[1] = {id = 2106301,lv = 101},[2] = {id = 2106302,lv = 101},[3] = {id = 2106303,lv = 101},[4] = {id = 2106304,lv = 101},[5] = {id = 2106305,lv = 101},[6] = {id = 2106306,lv = 101},[7] = {id = 2106307,lv = 101},[8] = {id = 2106308,lv = 101}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1190330,cardId = 1101999,lv = 101,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 101},[2] = {id = 2005302,lv = 101},[3] = {id = 2005303,lv = 101},[4] = {id = 2005304,lv = 101},[5] = {id = 2005305,lv = 101},[6] = {id = 2005306,lv = 101},[7] = {id = 2005307,lv = 101},[8] = {id = 2005308,lv = 101}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-19-3-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1190331,cardId = 1102999,lv = 100,bklv = 14,star = 3,ghost = 32,equip = {[1] = {id = 2106301,lv = 101},[2] = {id = 2106302,lv = 101},[3] = {id = 2106303,lv = 101},[4] = {id = 2106304,lv = 101},[5] = {id = 2106305,lv = 101},[6] = {id = 2106306,lv = 101},[7] = {id = 2106307,lv = 101},[8] = {id = 2106308,lv = 101}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11904] = {
		[1] = {
			jlr = {id = 1190410,cardId = 1101999,lv = 102,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 102},[2] = {id = 2005302,lv = 102},[3] = {id = 2005303,lv = 102},[4] = {id = 2005304,lv = 102},[5] = {id = 2005305,lv = 102},[6] = {id = 2005306,lv = 102},[7] = {id = 2005307,lv = 102},[8] = {id = 2005308,lv = 102}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-19-4-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1190411,cardId = 1102999,lv = 100,bklv = 14,star = 3,ghost = 33,equip = {[1] = {id = 2106301,lv = 102},[2] = {id = 2106302,lv = 102},[3] = {id = 2106303,lv = 102},[4] = {id = 2106304,lv = 102},[5] = {id = 2106305,lv = 102},[6] = {id = 2106306,lv = 102},[7] = {id = 2106307,lv = 102},[8] = {id = 2106308,lv = 102}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1190420,cardId = 1101999,lv = 102,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 102},[2] = {id = 2005302,lv = 102},[3] = {id = 2005303,lv = 102},[4] = {id = 2005304,lv = 102},[5] = {id = 2005305,lv = 102},[6] = {id = 2005306,lv = 102},[7] = {id = 2005307,lv = 102},[8] = {id = 2005308,lv = 102}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-19-4-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1190421,cardId = 1102999,lv = 105,bklv = 14,star = 3,ghost = 33,equip = {[1] = {id = 2106301,lv = 102},[2] = {id = 2106302,lv = 102},[3] = {id = 2106303,lv = 102},[4] = {id = 2106304,lv = 102},[5] = {id = 2106305,lv = 102},[6] = {id = 2106306,lv = 102},[7] = {id = 2106307,lv = 102},[8] = {id = 2106308,lv = 102}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1190430,cardId = 1101999,lv = 102,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 102},[2] = {id = 2005302,lv = 102},[3] = {id = 2005303,lv = 102},[4] = {id = 2005304,lv = 102},[5] = {id = 2005305,lv = 102},[6] = {id = 2005306,lv = 102},[7] = {id = 2005307,lv = 102},[8] = {id = 2005308,lv = 102}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-19-4-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1190431,cardId = 1102999,lv = 100,bklv = 14,star = 3,ghost = 32,equip = {[1] = {id = 2106301,lv = 102},[2] = {id = 2106302,lv = 102},[3] = {id = 2106303,lv = 102},[4] = {id = 2106304,lv = 102},[5] = {id = 2106305,lv = 102},[6] = {id = 2106306,lv = 102},[7] = {id = 2106307,lv = 102},[8] = {id = 2106308,lv = 102}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11905] = {
		[1] = {
			jlr = {id = 1190510,cardId = 1101999,lv = 102,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 102},[2] = {id = 2005302,lv = 102},[3] = {id = 2005303,lv = 102},[4] = {id = 2005304,lv = 102},[5] = {id = 2005305,lv = 102},[6] = {id = 2005306,lv = 102},[7] = {id = 2005307,lv = 102},[8] = {id = 2005308,lv = 102}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-19-5-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1190511,cardId = 1102999,lv = 100,bklv = 14,star = 3,ghost = 33,equip = {[1] = {id = 2106301,lv = 102},[2] = {id = 2106302,lv = 102},[3] = {id = 2106303,lv = 102},[4] = {id = 2106304,lv = 102},[5] = {id = 2106305,lv = 102},[6] = {id = 2106306,lv = 102},[7] = {id = 2106307,lv = 102},[8] = {id = 2106308,lv = 102}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1190520,cardId = 1101999,lv = 102,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 102},[2] = {id = 2005302,lv = 102},[3] = {id = 2005303,lv = 102},[4] = {id = 2005304,lv = 102},[5] = {id = 2005305,lv = 102},[6] = {id = 2005306,lv = 102},[7] = {id = 2005307,lv = 102},[8] = {id = 2005308,lv = 102}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-19-5-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1190521,cardId = 1102999,lv = 105,bklv = 14,star = 3,ghost = 33,equip = {[1] = {id = 2106301,lv = 102},[2] = {id = 2106302,lv = 102},[3] = {id = 2106303,lv = 102},[4] = {id = 2106304,lv = 102},[5] = {id = 2106305,lv = 102},[6] = {id = 2106306,lv = 102},[7] = {id = 2106307,lv = 102},[8] = {id = 2106308,lv = 102}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1190530,cardId = 1101999,lv = 102,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 102},[2] = {id = 2005302,lv = 102},[3] = {id = 2005303,lv = 102},[4] = {id = 2005304,lv = 102},[5] = {id = 2005305,lv = 102},[6] = {id = 2005306,lv = 102},[7] = {id = 2005307,lv = 102},[8] = {id = 2005308,lv = 102}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-19-5-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1190531,cardId = 1102999,lv = 100,bklv = 14,star = 3,ghost = 33,equip = {[1] = {id = 2106301,lv = 102},[2] = {id = 2106302,lv = 102},[3] = {id = 2106303,lv = 102},[4] = {id = 2106304,lv = 102},[5] = {id = 2106305,lv = 102},[6] = {id = 2106306,lv = 102},[7] = {id = 2106307,lv = 102},[8] = {id = 2106308,lv = 102}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11906] = {
		[1] = {
			jlr = {id = 1190610,cardId = 1101998,lv = 103,bklv = 14,star = 3,equip = {[1] = {id = 2006301,lv = 103},[2] = {id = 2006302,lv = 103},[3] = {id = 2006303,lv = 103},[4] = {id = 2006304,lv = 103},[5] = {id = 2006305,lv = 103},[6] = {id = 2006306,lv = 103},[7] = {id = 2006307,lv = 103},[8] = {id = 2006308,lv = 103}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-19-6-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1190611,cardId = 1102998,lv = 105,bklv = 14,star = 3,ghost = 33,equip = {[1] = {id = 2106301,lv = 103},[2] = {id = 2106302,lv = 103},[3] = {id = 2106303,lv = 103},[4] = {id = 2106304,lv = 103},[5] = {id = 2106305,lv = 103},[6] = {id = 2106306,lv = 103},[7] = {id = 2106307,lv = 103},[8] = {id = 2106308,lv = 103}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1190620,cardId = 1101998,lv = 103,bklv = 14,star = 3,equip = {[1] = {id = 2006301,lv = 103},[2] = {id = 2006302,lv = 103},[3] = {id = 2006303,lv = 103},[4] = {id = 2006304,lv = 103},[5] = {id = 2006305,lv = 103},[6] = {id = 2006306,lv = 103},[7] = {id = 2006307,lv = 103},[8] = {id = 2006308,lv = 103}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-19-6-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1190621,cardId = 1102998,lv = 105,bklv = 14,star = 3,ghost = 34,equip = {[1] = {id = 2106301,lv = 103},[2] = {id = 2106302,lv = 103},[3] = {id = 2106303,lv = 103},[4] = {id = 2106304,lv = 103},[5] = {id = 2106305,lv = 103},[6] = {id = 2106306,lv = 103},[7] = {id = 2106307,lv = 103},[8] = {id = 2106308,lv = 103}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1190630,cardId = 1101998,lv = 103,bklv = 14,star = 3,equip = {[1] = {id = 2006301,lv = 103},[2] = {id = 2006302,lv = 103},[3] = {id = 2006303,lv = 103},[4] = {id = 2006304,lv = 103},[5] = {id = 2006305,lv = 103},[6] = {id = 2006306,lv = 103},[7] = {id = 2006307,lv = 103},[8] = {id = 2006308,lv = 103}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-19-6-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1190631,cardId = 1102998,lv = 100,bklv = 14,star = 3,ghost = 33,equip = {[1] = {id = 2106301,lv = 103},[2] = {id = 2106302,lv = 103},[3] = {id = 2106303,lv = 103},[4] = {id = 2106304,lv = 103},[5] = {id = 2106305,lv = 103},[6] = {id = 2106306,lv = 103},[7] = {id = 2106307,lv = 103},[8] = {id = 2106308,lv = 103}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11907] = {
		[1] = {
			jlr = {id = 1190710,cardId = 1101999,lv = 104,bklv = 14,star = 3,equip = {[1] = {id = 2006301,lv = 104},[2] = {id = 2006302,lv = 104},[3] = {id = 2006303,lv = 104},[4] = {id = 2006304,lv = 104},[5] = {id = 2006305,lv = 104},[6] = {id = 2006306,lv = 104},[7] = {id = 2006307,lv = 104},[8] = {id = 2006308,lv = 104}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-19-7-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1190711,cardId = 1102999,lv = 105,bklv = 14,star = 3,ghost = 33,equip = {[1] = {id = 2106301,lv = 104},[2] = {id = 2106302,lv = 104},[3] = {id = 2106303,lv = 104},[4] = {id = 2106304,lv = 104},[5] = {id = 2106305,lv = 104},[6] = {id = 2106306,lv = 104},[7] = {id = 2106307,lv = 104},[8] = {id = 2106308,lv = 104}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1190720,cardId = 1101999,lv = 104,bklv = 14,star = 3,equip = {[1] = {id = 2006301,lv = 104},[2] = {id = 2006302,lv = 104},[3] = {id = 2006303,lv = 104},[4] = {id = 2006304,lv = 104},[5] = {id = 2006305,lv = 104},[6] = {id = 2006306,lv = 104},[7] = {id = 2006307,lv = 104},[8] = {id = 2006308,lv = 104}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-19-7-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1190721,cardId = 1102999,lv = 105,bklv = 14,star = 3,ghost = 34,equip = {[1] = {id = 2106301,lv = 104},[2] = {id = 2106302,lv = 104},[3] = {id = 2106303,lv = 104},[4] = {id = 2106304,lv = 104},[5] = {id = 2106305,lv = 104},[6] = {id = 2106306,lv = 104},[7] = {id = 2106307,lv = 104},[8] = {id = 2106308,lv = 104}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1190730,cardId = 1101999,lv = 104,bklv = 14,star = 3,equip = {[1] = {id = 2006301,lv = 104},[2] = {id = 2006302,lv = 104},[3] = {id = 2006303,lv = 104},[4] = {id = 2006304,lv = 104},[5] = {id = 2006305,lv = 104},[6] = {id = 2006306,lv = 104},[7] = {id = 2006307,lv = 104},[8] = {id = 2006308,lv = 104}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-19-7-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1190731,cardId = 1102999,lv = 100,bklv = 14,star = 3,ghost = 33,equip = {[1] = {id = 2106301,lv = 104},[2] = {id = 2106302,lv = 104},[3] = {id = 2106303,lv = 104},[4] = {id = 2106304,lv = 104},[5] = {id = 2106305,lv = 104},[6] = {id = 2106306,lv = 104},[7] = {id = 2106307,lv = 104},[8] = {id = 2106308,lv = 104}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11908] = {
		[1] = {
			jlr = {id = 1190810,cardId = 1101999,lv = 104,bklv = 14,star = 3,equip = {[1] = {id = 2006301,lv = 104},[2] = {id = 2006302,lv = 104},[3] = {id = 2006303,lv = 104},[4] = {id = 2006304,lv = 104},[5] = {id = 2006305,lv = 104},[6] = {id = 2006306,lv = 104},[7] = {id = 2006307,lv = 104},[8] = {id = 2006308,lv = 104}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-19-8-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1190811,cardId = 1102999,lv = 105,bklv = 14,star = 3,ghost = 33,equip = {[1] = {id = 2106301,lv = 104},[2] = {id = 2106302,lv = 104},[3] = {id = 2106303,lv = 104},[4] = {id = 2106304,lv = 104},[5] = {id = 2106305,lv = 104},[6] = {id = 2106306,lv = 104},[7] = {id = 2106307,lv = 104},[8] = {id = 2106308,lv = 104}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1190820,cardId = 1101999,lv = 104,bklv = 14,star = 3,equip = {[1] = {id = 2006301,lv = 104},[2] = {id = 2006302,lv = 104},[3] = {id = 2006303,lv = 104},[4] = {id = 2006304,lv = 104},[5] = {id = 2006305,lv = 104},[6] = {id = 2006306,lv = 104},[7] = {id = 2006307,lv = 104},[8] = {id = 2006308,lv = 104}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-19-8-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1190821,cardId = 1102999,lv = 105,bklv = 14,star = 3,ghost = 34,equip = {[1] = {id = 2106301,lv = 104},[2] = {id = 2106302,lv = 104},[3] = {id = 2106303,lv = 104},[4] = {id = 2106304,lv = 104},[5] = {id = 2106305,lv = 104},[6] = {id = 2106306,lv = 104},[7] = {id = 2106307,lv = 104},[8] = {id = 2106308,lv = 104}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1190830,cardId = 1101999,lv = 104,bklv = 14,star = 3,equip = {[1] = {id = 2006301,lv = 104},[2] = {id = 2006302,lv = 104},[3] = {id = 2006303,lv = 104},[4] = {id = 2006304,lv = 104},[5] = {id = 2006305,lv = 104},[6] = {id = 2006306,lv = 104},[7] = {id = 2006307,lv = 104},[8] = {id = 2006308,lv = 104}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-19-8-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1190831,cardId = 1102999,lv = 100,bklv = 14,star = 3,ghost = 33,equip = {[1] = {id = 2106301,lv = 104},[2] = {id = 2106302,lv = 104},[3] = {id = 2106303,lv = 104},[4] = {id = 2106304,lv = 104},[5] = {id = 2106305,lv = 104},[6] = {id = 2106306,lv = 104},[7] = {id = 2106307,lv = 104},[8] = {id = 2106308,lv = 104}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11909] = {
		[1] = {
			jlr = {id = 1190910,cardId = 1101998,lv = 105,bklv = 14,star = 3,equip = {[1] = {id = 2006301,lv = 105},[2] = {id = 2006302,lv = 105},[3] = {id = 2006303,lv = 105},[4] = {id = 2006304,lv = 105},[5] = {id = 2006305,lv = 105},[6] = {id = 2006306,lv = 105},[7] = {id = 2006307,lv = 105},[8] = {id = 2006308,lv = 105}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-19-9-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1190911,cardId = 1102998,lv = 105,bklv = 14,star = 3,ghost = 34,equip = {[1] = {id = 2106301,lv = 105},[2] = {id = 2106302,lv = 105},[3] = {id = 2106303,lv = 105},[4] = {id = 2106304,lv = 105},[5] = {id = 2106305,lv = 105},[6] = {id = 2106306,lv = 105},[7] = {id = 2106307,lv = 105},[8] = {id = 2106308,lv = 105}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1190920,cardId = 1101997,lv = 105,bklv = 14,star = 2,equip = {[1] = {id = 2006301,lv = 105},[2] = {id = 2006302,lv = 105},[3] = {id = 2006303,lv = 105},[4] = {id = 2006304,lv = 105},[5] = {id = 2006305,lv = 105},[6] = {id = 2006306,lv = 105},[7] = {id = 2006307,lv = 105},[8] = {id = 2006308,lv = 105}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-19-9-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1190921,cardId = 1102997,lv = 105,bklv = 14,star = 2,ghost = 34,equip = {[1] = {id = 2106301,lv = 105},[2] = {id = 2106302,lv = 105},[3] = {id = 2106303,lv = 105},[4] = {id = 2106304,lv = 105},[5] = {id = 2106305,lv = 105},[6] = {id = 2106306,lv = 105},[7] = {id = 2106307,lv = 105},[8] = {id = 2106308,lv = 105}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1190930,cardId = 1101998,lv = 105,bklv = 14,star = 3,equip = {[1] = {id = 2006301,lv = 105},[2] = {id = 2006302,lv = 105},[3] = {id = 2006303,lv = 105},[4] = {id = 2006304,lv = 105},[5] = {id = 2006305,lv = 105},[6] = {id = 2006306,lv = 105},[7] = {id = 2006307,lv = 105},[8] = {id = 2006308,lv = 105}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-19-9-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1190931,cardId = 1102998,lv = 105,bklv = 14,star = 3,ghost = 34,equip = {[1] = {id = 2106301,lv = 105},[2] = {id = 2106302,lv = 105},[3] = {id = 2106303,lv = 105},[4] = {id = 2106304,lv = 105},[5] = {id = 2106305,lv = 105},[6] = {id = 2106306,lv = 105},[7] = {id = 2106307,lv = 105},[8] = {id = 2106308,lv = 105}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[11910] = {
		[1] = {
			jlr = {id = 1191010,cardId = 1101997,lv = 105,bklv = 14,star = 2,equip = {[1] = {id = 2006301,lv = 105},[2] = {id = 2006302,lv = 105},[3] = {id = 2006303,lv = 105},[4] = {id = 2006304,lv = 105},[5] = {id = 2006305,lv = 105},[6] = {id = 2006306,lv = 105},[7] = {id = 2006307,lv = 105},[8] = {id = 2006308,lv = 105}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-19-10-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1191011,cardId = 1102997,lv = 105,bklv = 14,star = 2,ghost = 34,equip = {[1] = {id = 2106301,lv = 105},[2] = {id = 2106302,lv = 105},[3] = {id = 2106303,lv = 105},[4] = {id = 2106304,lv = 105},[5] = {id = 2106305,lv = 105},[6] = {id = 2106306,lv = 105},[7] = {id = 2106307,lv = 105},[8] = {id = 2106308,lv = 105}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1191020,cardId = 1101997,lv = 105,bklv = 14,star = 2,equip = {[1] = {id = 2006301,lv = 105},[2] = {id = 2006302,lv = 105},[3] = {id = 2006303,lv = 105},[4] = {id = 2006304,lv = 105},[5] = {id = 2006305,lv = 105},[6] = {id = 2006306,lv = 105},[7] = {id = 2006307,lv = 105},[8] = {id = 2006308,lv = 105}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-19-10-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1191021,cardId = 1102997,lv = 105,bklv = 14,star = 2,ghost = 34,equip = {[1] = {id = 2106301,lv = 105},[2] = {id = 2106302,lv = 105},[3] = {id = 2106303,lv = 105},[4] = {id = 2106304,lv = 105},[5] = {id = 2106305,lv = 105},[6] = {id = 2106306,lv = 105},[7] = {id = 2106307,lv = 105},[8] = {id = 2106308,lv = 105}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1191030,cardId = 1101997,lv = 105,bklv = 14,star = 2,equip = {[1] = {id = 2006301,lv = 105},[2] = {id = 2006302,lv = 105},[3] = {id = 2006303,lv = 105},[4] = {id = 2006304,lv = 105},[5] = {id = 2006305,lv = 105},[6] = {id = 2006306,lv = 105},[7] = {id = 2006307,lv = 105},[8] = {id = 2006308,lv = 105}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-19-10-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1191031,cardId = 1102997,lv = 105,bklv = 14,star = 2,ghost = 34,equip = {[1] = {id = 2106301,lv = 105},[2] = {id = 2106302,lv = 105},[3] = {id = 2106303,lv = 105},[4] = {id = 2106304,lv = 105},[5] = {id = 2106305,lv = 105},[6] = {id = 2106306,lv = 105},[7] = {id = 2106307,lv = 105},[8] = {id = 2106308,lv = 105}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12001] = {
		[1] = {
			jlr = {id = 1200110,cardId = 1101999,lv = 105,bklv = 14,star = 3,equip = {[1] = {id = 2006301,lv = 105},[2] = {id = 2006302,lv = 105},[3] = {id = 2006303,lv = 105},[4] = {id = 2006304,lv = 105},[5] = {id = 2006305,lv = 105},[6] = {id = 2006306,lv = 105},[7] = {id = 2006307,lv = 105},[8] = {id = 2006308,lv = 105}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-20-1-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1200111,cardId = 1102999,lv = 105,bklv = 14,star = 3,ghost = 34,equip = {[1] = {id = 2106301,lv = 105},[2] = {id = 2106302,lv = 105},[3] = {id = 2106303,lv = 105},[4] = {id = 2106304,lv = 105},[5] = {id = 2106305,lv = 105},[6] = {id = 2106306,lv = 105},[7] = {id = 2106307,lv = 105},[8] = {id = 2106308,lv = 105}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1200120,cardId = 1101999,lv = 105,bklv = 14,star = 3,equip = {[1] = {id = 2006301,lv = 105},[2] = {id = 2006302,lv = 105},[3] = {id = 2006303,lv = 105},[4] = {id = 2006304,lv = 105},[5] = {id = 2006305,lv = 105},[6] = {id = 2006306,lv = 105},[7] = {id = 2006307,lv = 105},[8] = {id = 2006308,lv = 105}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-20-1-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1200121,cardId = 1102999,lv = 105,bklv = 14,star = 3,ghost = 34,equip = {[1] = {id = 2106301,lv = 105},[2] = {id = 2106302,lv = 105},[3] = {id = 2106303,lv = 105},[4] = {id = 2106304,lv = 105},[5] = {id = 2106305,lv = 105},[6] = {id = 2106306,lv = 105},[7] = {id = 2106307,lv = 105},[8] = {id = 2106308,lv = 105}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1200130,cardId = 1101999,lv = 105,bklv = 14,star = 3,equip = {[1] = {id = 2006301,lv = 105},[2] = {id = 2006302,lv = 105},[3] = {id = 2006303,lv = 105},[4] = {id = 2006304,lv = 105},[5] = {id = 2006305,lv = 105},[6] = {id = 2006306,lv = 105},[7] = {id = 2006307,lv = 105},[8] = {id = 2006308,lv = 105}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-20-1-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1200131,cardId = 1102999,lv = 105,bklv = 14,star = 3,ghost = 34,equip = {[1] = {id = 2106301,lv = 105},[2] = {id = 2106302,lv = 105},[3] = {id = 2106303,lv = 105},[4] = {id = 2106304,lv = 105},[5] = {id = 2106305,lv = 105},[6] = {id = 2106306,lv = 105},[7] = {id = 2106307,lv = 105},[8] = {id = 2106308,lv = 105}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12002] = {
		[1] = {
			jlr = {id = 1200210,cardId = 1101999,lv = 105,bklv = 14,star = 3,equip = {[1] = {id = 2006301,lv = 105},[2] = {id = 2006302,lv = 105},[3] = {id = 2006303,lv = 105},[4] = {id = 2006304,lv = 105},[5] = {id = 2006305,lv = 105},[6] = {id = 2006306,lv = 105},[7] = {id = 2006307,lv = 105},[8] = {id = 2006308,lv = 105}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-20-2-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1200211,cardId = 1102999,lv = 105,bklv = 14,star = 3,ghost = 34,equip = {[1] = {id = 2106301,lv = 105},[2] = {id = 2106302,lv = 105},[3] = {id = 2106303,lv = 105},[4] = {id = 2106304,lv = 105},[5] = {id = 2106305,lv = 105},[6] = {id = 2106306,lv = 105},[7] = {id = 2106307,lv = 105},[8] = {id = 2106308,lv = 105}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1200220,cardId = 1101999,lv = 105,bklv = 14,star = 3,equip = {[1] = {id = 2006301,lv = 105},[2] = {id = 2006302,lv = 105},[3] = {id = 2006303,lv = 105},[4] = {id = 2006304,lv = 105},[5] = {id = 2006305,lv = 105},[6] = {id = 2006306,lv = 105},[7] = {id = 2006307,lv = 105},[8] = {id = 2006308,lv = 105}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-20-2-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1200221,cardId = 1102999,lv = 105,bklv = 14,star = 3,ghost = 34,equip = {[1] = {id = 2106301,lv = 105},[2] = {id = 2106302,lv = 105},[3] = {id = 2106303,lv = 105},[4] = {id = 2106304,lv = 105},[5] = {id = 2106305,lv = 105},[6] = {id = 2106306,lv = 105},[7] = {id = 2106307,lv = 105},[8] = {id = 2106308,lv = 105}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1200230,cardId = 1101999,lv = 105,bklv = 14,star = 3,equip = {[1] = {id = 2006301,lv = 105},[2] = {id = 2006302,lv = 105},[3] = {id = 2006303,lv = 105},[4] = {id = 2006304,lv = 105},[5] = {id = 2006305,lv = 105},[6] = {id = 2006306,lv = 105},[7] = {id = 2006307,lv = 105},[8] = {id = 2006308,lv = 105}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-20-2-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1200231,cardId = 1102999,lv = 105,bklv = 14,star = 3,ghost = 34,equip = {[1] = {id = 2106301,lv = 105},[2] = {id = 2106302,lv = 105},[3] = {id = 2106303,lv = 105},[4] = {id = 2106304,lv = 105},[5] = {id = 2106305,lv = 105},[6] = {id = 2106306,lv = 105},[7] = {id = 2106307,lv = 105},[8] = {id = 2106308,lv = 105}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12003] = {
		[1] = {
			jlr = {id = 1200310,cardId = 1101999,lv = 106,bklv = 14,star = 3,equip = {[1] = {id = 2006301,lv = 106},[2] = {id = 2006302,lv = 106},[3] = {id = 2006303,lv = 106},[4] = {id = 2006304,lv = 106},[5] = {id = 2006305,lv = 106},[6] = {id = 2006306,lv = 106},[7] = {id = 2006307,lv = 106},[8] = {id = 2006308,lv = 106}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-20-3-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1200311,cardId = 1102999,lv = 105,bklv = 14,star = 3,ghost = 34,equip = {[1] = {id = 2107301,lv = 106},[2] = {id = 2107302,lv = 106},[3] = {id = 2107303,lv = 106},[4] = {id = 2107304,lv = 106},[5] = {id = 2107305,lv = 106},[6] = {id = 2107306,lv = 106},[7] = {id = 2107307,lv = 106},[8] = {id = 2107308,lv = 106}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1200320,cardId = 1101998,lv = 106,bklv = 14,star = 3,equip = {[1] = {id = 2006301,lv = 106},[2] = {id = 2006302,lv = 106},[3] = {id = 2006303,lv = 106},[4] = {id = 2006304,lv = 106},[5] = {id = 2006305,lv = 106},[6] = {id = 2006306,lv = 106},[7] = {id = 2006307,lv = 106},[8] = {id = 2006308,lv = 106}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-20-3-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1200321,cardId = 1102998,lv = 110,bklv = 15,star = 3,ghost = 35,equip = {[1] = {id = 2107301,lv = 106},[2] = {id = 2107302,lv = 106},[3] = {id = 2107303,lv = 106},[4] = {id = 2107304,lv = 106},[5] = {id = 2107305,lv = 106},[6] = {id = 2107306,lv = 106},[7] = {id = 2107307,lv = 106},[8] = {id = 2107308,lv = 106}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1200330,cardId = 1101999,lv = 106,bklv = 14,star = 3,equip = {[1] = {id = 2006301,lv = 106},[2] = {id = 2006302,lv = 106},[3] = {id = 2006303,lv = 106},[4] = {id = 2006304,lv = 106},[5] = {id = 2006305,lv = 106},[6] = {id = 2006306,lv = 106},[7] = {id = 2006307,lv = 106},[8] = {id = 2006308,lv = 106}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-20-3-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1200331,cardId = 1102999,lv = 105,bklv = 14,star = 3,ghost = 34,equip = {[1] = {id = 2107301,lv = 106},[2] = {id = 2107302,lv = 106},[3] = {id = 2107303,lv = 106},[4] = {id = 2107304,lv = 106},[5] = {id = 2107305,lv = 106},[6] = {id = 2107306,lv = 106},[7] = {id = 2107307,lv = 106},[8] = {id = 2107308,lv = 106}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12004] = {
		[1] = {
			jlr = {id = 1200410,cardId = 1101999,lv = 107,bklv = 14,star = 3,equip = {[1] = {id = 2006301,lv = 107},[2] = {id = 2006302,lv = 107},[3] = {id = 2006303,lv = 107},[4] = {id = 2006304,lv = 107},[5] = {id = 2006305,lv = 107},[6] = {id = 2006306,lv = 107},[7] = {id = 2006307,lv = 107},[8] = {id = 2006308,lv = 107}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-20-4-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1200411,cardId = 1102999,lv = 105,bklv = 14,star = 3,ghost = 35,equip = {[1] = {id = 2107301,lv = 107},[2] = {id = 2107302,lv = 107},[3] = {id = 2107303,lv = 107},[4] = {id = 2107304,lv = 107},[5] = {id = 2107305,lv = 107},[6] = {id = 2107306,lv = 107},[7] = {id = 2107307,lv = 107},[8] = {id = 2107308,lv = 107}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1200420,cardId = 1101999,lv = 107,bklv = 14,star = 4,equip = {[1] = {id = 2006301,lv = 107},[2] = {id = 2006302,lv = 107},[3] = {id = 2006303,lv = 107},[4] = {id = 2006304,lv = 107},[5] = {id = 2006305,lv = 107},[6] = {id = 2006306,lv = 107},[7] = {id = 2006307,lv = 107},[8] = {id = 2006308,lv = 107}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-20-4-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1200421,cardId = 1102999,lv = 110,bklv = 15,star = 4,ghost = 35,equip = {[1] = {id = 2107301,lv = 107},[2] = {id = 2107302,lv = 107},[3] = {id = 2107303,lv = 107},[4] = {id = 2107304,lv = 107},[5] = {id = 2107305,lv = 107},[6] = {id = 2107306,lv = 107},[7] = {id = 2107307,lv = 107},[8] = {id = 2107308,lv = 107}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1200430,cardId = 1101999,lv = 107,bklv = 14,star = 3,equip = {[1] = {id = 2006301,lv = 107},[2] = {id = 2006302,lv = 107},[3] = {id = 2006303,lv = 107},[4] = {id = 2006304,lv = 107},[5] = {id = 2006305,lv = 107},[6] = {id = 2006306,lv = 107},[7] = {id = 2006307,lv = 107},[8] = {id = 2006308,lv = 107}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-20-4-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1200431,cardId = 1102999,lv = 105,bklv = 14,star = 3,ghost = 34,equip = {[1] = {id = 2107301,lv = 107},[2] = {id = 2107302,lv = 107},[3] = {id = 2107303,lv = 107},[4] = {id = 2107304,lv = 107},[5] = {id = 2107305,lv = 107},[6] = {id = 2107306,lv = 107},[7] = {id = 2107307,lv = 107},[8] = {id = 2107308,lv = 107}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12005] = {
		[1] = {
			jlr = {id = 1200510,cardId = 1101999,lv = 107,bklv = 14,star = 3,equip = {[1] = {id = 2006301,lv = 107},[2] = {id = 2006302,lv = 107},[3] = {id = 2006303,lv = 107},[4] = {id = 2006304,lv = 107},[5] = {id = 2006305,lv = 107},[6] = {id = 2006306,lv = 107},[7] = {id = 2006307,lv = 107},[8] = {id = 2006308,lv = 107}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-20-5-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1200511,cardId = 1102999,lv = 105,bklv = 14,star = 3,ghost = 35,equip = {[1] = {id = 2107301,lv = 107},[2] = {id = 2107302,lv = 107},[3] = {id = 2107303,lv = 107},[4] = {id = 2107304,lv = 107},[5] = {id = 2107305,lv = 107},[6] = {id = 2107306,lv = 107},[7] = {id = 2107307,lv = 107},[8] = {id = 2107308,lv = 107}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1200520,cardId = 1101999,lv = 107,bklv = 14,star = 4,equip = {[1] = {id = 2006301,lv = 107},[2] = {id = 2006302,lv = 107},[3] = {id = 2006303,lv = 107},[4] = {id = 2006304,lv = 107},[5] = {id = 2006305,lv = 107},[6] = {id = 2006306,lv = 107},[7] = {id = 2006307,lv = 107},[8] = {id = 2006308,lv = 107}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-20-5-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1200521,cardId = 1102999,lv = 110,bklv = 15,star = 4,ghost = 35,equip = {[1] = {id = 2107301,lv = 107},[2] = {id = 2107302,lv = 107},[3] = {id = 2107303,lv = 107},[4] = {id = 2107304,lv = 107},[5] = {id = 2107305,lv = 107},[6] = {id = 2107306,lv = 107},[7] = {id = 2107307,lv = 107},[8] = {id = 2107308,lv = 107}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1200530,cardId = 1101999,lv = 107,bklv = 14,star = 3,equip = {[1] = {id = 2006301,lv = 107},[2] = {id = 2006302,lv = 107},[3] = {id = 2006303,lv = 107},[4] = {id = 2006304,lv = 107},[5] = {id = 2006305,lv = 107},[6] = {id = 2006306,lv = 107},[7] = {id = 2006307,lv = 107},[8] = {id = 2006308,lv = 107}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-20-5-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1200531,cardId = 1102999,lv = 105,bklv = 14,star = 3,ghost = 35,equip = {[1] = {id = 2107301,lv = 107},[2] = {id = 2107302,lv = 107},[3] = {id = 2107303,lv = 107},[4] = {id = 2107304,lv = 107},[5] = {id = 2107305,lv = 107},[6] = {id = 2107306,lv = 107},[7] = {id = 2107307,lv = 107},[8] = {id = 2107308,lv = 107}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12006] = {
		[1] = {
			jlr = {id = 1200610,cardId = 1101998,lv = 108,bklv = 14,star = 3,equip = {[1] = {id = 2006301,lv = 108},[2] = {id = 2006302,lv = 108},[3] = {id = 2006303,lv = 108},[4] = {id = 2006304,lv = 108},[5] = {id = 2006305,lv = 108},[6] = {id = 2006306,lv = 108},[7] = {id = 2006307,lv = 108},[8] = {id = 2006308,lv = 108}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-20-6-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1200611,cardId = 1102998,lv = 110,bklv = 15,star = 3,ghost = 35,equip = {[1] = {id = 2107301,lv = 108},[2] = {id = 2107302,lv = 108},[3] = {id = 2107303,lv = 108},[4] = {id = 2107304,lv = 108},[5] = {id = 2107305,lv = 108},[6] = {id = 2107306,lv = 108},[7] = {id = 2107307,lv = 108},[8] = {id = 2107308,lv = 108}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1200620,cardId = 1101998,lv = 108,bklv = 14,star = 3,equip = {[1] = {id = 2006301,lv = 108},[2] = {id = 2006302,lv = 108},[3] = {id = 2006303,lv = 108},[4] = {id = 2006304,lv = 108},[5] = {id = 2006305,lv = 108},[6] = {id = 2006306,lv = 108},[7] = {id = 2006307,lv = 108},[8] = {id = 2006308,lv = 108}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-20-6-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1200621,cardId = 1102998,lv = 110,bklv = 15,star = 3,ghost = 36,equip = {[1] = {id = 2107301,lv = 108},[2] = {id = 2107302,lv = 108},[3] = {id = 2107303,lv = 108},[4] = {id = 2107304,lv = 108},[5] = {id = 2107305,lv = 108},[6] = {id = 2107306,lv = 108},[7] = {id = 2107307,lv = 108},[8] = {id = 2107308,lv = 108}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1200630,cardId = 1101998,lv = 108,bklv = 14,star = 3,equip = {[1] = {id = 2006301,lv = 108},[2] = {id = 2006302,lv = 108},[3] = {id = 2006303,lv = 108},[4] = {id = 2006304,lv = 108},[5] = {id = 2006305,lv = 108},[6] = {id = 2006306,lv = 108},[7] = {id = 2006307,lv = 108},[8] = {id = 2006308,lv = 108}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-20-6-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1200631,cardId = 1102998,lv = 105,bklv = 14,star = 3,ghost = 35,equip = {[1] = {id = 2107301,lv = 108},[2] = {id = 2107302,lv = 108},[3] = {id = 2107303,lv = 108},[4] = {id = 2107304,lv = 108},[5] = {id = 2107305,lv = 108},[6] = {id = 2107306,lv = 108},[7] = {id = 2107307,lv = 108},[8] = {id = 2107308,lv = 108}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12007] = {
		[1] = {
			jlr = {id = 1200710,cardId = 1101999,lv = 109,bklv = 14,star = 4,equip = {[1] = {id = 2006301,lv = 109},[2] = {id = 2006302,lv = 109},[3] = {id = 2006303,lv = 109},[4] = {id = 2006304,lv = 109},[5] = {id = 2006305,lv = 109},[6] = {id = 2006306,lv = 109},[7] = {id = 2006307,lv = 109},[8] = {id = 2006308,lv = 109}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-20-7-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1200711,cardId = 1102999,lv = 110,bklv = 15,star = 4,ghost = 35,equip = {[1] = {id = 2107301,lv = 109},[2] = {id = 2107302,lv = 109},[3] = {id = 2107303,lv = 109},[4] = {id = 2107304,lv = 109},[5] = {id = 2107305,lv = 109},[6] = {id = 2107306,lv = 109},[7] = {id = 2107307,lv = 109},[8] = {id = 2107308,lv = 109}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1200720,cardId = 1101999,lv = 109,bklv = 14,star = 4,equip = {[1] = {id = 2006301,lv = 109},[2] = {id = 2006302,lv = 109},[3] = {id = 2006303,lv = 109},[4] = {id = 2006304,lv = 109},[5] = {id = 2006305,lv = 109},[6] = {id = 2006306,lv = 109},[7] = {id = 2006307,lv = 109},[8] = {id = 2006308,lv = 109}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-20-7-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1200721,cardId = 1102999,lv = 110,bklv = 15,star = 4,ghost = 36,equip = {[1] = {id = 2107301,lv = 109},[2] = {id = 2107302,lv = 109},[3] = {id = 2107303,lv = 109},[4] = {id = 2107304,lv = 109},[5] = {id = 2107305,lv = 109},[6] = {id = 2107306,lv = 109},[7] = {id = 2107307,lv = 109},[8] = {id = 2107308,lv = 109}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1200730,cardId = 1101999,lv = 109,bklv = 14,star = 3,equip = {[1] = {id = 2006301,lv = 109},[2] = {id = 2006302,lv = 109},[3] = {id = 2006303,lv = 109},[4] = {id = 2006304,lv = 109},[5] = {id = 2006305,lv = 109},[6] = {id = 2006306,lv = 109},[7] = {id = 2006307,lv = 109},[8] = {id = 2006308,lv = 109}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-20-7-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1200731,cardId = 1102999,lv = 105,bklv = 14,star = 3,ghost = 35,equip = {[1] = {id = 2107301,lv = 109},[2] = {id = 2107302,lv = 109},[3] = {id = 2107303,lv = 109},[4] = {id = 2107304,lv = 109},[5] = {id = 2107305,lv = 109},[6] = {id = 2107306,lv = 109},[7] = {id = 2107307,lv = 109},[8] = {id = 2107308,lv = 109}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12008] = {
		[1] = {
			jlr = {id = 1200810,cardId = 1101999,lv = 109,bklv = 14,star = 4,equip = {[1] = {id = 2006301,lv = 109},[2] = {id = 2006302,lv = 109},[3] = {id = 2006303,lv = 109},[4] = {id = 2006304,lv = 109},[5] = {id = 2006305,lv = 109},[6] = {id = 2006306,lv = 109},[7] = {id = 2006307,lv = 109},[8] = {id = 2006308,lv = 109}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-20-8-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1200811,cardId = 1102999,lv = 110,bklv = 15,star = 4,ghost = 35,equip = {[1] = {id = 2107301,lv = 109},[2] = {id = 2107302,lv = 109},[3] = {id = 2107303,lv = 109},[4] = {id = 2107304,lv = 109},[5] = {id = 2107305,lv = 109},[6] = {id = 2107306,lv = 109},[7] = {id = 2107307,lv = 109},[8] = {id = 2107308,lv = 109}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1200820,cardId = 1101999,lv = 109,bklv = 14,star = 4,equip = {[1] = {id = 2006301,lv = 109},[2] = {id = 2006302,lv = 109},[3] = {id = 2006303,lv = 109},[4] = {id = 2006304,lv = 109},[5] = {id = 2006305,lv = 109},[6] = {id = 2006306,lv = 109},[7] = {id = 2006307,lv = 109},[8] = {id = 2006308,lv = 109}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-20-8-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1200821,cardId = 1102999,lv = 110,bklv = 15,star = 4,ghost = 36,equip = {[1] = {id = 2107301,lv = 109},[2] = {id = 2107302,lv = 109},[3] = {id = 2107303,lv = 109},[4] = {id = 2107304,lv = 109},[5] = {id = 2107305,lv = 109},[6] = {id = 2107306,lv = 109},[7] = {id = 2107307,lv = 109},[8] = {id = 2107308,lv = 109}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1200830,cardId = 1101999,lv = 109,bklv = 14,star = 3,equip = {[1] = {id = 2006301,lv = 109},[2] = {id = 2006302,lv = 109},[3] = {id = 2006303,lv = 109},[4] = {id = 2006304,lv = 109},[5] = {id = 2006305,lv = 109},[6] = {id = 2006306,lv = 109},[7] = {id = 2006307,lv = 109},[8] = {id = 2006308,lv = 109}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-20-8-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1200831,cardId = 1102999,lv = 105,bklv = 14,star = 3,ghost = 35,equip = {[1] = {id = 2107301,lv = 109},[2] = {id = 2107302,lv = 109},[3] = {id = 2107303,lv = 109},[4] = {id = 2107304,lv = 109},[5] = {id = 2107305,lv = 109},[6] = {id = 2107306,lv = 109},[7] = {id = 2107307,lv = 109},[8] = {id = 2107308,lv = 109}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12009] = {
		[1] = {
			jlr = {id = 1200910,cardId = 1101998,lv = 110,bklv = 14,star = 3,equip = {[1] = {id = 2006301,lv = 110},[2] = {id = 2006302,lv = 110},[3] = {id = 2006303,lv = 110},[4] = {id = 2006304,lv = 110},[5] = {id = 2006305,lv = 110},[6] = {id = 2006306,lv = 110},[7] = {id = 2006307,lv = 110},[8] = {id = 2006308,lv = 110}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-20-9-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1200911,cardId = 1102998,lv = 110,bklv = 15,star = 3,ghost = 36,equip = {[1] = {id = 2107301,lv = 110},[2] = {id = 2107302,lv = 110},[3] = {id = 2107303,lv = 110},[4] = {id = 2107304,lv = 110},[5] = {id = 2107305,lv = 110},[6] = {id = 2107306,lv = 110},[7] = {id = 2107307,lv = 110},[8] = {id = 2107308,lv = 110}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1200920,cardId = 1101997,lv = 110,bklv = 14,star = 2,equip = {[1] = {id = 2006301,lv = 110},[2] = {id = 2006302,lv = 110},[3] = {id = 2006303,lv = 110},[4] = {id = 2006304,lv = 110},[5] = {id = 2006305,lv = 110},[6] = {id = 2006306,lv = 110},[7] = {id = 2006307,lv = 110},[8] = {id = 2006308,lv = 110}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-20-9-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1200921,cardId = 1102997,lv = 110,bklv = 15,star = 2,ghost = 36,equip = {[1] = {id = 2107301,lv = 110},[2] = {id = 2107302,lv = 110},[3] = {id = 2107303,lv = 110},[4] = {id = 2107304,lv = 110},[5] = {id = 2107305,lv = 110},[6] = {id = 2107306,lv = 110},[7] = {id = 2107307,lv = 110},[8] = {id = 2107308,lv = 110}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1200930,cardId = 1101998,lv = 110,bklv = 14,star = 3,equip = {[1] = {id = 2006301,lv = 110},[2] = {id = 2006302,lv = 110},[3] = {id = 2006303,lv = 110},[4] = {id = 2006304,lv = 110},[5] = {id = 2006305,lv = 110},[6] = {id = 2006306,lv = 110},[7] = {id = 2006307,lv = 110},[8] = {id = 2006308,lv = 110}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-20-9-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1200931,cardId = 1102998,lv = 110,bklv = 15,star = 3,ghost = 36,equip = {[1] = {id = 2107301,lv = 110},[2] = {id = 2107302,lv = 110},[3] = {id = 2107303,lv = 110},[4] = {id = 2107304,lv = 110},[5] = {id = 2107305,lv = 110},[6] = {id = 2107306,lv = 110},[7] = {id = 2107307,lv = 110},[8] = {id = 2107308,lv = 110}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12010] = {
		[1] = {
			jlr = {id = 1201010,cardId = 1101997,lv = 110,bklv = 14,star = 2,equip = {[1] = {id = 2006301,lv = 110},[2] = {id = 2006302,lv = 110},[3] = {id = 2006303,lv = 110},[4] = {id = 2006304,lv = 110},[5] = {id = 2006305,lv = 110},[6] = {id = 2006306,lv = 110},[7] = {id = 2006307,lv = 110},[8] = {id = 2006308,lv = 110}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-20-10-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1201011,cardId = 1102997,lv = 110,bklv = 15,star = 2,ghost = 36,equip = {[1] = {id = 2107301,lv = 110},[2] = {id = 2107302,lv = 110},[3] = {id = 2107303,lv = 110},[4] = {id = 2107304,lv = 110},[5] = {id = 2107305,lv = 110},[6] = {id = 2107306,lv = 110},[7] = {id = 2107307,lv = 110},[8] = {id = 2107308,lv = 110}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1201020,cardId = 1101997,lv = 110,bklv = 14,star = 2,equip = {[1] = {id = 2006301,lv = 110},[2] = {id = 2006302,lv = 110},[3] = {id = 2006303,lv = 110},[4] = {id = 2006304,lv = 110},[5] = {id = 2006305,lv = 110},[6] = {id = 2006306,lv = 110},[7] = {id = 2006307,lv = 110},[8] = {id = 2006308,lv = 110}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-20-10-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1201021,cardId = 1102997,lv = 110,bklv = 15,star = 2,ghost = 36,equip = {[1] = {id = 2107301,lv = 110},[2] = {id = 2107302,lv = 110},[3] = {id = 2107303,lv = 110},[4] = {id = 2107304,lv = 110},[5] = {id = 2107305,lv = 110},[6] = {id = 2107306,lv = 110},[7] = {id = 2107307,lv = 110},[8] = {id = 2107308,lv = 110}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1201030,cardId = 1101997,lv = 110,bklv = 14,star = 2,equip = {[1] = {id = 2006301,lv = 110},[2] = {id = 2006302,lv = 110},[3] = {id = 2006303,lv = 110},[4] = {id = 2006304,lv = 110},[5] = {id = 2006305,lv = 110},[6] = {id = 2006306,lv = 110},[7] = {id = 2006307,lv = 110},[8] = {id = 2006308,lv = 110}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-20-10-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1201031,cardId = 1102997,lv = 110,bklv = 15,star = 2,ghost = 36,equip = {[1] = {id = 2107301,lv = 110},[2] = {id = 2107302,lv = 110},[3] = {id = 2107303,lv = 110},[4] = {id = 2107304,lv = 110},[5] = {id = 2107305,lv = 110},[6] = {id = 2107306,lv = 110},[7] = {id = 2107307,lv = 110},[8] = {id = 2107308,lv = 110}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12101] = {
		[1] = {
			jlr = {id = 1210110,cardId = 1101999,lv = 110,bklv = 14,star = 4,equip = {[1] = {id = 2006301,lv = 110},[2] = {id = 2006302,lv = 110},[3] = {id = 2006303,lv = 110},[4] = {id = 2006304,lv = 110},[5] = {id = 2006305,lv = 110},[6] = {id = 2006306,lv = 110},[7] = {id = 2006307,lv = 110},[8] = {id = 2006308,lv = 110}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-21-1-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1210111,cardId = 1102999,lv = 110,bklv = 15,star = 4,ghost = 36,equip = {[1] = {id = 2107301,lv = 110},[2] = {id = 2107302,lv = 110},[3] = {id = 2107303,lv = 110},[4] = {id = 2107304,lv = 110},[5] = {id = 2107305,lv = 110},[6] = {id = 2107306,lv = 110},[7] = {id = 2107307,lv = 110},[8] = {id = 2107308,lv = 110}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1210120,cardId = 1101999,lv = 110,bklv = 14,star = 4,equip = {[1] = {id = 2006301,lv = 110},[2] = {id = 2006302,lv = 110},[3] = {id = 2006303,lv = 110},[4] = {id = 2006304,lv = 110},[5] = {id = 2006305,lv = 110},[6] = {id = 2006306,lv = 110},[7] = {id = 2006307,lv = 110},[8] = {id = 2006308,lv = 110}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-21-1-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1210121,cardId = 1102999,lv = 110,bklv = 15,star = 4,ghost = 36,equip = {[1] = {id = 2107301,lv = 110},[2] = {id = 2107302,lv = 110},[3] = {id = 2107303,lv = 110},[4] = {id = 2107304,lv = 110},[5] = {id = 2107305,lv = 110},[6] = {id = 2107306,lv = 110},[7] = {id = 2107307,lv = 110},[8] = {id = 2107308,lv = 110}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1210130,cardId = 1101999,lv = 110,bklv = 14,star = 4,equip = {[1] = {id = 2006301,lv = 110},[2] = {id = 2006302,lv = 110},[3] = {id = 2006303,lv = 110},[4] = {id = 2006304,lv = 110},[5] = {id = 2006305,lv = 110},[6] = {id = 2006306,lv = 110},[7] = {id = 2006307,lv = 110},[8] = {id = 2006308,lv = 110}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-21-1-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1210131,cardId = 1102999,lv = 110,bklv = 15,star = 4,ghost = 36,equip = {[1] = {id = 2107301,lv = 110},[2] = {id = 2107302,lv = 110},[3] = {id = 2107303,lv = 110},[4] = {id = 2107304,lv = 110},[5] = {id = 2107305,lv = 110},[6] = {id = 2107306,lv = 110},[7] = {id = 2107307,lv = 110},[8] = {id = 2107308,lv = 110}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12102] = {
		[1] = {
			jlr = {id = 1210210,cardId = 1101999,lv = 110,bklv = 14,star = 4,equip = {[1] = {id = 2006301,lv = 110},[2] = {id = 2006302,lv = 110},[3] = {id = 2006303,lv = 110},[4] = {id = 2006304,lv = 110},[5] = {id = 2006305,lv = 110},[6] = {id = 2006306,lv = 110},[7] = {id = 2006307,lv = 110},[8] = {id = 2006308,lv = 110}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-21-2-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1210211,cardId = 1102999,lv = 110,bklv = 15,star = 4,ghost = 36,equip = {[1] = {id = 2107301,lv = 110},[2] = {id = 2107302,lv = 110},[3] = {id = 2107303,lv = 110},[4] = {id = 2107304,lv = 110},[5] = {id = 2107305,lv = 110},[6] = {id = 2107306,lv = 110},[7] = {id = 2107307,lv = 110},[8] = {id = 2107308,lv = 110}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1210220,cardId = 1101999,lv = 110,bklv = 14,star = 4,equip = {[1] = {id = 2006301,lv = 110},[2] = {id = 2006302,lv = 110},[3] = {id = 2006303,lv = 110},[4] = {id = 2006304,lv = 110},[5] = {id = 2006305,lv = 110},[6] = {id = 2006306,lv = 110},[7] = {id = 2006307,lv = 110},[8] = {id = 2006308,lv = 110}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-21-2-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1210221,cardId = 1102999,lv = 110,bklv = 15,star = 4,ghost = 36,equip = {[1] = {id = 2107301,lv = 110},[2] = {id = 2107302,lv = 110},[3] = {id = 2107303,lv = 110},[4] = {id = 2107304,lv = 110},[5] = {id = 2107305,lv = 110},[6] = {id = 2107306,lv = 110},[7] = {id = 2107307,lv = 110},[8] = {id = 2107308,lv = 110}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1210230,cardId = 1101999,lv = 110,bklv = 14,star = 4,equip = {[1] = {id = 2006301,lv = 110},[2] = {id = 2006302,lv = 110},[3] = {id = 2006303,lv = 110},[4] = {id = 2006304,lv = 110},[5] = {id = 2006305,lv = 110},[6] = {id = 2006306,lv = 110},[7] = {id = 2006307,lv = 110},[8] = {id = 2006308,lv = 110}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-21-2-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1210231,cardId = 1102999,lv = 110,bklv = 15,star = 4,ghost = 36,equip = {[1] = {id = 2107301,lv = 110},[2] = {id = 2107302,lv = 110},[3] = {id = 2107303,lv = 110},[4] = {id = 2107304,lv = 110},[5] = {id = 2107305,lv = 110},[6] = {id = 2107306,lv = 110},[7] = {id = 2107307,lv = 110},[8] = {id = 2107308,lv = 110}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12103] = {
		[1] = {
			jlr = {id = 1210310,cardId = 1101999,lv = 111,bklv = 14,star = 4,equip = {[1] = {id = 2006301,lv = 111},[2] = {id = 2006302,lv = 111},[3] = {id = 2006303,lv = 111},[4] = {id = 2006304,lv = 111},[5] = {id = 2006305,lv = 111},[6] = {id = 2006306,lv = 111},[7] = {id = 2006307,lv = 111},[8] = {id = 2006308,lv = 111}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-21-3-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1210311,cardId = 1102999,lv = 110,bklv = 15,star = 4,ghost = 36,equip = {[1] = {id = 2107301,lv = 111},[2] = {id = 2107302,lv = 111},[3] = {id = 2107303,lv = 111},[4] = {id = 2107304,lv = 111},[5] = {id = 2107305,lv = 111},[6] = {id = 2107306,lv = 111},[7] = {id = 2107307,lv = 111},[8] = {id = 2107308,lv = 111}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1210320,cardId = 1101998,lv = 111,bklv = 14,star = 3,equip = {[1] = {id = 2006301,lv = 111},[2] = {id = 2006302,lv = 111},[3] = {id = 2006303,lv = 111},[4] = {id = 2006304,lv = 111},[5] = {id = 2006305,lv = 111},[6] = {id = 2006306,lv = 111},[7] = {id = 2006307,lv = 111},[8] = {id = 2006308,lv = 111}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-21-3-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1210321,cardId = 1102998,lv = 115,bklv = 16,star = 3,ghost = 37,equip = {[1] = {id = 2107301,lv = 111},[2] = {id = 2107302,lv = 111},[3] = {id = 2107303,lv = 111},[4] = {id = 2107304,lv = 111},[5] = {id = 2107305,lv = 111},[6] = {id = 2107306,lv = 111},[7] = {id = 2107307,lv = 111},[8] = {id = 2107308,lv = 111}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1210330,cardId = 1101999,lv = 111,bklv = 14,star = 4,equip = {[1] = {id = 2006301,lv = 111},[2] = {id = 2006302,lv = 111},[3] = {id = 2006303,lv = 111},[4] = {id = 2006304,lv = 111},[5] = {id = 2006305,lv = 111},[6] = {id = 2006306,lv = 111},[7] = {id = 2006307,lv = 111},[8] = {id = 2006308,lv = 111}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-21-3-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1210331,cardId = 1102999,lv = 110,bklv = 15,star = 4,ghost = 36,equip = {[1] = {id = 2107301,lv = 111},[2] = {id = 2107302,lv = 111},[3] = {id = 2107303,lv = 111},[4] = {id = 2107304,lv = 111},[5] = {id = 2107305,lv = 111},[6] = {id = 2107306,lv = 111},[7] = {id = 2107307,lv = 111},[8] = {id = 2107308,lv = 111}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12104] = {
		[1] = {
			jlr = {id = 1210410,cardId = 1101999,lv = 112,bklv = 14,star = 4,equip = {[1] = {id = 2006301,lv = 112},[2] = {id = 2006302,lv = 112},[3] = {id = 2006303,lv = 112},[4] = {id = 2006304,lv = 112},[5] = {id = 2006305,lv = 112},[6] = {id = 2006306,lv = 112},[7] = {id = 2006307,lv = 112},[8] = {id = 2006308,lv = 112}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-21-4-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1210411,cardId = 1102999,lv = 110,bklv = 15,star = 4,ghost = 37,equip = {[1] = {id = 2107301,lv = 112},[2] = {id = 2107302,lv = 112},[3] = {id = 2107303,lv = 112},[4] = {id = 2107304,lv = 112},[5] = {id = 2107305,lv = 112},[6] = {id = 2107306,lv = 112},[7] = {id = 2107307,lv = 112},[8] = {id = 2107308,lv = 112}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1210420,cardId = 1101999,lv = 112,bklv = 14,star = 4,equip = {[1] = {id = 2006301,lv = 112},[2] = {id = 2006302,lv = 112},[3] = {id = 2006303,lv = 112},[4] = {id = 2006304,lv = 112},[5] = {id = 2006305,lv = 112},[6] = {id = 2006306,lv = 112},[7] = {id = 2006307,lv = 112},[8] = {id = 2006308,lv = 112}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-21-4-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1210421,cardId = 1102999,lv = 115,bklv = 16,star = 4,ghost = 37,equip = {[1] = {id = 2107301,lv = 112},[2] = {id = 2107302,lv = 112},[3] = {id = 2107303,lv = 112},[4] = {id = 2107304,lv = 112},[5] = {id = 2107305,lv = 112},[6] = {id = 2107306,lv = 112},[7] = {id = 2107307,lv = 112},[8] = {id = 2107308,lv = 112}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1210430,cardId = 1101999,lv = 112,bklv = 14,star = 4,equip = {[1] = {id = 2006301,lv = 112},[2] = {id = 2006302,lv = 112},[3] = {id = 2006303,lv = 112},[4] = {id = 2006304,lv = 112},[5] = {id = 2006305,lv = 112},[6] = {id = 2006306,lv = 112},[7] = {id = 2006307,lv = 112},[8] = {id = 2006308,lv = 112}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-21-4-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1210431,cardId = 1102999,lv = 110,bklv = 15,star = 4,ghost = 36,equip = {[1] = {id = 2107301,lv = 112},[2] = {id = 2107302,lv = 112},[3] = {id = 2107303,lv = 112},[4] = {id = 2107304,lv = 112},[5] = {id = 2107305,lv = 112},[6] = {id = 2107306,lv = 112},[7] = {id = 2107307,lv = 112},[8] = {id = 2107308,lv = 112}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12105] = {
		[1] = {
			jlr = {id = 1210510,cardId = 1101999,lv = 112,bklv = 14,star = 4,equip = {[1] = {id = 2006301,lv = 112},[2] = {id = 2006302,lv = 112},[3] = {id = 2006303,lv = 112},[4] = {id = 2006304,lv = 112},[5] = {id = 2006305,lv = 112},[6] = {id = 2006306,lv = 112},[7] = {id = 2006307,lv = 112},[8] = {id = 2006308,lv = 112}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-21-5-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1210511,cardId = 1102999,lv = 110,bklv = 15,star = 4,ghost = 37,equip = {[1] = {id = 2107301,lv = 112},[2] = {id = 2107302,lv = 112},[3] = {id = 2107303,lv = 112},[4] = {id = 2107304,lv = 112},[5] = {id = 2107305,lv = 112},[6] = {id = 2107306,lv = 112},[7] = {id = 2107307,lv = 112},[8] = {id = 2107308,lv = 112}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1210520,cardId = 1101999,lv = 112,bklv = 14,star = 4,equip = {[1] = {id = 2006301,lv = 112},[2] = {id = 2006302,lv = 112},[3] = {id = 2006303,lv = 112},[4] = {id = 2006304,lv = 112},[5] = {id = 2006305,lv = 112},[6] = {id = 2006306,lv = 112},[7] = {id = 2006307,lv = 112},[8] = {id = 2006308,lv = 112}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-21-5-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1210521,cardId = 1102999,lv = 115,bklv = 16,star = 4,ghost = 37,equip = {[1] = {id = 2107301,lv = 112},[2] = {id = 2107302,lv = 112},[3] = {id = 2107303,lv = 112},[4] = {id = 2107304,lv = 112},[5] = {id = 2107305,lv = 112},[6] = {id = 2107306,lv = 112},[7] = {id = 2107307,lv = 112},[8] = {id = 2107308,lv = 112}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1210530,cardId = 1101999,lv = 112,bklv = 14,star = 4,equip = {[1] = {id = 2006301,lv = 112},[2] = {id = 2006302,lv = 112},[3] = {id = 2006303,lv = 112},[4] = {id = 2006304,lv = 112},[5] = {id = 2006305,lv = 112},[6] = {id = 2006306,lv = 112},[7] = {id = 2006307,lv = 112},[8] = {id = 2006308,lv = 112}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-21-5-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1210531,cardId = 1102999,lv = 110,bklv = 15,star = 4,ghost = 37,equip = {[1] = {id = 2107301,lv = 112},[2] = {id = 2107302,lv = 112},[3] = {id = 2107303,lv = 112},[4] = {id = 2107304,lv = 112},[5] = {id = 2107305,lv = 112},[6] = {id = 2107306,lv = 112},[7] = {id = 2107307,lv = 112},[8] = {id = 2107308,lv = 112}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12106] = {
		[1] = {
			jlr = {id = 1210610,cardId = 1101998,lv = 113,bklv = 15,star = 3,equip = {[1] = {id = 2007301,lv = 113},[2] = {id = 2007302,lv = 113},[3] = {id = 2007303,lv = 113},[4] = {id = 2007304,lv = 113},[5] = {id = 2007305,lv = 113},[6] = {id = 2007306,lv = 113},[7] = {id = 2007307,lv = 113},[8] = {id = 2007308,lv = 113}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-21-6-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1210611,cardId = 1102998,lv = 115,bklv = 16,star = 3,ghost = 37,equip = {[1] = {id = 2107301,lv = 113},[2] = {id = 2107302,lv = 113},[3] = {id = 2107303,lv = 113},[4] = {id = 2107304,lv = 113},[5] = {id = 2107305,lv = 113},[6] = {id = 2107306,lv = 113},[7] = {id = 2107307,lv = 113},[8] = {id = 2107308,lv = 113}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1210620,cardId = 1101998,lv = 113,bklv = 15,star = 3,equip = {[1] = {id = 2007301,lv = 113},[2] = {id = 2007302,lv = 113},[3] = {id = 2007303,lv = 113},[4] = {id = 2007304,lv = 113},[5] = {id = 2007305,lv = 113},[6] = {id = 2007306,lv = 113},[7] = {id = 2007307,lv = 113},[8] = {id = 2007308,lv = 113}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-21-6-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1210621,cardId = 1102998,lv = 115,bklv = 16,star = 3,ghost = 38,equip = {[1] = {id = 2107301,lv = 113},[2] = {id = 2107302,lv = 113},[3] = {id = 2107303,lv = 113},[4] = {id = 2107304,lv = 113},[5] = {id = 2107305,lv = 113},[6] = {id = 2107306,lv = 113},[7] = {id = 2107307,lv = 113},[8] = {id = 2107308,lv = 113}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1210630,cardId = 1101998,lv = 113,bklv = 15,star = 3,equip = {[1] = {id = 2007301,lv = 113},[2] = {id = 2007302,lv = 113},[3] = {id = 2007303,lv = 113},[4] = {id = 2007304,lv = 113},[5] = {id = 2007305,lv = 113},[6] = {id = 2007306,lv = 113},[7] = {id = 2007307,lv = 113},[8] = {id = 2007308,lv = 113}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-21-6-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1210631,cardId = 1102998,lv = 110,bklv = 15,star = 3,ghost = 37,equip = {[1] = {id = 2107301,lv = 113},[2] = {id = 2107302,lv = 113},[3] = {id = 2107303,lv = 113},[4] = {id = 2107304,lv = 113},[5] = {id = 2107305,lv = 113},[6] = {id = 2107306,lv = 113},[7] = {id = 2107307,lv = 113},[8] = {id = 2107308,lv = 113}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12107] = {
		[1] = {
			jlr = {id = 1210710,cardId = 1101999,lv = 114,bklv = 15,star = 4,equip = {[1] = {id = 2007301,lv = 114},[2] = {id = 2007302,lv = 114},[3] = {id = 2007303,lv = 114},[4] = {id = 2007304,lv = 114},[5] = {id = 2007305,lv = 114},[6] = {id = 2007306,lv = 114},[7] = {id = 2007307,lv = 114},[8] = {id = 2007308,lv = 114}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-21-7-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1210711,cardId = 1102999,lv = 115,bklv = 16,star = 4,ghost = 37,equip = {[1] = {id = 2107301,lv = 114},[2] = {id = 2107302,lv = 114},[3] = {id = 2107303,lv = 114},[4] = {id = 2107304,lv = 114},[5] = {id = 2107305,lv = 114},[6] = {id = 2107306,lv = 114},[7] = {id = 2107307,lv = 114},[8] = {id = 2107308,lv = 114}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1210720,cardId = 1101999,lv = 114,bklv = 15,star = 4,equip = {[1] = {id = 2007301,lv = 114},[2] = {id = 2007302,lv = 114},[3] = {id = 2007303,lv = 114},[4] = {id = 2007304,lv = 114},[5] = {id = 2007305,lv = 114},[6] = {id = 2007306,lv = 114},[7] = {id = 2007307,lv = 114},[8] = {id = 2007308,lv = 114}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-21-7-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1210721,cardId = 1102999,lv = 115,bklv = 16,star = 4,ghost = 38,equip = {[1] = {id = 2107301,lv = 114},[2] = {id = 2107302,lv = 114},[3] = {id = 2107303,lv = 114},[4] = {id = 2107304,lv = 114},[5] = {id = 2107305,lv = 114},[6] = {id = 2107306,lv = 114},[7] = {id = 2107307,lv = 114},[8] = {id = 2107308,lv = 114}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1210730,cardId = 1101999,lv = 114,bklv = 15,star = 4,equip = {[1] = {id = 2007301,lv = 114},[2] = {id = 2007302,lv = 114},[3] = {id = 2007303,lv = 114},[4] = {id = 2007304,lv = 114},[5] = {id = 2007305,lv = 114},[6] = {id = 2007306,lv = 114},[7] = {id = 2007307,lv = 114},[8] = {id = 2007308,lv = 114}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-21-7-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1210731,cardId = 1102999,lv = 110,bklv = 15,star = 4,ghost = 37,equip = {[1] = {id = 2107301,lv = 114},[2] = {id = 2107302,lv = 114},[3] = {id = 2107303,lv = 114},[4] = {id = 2107304,lv = 114},[5] = {id = 2107305,lv = 114},[6] = {id = 2107306,lv = 114},[7] = {id = 2107307,lv = 114},[8] = {id = 2107308,lv = 114}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12108] = {
		[1] = {
			jlr = {id = 1210810,cardId = 1101999,lv = 114,bklv = 15,star = 4,equip = {[1] = {id = 2007301,lv = 114},[2] = {id = 2007302,lv = 114},[3] = {id = 2007303,lv = 114},[4] = {id = 2007304,lv = 114},[5] = {id = 2007305,lv = 114},[6] = {id = 2007306,lv = 114},[7] = {id = 2007307,lv = 114},[8] = {id = 2007308,lv = 114}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-21-8-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1210811,cardId = 1102999,lv = 115,bklv = 16,star = 4,ghost = 37,equip = {[1] = {id = 2107301,lv = 114},[2] = {id = 2107302,lv = 114},[3] = {id = 2107303,lv = 114},[4] = {id = 2107304,lv = 114},[5] = {id = 2107305,lv = 114},[6] = {id = 2107306,lv = 114},[7] = {id = 2107307,lv = 114},[8] = {id = 2107308,lv = 114}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1210820,cardId = 1101999,lv = 114,bklv = 15,star = 4,equip = {[1] = {id = 2007301,lv = 114},[2] = {id = 2007302,lv = 114},[3] = {id = 2007303,lv = 114},[4] = {id = 2007304,lv = 114},[5] = {id = 2007305,lv = 114},[6] = {id = 2007306,lv = 114},[7] = {id = 2007307,lv = 114},[8] = {id = 2007308,lv = 114}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-21-8-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1210821,cardId = 1102999,lv = 115,bklv = 16,star = 4,ghost = 38,equip = {[1] = {id = 2107301,lv = 114},[2] = {id = 2107302,lv = 114},[3] = {id = 2107303,lv = 114},[4] = {id = 2107304,lv = 114},[5] = {id = 2107305,lv = 114},[6] = {id = 2107306,lv = 114},[7] = {id = 2107307,lv = 114},[8] = {id = 2107308,lv = 114}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1210830,cardId = 1101999,lv = 114,bklv = 15,star = 4,equip = {[1] = {id = 2007301,lv = 114},[2] = {id = 2007302,lv = 114},[3] = {id = 2007303,lv = 114},[4] = {id = 2007304,lv = 114},[5] = {id = 2007305,lv = 114},[6] = {id = 2007306,lv = 114},[7] = {id = 2007307,lv = 114},[8] = {id = 2007308,lv = 114}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-21-8-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1210831,cardId = 1102999,lv = 110,bklv = 15,star = 4,ghost = 37,equip = {[1] = {id = 2107301,lv = 114},[2] = {id = 2107302,lv = 114},[3] = {id = 2107303,lv = 114},[4] = {id = 2107304,lv = 114},[5] = {id = 2107305,lv = 114},[6] = {id = 2107306,lv = 114},[7] = {id = 2107307,lv = 114},[8] = {id = 2107308,lv = 114}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12109] = {
		[1] = {
			jlr = {id = 1210910,cardId = 1101998,lv = 115,bklv = 15,star = 3,equip = {[1] = {id = 2007301,lv = 115},[2] = {id = 2007302,lv = 115},[3] = {id = 2007303,lv = 115},[4] = {id = 2007304,lv = 115},[5] = {id = 2007305,lv = 115},[6] = {id = 2007306,lv = 115},[7] = {id = 2007307,lv = 115},[8] = {id = 2007308,lv = 115}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-21-9-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1210911,cardId = 1102998,lv = 115,bklv = 16,star = 3,ghost = 38,equip = {[1] = {id = 2107301,lv = 115},[2] = {id = 2107302,lv = 115},[3] = {id = 2107303,lv = 115},[4] = {id = 2107304,lv = 115},[5] = {id = 2107305,lv = 115},[6] = {id = 2107306,lv = 115},[7] = {id = 2107307,lv = 115},[8] = {id = 2107308,lv = 115}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1210920,cardId = 1101997,lv = 115,bklv = 15,star = 2,equip = {[1] = {id = 2007301,lv = 115},[2] = {id = 2007302,lv = 115},[3] = {id = 2007303,lv = 115},[4] = {id = 2007304,lv = 115},[5] = {id = 2007305,lv = 115},[6] = {id = 2007306,lv = 115},[7] = {id = 2007307,lv = 115},[8] = {id = 2007308,lv = 115}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-21-9-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1210921,cardId = 1102997,lv = 115,bklv = 16,star = 2,ghost = 38,equip = {[1] = {id = 2107301,lv = 115},[2] = {id = 2107302,lv = 115},[3] = {id = 2107303,lv = 115},[4] = {id = 2107304,lv = 115},[5] = {id = 2107305,lv = 115},[6] = {id = 2107306,lv = 115},[7] = {id = 2107307,lv = 115},[8] = {id = 2107308,lv = 115}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1210930,cardId = 1101998,lv = 115,bklv = 15,star = 3,equip = {[1] = {id = 2007301,lv = 115},[2] = {id = 2007302,lv = 115},[3] = {id = 2007303,lv = 115},[4] = {id = 2007304,lv = 115},[5] = {id = 2007305,lv = 115},[6] = {id = 2007306,lv = 115},[7] = {id = 2007307,lv = 115},[8] = {id = 2007308,lv = 115}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-21-9-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1210931,cardId = 1102998,lv = 115,bklv = 16,star = 3,ghost = 38,equip = {[1] = {id = 2107301,lv = 115},[2] = {id = 2107302,lv = 115},[3] = {id = 2107303,lv = 115},[4] = {id = 2107304,lv = 115},[5] = {id = 2107305,lv = 115},[6] = {id = 2107306,lv = 115},[7] = {id = 2107307,lv = 115},[8] = {id = 2107308,lv = 115}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12110] = {
		[1] = {
			jlr = {id = 1211010,cardId = 1101997,lv = 115,bklv = 15,star = 2,equip = {[1] = {id = 2007301,lv = 115},[2] = {id = 2007302,lv = 115},[3] = {id = 2007303,lv = 115},[4] = {id = 2007304,lv = 115},[5] = {id = 2007305,lv = 115},[6] = {id = 2007306,lv = 115},[7] = {id = 2007307,lv = 115},[8] = {id = 2007308,lv = 115}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-21-10-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1211011,cardId = 1102997,lv = 115,bklv = 16,star = 2,ghost = 38,equip = {[1] = {id = 2107301,lv = 115},[2] = {id = 2107302,lv = 115},[3] = {id = 2107303,lv = 115},[4] = {id = 2107304,lv = 115},[5] = {id = 2107305,lv = 115},[6] = {id = 2107306,lv = 115},[7] = {id = 2107307,lv = 115},[8] = {id = 2107308,lv = 115}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1211020,cardId = 1101997,lv = 115,bklv = 15,star = 2,equip = {[1] = {id = 2007301,lv = 115},[2] = {id = 2007302,lv = 115},[3] = {id = 2007303,lv = 115},[4] = {id = 2007304,lv = 115},[5] = {id = 2007305,lv = 115},[6] = {id = 2007306,lv = 115},[7] = {id = 2007307,lv = 115},[8] = {id = 2007308,lv = 115}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-21-10-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1211021,cardId = 1102997,lv = 115,bklv = 16,star = 2,ghost = 38,equip = {[1] = {id = 2107301,lv = 115},[2] = {id = 2107302,lv = 115},[3] = {id = 2107303,lv = 115},[4] = {id = 2107304,lv = 115},[5] = {id = 2107305,lv = 115},[6] = {id = 2107306,lv = 115},[7] = {id = 2107307,lv = 115},[8] = {id = 2107308,lv = 115}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1211030,cardId = 1101997,lv = 115,bklv = 15,star = 2,equip = {[1] = {id = 2007301,lv = 115},[2] = {id = 2007302,lv = 115},[3] = {id = 2007303,lv = 115},[4] = {id = 2007304,lv = 115},[5] = {id = 2007305,lv = 115},[6] = {id = 2007306,lv = 115},[7] = {id = 2007307,lv = 115},[8] = {id = 2007308,lv = 115}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-21-10-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1211031,cardId = 1102997,lv = 115,bklv = 16,star = 2,ghost = 38,equip = {[1] = {id = 2107301,lv = 115},[2] = {id = 2107302,lv = 115},[3] = {id = 2107303,lv = 115},[4] = {id = 2107304,lv = 115},[5] = {id = 2107305,lv = 115},[6] = {id = 2107306,lv = 115},[7] = {id = 2107307,lv = 115},[8] = {id = 2107308,lv = 115}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12201] = {
		[1] = {
			jlr = {id = 1220110,cardId = 1101999,lv = 115,bklv = 15,star = 4,equip = {[1] = {id = 2007301,lv = 115},[2] = {id = 2007302,lv = 115},[3] = {id = 2007303,lv = 115},[4] = {id = 2007304,lv = 115},[5] = {id = 2007305,lv = 115},[6] = {id = 2007306,lv = 115},[7] = {id = 2007307,lv = 115},[8] = {id = 2007308,lv = 115}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-22-1-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1220111,cardId = 1102999,lv = 115,bklv = 16,star = 4,ghost = 38,equip = {[1] = {id = 2107301,lv = 115},[2] = {id = 2107302,lv = 115},[3] = {id = 2107303,lv = 115},[4] = {id = 2107304,lv = 115},[5] = {id = 2107305,lv = 115},[6] = {id = 2107306,lv = 115},[7] = {id = 2107307,lv = 115},[8] = {id = 2107308,lv = 115}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1220120,cardId = 1101999,lv = 115,bklv = 15,star = 4,equip = {[1] = {id = 2007301,lv = 115},[2] = {id = 2007302,lv = 115},[3] = {id = 2007303,lv = 115},[4] = {id = 2007304,lv = 115},[5] = {id = 2007305,lv = 115},[6] = {id = 2007306,lv = 115},[7] = {id = 2007307,lv = 115},[8] = {id = 2007308,lv = 115}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-22-1-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1220121,cardId = 1102999,lv = 115,bklv = 16,star = 4,ghost = 38,equip = {[1] = {id = 2107301,lv = 115},[2] = {id = 2107302,lv = 115},[3] = {id = 2107303,lv = 115},[4] = {id = 2107304,lv = 115},[5] = {id = 2107305,lv = 115},[6] = {id = 2107306,lv = 115},[7] = {id = 2107307,lv = 115},[8] = {id = 2107308,lv = 115}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1220130,cardId = 1101999,lv = 115,bklv = 15,star = 4,equip = {[1] = {id = 2007301,lv = 115},[2] = {id = 2007302,lv = 115},[3] = {id = 2007303,lv = 115},[4] = {id = 2007304,lv = 115},[5] = {id = 2007305,lv = 115},[6] = {id = 2007306,lv = 115},[7] = {id = 2007307,lv = 115},[8] = {id = 2007308,lv = 115}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-22-1-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1220131,cardId = 1102999,lv = 115,bklv = 16,star = 4,ghost = 38,equip = {[1] = {id = 2107301,lv = 115},[2] = {id = 2107302,lv = 115},[3] = {id = 2107303,lv = 115},[4] = {id = 2107304,lv = 115},[5] = {id = 2107305,lv = 115},[6] = {id = 2107306,lv = 115},[7] = {id = 2107307,lv = 115},[8] = {id = 2107308,lv = 115}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12202] = {
		[1] = {
			jlr = {id = 1220210,cardId = 1101999,lv = 115,bklv = 15,star = 4,equip = {[1] = {id = 2007301,lv = 115},[2] = {id = 2007302,lv = 115},[3] = {id = 2007303,lv = 115},[4] = {id = 2007304,lv = 115},[5] = {id = 2007305,lv = 115},[6] = {id = 2007306,lv = 115},[7] = {id = 2007307,lv = 115},[8] = {id = 2007308,lv = 115}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-22-2-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1220211,cardId = 1102999,lv = 115,bklv = 16,star = 4,ghost = 38,equip = {[1] = {id = 2107301,lv = 115},[2] = {id = 2107302,lv = 115},[3] = {id = 2107303,lv = 115},[4] = {id = 2107304,lv = 115},[5] = {id = 2107305,lv = 115},[6] = {id = 2107306,lv = 115},[7] = {id = 2107307,lv = 115},[8] = {id = 2107308,lv = 115}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1220220,cardId = 1101999,lv = 115,bklv = 15,star = 4,equip = {[1] = {id = 2007301,lv = 115},[2] = {id = 2007302,lv = 115},[3] = {id = 2007303,lv = 115},[4] = {id = 2007304,lv = 115},[5] = {id = 2007305,lv = 115},[6] = {id = 2007306,lv = 115},[7] = {id = 2007307,lv = 115},[8] = {id = 2007308,lv = 115}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-22-2-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1220221,cardId = 1102999,lv = 115,bklv = 16,star = 4,ghost = 38,equip = {[1] = {id = 2107301,lv = 115},[2] = {id = 2107302,lv = 115},[3] = {id = 2107303,lv = 115},[4] = {id = 2107304,lv = 115},[5] = {id = 2107305,lv = 115},[6] = {id = 2107306,lv = 115},[7] = {id = 2107307,lv = 115},[8] = {id = 2107308,lv = 115}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1220230,cardId = 1101999,lv = 115,bklv = 15,star = 4,equip = {[1] = {id = 2007301,lv = 115},[2] = {id = 2007302,lv = 115},[3] = {id = 2007303,lv = 115},[4] = {id = 2007304,lv = 115},[5] = {id = 2007305,lv = 115},[6] = {id = 2007306,lv = 115},[7] = {id = 2007307,lv = 115},[8] = {id = 2007308,lv = 115}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-22-2-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1220231,cardId = 1102999,lv = 115,bklv = 16,star = 4,ghost = 38,equip = {[1] = {id = 2107301,lv = 115},[2] = {id = 2107302,lv = 115},[3] = {id = 2107303,lv = 115},[4] = {id = 2107304,lv = 115},[5] = {id = 2107305,lv = 115},[6] = {id = 2107306,lv = 115},[7] = {id = 2107307,lv = 115},[8] = {id = 2107308,lv = 115}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12203] = {
		[1] = {
			jlr = {id = 1220310,cardId = 1101999,lv = 116,bklv = 15,star = 4,equip = {[1] = {id = 2007301,lv = 116},[2] = {id = 2007302,lv = 116},[3] = {id = 2007303,lv = 116},[4] = {id = 2007304,lv = 116},[5] = {id = 2007305,lv = 116},[6] = {id = 2007306,lv = 116},[7] = {id = 2007307,lv = 116},[8] = {id = 2007308,lv = 116}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-22-3-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1220311,cardId = 1102999,lv = 115,bklv = 16,star = 4,ghost = 38,equip = {[1] = {id = 2108301,lv = 116},[2] = {id = 2108302,lv = 116},[3] = {id = 2108303,lv = 116},[4] = {id = 2108304,lv = 116},[5] = {id = 2108305,lv = 116},[6] = {id = 2108306,lv = 116},[7] = {id = 2108307,lv = 116},[8] = {id = 2108308,lv = 116}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1220320,cardId = 1101998,lv = 116,bklv = 15,star = 4,equip = {[1] = {id = 2007301,lv = 116},[2] = {id = 2007302,lv = 116},[3] = {id = 2007303,lv = 116},[4] = {id = 2007304,lv = 116},[5] = {id = 2007305,lv = 116},[6] = {id = 2007306,lv = 116},[7] = {id = 2007307,lv = 116},[8] = {id = 2007308,lv = 116}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-22-3-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1220321,cardId = 1102998,lv = 120,bklv = 16,star = 4,ghost = 39,equip = {[1] = {id = 2108301,lv = 116},[2] = {id = 2108302,lv = 116},[3] = {id = 2108303,lv = 116},[4] = {id = 2108304,lv = 116},[5] = {id = 2108305,lv = 116},[6] = {id = 2108306,lv = 116},[7] = {id = 2108307,lv = 116},[8] = {id = 2108308,lv = 116}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1220330,cardId = 1101999,lv = 116,bklv = 15,star = 4,equip = {[1] = {id = 2007301,lv = 116},[2] = {id = 2007302,lv = 116},[3] = {id = 2007303,lv = 116},[4] = {id = 2007304,lv = 116},[5] = {id = 2007305,lv = 116},[6] = {id = 2007306,lv = 116},[7] = {id = 2007307,lv = 116},[8] = {id = 2007308,lv = 116}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-22-3-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1220331,cardId = 1102999,lv = 115,bklv = 16,star = 4,ghost = 38,equip = {[1] = {id = 2108301,lv = 116},[2] = {id = 2108302,lv = 116},[3] = {id = 2108303,lv = 116},[4] = {id = 2108304,lv = 116},[5] = {id = 2108305,lv = 116},[6] = {id = 2108306,lv = 116},[7] = {id = 2108307,lv = 116},[8] = {id = 2108308,lv = 116}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12204] = {
		[1] = {
			jlr = {id = 1220410,cardId = 1101999,lv = 117,bklv = 15,star = 4,equip = {[1] = {id = 2007301,lv = 117},[2] = {id = 2007302,lv = 117},[3] = {id = 2007303,lv = 117},[4] = {id = 2007304,lv = 117},[5] = {id = 2007305,lv = 117},[6] = {id = 2007306,lv = 117},[7] = {id = 2007307,lv = 117},[8] = {id = 2007308,lv = 117}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-22-4-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1220411,cardId = 1102999,lv = 115,bklv = 16,star = 4,ghost = 39,equip = {[1] = {id = 2108301,lv = 117},[2] = {id = 2108302,lv = 117},[3] = {id = 2108303,lv = 117},[4] = {id = 2108304,lv = 117},[5] = {id = 2108305,lv = 117},[6] = {id = 2108306,lv = 117},[7] = {id = 2108307,lv = 117},[8] = {id = 2108308,lv = 117}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1220420,cardId = 1101999,lv = 117,bklv = 15,star = 4,equip = {[1] = {id = 2007301,lv = 117},[2] = {id = 2007302,lv = 117},[3] = {id = 2007303,lv = 117},[4] = {id = 2007304,lv = 117},[5] = {id = 2007305,lv = 117},[6] = {id = 2007306,lv = 117},[7] = {id = 2007307,lv = 117},[8] = {id = 2007308,lv = 117}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-22-4-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1220421,cardId = 1102999,lv = 120,bklv = 16,star = 4,ghost = 39,equip = {[1] = {id = 2108301,lv = 117},[2] = {id = 2108302,lv = 117},[3] = {id = 2108303,lv = 117},[4] = {id = 2108304,lv = 117},[5] = {id = 2108305,lv = 117},[6] = {id = 2108306,lv = 117},[7] = {id = 2108307,lv = 117},[8] = {id = 2108308,lv = 117}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1220430,cardId = 1101999,lv = 117,bklv = 15,star = 4,equip = {[1] = {id = 2007301,lv = 117},[2] = {id = 2007302,lv = 117},[3] = {id = 2007303,lv = 117},[4] = {id = 2007304,lv = 117},[5] = {id = 2007305,lv = 117},[6] = {id = 2007306,lv = 117},[7] = {id = 2007307,lv = 117},[8] = {id = 2007308,lv = 117}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-22-4-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1220431,cardId = 1102999,lv = 115,bklv = 16,star = 4,ghost = 38,equip = {[1] = {id = 2108301,lv = 117},[2] = {id = 2108302,lv = 117},[3] = {id = 2108303,lv = 117},[4] = {id = 2108304,lv = 117},[5] = {id = 2108305,lv = 117},[6] = {id = 2108306,lv = 117},[7] = {id = 2108307,lv = 117},[8] = {id = 2108308,lv = 117}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12205] = {
		[1] = {
			jlr = {id = 1220510,cardId = 1101999,lv = 117,bklv = 15,star = 4,equip = {[1] = {id = 2007301,lv = 117},[2] = {id = 2007302,lv = 117},[3] = {id = 2007303,lv = 117},[4] = {id = 2007304,lv = 117},[5] = {id = 2007305,lv = 117},[6] = {id = 2007306,lv = 117},[7] = {id = 2007307,lv = 117},[8] = {id = 2007308,lv = 117}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-22-5-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1220511,cardId = 1102999,lv = 115,bklv = 16,star = 4,ghost = 39,equip = {[1] = {id = 2108301,lv = 117},[2] = {id = 2108302,lv = 117},[3] = {id = 2108303,lv = 117},[4] = {id = 2108304,lv = 117},[5] = {id = 2108305,lv = 117},[6] = {id = 2108306,lv = 117},[7] = {id = 2108307,lv = 117},[8] = {id = 2108308,lv = 117}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1220520,cardId = 1101999,lv = 117,bklv = 15,star = 4,equip = {[1] = {id = 2007301,lv = 117},[2] = {id = 2007302,lv = 117},[3] = {id = 2007303,lv = 117},[4] = {id = 2007304,lv = 117},[5] = {id = 2007305,lv = 117},[6] = {id = 2007306,lv = 117},[7] = {id = 2007307,lv = 117},[8] = {id = 2007308,lv = 117}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-22-5-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1220521,cardId = 1102999,lv = 120,bklv = 16,star = 4,ghost = 39,equip = {[1] = {id = 2108301,lv = 117},[2] = {id = 2108302,lv = 117},[3] = {id = 2108303,lv = 117},[4] = {id = 2108304,lv = 117},[5] = {id = 2108305,lv = 117},[6] = {id = 2108306,lv = 117},[7] = {id = 2108307,lv = 117},[8] = {id = 2108308,lv = 117}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1220530,cardId = 1101999,lv = 117,bklv = 15,star = 4,equip = {[1] = {id = 2007301,lv = 117},[2] = {id = 2007302,lv = 117},[3] = {id = 2007303,lv = 117},[4] = {id = 2007304,lv = 117},[5] = {id = 2007305,lv = 117},[6] = {id = 2007306,lv = 117},[7] = {id = 2007307,lv = 117},[8] = {id = 2007308,lv = 117}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-22-5-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1220531,cardId = 1102999,lv = 115,bklv = 16,star = 4,ghost = 39,equip = {[1] = {id = 2108301,lv = 117},[2] = {id = 2108302,lv = 117},[3] = {id = 2108303,lv = 117},[4] = {id = 2108304,lv = 117},[5] = {id = 2108305,lv = 117},[6] = {id = 2108306,lv = 117},[7] = {id = 2108307,lv = 117},[8] = {id = 2108308,lv = 117}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12206] = {
		[1] = {
			jlr = {id = 1220610,cardId = 1101998,lv = 118,bklv = 15,star = 4,equip = {[1] = {id = 2007301,lv = 118},[2] = {id = 2007302,lv = 118},[3] = {id = 2007303,lv = 118},[4] = {id = 2007304,lv = 118},[5] = {id = 2007305,lv = 118},[6] = {id = 2007306,lv = 118},[7] = {id = 2007307,lv = 118},[8] = {id = 2007308,lv = 118}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-22-6-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1220611,cardId = 1102998,lv = 120,bklv = 16,star = 4,ghost = 39,equip = {[1] = {id = 2108301,lv = 118},[2] = {id = 2108302,lv = 118},[3] = {id = 2108303,lv = 118},[4] = {id = 2108304,lv = 118},[5] = {id = 2108305,lv = 118},[6] = {id = 2108306,lv = 118},[7] = {id = 2108307,lv = 118},[8] = {id = 2108308,lv = 118}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1220620,cardId = 1101998,lv = 118,bklv = 15,star = 4,equip = {[1] = {id = 2007301,lv = 118},[2] = {id = 2007302,lv = 118},[3] = {id = 2007303,lv = 118},[4] = {id = 2007304,lv = 118},[5] = {id = 2007305,lv = 118},[6] = {id = 2007306,lv = 118},[7] = {id = 2007307,lv = 118},[8] = {id = 2007308,lv = 118}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-22-6-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1220621,cardId = 1102998,lv = 120,bklv = 16,star = 4,ghost = 40,equip = {[1] = {id = 2108301,lv = 118},[2] = {id = 2108302,lv = 118},[3] = {id = 2108303,lv = 118},[4] = {id = 2108304,lv = 118},[5] = {id = 2108305,lv = 118},[6] = {id = 2108306,lv = 118},[7] = {id = 2108307,lv = 118},[8] = {id = 2108308,lv = 118}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1220630,cardId = 1101998,lv = 118,bklv = 15,star = 3,equip = {[1] = {id = 2007301,lv = 118},[2] = {id = 2007302,lv = 118},[3] = {id = 2007303,lv = 118},[4] = {id = 2007304,lv = 118},[5] = {id = 2007305,lv = 118},[6] = {id = 2007306,lv = 118},[7] = {id = 2007307,lv = 118},[8] = {id = 2007308,lv = 118}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-22-6-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1220631,cardId = 1102998,lv = 115,bklv = 16,star = 3,ghost = 39,equip = {[1] = {id = 2108301,lv = 118},[2] = {id = 2108302,lv = 118},[3] = {id = 2108303,lv = 118},[4] = {id = 2108304,lv = 118},[5] = {id = 2108305,lv = 118},[6] = {id = 2108306,lv = 118},[7] = {id = 2108307,lv = 118},[8] = {id = 2108308,lv = 118}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12207] = {
		[1] = {
			jlr = {id = 1220710,cardId = 1101999,lv = 119,bklv = 15,star = 4,equip = {[1] = {id = 2007301,lv = 119},[2] = {id = 2007302,lv = 119},[3] = {id = 2007303,lv = 119},[4] = {id = 2007304,lv = 119},[5] = {id = 2007305,lv = 119},[6] = {id = 2007306,lv = 119},[7] = {id = 2007307,lv = 119},[8] = {id = 2007308,lv = 119}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-22-7-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1220711,cardId = 1102999,lv = 120,bklv = 16,star = 4,ghost = 39,equip = {[1] = {id = 2108301,lv = 119},[2] = {id = 2108302,lv = 119},[3] = {id = 2108303,lv = 119},[4] = {id = 2108304,lv = 119},[5] = {id = 2108305,lv = 119},[6] = {id = 2108306,lv = 119},[7] = {id = 2108307,lv = 119},[8] = {id = 2108308,lv = 119}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1220720,cardId = 1101999,lv = 119,bklv = 15,star = 4,equip = {[1] = {id = 2007301,lv = 119},[2] = {id = 2007302,lv = 119},[3] = {id = 2007303,lv = 119},[4] = {id = 2007304,lv = 119},[5] = {id = 2007305,lv = 119},[6] = {id = 2007306,lv = 119},[7] = {id = 2007307,lv = 119},[8] = {id = 2007308,lv = 119}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-22-7-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1220721,cardId = 1102999,lv = 120,bklv = 16,star = 4,ghost = 40,equip = {[1] = {id = 2108301,lv = 119},[2] = {id = 2108302,lv = 119},[3] = {id = 2108303,lv = 119},[4] = {id = 2108304,lv = 119},[5] = {id = 2108305,lv = 119},[6] = {id = 2108306,lv = 119},[7] = {id = 2108307,lv = 119},[8] = {id = 2108308,lv = 119}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1220730,cardId = 1101999,lv = 119,bklv = 15,star = 4,equip = {[1] = {id = 2007301,lv = 119},[2] = {id = 2007302,lv = 119},[3] = {id = 2007303,lv = 119},[4] = {id = 2007304,lv = 119},[5] = {id = 2007305,lv = 119},[6] = {id = 2007306,lv = 119},[7] = {id = 2007307,lv = 119},[8] = {id = 2007308,lv = 119}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-22-7-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1220731,cardId = 1102999,lv = 115,bklv = 16,star = 4,ghost = 39,equip = {[1] = {id = 2108301,lv = 119},[2] = {id = 2108302,lv = 119},[3] = {id = 2108303,lv = 119},[4] = {id = 2108304,lv = 119},[5] = {id = 2108305,lv = 119},[6] = {id = 2108306,lv = 119},[7] = {id = 2108307,lv = 119},[8] = {id = 2108308,lv = 119}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12208] = {
		[1] = {
			jlr = {id = 1220810,cardId = 1101999,lv = 119,bklv = 15,star = 4,equip = {[1] = {id = 2007301,lv = 119},[2] = {id = 2007302,lv = 119},[3] = {id = 2007303,lv = 119},[4] = {id = 2007304,lv = 119},[5] = {id = 2007305,lv = 119},[6] = {id = 2007306,lv = 119},[7] = {id = 2007307,lv = 119},[8] = {id = 2007308,lv = 119}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-22-8-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1220811,cardId = 1102999,lv = 120,bklv = 16,star = 4,ghost = 39,equip = {[1] = {id = 2108301,lv = 119},[2] = {id = 2108302,lv = 119},[3] = {id = 2108303,lv = 119},[4] = {id = 2108304,lv = 119},[5] = {id = 2108305,lv = 119},[6] = {id = 2108306,lv = 119},[7] = {id = 2108307,lv = 119},[8] = {id = 2108308,lv = 119}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1220820,cardId = 1101999,lv = 119,bklv = 15,star = 4,equip = {[1] = {id = 2007301,lv = 119},[2] = {id = 2007302,lv = 119},[3] = {id = 2007303,lv = 119},[4] = {id = 2007304,lv = 119},[5] = {id = 2007305,lv = 119},[6] = {id = 2007306,lv = 119},[7] = {id = 2007307,lv = 119},[8] = {id = 2007308,lv = 119}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-22-8-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1220821,cardId = 1102999,lv = 120,bklv = 16,star = 4,ghost = 40,equip = {[1] = {id = 2108301,lv = 119},[2] = {id = 2108302,lv = 119},[3] = {id = 2108303,lv = 119},[4] = {id = 2108304,lv = 119},[5] = {id = 2108305,lv = 119},[6] = {id = 2108306,lv = 119},[7] = {id = 2108307,lv = 119},[8] = {id = 2108308,lv = 119}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1220830,cardId = 1101999,lv = 119,bklv = 15,star = 4,equip = {[1] = {id = 2007301,lv = 119},[2] = {id = 2007302,lv = 119},[3] = {id = 2007303,lv = 119},[4] = {id = 2007304,lv = 119},[5] = {id = 2007305,lv = 119},[6] = {id = 2007306,lv = 119},[7] = {id = 2007307,lv = 119},[8] = {id = 2007308,lv = 119}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-22-8-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1220831,cardId = 1102999,lv = 115,bklv = 16,star = 4,ghost = 39,equip = {[1] = {id = 2108301,lv = 119},[2] = {id = 2108302,lv = 119},[3] = {id = 2108303,lv = 119},[4] = {id = 2108304,lv = 119},[5] = {id = 2108305,lv = 119},[6] = {id = 2108306,lv = 119},[7] = {id = 2108307,lv = 119},[8] = {id = 2108308,lv = 119}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12209] = {
		[1] = {
			jlr = {id = 1220910,cardId = 1101998,lv = 120,bklv = 15,star = 4,equip = {[1] = {id = 2007301,lv = 120},[2] = {id = 2007302,lv = 120},[3] = {id = 2007303,lv = 120},[4] = {id = 2007304,lv = 120},[5] = {id = 2007305,lv = 120},[6] = {id = 2007306,lv = 120},[7] = {id = 2007307,lv = 120},[8] = {id = 2007308,lv = 120}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-22-9-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1220911,cardId = 1102998,lv = 120,bklv = 16,star = 4,ghost = 40,equip = {[1] = {id = 2108301,lv = 120},[2] = {id = 2108302,lv = 120},[3] = {id = 2108303,lv = 120},[4] = {id = 2108304,lv = 120},[5] = {id = 2108305,lv = 120},[6] = {id = 2108306,lv = 120},[7] = {id = 2108307,lv = 120},[8] = {id = 2108308,lv = 120}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1220920,cardId = 1101997,lv = 120,bklv = 15,star = 3,equip = {[1] = {id = 2007301,lv = 120},[2] = {id = 2007302,lv = 120},[3] = {id = 2007303,lv = 120},[4] = {id = 2007304,lv = 120},[5] = {id = 2007305,lv = 120},[6] = {id = 2007306,lv = 120},[7] = {id = 2007307,lv = 120},[8] = {id = 2007308,lv = 120}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-22-9-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1220921,cardId = 1102997,lv = 120,bklv = 16,star = 3,ghost = 40,equip = {[1] = {id = 2108301,lv = 120},[2] = {id = 2108302,lv = 120},[3] = {id = 2108303,lv = 120},[4] = {id = 2108304,lv = 120},[5] = {id = 2108305,lv = 120},[6] = {id = 2108306,lv = 120},[7] = {id = 2108307,lv = 120},[8] = {id = 2108308,lv = 120}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1220930,cardId = 1101998,lv = 120,bklv = 15,star = 4,equip = {[1] = {id = 2007301,lv = 120},[2] = {id = 2007302,lv = 120},[3] = {id = 2007303,lv = 120},[4] = {id = 2007304,lv = 120},[5] = {id = 2007305,lv = 120},[6] = {id = 2007306,lv = 120},[7] = {id = 2007307,lv = 120},[8] = {id = 2007308,lv = 120}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-22-9-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1220931,cardId = 1102998,lv = 120,bklv = 16,star = 4,ghost = 40,equip = {[1] = {id = 2108301,lv = 120},[2] = {id = 2108302,lv = 120},[3] = {id = 2108303,lv = 120},[4] = {id = 2108304,lv = 120},[5] = {id = 2108305,lv = 120},[6] = {id = 2108306,lv = 120},[7] = {id = 2108307,lv = 120},[8] = {id = 2108308,lv = 120}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12210] = {
		[1] = {
			jlr = {id = 1221010,cardId = 1101997,lv = 120,bklv = 15,star = 3,equip = {[1] = {id = 2007301,lv = 120},[2] = {id = 2007302,lv = 120},[3] = {id = 2007303,lv = 120},[4] = {id = 2007304,lv = 120},[5] = {id = 2007305,lv = 120},[6] = {id = 2007306,lv = 120},[7] = {id = 2007307,lv = 120},[8] = {id = 2007308,lv = 120}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-22-10-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1221011,cardId = 1102997,lv = 120,bklv = 16,star = 3,ghost = 40,equip = {[1] = {id = 2108301,lv = 120},[2] = {id = 2108302,lv = 120},[3] = {id = 2108303,lv = 120},[4] = {id = 2108304,lv = 120},[5] = {id = 2108305,lv = 120},[6] = {id = 2108306,lv = 120},[7] = {id = 2108307,lv = 120},[8] = {id = 2108308,lv = 120}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1221020,cardId = 1101997,lv = 120,bklv = 15,star = 3,equip = {[1] = {id = 2007301,lv = 120},[2] = {id = 2007302,lv = 120},[3] = {id = 2007303,lv = 120},[4] = {id = 2007304,lv = 120},[5] = {id = 2007305,lv = 120},[6] = {id = 2007306,lv = 120},[7] = {id = 2007307,lv = 120},[8] = {id = 2007308,lv = 120}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-22-10-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1221021,cardId = 1102997,lv = 120,bklv = 16,star = 3,ghost = 40,equip = {[1] = {id = 2108301,lv = 120},[2] = {id = 2108302,lv = 120},[3] = {id = 2108303,lv = 120},[4] = {id = 2108304,lv = 120},[5] = {id = 2108305,lv = 120},[6] = {id = 2108306,lv = 120},[7] = {id = 2108307,lv = 120},[8] = {id = 2108308,lv = 120}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1221030,cardId = 1101997,lv = 120,bklv = 15,star = 3,equip = {[1] = {id = 2007301,lv = 120},[2] = {id = 2007302,lv = 120},[3] = {id = 2007303,lv = 120},[4] = {id = 2007304,lv = 120},[5] = {id = 2007305,lv = 120},[6] = {id = 2007306,lv = 120},[7] = {id = 2007307,lv = 120},[8] = {id = 2007308,lv = 120}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-22-10-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1221031,cardId = 1102997,lv = 120,bklv = 16,star = 3,ghost = 40,equip = {[1] = {id = 2108301,lv = 120},[2] = {id = 2108302,lv = 120},[3] = {id = 2108303,lv = 120},[4] = {id = 2108304,lv = 120},[5] = {id = 2108305,lv = 120},[6] = {id = 2108306,lv = 120},[7] = {id = 2108307,lv = 120},[8] = {id = 2108308,lv = 120}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12301] = {
		[1] = {
			jlr = {id = 1230110,cardId = 1101999,lv = 120,bklv = 15,star = 4,equip = {[1] = {id = 2007301,lv = 120},[2] = {id = 2007302,lv = 120},[3] = {id = 2007303,lv = 120},[4] = {id = 2007304,lv = 120},[5] = {id = 2007305,lv = 120},[6] = {id = 2007306,lv = 120},[7] = {id = 2007307,lv = 120},[8] = {id = 2007308,lv = 120}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-23-1-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1230111,cardId = 1102999,lv = 120,bklv = 16,star = 4,ghost = 40,equip = {[1] = {id = 2108301,lv = 120},[2] = {id = 2108302,lv = 120},[3] = {id = 2108303,lv = 120},[4] = {id = 2108304,lv = 120},[5] = {id = 2108305,lv = 120},[6] = {id = 2108306,lv = 120},[7] = {id = 2108307,lv = 120},[8] = {id = 2108308,lv = 120}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1230120,cardId = 1101999,lv = 120,bklv = 15,star = 4,equip = {[1] = {id = 2007301,lv = 120},[2] = {id = 2007302,lv = 120},[3] = {id = 2007303,lv = 120},[4] = {id = 2007304,lv = 120},[5] = {id = 2007305,lv = 120},[6] = {id = 2007306,lv = 120},[7] = {id = 2007307,lv = 120},[8] = {id = 2007308,lv = 120}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-23-1-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1230121,cardId = 1102999,lv = 120,bklv = 16,star = 4,ghost = 40,equip = {[1] = {id = 2108301,lv = 120},[2] = {id = 2108302,lv = 120},[3] = {id = 2108303,lv = 120},[4] = {id = 2108304,lv = 120},[5] = {id = 2108305,lv = 120},[6] = {id = 2108306,lv = 120},[7] = {id = 2108307,lv = 120},[8] = {id = 2108308,lv = 120}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1230130,cardId = 1101999,lv = 120,bklv = 15,star = 4,equip = {[1] = {id = 2007301,lv = 120},[2] = {id = 2007302,lv = 120},[3] = {id = 2007303,lv = 120},[4] = {id = 2007304,lv = 120},[5] = {id = 2007305,lv = 120},[6] = {id = 2007306,lv = 120},[7] = {id = 2007307,lv = 120},[8] = {id = 2007308,lv = 120}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-23-1-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1230131,cardId = 1102999,lv = 120,bklv = 16,star = 4,ghost = 40,equip = {[1] = {id = 2108301,lv = 120},[2] = {id = 2108302,lv = 120},[3] = {id = 2108303,lv = 120},[4] = {id = 2108304,lv = 120},[5] = {id = 2108305,lv = 120},[6] = {id = 2108306,lv = 120},[7] = {id = 2108307,lv = 120},[8] = {id = 2108308,lv = 120}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12302] = {
		[1] = {
			jlr = {id = 1230210,cardId = 1101999,lv = 120,bklv = 15,star = 4,equip = {[1] = {id = 2007301,lv = 120},[2] = {id = 2007302,lv = 120},[3] = {id = 2007303,lv = 120},[4] = {id = 2007304,lv = 120},[5] = {id = 2007305,lv = 120},[6] = {id = 2007306,lv = 120},[7] = {id = 2007307,lv = 120},[8] = {id = 2007308,lv = 120}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-23-2-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1230211,cardId = 1102999,lv = 120,bklv = 16,star = 4,ghost = 40,equip = {[1] = {id = 2108301,lv = 120},[2] = {id = 2108302,lv = 120},[3] = {id = 2108303,lv = 120},[4] = {id = 2108304,lv = 120},[5] = {id = 2108305,lv = 120},[6] = {id = 2108306,lv = 120},[7] = {id = 2108307,lv = 120},[8] = {id = 2108308,lv = 120}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1230220,cardId = 1101999,lv = 120,bklv = 15,star = 4,equip = {[1] = {id = 2007301,lv = 120},[2] = {id = 2007302,lv = 120},[3] = {id = 2007303,lv = 120},[4] = {id = 2007304,lv = 120},[5] = {id = 2007305,lv = 120},[6] = {id = 2007306,lv = 120},[7] = {id = 2007307,lv = 120},[8] = {id = 2007308,lv = 120}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-23-2-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1230221,cardId = 1102999,lv = 120,bklv = 16,star = 4,ghost = 40,equip = {[1] = {id = 2108301,lv = 120},[2] = {id = 2108302,lv = 120},[3] = {id = 2108303,lv = 120},[4] = {id = 2108304,lv = 120},[5] = {id = 2108305,lv = 120},[6] = {id = 2108306,lv = 120},[7] = {id = 2108307,lv = 120},[8] = {id = 2108308,lv = 120}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1230230,cardId = 1101999,lv = 120,bklv = 15,star = 4,equip = {[1] = {id = 2007301,lv = 120},[2] = {id = 2007302,lv = 120},[3] = {id = 2007303,lv = 120},[4] = {id = 2007304,lv = 120},[5] = {id = 2007305,lv = 120},[6] = {id = 2007306,lv = 120},[7] = {id = 2007307,lv = 120},[8] = {id = 2007308,lv = 120}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-23-2-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1230231,cardId = 1102999,lv = 120,bklv = 16,star = 4,ghost = 40,equip = {[1] = {id = 2108301,lv = 120},[2] = {id = 2108302,lv = 120},[3] = {id = 2108303,lv = 120},[4] = {id = 2108304,lv = 120},[5] = {id = 2108305,lv = 120},[6] = {id = 2108306,lv = 120},[7] = {id = 2108307,lv = 120},[8] = {id = 2108308,lv = 120}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12303] = {
		[1] = {
			jlr = {id = 1230310,cardId = 1101999,lv = 121,bklv = 15,star = 4,equip = {[1] = {id = 2007301,lv = 121},[2] = {id = 2007302,lv = 121},[3] = {id = 2007303,lv = 121},[4] = {id = 2007304,lv = 121},[5] = {id = 2007305,lv = 121},[6] = {id = 2007306,lv = 121},[7] = {id = 2007307,lv = 121},[8] = {id = 2007308,lv = 121}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-23-3-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1230311,cardId = 1102999,lv = 120,bklv = 16,star = 4,ghost = 40,equip = {[1] = {id = 2108301,lv = 121},[2] = {id = 2108302,lv = 121},[3] = {id = 2108303,lv = 121},[4] = {id = 2108304,lv = 121},[5] = {id = 2108305,lv = 121},[6] = {id = 2108306,lv = 121},[7] = {id = 2108307,lv = 121},[8] = {id = 2108308,lv = 121}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1230320,cardId = 1101998,lv = 121,bklv = 15,star = 4,equip = {[1] = {id = 2007301,lv = 121},[2] = {id = 2007302,lv = 121},[3] = {id = 2007303,lv = 121},[4] = {id = 2007304,lv = 121},[5] = {id = 2007305,lv = 121},[6] = {id = 2007306,lv = 121},[7] = {id = 2007307,lv = 121},[8] = {id = 2007308,lv = 121}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-23-3-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1230321,cardId = 1102998,lv = 125,bklv = 17,star = 4,ghost = 41,equip = {[1] = {id = 2108301,lv = 121},[2] = {id = 2108302,lv = 121},[3] = {id = 2108303,lv = 121},[4] = {id = 2108304,lv = 121},[5] = {id = 2108305,lv = 121},[6] = {id = 2108306,lv = 121},[7] = {id = 2108307,lv = 121},[8] = {id = 2108308,lv = 121}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1230330,cardId = 1101999,lv = 121,bklv = 15,star = 4,equip = {[1] = {id = 2007301,lv = 121},[2] = {id = 2007302,lv = 121},[3] = {id = 2007303,lv = 121},[4] = {id = 2007304,lv = 121},[5] = {id = 2007305,lv = 121},[6] = {id = 2007306,lv = 121},[7] = {id = 2007307,lv = 121},[8] = {id = 2007308,lv = 121}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-23-3-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1230331,cardId = 1102999,lv = 120,bklv = 16,star = 4,ghost = 40,equip = {[1] = {id = 2108301,lv = 121},[2] = {id = 2108302,lv = 121},[3] = {id = 2108303,lv = 121},[4] = {id = 2108304,lv = 121},[5] = {id = 2108305,lv = 121},[6] = {id = 2108306,lv = 121},[7] = {id = 2108307,lv = 121},[8] = {id = 2108308,lv = 121}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12304] = {
		[1] = {
			jlr = {id = 1230410,cardId = 1101999,lv = 122,bklv = 15,star = 4,equip = {[1] = {id = 2007301,lv = 122},[2] = {id = 2007302,lv = 122},[3] = {id = 2007303,lv = 122},[4] = {id = 2007304,lv = 122},[5] = {id = 2007305,lv = 122},[6] = {id = 2007306,lv = 122},[7] = {id = 2007307,lv = 122},[8] = {id = 2007308,lv = 122}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-23-4-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1230411,cardId = 1102999,lv = 120,bklv = 16,star = 4,ghost = 41,equip = {[1] = {id = 2108301,lv = 122},[2] = {id = 2108302,lv = 122},[3] = {id = 2108303,lv = 122},[4] = {id = 2108304,lv = 122},[5] = {id = 2108305,lv = 122},[6] = {id = 2108306,lv = 122},[7] = {id = 2108307,lv = 122},[8] = {id = 2108308,lv = 122}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1230420,cardId = 1101999,lv = 122,bklv = 15,star = 4,equip = {[1] = {id = 2007301,lv = 122},[2] = {id = 2007302,lv = 122},[3] = {id = 2007303,lv = 122},[4] = {id = 2007304,lv = 122},[5] = {id = 2007305,lv = 122},[6] = {id = 2007306,lv = 122},[7] = {id = 2007307,lv = 122},[8] = {id = 2007308,lv = 122}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-23-4-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1230421,cardId = 1102999,lv = 125,bklv = 17,star = 4,ghost = 41,equip = {[1] = {id = 2108301,lv = 122},[2] = {id = 2108302,lv = 122},[3] = {id = 2108303,lv = 122},[4] = {id = 2108304,lv = 122},[5] = {id = 2108305,lv = 122},[6] = {id = 2108306,lv = 122},[7] = {id = 2108307,lv = 122},[8] = {id = 2108308,lv = 122}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1230430,cardId = 1101999,lv = 122,bklv = 15,star = 4,equip = {[1] = {id = 2007301,lv = 122},[2] = {id = 2007302,lv = 122},[3] = {id = 2007303,lv = 122},[4] = {id = 2007304,lv = 122},[5] = {id = 2007305,lv = 122},[6] = {id = 2007306,lv = 122},[7] = {id = 2007307,lv = 122},[8] = {id = 2007308,lv = 122}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-23-4-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1230431,cardId = 1102999,lv = 120,bklv = 16,star = 4,ghost = 40,equip = {[1] = {id = 2108301,lv = 122},[2] = {id = 2108302,lv = 122},[3] = {id = 2108303,lv = 122},[4] = {id = 2108304,lv = 122},[5] = {id = 2108305,lv = 122},[6] = {id = 2108306,lv = 122},[7] = {id = 2108307,lv = 122},[8] = {id = 2108308,lv = 122}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12305] = {
		[1] = {
			jlr = {id = 1230510,cardId = 1101999,lv = 122,bklv = 15,star = 4,equip = {[1] = {id = 2007301,lv = 122},[2] = {id = 2007302,lv = 122},[3] = {id = 2007303,lv = 122},[4] = {id = 2007304,lv = 122},[5] = {id = 2007305,lv = 122},[6] = {id = 2007306,lv = 122},[7] = {id = 2007307,lv = 122},[8] = {id = 2007308,lv = 122}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-23-5-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1230511,cardId = 1102999,lv = 120,bklv = 16,star = 4,ghost = 41,equip = {[1] = {id = 2108301,lv = 122},[2] = {id = 2108302,lv = 122},[3] = {id = 2108303,lv = 122},[4] = {id = 2108304,lv = 122},[5] = {id = 2108305,lv = 122},[6] = {id = 2108306,lv = 122},[7] = {id = 2108307,lv = 122},[8] = {id = 2108308,lv = 122}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1230520,cardId = 1101999,lv = 122,bklv = 15,star = 4,equip = {[1] = {id = 2007301,lv = 122},[2] = {id = 2007302,lv = 122},[3] = {id = 2007303,lv = 122},[4] = {id = 2007304,lv = 122},[5] = {id = 2007305,lv = 122},[6] = {id = 2007306,lv = 122},[7] = {id = 2007307,lv = 122},[8] = {id = 2007308,lv = 122}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-23-5-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1230521,cardId = 1102999,lv = 125,bklv = 17,star = 4,ghost = 41,equip = {[1] = {id = 2108301,lv = 122},[2] = {id = 2108302,lv = 122},[3] = {id = 2108303,lv = 122},[4] = {id = 2108304,lv = 122},[5] = {id = 2108305,lv = 122},[6] = {id = 2108306,lv = 122},[7] = {id = 2108307,lv = 122},[8] = {id = 2108308,lv = 122}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1230530,cardId = 1101999,lv = 122,bklv = 15,star = 4,equip = {[1] = {id = 2007301,lv = 122},[2] = {id = 2007302,lv = 122},[3] = {id = 2007303,lv = 122},[4] = {id = 2007304,lv = 122},[5] = {id = 2007305,lv = 122},[6] = {id = 2007306,lv = 122},[7] = {id = 2007307,lv = 122},[8] = {id = 2007308,lv = 122}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-23-5-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1230531,cardId = 1102999,lv = 120,bklv = 16,star = 4,ghost = 41,equip = {[1] = {id = 2108301,lv = 122},[2] = {id = 2108302,lv = 122},[3] = {id = 2108303,lv = 122},[4] = {id = 2108304,lv = 122},[5] = {id = 2108305,lv = 122},[6] = {id = 2108306,lv = 122},[7] = {id = 2108307,lv = 122},[8] = {id = 2108308,lv = 122}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12306] = {
		[1] = {
			jlr = {id = 1230610,cardId = 1101998,lv = 123,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 123},[2] = {id = 2008302,lv = 123},[3] = {id = 2008303,lv = 123},[4] = {id = 2008304,lv = 123},[5] = {id = 2008305,lv = 123},[6] = {id = 2008306,lv = 123},[7] = {id = 2008307,lv = 123},[8] = {id = 2008308,lv = 123}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-23-6-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1230611,cardId = 1102998,lv = 125,bklv = 17,star = 4,ghost = 41,equip = {[1] = {id = 2108301,lv = 123},[2] = {id = 2108302,lv = 123},[3] = {id = 2108303,lv = 123},[4] = {id = 2108304,lv = 123},[5] = {id = 2108305,lv = 123},[6] = {id = 2108306,lv = 123},[7] = {id = 2108307,lv = 123},[8] = {id = 2108308,lv = 123}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1230620,cardId = 1101998,lv = 123,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 123},[2] = {id = 2008302,lv = 123},[3] = {id = 2008303,lv = 123},[4] = {id = 2008304,lv = 123},[5] = {id = 2008305,lv = 123},[6] = {id = 2008306,lv = 123},[7] = {id = 2008307,lv = 123},[8] = {id = 2008308,lv = 123}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-23-6-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1230621,cardId = 1102998,lv = 125,bklv = 17,star = 4,ghost = 42,equip = {[1] = {id = 2108301,lv = 123},[2] = {id = 2108302,lv = 123},[3] = {id = 2108303,lv = 123},[4] = {id = 2108304,lv = 123},[5] = {id = 2108305,lv = 123},[6] = {id = 2108306,lv = 123},[7] = {id = 2108307,lv = 123},[8] = {id = 2108308,lv = 123}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1230630,cardId = 1101998,lv = 123,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 123},[2] = {id = 2008302,lv = 123},[3] = {id = 2008303,lv = 123},[4] = {id = 2008304,lv = 123},[5] = {id = 2008305,lv = 123},[6] = {id = 2008306,lv = 123},[7] = {id = 2008307,lv = 123},[8] = {id = 2008308,lv = 123}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-23-6-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1230631,cardId = 1102998,lv = 120,bklv = 16,star = 4,ghost = 41,equip = {[1] = {id = 2108301,lv = 123},[2] = {id = 2108302,lv = 123},[3] = {id = 2108303,lv = 123},[4] = {id = 2108304,lv = 123},[5] = {id = 2108305,lv = 123},[6] = {id = 2108306,lv = 123},[7] = {id = 2108307,lv = 123},[8] = {id = 2108308,lv = 123}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12307] = {
		[1] = {
			jlr = {id = 1230710,cardId = 1101999,lv = 124,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 124},[2] = {id = 2008302,lv = 124},[3] = {id = 2008303,lv = 124},[4] = {id = 2008304,lv = 124},[5] = {id = 2008305,lv = 124},[6] = {id = 2008306,lv = 124},[7] = {id = 2008307,lv = 124},[8] = {id = 2008308,lv = 124}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-23-7-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1230711,cardId = 1102999,lv = 125,bklv = 17,star = 4,ghost = 41,equip = {[1] = {id = 2108301,lv = 124},[2] = {id = 2108302,lv = 124},[3] = {id = 2108303,lv = 124},[4] = {id = 2108304,lv = 124},[5] = {id = 2108305,lv = 124},[6] = {id = 2108306,lv = 124},[7] = {id = 2108307,lv = 124},[8] = {id = 2108308,lv = 124}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1230720,cardId = 1101999,lv = 124,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 124},[2] = {id = 2008302,lv = 124},[3] = {id = 2008303,lv = 124},[4] = {id = 2008304,lv = 124},[5] = {id = 2008305,lv = 124},[6] = {id = 2008306,lv = 124},[7] = {id = 2008307,lv = 124},[8] = {id = 2008308,lv = 124}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-23-7-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1230721,cardId = 1102999,lv = 125,bklv = 17,star = 4,ghost = 42,equip = {[1] = {id = 2108301,lv = 124},[2] = {id = 2108302,lv = 124},[3] = {id = 2108303,lv = 124},[4] = {id = 2108304,lv = 124},[5] = {id = 2108305,lv = 124},[6] = {id = 2108306,lv = 124},[7] = {id = 2108307,lv = 124},[8] = {id = 2108308,lv = 124}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1230730,cardId = 1101999,lv = 124,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 124},[2] = {id = 2008302,lv = 124},[3] = {id = 2008303,lv = 124},[4] = {id = 2008304,lv = 124},[5] = {id = 2008305,lv = 124},[6] = {id = 2008306,lv = 124},[7] = {id = 2008307,lv = 124},[8] = {id = 2008308,lv = 124}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-23-7-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1230731,cardId = 1102999,lv = 120,bklv = 16,star = 4,ghost = 41,equip = {[1] = {id = 2108301,lv = 124},[2] = {id = 2108302,lv = 124},[3] = {id = 2108303,lv = 124},[4] = {id = 2108304,lv = 124},[5] = {id = 2108305,lv = 124},[6] = {id = 2108306,lv = 124},[7] = {id = 2108307,lv = 124},[8] = {id = 2108308,lv = 124}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12308] = {
		[1] = {
			jlr = {id = 1230810,cardId = 1101999,lv = 124,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 124},[2] = {id = 2008302,lv = 124},[3] = {id = 2008303,lv = 124},[4] = {id = 2008304,lv = 124},[5] = {id = 2008305,lv = 124},[6] = {id = 2008306,lv = 124},[7] = {id = 2008307,lv = 124},[8] = {id = 2008308,lv = 124}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-23-8-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1230811,cardId = 1102999,lv = 125,bklv = 17,star = 4,ghost = 41,equip = {[1] = {id = 2108301,lv = 124},[2] = {id = 2108302,lv = 124},[3] = {id = 2108303,lv = 124},[4] = {id = 2108304,lv = 124},[5] = {id = 2108305,lv = 124},[6] = {id = 2108306,lv = 124},[7] = {id = 2108307,lv = 124},[8] = {id = 2108308,lv = 124}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1230820,cardId = 1101999,lv = 124,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 124},[2] = {id = 2008302,lv = 124},[3] = {id = 2008303,lv = 124},[4] = {id = 2008304,lv = 124},[5] = {id = 2008305,lv = 124},[6] = {id = 2008306,lv = 124},[7] = {id = 2008307,lv = 124},[8] = {id = 2008308,lv = 124}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-23-8-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1230821,cardId = 1102999,lv = 125,bklv = 17,star = 4,ghost = 42,equip = {[1] = {id = 2108301,lv = 124},[2] = {id = 2108302,lv = 124},[3] = {id = 2108303,lv = 124},[4] = {id = 2108304,lv = 124},[5] = {id = 2108305,lv = 124},[6] = {id = 2108306,lv = 124},[7] = {id = 2108307,lv = 124},[8] = {id = 2108308,lv = 124}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1230830,cardId = 1101999,lv = 124,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 124},[2] = {id = 2008302,lv = 124},[3] = {id = 2008303,lv = 124},[4] = {id = 2008304,lv = 124},[5] = {id = 2008305,lv = 124},[6] = {id = 2008306,lv = 124},[7] = {id = 2008307,lv = 124},[8] = {id = 2008308,lv = 124}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-23-8-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1230831,cardId = 1102999,lv = 120,bklv = 16,star = 4,ghost = 41,equip = {[1] = {id = 2108301,lv = 124},[2] = {id = 2108302,lv = 124},[3] = {id = 2108303,lv = 124},[4] = {id = 2108304,lv = 124},[5] = {id = 2108305,lv = 124},[6] = {id = 2108306,lv = 124},[7] = {id = 2108307,lv = 124},[8] = {id = 2108308,lv = 124}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12309] = {
		[1] = {
			jlr = {id = 1230910,cardId = 1101998,lv = 125,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 125},[2] = {id = 2008302,lv = 125},[3] = {id = 2008303,lv = 125},[4] = {id = 2008304,lv = 125},[5] = {id = 2008305,lv = 125},[6] = {id = 2008306,lv = 125},[7] = {id = 2008307,lv = 125},[8] = {id = 2008308,lv = 125}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-23-9-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1230911,cardId = 1102998,lv = 125,bklv = 17,star = 4,ghost = 42,equip = {[1] = {id = 2108301,lv = 125},[2] = {id = 2108302,lv = 125},[3] = {id = 2108303,lv = 125},[4] = {id = 2108304,lv = 125},[5] = {id = 2108305,lv = 125},[6] = {id = 2108306,lv = 125},[7] = {id = 2108307,lv = 125},[8] = {id = 2108308,lv = 125}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1230920,cardId = 1101997,lv = 125,bklv = 16,star = 3,equip = {[1] = {id = 2008301,lv = 125},[2] = {id = 2008302,lv = 125},[3] = {id = 2008303,lv = 125},[4] = {id = 2008304,lv = 125},[5] = {id = 2008305,lv = 125},[6] = {id = 2008306,lv = 125},[7] = {id = 2008307,lv = 125},[8] = {id = 2008308,lv = 125}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-23-9-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1230921,cardId = 1102997,lv = 125,bklv = 17,star = 3,ghost = 42,equip = {[1] = {id = 2108301,lv = 125},[2] = {id = 2108302,lv = 125},[3] = {id = 2108303,lv = 125},[4] = {id = 2108304,lv = 125},[5] = {id = 2108305,lv = 125},[6] = {id = 2108306,lv = 125},[7] = {id = 2108307,lv = 125},[8] = {id = 2108308,lv = 125}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1230930,cardId = 1101998,lv = 125,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 125},[2] = {id = 2008302,lv = 125},[3] = {id = 2008303,lv = 125},[4] = {id = 2008304,lv = 125},[5] = {id = 2008305,lv = 125},[6] = {id = 2008306,lv = 125},[7] = {id = 2008307,lv = 125},[8] = {id = 2008308,lv = 125}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-23-9-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1230931,cardId = 1102998,lv = 125,bklv = 17,star = 4,ghost = 42,equip = {[1] = {id = 2108301,lv = 125},[2] = {id = 2108302,lv = 125},[3] = {id = 2108303,lv = 125},[4] = {id = 2108304,lv = 125},[5] = {id = 2108305,lv = 125},[6] = {id = 2108306,lv = 125},[7] = {id = 2108307,lv = 125},[8] = {id = 2108308,lv = 125}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12310] = {
		[1] = {
			jlr = {id = 1231010,cardId = 1101997,lv = 125,bklv = 16,star = 3,equip = {[1] = {id = 2008301,lv = 125},[2] = {id = 2008302,lv = 125},[3] = {id = 2008303,lv = 125},[4] = {id = 2008304,lv = 125},[5] = {id = 2008305,lv = 125},[6] = {id = 2008306,lv = 125},[7] = {id = 2008307,lv = 125},[8] = {id = 2008308,lv = 125}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-23-10-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1231011,cardId = 1102997,lv = 125,bklv = 17,star = 3,ghost = 42,equip = {[1] = {id = 2108301,lv = 125},[2] = {id = 2108302,lv = 125},[3] = {id = 2108303,lv = 125},[4] = {id = 2108304,lv = 125},[5] = {id = 2108305,lv = 125},[6] = {id = 2108306,lv = 125},[7] = {id = 2108307,lv = 125},[8] = {id = 2108308,lv = 125}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1231020,cardId = 1101997,lv = 125,bklv = 16,star = 3,equip = {[1] = {id = 2008301,lv = 125},[2] = {id = 2008302,lv = 125},[3] = {id = 2008303,lv = 125},[4] = {id = 2008304,lv = 125},[5] = {id = 2008305,lv = 125},[6] = {id = 2008306,lv = 125},[7] = {id = 2008307,lv = 125},[8] = {id = 2008308,lv = 125}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-23-10-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1231021,cardId = 1102997,lv = 125,bklv = 17,star = 3,ghost = 42,equip = {[1] = {id = 2108301,lv = 125},[2] = {id = 2108302,lv = 125},[3] = {id = 2108303,lv = 125},[4] = {id = 2108304,lv = 125},[5] = {id = 2108305,lv = 125},[6] = {id = 2108306,lv = 125},[7] = {id = 2108307,lv = 125},[8] = {id = 2108308,lv = 125}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1231030,cardId = 1101997,lv = 125,bklv = 16,star = 3,equip = {[1] = {id = 2008301,lv = 125},[2] = {id = 2008302,lv = 125},[3] = {id = 2008303,lv = 125},[4] = {id = 2008304,lv = 125},[5] = {id = 2008305,lv = 125},[6] = {id = 2008306,lv = 125},[7] = {id = 2008307,lv = 125},[8] = {id = 2008308,lv = 125}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-23-10-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1231031,cardId = 1102997,lv = 125,bklv = 17,star = 3,ghost = 42,equip = {[1] = {id = 2108301,lv = 125},[2] = {id = 2108302,lv = 125},[3] = {id = 2108303,lv = 125},[4] = {id = 2108304,lv = 125},[5] = {id = 2108305,lv = 125},[6] = {id = 2108306,lv = 125},[7] = {id = 2108307,lv = 125},[8] = {id = 2108308,lv = 125}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12401] = {
		[1] = {
			jlr = {id = 1240110,cardId = 1101999,lv = 125,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 125},[2] = {id = 2008302,lv = 125},[3] = {id = 2008303,lv = 125},[4] = {id = 2008304,lv = 125},[5] = {id = 2008305,lv = 125},[6] = {id = 2008306,lv = 125},[7] = {id = 2008307,lv = 125},[8] = {id = 2008308,lv = 125}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-24-1-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1240111,cardId = 1102999,lv = 125,bklv = 17,star = 4,ghost = 42,equip = {[1] = {id = 2108301,lv = 125},[2] = {id = 2108302,lv = 125},[3] = {id = 2108303,lv = 125},[4] = {id = 2108304,lv = 125},[5] = {id = 2108305,lv = 125},[6] = {id = 2108306,lv = 125},[7] = {id = 2108307,lv = 125},[8] = {id = 2108308,lv = 125}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1240120,cardId = 1101999,lv = 125,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 125},[2] = {id = 2008302,lv = 125},[3] = {id = 2008303,lv = 125},[4] = {id = 2008304,lv = 125},[5] = {id = 2008305,lv = 125},[6] = {id = 2008306,lv = 125},[7] = {id = 2008307,lv = 125},[8] = {id = 2008308,lv = 125}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-24-1-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1240121,cardId = 1102999,lv = 125,bklv = 17,star = 4,ghost = 42,equip = {[1] = {id = 2108301,lv = 125},[2] = {id = 2108302,lv = 125},[3] = {id = 2108303,lv = 125},[4] = {id = 2108304,lv = 125},[5] = {id = 2108305,lv = 125},[6] = {id = 2108306,lv = 125},[7] = {id = 2108307,lv = 125},[8] = {id = 2108308,lv = 125}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1240130,cardId = 1101999,lv = 125,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 125},[2] = {id = 2008302,lv = 125},[3] = {id = 2008303,lv = 125},[4] = {id = 2008304,lv = 125},[5] = {id = 2008305,lv = 125},[6] = {id = 2008306,lv = 125},[7] = {id = 2008307,lv = 125},[8] = {id = 2008308,lv = 125}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-24-1-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1240131,cardId = 1102999,lv = 125,bklv = 17,star = 4,ghost = 42,equip = {[1] = {id = 2108301,lv = 125},[2] = {id = 2108302,lv = 125},[3] = {id = 2108303,lv = 125},[4] = {id = 2108304,lv = 125},[5] = {id = 2108305,lv = 125},[6] = {id = 2108306,lv = 125},[7] = {id = 2108307,lv = 125},[8] = {id = 2108308,lv = 125}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12402] = {
		[1] = {
			jlr = {id = 1240210,cardId = 1101999,lv = 125,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 125},[2] = {id = 2008302,lv = 125},[3] = {id = 2008303,lv = 125},[4] = {id = 2008304,lv = 125},[5] = {id = 2008305,lv = 125},[6] = {id = 2008306,lv = 125},[7] = {id = 2008307,lv = 125},[8] = {id = 2008308,lv = 125}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-24-2-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1240211,cardId = 1102999,lv = 125,bklv = 17,star = 4,ghost = 42,equip = {[1] = {id = 2108301,lv = 125},[2] = {id = 2108302,lv = 125},[3] = {id = 2108303,lv = 125},[4] = {id = 2108304,lv = 125},[5] = {id = 2108305,lv = 125},[6] = {id = 2108306,lv = 125},[7] = {id = 2108307,lv = 125},[8] = {id = 2108308,lv = 125}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1240220,cardId = 1101999,lv = 125,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 125},[2] = {id = 2008302,lv = 125},[3] = {id = 2008303,lv = 125},[4] = {id = 2008304,lv = 125},[5] = {id = 2008305,lv = 125},[6] = {id = 2008306,lv = 125},[7] = {id = 2008307,lv = 125},[8] = {id = 2008308,lv = 125}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-24-2-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1240221,cardId = 1102999,lv = 125,bklv = 17,star = 4,ghost = 42,equip = {[1] = {id = 2108301,lv = 125},[2] = {id = 2108302,lv = 125},[3] = {id = 2108303,lv = 125},[4] = {id = 2108304,lv = 125},[5] = {id = 2108305,lv = 125},[6] = {id = 2108306,lv = 125},[7] = {id = 2108307,lv = 125},[8] = {id = 2108308,lv = 125}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1240230,cardId = 1101999,lv = 125,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 125},[2] = {id = 2008302,lv = 125},[3] = {id = 2008303,lv = 125},[4] = {id = 2008304,lv = 125},[5] = {id = 2008305,lv = 125},[6] = {id = 2008306,lv = 125},[7] = {id = 2008307,lv = 125},[8] = {id = 2008308,lv = 125}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-24-2-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1240231,cardId = 1102999,lv = 125,bklv = 17,star = 4,ghost = 42,equip = {[1] = {id = 2108301,lv = 125},[2] = {id = 2108302,lv = 125},[3] = {id = 2108303,lv = 125},[4] = {id = 2108304,lv = 125},[5] = {id = 2108305,lv = 125},[6] = {id = 2108306,lv = 125},[7] = {id = 2108307,lv = 125},[8] = {id = 2108308,lv = 125}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12403] = {
		[1] = {
			jlr = {id = 1240310,cardId = 1101999,lv = 126,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 126},[2] = {id = 2008302,lv = 126},[3] = {id = 2008303,lv = 126},[4] = {id = 2008304,lv = 126},[5] = {id = 2008305,lv = 126},[6] = {id = 2008306,lv = 126},[7] = {id = 2008307,lv = 126},[8] = {id = 2008308,lv = 126}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-24-3-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1240311,cardId = 1102999,lv = 125,bklv = 17,star = 4,ghost = 42,equip = {[1] = {id = 2109301,lv = 126},[2] = {id = 2109302,lv = 126},[3] = {id = 2109303,lv = 126},[4] = {id = 2109304,lv = 126},[5] = {id = 2109305,lv = 126},[6] = {id = 2109306,lv = 126},[7] = {id = 2109307,lv = 126},[8] = {id = 2109308,lv = 126}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1240320,cardId = 1101998,lv = 126,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 126},[2] = {id = 2008302,lv = 126},[3] = {id = 2008303,lv = 126},[4] = {id = 2008304,lv = 126},[5] = {id = 2008305,lv = 126},[6] = {id = 2008306,lv = 126},[7] = {id = 2008307,lv = 126},[8] = {id = 2008308,lv = 126}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-24-3-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1240321,cardId = 1102998,lv = 130,bklv = 18,star = 4,ghost = 43,equip = {[1] = {id = 2109301,lv = 126},[2] = {id = 2109302,lv = 126},[3] = {id = 2109303,lv = 126},[4] = {id = 2109304,lv = 126},[5] = {id = 2109305,lv = 126},[6] = {id = 2109306,lv = 126},[7] = {id = 2109307,lv = 126},[8] = {id = 2109308,lv = 126}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1240330,cardId = 1101999,lv = 126,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 126},[2] = {id = 2008302,lv = 126},[3] = {id = 2008303,lv = 126},[4] = {id = 2008304,lv = 126},[5] = {id = 2008305,lv = 126},[6] = {id = 2008306,lv = 126},[7] = {id = 2008307,lv = 126},[8] = {id = 2008308,lv = 126}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-24-3-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1240331,cardId = 1102999,lv = 125,bklv = 17,star = 4,ghost = 42,equip = {[1] = {id = 2109301,lv = 126},[2] = {id = 2109302,lv = 126},[3] = {id = 2109303,lv = 126},[4] = {id = 2109304,lv = 126},[5] = {id = 2109305,lv = 126},[6] = {id = 2109306,lv = 126},[7] = {id = 2109307,lv = 126},[8] = {id = 2109308,lv = 126}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12404] = {
		[1] = {
			jlr = {id = 1240410,cardId = 1101999,lv = 127,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 127},[2] = {id = 2008302,lv = 127},[3] = {id = 2008303,lv = 127},[4] = {id = 2008304,lv = 127},[5] = {id = 2008305,lv = 127},[6] = {id = 2008306,lv = 127},[7] = {id = 2008307,lv = 127},[8] = {id = 2008308,lv = 127}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-24-4-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1240411,cardId = 1102999,lv = 125,bklv = 17,star = 4,ghost = 43,equip = {[1] = {id = 2109301,lv = 127},[2] = {id = 2109302,lv = 127},[3] = {id = 2109303,lv = 127},[4] = {id = 2109304,lv = 127},[5] = {id = 2109305,lv = 127},[6] = {id = 2109306,lv = 127},[7] = {id = 2109307,lv = 127},[8] = {id = 2109308,lv = 127}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1240420,cardId = 1101999,lv = 127,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 127},[2] = {id = 2008302,lv = 127},[3] = {id = 2008303,lv = 127},[4] = {id = 2008304,lv = 127},[5] = {id = 2008305,lv = 127},[6] = {id = 2008306,lv = 127},[7] = {id = 2008307,lv = 127},[8] = {id = 2008308,lv = 127}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-24-4-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1240421,cardId = 1102999,lv = 130,bklv = 18,star = 4,ghost = 43,equip = {[1] = {id = 2109301,lv = 127},[2] = {id = 2109302,lv = 127},[3] = {id = 2109303,lv = 127},[4] = {id = 2109304,lv = 127},[5] = {id = 2109305,lv = 127},[6] = {id = 2109306,lv = 127},[7] = {id = 2109307,lv = 127},[8] = {id = 2109308,lv = 127}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1240430,cardId = 1101999,lv = 127,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 127},[2] = {id = 2008302,lv = 127},[3] = {id = 2008303,lv = 127},[4] = {id = 2008304,lv = 127},[5] = {id = 2008305,lv = 127},[6] = {id = 2008306,lv = 127},[7] = {id = 2008307,lv = 127},[8] = {id = 2008308,lv = 127}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-24-4-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1240431,cardId = 1102999,lv = 125,bklv = 17,star = 4,ghost = 42,equip = {[1] = {id = 2109301,lv = 127},[2] = {id = 2109302,lv = 127},[3] = {id = 2109303,lv = 127},[4] = {id = 2109304,lv = 127},[5] = {id = 2109305,lv = 127},[6] = {id = 2109306,lv = 127},[7] = {id = 2109307,lv = 127},[8] = {id = 2109308,lv = 127}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12405] = {
		[1] = {
			jlr = {id = 1240510,cardId = 1101999,lv = 127,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 127},[2] = {id = 2008302,lv = 127},[3] = {id = 2008303,lv = 127},[4] = {id = 2008304,lv = 127},[5] = {id = 2008305,lv = 127},[6] = {id = 2008306,lv = 127},[7] = {id = 2008307,lv = 127},[8] = {id = 2008308,lv = 127}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-24-5-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1240511,cardId = 1102999,lv = 125,bklv = 17,star = 4,ghost = 43,equip = {[1] = {id = 2109301,lv = 127},[2] = {id = 2109302,lv = 127},[3] = {id = 2109303,lv = 127},[4] = {id = 2109304,lv = 127},[5] = {id = 2109305,lv = 127},[6] = {id = 2109306,lv = 127},[7] = {id = 2109307,lv = 127},[8] = {id = 2109308,lv = 127}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1240520,cardId = 1101999,lv = 127,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 127},[2] = {id = 2008302,lv = 127},[3] = {id = 2008303,lv = 127},[4] = {id = 2008304,lv = 127},[5] = {id = 2008305,lv = 127},[6] = {id = 2008306,lv = 127},[7] = {id = 2008307,lv = 127},[8] = {id = 2008308,lv = 127}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-24-5-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1240521,cardId = 1102999,lv = 130,bklv = 18,star = 4,ghost = 43,equip = {[1] = {id = 2109301,lv = 127},[2] = {id = 2109302,lv = 127},[3] = {id = 2109303,lv = 127},[4] = {id = 2109304,lv = 127},[5] = {id = 2109305,lv = 127},[6] = {id = 2109306,lv = 127},[7] = {id = 2109307,lv = 127},[8] = {id = 2109308,lv = 127}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1240530,cardId = 1101999,lv = 127,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 127},[2] = {id = 2008302,lv = 127},[3] = {id = 2008303,lv = 127},[4] = {id = 2008304,lv = 127},[5] = {id = 2008305,lv = 127},[6] = {id = 2008306,lv = 127},[7] = {id = 2008307,lv = 127},[8] = {id = 2008308,lv = 127}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-24-5-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1240531,cardId = 1102999,lv = 125,bklv = 17,star = 4,ghost = 43,equip = {[1] = {id = 2109301,lv = 127},[2] = {id = 2109302,lv = 127},[3] = {id = 2109303,lv = 127},[4] = {id = 2109304,lv = 127},[5] = {id = 2109305,lv = 127},[6] = {id = 2109306,lv = 127},[7] = {id = 2109307,lv = 127},[8] = {id = 2109308,lv = 127}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12406] = {
		[1] = {
			jlr = {id = 1240610,cardId = 1101998,lv = 128,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 128},[2] = {id = 2008302,lv = 128},[3] = {id = 2008303,lv = 128},[4] = {id = 2008304,lv = 128},[5] = {id = 2008305,lv = 128},[6] = {id = 2008306,lv = 128},[7] = {id = 2008307,lv = 128},[8] = {id = 2008308,lv = 128}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-24-6-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1240611,cardId = 1102998,lv = 130,bklv = 18,star = 4,ghost = 43,equip = {[1] = {id = 2109301,lv = 128},[2] = {id = 2109302,lv = 128},[3] = {id = 2109303,lv = 128},[4] = {id = 2109304,lv = 128},[5] = {id = 2109305,lv = 128},[6] = {id = 2109306,lv = 128},[7] = {id = 2109307,lv = 128},[8] = {id = 2109308,lv = 128}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1240620,cardId = 1101998,lv = 128,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 128},[2] = {id = 2008302,lv = 128},[3] = {id = 2008303,lv = 128},[4] = {id = 2008304,lv = 128},[5] = {id = 2008305,lv = 128},[6] = {id = 2008306,lv = 128},[7] = {id = 2008307,lv = 128},[8] = {id = 2008308,lv = 128}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-24-6-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1240621,cardId = 1102998,lv = 130,bklv = 18,star = 4,ghost = 44,equip = {[1] = {id = 2109301,lv = 128},[2] = {id = 2109302,lv = 128},[3] = {id = 2109303,lv = 128},[4] = {id = 2109304,lv = 128},[5] = {id = 2109305,lv = 128},[6] = {id = 2109306,lv = 128},[7] = {id = 2109307,lv = 128},[8] = {id = 2109308,lv = 128}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1240630,cardId = 1101998,lv = 128,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 128},[2] = {id = 2008302,lv = 128},[3] = {id = 2008303,lv = 128},[4] = {id = 2008304,lv = 128},[5] = {id = 2008305,lv = 128},[6] = {id = 2008306,lv = 128},[7] = {id = 2008307,lv = 128},[8] = {id = 2008308,lv = 128}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-24-6-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1240631,cardId = 1102998,lv = 125,bklv = 17,star = 4,ghost = 43,equip = {[1] = {id = 2109301,lv = 128},[2] = {id = 2109302,lv = 128},[3] = {id = 2109303,lv = 128},[4] = {id = 2109304,lv = 128},[5] = {id = 2109305,lv = 128},[6] = {id = 2109306,lv = 128},[7] = {id = 2109307,lv = 128},[8] = {id = 2109308,lv = 128}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12407] = {
		[1] = {
			jlr = {id = 1240710,cardId = 1101999,lv = 129,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 129},[2] = {id = 2008302,lv = 129},[3] = {id = 2008303,lv = 129},[4] = {id = 2008304,lv = 129},[5] = {id = 2008305,lv = 129},[6] = {id = 2008306,lv = 129},[7] = {id = 2008307,lv = 129},[8] = {id = 2008308,lv = 129}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-24-7-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1240711,cardId = 1102999,lv = 130,bklv = 18,star = 4,ghost = 43,equip = {[1] = {id = 2109301,lv = 129},[2] = {id = 2109302,lv = 129},[3] = {id = 2109303,lv = 129},[4] = {id = 2109304,lv = 129},[5] = {id = 2109305,lv = 129},[6] = {id = 2109306,lv = 129},[7] = {id = 2109307,lv = 129},[8] = {id = 2109308,lv = 129}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1240720,cardId = 1101999,lv = 129,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 129},[2] = {id = 2008302,lv = 129},[3] = {id = 2008303,lv = 129},[4] = {id = 2008304,lv = 129},[5] = {id = 2008305,lv = 129},[6] = {id = 2008306,lv = 129},[7] = {id = 2008307,lv = 129},[8] = {id = 2008308,lv = 129}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-24-7-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1240721,cardId = 1102999,lv = 130,bklv = 18,star = 4,ghost = 44,equip = {[1] = {id = 2109301,lv = 129},[2] = {id = 2109302,lv = 129},[3] = {id = 2109303,lv = 129},[4] = {id = 2109304,lv = 129},[5] = {id = 2109305,lv = 129},[6] = {id = 2109306,lv = 129},[7] = {id = 2109307,lv = 129},[8] = {id = 2109308,lv = 129}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1240730,cardId = 1101999,lv = 129,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 129},[2] = {id = 2008302,lv = 129},[3] = {id = 2008303,lv = 129},[4] = {id = 2008304,lv = 129},[5] = {id = 2008305,lv = 129},[6] = {id = 2008306,lv = 129},[7] = {id = 2008307,lv = 129},[8] = {id = 2008308,lv = 129}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-24-7-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1240731,cardId = 1102999,lv = 125,bklv = 17,star = 4,ghost = 43,equip = {[1] = {id = 2109301,lv = 129},[2] = {id = 2109302,lv = 129},[3] = {id = 2109303,lv = 129},[4] = {id = 2109304,lv = 129},[5] = {id = 2109305,lv = 129},[6] = {id = 2109306,lv = 129},[7] = {id = 2109307,lv = 129},[8] = {id = 2109308,lv = 129}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12408] = {
		[1] = {
			jlr = {id = 1240810,cardId = 1101999,lv = 129,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 129},[2] = {id = 2008302,lv = 129},[3] = {id = 2008303,lv = 129},[4] = {id = 2008304,lv = 129},[5] = {id = 2008305,lv = 129},[6] = {id = 2008306,lv = 129},[7] = {id = 2008307,lv = 129},[8] = {id = 2008308,lv = 129}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-24-8-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1240811,cardId = 1102999,lv = 130,bklv = 18,star = 4,ghost = 43,equip = {[1] = {id = 2109301,lv = 129},[2] = {id = 2109302,lv = 129},[3] = {id = 2109303,lv = 129},[4] = {id = 2109304,lv = 129},[5] = {id = 2109305,lv = 129},[6] = {id = 2109306,lv = 129},[7] = {id = 2109307,lv = 129},[8] = {id = 2109308,lv = 129}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1240820,cardId = 1101999,lv = 129,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 129},[2] = {id = 2008302,lv = 129},[3] = {id = 2008303,lv = 129},[4] = {id = 2008304,lv = 129},[5] = {id = 2008305,lv = 129},[6] = {id = 2008306,lv = 129},[7] = {id = 2008307,lv = 129},[8] = {id = 2008308,lv = 129}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-24-8-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1240821,cardId = 1102999,lv = 130,bklv = 18,star = 4,ghost = 44,equip = {[1] = {id = 2109301,lv = 129},[2] = {id = 2109302,lv = 129},[3] = {id = 2109303,lv = 129},[4] = {id = 2109304,lv = 129},[5] = {id = 2109305,lv = 129},[6] = {id = 2109306,lv = 129},[7] = {id = 2109307,lv = 129},[8] = {id = 2109308,lv = 129}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1240830,cardId = 1101999,lv = 129,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 129},[2] = {id = 2008302,lv = 129},[3] = {id = 2008303,lv = 129},[4] = {id = 2008304,lv = 129},[5] = {id = 2008305,lv = 129},[6] = {id = 2008306,lv = 129},[7] = {id = 2008307,lv = 129},[8] = {id = 2008308,lv = 129}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-24-8-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1240831,cardId = 1102999,lv = 125,bklv = 17,star = 4,ghost = 43,equip = {[1] = {id = 2109301,lv = 129},[2] = {id = 2109302,lv = 129},[3] = {id = 2109303,lv = 129},[4] = {id = 2109304,lv = 129},[5] = {id = 2109305,lv = 129},[6] = {id = 2109306,lv = 129},[7] = {id = 2109307,lv = 129},[8] = {id = 2109308,lv = 129}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12409] = {
		[1] = {
			jlr = {id = 1240910,cardId = 1101998,lv = 130,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 130},[2] = {id = 2008302,lv = 130},[3] = {id = 2008303,lv = 130},[4] = {id = 2008304,lv = 130},[5] = {id = 2008305,lv = 130},[6] = {id = 2008306,lv = 130},[7] = {id = 2008307,lv = 130},[8] = {id = 2008308,lv = 130}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-24-9-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1240911,cardId = 1102998,lv = 130,bklv = 18,star = 4,ghost = 44,equip = {[1] = {id = 2109301,lv = 130},[2] = {id = 2109302,lv = 130},[3] = {id = 2109303,lv = 130},[4] = {id = 2109304,lv = 130},[5] = {id = 2109305,lv = 130},[6] = {id = 2109306,lv = 130},[7] = {id = 2109307,lv = 130},[8] = {id = 2109308,lv = 130}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1240920,cardId = 1101997,lv = 130,bklv = 16,star = 3,equip = {[1] = {id = 2008301,lv = 130},[2] = {id = 2008302,lv = 130},[3] = {id = 2008303,lv = 130},[4] = {id = 2008304,lv = 130},[5] = {id = 2008305,lv = 130},[6] = {id = 2008306,lv = 130},[7] = {id = 2008307,lv = 130},[8] = {id = 2008308,lv = 130}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-24-9-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1240921,cardId = 1102997,lv = 130,bklv = 18,star = 3,ghost = 44,equip = {[1] = {id = 2109301,lv = 130},[2] = {id = 2109302,lv = 130},[3] = {id = 2109303,lv = 130},[4] = {id = 2109304,lv = 130},[5] = {id = 2109305,lv = 130},[6] = {id = 2109306,lv = 130},[7] = {id = 2109307,lv = 130},[8] = {id = 2109308,lv = 130}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1240930,cardId = 1101998,lv = 130,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 130},[2] = {id = 2008302,lv = 130},[3] = {id = 2008303,lv = 130},[4] = {id = 2008304,lv = 130},[5] = {id = 2008305,lv = 130},[6] = {id = 2008306,lv = 130},[7] = {id = 2008307,lv = 130},[8] = {id = 2008308,lv = 130}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-24-9-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1240931,cardId = 1102998,lv = 130,bklv = 18,star = 4,ghost = 44,equip = {[1] = {id = 2109301,lv = 130},[2] = {id = 2109302,lv = 130},[3] = {id = 2109303,lv = 130},[4] = {id = 2109304,lv = 130},[5] = {id = 2109305,lv = 130},[6] = {id = 2109306,lv = 130},[7] = {id = 2109307,lv = 130},[8] = {id = 2109308,lv = 130}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12410] = {
		[1] = {
			jlr = {id = 1241010,cardId = 1101997,lv = 130,bklv = 16,star = 3,equip = {[1] = {id = 2008301,lv = 130},[2] = {id = 2008302,lv = 130},[3] = {id = 2008303,lv = 130},[4] = {id = 2008304,lv = 130},[5] = {id = 2008305,lv = 130},[6] = {id = 2008306,lv = 130},[7] = {id = 2008307,lv = 130},[8] = {id = 2008308,lv = 130}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-24-10-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1241011,cardId = 1102997,lv = 130,bklv = 18,star = 3,ghost = 44,equip = {[1] = {id = 2109301,lv = 130},[2] = {id = 2109302,lv = 130},[3] = {id = 2109303,lv = 130},[4] = {id = 2109304,lv = 130},[5] = {id = 2109305,lv = 130},[6] = {id = 2109306,lv = 130},[7] = {id = 2109307,lv = 130},[8] = {id = 2109308,lv = 130}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1241020,cardId = 1101997,lv = 130,bklv = 16,star = 3,equip = {[1] = {id = 2008301,lv = 130},[2] = {id = 2008302,lv = 130},[3] = {id = 2008303,lv = 130},[4] = {id = 2008304,lv = 130},[5] = {id = 2008305,lv = 130},[6] = {id = 2008306,lv = 130},[7] = {id = 2008307,lv = 130},[8] = {id = 2008308,lv = 130}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-24-10-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1241021,cardId = 1102997,lv = 130,bklv = 18,star = 3,ghost = 44,equip = {[1] = {id = 2109301,lv = 130},[2] = {id = 2109302,lv = 130},[3] = {id = 2109303,lv = 130},[4] = {id = 2109304,lv = 130},[5] = {id = 2109305,lv = 130},[6] = {id = 2109306,lv = 130},[7] = {id = 2109307,lv = 130},[8] = {id = 2109308,lv = 130}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1241030,cardId = 1101997,lv = 130,bklv = 16,star = 3,equip = {[1] = {id = 2008301,lv = 130},[2] = {id = 2008302,lv = 130},[3] = {id = 2008303,lv = 130},[4] = {id = 2008304,lv = 130},[5] = {id = 2008305,lv = 130},[6] = {id = 2008306,lv = 130},[7] = {id = 2008307,lv = 130},[8] = {id = 2008308,lv = 130}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-24-10-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1241031,cardId = 1102997,lv = 130,bklv = 18,star = 3,ghost = 44,equip = {[1] = {id = 2109301,lv = 130},[2] = {id = 2109302,lv = 130},[3] = {id = 2109303,lv = 130},[4] = {id = 2109304,lv = 130},[5] = {id = 2109305,lv = 130},[6] = {id = 2109306,lv = 130},[7] = {id = 2109307,lv = 130},[8] = {id = 2109308,lv = 130}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12501] = {
		[1] = {
			jlr = {id = 1250110,cardId = 1101999,lv = 130,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 130},[2] = {id = 2008302,lv = 130},[3] = {id = 2008303,lv = 130},[4] = {id = 2008304,lv = 130},[5] = {id = 2008305,lv = 130},[6] = {id = 2008306,lv = 130},[7] = {id = 2008307,lv = 130},[8] = {id = 2008308,lv = 130}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-25-1-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1250111,cardId = 1102999,lv = 130,bklv = 18,star = 4,ghost = 44,equip = {[1] = {id = 2109301,lv = 130},[2] = {id = 2109302,lv = 130},[3] = {id = 2109303,lv = 130},[4] = {id = 2109304,lv = 130},[5] = {id = 2109305,lv = 130},[6] = {id = 2109306,lv = 130},[7] = {id = 2109307,lv = 130},[8] = {id = 2109308,lv = 130}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1250120,cardId = 1101999,lv = 130,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 130},[2] = {id = 2008302,lv = 130},[3] = {id = 2008303,lv = 130},[4] = {id = 2008304,lv = 130},[5] = {id = 2008305,lv = 130},[6] = {id = 2008306,lv = 130},[7] = {id = 2008307,lv = 130},[8] = {id = 2008308,lv = 130}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-25-1-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1250121,cardId = 1102999,lv = 130,bklv = 18,star = 4,ghost = 44,equip = {[1] = {id = 2109301,lv = 130},[2] = {id = 2109302,lv = 130},[3] = {id = 2109303,lv = 130},[4] = {id = 2109304,lv = 130},[5] = {id = 2109305,lv = 130},[6] = {id = 2109306,lv = 130},[7] = {id = 2109307,lv = 130},[8] = {id = 2109308,lv = 130}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1250130,cardId = 1101999,lv = 130,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 130},[2] = {id = 2008302,lv = 130},[3] = {id = 2008303,lv = 130},[4] = {id = 2008304,lv = 130},[5] = {id = 2008305,lv = 130},[6] = {id = 2008306,lv = 130},[7] = {id = 2008307,lv = 130},[8] = {id = 2008308,lv = 130}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-25-1-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1250131,cardId = 1102999,lv = 130,bklv = 18,star = 4,ghost = 44,equip = {[1] = {id = 2109301,lv = 130},[2] = {id = 2109302,lv = 130},[3] = {id = 2109303,lv = 130},[4] = {id = 2109304,lv = 130},[5] = {id = 2109305,lv = 130},[6] = {id = 2109306,lv = 130},[7] = {id = 2109307,lv = 130},[8] = {id = 2109308,lv = 130}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12502] = {
		[1] = {
			jlr = {id = 1250210,cardId = 1101999,lv = 130,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 130},[2] = {id = 2008302,lv = 130},[3] = {id = 2008303,lv = 130},[4] = {id = 2008304,lv = 130},[5] = {id = 2008305,lv = 130},[6] = {id = 2008306,lv = 130},[7] = {id = 2008307,lv = 130},[8] = {id = 2008308,lv = 130}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-25-2-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1250211,cardId = 1102999,lv = 130,bklv = 18,star = 4,ghost = 44,equip = {[1] = {id = 2109301,lv = 130},[2] = {id = 2109302,lv = 130},[3] = {id = 2109303,lv = 130},[4] = {id = 2109304,lv = 130},[5] = {id = 2109305,lv = 130},[6] = {id = 2109306,lv = 130},[7] = {id = 2109307,lv = 130},[8] = {id = 2109308,lv = 130}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1250220,cardId = 1101999,lv = 130,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 130},[2] = {id = 2008302,lv = 130},[3] = {id = 2008303,lv = 130},[4] = {id = 2008304,lv = 130},[5] = {id = 2008305,lv = 130},[6] = {id = 2008306,lv = 130},[7] = {id = 2008307,lv = 130},[8] = {id = 2008308,lv = 130}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-25-2-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1250221,cardId = 1102999,lv = 130,bklv = 18,star = 4,ghost = 44,equip = {[1] = {id = 2109301,lv = 130},[2] = {id = 2109302,lv = 130},[3] = {id = 2109303,lv = 130},[4] = {id = 2109304,lv = 130},[5] = {id = 2109305,lv = 130},[6] = {id = 2109306,lv = 130},[7] = {id = 2109307,lv = 130},[8] = {id = 2109308,lv = 130}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1250230,cardId = 1101999,lv = 130,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 130},[2] = {id = 2008302,lv = 130},[3] = {id = 2008303,lv = 130},[4] = {id = 2008304,lv = 130},[5] = {id = 2008305,lv = 130},[6] = {id = 2008306,lv = 130},[7] = {id = 2008307,lv = 130},[8] = {id = 2008308,lv = 130}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-25-2-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1250231,cardId = 1102999,lv = 130,bklv = 18,star = 4,ghost = 44,equip = {[1] = {id = 2109301,lv = 130},[2] = {id = 2109302,lv = 130},[3] = {id = 2109303,lv = 130},[4] = {id = 2109304,lv = 130},[5] = {id = 2109305,lv = 130},[6] = {id = 2109306,lv = 130},[7] = {id = 2109307,lv = 130},[8] = {id = 2109308,lv = 130}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12503] = {
		[1] = {
			jlr = {id = 1250310,cardId = 1101999,lv = 131,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 131},[2] = {id = 2008302,lv = 131},[3] = {id = 2008303,lv = 131},[4] = {id = 2008304,lv = 131},[5] = {id = 2008305,lv = 131},[6] = {id = 2008306,lv = 131},[7] = {id = 2008307,lv = 131},[8] = {id = 2008308,lv = 131}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-25-3-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1250311,cardId = 1102999,lv = 130,bklv = 18,star = 4,ghost = 44,equip = {[1] = {id = 2109301,lv = 131},[2] = {id = 2109302,lv = 131},[3] = {id = 2109303,lv = 131},[4] = {id = 2109304,lv = 131},[5] = {id = 2109305,lv = 131},[6] = {id = 2109306,lv = 131},[7] = {id = 2109307,lv = 131},[8] = {id = 2109308,lv = 131}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1250320,cardId = 1101998,lv = 131,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 131},[2] = {id = 2008302,lv = 131},[3] = {id = 2008303,lv = 131},[4] = {id = 2008304,lv = 131},[5] = {id = 2008305,lv = 131},[6] = {id = 2008306,lv = 131},[7] = {id = 2008307,lv = 131},[8] = {id = 2008308,lv = 131}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-25-3-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1250321,cardId = 1102998,lv = 135,bklv = 18,star = 4,ghost = 45,equip = {[1] = {id = 2109301,lv = 131},[2] = {id = 2109302,lv = 131},[3] = {id = 2109303,lv = 131},[4] = {id = 2109304,lv = 131},[5] = {id = 2109305,lv = 131},[6] = {id = 2109306,lv = 131},[7] = {id = 2109307,lv = 131},[8] = {id = 2109308,lv = 131}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1250330,cardId = 1101999,lv = 131,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 131},[2] = {id = 2008302,lv = 131},[3] = {id = 2008303,lv = 131},[4] = {id = 2008304,lv = 131},[5] = {id = 2008305,lv = 131},[6] = {id = 2008306,lv = 131},[7] = {id = 2008307,lv = 131},[8] = {id = 2008308,lv = 131}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-25-3-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1250331,cardId = 1102999,lv = 130,bklv = 18,star = 4,ghost = 44,equip = {[1] = {id = 2109301,lv = 131},[2] = {id = 2109302,lv = 131},[3] = {id = 2109303,lv = 131},[4] = {id = 2109304,lv = 131},[5] = {id = 2109305,lv = 131},[6] = {id = 2109306,lv = 131},[7] = {id = 2109307,lv = 131},[8] = {id = 2109308,lv = 131}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12504] = {
		[1] = {
			jlr = {id = 1250410,cardId = 1101999,lv = 132,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 132},[2] = {id = 2008302,lv = 132},[3] = {id = 2008303,lv = 132},[4] = {id = 2008304,lv = 132},[5] = {id = 2008305,lv = 132},[6] = {id = 2008306,lv = 132},[7] = {id = 2008307,lv = 132},[8] = {id = 2008308,lv = 132}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-25-4-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1250411,cardId = 1102999,lv = 130,bklv = 18,star = 4,ghost = 45,equip = {[1] = {id = 2109301,lv = 132},[2] = {id = 2109302,lv = 132},[3] = {id = 2109303,lv = 132},[4] = {id = 2109304,lv = 132},[5] = {id = 2109305,lv = 132},[6] = {id = 2109306,lv = 132},[7] = {id = 2109307,lv = 132},[8] = {id = 2109308,lv = 132}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1250420,cardId = 1101999,lv = 132,bklv = 16,star = 5,equip = {[1] = {id = 2008301,lv = 132},[2] = {id = 2008302,lv = 132},[3] = {id = 2008303,lv = 132},[4] = {id = 2008304,lv = 132},[5] = {id = 2008305,lv = 132},[6] = {id = 2008306,lv = 132},[7] = {id = 2008307,lv = 132},[8] = {id = 2008308,lv = 132}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-25-4-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1250421,cardId = 1102999,lv = 135,bklv = 18,star = 5,ghost = 45,equip = {[1] = {id = 2109301,lv = 132},[2] = {id = 2109302,lv = 132},[3] = {id = 2109303,lv = 132},[4] = {id = 2109304,lv = 132},[5] = {id = 2109305,lv = 132},[6] = {id = 2109306,lv = 132},[7] = {id = 2109307,lv = 132},[8] = {id = 2109308,lv = 132}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1250430,cardId = 1101999,lv = 132,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 132},[2] = {id = 2008302,lv = 132},[3] = {id = 2008303,lv = 132},[4] = {id = 2008304,lv = 132},[5] = {id = 2008305,lv = 132},[6] = {id = 2008306,lv = 132},[7] = {id = 2008307,lv = 132},[8] = {id = 2008308,lv = 132}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-25-4-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1250431,cardId = 1102999,lv = 130,bklv = 18,star = 4,ghost = 44,equip = {[1] = {id = 2109301,lv = 132},[2] = {id = 2109302,lv = 132},[3] = {id = 2109303,lv = 132},[4] = {id = 2109304,lv = 132},[5] = {id = 2109305,lv = 132},[6] = {id = 2109306,lv = 132},[7] = {id = 2109307,lv = 132},[8] = {id = 2109308,lv = 132}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12505] = {
		[1] = {
			jlr = {id = 1250510,cardId = 1101999,lv = 132,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 132},[2] = {id = 2008302,lv = 132},[3] = {id = 2008303,lv = 132},[4] = {id = 2008304,lv = 132},[5] = {id = 2008305,lv = 132},[6] = {id = 2008306,lv = 132},[7] = {id = 2008307,lv = 132},[8] = {id = 2008308,lv = 132}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-25-5-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1250511,cardId = 1102999,lv = 130,bklv = 18,star = 4,ghost = 45,equip = {[1] = {id = 2109301,lv = 132},[2] = {id = 2109302,lv = 132},[3] = {id = 2109303,lv = 132},[4] = {id = 2109304,lv = 132},[5] = {id = 2109305,lv = 132},[6] = {id = 2109306,lv = 132},[7] = {id = 2109307,lv = 132},[8] = {id = 2109308,lv = 132}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1250520,cardId = 1101999,lv = 132,bklv = 16,star = 5,equip = {[1] = {id = 2008301,lv = 132},[2] = {id = 2008302,lv = 132},[3] = {id = 2008303,lv = 132},[4] = {id = 2008304,lv = 132},[5] = {id = 2008305,lv = 132},[6] = {id = 2008306,lv = 132},[7] = {id = 2008307,lv = 132},[8] = {id = 2008308,lv = 132}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-25-5-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1250521,cardId = 1102999,lv = 135,bklv = 18,star = 5,ghost = 45,equip = {[1] = {id = 2109301,lv = 132},[2] = {id = 2109302,lv = 132},[3] = {id = 2109303,lv = 132},[4] = {id = 2109304,lv = 132},[5] = {id = 2109305,lv = 132},[6] = {id = 2109306,lv = 132},[7] = {id = 2109307,lv = 132},[8] = {id = 2109308,lv = 132}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1250530,cardId = 1101999,lv = 132,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 132},[2] = {id = 2008302,lv = 132},[3] = {id = 2008303,lv = 132},[4] = {id = 2008304,lv = 132},[5] = {id = 2008305,lv = 132},[6] = {id = 2008306,lv = 132},[7] = {id = 2008307,lv = 132},[8] = {id = 2008308,lv = 132}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-25-5-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1250531,cardId = 1102999,lv = 130,bklv = 18,star = 4,ghost = 45,equip = {[1] = {id = 2109301,lv = 132},[2] = {id = 2109302,lv = 132},[3] = {id = 2109303,lv = 132},[4] = {id = 2109304,lv = 132},[5] = {id = 2109305,lv = 132},[6] = {id = 2109306,lv = 132},[7] = {id = 2109307,lv = 132},[8] = {id = 2109308,lv = 132}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12506] = {
		[1] = {
			jlr = {id = 1250610,cardId = 1101998,lv = 133,bklv = 17,star = 4,equip = {[1] = {id = 2009301,lv = 133},[2] = {id = 2009302,lv = 133},[3] = {id = 2009303,lv = 133},[4] = {id = 2009304,lv = 133},[5] = {id = 2009305,lv = 133},[6] = {id = 2009306,lv = 133},[7] = {id = 2009307,lv = 133},[8] = {id = 2009308,lv = 133}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-25-6-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1250611,cardId = 1102998,lv = 135,bklv = 18,star = 4,ghost = 45,equip = {[1] = {id = 2109301,lv = 133},[2] = {id = 2109302,lv = 133},[3] = {id = 2109303,lv = 133},[4] = {id = 2109304,lv = 133},[5] = {id = 2109305,lv = 133},[6] = {id = 2109306,lv = 133},[7] = {id = 2109307,lv = 133},[8] = {id = 2109308,lv = 133}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1250620,cardId = 1101998,lv = 133,bklv = 17,star = 4,equip = {[1] = {id = 2009301,lv = 133},[2] = {id = 2009302,lv = 133},[3] = {id = 2009303,lv = 133},[4] = {id = 2009304,lv = 133},[5] = {id = 2009305,lv = 133},[6] = {id = 2009306,lv = 133},[7] = {id = 2009307,lv = 133},[8] = {id = 2009308,lv = 133}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-25-6-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1250621,cardId = 1102998,lv = 135,bklv = 18,star = 4,ghost = 46,equip = {[1] = {id = 2109301,lv = 133},[2] = {id = 2109302,lv = 133},[3] = {id = 2109303,lv = 133},[4] = {id = 2109304,lv = 133},[5] = {id = 2109305,lv = 133},[6] = {id = 2109306,lv = 133},[7] = {id = 2109307,lv = 133},[8] = {id = 2109308,lv = 133}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1250630,cardId = 1101998,lv = 133,bklv = 17,star = 4,equip = {[1] = {id = 2009301,lv = 133},[2] = {id = 2009302,lv = 133},[3] = {id = 2009303,lv = 133},[4] = {id = 2009304,lv = 133},[5] = {id = 2009305,lv = 133},[6] = {id = 2009306,lv = 133},[7] = {id = 2009307,lv = 133},[8] = {id = 2009308,lv = 133}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-25-6-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1250631,cardId = 1102998,lv = 130,bklv = 18,star = 4,ghost = 45,equip = {[1] = {id = 2109301,lv = 133},[2] = {id = 2109302,lv = 133},[3] = {id = 2109303,lv = 133},[4] = {id = 2109304,lv = 133},[5] = {id = 2109305,lv = 133},[6] = {id = 2109306,lv = 133},[7] = {id = 2109307,lv = 133},[8] = {id = 2109308,lv = 133}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12507] = {
		[1] = {
			jlr = {id = 1250710,cardId = 1101999,lv = 134,bklv = 17,star = 5,equip = {[1] = {id = 2009301,lv = 134},[2] = {id = 2009302,lv = 134},[3] = {id = 2009303,lv = 134},[4] = {id = 2009304,lv = 134},[5] = {id = 2009305,lv = 134},[6] = {id = 2009306,lv = 134},[7] = {id = 2009307,lv = 134},[8] = {id = 2009308,lv = 134}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-25-7-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1250711,cardId = 1102999,lv = 135,bklv = 18,star = 5,ghost = 45,equip = {[1] = {id = 2109301,lv = 134},[2] = {id = 2109302,lv = 134},[3] = {id = 2109303,lv = 134},[4] = {id = 2109304,lv = 134},[5] = {id = 2109305,lv = 134},[6] = {id = 2109306,lv = 134},[7] = {id = 2109307,lv = 134},[8] = {id = 2109308,lv = 134}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1250720,cardId = 1101999,lv = 134,bklv = 17,star = 5,equip = {[1] = {id = 2009301,lv = 134},[2] = {id = 2009302,lv = 134},[3] = {id = 2009303,lv = 134},[4] = {id = 2009304,lv = 134},[5] = {id = 2009305,lv = 134},[6] = {id = 2009306,lv = 134},[7] = {id = 2009307,lv = 134},[8] = {id = 2009308,lv = 134}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-25-7-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1250721,cardId = 1102999,lv = 135,bklv = 18,star = 5,ghost = 46,equip = {[1] = {id = 2109301,lv = 134},[2] = {id = 2109302,lv = 134},[3] = {id = 2109303,lv = 134},[4] = {id = 2109304,lv = 134},[5] = {id = 2109305,lv = 134},[6] = {id = 2109306,lv = 134},[7] = {id = 2109307,lv = 134},[8] = {id = 2109308,lv = 134}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1250730,cardId = 1101999,lv = 134,bklv = 17,star = 4,equip = {[1] = {id = 2009301,lv = 134},[2] = {id = 2009302,lv = 134},[3] = {id = 2009303,lv = 134},[4] = {id = 2009304,lv = 134},[5] = {id = 2009305,lv = 134},[6] = {id = 2009306,lv = 134},[7] = {id = 2009307,lv = 134},[8] = {id = 2009308,lv = 134}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-25-7-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1250731,cardId = 1102999,lv = 130,bklv = 18,star = 4,ghost = 45,equip = {[1] = {id = 2109301,lv = 134},[2] = {id = 2109302,lv = 134},[3] = {id = 2109303,lv = 134},[4] = {id = 2109304,lv = 134},[5] = {id = 2109305,lv = 134},[6] = {id = 2109306,lv = 134},[7] = {id = 2109307,lv = 134},[8] = {id = 2109308,lv = 134}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12508] = {
		[1] = {
			jlr = {id = 1250810,cardId = 1101999,lv = 134,bklv = 17,star = 5,equip = {[1] = {id = 2009301,lv = 134},[2] = {id = 2009302,lv = 134},[3] = {id = 2009303,lv = 134},[4] = {id = 2009304,lv = 134},[5] = {id = 2009305,lv = 134},[6] = {id = 2009306,lv = 134},[7] = {id = 2009307,lv = 134},[8] = {id = 2009308,lv = 134}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-25-8-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1250811,cardId = 1102999,lv = 135,bklv = 18,star = 5,ghost = 45,equip = {[1] = {id = 2109301,lv = 134},[2] = {id = 2109302,lv = 134},[3] = {id = 2109303,lv = 134},[4] = {id = 2109304,lv = 134},[5] = {id = 2109305,lv = 134},[6] = {id = 2109306,lv = 134},[7] = {id = 2109307,lv = 134},[8] = {id = 2109308,lv = 134}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1250820,cardId = 1101999,lv = 134,bklv = 17,star = 5,equip = {[1] = {id = 2009301,lv = 134},[2] = {id = 2009302,lv = 134},[3] = {id = 2009303,lv = 134},[4] = {id = 2009304,lv = 134},[5] = {id = 2009305,lv = 134},[6] = {id = 2009306,lv = 134},[7] = {id = 2009307,lv = 134},[8] = {id = 2009308,lv = 134}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-25-8-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1250821,cardId = 1102999,lv = 135,bklv = 18,star = 5,ghost = 46,equip = {[1] = {id = 2109301,lv = 134},[2] = {id = 2109302,lv = 134},[3] = {id = 2109303,lv = 134},[4] = {id = 2109304,lv = 134},[5] = {id = 2109305,lv = 134},[6] = {id = 2109306,lv = 134},[7] = {id = 2109307,lv = 134},[8] = {id = 2109308,lv = 134}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1250830,cardId = 1101999,lv = 134,bklv = 17,star = 4,equip = {[1] = {id = 2009301,lv = 134},[2] = {id = 2009302,lv = 134},[3] = {id = 2009303,lv = 134},[4] = {id = 2009304,lv = 134},[5] = {id = 2009305,lv = 134},[6] = {id = 2009306,lv = 134},[7] = {id = 2009307,lv = 134},[8] = {id = 2009308,lv = 134}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-25-8-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1250831,cardId = 1102999,lv = 130,bklv = 18,star = 4,ghost = 45,equip = {[1] = {id = 2109301,lv = 134},[2] = {id = 2109302,lv = 134},[3] = {id = 2109303,lv = 134},[4] = {id = 2109304,lv = 134},[5] = {id = 2109305,lv = 134},[6] = {id = 2109306,lv = 134},[7] = {id = 2109307,lv = 134},[8] = {id = 2109308,lv = 134}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12509] = {
		[1] = {
			jlr = {id = 1250910,cardId = 1101998,lv = 135,bklv = 17,star = 4,equip = {[1] = {id = 2009301,lv = 135},[2] = {id = 2009302,lv = 135},[3] = {id = 2009303,lv = 135},[4] = {id = 2009304,lv = 135},[5] = {id = 2009305,lv = 135},[6] = {id = 2009306,lv = 135},[7] = {id = 2009307,lv = 135},[8] = {id = 2009308,lv = 135}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-25-9-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1250911,cardId = 1102998,lv = 135,bklv = 18,star = 4,ghost = 46,equip = {[1] = {id = 2109301,lv = 135},[2] = {id = 2109302,lv = 135},[3] = {id = 2109303,lv = 135},[4] = {id = 2109304,lv = 135},[5] = {id = 2109305,lv = 135},[6] = {id = 2109306,lv = 135},[7] = {id = 2109307,lv = 135},[8] = {id = 2109308,lv = 135}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1250920,cardId = 1101997,lv = 135,bklv = 17,star = 3,equip = {[1] = {id = 2009301,lv = 135},[2] = {id = 2009302,lv = 135},[3] = {id = 2009303,lv = 135},[4] = {id = 2009304,lv = 135},[5] = {id = 2009305,lv = 135},[6] = {id = 2009306,lv = 135},[7] = {id = 2009307,lv = 135},[8] = {id = 2009308,lv = 135}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-25-9-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1250921,cardId = 1102997,lv = 135,bklv = 18,star = 3,ghost = 46,equip = {[1] = {id = 2109301,lv = 135},[2] = {id = 2109302,lv = 135},[3] = {id = 2109303,lv = 135},[4] = {id = 2109304,lv = 135},[5] = {id = 2109305,lv = 135},[6] = {id = 2109306,lv = 135},[7] = {id = 2109307,lv = 135},[8] = {id = 2109308,lv = 135}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1250930,cardId = 1101998,lv = 135,bklv = 17,star = 4,equip = {[1] = {id = 2009301,lv = 135},[2] = {id = 2009302,lv = 135},[3] = {id = 2009303,lv = 135},[4] = {id = 2009304,lv = 135},[5] = {id = 2009305,lv = 135},[6] = {id = 2009306,lv = 135},[7] = {id = 2009307,lv = 135},[8] = {id = 2009308,lv = 135}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-25-9-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1250931,cardId = 1102998,lv = 135,bklv = 18,star = 4,ghost = 46,equip = {[1] = {id = 2109301,lv = 135},[2] = {id = 2109302,lv = 135},[3] = {id = 2109303,lv = 135},[4] = {id = 2109304,lv = 135},[5] = {id = 2109305,lv = 135},[6] = {id = 2109306,lv = 135},[7] = {id = 2109307,lv = 135},[8] = {id = 2109308,lv = 135}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12510] = {
		[1] = {
			jlr = {id = 1251010,cardId = 1101997,lv = 135,bklv = 17,star = 3,equip = {[1] = {id = 2009301,lv = 135},[2] = {id = 2009302,lv = 135},[3] = {id = 2009303,lv = 135},[4] = {id = 2009304,lv = 135},[5] = {id = 2009305,lv = 135},[6] = {id = 2009306,lv = 135},[7] = {id = 2009307,lv = 135},[8] = {id = 2009308,lv = 135}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-25-10-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1251011,cardId = 1102997,lv = 135,bklv = 18,star = 3,ghost = 46,equip = {[1] = {id = 2109301,lv = 135},[2] = {id = 2109302,lv = 135},[3] = {id = 2109303,lv = 135},[4] = {id = 2109304,lv = 135},[5] = {id = 2109305,lv = 135},[6] = {id = 2109306,lv = 135},[7] = {id = 2109307,lv = 135},[8] = {id = 2109308,lv = 135}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1251020,cardId = 1101997,lv = 135,bklv = 17,star = 3,equip = {[1] = {id = 2009301,lv = 135},[2] = {id = 2009302,lv = 135},[3] = {id = 2009303,lv = 135},[4] = {id = 2009304,lv = 135},[5] = {id = 2009305,lv = 135},[6] = {id = 2009306,lv = 135},[7] = {id = 2009307,lv = 135},[8] = {id = 2009308,lv = 135}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-25-10-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1251021,cardId = 1102997,lv = 135,bklv = 18,star = 3,ghost = 46,equip = {[1] = {id = 2109301,lv = 135},[2] = {id = 2109302,lv = 135},[3] = {id = 2109303,lv = 135},[4] = {id = 2109304,lv = 135},[5] = {id = 2109305,lv = 135},[6] = {id = 2109306,lv = 135},[7] = {id = 2109307,lv = 135},[8] = {id = 2109308,lv = 135}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1251030,cardId = 1101997,lv = 135,bklv = 17,star = 3,equip = {[1] = {id = 2009301,lv = 135},[2] = {id = 2009302,lv = 135},[3] = {id = 2009303,lv = 135},[4] = {id = 2009304,lv = 135},[5] = {id = 2009305,lv = 135},[6] = {id = 2009306,lv = 135},[7] = {id = 2009307,lv = 135},[8] = {id = 2009308,lv = 135}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-25-10-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1251031,cardId = 1102997,lv = 135,bklv = 18,star = 3,ghost = 46,equip = {[1] = {id = 2109301,lv = 135},[2] = {id = 2109302,lv = 135},[3] = {id = 2109303,lv = 135},[4] = {id = 2109304,lv = 135},[5] = {id = 2109305,lv = 135},[6] = {id = 2109306,lv = 135},[7] = {id = 2109307,lv = 135},[8] = {id = 2109308,lv = 135}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12601] = {
		[1] = {
			jlr = {id = 1260110,cardId = 1101999,lv = 135,bklv = 17,star = 5,equip = {[1] = {id = 2009301,lv = 135},[2] = {id = 2009302,lv = 135},[3] = {id = 2009303,lv = 135},[4] = {id = 2009304,lv = 135},[5] = {id = 2009305,lv = 135},[6] = {id = 2009306,lv = 135},[7] = {id = 2009307,lv = 135},[8] = {id = 2009308,lv = 135}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-26-1-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1260111,cardId = 1102999,lv = 135,bklv = 18,star = 5,ghost = 46,equip = {[1] = {id = 2109301,lv = 135},[2] = {id = 2109302,lv = 135},[3] = {id = 2109303,lv = 135},[4] = {id = 2109304,lv = 135},[5] = {id = 2109305,lv = 135},[6] = {id = 2109306,lv = 135},[7] = {id = 2109307,lv = 135},[8] = {id = 2109308,lv = 135}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1260120,cardId = 1101999,lv = 135,bklv = 17,star = 5,equip = {[1] = {id = 2009301,lv = 135},[2] = {id = 2009302,lv = 135},[3] = {id = 2009303,lv = 135},[4] = {id = 2009304,lv = 135},[5] = {id = 2009305,lv = 135},[6] = {id = 2009306,lv = 135},[7] = {id = 2009307,lv = 135},[8] = {id = 2009308,lv = 135}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-26-1-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1260121,cardId = 1102999,lv = 135,bklv = 18,star = 5,ghost = 46,equip = {[1] = {id = 2109301,lv = 135},[2] = {id = 2109302,lv = 135},[3] = {id = 2109303,lv = 135},[4] = {id = 2109304,lv = 135},[5] = {id = 2109305,lv = 135},[6] = {id = 2109306,lv = 135},[7] = {id = 2109307,lv = 135},[8] = {id = 2109308,lv = 135}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1260130,cardId = 1101999,lv = 135,bklv = 17,star = 5,equip = {[1] = {id = 2009301,lv = 135},[2] = {id = 2009302,lv = 135},[3] = {id = 2009303,lv = 135},[4] = {id = 2009304,lv = 135},[5] = {id = 2009305,lv = 135},[6] = {id = 2009306,lv = 135},[7] = {id = 2009307,lv = 135},[8] = {id = 2009308,lv = 135}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-26-1-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1260131,cardId = 1102999,lv = 135,bklv = 18,star = 5,ghost = 46,equip = {[1] = {id = 2109301,lv = 135},[2] = {id = 2109302,lv = 135},[3] = {id = 2109303,lv = 135},[4] = {id = 2109304,lv = 135},[5] = {id = 2109305,lv = 135},[6] = {id = 2109306,lv = 135},[7] = {id = 2109307,lv = 135},[8] = {id = 2109308,lv = 135}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12602] = {
		[1] = {
			jlr = {id = 1260210,cardId = 1101999,lv = 135,bklv = 17,star = 5,equip = {[1] = {id = 2009301,lv = 135},[2] = {id = 2009302,lv = 135},[3] = {id = 2009303,lv = 135},[4] = {id = 2009304,lv = 135},[5] = {id = 2009305,lv = 135},[6] = {id = 2009306,lv = 135},[7] = {id = 2009307,lv = 135},[8] = {id = 2009308,lv = 135}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-26-2-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1260211,cardId = 1102999,lv = 135,bklv = 18,star = 5,ghost = 46,equip = {[1] = {id = 2109301,lv = 135},[2] = {id = 2109302,lv = 135},[3] = {id = 2109303,lv = 135},[4] = {id = 2109304,lv = 135},[5] = {id = 2109305,lv = 135},[6] = {id = 2109306,lv = 135},[7] = {id = 2109307,lv = 135},[8] = {id = 2109308,lv = 135}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1260220,cardId = 1101999,lv = 135,bklv = 17,star = 5,equip = {[1] = {id = 2009301,lv = 135},[2] = {id = 2009302,lv = 135},[3] = {id = 2009303,lv = 135},[4] = {id = 2009304,lv = 135},[5] = {id = 2009305,lv = 135},[6] = {id = 2009306,lv = 135},[7] = {id = 2009307,lv = 135},[8] = {id = 2009308,lv = 135}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-26-2-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1260221,cardId = 1102999,lv = 135,bklv = 18,star = 5,ghost = 46,equip = {[1] = {id = 2109301,lv = 135},[2] = {id = 2109302,lv = 135},[3] = {id = 2109303,lv = 135},[4] = {id = 2109304,lv = 135},[5] = {id = 2109305,lv = 135},[6] = {id = 2109306,lv = 135},[7] = {id = 2109307,lv = 135},[8] = {id = 2109308,lv = 135}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1260230,cardId = 1101999,lv = 135,bklv = 17,star = 5,equip = {[1] = {id = 2009301,lv = 135},[2] = {id = 2009302,lv = 135},[3] = {id = 2009303,lv = 135},[4] = {id = 2009304,lv = 135},[5] = {id = 2009305,lv = 135},[6] = {id = 2009306,lv = 135},[7] = {id = 2009307,lv = 135},[8] = {id = 2009308,lv = 135}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-26-2-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1260231,cardId = 1102999,lv = 135,bklv = 18,star = 5,ghost = 46,equip = {[1] = {id = 2109301,lv = 135},[2] = {id = 2109302,lv = 135},[3] = {id = 2109303,lv = 135},[4] = {id = 2109304,lv = 135},[5] = {id = 2109305,lv = 135},[6] = {id = 2109306,lv = 135},[7] = {id = 2109307,lv = 135},[8] = {id = 2109308,lv = 135}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12603] = {
		[1] = {
			jlr = {id = 1260310,cardId = 1101999,lv = 136,bklv = 17,star = 5,equip = {[1] = {id = 2009301,lv = 136},[2] = {id = 2009302,lv = 136},[3] = {id = 2009303,lv = 136},[4] = {id = 2009304,lv = 136},[5] = {id = 2009305,lv = 136},[6] = {id = 2009306,lv = 136},[7] = {id = 2009307,lv = 136},[8] = {id = 2009308,lv = 136}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-26-3-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1260311,cardId = 1102999,lv = 135,bklv = 18,star = 5,ghost = 46,equip = {[1] = {id = 2110301,lv = 136},[2] = {id = 2110302,lv = 136},[3] = {id = 2110303,lv = 136},[4] = {id = 2110304,lv = 136},[5] = {id = 2110305,lv = 136},[6] = {id = 2110306,lv = 136},[7] = {id = 2110307,lv = 136},[8] = {id = 2110308,lv = 136}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1260320,cardId = 1101998,lv = 136,bklv = 17,star = 4,equip = {[1] = {id = 2009301,lv = 136},[2] = {id = 2009302,lv = 136},[3] = {id = 2009303,lv = 136},[4] = {id = 2009304,lv = 136},[5] = {id = 2009305,lv = 136},[6] = {id = 2009306,lv = 136},[7] = {id = 2009307,lv = 136},[8] = {id = 2009308,lv = 136}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-26-3-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1260321,cardId = 1102998,lv = 140,bklv = 19,star = 4,ghost = 47,equip = {[1] = {id = 2110301,lv = 136},[2] = {id = 2110302,lv = 136},[3] = {id = 2110303,lv = 136},[4] = {id = 2110304,lv = 136},[5] = {id = 2110305,lv = 136},[6] = {id = 2110306,lv = 136},[7] = {id = 2110307,lv = 136},[8] = {id = 2110308,lv = 136}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1260330,cardId = 1101999,lv = 136,bklv = 17,star = 5,equip = {[1] = {id = 2009301,lv = 136},[2] = {id = 2009302,lv = 136},[3] = {id = 2009303,lv = 136},[4] = {id = 2009304,lv = 136},[5] = {id = 2009305,lv = 136},[6] = {id = 2009306,lv = 136},[7] = {id = 2009307,lv = 136},[8] = {id = 2009308,lv = 136}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-26-3-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1260331,cardId = 1102999,lv = 135,bklv = 18,star = 5,ghost = 46,equip = {[1] = {id = 2110301,lv = 136},[2] = {id = 2110302,lv = 136},[3] = {id = 2110303,lv = 136},[4] = {id = 2110304,lv = 136},[5] = {id = 2110305,lv = 136},[6] = {id = 2110306,lv = 136},[7] = {id = 2110307,lv = 136},[8] = {id = 2110308,lv = 136}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12604] = {
		[1] = {
			jlr = {id = 1260410,cardId = 1101999,lv = 137,bklv = 17,star = 5,equip = {[1] = {id = 2009301,lv = 137},[2] = {id = 2009302,lv = 137},[3] = {id = 2009303,lv = 137},[4] = {id = 2009304,lv = 137},[5] = {id = 2009305,lv = 137},[6] = {id = 2009306,lv = 137},[7] = {id = 2009307,lv = 137},[8] = {id = 2009308,lv = 137}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-26-4-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1260411,cardId = 1102999,lv = 135,bklv = 18,star = 5,ghost = 47,equip = {[1] = {id = 2110301,lv = 137},[2] = {id = 2110302,lv = 137},[3] = {id = 2110303,lv = 137},[4] = {id = 2110304,lv = 137},[5] = {id = 2110305,lv = 137},[6] = {id = 2110306,lv = 137},[7] = {id = 2110307,lv = 137},[8] = {id = 2110308,lv = 137}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1260420,cardId = 1101999,lv = 137,bklv = 17,star = 5,equip = {[1] = {id = 2009301,lv = 137},[2] = {id = 2009302,lv = 137},[3] = {id = 2009303,lv = 137},[4] = {id = 2009304,lv = 137},[5] = {id = 2009305,lv = 137},[6] = {id = 2009306,lv = 137},[7] = {id = 2009307,lv = 137},[8] = {id = 2009308,lv = 137}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-26-4-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1260421,cardId = 1102999,lv = 140,bklv = 19,star = 5,ghost = 47,equip = {[1] = {id = 2110301,lv = 137},[2] = {id = 2110302,lv = 137},[3] = {id = 2110303,lv = 137},[4] = {id = 2110304,lv = 137},[5] = {id = 2110305,lv = 137},[6] = {id = 2110306,lv = 137},[7] = {id = 2110307,lv = 137},[8] = {id = 2110308,lv = 137}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1260430,cardId = 1101999,lv = 137,bklv = 17,star = 5,equip = {[1] = {id = 2009301,lv = 137},[2] = {id = 2009302,lv = 137},[3] = {id = 2009303,lv = 137},[4] = {id = 2009304,lv = 137},[5] = {id = 2009305,lv = 137},[6] = {id = 2009306,lv = 137},[7] = {id = 2009307,lv = 137},[8] = {id = 2009308,lv = 137}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-26-4-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1260431,cardId = 1102999,lv = 135,bklv = 18,star = 5,ghost = 46,equip = {[1] = {id = 2110301,lv = 137},[2] = {id = 2110302,lv = 137},[3] = {id = 2110303,lv = 137},[4] = {id = 2110304,lv = 137},[5] = {id = 2110305,lv = 137},[6] = {id = 2110306,lv = 137},[7] = {id = 2110307,lv = 137},[8] = {id = 2110308,lv = 137}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12605] = {
		[1] = {
			jlr = {id = 1260510,cardId = 1101999,lv = 137,bklv = 17,star = 5,equip = {[1] = {id = 2009301,lv = 137},[2] = {id = 2009302,lv = 137},[3] = {id = 2009303,lv = 137},[4] = {id = 2009304,lv = 137},[5] = {id = 2009305,lv = 137},[6] = {id = 2009306,lv = 137},[7] = {id = 2009307,lv = 137},[8] = {id = 2009308,lv = 137}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-26-5-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1260511,cardId = 1102999,lv = 135,bklv = 18,star = 5,ghost = 47,equip = {[1] = {id = 2110301,lv = 137},[2] = {id = 2110302,lv = 137},[3] = {id = 2110303,lv = 137},[4] = {id = 2110304,lv = 137},[5] = {id = 2110305,lv = 137},[6] = {id = 2110306,lv = 137},[7] = {id = 2110307,lv = 137},[8] = {id = 2110308,lv = 137}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1260520,cardId = 1101999,lv = 137,bklv = 17,star = 5,equip = {[1] = {id = 2009301,lv = 137},[2] = {id = 2009302,lv = 137},[3] = {id = 2009303,lv = 137},[4] = {id = 2009304,lv = 137},[5] = {id = 2009305,lv = 137},[6] = {id = 2009306,lv = 137},[7] = {id = 2009307,lv = 137},[8] = {id = 2009308,lv = 137}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-26-5-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1260521,cardId = 1102999,lv = 140,bklv = 19,star = 5,ghost = 47,equip = {[1] = {id = 2110301,lv = 137},[2] = {id = 2110302,lv = 137},[3] = {id = 2110303,lv = 137},[4] = {id = 2110304,lv = 137},[5] = {id = 2110305,lv = 137},[6] = {id = 2110306,lv = 137},[7] = {id = 2110307,lv = 137},[8] = {id = 2110308,lv = 137}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1260530,cardId = 1101999,lv = 137,bklv = 17,star = 5,equip = {[1] = {id = 2009301,lv = 137},[2] = {id = 2009302,lv = 137},[3] = {id = 2009303,lv = 137},[4] = {id = 2009304,lv = 137},[5] = {id = 2009305,lv = 137},[6] = {id = 2009306,lv = 137},[7] = {id = 2009307,lv = 137},[8] = {id = 2009308,lv = 137}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-26-5-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1260531,cardId = 1102999,lv = 135,bklv = 18,star = 5,ghost = 47,equip = {[1] = {id = 2110301,lv = 137},[2] = {id = 2110302,lv = 137},[3] = {id = 2110303,lv = 137},[4] = {id = 2110304,lv = 137},[5] = {id = 2110305,lv = 137},[6] = {id = 2110306,lv = 137},[7] = {id = 2110307,lv = 137},[8] = {id = 2110308,lv = 137}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12606] = {
		[1] = {
			jlr = {id = 1260610,cardId = 1101998,lv = 138,bklv = 18,star = 4,equip = {[1] = {id = 2009301,lv = 138},[2] = {id = 2009302,lv = 138},[3] = {id = 2009303,lv = 138},[4] = {id = 2009304,lv = 138},[5] = {id = 2009305,lv = 138},[6] = {id = 2009306,lv = 138},[7] = {id = 2009307,lv = 138},[8] = {id = 2009308,lv = 138}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-26-6-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1260611,cardId = 1102998,lv = 140,bklv = 19,star = 4,ghost = 47,equip = {[1] = {id = 2110301,lv = 138},[2] = {id = 2110302,lv = 138},[3] = {id = 2110303,lv = 138},[4] = {id = 2110304,lv = 138},[5] = {id = 2110305,lv = 138},[6] = {id = 2110306,lv = 138},[7] = {id = 2110307,lv = 138},[8] = {id = 2110308,lv = 138}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1260620,cardId = 1101998,lv = 138,bklv = 18,star = 4,equip = {[1] = {id = 2009301,lv = 138},[2] = {id = 2009302,lv = 138},[3] = {id = 2009303,lv = 138},[4] = {id = 2009304,lv = 138},[5] = {id = 2009305,lv = 138},[6] = {id = 2009306,lv = 138},[7] = {id = 2009307,lv = 138},[8] = {id = 2009308,lv = 138}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-26-6-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1260621,cardId = 1102998,lv = 140,bklv = 19,star = 4,ghost = 48,equip = {[1] = {id = 2110301,lv = 138},[2] = {id = 2110302,lv = 138},[3] = {id = 2110303,lv = 138},[4] = {id = 2110304,lv = 138},[5] = {id = 2110305,lv = 138},[6] = {id = 2110306,lv = 138},[7] = {id = 2110307,lv = 138},[8] = {id = 2110308,lv = 138}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1260630,cardId = 1101998,lv = 138,bklv = 18,star = 4,equip = {[1] = {id = 2009301,lv = 138},[2] = {id = 2009302,lv = 138},[3] = {id = 2009303,lv = 138},[4] = {id = 2009304,lv = 138},[5] = {id = 2009305,lv = 138},[6] = {id = 2009306,lv = 138},[7] = {id = 2009307,lv = 138},[8] = {id = 2009308,lv = 138}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-26-6-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1260631,cardId = 1102998,lv = 135,bklv = 18,star = 4,ghost = 47,equip = {[1] = {id = 2110301,lv = 138},[2] = {id = 2110302,lv = 138},[3] = {id = 2110303,lv = 138},[4] = {id = 2110304,lv = 138},[5] = {id = 2110305,lv = 138},[6] = {id = 2110306,lv = 138},[7] = {id = 2110307,lv = 138},[8] = {id = 2110308,lv = 138}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12607] = {
		[1] = {
			jlr = {id = 1260710,cardId = 1101999,lv = 139,bklv = 18,star = 5,equip = {[1] = {id = 2009301,lv = 139},[2] = {id = 2009302,lv = 139},[3] = {id = 2009303,lv = 139},[4] = {id = 2009304,lv = 139},[5] = {id = 2009305,lv = 139},[6] = {id = 2009306,lv = 139},[7] = {id = 2009307,lv = 139},[8] = {id = 2009308,lv = 139}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-26-7-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1260711,cardId = 1102999,lv = 140,bklv = 19,star = 5,ghost = 47,equip = {[1] = {id = 2110301,lv = 139},[2] = {id = 2110302,lv = 139},[3] = {id = 2110303,lv = 139},[4] = {id = 2110304,lv = 139},[5] = {id = 2110305,lv = 139},[6] = {id = 2110306,lv = 139},[7] = {id = 2110307,lv = 139},[8] = {id = 2110308,lv = 139}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1260720,cardId = 1101999,lv = 139,bklv = 18,star = 5,equip = {[1] = {id = 2009301,lv = 139},[2] = {id = 2009302,lv = 139},[3] = {id = 2009303,lv = 139},[4] = {id = 2009304,lv = 139},[5] = {id = 2009305,lv = 139},[6] = {id = 2009306,lv = 139},[7] = {id = 2009307,lv = 139},[8] = {id = 2009308,lv = 139}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-26-7-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1260721,cardId = 1102999,lv = 140,bklv = 19,star = 5,ghost = 48,equip = {[1] = {id = 2110301,lv = 139},[2] = {id = 2110302,lv = 139},[3] = {id = 2110303,lv = 139},[4] = {id = 2110304,lv = 139},[5] = {id = 2110305,lv = 139},[6] = {id = 2110306,lv = 139},[7] = {id = 2110307,lv = 139},[8] = {id = 2110308,lv = 139}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1260730,cardId = 1101999,lv = 139,bklv = 18,star = 5,equip = {[1] = {id = 2009301,lv = 139},[2] = {id = 2009302,lv = 139},[3] = {id = 2009303,lv = 139},[4] = {id = 2009304,lv = 139},[5] = {id = 2009305,lv = 139},[6] = {id = 2009306,lv = 139},[7] = {id = 2009307,lv = 139},[8] = {id = 2009308,lv = 139}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-26-7-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1260731,cardId = 1102999,lv = 135,bklv = 18,star = 5,ghost = 47,equip = {[1] = {id = 2110301,lv = 139},[2] = {id = 2110302,lv = 139},[3] = {id = 2110303,lv = 139},[4] = {id = 2110304,lv = 139},[5] = {id = 2110305,lv = 139},[6] = {id = 2110306,lv = 139},[7] = {id = 2110307,lv = 139},[8] = {id = 2110308,lv = 139}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12608] = {
		[1] = {
			jlr = {id = 1260810,cardId = 1101999,lv = 139,bklv = 18,star = 5,equip = {[1] = {id = 2009301,lv = 139},[2] = {id = 2009302,lv = 139},[3] = {id = 2009303,lv = 139},[4] = {id = 2009304,lv = 139},[5] = {id = 2009305,lv = 139},[6] = {id = 2009306,lv = 139},[7] = {id = 2009307,lv = 139},[8] = {id = 2009308,lv = 139}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-26-8-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1260811,cardId = 1102999,lv = 140,bklv = 19,star = 5,ghost = 47,equip = {[1] = {id = 2110301,lv = 139},[2] = {id = 2110302,lv = 139},[3] = {id = 2110303,lv = 139},[4] = {id = 2110304,lv = 139},[5] = {id = 2110305,lv = 139},[6] = {id = 2110306,lv = 139},[7] = {id = 2110307,lv = 139},[8] = {id = 2110308,lv = 139}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1260820,cardId = 1101999,lv = 139,bklv = 18,star = 5,equip = {[1] = {id = 2009301,lv = 139},[2] = {id = 2009302,lv = 139},[3] = {id = 2009303,lv = 139},[4] = {id = 2009304,lv = 139},[5] = {id = 2009305,lv = 139},[6] = {id = 2009306,lv = 139},[7] = {id = 2009307,lv = 139},[8] = {id = 2009308,lv = 139}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-26-8-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1260821,cardId = 1102999,lv = 140,bklv = 19,star = 5,ghost = 48,equip = {[1] = {id = 2110301,lv = 139},[2] = {id = 2110302,lv = 139},[3] = {id = 2110303,lv = 139},[4] = {id = 2110304,lv = 139},[5] = {id = 2110305,lv = 139},[6] = {id = 2110306,lv = 139},[7] = {id = 2110307,lv = 139},[8] = {id = 2110308,lv = 139}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1260830,cardId = 1101999,lv = 139,bklv = 18,star = 5,equip = {[1] = {id = 2009301,lv = 139},[2] = {id = 2009302,lv = 139},[3] = {id = 2009303,lv = 139},[4] = {id = 2009304,lv = 139},[5] = {id = 2009305,lv = 139},[6] = {id = 2009306,lv = 139},[7] = {id = 2009307,lv = 139},[8] = {id = 2009308,lv = 139}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-26-8-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1260831,cardId = 1102999,lv = 135,bklv = 18,star = 5,ghost = 47,equip = {[1] = {id = 2110301,lv = 139},[2] = {id = 2110302,lv = 139},[3] = {id = 2110303,lv = 139},[4] = {id = 2110304,lv = 139},[5] = {id = 2110305,lv = 139},[6] = {id = 2110306,lv = 139},[7] = {id = 2110307,lv = 139},[8] = {id = 2110308,lv = 139}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12609] = {
		[1] = {
			jlr = {id = 1260910,cardId = 1101998,lv = 140,bklv = 18,star = 4,equip = {[1] = {id = 2009301,lv = 140},[2] = {id = 2009302,lv = 140},[3] = {id = 2009303,lv = 140},[4] = {id = 2009304,lv = 140},[5] = {id = 2009305,lv = 140},[6] = {id = 2009306,lv = 140},[7] = {id = 2009307,lv = 140},[8] = {id = 2009308,lv = 140}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-26-9-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1260911,cardId = 1102998,lv = 140,bklv = 19,star = 4,ghost = 48,equip = {[1] = {id = 2110301,lv = 140},[2] = {id = 2110302,lv = 140},[3] = {id = 2110303,lv = 140},[4] = {id = 2110304,lv = 140},[5] = {id = 2110305,lv = 140},[6] = {id = 2110306,lv = 140},[7] = {id = 2110307,lv = 140},[8] = {id = 2110308,lv = 140}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1260920,cardId = 1101997,lv = 140,bklv = 18,star = 3,equip = {[1] = {id = 2009301,lv = 140},[2] = {id = 2009302,lv = 140},[3] = {id = 2009303,lv = 140},[4] = {id = 2009304,lv = 140},[5] = {id = 2009305,lv = 140},[6] = {id = 2009306,lv = 140},[7] = {id = 2009307,lv = 140},[8] = {id = 2009308,lv = 140}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-26-9-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1260921,cardId = 1102997,lv = 140,bklv = 19,star = 3,ghost = 48,equip = {[1] = {id = 2110301,lv = 140},[2] = {id = 2110302,lv = 140},[3] = {id = 2110303,lv = 140},[4] = {id = 2110304,lv = 140},[5] = {id = 2110305,lv = 140},[6] = {id = 2110306,lv = 140},[7] = {id = 2110307,lv = 140},[8] = {id = 2110308,lv = 140}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1260930,cardId = 1101998,lv = 140,bklv = 18,star = 4,equip = {[1] = {id = 2009301,lv = 140},[2] = {id = 2009302,lv = 140},[3] = {id = 2009303,lv = 140},[4] = {id = 2009304,lv = 140},[5] = {id = 2009305,lv = 140},[6] = {id = 2009306,lv = 140},[7] = {id = 2009307,lv = 140},[8] = {id = 2009308,lv = 140}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-26-9-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1260931,cardId = 1102998,lv = 140,bklv = 19,star = 4,ghost = 48,equip = {[1] = {id = 2110301,lv = 140},[2] = {id = 2110302,lv = 140},[3] = {id = 2110303,lv = 140},[4] = {id = 2110304,lv = 140},[5] = {id = 2110305,lv = 140},[6] = {id = 2110306,lv = 140},[7] = {id = 2110307,lv = 140},[8] = {id = 2110308,lv = 140}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12610] = {
		[1] = {
			jlr = {id = 1261010,cardId = 1101997,lv = 140,bklv = 18,star = 3,equip = {[1] = {id = 2009301,lv = 140},[2] = {id = 2009302,lv = 140},[3] = {id = 2009303,lv = 140},[4] = {id = 2009304,lv = 140},[5] = {id = 2009305,lv = 140},[6] = {id = 2009306,lv = 140},[7] = {id = 2009307,lv = 140},[8] = {id = 2009308,lv = 140}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-26-10-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1261011,cardId = 1102997,lv = 140,bklv = 19,star = 3,ghost = 48,equip = {[1] = {id = 2110301,lv = 140},[2] = {id = 2110302,lv = 140},[3] = {id = 2110303,lv = 140},[4] = {id = 2110304,lv = 140},[5] = {id = 2110305,lv = 140},[6] = {id = 2110306,lv = 140},[7] = {id = 2110307,lv = 140},[8] = {id = 2110308,lv = 140}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1261020,cardId = 1101997,lv = 140,bklv = 18,star = 3,equip = {[1] = {id = 2009301,lv = 140},[2] = {id = 2009302,lv = 140},[3] = {id = 2009303,lv = 140},[4] = {id = 2009304,lv = 140},[5] = {id = 2009305,lv = 140},[6] = {id = 2009306,lv = 140},[7] = {id = 2009307,lv = 140},[8] = {id = 2009308,lv = 140}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-26-10-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1261021,cardId = 1102997,lv = 140,bklv = 19,star = 3,ghost = 48,equip = {[1] = {id = 2110301,lv = 140},[2] = {id = 2110302,lv = 140},[3] = {id = 2110303,lv = 140},[4] = {id = 2110304,lv = 140},[5] = {id = 2110305,lv = 140},[6] = {id = 2110306,lv = 140},[7] = {id = 2110307,lv = 140},[8] = {id = 2110308,lv = 140}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1261030,cardId = 1101997,lv = 140,bklv = 18,star = 3,equip = {[1] = {id = 2009301,lv = 140},[2] = {id = 2009302,lv = 140},[3] = {id = 2009303,lv = 140},[4] = {id = 2009304,lv = 140},[5] = {id = 2009305,lv = 140},[6] = {id = 2009306,lv = 140},[7] = {id = 2009307,lv = 140},[8] = {id = 2009308,lv = 140}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-26-10-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1261031,cardId = 1102997,lv = 140,bklv = 19,star = 3,ghost = 48,equip = {[1] = {id = 2110301,lv = 140},[2] = {id = 2110302,lv = 140},[3] = {id = 2110303,lv = 140},[4] = {id = 2110304,lv = 140},[5] = {id = 2110305,lv = 140},[6] = {id = 2110306,lv = 140},[7] = {id = 2110307,lv = 140},[8] = {id = 2110308,lv = 140}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12701] = {
		[1] = {
			jlr = {id = 1270110,cardId = 1101999,lv = 140,bklv = 18,star = 5,equip = {[1] = {id = 2009301,lv = 140},[2] = {id = 2009302,lv = 140},[3] = {id = 2009303,lv = 140},[4] = {id = 2009304,lv = 140},[5] = {id = 2009305,lv = 140},[6] = {id = 2009306,lv = 140},[7] = {id = 2009307,lv = 140},[8] = {id = 2009308,lv = 140}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-27-1-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1270111,cardId = 1102999,lv = 140,bklv = 19,star = 5,ghost = 48,equip = {[1] = {id = 2110301,lv = 140},[2] = {id = 2110302,lv = 140},[3] = {id = 2110303,lv = 140},[4] = {id = 2110304,lv = 140},[5] = {id = 2110305,lv = 140},[6] = {id = 2110306,lv = 140},[7] = {id = 2110307,lv = 140},[8] = {id = 2110308,lv = 140}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1270120,cardId = 1101999,lv = 140,bklv = 18,star = 5,equip = {[1] = {id = 2009301,lv = 140},[2] = {id = 2009302,lv = 140},[3] = {id = 2009303,lv = 140},[4] = {id = 2009304,lv = 140},[5] = {id = 2009305,lv = 140},[6] = {id = 2009306,lv = 140},[7] = {id = 2009307,lv = 140},[8] = {id = 2009308,lv = 140}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-27-1-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1270121,cardId = 1102999,lv = 140,bklv = 19,star = 5,ghost = 48,equip = {[1] = {id = 2110301,lv = 140},[2] = {id = 2110302,lv = 140},[3] = {id = 2110303,lv = 140},[4] = {id = 2110304,lv = 140},[5] = {id = 2110305,lv = 140},[6] = {id = 2110306,lv = 140},[7] = {id = 2110307,lv = 140},[8] = {id = 2110308,lv = 140}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1270130,cardId = 1101999,lv = 140,bklv = 18,star = 5,equip = {[1] = {id = 2009301,lv = 140},[2] = {id = 2009302,lv = 140},[3] = {id = 2009303,lv = 140},[4] = {id = 2009304,lv = 140},[5] = {id = 2009305,lv = 140},[6] = {id = 2009306,lv = 140},[7] = {id = 2009307,lv = 140},[8] = {id = 2009308,lv = 140}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-27-1-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1270131,cardId = 1102999,lv = 140,bklv = 19,star = 5,ghost = 48,equip = {[1] = {id = 2110301,lv = 140},[2] = {id = 2110302,lv = 140},[3] = {id = 2110303,lv = 140},[4] = {id = 2110304,lv = 140},[5] = {id = 2110305,lv = 140},[6] = {id = 2110306,lv = 140},[7] = {id = 2110307,lv = 140},[8] = {id = 2110308,lv = 140}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12702] = {
		[1] = {
			jlr = {id = 1270210,cardId = 1101999,lv = 140,bklv = 18,star = 5,equip = {[1] = {id = 2009301,lv = 140},[2] = {id = 2009302,lv = 140},[3] = {id = 2009303,lv = 140},[4] = {id = 2009304,lv = 140},[5] = {id = 2009305,lv = 140},[6] = {id = 2009306,lv = 140},[7] = {id = 2009307,lv = 140},[8] = {id = 2009308,lv = 140}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-27-2-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1270211,cardId = 1102999,lv = 140,bklv = 19,star = 5,ghost = 48,equip = {[1] = {id = 2110301,lv = 140},[2] = {id = 2110302,lv = 140},[3] = {id = 2110303,lv = 140},[4] = {id = 2110304,lv = 140},[5] = {id = 2110305,lv = 140},[6] = {id = 2110306,lv = 140},[7] = {id = 2110307,lv = 140},[8] = {id = 2110308,lv = 140}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1270220,cardId = 1101999,lv = 140,bklv = 18,star = 5,equip = {[1] = {id = 2009301,lv = 140},[2] = {id = 2009302,lv = 140},[3] = {id = 2009303,lv = 140},[4] = {id = 2009304,lv = 140},[5] = {id = 2009305,lv = 140},[6] = {id = 2009306,lv = 140},[7] = {id = 2009307,lv = 140},[8] = {id = 2009308,lv = 140}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-27-2-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1270221,cardId = 1102999,lv = 140,bklv = 19,star = 5,ghost = 48,equip = {[1] = {id = 2110301,lv = 140},[2] = {id = 2110302,lv = 140},[3] = {id = 2110303,lv = 140},[4] = {id = 2110304,lv = 140},[5] = {id = 2110305,lv = 140},[6] = {id = 2110306,lv = 140},[7] = {id = 2110307,lv = 140},[8] = {id = 2110308,lv = 140}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1270230,cardId = 1101999,lv = 140,bklv = 18,star = 5,equip = {[1] = {id = 2009301,lv = 140},[2] = {id = 2009302,lv = 140},[3] = {id = 2009303,lv = 140},[4] = {id = 2009304,lv = 140},[5] = {id = 2009305,lv = 140},[6] = {id = 2009306,lv = 140},[7] = {id = 2009307,lv = 140},[8] = {id = 2009308,lv = 140}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-27-2-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1270231,cardId = 1102999,lv = 140,bklv = 19,star = 5,ghost = 48,equip = {[1] = {id = 2110301,lv = 140},[2] = {id = 2110302,lv = 140},[3] = {id = 2110303,lv = 140},[4] = {id = 2110304,lv = 140},[5] = {id = 2110305,lv = 140},[6] = {id = 2110306,lv = 140},[7] = {id = 2110307,lv = 140},[8] = {id = 2110308,lv = 140}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12703] = {
		[1] = {
			jlr = {id = 1270310,cardId = 1101999,lv = 141,bklv = 18,star = 5,equip = {[1] = {id = 2009301,lv = 141},[2] = {id = 2009302,lv = 141},[3] = {id = 2009303,lv = 141},[4] = {id = 2009304,lv = 141},[5] = {id = 2009305,lv = 141},[6] = {id = 2009306,lv = 141},[7] = {id = 2009307,lv = 141},[8] = {id = 2009308,lv = 141}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-27-3-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1270311,cardId = 1102999,lv = 140,bklv = 19,star = 5,ghost = 48,equip = {[1] = {id = 2110301,lv = 141},[2] = {id = 2110302,lv = 141},[3] = {id = 2110303,lv = 141},[4] = {id = 2110304,lv = 141},[5] = {id = 2110305,lv = 141},[6] = {id = 2110306,lv = 141},[7] = {id = 2110307,lv = 141},[8] = {id = 2110308,lv = 141}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1270320,cardId = 1101998,lv = 141,bklv = 18,star = 4,equip = {[1] = {id = 2009301,lv = 141},[2] = {id = 2009302,lv = 141},[3] = {id = 2009303,lv = 141},[4] = {id = 2009304,lv = 141},[5] = {id = 2009305,lv = 141},[6] = {id = 2009306,lv = 141},[7] = {id = 2009307,lv = 141},[8] = {id = 2009308,lv = 141}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-27-3-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1270321,cardId = 1102998,lv = 145,bklv = 20,star = 4,ghost = 49,equip = {[1] = {id = 2110301,lv = 141},[2] = {id = 2110302,lv = 141},[3] = {id = 2110303,lv = 141},[4] = {id = 2110304,lv = 141},[5] = {id = 2110305,lv = 141},[6] = {id = 2110306,lv = 141},[7] = {id = 2110307,lv = 141},[8] = {id = 2110308,lv = 141}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1270330,cardId = 1101999,lv = 141,bklv = 18,star = 5,equip = {[1] = {id = 2009301,lv = 141},[2] = {id = 2009302,lv = 141},[3] = {id = 2009303,lv = 141},[4] = {id = 2009304,lv = 141},[5] = {id = 2009305,lv = 141},[6] = {id = 2009306,lv = 141},[7] = {id = 2009307,lv = 141},[8] = {id = 2009308,lv = 141}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-27-3-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1270331,cardId = 1102999,lv = 140,bklv = 19,star = 5,ghost = 48,equip = {[1] = {id = 2110301,lv = 141},[2] = {id = 2110302,lv = 141},[3] = {id = 2110303,lv = 141},[4] = {id = 2110304,lv = 141},[5] = {id = 2110305,lv = 141},[6] = {id = 2110306,lv = 141},[7] = {id = 2110307,lv = 141},[8] = {id = 2110308,lv = 141}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12704] = {
		[1] = {
			jlr = {id = 1270410,cardId = 1101999,lv = 142,bklv = 18,star = 5,equip = {[1] = {id = 2009301,lv = 142},[2] = {id = 2009302,lv = 142},[3] = {id = 2009303,lv = 142},[4] = {id = 2009304,lv = 142},[5] = {id = 2009305,lv = 142},[6] = {id = 2009306,lv = 142},[7] = {id = 2009307,lv = 142},[8] = {id = 2009308,lv = 142}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-27-4-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1270411,cardId = 1102999,lv = 140,bklv = 19,star = 5,ghost = 49,equip = {[1] = {id = 2110301,lv = 142},[2] = {id = 2110302,lv = 142},[3] = {id = 2110303,lv = 142},[4] = {id = 2110304,lv = 142},[5] = {id = 2110305,lv = 142},[6] = {id = 2110306,lv = 142},[7] = {id = 2110307,lv = 142},[8] = {id = 2110308,lv = 142}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1270420,cardId = 1101999,lv = 142,bklv = 18,star = 5,equip = {[1] = {id = 2009301,lv = 142},[2] = {id = 2009302,lv = 142},[3] = {id = 2009303,lv = 142},[4] = {id = 2009304,lv = 142},[5] = {id = 2009305,lv = 142},[6] = {id = 2009306,lv = 142},[7] = {id = 2009307,lv = 142},[8] = {id = 2009308,lv = 142}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-27-4-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1270421,cardId = 1102999,lv = 145,bklv = 20,star = 5,ghost = 49,equip = {[1] = {id = 2110301,lv = 142},[2] = {id = 2110302,lv = 142},[3] = {id = 2110303,lv = 142},[4] = {id = 2110304,lv = 142},[5] = {id = 2110305,lv = 142},[6] = {id = 2110306,lv = 142},[7] = {id = 2110307,lv = 142},[8] = {id = 2110308,lv = 142}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1270430,cardId = 1101999,lv = 142,bklv = 18,star = 5,equip = {[1] = {id = 2009301,lv = 142},[2] = {id = 2009302,lv = 142},[3] = {id = 2009303,lv = 142},[4] = {id = 2009304,lv = 142},[5] = {id = 2009305,lv = 142},[6] = {id = 2009306,lv = 142},[7] = {id = 2009307,lv = 142},[8] = {id = 2009308,lv = 142}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-27-4-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1270431,cardId = 1102999,lv = 140,bklv = 19,star = 5,ghost = 48,equip = {[1] = {id = 2110301,lv = 142},[2] = {id = 2110302,lv = 142},[3] = {id = 2110303,lv = 142},[4] = {id = 2110304,lv = 142},[5] = {id = 2110305,lv = 142},[6] = {id = 2110306,lv = 142},[7] = {id = 2110307,lv = 142},[8] = {id = 2110308,lv = 142}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12705] = {
		[1] = {
			jlr = {id = 1270510,cardId = 1101999,lv = 142,bklv = 18,star = 5,equip = {[1] = {id = 2009301,lv = 142},[2] = {id = 2009302,lv = 142},[3] = {id = 2009303,lv = 142},[4] = {id = 2009304,lv = 142},[5] = {id = 2009305,lv = 142},[6] = {id = 2009306,lv = 142},[7] = {id = 2009307,lv = 142},[8] = {id = 2009308,lv = 142}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-27-5-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1270511,cardId = 1102999,lv = 140,bklv = 19,star = 5,ghost = 49,equip = {[1] = {id = 2110301,lv = 142},[2] = {id = 2110302,lv = 142},[3] = {id = 2110303,lv = 142},[4] = {id = 2110304,lv = 142},[5] = {id = 2110305,lv = 142},[6] = {id = 2110306,lv = 142},[7] = {id = 2110307,lv = 142},[8] = {id = 2110308,lv = 142}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1270520,cardId = 1101999,lv = 142,bklv = 18,star = 5,equip = {[1] = {id = 2009301,lv = 142},[2] = {id = 2009302,lv = 142},[3] = {id = 2009303,lv = 142},[4] = {id = 2009304,lv = 142},[5] = {id = 2009305,lv = 142},[6] = {id = 2009306,lv = 142},[7] = {id = 2009307,lv = 142},[8] = {id = 2009308,lv = 142}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-27-5-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1270521,cardId = 1102999,lv = 145,bklv = 20,star = 5,ghost = 49,equip = {[1] = {id = 2110301,lv = 142},[2] = {id = 2110302,lv = 142},[3] = {id = 2110303,lv = 142},[4] = {id = 2110304,lv = 142},[5] = {id = 2110305,lv = 142},[6] = {id = 2110306,lv = 142},[7] = {id = 2110307,lv = 142},[8] = {id = 2110308,lv = 142}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1270530,cardId = 1101999,lv = 142,bklv = 18,star = 5,equip = {[1] = {id = 2009301,lv = 142},[2] = {id = 2009302,lv = 142},[3] = {id = 2009303,lv = 142},[4] = {id = 2009304,lv = 142},[5] = {id = 2009305,lv = 142},[6] = {id = 2009306,lv = 142},[7] = {id = 2009307,lv = 142},[8] = {id = 2009308,lv = 142}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-27-5-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1270531,cardId = 1102999,lv = 140,bklv = 19,star = 5,ghost = 49,equip = {[1] = {id = 2110301,lv = 142},[2] = {id = 2110302,lv = 142},[3] = {id = 2110303,lv = 142},[4] = {id = 2110304,lv = 142},[5] = {id = 2110305,lv = 142},[6] = {id = 2110306,lv = 142},[7] = {id = 2110307,lv = 142},[8] = {id = 2110308,lv = 142}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12706] = {
		[1] = {
			jlr = {id = 1270610,cardId = 1101998,lv = 143,bklv = 19,star = 4,equip = {[1] = {id = 2010301,lv = 143},[2] = {id = 2010302,lv = 143},[3] = {id = 2010303,lv = 143},[4] = {id = 2010304,lv = 143},[5] = {id = 2010305,lv = 143},[6] = {id = 2010306,lv = 143},[7] = {id = 2010307,lv = 143},[8] = {id = 2010308,lv = 143}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-27-6-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1270611,cardId = 1102998,lv = 145,bklv = 20,star = 4,ghost = 49,equip = {[1] = {id = 2110301,lv = 143},[2] = {id = 2110302,lv = 143},[3] = {id = 2110303,lv = 143},[4] = {id = 2110304,lv = 143},[5] = {id = 2110305,lv = 143},[6] = {id = 2110306,lv = 143},[7] = {id = 2110307,lv = 143},[8] = {id = 2110308,lv = 143}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1270620,cardId = 1101998,lv = 143,bklv = 19,star = 4,equip = {[1] = {id = 2010301,lv = 143},[2] = {id = 2010302,lv = 143},[3] = {id = 2010303,lv = 143},[4] = {id = 2010304,lv = 143},[5] = {id = 2010305,lv = 143},[6] = {id = 2010306,lv = 143},[7] = {id = 2010307,lv = 143},[8] = {id = 2010308,lv = 143}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-27-6-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1270621,cardId = 1102998,lv = 145,bklv = 20,star = 4,ghost = 50,equip = {[1] = {id = 2110301,lv = 143},[2] = {id = 2110302,lv = 143},[3] = {id = 2110303,lv = 143},[4] = {id = 2110304,lv = 143},[5] = {id = 2110305,lv = 143},[6] = {id = 2110306,lv = 143},[7] = {id = 2110307,lv = 143},[8] = {id = 2110308,lv = 143}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1270630,cardId = 1101998,lv = 143,bklv = 19,star = 4,equip = {[1] = {id = 2010301,lv = 143},[2] = {id = 2010302,lv = 143},[3] = {id = 2010303,lv = 143},[4] = {id = 2010304,lv = 143},[5] = {id = 2010305,lv = 143},[6] = {id = 2010306,lv = 143},[7] = {id = 2010307,lv = 143},[8] = {id = 2010308,lv = 143}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-27-6-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1270631,cardId = 1102998,lv = 140,bklv = 19,star = 4,ghost = 49,equip = {[1] = {id = 2110301,lv = 143},[2] = {id = 2110302,lv = 143},[3] = {id = 2110303,lv = 143},[4] = {id = 2110304,lv = 143},[5] = {id = 2110305,lv = 143},[6] = {id = 2110306,lv = 143},[7] = {id = 2110307,lv = 143},[8] = {id = 2110308,lv = 143}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12707] = {
		[1] = {
			jlr = {id = 1270710,cardId = 1101999,lv = 144,bklv = 19,star = 5,equip = {[1] = {id = 2010301,lv = 144},[2] = {id = 2010302,lv = 144},[3] = {id = 2010303,lv = 144},[4] = {id = 2010304,lv = 144},[5] = {id = 2010305,lv = 144},[6] = {id = 2010306,lv = 144},[7] = {id = 2010307,lv = 144},[8] = {id = 2010308,lv = 144}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-27-7-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1270711,cardId = 1102999,lv = 145,bklv = 20,star = 5,ghost = 49,equip = {[1] = {id = 2110301,lv = 144},[2] = {id = 2110302,lv = 144},[3] = {id = 2110303,lv = 144},[4] = {id = 2110304,lv = 144},[5] = {id = 2110305,lv = 144},[6] = {id = 2110306,lv = 144},[7] = {id = 2110307,lv = 144},[8] = {id = 2110308,lv = 144}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1270720,cardId = 1101999,lv = 144,bklv = 19,star = 5,equip = {[1] = {id = 2010301,lv = 144},[2] = {id = 2010302,lv = 144},[3] = {id = 2010303,lv = 144},[4] = {id = 2010304,lv = 144},[5] = {id = 2010305,lv = 144},[6] = {id = 2010306,lv = 144},[7] = {id = 2010307,lv = 144},[8] = {id = 2010308,lv = 144}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-27-7-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1270721,cardId = 1102999,lv = 145,bklv = 20,star = 5,ghost = 50,equip = {[1] = {id = 2110301,lv = 144},[2] = {id = 2110302,lv = 144},[3] = {id = 2110303,lv = 144},[4] = {id = 2110304,lv = 144},[5] = {id = 2110305,lv = 144},[6] = {id = 2110306,lv = 144},[7] = {id = 2110307,lv = 144},[8] = {id = 2110308,lv = 144}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1270730,cardId = 1101999,lv = 144,bklv = 19,star = 5,equip = {[1] = {id = 2010301,lv = 144},[2] = {id = 2010302,lv = 144},[3] = {id = 2010303,lv = 144},[4] = {id = 2010304,lv = 144},[5] = {id = 2010305,lv = 144},[6] = {id = 2010306,lv = 144},[7] = {id = 2010307,lv = 144},[8] = {id = 2010308,lv = 144}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-27-7-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1270731,cardId = 1102999,lv = 140,bklv = 19,star = 5,ghost = 49,equip = {[1] = {id = 2110301,lv = 144},[2] = {id = 2110302,lv = 144},[3] = {id = 2110303,lv = 144},[4] = {id = 2110304,lv = 144},[5] = {id = 2110305,lv = 144},[6] = {id = 2110306,lv = 144},[7] = {id = 2110307,lv = 144},[8] = {id = 2110308,lv = 144}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12708] = {
		[1] = {
			jlr = {id = 1270810,cardId = 1101999,lv = 144,bklv = 19,star = 5,equip = {[1] = {id = 2010301,lv = 144},[2] = {id = 2010302,lv = 144},[3] = {id = 2010303,lv = 144},[4] = {id = 2010304,lv = 144},[5] = {id = 2010305,lv = 144},[6] = {id = 2010306,lv = 144},[7] = {id = 2010307,lv = 144},[8] = {id = 2010308,lv = 144}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-27-8-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1270811,cardId = 1102999,lv = 145,bklv = 20,star = 5,ghost = 49,equip = {[1] = {id = 2110301,lv = 144},[2] = {id = 2110302,lv = 144},[3] = {id = 2110303,lv = 144},[4] = {id = 2110304,lv = 144},[5] = {id = 2110305,lv = 144},[6] = {id = 2110306,lv = 144},[7] = {id = 2110307,lv = 144},[8] = {id = 2110308,lv = 144}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1270820,cardId = 1101999,lv = 144,bklv = 19,star = 5,equip = {[1] = {id = 2010301,lv = 144},[2] = {id = 2010302,lv = 144},[3] = {id = 2010303,lv = 144},[4] = {id = 2010304,lv = 144},[5] = {id = 2010305,lv = 144},[6] = {id = 2010306,lv = 144},[7] = {id = 2010307,lv = 144},[8] = {id = 2010308,lv = 144}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-27-8-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1270821,cardId = 1102999,lv = 145,bklv = 20,star = 5,ghost = 50,equip = {[1] = {id = 2110301,lv = 144},[2] = {id = 2110302,lv = 144},[3] = {id = 2110303,lv = 144},[4] = {id = 2110304,lv = 144},[5] = {id = 2110305,lv = 144},[6] = {id = 2110306,lv = 144},[7] = {id = 2110307,lv = 144},[8] = {id = 2110308,lv = 144}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1270830,cardId = 1101999,lv = 144,bklv = 19,star = 5,equip = {[1] = {id = 2010301,lv = 144},[2] = {id = 2010302,lv = 144},[3] = {id = 2010303,lv = 144},[4] = {id = 2010304,lv = 144},[5] = {id = 2010305,lv = 144},[6] = {id = 2010306,lv = 144},[7] = {id = 2010307,lv = 144},[8] = {id = 2010308,lv = 144}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-27-8-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1270831,cardId = 1102999,lv = 140,bklv = 19,star = 5,ghost = 49,equip = {[1] = {id = 2110301,lv = 144},[2] = {id = 2110302,lv = 144},[3] = {id = 2110303,lv = 144},[4] = {id = 2110304,lv = 144},[5] = {id = 2110305,lv = 144},[6] = {id = 2110306,lv = 144},[7] = {id = 2110307,lv = 144},[8] = {id = 2110308,lv = 144}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12709] = {
		[1] = {
			jlr = {id = 1270910,cardId = 1101998,lv = 145,bklv = 19,star = 4,equip = {[1] = {id = 2010301,lv = 145},[2] = {id = 2010302,lv = 145},[3] = {id = 2010303,lv = 145},[4] = {id = 2010304,lv = 145},[5] = {id = 2010305,lv = 145},[6] = {id = 2010306,lv = 145},[7] = {id = 2010307,lv = 145},[8] = {id = 2010308,lv = 145}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-27-9-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1270911,cardId = 1102998,lv = 145,bklv = 20,star = 4,ghost = 50,equip = {[1] = {id = 2110301,lv = 145},[2] = {id = 2110302,lv = 145},[3] = {id = 2110303,lv = 145},[4] = {id = 2110304,lv = 145},[5] = {id = 2110305,lv = 145},[6] = {id = 2110306,lv = 145},[7] = {id = 2110307,lv = 145},[8] = {id = 2110308,lv = 145}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1270920,cardId = 1101997,lv = 145,bklv = 19,star = 3,equip = {[1] = {id = 2010301,lv = 145},[2] = {id = 2010302,lv = 145},[3] = {id = 2010303,lv = 145},[4] = {id = 2010304,lv = 145},[5] = {id = 2010305,lv = 145},[6] = {id = 2010306,lv = 145},[7] = {id = 2010307,lv = 145},[8] = {id = 2010308,lv = 145}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-27-9-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1270921,cardId = 1102997,lv = 145,bklv = 20,star = 3,ghost = 50,equip = {[1] = {id = 2110301,lv = 145},[2] = {id = 2110302,lv = 145},[3] = {id = 2110303,lv = 145},[4] = {id = 2110304,lv = 145},[5] = {id = 2110305,lv = 145},[6] = {id = 2110306,lv = 145},[7] = {id = 2110307,lv = 145},[8] = {id = 2110308,lv = 145}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1270930,cardId = 1101998,lv = 145,bklv = 19,star = 4,equip = {[1] = {id = 2010301,lv = 145},[2] = {id = 2010302,lv = 145},[3] = {id = 2010303,lv = 145},[4] = {id = 2010304,lv = 145},[5] = {id = 2010305,lv = 145},[6] = {id = 2010306,lv = 145},[7] = {id = 2010307,lv = 145},[8] = {id = 2010308,lv = 145}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-27-9-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1270931,cardId = 1102998,lv = 145,bklv = 20,star = 4,ghost = 50,equip = {[1] = {id = 2110301,lv = 145},[2] = {id = 2110302,lv = 145},[3] = {id = 2110303,lv = 145},[4] = {id = 2110304,lv = 145},[5] = {id = 2110305,lv = 145},[6] = {id = 2110306,lv = 145},[7] = {id = 2110307,lv = 145},[8] = {id = 2110308,lv = 145}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12710] = {
		[1] = {
			jlr = {id = 1271010,cardId = 1101997,lv = 145,bklv = 19,star = 3,equip = {[1] = {id = 2010301,lv = 145},[2] = {id = 2010302,lv = 145},[3] = {id = 2010303,lv = 145},[4] = {id = 2010304,lv = 145},[5] = {id = 2010305,lv = 145},[6] = {id = 2010306,lv = 145},[7] = {id = 2010307,lv = 145},[8] = {id = 2010308,lv = 145}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-27-10-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1271011,cardId = 1102997,lv = 145,bklv = 20,star = 3,ghost = 50,equip = {[1] = {id = 2110301,lv = 145},[2] = {id = 2110302,lv = 145},[3] = {id = 2110303,lv = 145},[4] = {id = 2110304,lv = 145},[5] = {id = 2110305,lv = 145},[6] = {id = 2110306,lv = 145},[7] = {id = 2110307,lv = 145},[8] = {id = 2110308,lv = 145}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1271020,cardId = 1101997,lv = 145,bklv = 19,star = 3,equip = {[1] = {id = 2010301,lv = 145},[2] = {id = 2010302,lv = 145},[3] = {id = 2010303,lv = 145},[4] = {id = 2010304,lv = 145},[5] = {id = 2010305,lv = 145},[6] = {id = 2010306,lv = 145},[7] = {id = 2010307,lv = 145},[8] = {id = 2010308,lv = 145}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-27-10-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1271021,cardId = 1102997,lv = 145,bklv = 20,star = 3,ghost = 50,equip = {[1] = {id = 2110301,lv = 145},[2] = {id = 2110302,lv = 145},[3] = {id = 2110303,lv = 145},[4] = {id = 2110304,lv = 145},[5] = {id = 2110305,lv = 145},[6] = {id = 2110306,lv = 145},[7] = {id = 2110307,lv = 145},[8] = {id = 2110308,lv = 145}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1271030,cardId = 1101997,lv = 145,bklv = 19,star = 3,equip = {[1] = {id = 2010301,lv = 145},[2] = {id = 2010302,lv = 145},[3] = {id = 2010303,lv = 145},[4] = {id = 2010304,lv = 145},[5] = {id = 2010305,lv = 145},[6] = {id = 2010306,lv = 145},[7] = {id = 2010307,lv = 145},[8] = {id = 2010308,lv = 145}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-27-10-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1271031,cardId = 1102997,lv = 145,bklv = 20,star = 3,ghost = 50,equip = {[1] = {id = 2110301,lv = 145},[2] = {id = 2110302,lv = 145},[3] = {id = 2110303,lv = 145},[4] = {id = 2110304,lv = 145},[5] = {id = 2110305,lv = 145},[6] = {id = 2110306,lv = 145},[7] = {id = 2110307,lv = 145},[8] = {id = 2110308,lv = 145}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12801] = {
		[1] = {
			jlr = {id = 1280110,cardId = 1101999,lv = 145,bklv = 19,star = 5,equip = {[1] = {id = 2010301,lv = 145},[2] = {id = 2010302,lv = 145},[3] = {id = 2010303,lv = 145},[4] = {id = 2010304,lv = 145},[5] = {id = 2010305,lv = 145},[6] = {id = 2010306,lv = 145},[7] = {id = 2010307,lv = 145},[8] = {id = 2010308,lv = 145}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-28-1-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1280111,cardId = 1102999,lv = 145,bklv = 20,star = 5,ghost = 50,equip = {[1] = {id = 2110301,lv = 145},[2] = {id = 2110302,lv = 145},[3] = {id = 2110303,lv = 145},[4] = {id = 2110304,lv = 145},[5] = {id = 2110305,lv = 145},[6] = {id = 2110306,lv = 145},[7] = {id = 2110307,lv = 145},[8] = {id = 2110308,lv = 145}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1280120,cardId = 1101999,lv = 145,bklv = 19,star = 5,equip = {[1] = {id = 2010301,lv = 145},[2] = {id = 2010302,lv = 145},[3] = {id = 2010303,lv = 145},[4] = {id = 2010304,lv = 145},[5] = {id = 2010305,lv = 145},[6] = {id = 2010306,lv = 145},[7] = {id = 2010307,lv = 145},[8] = {id = 2010308,lv = 145}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-28-1-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1280121,cardId = 1102999,lv = 145,bklv = 20,star = 5,ghost = 50,equip = {[1] = {id = 2110301,lv = 145},[2] = {id = 2110302,lv = 145},[3] = {id = 2110303,lv = 145},[4] = {id = 2110304,lv = 145},[5] = {id = 2110305,lv = 145},[6] = {id = 2110306,lv = 145},[7] = {id = 2110307,lv = 145},[8] = {id = 2110308,lv = 145}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1280130,cardId = 1101999,lv = 145,bklv = 19,star = 5,equip = {[1] = {id = 2010301,lv = 145},[2] = {id = 2010302,lv = 145},[3] = {id = 2010303,lv = 145},[4] = {id = 2010304,lv = 145},[5] = {id = 2010305,lv = 145},[6] = {id = 2010306,lv = 145},[7] = {id = 2010307,lv = 145},[8] = {id = 2010308,lv = 145}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-28-1-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1280131,cardId = 1102999,lv = 145,bklv = 20,star = 5,ghost = 50,equip = {[1] = {id = 2110301,lv = 145},[2] = {id = 2110302,lv = 145},[3] = {id = 2110303,lv = 145},[4] = {id = 2110304,lv = 145},[5] = {id = 2110305,lv = 145},[6] = {id = 2110306,lv = 145},[7] = {id = 2110307,lv = 145},[8] = {id = 2110308,lv = 145}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12802] = {
		[1] = {
			jlr = {id = 1280210,cardId = 1101999,lv = 145,bklv = 19,star = 5,equip = {[1] = {id = 2010301,lv = 145},[2] = {id = 2010302,lv = 145},[3] = {id = 2010303,lv = 145},[4] = {id = 2010304,lv = 145},[5] = {id = 2010305,lv = 145},[6] = {id = 2010306,lv = 145},[7] = {id = 2010307,lv = 145},[8] = {id = 2010308,lv = 145}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-28-2-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1280211,cardId = 1102999,lv = 145,bklv = 20,star = 5,ghost = 50,equip = {[1] = {id = 2110301,lv = 145},[2] = {id = 2110302,lv = 145},[3] = {id = 2110303,lv = 145},[4] = {id = 2110304,lv = 145},[5] = {id = 2110305,lv = 145},[6] = {id = 2110306,lv = 145},[7] = {id = 2110307,lv = 145},[8] = {id = 2110308,lv = 145}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1280220,cardId = 1101999,lv = 145,bklv = 19,star = 5,equip = {[1] = {id = 2010301,lv = 145},[2] = {id = 2010302,lv = 145},[3] = {id = 2010303,lv = 145},[4] = {id = 2010304,lv = 145},[5] = {id = 2010305,lv = 145},[6] = {id = 2010306,lv = 145},[7] = {id = 2010307,lv = 145},[8] = {id = 2010308,lv = 145}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-28-2-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1280221,cardId = 1102999,lv = 145,bklv = 20,star = 5,ghost = 50,equip = {[1] = {id = 2110301,lv = 145},[2] = {id = 2110302,lv = 145},[3] = {id = 2110303,lv = 145},[4] = {id = 2110304,lv = 145},[5] = {id = 2110305,lv = 145},[6] = {id = 2110306,lv = 145},[7] = {id = 2110307,lv = 145},[8] = {id = 2110308,lv = 145}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1280230,cardId = 1101999,lv = 145,bklv = 19,star = 5,equip = {[1] = {id = 2010301,lv = 145},[2] = {id = 2010302,lv = 145},[3] = {id = 2010303,lv = 145},[4] = {id = 2010304,lv = 145},[5] = {id = 2010305,lv = 145},[6] = {id = 2010306,lv = 145},[7] = {id = 2010307,lv = 145},[8] = {id = 2010308,lv = 145}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-28-2-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1280231,cardId = 1102999,lv = 145,bklv = 20,star = 5,ghost = 50,equip = {[1] = {id = 2110301,lv = 145},[2] = {id = 2110302,lv = 145},[3] = {id = 2110303,lv = 145},[4] = {id = 2110304,lv = 145},[5] = {id = 2110305,lv = 145},[6] = {id = 2110306,lv = 145},[7] = {id = 2110307,lv = 145},[8] = {id = 2110308,lv = 145}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12803] = {
		[1] = {
			jlr = {id = 1280310,cardId = 1101999,lv = 146,bklv = 19,star = 5,equip = {[1] = {id = 2010301,lv = 146},[2] = {id = 2010302,lv = 146},[3] = {id = 2010303,lv = 146},[4] = {id = 2010304,lv = 146},[5] = {id = 2010305,lv = 146},[6] = {id = 2010306,lv = 146},[7] = {id = 2010307,lv = 146},[8] = {id = 2010308,lv = 146}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-28-3-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1280311,cardId = 1102999,lv = 145,bklv = 20,star = 5,ghost = 50,equip = {[1] = {id = 2111301,lv = 146},[2] = {id = 2111302,lv = 146},[3] = {id = 2111303,lv = 146},[4] = {id = 2111304,lv = 146},[5] = {id = 2111305,lv = 146},[6] = {id = 2111306,lv = 146},[7] = {id = 2111307,lv = 146},[8] = {id = 2111308,lv = 146}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1280320,cardId = 1101998,lv = 146,bklv = 19,star = 5,equip = {[1] = {id = 2010301,lv = 146},[2] = {id = 2010302,lv = 146},[3] = {id = 2010303,lv = 146},[4] = {id = 2010304,lv = 146},[5] = {id = 2010305,lv = 146},[6] = {id = 2010306,lv = 146},[7] = {id = 2010307,lv = 146},[8] = {id = 2010308,lv = 146}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-28-3-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1280321,cardId = 1102998,lv = 150,bklv = 20,star = 5,ghost = 51,equip = {[1] = {id = 2111301,lv = 146},[2] = {id = 2111302,lv = 146},[3] = {id = 2111303,lv = 146},[4] = {id = 2111304,lv = 146},[5] = {id = 2111305,lv = 146},[6] = {id = 2111306,lv = 146},[7] = {id = 2111307,lv = 146},[8] = {id = 2111308,lv = 146}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1280330,cardId = 1101999,lv = 146,bklv = 19,star = 5,equip = {[1] = {id = 2010301,lv = 146},[2] = {id = 2010302,lv = 146},[3] = {id = 2010303,lv = 146},[4] = {id = 2010304,lv = 146},[5] = {id = 2010305,lv = 146},[6] = {id = 2010306,lv = 146},[7] = {id = 2010307,lv = 146},[8] = {id = 2010308,lv = 146}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-28-3-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1280331,cardId = 1102999,lv = 145,bklv = 20,star = 5,ghost = 50,equip = {[1] = {id = 2111301,lv = 146},[2] = {id = 2111302,lv = 146},[3] = {id = 2111303,lv = 146},[4] = {id = 2111304,lv = 146},[5] = {id = 2111305,lv = 146},[6] = {id = 2111306,lv = 146},[7] = {id = 2111307,lv = 146},[8] = {id = 2111308,lv = 146}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12804] = {
		[1] = {
			jlr = {id = 1280410,cardId = 1101999,lv = 147,bklv = 19,star = 5,equip = {[1] = {id = 2010301,lv = 147},[2] = {id = 2010302,lv = 147},[3] = {id = 2010303,lv = 147},[4] = {id = 2010304,lv = 147},[5] = {id = 2010305,lv = 147},[6] = {id = 2010306,lv = 147},[7] = {id = 2010307,lv = 147},[8] = {id = 2010308,lv = 147}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-28-4-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1280411,cardId = 1102999,lv = 145,bklv = 20,star = 5,ghost = 51,equip = {[1] = {id = 2111301,lv = 147},[2] = {id = 2111302,lv = 147},[3] = {id = 2111303,lv = 147},[4] = {id = 2111304,lv = 147},[5] = {id = 2111305,lv = 147},[6] = {id = 2111306,lv = 147},[7] = {id = 2111307,lv = 147},[8] = {id = 2111308,lv = 147}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1280420,cardId = 1101999,lv = 147,bklv = 19,star = 5,equip = {[1] = {id = 2010301,lv = 147},[2] = {id = 2010302,lv = 147},[3] = {id = 2010303,lv = 147},[4] = {id = 2010304,lv = 147},[5] = {id = 2010305,lv = 147},[6] = {id = 2010306,lv = 147},[7] = {id = 2010307,lv = 147},[8] = {id = 2010308,lv = 147}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-28-4-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1280421,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 51,equip = {[1] = {id = 2111301,lv = 147},[2] = {id = 2111302,lv = 147},[3] = {id = 2111303,lv = 147},[4] = {id = 2111304,lv = 147},[5] = {id = 2111305,lv = 147},[6] = {id = 2111306,lv = 147},[7] = {id = 2111307,lv = 147},[8] = {id = 2111308,lv = 147}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1280430,cardId = 1101999,lv = 147,bklv = 19,star = 5,equip = {[1] = {id = 2010301,lv = 147},[2] = {id = 2010302,lv = 147},[3] = {id = 2010303,lv = 147},[4] = {id = 2010304,lv = 147},[5] = {id = 2010305,lv = 147},[6] = {id = 2010306,lv = 147},[7] = {id = 2010307,lv = 147},[8] = {id = 2010308,lv = 147}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-28-4-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1280431,cardId = 1102999,lv = 145,bklv = 20,star = 5,ghost = 50,equip = {[1] = {id = 2111301,lv = 147},[2] = {id = 2111302,lv = 147},[3] = {id = 2111303,lv = 147},[4] = {id = 2111304,lv = 147},[5] = {id = 2111305,lv = 147},[6] = {id = 2111306,lv = 147},[7] = {id = 2111307,lv = 147},[8] = {id = 2111308,lv = 147}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12805] = {
		[1] = {
			jlr = {id = 1280510,cardId = 1101999,lv = 147,bklv = 19,star = 5,equip = {[1] = {id = 2010301,lv = 147},[2] = {id = 2010302,lv = 147},[3] = {id = 2010303,lv = 147},[4] = {id = 2010304,lv = 147},[5] = {id = 2010305,lv = 147},[6] = {id = 2010306,lv = 147},[7] = {id = 2010307,lv = 147},[8] = {id = 2010308,lv = 147}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-28-5-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1280511,cardId = 1102999,lv = 145,bklv = 20,star = 5,ghost = 51,equip = {[1] = {id = 2111301,lv = 147},[2] = {id = 2111302,lv = 147},[3] = {id = 2111303,lv = 147},[4] = {id = 2111304,lv = 147},[5] = {id = 2111305,lv = 147},[6] = {id = 2111306,lv = 147},[7] = {id = 2111307,lv = 147},[8] = {id = 2111308,lv = 147}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1280520,cardId = 1101999,lv = 147,bklv = 19,star = 5,equip = {[1] = {id = 2010301,lv = 147},[2] = {id = 2010302,lv = 147},[3] = {id = 2010303,lv = 147},[4] = {id = 2010304,lv = 147},[5] = {id = 2010305,lv = 147},[6] = {id = 2010306,lv = 147},[7] = {id = 2010307,lv = 147},[8] = {id = 2010308,lv = 147}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-28-5-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1280521,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 51,equip = {[1] = {id = 2111301,lv = 147},[2] = {id = 2111302,lv = 147},[3] = {id = 2111303,lv = 147},[4] = {id = 2111304,lv = 147},[5] = {id = 2111305,lv = 147},[6] = {id = 2111306,lv = 147},[7] = {id = 2111307,lv = 147},[8] = {id = 2111308,lv = 147}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1280530,cardId = 1101999,lv = 147,bklv = 19,star = 5,equip = {[1] = {id = 2010301,lv = 147},[2] = {id = 2010302,lv = 147},[3] = {id = 2010303,lv = 147},[4] = {id = 2010304,lv = 147},[5] = {id = 2010305,lv = 147},[6] = {id = 2010306,lv = 147},[7] = {id = 2010307,lv = 147},[8] = {id = 2010308,lv = 147}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-28-5-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1280531,cardId = 1102999,lv = 145,bklv = 20,star = 5,ghost = 51,equip = {[1] = {id = 2111301,lv = 147},[2] = {id = 2111302,lv = 147},[3] = {id = 2111303,lv = 147},[4] = {id = 2111304,lv = 147},[5] = {id = 2111305,lv = 147},[6] = {id = 2111306,lv = 147},[7] = {id = 2111307,lv = 147},[8] = {id = 2111308,lv = 147}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12806] = {
		[1] = {
			jlr = {id = 1280610,cardId = 1101998,lv = 148,bklv = 19,star = 5,equip = {[1] = {id = 2010301,lv = 148},[2] = {id = 2010302,lv = 148},[3] = {id = 2010303,lv = 148},[4] = {id = 2010304,lv = 148},[5] = {id = 2010305,lv = 148},[6] = {id = 2010306,lv = 148},[7] = {id = 2010307,lv = 148},[8] = {id = 2010308,lv = 148}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-28-6-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1280611,cardId = 1102998,lv = 150,bklv = 20,star = 5,ghost = 51,equip = {[1] = {id = 2111301,lv = 148},[2] = {id = 2111302,lv = 148},[3] = {id = 2111303,lv = 148},[4] = {id = 2111304,lv = 148},[5] = {id = 2111305,lv = 148},[6] = {id = 2111306,lv = 148},[7] = {id = 2111307,lv = 148},[8] = {id = 2111308,lv = 148}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1280620,cardId = 1101998,lv = 148,bklv = 19,star = 5,equip = {[1] = {id = 2010301,lv = 148},[2] = {id = 2010302,lv = 148},[3] = {id = 2010303,lv = 148},[4] = {id = 2010304,lv = 148},[5] = {id = 2010305,lv = 148},[6] = {id = 2010306,lv = 148},[7] = {id = 2010307,lv = 148},[8] = {id = 2010308,lv = 148}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-28-6-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1280621,cardId = 1102998,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111301,lv = 148},[2] = {id = 2111302,lv = 148},[3] = {id = 2111303,lv = 148},[4] = {id = 2111304,lv = 148},[5] = {id = 2111305,lv = 148},[6] = {id = 2111306,lv = 148},[7] = {id = 2111307,lv = 148},[8] = {id = 2111308,lv = 148}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1280630,cardId = 1101998,lv = 148,bklv = 19,star = 4,equip = {[1] = {id = 2010301,lv = 148},[2] = {id = 2010302,lv = 148},[3] = {id = 2010303,lv = 148},[4] = {id = 2010304,lv = 148},[5] = {id = 2010305,lv = 148},[6] = {id = 2010306,lv = 148},[7] = {id = 2010307,lv = 148},[8] = {id = 2010308,lv = 148}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-28-6-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1280631,cardId = 1102998,lv = 145,bklv = 20,star = 4,ghost = 51,equip = {[1] = {id = 2111301,lv = 148},[2] = {id = 2111302,lv = 148},[3] = {id = 2111303,lv = 148},[4] = {id = 2111304,lv = 148},[5] = {id = 2111305,lv = 148},[6] = {id = 2111306,lv = 148},[7] = {id = 2111307,lv = 148},[8] = {id = 2111308,lv = 148}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12807] = {
		[1] = {
			jlr = {id = 1280710,cardId = 1101999,lv = 149,bklv = 19,star = 5,equip = {[1] = {id = 2010301,lv = 149},[2] = {id = 2010302,lv = 149},[3] = {id = 2010303,lv = 149},[4] = {id = 2010304,lv = 149},[5] = {id = 2010305,lv = 149},[6] = {id = 2010306,lv = 149},[7] = {id = 2010307,lv = 149},[8] = {id = 2010308,lv = 149}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-28-7-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1280711,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 51,equip = {[1] = {id = 2111301,lv = 149},[2] = {id = 2111302,lv = 149},[3] = {id = 2111303,lv = 149},[4] = {id = 2111304,lv = 149},[5] = {id = 2111305,lv = 149},[6] = {id = 2111306,lv = 149},[7] = {id = 2111307,lv = 149},[8] = {id = 2111308,lv = 149}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1280720,cardId = 1101999,lv = 149,bklv = 19,star = 5,equip = {[1] = {id = 2010301,lv = 149},[2] = {id = 2010302,lv = 149},[3] = {id = 2010303,lv = 149},[4] = {id = 2010304,lv = 149},[5] = {id = 2010305,lv = 149},[6] = {id = 2010306,lv = 149},[7] = {id = 2010307,lv = 149},[8] = {id = 2010308,lv = 149}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-28-7-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1280721,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111301,lv = 149},[2] = {id = 2111302,lv = 149},[3] = {id = 2111303,lv = 149},[4] = {id = 2111304,lv = 149},[5] = {id = 2111305,lv = 149},[6] = {id = 2111306,lv = 149},[7] = {id = 2111307,lv = 149},[8] = {id = 2111308,lv = 149}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1280730,cardId = 1101999,lv = 149,bklv = 19,star = 5,equip = {[1] = {id = 2010301,lv = 149},[2] = {id = 2010302,lv = 149},[3] = {id = 2010303,lv = 149},[4] = {id = 2010304,lv = 149},[5] = {id = 2010305,lv = 149},[6] = {id = 2010306,lv = 149},[7] = {id = 2010307,lv = 149},[8] = {id = 2010308,lv = 149}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-28-7-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1280731,cardId = 1102999,lv = 145,bklv = 20,star = 5,ghost = 51,equip = {[1] = {id = 2111301,lv = 149},[2] = {id = 2111302,lv = 149},[3] = {id = 2111303,lv = 149},[4] = {id = 2111304,lv = 149},[5] = {id = 2111305,lv = 149},[6] = {id = 2111306,lv = 149},[7] = {id = 2111307,lv = 149},[8] = {id = 2111308,lv = 149}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12808] = {
		[1] = {
			jlr = {id = 1280810,cardId = 1101999,lv = 149,bklv = 19,star = 5,equip = {[1] = {id = 2010301,lv = 149},[2] = {id = 2010302,lv = 149},[3] = {id = 2010303,lv = 149},[4] = {id = 2010304,lv = 149},[5] = {id = 2010305,lv = 149},[6] = {id = 2010306,lv = 149},[7] = {id = 2010307,lv = 149},[8] = {id = 2010308,lv = 149}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-28-8-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1280811,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 51,equip = {[1] = {id = 2111301,lv = 149},[2] = {id = 2111302,lv = 149},[3] = {id = 2111303,lv = 149},[4] = {id = 2111304,lv = 149},[5] = {id = 2111305,lv = 149},[6] = {id = 2111306,lv = 149},[7] = {id = 2111307,lv = 149},[8] = {id = 2111308,lv = 149}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1280820,cardId = 1101999,lv = 149,bklv = 19,star = 5,equip = {[1] = {id = 2010301,lv = 149},[2] = {id = 2010302,lv = 149},[3] = {id = 2010303,lv = 149},[4] = {id = 2010304,lv = 149},[5] = {id = 2010305,lv = 149},[6] = {id = 2010306,lv = 149},[7] = {id = 2010307,lv = 149},[8] = {id = 2010308,lv = 149}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-28-8-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1280821,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111301,lv = 149},[2] = {id = 2111302,lv = 149},[3] = {id = 2111303,lv = 149},[4] = {id = 2111304,lv = 149},[5] = {id = 2111305,lv = 149},[6] = {id = 2111306,lv = 149},[7] = {id = 2111307,lv = 149},[8] = {id = 2111308,lv = 149}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1280830,cardId = 1101999,lv = 149,bklv = 19,star = 5,equip = {[1] = {id = 2010301,lv = 149},[2] = {id = 2010302,lv = 149},[3] = {id = 2010303,lv = 149},[4] = {id = 2010304,lv = 149},[5] = {id = 2010305,lv = 149},[6] = {id = 2010306,lv = 149},[7] = {id = 2010307,lv = 149},[8] = {id = 2010308,lv = 149}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-28-8-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1280831,cardId = 1102999,lv = 145,bklv = 20,star = 5,ghost = 51,equip = {[1] = {id = 2111301,lv = 149},[2] = {id = 2111302,lv = 149},[3] = {id = 2111303,lv = 149},[4] = {id = 2111304,lv = 149},[5] = {id = 2111305,lv = 149},[6] = {id = 2111306,lv = 149},[7] = {id = 2111307,lv = 149},[8] = {id = 2111308,lv = 149}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12809] = {
		[1] = {
			jlr = {id = 1280910,cardId = 1101998,lv = 150,bklv = 19,star = 5,equip = {[1] = {id = 2010301,lv = 150},[2] = {id = 2010302,lv = 150},[3] = {id = 2010303,lv = 150},[4] = {id = 2010304,lv = 150},[5] = {id = 2010305,lv = 150},[6] = {id = 2010306,lv = 150},[7] = {id = 2010307,lv = 150},[8] = {id = 2010308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-28-9-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1280911,cardId = 1102998,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111301,lv = 150},[2] = {id = 2111302,lv = 150},[3] = {id = 2111303,lv = 150},[4] = {id = 2111304,lv = 150},[5] = {id = 2111305,lv = 150},[6] = {id = 2111306,lv = 150},[7] = {id = 2111307,lv = 150},[8] = {id = 2111308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1280920,cardId = 1101997,lv = 150,bklv = 19,star = 4,equip = {[1] = {id = 2010301,lv = 150},[2] = {id = 2010302,lv = 150},[3] = {id = 2010303,lv = 150},[4] = {id = 2010304,lv = 150},[5] = {id = 2010305,lv = 150},[6] = {id = 2010306,lv = 150},[7] = {id = 2010307,lv = 150},[8] = {id = 2010308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-28-9-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1280921,cardId = 1102997,lv = 150,bklv = 20,star = 4,ghost = 52,equip = {[1] = {id = 2111301,lv = 150},[2] = {id = 2111302,lv = 150},[3] = {id = 2111303,lv = 150},[4] = {id = 2111304,lv = 150},[5] = {id = 2111305,lv = 150},[6] = {id = 2111306,lv = 150},[7] = {id = 2111307,lv = 150},[8] = {id = 2111308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1280930,cardId = 1101998,lv = 150,bklv = 19,star = 5,equip = {[1] = {id = 2010301,lv = 150},[2] = {id = 2010302,lv = 150},[3] = {id = 2010303,lv = 150},[4] = {id = 2010304,lv = 150},[5] = {id = 2010305,lv = 150},[6] = {id = 2010306,lv = 150},[7] = {id = 2010307,lv = 150},[8] = {id = 2010308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-28-9-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1280931,cardId = 1102998,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111301,lv = 150},[2] = {id = 2111302,lv = 150},[3] = {id = 2111303,lv = 150},[4] = {id = 2111304,lv = 150},[5] = {id = 2111305,lv = 150},[6] = {id = 2111306,lv = 150},[7] = {id = 2111307,lv = 150},[8] = {id = 2111308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12810] = {
		[1] = {
			jlr = {id = 1281010,cardId = 1101997,lv = 150,bklv = 19,star = 4,equip = {[1] = {id = 2010301,lv = 150},[2] = {id = 2010302,lv = 150},[3] = {id = 2010303,lv = 150},[4] = {id = 2010304,lv = 150},[5] = {id = 2010305,lv = 150},[6] = {id = 2010306,lv = 150},[7] = {id = 2010307,lv = 150},[8] = {id = 2010308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-28-10-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1281011,cardId = 1102997,lv = 150,bklv = 20,star = 4,ghost = 52,equip = {[1] = {id = 2111301,lv = 150},[2] = {id = 2111302,lv = 150},[3] = {id = 2111303,lv = 150},[4] = {id = 2111304,lv = 150},[5] = {id = 2111305,lv = 150},[6] = {id = 2111306,lv = 150},[7] = {id = 2111307,lv = 150},[8] = {id = 2111308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1281020,cardId = 1101997,lv = 150,bklv = 19,star = 4,equip = {[1] = {id = 2010301,lv = 150},[2] = {id = 2010302,lv = 150},[3] = {id = 2010303,lv = 150},[4] = {id = 2010304,lv = 150},[5] = {id = 2010305,lv = 150},[6] = {id = 2010306,lv = 150},[7] = {id = 2010307,lv = 150},[8] = {id = 2010308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-28-10-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1281021,cardId = 1102997,lv = 150,bklv = 20,star = 4,ghost = 52,equip = {[1] = {id = 2111301,lv = 150},[2] = {id = 2111302,lv = 150},[3] = {id = 2111303,lv = 150},[4] = {id = 2111304,lv = 150},[5] = {id = 2111305,lv = 150},[6] = {id = 2111306,lv = 150},[7] = {id = 2111307,lv = 150},[8] = {id = 2111308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1281030,cardId = 1101997,lv = 150,bklv = 19,star = 4,equip = {[1] = {id = 2010301,lv = 150},[2] = {id = 2010302,lv = 150},[3] = {id = 2010303,lv = 150},[4] = {id = 2010304,lv = 150},[5] = {id = 2010305,lv = 150},[6] = {id = 2010306,lv = 150},[7] = {id = 2010307,lv = 150},[8] = {id = 2010308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-28-10-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1281031,cardId = 1102997,lv = 150,bklv = 20,star = 4,ghost = 52,equip = {[1] = {id = 2111301,lv = 150},[2] = {id = 2111302,lv = 150},[3] = {id = 2111303,lv = 150},[4] = {id = 2111304,lv = 150},[5] = {id = 2111305,lv = 150},[6] = {id = 2111306,lv = 150},[7] = {id = 2111307,lv = 150},[8] = {id = 2111308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12901] = {
		[1] = {
			jlr = {id = 1290110,cardId = 1101999,lv = 150,bklv = 19,star = 5,equip = {[1] = {id = 2010301,lv = 150},[2] = {id = 2010302,lv = 150},[3] = {id = 2010303,lv = 150},[4] = {id = 2010304,lv = 150},[5] = {id = 2010305,lv = 150},[6] = {id = 2010306,lv = 150},[7] = {id = 2010307,lv = 150},[8] = {id = 2010308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-29-1-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1290111,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111301,lv = 150},[2] = {id = 2111302,lv = 150},[3] = {id = 2111303,lv = 150},[4] = {id = 2111304,lv = 150},[5] = {id = 2111305,lv = 150},[6] = {id = 2111306,lv = 150},[7] = {id = 2111307,lv = 150},[8] = {id = 2111308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1290120,cardId = 1101999,lv = 150,bklv = 19,star = 5,equip = {[1] = {id = 2010301,lv = 150},[2] = {id = 2010302,lv = 150},[3] = {id = 2010303,lv = 150},[4] = {id = 2010304,lv = 150},[5] = {id = 2010305,lv = 150},[6] = {id = 2010306,lv = 150},[7] = {id = 2010307,lv = 150},[8] = {id = 2010308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-29-1-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1290121,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111301,lv = 150},[2] = {id = 2111302,lv = 150},[3] = {id = 2111303,lv = 150},[4] = {id = 2111304,lv = 150},[5] = {id = 2111305,lv = 150},[6] = {id = 2111306,lv = 150},[7] = {id = 2111307,lv = 150},[8] = {id = 2111308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1290130,cardId = 1101999,lv = 150,bklv = 19,star = 5,equip = {[1] = {id = 2010301,lv = 150},[2] = {id = 2010302,lv = 150},[3] = {id = 2010303,lv = 150},[4] = {id = 2010304,lv = 150},[5] = {id = 2010305,lv = 150},[6] = {id = 2010306,lv = 150},[7] = {id = 2010307,lv = 150},[8] = {id = 2010308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-29-1-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1290131,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111301,lv = 150},[2] = {id = 2111302,lv = 150},[3] = {id = 2111303,lv = 150},[4] = {id = 2111304,lv = 150},[5] = {id = 2111305,lv = 150},[6] = {id = 2111306,lv = 150},[7] = {id = 2111307,lv = 150},[8] = {id = 2111308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12902] = {
		[1] = {
			jlr = {id = 1290210,cardId = 1101999,lv = 150,bklv = 19,star = 5,equip = {[1] = {id = 2010301,lv = 150},[2] = {id = 2010302,lv = 150},[3] = {id = 2010303,lv = 150},[4] = {id = 2010304,lv = 150},[5] = {id = 2010305,lv = 150},[6] = {id = 2010306,lv = 150},[7] = {id = 2010307,lv = 150},[8] = {id = 2010308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-29-2-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1290211,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111301,lv = 150},[2] = {id = 2111302,lv = 150},[3] = {id = 2111303,lv = 150},[4] = {id = 2111304,lv = 150},[5] = {id = 2111305,lv = 150},[6] = {id = 2111306,lv = 150},[7] = {id = 2111307,lv = 150},[8] = {id = 2111308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1290220,cardId = 1101999,lv = 150,bklv = 19,star = 5,equip = {[1] = {id = 2010301,lv = 150},[2] = {id = 2010302,lv = 150},[3] = {id = 2010303,lv = 150},[4] = {id = 2010304,lv = 150},[5] = {id = 2010305,lv = 150},[6] = {id = 2010306,lv = 150},[7] = {id = 2010307,lv = 150},[8] = {id = 2010308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-29-2-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1290221,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111301,lv = 150},[2] = {id = 2111302,lv = 150},[3] = {id = 2111303,lv = 150},[4] = {id = 2111304,lv = 150},[5] = {id = 2111305,lv = 150},[6] = {id = 2111306,lv = 150},[7] = {id = 2111307,lv = 150},[8] = {id = 2111308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1290230,cardId = 1101999,lv = 150,bklv = 19,star = 5,equip = {[1] = {id = 2010301,lv = 150},[2] = {id = 2010302,lv = 150},[3] = {id = 2010303,lv = 150},[4] = {id = 2010304,lv = 150},[5] = {id = 2010305,lv = 150},[6] = {id = 2010306,lv = 150},[7] = {id = 2010307,lv = 150},[8] = {id = 2010308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-29-2-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1290231,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111301,lv = 150},[2] = {id = 2111302,lv = 150},[3] = {id = 2111303,lv = 150},[4] = {id = 2111304,lv = 150},[5] = {id = 2111305,lv = 150},[6] = {id = 2111306,lv = 150},[7] = {id = 2111307,lv = 150},[8] = {id = 2111308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12903] = {
		[1] = {
			jlr = {id = 1290310,cardId = 1101999,lv = 150,bklv = 19,star = 5,equip = {[1] = {id = 2010301,lv = 150},[2] = {id = 2010302,lv = 150},[3] = {id = 2010303,lv = 150},[4] = {id = 2010304,lv = 150},[5] = {id = 2010305,lv = 150},[6] = {id = 2010306,lv = 150},[7] = {id = 2010307,lv = 150},[8] = {id = 2010308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-29-3-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1290311,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111301,lv = 150},[2] = {id = 2111302,lv = 150},[3] = {id = 2111303,lv = 150},[4] = {id = 2111304,lv = 150},[5] = {id = 2111305,lv = 150},[6] = {id = 2111306,lv = 150},[7] = {id = 2111307,lv = 150},[8] = {id = 2111308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1290320,cardId = 1101998,lv = 150,bklv = 19,star = 5,equip = {[1] = {id = 2010301,lv = 150},[2] = {id = 2010302,lv = 150},[3] = {id = 2010303,lv = 150},[4] = {id = 2010304,lv = 150},[5] = {id = 2010305,lv = 150},[6] = {id = 2010306,lv = 150},[7] = {id = 2010307,lv = 150},[8] = {id = 2010308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-29-3-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1290321,cardId = 1102998,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111301,lv = 150},[2] = {id = 2111302,lv = 150},[3] = {id = 2111303,lv = 150},[4] = {id = 2111304,lv = 150},[5] = {id = 2111305,lv = 150},[6] = {id = 2111306,lv = 150},[7] = {id = 2111307,lv = 150},[8] = {id = 2111308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1290330,cardId = 1101999,lv = 150,bklv = 19,star = 5,equip = {[1] = {id = 2010301,lv = 150},[2] = {id = 2010302,lv = 150},[3] = {id = 2010303,lv = 150},[4] = {id = 2010304,lv = 150},[5] = {id = 2010305,lv = 150},[6] = {id = 2010306,lv = 150},[7] = {id = 2010307,lv = 150},[8] = {id = 2010308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-29-3-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1290331,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111301,lv = 150},[2] = {id = 2111302,lv = 150},[3] = {id = 2111303,lv = 150},[4] = {id = 2111304,lv = 150},[5] = {id = 2111305,lv = 150},[6] = {id = 2111306,lv = 150},[7] = {id = 2111307,lv = 150},[8] = {id = 2111308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12904] = {
		[1] = {
			jlr = {id = 1290410,cardId = 1101999,lv = 150,bklv = 19,star = 5,equip = {[1] = {id = 2010301,lv = 150},[2] = {id = 2010302,lv = 150},[3] = {id = 2010303,lv = 150},[4] = {id = 2010304,lv = 150},[5] = {id = 2010305,lv = 150},[6] = {id = 2010306,lv = 150},[7] = {id = 2010307,lv = 150},[8] = {id = 2010308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-29-4-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1290411,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111301,lv = 150},[2] = {id = 2111302,lv = 150},[3] = {id = 2111303,lv = 150},[4] = {id = 2111304,lv = 150},[5] = {id = 2111305,lv = 150},[6] = {id = 2111306,lv = 150},[7] = {id = 2111307,lv = 150},[8] = {id = 2111308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1290420,cardId = 1101999,lv = 150,bklv = 19,star = 5,equip = {[1] = {id = 2010301,lv = 150},[2] = {id = 2010302,lv = 150},[3] = {id = 2010303,lv = 150},[4] = {id = 2010304,lv = 150},[5] = {id = 2010305,lv = 150},[6] = {id = 2010306,lv = 150},[7] = {id = 2010307,lv = 150},[8] = {id = 2010308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-29-4-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1290421,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111301,lv = 150},[2] = {id = 2111302,lv = 150},[3] = {id = 2111303,lv = 150},[4] = {id = 2111304,lv = 150},[5] = {id = 2111305,lv = 150},[6] = {id = 2111306,lv = 150},[7] = {id = 2111307,lv = 150},[8] = {id = 2111308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1290430,cardId = 1101999,lv = 150,bklv = 19,star = 5,equip = {[1] = {id = 2010301,lv = 150},[2] = {id = 2010302,lv = 150},[3] = {id = 2010303,lv = 150},[4] = {id = 2010304,lv = 150},[5] = {id = 2010305,lv = 150},[6] = {id = 2010306,lv = 150},[7] = {id = 2010307,lv = 150},[8] = {id = 2010308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-29-4-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1290431,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111301,lv = 150},[2] = {id = 2111302,lv = 150},[3] = {id = 2111303,lv = 150},[4] = {id = 2111304,lv = 150},[5] = {id = 2111305,lv = 150},[6] = {id = 2111306,lv = 150},[7] = {id = 2111307,lv = 150},[8] = {id = 2111308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12905] = {
		[1] = {
			jlr = {id = 1290510,cardId = 1101999,lv = 150,bklv = 19,star = 5,equip = {[1] = {id = 2010301,lv = 150},[2] = {id = 2010302,lv = 150},[3] = {id = 2010303,lv = 150},[4] = {id = 2010304,lv = 150},[5] = {id = 2010305,lv = 150},[6] = {id = 2010306,lv = 150},[7] = {id = 2010307,lv = 150},[8] = {id = 2010308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-29-5-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1290511,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111301,lv = 150},[2] = {id = 2111302,lv = 150},[3] = {id = 2111303,lv = 150},[4] = {id = 2111304,lv = 150},[5] = {id = 2111305,lv = 150},[6] = {id = 2111306,lv = 150},[7] = {id = 2111307,lv = 150},[8] = {id = 2111308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1290520,cardId = 1101999,lv = 150,bklv = 19,star = 5,equip = {[1] = {id = 2010301,lv = 150},[2] = {id = 2010302,lv = 150},[3] = {id = 2010303,lv = 150},[4] = {id = 2010304,lv = 150},[5] = {id = 2010305,lv = 150},[6] = {id = 2010306,lv = 150},[7] = {id = 2010307,lv = 150},[8] = {id = 2010308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-29-5-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1290521,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111301,lv = 150},[2] = {id = 2111302,lv = 150},[3] = {id = 2111303,lv = 150},[4] = {id = 2111304,lv = 150},[5] = {id = 2111305,lv = 150},[6] = {id = 2111306,lv = 150},[7] = {id = 2111307,lv = 150},[8] = {id = 2111308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1290530,cardId = 1101999,lv = 150,bklv = 19,star = 5,equip = {[1] = {id = 2010301,lv = 150},[2] = {id = 2010302,lv = 150},[3] = {id = 2010303,lv = 150},[4] = {id = 2010304,lv = 150},[5] = {id = 2010305,lv = 150},[6] = {id = 2010306,lv = 150},[7] = {id = 2010307,lv = 150},[8] = {id = 2010308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-29-5-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1290531,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111301,lv = 150},[2] = {id = 2111302,lv = 150},[3] = {id = 2111303,lv = 150},[4] = {id = 2111304,lv = 150},[5] = {id = 2111305,lv = 150},[6] = {id = 2111306,lv = 150},[7] = {id = 2111307,lv = 150},[8] = {id = 2111308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12906] = {
		[1] = {
			jlr = {id = 1290610,cardId = 1101998,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2011301,lv = 150},[2] = {id = 2011302,lv = 150},[3] = {id = 2011303,lv = 150},[4] = {id = 2011304,lv = 150},[5] = {id = 2011305,lv = 150},[6] = {id = 2011306,lv = 150},[7] = {id = 2011307,lv = 150},[8] = {id = 2011308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-29-6-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1290611,cardId = 1102998,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111301,lv = 150},[2] = {id = 2111302,lv = 150},[3] = {id = 2111303,lv = 150},[4] = {id = 2111304,lv = 150},[5] = {id = 2111305,lv = 150},[6] = {id = 2111306,lv = 150},[7] = {id = 2111307,lv = 150},[8] = {id = 2111308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1290620,cardId = 1101998,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2011301,lv = 150},[2] = {id = 2011302,lv = 150},[3] = {id = 2011303,lv = 150},[4] = {id = 2011304,lv = 150},[5] = {id = 2011305,lv = 150},[6] = {id = 2011306,lv = 150},[7] = {id = 2011307,lv = 150},[8] = {id = 2011308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-29-6-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1290621,cardId = 1102998,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111301,lv = 150},[2] = {id = 2111302,lv = 150},[3] = {id = 2111303,lv = 150},[4] = {id = 2111304,lv = 150},[5] = {id = 2111305,lv = 150},[6] = {id = 2111306,lv = 150},[7] = {id = 2111307,lv = 150},[8] = {id = 2111308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1290630,cardId = 1101998,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2011301,lv = 150},[2] = {id = 2011302,lv = 150},[3] = {id = 2011303,lv = 150},[4] = {id = 2011304,lv = 150},[5] = {id = 2011305,lv = 150},[6] = {id = 2011306,lv = 150},[7] = {id = 2011307,lv = 150},[8] = {id = 2011308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-29-6-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1290631,cardId = 1102998,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111301,lv = 150},[2] = {id = 2111302,lv = 150},[3] = {id = 2111303,lv = 150},[4] = {id = 2111304,lv = 150},[5] = {id = 2111305,lv = 150},[6] = {id = 2111306,lv = 150},[7] = {id = 2111307,lv = 150},[8] = {id = 2111308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12907] = {
		[1] = {
			jlr = {id = 1290710,cardId = 1101999,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2011301,lv = 150},[2] = {id = 2011302,lv = 150},[3] = {id = 2011303,lv = 150},[4] = {id = 2011304,lv = 150},[5] = {id = 2011305,lv = 150},[6] = {id = 2011306,lv = 150},[7] = {id = 2011307,lv = 150},[8] = {id = 2011308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-29-7-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1290711,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111301,lv = 150},[2] = {id = 2111302,lv = 150},[3] = {id = 2111303,lv = 150},[4] = {id = 2111304,lv = 150},[5] = {id = 2111305,lv = 150},[6] = {id = 2111306,lv = 150},[7] = {id = 2111307,lv = 150},[8] = {id = 2111308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1290720,cardId = 1101999,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2011301,lv = 150},[2] = {id = 2011302,lv = 150},[3] = {id = 2011303,lv = 150},[4] = {id = 2011304,lv = 150},[5] = {id = 2011305,lv = 150},[6] = {id = 2011306,lv = 150},[7] = {id = 2011307,lv = 150},[8] = {id = 2011308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-29-7-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1290721,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111301,lv = 150},[2] = {id = 2111302,lv = 150},[3] = {id = 2111303,lv = 150},[4] = {id = 2111304,lv = 150},[5] = {id = 2111305,lv = 150},[6] = {id = 2111306,lv = 150},[7] = {id = 2111307,lv = 150},[8] = {id = 2111308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1290730,cardId = 1101999,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2011301,lv = 150},[2] = {id = 2011302,lv = 150},[3] = {id = 2011303,lv = 150},[4] = {id = 2011304,lv = 150},[5] = {id = 2011305,lv = 150},[6] = {id = 2011306,lv = 150},[7] = {id = 2011307,lv = 150},[8] = {id = 2011308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-29-7-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1290731,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111301,lv = 150},[2] = {id = 2111302,lv = 150},[3] = {id = 2111303,lv = 150},[4] = {id = 2111304,lv = 150},[5] = {id = 2111305,lv = 150},[6] = {id = 2111306,lv = 150},[7] = {id = 2111307,lv = 150},[8] = {id = 2111308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12908] = {
		[1] = {
			jlr = {id = 1290810,cardId = 1101999,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2011301,lv = 150},[2] = {id = 2011302,lv = 150},[3] = {id = 2011303,lv = 150},[4] = {id = 2011304,lv = 150},[5] = {id = 2011305,lv = 150},[6] = {id = 2011306,lv = 150},[7] = {id = 2011307,lv = 150},[8] = {id = 2011308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-29-8-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1290811,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111301,lv = 150},[2] = {id = 2111302,lv = 150},[3] = {id = 2111303,lv = 150},[4] = {id = 2111304,lv = 150},[5] = {id = 2111305,lv = 150},[6] = {id = 2111306,lv = 150},[7] = {id = 2111307,lv = 150},[8] = {id = 2111308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1290820,cardId = 1101999,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2011301,lv = 150},[2] = {id = 2011302,lv = 150},[3] = {id = 2011303,lv = 150},[4] = {id = 2011304,lv = 150},[5] = {id = 2011305,lv = 150},[6] = {id = 2011306,lv = 150},[7] = {id = 2011307,lv = 150},[8] = {id = 2011308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-29-8-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1290821,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111301,lv = 150},[2] = {id = 2111302,lv = 150},[3] = {id = 2111303,lv = 150},[4] = {id = 2111304,lv = 150},[5] = {id = 2111305,lv = 150},[6] = {id = 2111306,lv = 150},[7] = {id = 2111307,lv = 150},[8] = {id = 2111308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1290830,cardId = 1101999,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2011301,lv = 150},[2] = {id = 2011302,lv = 150},[3] = {id = 2011303,lv = 150},[4] = {id = 2011304,lv = 150},[5] = {id = 2011305,lv = 150},[6] = {id = 2011306,lv = 150},[7] = {id = 2011307,lv = 150},[8] = {id = 2011308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-29-8-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1290831,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111301,lv = 150},[2] = {id = 2111302,lv = 150},[3] = {id = 2111303,lv = 150},[4] = {id = 2111304,lv = 150},[5] = {id = 2111305,lv = 150},[6] = {id = 2111306,lv = 150},[7] = {id = 2111307,lv = 150},[8] = {id = 2111308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12909] = {
		[1] = {
			jlr = {id = 1290910,cardId = 1101998,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2011301,lv = 150},[2] = {id = 2011302,lv = 150},[3] = {id = 2011303,lv = 150},[4] = {id = 2011304,lv = 150},[5] = {id = 2011305,lv = 150},[6] = {id = 2011306,lv = 150},[7] = {id = 2011307,lv = 150},[8] = {id = 2011308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-29-9-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1290911,cardId = 1102998,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111301,lv = 150},[2] = {id = 2111302,lv = 150},[3] = {id = 2111303,lv = 150},[4] = {id = 2111304,lv = 150},[5] = {id = 2111305,lv = 150},[6] = {id = 2111306,lv = 150},[7] = {id = 2111307,lv = 150},[8] = {id = 2111308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1290920,cardId = 1101997,lv = 150,bklv = 20,star = 4,equip = {[1] = {id = 2011301,lv = 150},[2] = {id = 2011302,lv = 150},[3] = {id = 2011303,lv = 150},[4] = {id = 2011304,lv = 150},[5] = {id = 2011305,lv = 150},[6] = {id = 2011306,lv = 150},[7] = {id = 2011307,lv = 150},[8] = {id = 2011308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-29-9-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1290921,cardId = 1102997,lv = 150,bklv = 20,star = 4,ghost = 52,equip = {[1] = {id = 2111301,lv = 150},[2] = {id = 2111302,lv = 150},[3] = {id = 2111303,lv = 150},[4] = {id = 2111304,lv = 150},[5] = {id = 2111305,lv = 150},[6] = {id = 2111306,lv = 150},[7] = {id = 2111307,lv = 150},[8] = {id = 2111308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1290930,cardId = 1101998,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2011301,lv = 150},[2] = {id = 2011302,lv = 150},[3] = {id = 2011303,lv = 150},[4] = {id = 2011304,lv = 150},[5] = {id = 2011305,lv = 150},[6] = {id = 2011306,lv = 150},[7] = {id = 2011307,lv = 150},[8] = {id = 2011308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-29-9-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1290931,cardId = 1102998,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111301,lv = 150},[2] = {id = 2111302,lv = 150},[3] = {id = 2111303,lv = 150},[4] = {id = 2111304,lv = 150},[5] = {id = 2111305,lv = 150},[6] = {id = 2111306,lv = 150},[7] = {id = 2111307,lv = 150},[8] = {id = 2111308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[12910] = {
		[1] = {
			jlr = {id = 1291010,cardId = 1101997,lv = 150,bklv = 20,star = 4,equip = {[1] = {id = 2011301,lv = 150},[2] = {id = 2011302,lv = 150},[3] = {id = 2011303,lv = 150},[4] = {id = 2011304,lv = 150},[5] = {id = 2011305,lv = 150},[6] = {id = 2011306,lv = 150},[7] = {id = 2011307,lv = 150},[8] = {id = 2011308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-29-10-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1291011,cardId = 1102997,lv = 150,bklv = 20,star = 4,ghost = 52,equip = {[1] = {id = 2111301,lv = 150},[2] = {id = 2111302,lv = 150},[3] = {id = 2111303,lv = 150},[4] = {id = 2111304,lv = 150},[5] = {id = 2111305,lv = 150},[6] = {id = 2111306,lv = 150},[7] = {id = 2111307,lv = 150},[8] = {id = 2111308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1291020,cardId = 1101997,lv = 150,bklv = 20,star = 4,equip = {[1] = {id = 2011301,lv = 150},[2] = {id = 2011302,lv = 150},[3] = {id = 2011303,lv = 150},[4] = {id = 2011304,lv = 150},[5] = {id = 2011305,lv = 150},[6] = {id = 2011306,lv = 150},[7] = {id = 2011307,lv = 150},[8] = {id = 2011308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-29-10-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1291021,cardId = 1102997,lv = 150,bklv = 20,star = 4,ghost = 52,equip = {[1] = {id = 2111301,lv = 150},[2] = {id = 2111302,lv = 150},[3] = {id = 2111303,lv = 150},[4] = {id = 2111304,lv = 150},[5] = {id = 2111305,lv = 150},[6] = {id = 2111306,lv = 150},[7] = {id = 2111307,lv = 150},[8] = {id = 2111308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1291030,cardId = 1101997,lv = 150,bklv = 20,star = 4,equip = {[1] = {id = 2011301,lv = 150},[2] = {id = 2011302,lv = 150},[3] = {id = 2011303,lv = 150},[4] = {id = 2011304,lv = 150},[5] = {id = 2011305,lv = 150},[6] = {id = 2011306,lv = 150},[7] = {id = 2011307,lv = 150},[8] = {id = 2011308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-29-10-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1291031,cardId = 1102997,lv = 150,bklv = 20,star = 4,ghost = 52,equip = {[1] = {id = 2111301,lv = 150},[2] = {id = 2111302,lv = 150},[3] = {id = 2111303,lv = 150},[4] = {id = 2111304,lv = 150},[5] = {id = 2111305,lv = 150},[6] = {id = 2111306,lv = 150},[7] = {id = 2111307,lv = 150},[8] = {id = 2111308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[13001] = {
		[1] = {
			jlr = {id = 1300110,cardId = 1101999,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2011301,lv = 150},[2] = {id = 2011302,lv = 150},[3] = {id = 2011303,lv = 150},[4] = {id = 2011304,lv = 150},[5] = {id = 2011305,lv = 150},[6] = {id = 2011306,lv = 150},[7] = {id = 2011307,lv = 150},[8] = {id = 2011308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-30-1-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1300111,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111301,lv = 150},[2] = {id = 2111302,lv = 150},[3] = {id = 2111303,lv = 150},[4] = {id = 2111304,lv = 150},[5] = {id = 2111305,lv = 150},[6] = {id = 2111306,lv = 150},[7] = {id = 2111307,lv = 150},[8] = {id = 2111308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1300120,cardId = 1101999,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2011301,lv = 150},[2] = {id = 2011302,lv = 150},[3] = {id = 2011303,lv = 150},[4] = {id = 2011304,lv = 150},[5] = {id = 2011305,lv = 150},[6] = {id = 2011306,lv = 150},[7] = {id = 2011307,lv = 150},[8] = {id = 2011308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-30-1-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1300121,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111301,lv = 150},[2] = {id = 2111302,lv = 150},[3] = {id = 2111303,lv = 150},[4] = {id = 2111304,lv = 150},[5] = {id = 2111305,lv = 150},[6] = {id = 2111306,lv = 150},[7] = {id = 2111307,lv = 150},[8] = {id = 2111308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1300130,cardId = 1101999,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2011301,lv = 150},[2] = {id = 2011302,lv = 150},[3] = {id = 2011303,lv = 150},[4] = {id = 2011304,lv = 150},[5] = {id = 2011305,lv = 150},[6] = {id = 2011306,lv = 150},[7] = {id = 2011307,lv = 150},[8] = {id = 2011308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-30-1-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1300131,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111301,lv = 150},[2] = {id = 2111302,lv = 150},[3] = {id = 2111303,lv = 150},[4] = {id = 2111304,lv = 150},[5] = {id = 2111305,lv = 150},[6] = {id = 2111306,lv = 150},[7] = {id = 2111307,lv = 150},[8] = {id = 2111308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[13002] = {
		[1] = {
			jlr = {id = 1300210,cardId = 1101999,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2011301,lv = 150},[2] = {id = 2011302,lv = 150},[3] = {id = 2011303,lv = 150},[4] = {id = 2011304,lv = 150},[5] = {id = 2011305,lv = 150},[6] = {id = 2011306,lv = 150},[7] = {id = 2011307,lv = 150},[8] = {id = 2011308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-30-2-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1300211,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111301,lv = 150},[2] = {id = 2111302,lv = 150},[3] = {id = 2111303,lv = 150},[4] = {id = 2111304,lv = 150},[5] = {id = 2111305,lv = 150},[6] = {id = 2111306,lv = 150},[7] = {id = 2111307,lv = 150},[8] = {id = 2111308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1300220,cardId = 1101999,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2011301,lv = 150},[2] = {id = 2011302,lv = 150},[3] = {id = 2011303,lv = 150},[4] = {id = 2011304,lv = 150},[5] = {id = 2011305,lv = 150},[6] = {id = 2011306,lv = 150},[7] = {id = 2011307,lv = 150},[8] = {id = 2011308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-30-2-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1300221,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111301,lv = 150},[2] = {id = 2111302,lv = 150},[3] = {id = 2111303,lv = 150},[4] = {id = 2111304,lv = 150},[5] = {id = 2111305,lv = 150},[6] = {id = 2111306,lv = 150},[7] = {id = 2111307,lv = 150},[8] = {id = 2111308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1300230,cardId = 1101999,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2011301,lv = 150},[2] = {id = 2011302,lv = 150},[3] = {id = 2011303,lv = 150},[4] = {id = 2011304,lv = 150},[5] = {id = 2011305,lv = 150},[6] = {id = 2011306,lv = 150},[7] = {id = 2011307,lv = 150},[8] = {id = 2011308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-30-2-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1300231,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111301,lv = 150},[2] = {id = 2111302,lv = 150},[3] = {id = 2111303,lv = 150},[4] = {id = 2111304,lv = 150},[5] = {id = 2111305,lv = 150},[6] = {id = 2111306,lv = 150},[7] = {id = 2111307,lv = 150},[8] = {id = 2111308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[13003] = {
		[1] = {
			jlr = {id = 1300310,cardId = 1101999,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2011301,lv = 150},[2] = {id = 2011302,lv = 150},[3] = {id = 2011303,lv = 150},[4] = {id = 2011304,lv = 150},[5] = {id = 2011305,lv = 150},[6] = {id = 2011306,lv = 150},[7] = {id = 2011307,lv = 150},[8] = {id = 2011308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-30-3-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1300311,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111401,lv = 150},[2] = {id = 2111402,lv = 150},[3] = {id = 2111403,lv = 150},[4] = {id = 2111404,lv = 150},[5] = {id = 2111405,lv = 150},[6] = {id = 2111406,lv = 150},[7] = {id = 2111407,lv = 150},[8] = {id = 2111408,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1300320,cardId = 1101998,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2011301,lv = 150},[2] = {id = 2011302,lv = 150},[3] = {id = 2011303,lv = 150},[4] = {id = 2011304,lv = 150},[5] = {id = 2011305,lv = 150},[6] = {id = 2011306,lv = 150},[7] = {id = 2011307,lv = 150},[8] = {id = 2011308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-30-3-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1300321,cardId = 1102998,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111401,lv = 150},[2] = {id = 2111402,lv = 150},[3] = {id = 2111403,lv = 150},[4] = {id = 2111404,lv = 150},[5] = {id = 2111405,lv = 150},[6] = {id = 2111406,lv = 150},[7] = {id = 2111407,lv = 150},[8] = {id = 2111408,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1300330,cardId = 1101999,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2011301,lv = 150},[2] = {id = 2011302,lv = 150},[3] = {id = 2011303,lv = 150},[4] = {id = 2011304,lv = 150},[5] = {id = 2011305,lv = 150},[6] = {id = 2011306,lv = 150},[7] = {id = 2011307,lv = 150},[8] = {id = 2011308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-30-3-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1300331,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111401,lv = 150},[2] = {id = 2111402,lv = 150},[3] = {id = 2111403,lv = 150},[4] = {id = 2111404,lv = 150},[5] = {id = 2111405,lv = 150},[6] = {id = 2111406,lv = 150},[7] = {id = 2111407,lv = 150},[8] = {id = 2111408,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[13004] = {
		[1] = {
			jlr = {id = 1300410,cardId = 1101999,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2011301,lv = 150},[2] = {id = 2011302,lv = 150},[3] = {id = 2011303,lv = 150},[4] = {id = 2011304,lv = 150},[5] = {id = 2011305,lv = 150},[6] = {id = 2011306,lv = 150},[7] = {id = 2011307,lv = 150},[8] = {id = 2011308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-30-4-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1300411,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111401,lv = 150},[2] = {id = 2111402,lv = 150},[3] = {id = 2111403,lv = 150},[4] = {id = 2111404,lv = 150},[5] = {id = 2111405,lv = 150},[6] = {id = 2111406,lv = 150},[7] = {id = 2111407,lv = 150},[8] = {id = 2111408,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1300420,cardId = 1101999,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2011301,lv = 150},[2] = {id = 2011302,lv = 150},[3] = {id = 2011303,lv = 150},[4] = {id = 2011304,lv = 150},[5] = {id = 2011305,lv = 150},[6] = {id = 2011306,lv = 150},[7] = {id = 2011307,lv = 150},[8] = {id = 2011308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-30-4-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1300421,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111401,lv = 150},[2] = {id = 2111402,lv = 150},[3] = {id = 2111403,lv = 150},[4] = {id = 2111404,lv = 150},[5] = {id = 2111405,lv = 150},[6] = {id = 2111406,lv = 150},[7] = {id = 2111407,lv = 150},[8] = {id = 2111408,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1300430,cardId = 1101999,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2011301,lv = 150},[2] = {id = 2011302,lv = 150},[3] = {id = 2011303,lv = 150},[4] = {id = 2011304,lv = 150},[5] = {id = 2011305,lv = 150},[6] = {id = 2011306,lv = 150},[7] = {id = 2011307,lv = 150},[8] = {id = 2011308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-30-4-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1300431,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111401,lv = 150},[2] = {id = 2111402,lv = 150},[3] = {id = 2111403,lv = 150},[4] = {id = 2111404,lv = 150},[5] = {id = 2111405,lv = 150},[6] = {id = 2111406,lv = 150},[7] = {id = 2111407,lv = 150},[8] = {id = 2111408,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[13005] = {
		[1] = {
			jlr = {id = 1300510,cardId = 1101999,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2011301,lv = 150},[2] = {id = 2011302,lv = 150},[3] = {id = 2011303,lv = 150},[4] = {id = 2011304,lv = 150},[5] = {id = 2011305,lv = 150},[6] = {id = 2011306,lv = 150},[7] = {id = 2011307,lv = 150},[8] = {id = 2011308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-30-5-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1300511,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111401,lv = 150},[2] = {id = 2111402,lv = 150},[3] = {id = 2111403,lv = 150},[4] = {id = 2111404,lv = 150},[5] = {id = 2111405,lv = 150},[6] = {id = 2111406,lv = 150},[7] = {id = 2111407,lv = 150},[8] = {id = 2111408,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1300520,cardId = 1101999,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2011301,lv = 150},[2] = {id = 2011302,lv = 150},[3] = {id = 2011303,lv = 150},[4] = {id = 2011304,lv = 150},[5] = {id = 2011305,lv = 150},[6] = {id = 2011306,lv = 150},[7] = {id = 2011307,lv = 150},[8] = {id = 2011308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-30-5-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1300521,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111401,lv = 150},[2] = {id = 2111402,lv = 150},[3] = {id = 2111403,lv = 150},[4] = {id = 2111404,lv = 150},[5] = {id = 2111405,lv = 150},[6] = {id = 2111406,lv = 150},[7] = {id = 2111407,lv = 150},[8] = {id = 2111408,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1300530,cardId = 1101999,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2011301,lv = 150},[2] = {id = 2011302,lv = 150},[3] = {id = 2011303,lv = 150},[4] = {id = 2011304,lv = 150},[5] = {id = 2011305,lv = 150},[6] = {id = 2011306,lv = 150},[7] = {id = 2011307,lv = 150},[8] = {id = 2011308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-30-5-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1300531,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111401,lv = 150},[2] = {id = 2111402,lv = 150},[3] = {id = 2111403,lv = 150},[4] = {id = 2111404,lv = 150},[5] = {id = 2111405,lv = 150},[6] = {id = 2111406,lv = 150},[7] = {id = 2111407,lv = 150},[8] = {id = 2111408,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[13006] = {
		[1] = {
			jlr = {id = 1300610,cardId = 1101998,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2011401,lv = 150},[2] = {id = 2011402,lv = 150},[3] = {id = 2011403,lv = 150},[4] = {id = 2011404,lv = 150},[5] = {id = 2011405,lv = 150},[6] = {id = 2011406,lv = 150},[7] = {id = 2011407,lv = 150},[8] = {id = 2011408,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-30-6-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1300611,cardId = 1102998,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111401,lv = 150},[2] = {id = 2111402,lv = 150},[3] = {id = 2111403,lv = 150},[4] = {id = 2111404,lv = 150},[5] = {id = 2111405,lv = 150},[6] = {id = 2111406,lv = 150},[7] = {id = 2111407,lv = 150},[8] = {id = 2111408,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1300620,cardId = 1101998,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2011401,lv = 150},[2] = {id = 2011402,lv = 150},[3] = {id = 2011403,lv = 150},[4] = {id = 2011404,lv = 150},[5] = {id = 2011405,lv = 150},[6] = {id = 2011406,lv = 150},[7] = {id = 2011407,lv = 150},[8] = {id = 2011408,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-30-6-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1300621,cardId = 1102998,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111401,lv = 150},[2] = {id = 2111402,lv = 150},[3] = {id = 2111403,lv = 150},[4] = {id = 2111404,lv = 150},[5] = {id = 2111405,lv = 150},[6] = {id = 2111406,lv = 150},[7] = {id = 2111407,lv = 150},[8] = {id = 2111408,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1300630,cardId = 1101998,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2011401,lv = 150},[2] = {id = 2011402,lv = 150},[3] = {id = 2011403,lv = 150},[4] = {id = 2011404,lv = 150},[5] = {id = 2011405,lv = 150},[6] = {id = 2011406,lv = 150},[7] = {id = 2011407,lv = 150},[8] = {id = 2011408,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-30-6-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1300631,cardId = 1102998,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111401,lv = 150},[2] = {id = 2111402,lv = 150},[3] = {id = 2111403,lv = 150},[4] = {id = 2111404,lv = 150},[5] = {id = 2111405,lv = 150},[6] = {id = 2111406,lv = 150},[7] = {id = 2111407,lv = 150},[8] = {id = 2111408,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[13007] = {
		[1] = {
			jlr = {id = 1300710,cardId = 1101999,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2011401,lv = 150},[2] = {id = 2011402,lv = 150},[3] = {id = 2011403,lv = 150},[4] = {id = 2011404,lv = 150},[5] = {id = 2011405,lv = 150},[6] = {id = 2011406,lv = 150},[7] = {id = 2011407,lv = 150},[8] = {id = 2011408,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-30-7-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1300711,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111401,lv = 150},[2] = {id = 2111402,lv = 150},[3] = {id = 2111403,lv = 150},[4] = {id = 2111404,lv = 150},[5] = {id = 2111405,lv = 150},[6] = {id = 2111406,lv = 150},[7] = {id = 2111407,lv = 150},[8] = {id = 2111408,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1300720,cardId = 1101999,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2011401,lv = 150},[2] = {id = 2011402,lv = 150},[3] = {id = 2011403,lv = 150},[4] = {id = 2011404,lv = 150},[5] = {id = 2011405,lv = 150},[6] = {id = 2011406,lv = 150},[7] = {id = 2011407,lv = 150},[8] = {id = 2011408,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-30-7-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1300721,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111401,lv = 150},[2] = {id = 2111402,lv = 150},[3] = {id = 2111403,lv = 150},[4] = {id = 2111404,lv = 150},[5] = {id = 2111405,lv = 150},[6] = {id = 2111406,lv = 150},[7] = {id = 2111407,lv = 150},[8] = {id = 2111408,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1300730,cardId = 1101999,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2011401,lv = 150},[2] = {id = 2011402,lv = 150},[3] = {id = 2011403,lv = 150},[4] = {id = 2011404,lv = 150},[5] = {id = 2011405,lv = 150},[6] = {id = 2011406,lv = 150},[7] = {id = 2011407,lv = 150},[8] = {id = 2011408,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-30-7-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1300731,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111401,lv = 150},[2] = {id = 2111402,lv = 150},[3] = {id = 2111403,lv = 150},[4] = {id = 2111404,lv = 150},[5] = {id = 2111405,lv = 150},[6] = {id = 2111406,lv = 150},[7] = {id = 2111407,lv = 150},[8] = {id = 2111408,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[13008] = {
		[1] = {
			jlr = {id = 1300810,cardId = 1101999,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2011401,lv = 150},[2] = {id = 2011402,lv = 150},[3] = {id = 2011403,lv = 150},[4] = {id = 2011404,lv = 150},[5] = {id = 2011405,lv = 150},[6] = {id = 2011406,lv = 150},[7] = {id = 2011407,lv = 150},[8] = {id = 2011408,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-30-8-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1300811,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111401,lv = 150},[2] = {id = 2111402,lv = 150},[3] = {id = 2111403,lv = 150},[4] = {id = 2111404,lv = 150},[5] = {id = 2111405,lv = 150},[6] = {id = 2111406,lv = 150},[7] = {id = 2111407,lv = 150},[8] = {id = 2111408,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1300820,cardId = 1101999,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2011401,lv = 150},[2] = {id = 2011402,lv = 150},[3] = {id = 2011403,lv = 150},[4] = {id = 2011404,lv = 150},[5] = {id = 2011405,lv = 150},[6] = {id = 2011406,lv = 150},[7] = {id = 2011407,lv = 150},[8] = {id = 2011408,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-30-8-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1300821,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111401,lv = 150},[2] = {id = 2111402,lv = 150},[3] = {id = 2111403,lv = 150},[4] = {id = 2111404,lv = 150},[5] = {id = 2111405,lv = 150},[6] = {id = 2111406,lv = 150},[7] = {id = 2111407,lv = 150},[8] = {id = 2111408,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1300830,cardId = 1101999,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2011401,lv = 150},[2] = {id = 2011402,lv = 150},[3] = {id = 2011403,lv = 150},[4] = {id = 2011404,lv = 150},[5] = {id = 2011405,lv = 150},[6] = {id = 2011406,lv = 150},[7] = {id = 2011407,lv = 150},[8] = {id = 2011408,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-30-8-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1300831,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111401,lv = 150},[2] = {id = 2111402,lv = 150},[3] = {id = 2111403,lv = 150},[4] = {id = 2111404,lv = 150},[5] = {id = 2111405,lv = 150},[6] = {id = 2111406,lv = 150},[7] = {id = 2111407,lv = 150},[8] = {id = 2111408,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[13009] = {
		[1] = {
			jlr = {id = 1300910,cardId = 1101998,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2011401,lv = 150},[2] = {id = 2011402,lv = 150},[3] = {id = 2011403,lv = 150},[4] = {id = 2011404,lv = 150},[5] = {id = 2011405,lv = 150},[6] = {id = 2011406,lv = 150},[7] = {id = 2011407,lv = 150},[8] = {id = 2011408,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-30-9-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1300911,cardId = 1102998,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111401,lv = 150},[2] = {id = 2111402,lv = 150},[3] = {id = 2111403,lv = 150},[4] = {id = 2111404,lv = 150},[5] = {id = 2111405,lv = 150},[6] = {id = 2111406,lv = 150},[7] = {id = 2111407,lv = 150},[8] = {id = 2111408,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1300920,cardId = 1101997,lv = 150,bklv = 20,star = 4,equip = {[1] = {id = 2011401,lv = 150},[2] = {id = 2011402,lv = 150},[3] = {id = 2011403,lv = 150},[4] = {id = 2011404,lv = 150},[5] = {id = 2011405,lv = 150},[6] = {id = 2011406,lv = 150},[7] = {id = 2011407,lv = 150},[8] = {id = 2011408,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-30-9-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1300921,cardId = 1102997,lv = 150,bklv = 20,star = 4,ghost = 52,equip = {[1] = {id = 2111401,lv = 150},[2] = {id = 2111402,lv = 150},[3] = {id = 2111403,lv = 150},[4] = {id = 2111404,lv = 150},[5] = {id = 2111405,lv = 150},[6] = {id = 2111406,lv = 150},[7] = {id = 2111407,lv = 150},[8] = {id = 2111408,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1300930,cardId = 1101998,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2011401,lv = 150},[2] = {id = 2011402,lv = 150},[3] = {id = 2011403,lv = 150},[4] = {id = 2011404,lv = 150},[5] = {id = 2011405,lv = 150},[6] = {id = 2011406,lv = 150},[7] = {id = 2011407,lv = 150},[8] = {id = 2011408,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-30-9-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1300931,cardId = 1102998,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111401,lv = 150},[2] = {id = 2111402,lv = 150},[3] = {id = 2111403,lv = 150},[4] = {id = 2111404,lv = 150},[5] = {id = 2111405,lv = 150},[6] = {id = 2111406,lv = 150},[7] = {id = 2111407,lv = 150},[8] = {id = 2111408,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[13010] = {
		[1] = {
			jlr = {id = 1301010,cardId = 1101997,lv = 150,bklv = 20,star = 4,equip = {[1] = {id = 2011401,lv = 150},[2] = {id = 2011402,lv = 150},[3] = {id = 2011403,lv = 150},[4] = {id = 2011404,lv = 150},[5] = {id = 2011405,lv = 150},[6] = {id = 2011406,lv = 150},[7] = {id = 2011407,lv = 150},[8] = {id = 2011408,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 279,srcLoc = 2,srcType = 1,desc = "pt-30-10-jlr-loc1",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1301011,cardId = 1102997,lv = 150,bklv = 20,star = 4,ghost = 52,equip = {[1] = {id = 2111401,lv = 150},[2] = {id = 2111402,lv = 150},[3] = {id = 2111403,lv = 150},[4] = {id = 2111404,lv = 150},[5] = {id = 2111405,lv = 150},[6] = {id = 2111406,lv = 150},[7] = {id = 2111407,lv = 150},[8] = {id = 2111408,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {id = 1301020,cardId = 1101997,lv = 150,bklv = 20,star = 4,equip = {[1] = {id = 2011401,lv = 150},[2] = {id = 2011402,lv = 150},[3] = {id = 2011403,lv = 150},[4] = {id = 2011404,lv = 150},[5] = {id = 2011405,lv = 150},[6] = {id = 2011406,lv = 150},[7] = {id = 2011407,lv = 150},[8] = {id = 2011408,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 261,srcLoc = 2,srcType = 1,desc = "pt-30-10-jlr-loc2",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1301021,cardId = 1102997,lv = 150,bklv = 20,star = 4,ghost = 52,equip = {[1] = {id = 2111401,lv = 150},[2] = {id = 2111402,lv = 150},[3] = {id = 2111403,lv = 150},[4] = {id = 2111404,lv = 150},[5] = {id = 2111405,lv = 150},[6] = {id = 2111406,lv = 150},[7] = {id = 2111407,lv = 150},[8] = {id = 2111408,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[3] = {
			jlr = {id = 1301030,cardId = 1101997,lv = 150,bklv = 20,star = 4,equip = {[1] = {id = 2011401,lv = 150},[2] = {id = 2011402,lv = 150},[3] = {id = 2011403,lv = 150},[4] = {id = 2011404,lv = 150},[5] = {id = 2011405,lv = 150},[6] = {id = 2011406,lv = 150},[7] = {id = 2011407,lv = 150},[8] = {id = 2011408,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 270,srcLoc = 2,srcType = 1,desc = "pt-30-10-jlr-loc3",skillLv = 1,exert = 5,suffer = 5}},
			shl = {id = 1301031,cardId = 1102997,lv = 150,bklv = 20,star = 4,ghost = 52,equip = {[1] = {id = 2111401,lv = 150},[2] = {id = 2111402,lv = 150},[3] = {id = 2111403,lv = 150},[4] = {id = 2111404,lv = 150},[5] = {id = 2111405,lv = 150},[6] = {id = 2111406,lv = 150},[7] = {id = 2111407,lv = 150},[8] = {id = 2111408,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	}
}
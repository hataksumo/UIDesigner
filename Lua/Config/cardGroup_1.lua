--[[
--note:

colums:
{cha,章节} ,{id,卡牌Id} ,{group,组} ,{loc,位置} ,{type,类型} ,{cardId,卡牌ID} ,{lv,等级} ,{bklv,突破} ,{star,星级} ,{ghost,魂火} ,{equip[1].id,装备1Id} ,{equip[1].lv,装备1强化} ,{equip[2].id,装备1Id} ,{equip[2].lv,装备1强化} ,{equip[3].id,装备1Id} ,{equip[3].lv,装备1强化} ,{equip[4].id,装备1Id} ,{equip[4].lv,装备1强化} ,{equip[5].id,装备1Id} ,{equip[5].lv,装备1强化} ,{equip[6].id,装备1Id} ,{equip[6].lv,装备1强化} ,{equip[7].id,装备1Id} ,{equip[7].lv,装备1强化} ,{equip[8].id,装备1Id} ,{equip[8].lv,装备1强化} ,{exWeapon[1],专属武器魂珠1} ,{exWeapon[2],专属武器魂珠2} ,{exWeapon[3],专属武器魂珠3} ,{exWeapon[4],专属武器魂珠4} ,{exWeapon[5],专属武器魂珠5} ,{exWeapon[6],专属武器魂珠6} ,{exWeapon[7],专属武器魂珠7} ,{exWeapon[8],专属武器魂珠8} ,{mon.id,怪物模组ID} ,{mon.desc,备注} ,{mon.srcLoc,源属性位} ,{mon.srcType,源属性类型} ,{mon.skillLv,技能等级} ,{mon.exert,施加攻击} ,{mon.suffer,承受攻击}
primary key:
#0 [世界BOSS卡牌组]: group,loc,type
#1 [日常本卡牌组]: group,loc,type
#2 [传记副本]: group,loc,type
]]
local _T = LangUtil.Language
return{
	[50101] = {
		[1] = {
			jlr = {cha = "ds1",id = 5010110,cardId = 1101999,lv = 35,bklv = 4,star = 1,equip = {[1] = {id = 2001201,lv = 35},[2] = {id = 2001202,lv = 35},[3] = {id = 2001203,lv = 35},[4] = {id = 2001204,lv = 35},[5] = {id = 2001205,lv = 35},[6] = {id = 2001206,lv = 35},[7] = {id = 2001207,lv = 35},[8] = {id = 2001208,lv = 35}},mon = {id = 213,desc = "ds1-1-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "ds1",id = 5010111,cardId = 1102999,lv = 35,bklv = 5,star = 1,ghost = 7,equip = {[1] = {id = 2101201,lv = 35},[2] = {id = 2101202,lv = 35},[3] = {id = 2101203,lv = 35},[4] = {id = 2101204,lv = 35},[5] = {id = 2101205,lv = 35},[6] = {id = 2101206,lv = 35},[7] = {id = 2101207,lv = 35},[8] = {id = 2101208,lv = 35}},exWeapon = {[1] = 1,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 239,desc = "ds1-1-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "ds1",id = 5010120,cardId = 1101998,lv = 35,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 35},[2] = {id = 2001302,lv = 35},[3] = {id = 2001303,lv = 35},[4] = {id = 2001304,lv = 35},[5] = {id = 2001305,lv = 35},[6] = {id = 2001306,lv = 35},[7] = {id = 2001307,lv = 35},[8] = {id = 2001308,lv = 35}},mon = {id = 212,desc = "ds1-1-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "ds1",id = 5010121,cardId = 1102998,lv = 35,bklv = 5,star = 1,ghost = 7,equip = {[1] = {id = 2101301,lv = 35},[2] = {id = 2101302,lv = 35},[3] = {id = 2101303,lv = 35},[4] = {id = 2101304,lv = 35},[5] = {id = 2101305,lv = 35},[6] = {id = 2101306,lv = 35},[7] = {id = 2101307,lv = 35},[8] = {id = 2101308,lv = 35}},exWeapon = {[1] = 1,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 238,desc = "ds1-1-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "ds1",id = 5010130,cardId = 1101999,lv = 35,bklv = 4,star = 1,equip = {[1] = {id = 2001201,lv = 35},[2] = {id = 2001202,lv = 35},[3] = {id = 2001203,lv = 35},[4] = {id = 2001204,lv = 35},[5] = {id = 2001205,lv = 35},[6] = {id = 2001206,lv = 35},[7] = {id = 2001207,lv = 35},[8] = {id = 2001208,lv = 35}},mon = {id = 208,desc = "ds1-1-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "ds1",id = 5010131,cardId = 1102999,lv = 35,bklv = 5,star = 1,ghost = 7,equip = {[1] = {id = 2101201,lv = 35},[2] = {id = 2101202,lv = 35},[3] = {id = 2101203,lv = 35},[4] = {id = 2101204,lv = 35},[5] = {id = 2101205,lv = 35},[6] = {id = 2101206,lv = 35},[7] = {id = 2101207,lv = 35},[8] = {id = 2101208,lv = 35}},exWeapon = {[1] = 1,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 233,desc = "ds1-1-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		}
	},
	[50102] = {
		[1] = {
			jlr = {cha = "ds1",id = 5010210,cardId = 1101999,lv = 35,bklv = 4,star = 1,equip = {[1] = {id = 2001201,lv = 35},[2] = {id = 2001202,lv = 35},[3] = {id = 2001203,lv = 35},[4] = {id = 2001204,lv = 35},[5] = {id = 2001205,lv = 35},[6] = {id = 2001206,lv = 35},[7] = {id = 2001207,lv = 35},[8] = {id = 2001208,lv = 35}},mon = {id = 201,desc = "ds1-2-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "ds1",id = 5010211,cardId = 1102999,lv = 35,bklv = 5,star = 1,ghost = 7,equip = {[1] = {id = 2101201,lv = 35},[2] = {id = 2101202,lv = 35},[3] = {id = 2101203,lv = 35},[4] = {id = 2101204,lv = 35},[5] = {id = 2101205,lv = 35},[6] = {id = 2101206,lv = 35},[7] = {id = 2101207,lv = 35},[8] = {id = 2101208,lv = 35}},exWeapon = {[1] = 1,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 235,desc = "ds1-2-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "ds1",id = 5010220,cardId = 1101998,lv = 35,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 35},[2] = {id = 2001302,lv = 35},[3] = {id = 2001303,lv = 35},[4] = {id = 2001304,lv = 35},[5] = {id = 2001305,lv = 35},[6] = {id = 2001306,lv = 35},[7] = {id = 2001307,lv = 35},[8] = {id = 2001308,lv = 35}},mon = {id = 202,desc = "ds1-2-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "ds1",id = 5010221,cardId = 1102998,lv = 35,bklv = 5,star = 1,ghost = 7,equip = {[1] = {id = 2101301,lv = 35},[2] = {id = 2101302,lv = 35},[3] = {id = 2101303,lv = 35},[4] = {id = 2101304,lv = 35},[5] = {id = 2101305,lv = 35},[6] = {id = 2101306,lv = 35},[7] = {id = 2101307,lv = 35},[8] = {id = 2101308,lv = 35}},exWeapon = {[1] = 1,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 224,desc = "ds1-2-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "ds1",id = 5010230,cardId = 1101999,lv = 35,bklv = 4,star = 1,equip = {[1] = {id = 2001201,lv = 35},[2] = {id = 2001202,lv = 35},[3] = {id = 2001203,lv = 35},[4] = {id = 2001204,lv = 35},[5] = {id = 2001205,lv = 35},[6] = {id = 2001206,lv = 35},[7] = {id = 2001207,lv = 35},[8] = {id = 2001208,lv = 35}},mon = {id = 203,desc = "ds1-2-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "ds1",id = 5010231,cardId = 1102999,lv = 35,bklv = 5,star = 1,ghost = 7,equip = {[1] = {id = 2101201,lv = 35},[2] = {id = 2101202,lv = 35},[3] = {id = 2101203,lv = 35},[4] = {id = 2101204,lv = 35},[5] = {id = 2101205,lv = 35},[6] = {id = 2101206,lv = 35},[7] = {id = 2101207,lv = 35},[8] = {id = 2101208,lv = 35}},exWeapon = {[1] = 1,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 225,desc = "ds1-2-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		}
	},
	[50103] = {
		[1] = {
			jlr = {cha = "ds1",id = 5010310,cardId = 1101999,lv = 35,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 35},[2] = {id = 2001302,lv = 35},[3] = {id = 2001303,lv = 35},[4] = {id = 2001304,lv = 35},[5] = {id = 2001305,lv = 35},[6] = {id = 2001306,lv = 35},[7] = {id = 2001307,lv = 35},[8] = {id = 2001308,lv = 35}},mon = {id = 215,desc = "ds1-3-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 2,exert = 14,suffer = 21}},
			shl = {cha = "ds1",id = 5010311,cardId = 1102998,lv = 35,bklv = 5,star = 1,ghost = 7,equip = {[1] = {id = 2101301,lv = 35},[2] = {id = 2101302,lv = 35},[3] = {id = 2101303,lv = 35},[4] = {id = 2101304,lv = 35},[5] = {id = 2101305,lv = 35},[6] = {id = 2101306,lv = 35},[7] = {id = 2101307,lv = 35},[8] = {id = 2101308,lv = 35}},exWeapon = {[1] = 1,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 321,desc = "ds1-3-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 2,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "ds1",id = 5010320,cardId = 1101999,lv = 35,bklv = 4,star = 1,equip = {[1] = {id = 2001401,lv = 35},[2] = {id = 2001402,lv = 35},[3] = {id = 2001403,lv = 35},[4] = {id = 2001404,lv = 35},[5] = {id = 2001405,lv = 35},[6] = {id = 2001406,lv = 35},[7] = {id = 2001407,lv = 35},[8] = {id = 2001408,lv = 35}},mon = {id = 211,desc = "ds1-3-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 2,exert = 14,suffer = 21}},
			shl = {cha = "ds1",id = 5010321,cardId = 1102998,lv = 35,bklv = 5,star = 1,ghost = 7,equip = {[1] = {id = 2101401,lv = 35},[2] = {id = 2101402,lv = 35},[3] = {id = 2101403,lv = 35},[4] = {id = 2101404,lv = 35},[5] = {id = 2101405,lv = 35},[6] = {id = 2101406,lv = 35},[7] = {id = 2101407,lv = 35},[8] = {id = 2101408,lv = 35}},exWeapon = {[1] = 1,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 317,desc = "ds1-3-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 2,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "ds1",id = 5010330,cardId = 1101999,lv = 35,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 35},[2] = {id = 2001302,lv = 35},[3] = {id = 2001303,lv = 35},[4] = {id = 2001304,lv = 35},[5] = {id = 2001305,lv = 35},[6] = {id = 2001306,lv = 35},[7] = {id = 2001307,lv = 35},[8] = {id = 2001308,lv = 35}},mon = {id = 209,desc = "ds1-3-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 2,exert = 14,suffer = 21}},
			shl = {cha = "ds1",id = 5010331,cardId = 1102998,lv = 35,bklv = 5,star = 1,ghost = 7,equip = {[1] = {id = 2101301,lv = 35},[2] = {id = 2101302,lv = 35},[3] = {id = 2101303,lv = 35},[4] = {id = 2101304,lv = 35},[5] = {id = 2101305,lv = 35},[6] = {id = 2101306,lv = 35},[7] = {id = 2101307,lv = 35},[8] = {id = 2101308,lv = 35}},exWeapon = {[1] = 1,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 314,desc = "ds1-3-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 2,exert = 18,suffer = 25}}
		}
	},
	[50104] = {
		[1] = {
			jlr = {cha = "ds1",id = 5010410,cardId = 1101999,lv = 35,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 35},[2] = {id = 2001302,lv = 35},[3] = {id = 2001303,lv = 35},[4] = {id = 2001304,lv = 35},[5] = {id = 2001305,lv = 35},[6] = {id = 2001306,lv = 35},[7] = {id = 2001307,lv = 35},[8] = {id = 2001308,lv = 35}},mon = {id = 207,desc = "ds1-4-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 2,exert = 14,suffer = 21}},
			shl = {cha = "ds1",id = 5010411,cardId = 1102998,lv = 35,bklv = 5,star = 1,ghost = 7,equip = {[1] = {id = 2101301,lv = 35},[2] = {id = 2101302,lv = 35},[3] = {id = 2101303,lv = 35},[4] = {id = 2101304,lv = 35},[5] = {id = 2101305,lv = 35},[6] = {id = 2101306,lv = 35},[7] = {id = 2101307,lv = 35},[8] = {id = 2101308,lv = 35}},exWeapon = {[1] = 1,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 303,desc = "ds1-4-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 2,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "ds1",id = 5010420,cardId = 1101999,lv = 35,bklv = 4,star = 1,equip = {[1] = {id = 2001401,lv = 35},[2] = {id = 2001402,lv = 35},[3] = {id = 2001403,lv = 35},[4] = {id = 2001404,lv = 35},[5] = {id = 2001405,lv = 35},[6] = {id = 2001406,lv = 35},[7] = {id = 2001407,lv = 35},[8] = {id = 2001408,lv = 35}},mon = {id = 210,desc = "ds1-4-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 2,exert = 14,suffer = 21}},
			shl = {cha = "ds1",id = 5010421,cardId = 1102998,lv = 35,bklv = 5,star = 1,ghost = 7,equip = {[1] = {id = 2101401,lv = 35},[2] = {id = 2101402,lv = 35},[3] = {id = 2101403,lv = 35},[4] = {id = 2101404,lv = 35},[5] = {id = 2101405,lv = 35},[6] = {id = 2101406,lv = 35},[7] = {id = 2101407,lv = 35},[8] = {id = 2101408,lv = 35}},exWeapon = {[1] = 1,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 316,desc = "ds1-4-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 2,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "ds1",id = 5010430,cardId = 1101999,lv = 35,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 35},[2] = {id = 2001302,lv = 35},[3] = {id = 2001303,lv = 35},[4] = {id = 2001304,lv = 35},[5] = {id = 2001305,lv = 35},[6] = {id = 2001306,lv = 35},[7] = {id = 2001307,lv = 35},[8] = {id = 2001308,lv = 35}},mon = {id = 206,desc = "ds1-4-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 2,exert = 14,suffer = 21}},
			shl = {cha = "ds1",id = 5010431,cardId = 1102998,lv = 35,bklv = 5,star = 1,ghost = 7,equip = {[1] = {id = 2101301,lv = 35},[2] = {id = 2101302,lv = 35},[3] = {id = 2101303,lv = 35},[4] = {id = 2101304,lv = 35},[5] = {id = 2101305,lv = 35},[6] = {id = 2101306,lv = 35},[7] = {id = 2101307,lv = 35},[8] = {id = 2101308,lv = 35}},exWeapon = {[1] = 1,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 307,desc = "ds1-4-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 2,exert = 18,suffer = 25}}
		}
	},
	[50105] = {
		[1] = {
			jlr = {cha = "ds1",id = 5010510,cardId = 1101998,lv = 35,bklv = 4,star = 1,equip = {[1] = {id = 2001401,lv = 35},[2] = {id = 2001402,lv = 35},[3] = {id = 2001403,lv = 35},[4] = {id = 2001404,lv = 35},[5] = {id = 2001405,lv = 35},[6] = {id = 2001406,lv = 35},[7] = {id = 2001407,lv = 35},[8] = {id = 2001408,lv = 35}},mon = {id = 207,desc = "ds1-5-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 3,exert = 11,suffer = 21}},
			shl = {cha = "ds1",id = 5010511,cardId = 1102997,lv = 35,bklv = 5,star = 1,ghost = 7,equip = {[1] = {id = 2101401,lv = 35},[2] = {id = 2101402,lv = 35},[3] = {id = 2101403,lv = 35},[4] = {id = 2101404,lv = 35},[5] = {id = 2101405,lv = 35},[6] = {id = 2101406,lv = 35},[7] = {id = 2101407,lv = 35},[8] = {id = 2101408,lv = 35}},exWeapon = {[1] = 1,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 312,desc = "ds1-5-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 3,exert = 15,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "ds1",id = 5010520,cardId = 1101998,lv = 35,bklv = 4,star = 1,equip = {[1] = {id = 2001431,lv = 35},[2] = {id = 2001432,lv = 35},[3] = {id = 2001433,lv = 35},[4] = {id = 2001434,lv = 35},[5] = {id = 2001435,lv = 35},[6] = {id = 2001436,lv = 35},[7] = {id = 2001437,lv = 35},[8] = {id = 2001438,lv = 35}},mon = {id = 204,desc = "ds1-5-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 3,exert = 11,suffer = 21}},
			shl = {cha = "ds1",id = 5010521,cardId = 1102997,lv = 35,bklv = 5,star = 1,ghost = 7,equip = {[1] = {id = 2101431,lv = 35},[2] = {id = 2101432,lv = 35},[3] = {id = 2101433,lv = 35},[4] = {id = 2101434,lv = 35},[5] = {id = 2101435,lv = 35},[6] = {id = 2101436,lv = 35},[7] = {id = 2101437,lv = 35},[8] = {id = 2101438,lv = 35}},exWeapon = {[1] = 1,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 306,desc = "ds1-5-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 3,exert = 15,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "ds1",id = 5010530,cardId = 1101998,lv = 35,bklv = 4,star = 1,equip = {[1] = {id = 2001401,lv = 35},[2] = {id = 2001402,lv = 35},[3] = {id = 2001403,lv = 35},[4] = {id = 2001404,lv = 35},[5] = {id = 2001405,lv = 35},[6] = {id = 2001406,lv = 35},[7] = {id = 2001407,lv = 35},[8] = {id = 2001408,lv = 35}},mon = {id = 205,desc = "ds1-5-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 3,exert = 11,suffer = 21}},
			shl = {cha = "ds1",id = 5010531,cardId = 1102997,lv = 35,bklv = 5,star = 1,ghost = 7,equip = {[1] = {id = 2101401,lv = 35},[2] = {id = 2101402,lv = 35},[3] = {id = 2101403,lv = 35},[4] = {id = 2101404,lv = 35},[5] = {id = 2101405,lv = 35},[6] = {id = 2101406,lv = 35},[7] = {id = 2101407,lv = 35},[8] = {id = 2101408,lv = 35}},exWeapon = {[1] = 1,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 301,desc = "ds1-5-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 3,exert = 15,suffer = 25}}
		}
	},
	[50201] = {
		[1] = {
			jlr = {cha = "ds2",id = 5020110,cardId = 1101999,lv = 40,bklv = 5,star = 1,equip = {[1] = {id = 2001201,lv = 40},[2] = {id = 2001202,lv = 40},[3] = {id = 2001203,lv = 40},[4] = {id = 2001204,lv = 40},[5] = {id = 2001205,lv = 40},[6] = {id = 2001206,lv = 40},[7] = {id = 2001207,lv = 40},[8] = {id = 2001208,lv = 40}},mon = {id = 213,desc = "ds2-1-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 2,exert = 21,suffer = 21}},
			shl = {cha = "ds2",id = 5020111,cardId = 1102999,lv = 40,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2101201,lv = 40},[2] = {id = 2101202,lv = 40},[3] = {id = 2101203,lv = 40},[4] = {id = 2101204,lv = 40},[5] = {id = 2101205,lv = 40},[6] = {id = 2101206,lv = 40},[7] = {id = 2101207,lv = 40},[8] = {id = 2101208,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 239,desc = "ds2-1-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 2,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "ds2",id = 5020120,cardId = 1101998,lv = 40,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 40},[2] = {id = 2001302,lv = 40},[3] = {id = 2001303,lv = 40},[4] = {id = 2001304,lv = 40},[5] = {id = 2001305,lv = 40},[6] = {id = 2001306,lv = 40},[7] = {id = 2001307,lv = 40},[8] = {id = 2001308,lv = 40}},mon = {id = 212,desc = "ds2-1-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 2,exert = 21,suffer = 21}},
			shl = {cha = "ds2",id = 5020121,cardId = 1102998,lv = 40,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2101301,lv = 40},[2] = {id = 2101302,lv = 40},[3] = {id = 2101303,lv = 40},[4] = {id = 2101304,lv = 40},[5] = {id = 2101305,lv = 40},[6] = {id = 2101306,lv = 40},[7] = {id = 2101307,lv = 40},[8] = {id = 2101308,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 238,desc = "ds2-1-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 2,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "ds2",id = 5020130,cardId = 1101999,lv = 40,bklv = 5,star = 1,equip = {[1] = {id = 2001201,lv = 40},[2] = {id = 2001202,lv = 40},[3] = {id = 2001203,lv = 40},[4] = {id = 2001204,lv = 40},[5] = {id = 2001205,lv = 40},[6] = {id = 2001206,lv = 40},[7] = {id = 2001207,lv = 40},[8] = {id = 2001208,lv = 40}},mon = {id = 208,desc = "ds2-1-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 2,exert = 21,suffer = 21}},
			shl = {cha = "ds2",id = 5020131,cardId = 1102999,lv = 40,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2101201,lv = 40},[2] = {id = 2101202,lv = 40},[3] = {id = 2101203,lv = 40},[4] = {id = 2101204,lv = 40},[5] = {id = 2101205,lv = 40},[6] = {id = 2101206,lv = 40},[7] = {id = 2101207,lv = 40},[8] = {id = 2101208,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 233,desc = "ds2-1-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 2,exert = 25,suffer = 25}}
		}
	},
	[50202] = {
		[1] = {
			jlr = {cha = "ds2",id = 5020210,cardId = 1101999,lv = 40,bklv = 5,star = 1,equip = {[1] = {id = 2001201,lv = 40},[2] = {id = 2001202,lv = 40},[3] = {id = 2001203,lv = 40},[4] = {id = 2001204,lv = 40},[5] = {id = 2001205,lv = 40},[6] = {id = 2001206,lv = 40},[7] = {id = 2001207,lv = 40},[8] = {id = 2001208,lv = 40}},mon = {id = 201,desc = "ds2-2-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 3,exert = 21,suffer = 21}},
			shl = {cha = "ds2",id = 5020211,cardId = 1102999,lv = 40,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2101201,lv = 40},[2] = {id = 2101202,lv = 40},[3] = {id = 2101203,lv = 40},[4] = {id = 2101204,lv = 40},[5] = {id = 2101205,lv = 40},[6] = {id = 2101206,lv = 40},[7] = {id = 2101207,lv = 40},[8] = {id = 2101208,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 235,desc = "ds2-2-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 3,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "ds2",id = 5020220,cardId = 1101998,lv = 40,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 40},[2] = {id = 2001302,lv = 40},[3] = {id = 2001303,lv = 40},[4] = {id = 2001304,lv = 40},[5] = {id = 2001305,lv = 40},[6] = {id = 2001306,lv = 40},[7] = {id = 2001307,lv = 40},[8] = {id = 2001308,lv = 40}},mon = {id = 214,desc = "ds2-2-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 3,exert = 21,suffer = 21}},
			shl = {cha = "ds2",id = 5020221,cardId = 1102998,lv = 40,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2101301,lv = 40},[2] = {id = 2101302,lv = 40},[3] = {id = 2101303,lv = 40},[4] = {id = 2101304,lv = 40},[5] = {id = 2101305,lv = 40},[6] = {id = 2101306,lv = 40},[7] = {id = 2101307,lv = 40},[8] = {id = 2101308,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 240,desc = "ds2-2-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 3,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "ds2",id = 5020230,cardId = 1101999,lv = 40,bklv = 5,star = 1,equip = {[1] = {id = 2001201,lv = 40},[2] = {id = 2001202,lv = 40},[3] = {id = 2001203,lv = 40},[4] = {id = 2001204,lv = 40},[5] = {id = 2001205,lv = 40},[6] = {id = 2001206,lv = 40},[7] = {id = 2001207,lv = 40},[8] = {id = 2001208,lv = 40}},mon = {id = 203,desc = "ds2-2-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 3,exert = 21,suffer = 21}},
			shl = {cha = "ds2",id = 5020231,cardId = 1102999,lv = 40,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2101201,lv = 40},[2] = {id = 2101202,lv = 40},[3] = {id = 2101203,lv = 40},[4] = {id = 2101204,lv = 40},[5] = {id = 2101205,lv = 40},[6] = {id = 2101206,lv = 40},[7] = {id = 2101207,lv = 40},[8] = {id = 2101208,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 225,desc = "ds2-2-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 3,exert = 25,suffer = 25}}
		}
	},
	[50203] = {
		[1] = {
			jlr = {cha = "ds2",id = 5020310,cardId = 1101999,lv = 40,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 40},[2] = {id = 2001302,lv = 40},[3] = {id = 2001303,lv = 40},[4] = {id = 2001304,lv = 40},[5] = {id = 2001305,lv = 40},[6] = {id = 2001306,lv = 40},[7] = {id = 2001307,lv = 40},[8] = {id = 2001308,lv = 40}},mon = {id = 215,desc = "ds2-3-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 3,exert = 14,suffer = 21}},
			shl = {cha = "ds2",id = 5020311,cardId = 1102998,lv = 40,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2101301,lv = 40},[2] = {id = 2101302,lv = 40},[3] = {id = 2101303,lv = 40},[4] = {id = 2101304,lv = 40},[5] = {id = 2101305,lv = 40},[6] = {id = 2101306,lv = 40},[7] = {id = 2101307,lv = 40},[8] = {id = 2101308,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 321,desc = "ds2-3-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 3,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "ds2",id = 5020320,cardId = 1101999,lv = 40,bklv = 5,star = 1,equip = {[1] = {id = 2001401,lv = 40},[2] = {id = 2001402,lv = 40},[3] = {id = 2001403,lv = 40},[4] = {id = 2001404,lv = 40},[5] = {id = 2001405,lv = 40},[6] = {id = 2001406,lv = 40},[7] = {id = 2001407,lv = 40},[8] = {id = 2001408,lv = 40}},mon = {id = 211,desc = "ds2-3-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 3,exert = 14,suffer = 21}},
			shl = {cha = "ds2",id = 5020321,cardId = 1102998,lv = 40,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2101401,lv = 40},[2] = {id = 2101402,lv = 40},[3] = {id = 2101403,lv = 40},[4] = {id = 2101404,lv = 40},[5] = {id = 2101405,lv = 40},[6] = {id = 2101406,lv = 40},[7] = {id = 2101407,lv = 40},[8] = {id = 2101408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 317,desc = "ds2-3-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 3,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "ds2",id = 5020330,cardId = 1101999,lv = 40,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 40},[2] = {id = 2001302,lv = 40},[3] = {id = 2001303,lv = 40},[4] = {id = 2001304,lv = 40},[5] = {id = 2001305,lv = 40},[6] = {id = 2001306,lv = 40},[7] = {id = 2001307,lv = 40},[8] = {id = 2001308,lv = 40}},mon = {id = 209,desc = "ds2-3-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 3,exert = 14,suffer = 21}},
			shl = {cha = "ds2",id = 5020331,cardId = 1102998,lv = 40,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2101301,lv = 40},[2] = {id = 2101302,lv = 40},[3] = {id = 2101303,lv = 40},[4] = {id = 2101304,lv = 40},[5] = {id = 2101305,lv = 40},[6] = {id = 2101306,lv = 40},[7] = {id = 2101307,lv = 40},[8] = {id = 2101308,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 314,desc = "ds2-3-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 3,exert = 18,suffer = 25}}
		}
	},
	[50204] = {
		[1] = {
			jlr = {cha = "ds2",id = 5020410,cardId = 1101999,lv = 40,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 40},[2] = {id = 2001302,lv = 40},[3] = {id = 2001303,lv = 40},[4] = {id = 2001304,lv = 40},[5] = {id = 2001305,lv = 40},[6] = {id = 2001306,lv = 40},[7] = {id = 2001307,lv = 40},[8] = {id = 2001308,lv = 40}},mon = {id = 207,desc = "ds2-4-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "ds2",id = 5020411,cardId = 1102998,lv = 40,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2101301,lv = 40},[2] = {id = 2101302,lv = 40},[3] = {id = 2101303,lv = 40},[4] = {id = 2101304,lv = 40},[5] = {id = 2101305,lv = 40},[6] = {id = 2101306,lv = 40},[7] = {id = 2101307,lv = 40},[8] = {id = 2101308,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 303,desc = "ds2-4-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "ds2",id = 5020420,cardId = 1101999,lv = 40,bklv = 5,star = 1,equip = {[1] = {id = 2001401,lv = 40},[2] = {id = 2001402,lv = 40},[3] = {id = 2001403,lv = 40},[4] = {id = 2001404,lv = 40},[5] = {id = 2001405,lv = 40},[6] = {id = 2001406,lv = 40},[7] = {id = 2001407,lv = 40},[8] = {id = 2001408,lv = 40}},mon = {id = 210,desc = "ds2-4-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "ds2",id = 5020421,cardId = 1102998,lv = 40,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2101401,lv = 40},[2] = {id = 2101402,lv = 40},[3] = {id = 2101403,lv = 40},[4] = {id = 2101404,lv = 40},[5] = {id = 2101405,lv = 40},[6] = {id = 2101406,lv = 40},[7] = {id = 2101407,lv = 40},[8] = {id = 2101408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 316,desc = "ds2-4-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "ds2",id = 5020430,cardId = 1101999,lv = 40,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 40},[2] = {id = 2001302,lv = 40},[3] = {id = 2001303,lv = 40},[4] = {id = 2001304,lv = 40},[5] = {id = 2001305,lv = 40},[6] = {id = 2001306,lv = 40},[7] = {id = 2001307,lv = 40},[8] = {id = 2001308,lv = 40}},mon = {id = 206,desc = "ds2-4-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "ds2",id = 5020431,cardId = 1102998,lv = 40,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2101301,lv = 40},[2] = {id = 2101302,lv = 40},[3] = {id = 2101303,lv = 40},[4] = {id = 2101304,lv = 40},[5] = {id = 2101305,lv = 40},[6] = {id = 2101306,lv = 40},[7] = {id = 2101307,lv = 40},[8] = {id = 2101308,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 307,desc = "ds2-4-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		}
	},
	[50205] = {
		[1] = {
			jlr = {cha = "ds2",id = 5020510,cardId = 1101998,lv = 40,bklv = 5,star = 1,equip = {[1] = {id = 2001401,lv = 40},[2] = {id = 2001402,lv = 40},[3] = {id = 2001403,lv = 40},[4] = {id = 2001404,lv = 40},[5] = {id = 2001405,lv = 40},[6] = {id = 2001406,lv = 40},[7] = {id = 2001407,lv = 40},[8] = {id = 2001408,lv = 40}},mon = {id = 207,desc = "ds2-5-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 4,exert = 11,suffer = 21}},
			shl = {cha = "ds2",id = 5020511,cardId = 1102997,lv = 40,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2101401,lv = 40},[2] = {id = 2101402,lv = 40},[3] = {id = 2101403,lv = 40},[4] = {id = 2101404,lv = 40},[5] = {id = 2101405,lv = 40},[6] = {id = 2101406,lv = 40},[7] = {id = 2101407,lv = 40},[8] = {id = 2101408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 312,desc = "ds2-5-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 4,exert = 15,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "ds2",id = 5020520,cardId = 1101998,lv = 40,bklv = 5,star = 1,equip = {[1] = {id = 2001431,lv = 40},[2] = {id = 2001432,lv = 40},[3] = {id = 2001433,lv = 40},[4] = {id = 2001434,lv = 40},[5] = {id = 2001435,lv = 40},[6] = {id = 2001436,lv = 40},[7] = {id = 2001437,lv = 40},[8] = {id = 2001438,lv = 40}},mon = {id = 204,desc = "ds2-5-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 4,exert = 11,suffer = 21}},
			shl = {cha = "ds2",id = 5020521,cardId = 1102997,lv = 40,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2101431,lv = 40},[2] = {id = 2101432,lv = 40},[3] = {id = 2101433,lv = 40},[4] = {id = 2101434,lv = 40},[5] = {id = 2101435,lv = 40},[6] = {id = 2101436,lv = 40},[7] = {id = 2101437,lv = 40},[8] = {id = 2101438,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 306,desc = "ds2-5-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 4,exert = 15,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "ds2",id = 5020530,cardId = 1101998,lv = 40,bklv = 5,star = 1,equip = {[1] = {id = 2001401,lv = 40},[2] = {id = 2001402,lv = 40},[3] = {id = 2001403,lv = 40},[4] = {id = 2001404,lv = 40},[5] = {id = 2001405,lv = 40},[6] = {id = 2001406,lv = 40},[7] = {id = 2001407,lv = 40},[8] = {id = 2001408,lv = 40}},mon = {id = 205,desc = "ds2-5-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 4,exert = 11,suffer = 21}},
			shl = {cha = "ds2",id = 5020531,cardId = 1102997,lv = 40,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2101401,lv = 40},[2] = {id = 2101402,lv = 40},[3] = {id = 2101403,lv = 40},[4] = {id = 2101404,lv = 40},[5] = {id = 2101405,lv = 40},[6] = {id = 2101406,lv = 40},[7] = {id = 2101407,lv = 40},[8] = {id = 2101408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 301,desc = "ds2-5-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 4,exert = 15,suffer = 25}}
		}
	},
	[50301] = {
		[1] = {
			jlr = {cha = "ds3",id = 5030110,cardId = 1101999,lv = 45,bklv = 6,star = 1,equip = {[1] = {id = 2002201,lv = 45},[2] = {id = 2002202,lv = 45},[3] = {id = 2002203,lv = 45},[4] = {id = 2002204,lv = 45},[5] = {id = 2002205,lv = 45},[6] = {id = 2002206,lv = 45},[7] = {id = 2002207,lv = 45},[8] = {id = 2002208,lv = 45}},mon = {id = 213,desc = "ds3-1-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 2,exert = 21,suffer = 21}},
			shl = {cha = "ds3",id = 5030111,cardId = 1102999,lv = 45,bklv = 6,star = 1,ghost = 11,equip = {[1] = {id = 2102201,lv = 45},[2] = {id = 2102202,lv = 45},[3] = {id = 2102203,lv = 45},[4] = {id = 2102204,lv = 45},[5] = {id = 2102205,lv = 45},[6] = {id = 2102206,lv = 45},[7] = {id = 2102207,lv = 45},[8] = {id = 2102208,lv = 45}},exWeapon = {[1] = 3,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 239,desc = "ds3-1-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 2,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "ds3",id = 5030120,cardId = 1101998,lv = 45,bklv = 6,star = 1,equip = {[1] = {id = 2002301,lv = 45},[2] = {id = 2002302,lv = 45},[3] = {id = 2002303,lv = 45},[4] = {id = 2002304,lv = 45},[5] = {id = 2002305,lv = 45},[6] = {id = 2002306,lv = 45},[7] = {id = 2002307,lv = 45},[8] = {id = 2002308,lv = 45}},mon = {id = 212,desc = "ds3-1-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 2,exert = 21,suffer = 21}},
			shl = {cha = "ds3",id = 5030121,cardId = 1102998,lv = 45,bklv = 6,star = 1,ghost = 11,equip = {[1] = {id = 2102301,lv = 45},[2] = {id = 2102302,lv = 45},[3] = {id = 2102303,lv = 45},[4] = {id = 2102304,lv = 45},[5] = {id = 2102305,lv = 45},[6] = {id = 2102306,lv = 45},[7] = {id = 2102307,lv = 45},[8] = {id = 2102308,lv = 45}},exWeapon = {[1] = 3,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 238,desc = "ds3-1-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 2,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "ds3",id = 5030130,cardId = 1101999,lv = 45,bklv = 6,star = 1,equip = {[1] = {id = 2002201,lv = 45},[2] = {id = 2002202,lv = 45},[3] = {id = 2002203,lv = 45},[4] = {id = 2002204,lv = 45},[5] = {id = 2002205,lv = 45},[6] = {id = 2002206,lv = 45},[7] = {id = 2002207,lv = 45},[8] = {id = 2002208,lv = 45}},mon = {id = 208,desc = "ds3-1-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 2,exert = 21,suffer = 21}},
			shl = {cha = "ds3",id = 5030131,cardId = 1102999,lv = 45,bklv = 6,star = 1,ghost = 11,equip = {[1] = {id = 2102201,lv = 45},[2] = {id = 2102202,lv = 45},[3] = {id = 2102203,lv = 45},[4] = {id = 2102204,lv = 45},[5] = {id = 2102205,lv = 45},[6] = {id = 2102206,lv = 45},[7] = {id = 2102207,lv = 45},[8] = {id = 2102208,lv = 45}},exWeapon = {[1] = 3,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 233,desc = "ds3-1-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 2,exert = 25,suffer = 25}}
		}
	},
	[50302] = {
		[1] = {
			jlr = {cha = "ds3",id = 5030210,cardId = 1101999,lv = 45,bklv = 6,star = 1,equip = {[1] = {id = 2002201,lv = 45},[2] = {id = 2002202,lv = 45},[3] = {id = 2002203,lv = 45},[4] = {id = 2002204,lv = 45},[5] = {id = 2002205,lv = 45},[6] = {id = 2002206,lv = 45},[7] = {id = 2002207,lv = 45},[8] = {id = 2002208,lv = 45}},mon = {id = 201,desc = "ds3-2-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 3,exert = 21,suffer = 21}},
			shl = {cha = "ds3",id = 5030211,cardId = 1102999,lv = 45,bklv = 6,star = 1,ghost = 11,equip = {[1] = {id = 2102201,lv = 45},[2] = {id = 2102202,lv = 45},[3] = {id = 2102203,lv = 45},[4] = {id = 2102204,lv = 45},[5] = {id = 2102205,lv = 45},[6] = {id = 2102206,lv = 45},[7] = {id = 2102207,lv = 45},[8] = {id = 2102208,lv = 45}},exWeapon = {[1] = 3,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 235,desc = "ds3-2-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 3,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "ds3",id = 5030220,cardId = 1101998,lv = 45,bklv = 6,star = 1,equip = {[1] = {id = 2002301,lv = 45},[2] = {id = 2002302,lv = 45},[3] = {id = 2002303,lv = 45},[4] = {id = 2002304,lv = 45},[5] = {id = 2002305,lv = 45},[6] = {id = 2002306,lv = 45},[7] = {id = 2002307,lv = 45},[8] = {id = 2002308,lv = 45}},mon = {id = 214,desc = "ds3-2-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 3,exert = 21,suffer = 21}},
			shl = {cha = "ds3",id = 5030221,cardId = 1102998,lv = 45,bklv = 6,star = 1,ghost = 11,equip = {[1] = {id = 2102301,lv = 45},[2] = {id = 2102302,lv = 45},[3] = {id = 2102303,lv = 45},[4] = {id = 2102304,lv = 45},[5] = {id = 2102305,lv = 45},[6] = {id = 2102306,lv = 45},[7] = {id = 2102307,lv = 45},[8] = {id = 2102308,lv = 45}},exWeapon = {[1] = 3,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 240,desc = "ds3-2-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 3,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "ds3",id = 5030230,cardId = 1101999,lv = 45,bklv = 6,star = 1,equip = {[1] = {id = 2002201,lv = 45},[2] = {id = 2002202,lv = 45},[3] = {id = 2002203,lv = 45},[4] = {id = 2002204,lv = 45},[5] = {id = 2002205,lv = 45},[6] = {id = 2002206,lv = 45},[7] = {id = 2002207,lv = 45},[8] = {id = 2002208,lv = 45}},mon = {id = 203,desc = "ds3-2-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 3,exert = 21,suffer = 21}},
			shl = {cha = "ds3",id = 5030231,cardId = 1102999,lv = 45,bklv = 6,star = 1,ghost = 11,equip = {[1] = {id = 2102201,lv = 45},[2] = {id = 2102202,lv = 45},[3] = {id = 2102203,lv = 45},[4] = {id = 2102204,lv = 45},[5] = {id = 2102205,lv = 45},[6] = {id = 2102206,lv = 45},[7] = {id = 2102207,lv = 45},[8] = {id = 2102208,lv = 45}},exWeapon = {[1] = 3,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 225,desc = "ds3-2-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 3,exert = 25,suffer = 25}}
		}
	},
	[50303] = {
		[1] = {
			jlr = {cha = "ds3",id = 5030310,cardId = 1101999,lv = 45,bklv = 6,star = 1,equip = {[1] = {id = 2002301,lv = 45},[2] = {id = 2002302,lv = 45},[3] = {id = 2002303,lv = 45},[4] = {id = 2002304,lv = 45},[5] = {id = 2002305,lv = 45},[6] = {id = 2002306,lv = 45},[7] = {id = 2002307,lv = 45},[8] = {id = 2002308,lv = 45}},mon = {id = 215,desc = "ds3-3-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 3,exert = 14,suffer = 21}},
			shl = {cha = "ds3",id = 5030311,cardId = 1102998,lv = 45,bklv = 6,star = 1,ghost = 11,equip = {[1] = {id = 2102301,lv = 45},[2] = {id = 2102302,lv = 45},[3] = {id = 2102303,lv = 45},[4] = {id = 2102304,lv = 45},[5] = {id = 2102305,lv = 45},[6] = {id = 2102306,lv = 45},[7] = {id = 2102307,lv = 45},[8] = {id = 2102308,lv = 45}},exWeapon = {[1] = 3,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 321,desc = "ds3-3-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 3,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "ds3",id = 5030320,cardId = 1101999,lv = 45,bklv = 6,star = 1,equip = {[1] = {id = 2002401,lv = 45},[2] = {id = 2002402,lv = 45},[3] = {id = 2002403,lv = 45},[4] = {id = 2002404,lv = 45},[5] = {id = 2002405,lv = 45},[6] = {id = 2002406,lv = 45},[7] = {id = 2002407,lv = 45},[8] = {id = 2002408,lv = 45}},mon = {id = 211,desc = "ds3-3-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 3,exert = 14,suffer = 21}},
			shl = {cha = "ds3",id = 5030321,cardId = 1102998,lv = 45,bklv = 6,star = 1,ghost = 11,equip = {[1] = {id = 2102401,lv = 45},[2] = {id = 2102402,lv = 45},[3] = {id = 2102403,lv = 45},[4] = {id = 2102404,lv = 45},[5] = {id = 2102405,lv = 45},[6] = {id = 2102406,lv = 45},[7] = {id = 2102407,lv = 45},[8] = {id = 2102408,lv = 45}},exWeapon = {[1] = 3,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 317,desc = "ds3-3-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 3,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "ds3",id = 5030330,cardId = 1101999,lv = 45,bklv = 6,star = 1,equip = {[1] = {id = 2002301,lv = 45},[2] = {id = 2002302,lv = 45},[3] = {id = 2002303,lv = 45},[4] = {id = 2002304,lv = 45},[5] = {id = 2002305,lv = 45},[6] = {id = 2002306,lv = 45},[7] = {id = 2002307,lv = 45},[8] = {id = 2002308,lv = 45}},mon = {id = 209,desc = "ds3-3-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 3,exert = 14,suffer = 21}},
			shl = {cha = "ds3",id = 5030331,cardId = 1102998,lv = 45,bklv = 6,star = 1,ghost = 11,equip = {[1] = {id = 2102301,lv = 45},[2] = {id = 2102302,lv = 45},[3] = {id = 2102303,lv = 45},[4] = {id = 2102304,lv = 45},[5] = {id = 2102305,lv = 45},[6] = {id = 2102306,lv = 45},[7] = {id = 2102307,lv = 45},[8] = {id = 2102308,lv = 45}},exWeapon = {[1] = 3,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 314,desc = "ds3-3-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 3,exert = 18,suffer = 25}}
		}
	},
	[50304] = {
		[1] = {
			jlr = {cha = "ds3",id = 5030410,cardId = 1101999,lv = 45,bklv = 6,star = 1,equip = {[1] = {id = 2002301,lv = 45},[2] = {id = 2002302,lv = 45},[3] = {id = 2002303,lv = 45},[4] = {id = 2002304,lv = 45},[5] = {id = 2002305,lv = 45},[6] = {id = 2002306,lv = 45},[7] = {id = 2002307,lv = 45},[8] = {id = 2002308,lv = 45}},mon = {id = 207,desc = "ds3-4-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "ds3",id = 5030411,cardId = 1102998,lv = 45,bklv = 6,star = 1,ghost = 11,equip = {[1] = {id = 2102301,lv = 45},[2] = {id = 2102302,lv = 45},[3] = {id = 2102303,lv = 45},[4] = {id = 2102304,lv = 45},[5] = {id = 2102305,lv = 45},[6] = {id = 2102306,lv = 45},[7] = {id = 2102307,lv = 45},[8] = {id = 2102308,lv = 45}},exWeapon = {[1] = 3,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 303,desc = "ds3-4-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "ds3",id = 5030420,cardId = 1101999,lv = 45,bklv = 6,star = 1,equip = {[1] = {id = 2002401,lv = 45},[2] = {id = 2002402,lv = 45},[3] = {id = 2002403,lv = 45},[4] = {id = 2002404,lv = 45},[5] = {id = 2002405,lv = 45},[6] = {id = 2002406,lv = 45},[7] = {id = 2002407,lv = 45},[8] = {id = 2002408,lv = 45}},mon = {id = 210,desc = "ds3-4-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "ds3",id = 5030421,cardId = 1102998,lv = 45,bklv = 6,star = 1,ghost = 11,equip = {[1] = {id = 2102401,lv = 45},[2] = {id = 2102402,lv = 45},[3] = {id = 2102403,lv = 45},[4] = {id = 2102404,lv = 45},[5] = {id = 2102405,lv = 45},[6] = {id = 2102406,lv = 45},[7] = {id = 2102407,lv = 45},[8] = {id = 2102408,lv = 45}},exWeapon = {[1] = 3,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 316,desc = "ds3-4-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "ds3",id = 5030430,cardId = 1101999,lv = 45,bklv = 6,star = 1,equip = {[1] = {id = 2002301,lv = 45},[2] = {id = 2002302,lv = 45},[3] = {id = 2002303,lv = 45},[4] = {id = 2002304,lv = 45},[5] = {id = 2002305,lv = 45},[6] = {id = 2002306,lv = 45},[7] = {id = 2002307,lv = 45},[8] = {id = 2002308,lv = 45}},mon = {id = 206,desc = "ds3-4-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "ds3",id = 5030431,cardId = 1102998,lv = 45,bklv = 6,star = 1,ghost = 11,equip = {[1] = {id = 2102301,lv = 45},[2] = {id = 2102302,lv = 45},[3] = {id = 2102303,lv = 45},[4] = {id = 2102304,lv = 45},[5] = {id = 2102305,lv = 45},[6] = {id = 2102306,lv = 45},[7] = {id = 2102307,lv = 45},[8] = {id = 2102308,lv = 45}},exWeapon = {[1] = 3,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 307,desc = "ds3-4-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		}
	},
	[50305] = {
		[1] = {
			jlr = {cha = "ds3",id = 5030510,cardId = 1101998,lv = 45,bklv = 6,star = 1,equip = {[1] = {id = 2002401,lv = 45},[2] = {id = 2002402,lv = 45},[3] = {id = 2002403,lv = 45},[4] = {id = 2002404,lv = 45},[5] = {id = 2002405,lv = 45},[6] = {id = 2002406,lv = 45},[7] = {id = 2002407,lv = 45},[8] = {id = 2002408,lv = 45}},mon = {id = 207,desc = "ds3-5-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 4,exert = 11,suffer = 21}},
			shl = {cha = "ds3",id = 5030511,cardId = 1102997,lv = 45,bklv = 6,star = 1,ghost = 11,equip = {[1] = {id = 2102401,lv = 45},[2] = {id = 2102402,lv = 45},[3] = {id = 2102403,lv = 45},[4] = {id = 2102404,lv = 45},[5] = {id = 2102405,lv = 45},[6] = {id = 2102406,lv = 45},[7] = {id = 2102407,lv = 45},[8] = {id = 2102408,lv = 45}},exWeapon = {[1] = 3,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 312,desc = "ds3-5-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 4,exert = 15,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "ds3",id = 5030520,cardId = 1101998,lv = 45,bklv = 6,star = 1,equip = {[1] = {id = 2002411,lv = 45},[2] = {id = 2002412,lv = 45},[3] = {id = 2002413,lv = 45},[4] = {id = 2002404,lv = 45},[5] = {id = 2002415,lv = 45},[6] = {id = 2002406,lv = 45},[7] = {id = 2002417,lv = 45},[8] = {id = 2002418,lv = 45}},mon = {id = 204,desc = "ds3-5-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 4,exert = 11,suffer = 21}},
			shl = {cha = "ds3",id = 5030521,cardId = 1102997,lv = 45,bklv = 6,star = 1,ghost = 11,equip = {[1] = {id = 2102411,lv = 45},[2] = {id = 2102412,lv = 45},[3] = {id = 2102413,lv = 45},[4] = {id = 2102404,lv = 45},[5] = {id = 2102415,lv = 45},[6] = {id = 2102406,lv = 45},[7] = {id = 2102417,lv = 45},[8] = {id = 2102418,lv = 45}},exWeapon = {[1] = 3,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 306,desc = "ds3-5-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 4,exert = 15,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "ds3",id = 5030530,cardId = 1101998,lv = 45,bklv = 6,star = 1,equip = {[1] = {id = 2002401,lv = 45},[2] = {id = 2002402,lv = 45},[3] = {id = 2002403,lv = 45},[4] = {id = 2002404,lv = 45},[5] = {id = 2002405,lv = 45},[6] = {id = 2002406,lv = 45},[7] = {id = 2002407,lv = 45},[8] = {id = 2002408,lv = 45}},mon = {id = 205,desc = "ds3-5-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 4,exert = 11,suffer = 21}},
			shl = {cha = "ds3",id = 5030531,cardId = 1102997,lv = 45,bklv = 6,star = 1,ghost = 11,equip = {[1] = {id = 2102401,lv = 45},[2] = {id = 2102402,lv = 45},[3] = {id = 2102403,lv = 45},[4] = {id = 2102404,lv = 45},[5] = {id = 2102405,lv = 45},[6] = {id = 2102406,lv = 45},[7] = {id = 2102407,lv = 45},[8] = {id = 2102408,lv = 45}},exWeapon = {[1] = 3,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 301,desc = "ds3-5-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 4,exert = 15,suffer = 25}}
		}
	},
	[50401] = {
		[1] = {
			jlr = {cha = "ds4",id = 5040110,cardId = 1101999,lv = 50,bklv = 7,star = 1,equip = {[1] = {id = 2002201,lv = 50},[2] = {id = 2002202,lv = 50},[3] = {id = 2002203,lv = 50},[4] = {id = 2002204,lv = 50},[5] = {id = 2002205,lv = 50},[6] = {id = 2002206,lv = 50},[7] = {id = 2002207,lv = 50},[8] = {id = 2002208,lv = 50}},mon = {id = 213,desc = "ds4-1-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 2,exert = 21,suffer = 21}},
			shl = {cha = "ds4",id = 5040111,cardId = 1102999,lv = 50,bklv = 7,star = 1,ghost = 13,equip = {[1] = {id = 2102201,lv = 50},[2] = {id = 2102202,lv = 50},[3] = {id = 2102203,lv = 50},[4] = {id = 2102204,lv = 50},[5] = {id = 2102205,lv = 50},[6] = {id = 2102206,lv = 50},[7] = {id = 2102207,lv = 50},[8] = {id = 2102208,lv = 50}},exWeapon = {[1] = 5,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 239,desc = "ds4-1-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 2,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "ds4",id = 5040120,cardId = 1101998,lv = 50,bklv = 7,star = 1,equip = {[1] = {id = 2002301,lv = 50},[2] = {id = 2002302,lv = 50},[3] = {id = 2002303,lv = 50},[4] = {id = 2002304,lv = 50},[5] = {id = 2002305,lv = 50},[6] = {id = 2002306,lv = 50},[7] = {id = 2002307,lv = 50},[8] = {id = 2002308,lv = 50}},mon = {id = 212,desc = "ds4-1-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 2,exert = 21,suffer = 21}},
			shl = {cha = "ds4",id = 5040121,cardId = 1102998,lv = 50,bklv = 7,star = 1,ghost = 13,equip = {[1] = {id = 2102301,lv = 50},[2] = {id = 2102302,lv = 50},[3] = {id = 2102303,lv = 50},[4] = {id = 2102304,lv = 50},[5] = {id = 2102305,lv = 50},[6] = {id = 2102306,lv = 50},[7] = {id = 2102307,lv = 50},[8] = {id = 2102308,lv = 50}},exWeapon = {[1] = 5,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 238,desc = "ds4-1-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 2,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "ds4",id = 5040130,cardId = 1101999,lv = 50,bklv = 7,star = 1,equip = {[1] = {id = 2002201,lv = 50},[2] = {id = 2002202,lv = 50},[3] = {id = 2002203,lv = 50},[4] = {id = 2002204,lv = 50},[5] = {id = 2002205,lv = 50},[6] = {id = 2002206,lv = 50},[7] = {id = 2002207,lv = 50},[8] = {id = 2002208,lv = 50}},mon = {id = 208,desc = "ds4-1-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 2,exert = 21,suffer = 21}},
			shl = {cha = "ds4",id = 5040131,cardId = 1102999,lv = 50,bklv = 7,star = 2,ghost = 13,equip = {[1] = {id = 2102201,lv = 50},[2] = {id = 2102202,lv = 50},[3] = {id = 2102203,lv = 50},[4] = {id = 2102204,lv = 50},[5] = {id = 2102205,lv = 50},[6] = {id = 2102206,lv = 50},[7] = {id = 2102207,lv = 50},[8] = {id = 2102208,lv = 50}},exWeapon = {[1] = 5,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 233,desc = "ds4-1-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 2,exert = 25,suffer = 25}}
		}
	},
	[50402] = {
		[1] = {
			jlr = {cha = "ds4",id = 5040210,cardId = 1101999,lv = 50,bklv = 7,star = 1,equip = {[1] = {id = 2002201,lv = 50},[2] = {id = 2002202,lv = 50},[3] = {id = 2002203,lv = 50},[4] = {id = 2002204,lv = 50},[5] = {id = 2002205,lv = 50},[6] = {id = 2002206,lv = 50},[7] = {id = 2002207,lv = 50},[8] = {id = 2002208,lv = 50}},mon = {id = 201,desc = "ds4-2-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 3,exert = 21,suffer = 21}},
			shl = {cha = "ds4",id = 5040211,cardId = 1102999,lv = 50,bklv = 7,star = 1,ghost = 13,equip = {[1] = {id = 2102201,lv = 50},[2] = {id = 2102202,lv = 50},[3] = {id = 2102203,lv = 50},[4] = {id = 2102204,lv = 50},[5] = {id = 2102205,lv = 50},[6] = {id = 2102206,lv = 50},[7] = {id = 2102207,lv = 50},[8] = {id = 2102208,lv = 50}},exWeapon = {[1] = 5,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 235,desc = "ds4-2-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 3,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "ds4",id = 5040220,cardId = 1101998,lv = 50,bklv = 7,star = 1,equip = {[1] = {id = 2002301,lv = 50},[2] = {id = 2002302,lv = 50},[3] = {id = 2002303,lv = 50},[4] = {id = 2002304,lv = 50},[5] = {id = 2002305,lv = 50},[6] = {id = 2002306,lv = 50},[7] = {id = 2002307,lv = 50},[8] = {id = 2002308,lv = 50}},mon = {id = 214,desc = "ds4-2-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 3,exert = 21,suffer = 21}},
			shl = {cha = "ds4",id = 5040221,cardId = 1102998,lv = 50,bklv = 7,star = 1,ghost = 13,equip = {[1] = {id = 2102301,lv = 50},[2] = {id = 2102302,lv = 50},[3] = {id = 2102303,lv = 50},[4] = {id = 2102304,lv = 50},[5] = {id = 2102305,lv = 50},[6] = {id = 2102306,lv = 50},[7] = {id = 2102307,lv = 50},[8] = {id = 2102308,lv = 50}},exWeapon = {[1] = 5,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 240,desc = "ds4-2-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 3,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "ds4",id = 5040230,cardId = 1101999,lv = 50,bklv = 7,star = 1,equip = {[1] = {id = 2002201,lv = 50},[2] = {id = 2002202,lv = 50},[3] = {id = 2002203,lv = 50},[4] = {id = 2002204,lv = 50},[5] = {id = 2002205,lv = 50},[6] = {id = 2002206,lv = 50},[7] = {id = 2002207,lv = 50},[8] = {id = 2002208,lv = 50}},mon = {id = 203,desc = "ds4-2-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 3,exert = 21,suffer = 21}},
			shl = {cha = "ds4",id = 5040231,cardId = 1102999,lv = 50,bklv = 7,star = 2,ghost = 13,equip = {[1] = {id = 2102201,lv = 50},[2] = {id = 2102202,lv = 50},[3] = {id = 2102203,lv = 50},[4] = {id = 2102204,lv = 50},[5] = {id = 2102205,lv = 50},[6] = {id = 2102206,lv = 50},[7] = {id = 2102207,lv = 50},[8] = {id = 2102208,lv = 50}},exWeapon = {[1] = 5,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 225,desc = "ds4-2-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 3,exert = 25,suffer = 25}}
		}
	},
	[50403] = {
		[1] = {
			jlr = {cha = "ds4",id = 5040310,cardId = 1101999,lv = 50,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 50},[2] = {id = 2002302,lv = 50},[3] = {id = 2002303,lv = 50},[4] = {id = 2002304,lv = 50},[5] = {id = 2002305,lv = 50},[6] = {id = 2002306,lv = 50},[7] = {id = 2002307,lv = 50},[8] = {id = 2002308,lv = 50}},mon = {id = 215,desc = "ds4-3-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 3,exert = 14,suffer = 21}},
			shl = {cha = "ds4",id = 5040311,cardId = 1102998,lv = 50,bklv = 7,star = 2,ghost = 13,equip = {[1] = {id = 2102301,lv = 50},[2] = {id = 2102302,lv = 50},[3] = {id = 2102303,lv = 50},[4] = {id = 2102304,lv = 50},[5] = {id = 2102305,lv = 50},[6] = {id = 2102306,lv = 50},[7] = {id = 2102307,lv = 50},[8] = {id = 2102308,lv = 50}},exWeapon = {[1] = 5,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 321,desc = "ds4-3-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 3,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "ds4",id = 5040320,cardId = 1101999,lv = 50,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 50},[2] = {id = 2002402,lv = 50},[3] = {id = 2002403,lv = 50},[4] = {id = 2002404,lv = 50},[5] = {id = 2002405,lv = 50},[6] = {id = 2002406,lv = 50},[7] = {id = 2002407,lv = 50},[8] = {id = 2002408,lv = 50}},mon = {id = 211,desc = "ds4-3-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 3,exert = 14,suffer = 21}},
			shl = {cha = "ds4",id = 5040321,cardId = 1102998,lv = 50,bklv = 7,star = 2,ghost = 13,equip = {[1] = {id = 2102401,lv = 50},[2] = {id = 2102402,lv = 50},[3] = {id = 2102403,lv = 50},[4] = {id = 2102404,lv = 50},[5] = {id = 2102405,lv = 50},[6] = {id = 2102406,lv = 50},[7] = {id = 2102407,lv = 50},[8] = {id = 2102408,lv = 50}},exWeapon = {[1] = 5,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 317,desc = "ds4-3-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 3,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "ds4",id = 5040330,cardId = 1101999,lv = 50,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 50},[2] = {id = 2002302,lv = 50},[3] = {id = 2002303,lv = 50},[4] = {id = 2002304,lv = 50},[5] = {id = 2002305,lv = 50},[6] = {id = 2002306,lv = 50},[7] = {id = 2002307,lv = 50},[8] = {id = 2002308,lv = 50}},mon = {id = 209,desc = "ds4-3-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 3,exert = 14,suffer = 21}},
			shl = {cha = "ds4",id = 5040331,cardId = 1102998,lv = 50,bklv = 7,star = 2,ghost = 13,equip = {[1] = {id = 2102301,lv = 50},[2] = {id = 2102302,lv = 50},[3] = {id = 2102303,lv = 50},[4] = {id = 2102304,lv = 50},[5] = {id = 2102305,lv = 50},[6] = {id = 2102306,lv = 50},[7] = {id = 2102307,lv = 50},[8] = {id = 2102308,lv = 50}},exWeapon = {[1] = 5,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 314,desc = "ds4-3-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 3,exert = 18,suffer = 25}}
		}
	},
	[50404] = {
		[1] = {
			jlr = {cha = "ds4",id = 5040410,cardId = 1101999,lv = 50,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 50},[2] = {id = 2002302,lv = 50},[3] = {id = 2002303,lv = 50},[4] = {id = 2002304,lv = 50},[5] = {id = 2002305,lv = 50},[6] = {id = 2002306,lv = 50},[7] = {id = 2002307,lv = 50},[8] = {id = 2002308,lv = 50}},mon = {id = 207,desc = "ds4-4-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "ds4",id = 5040411,cardId = 1102998,lv = 50,bklv = 7,star = 2,ghost = 13,equip = {[1] = {id = 2102301,lv = 50},[2] = {id = 2102302,lv = 50},[3] = {id = 2102303,lv = 50},[4] = {id = 2102304,lv = 50},[5] = {id = 2102305,lv = 50},[6] = {id = 2102306,lv = 50},[7] = {id = 2102307,lv = 50},[8] = {id = 2102308,lv = 50}},exWeapon = {[1] = 5,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 303,desc = "ds4-4-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "ds4",id = 5040420,cardId = 1101999,lv = 50,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 50},[2] = {id = 2002402,lv = 50},[3] = {id = 2002403,lv = 50},[4] = {id = 2002404,lv = 50},[5] = {id = 2002405,lv = 50},[6] = {id = 2002406,lv = 50},[7] = {id = 2002407,lv = 50},[8] = {id = 2002408,lv = 50}},mon = {id = 210,desc = "ds4-4-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "ds4",id = 5040421,cardId = 1102998,lv = 50,bklv = 7,star = 2,ghost = 13,equip = {[1] = {id = 2102401,lv = 50},[2] = {id = 2102402,lv = 50},[3] = {id = 2102403,lv = 50},[4] = {id = 2102404,lv = 50},[5] = {id = 2102405,lv = 50},[6] = {id = 2102406,lv = 50},[7] = {id = 2102407,lv = 50},[8] = {id = 2102408,lv = 50}},exWeapon = {[1] = 5,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 316,desc = "ds4-4-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "ds4",id = 5040430,cardId = 1101999,lv = 50,bklv = 7,star = 2,equip = {[1] = {id = 2002301,lv = 50},[2] = {id = 2002302,lv = 50},[3] = {id = 2002303,lv = 50},[4] = {id = 2002304,lv = 50},[5] = {id = 2002305,lv = 50},[6] = {id = 2002306,lv = 50},[7] = {id = 2002307,lv = 50},[8] = {id = 2002308,lv = 50}},mon = {id = 206,desc = "ds4-4-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "ds4",id = 5040431,cardId = 1102998,lv = 50,bklv = 7,star = 2,ghost = 13,equip = {[1] = {id = 2102301,lv = 50},[2] = {id = 2102302,lv = 50},[3] = {id = 2102303,lv = 50},[4] = {id = 2102304,lv = 50},[5] = {id = 2102305,lv = 50},[6] = {id = 2102306,lv = 50},[7] = {id = 2102307,lv = 50},[8] = {id = 2102308,lv = 50}},exWeapon = {[1] = 5,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 307,desc = "ds4-4-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		}
	},
	[50405] = {
		[1] = {
			jlr = {cha = "ds4",id = 5040510,cardId = 1101998,lv = 50,bklv = 7,star = 1,equip = {[1] = {id = 2002401,lv = 50},[2] = {id = 2002402,lv = 50},[3] = {id = 2002403,lv = 50},[4] = {id = 2002404,lv = 50},[5] = {id = 2002405,lv = 50},[6] = {id = 2002406,lv = 50},[7] = {id = 2002407,lv = 50},[8] = {id = 2002408,lv = 50}},mon = {id = 207,desc = "ds4-5-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 4,exert = 11,suffer = 21}},
			shl = {cha = "ds4",id = 5040511,cardId = 1102997,lv = 50,bklv = 7,star = 1,ghost = 13,equip = {[1] = {id = 2102401,lv = 50},[2] = {id = 2102402,lv = 50},[3] = {id = 2102403,lv = 50},[4] = {id = 2102404,lv = 50},[5] = {id = 2102405,lv = 50},[6] = {id = 2102406,lv = 50},[7] = {id = 2102407,lv = 50},[8] = {id = 2102408,lv = 50}},exWeapon = {[1] = 5,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 312,desc = "ds4-5-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 4,exert = 15,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "ds4",id = 5040520,cardId = 1101998,lv = 50,bklv = 7,star = 1,equip = {[1] = {id = 2002411,lv = 50},[2] = {id = 2002412,lv = 50},[3] = {id = 2002413,lv = 50},[4] = {id = 2002404,lv = 50},[5] = {id = 2002415,lv = 50},[6] = {id = 2002406,lv = 50},[7] = {id = 2002417,lv = 50},[8] = {id = 2002418,lv = 50}},mon = {id = 204,desc = "ds4-5-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 4,exert = 11,suffer = 21}},
			shl = {cha = "ds4",id = 5040521,cardId = 1102997,lv = 50,bklv = 7,star = 1,ghost = 13,equip = {[1] = {id = 2102411,lv = 50},[2] = {id = 2102412,lv = 50},[3] = {id = 2102413,lv = 50},[4] = {id = 2102404,lv = 50},[5] = {id = 2102415,lv = 50},[6] = {id = 2102406,lv = 50},[7] = {id = 2102417,lv = 50},[8] = {id = 2102418,lv = 50}},exWeapon = {[1] = 5,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 306,desc = "ds4-5-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 4,exert = 15,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "ds4",id = 5040530,cardId = 1101998,lv = 50,bklv = 7,star = 1,equip = {[1] = {id = 2002401,lv = 50},[2] = {id = 2002402,lv = 50},[3] = {id = 2002403,lv = 50},[4] = {id = 2002404,lv = 50},[5] = {id = 2002405,lv = 50},[6] = {id = 2002406,lv = 50},[7] = {id = 2002407,lv = 50},[8] = {id = 2002408,lv = 50}},mon = {id = 205,desc = "ds4-5-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 4,exert = 11,suffer = 21}},
			shl = {cha = "ds4",id = 5040531,cardId = 1102997,lv = 50,bklv = 7,star = 1,ghost = 13,equip = {[1] = {id = 2102401,lv = 50},[2] = {id = 2102402,lv = 50},[3] = {id = 2102403,lv = 50},[4] = {id = 2102404,lv = 50},[5] = {id = 2102405,lv = 50},[6] = {id = 2102406,lv = 50},[7] = {id = 2102407,lv = 50},[8] = {id = 2102408,lv = 50}},exWeapon = {[1] = 5,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 301,desc = "ds4-5-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 4,exert = 15,suffer = 25}}
		}
	},
	[50501] = {
		[1] = {
			jlr = {cha = "ds5",id = 5050110,cardId = 1101999,lv = 55,bklv = 7,star = 1,equip = {[1] = {id = 2003201,lv = 55},[2] = {id = 2003202,lv = 55},[3] = {id = 2003203,lv = 55},[4] = {id = 2003204,lv = 55},[5] = {id = 2003205,lv = 55},[6] = {id = 2003206,lv = 55},[7] = {id = 2003207,lv = 55},[8] = {id = 2003208,lv = 55}},mon = {id = 213,desc = "ds5-1-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 3,exert = 21,suffer = 21}},
			shl = {cha = "ds5",id = 5050111,cardId = 1102999,lv = 55,bklv = 8,star = 2,ghost = 15,equip = {[1] = {id = 2103201,lv = 55},[2] = {id = 2103202,lv = 55},[3] = {id = 2103203,lv = 55},[4] = {id = 2103204,lv = 55},[5] = {id = 2103205,lv = 55},[6] = {id = 2103206,lv = 55},[7] = {id = 2103207,lv = 55},[8] = {id = 2103208,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 239,desc = "ds5-1-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 3,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "ds5",id = 5050120,cardId = 1101998,lv = 55,bklv = 7,star = 1,equip = {[1] = {id = 2003301,lv = 55},[2] = {id = 2003302,lv = 55},[3] = {id = 2003303,lv = 55},[4] = {id = 2003304,lv = 55},[5] = {id = 2003305,lv = 55},[6] = {id = 2003306,lv = 55},[7] = {id = 2003307,lv = 55},[8] = {id = 2003308,lv = 55}},mon = {id = 212,desc = "ds5-1-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 3,exert = 21,suffer = 21}},
			shl = {cha = "ds5",id = 5050121,cardId = 1102998,lv = 55,bklv = 8,star = 1,ghost = 15,equip = {[1] = {id = 2103301,lv = 55},[2] = {id = 2103302,lv = 55},[3] = {id = 2103303,lv = 55},[4] = {id = 2103304,lv = 55},[5] = {id = 2103305,lv = 55},[6] = {id = 2103306,lv = 55},[7] = {id = 2103307,lv = 55},[8] = {id = 2103308,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 238,desc = "ds5-1-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 3,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "ds5",id = 5050130,cardId = 1101999,lv = 55,bklv = 7,star = 2,equip = {[1] = {id = 2003201,lv = 55},[2] = {id = 2003202,lv = 55},[3] = {id = 2003203,lv = 55},[4] = {id = 2003204,lv = 55},[5] = {id = 2003205,lv = 55},[6] = {id = 2003206,lv = 55},[7] = {id = 2003207,lv = 55},[8] = {id = 2003208,lv = 55}},mon = {id = 208,desc = "ds5-1-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 3,exert = 21,suffer = 21}},
			shl = {cha = "ds5",id = 5050131,cardId = 1102999,lv = 55,bklv = 8,star = 2,ghost = 15,equip = {[1] = {id = 2103201,lv = 55},[2] = {id = 2103202,lv = 55},[3] = {id = 2103203,lv = 55},[4] = {id = 2103204,lv = 55},[5] = {id = 2103205,lv = 55},[6] = {id = 2103206,lv = 55},[7] = {id = 2103207,lv = 55},[8] = {id = 2103208,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 233,desc = "ds5-1-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 3,exert = 25,suffer = 25}}
		}
	},
	[50502] = {
		[1] = {
			jlr = {cha = "ds5",id = 5050210,cardId = 1101999,lv = 55,bklv = 7,star = 1,equip = {[1] = {id = 2003201,lv = 55},[2] = {id = 2003202,lv = 55},[3] = {id = 2003203,lv = 55},[4] = {id = 2003204,lv = 55},[5] = {id = 2003205,lv = 55},[6] = {id = 2003206,lv = 55},[7] = {id = 2003207,lv = 55},[8] = {id = 2003208,lv = 55}},mon = {id = 201,desc = "ds5-2-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 4,exert = 21,suffer = 21}},
			shl = {cha = "ds5",id = 5050211,cardId = 1102999,lv = 55,bklv = 8,star = 2,ghost = 15,equip = {[1] = {id = 2103201,lv = 55},[2] = {id = 2103202,lv = 55},[3] = {id = 2103203,lv = 55},[4] = {id = 2103204,lv = 55},[5] = {id = 2103205,lv = 55},[6] = {id = 2103206,lv = 55},[7] = {id = 2103207,lv = 55},[8] = {id = 2103208,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 235,desc = "ds5-2-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 4,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "ds5",id = 5050220,cardId = 1101998,lv = 55,bklv = 7,star = 1,equip = {[1] = {id = 2003301,lv = 55},[2] = {id = 2003302,lv = 55},[3] = {id = 2003303,lv = 55},[4] = {id = 2003304,lv = 55},[5] = {id = 2003305,lv = 55},[6] = {id = 2003306,lv = 55},[7] = {id = 2003307,lv = 55},[8] = {id = 2003308,lv = 55}},mon = {id = 214,desc = "ds5-2-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 4,exert = 21,suffer = 21}},
			shl = {cha = "ds5",id = 5050221,cardId = 1102998,lv = 55,bklv = 8,star = 1,ghost = 15,equip = {[1] = {id = 2103301,lv = 55},[2] = {id = 2103302,lv = 55},[3] = {id = 2103303,lv = 55},[4] = {id = 2103304,lv = 55},[5] = {id = 2103305,lv = 55},[6] = {id = 2103306,lv = 55},[7] = {id = 2103307,lv = 55},[8] = {id = 2103308,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 240,desc = "ds5-2-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 4,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "ds5",id = 5050230,cardId = 1101999,lv = 55,bklv = 7,star = 2,equip = {[1] = {id = 2003201,lv = 55},[2] = {id = 2003202,lv = 55},[3] = {id = 2003203,lv = 55},[4] = {id = 2003204,lv = 55},[5] = {id = 2003205,lv = 55},[6] = {id = 2003206,lv = 55},[7] = {id = 2003207,lv = 55},[8] = {id = 2003208,lv = 55}},mon = {id = 203,desc = "ds5-2-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 4,exert = 21,suffer = 21}},
			shl = {cha = "ds5",id = 5050231,cardId = 1102999,lv = 55,bklv = 8,star = 2,ghost = 15,equip = {[1] = {id = 2103201,lv = 55},[2] = {id = 2103202,lv = 55},[3] = {id = 2103203,lv = 55},[4] = {id = 2103204,lv = 55},[5] = {id = 2103205,lv = 55},[6] = {id = 2103206,lv = 55},[7] = {id = 2103207,lv = 55},[8] = {id = 2103208,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 225,desc = "ds5-2-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 4,exert = 25,suffer = 25}}
		}
	},
	[50503] = {
		[1] = {
			jlr = {cha = "ds5",id = 5050310,cardId = 1101999,lv = 55,bklv = 7,star = 2,equip = {[1] = {id = 2003301,lv = 55},[2] = {id = 2003302,lv = 55},[3] = {id = 2003303,lv = 55},[4] = {id = 2003304,lv = 55},[5] = {id = 2003305,lv = 55},[6] = {id = 2003306,lv = 55},[7] = {id = 2003307,lv = 55},[8] = {id = 2003308,lv = 55}},mon = {id = 215,desc = "ds5-3-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "ds5",id = 5050311,cardId = 1102998,lv = 55,bklv = 8,star = 2,ghost = 15,equip = {[1] = {id = 2103301,lv = 55},[2] = {id = 2103302,lv = 55},[3] = {id = 2103303,lv = 55},[4] = {id = 2103304,lv = 55},[5] = {id = 2103305,lv = 55},[6] = {id = 2103306,lv = 55},[7] = {id = 2103307,lv = 55},[8] = {id = 2103308,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 321,desc = "ds5-3-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "ds5",id = 5050320,cardId = 1101999,lv = 55,bklv = 7,star = 2,equip = {[1] = {id = 2003401,lv = 55},[2] = {id = 2003402,lv = 55},[3] = {id = 2003403,lv = 55},[4] = {id = 2003404,lv = 55},[5] = {id = 2003405,lv = 55},[6] = {id = 2003406,lv = 55},[7] = {id = 2003407,lv = 55},[8] = {id = 2003408,lv = 55}},mon = {id = 211,desc = "ds5-3-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "ds5",id = 5050321,cardId = 1102998,lv = 55,bklv = 8,star = 2,ghost = 15,equip = {[1] = {id = 2103401,lv = 55},[2] = {id = 2103402,lv = 55},[3] = {id = 2103403,lv = 55},[4] = {id = 2103404,lv = 55},[5] = {id = 2103405,lv = 55},[6] = {id = 2103406,lv = 55},[7] = {id = 2103407,lv = 55},[8] = {id = 2103408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 317,desc = "ds5-3-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "ds5",id = 5050330,cardId = 1101999,lv = 55,bklv = 7,star = 2,equip = {[1] = {id = 2003301,lv = 55},[2] = {id = 2003302,lv = 55},[3] = {id = 2003303,lv = 55},[4] = {id = 2003304,lv = 55},[5] = {id = 2003305,lv = 55},[6] = {id = 2003306,lv = 55},[7] = {id = 2003307,lv = 55},[8] = {id = 2003308,lv = 55}},mon = {id = 209,desc = "ds5-3-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "ds5",id = 5050331,cardId = 1102998,lv = 55,bklv = 8,star = 2,ghost = 15,equip = {[1] = {id = 2103301,lv = 55},[2] = {id = 2103302,lv = 55},[3] = {id = 2103303,lv = 55},[4] = {id = 2103304,lv = 55},[5] = {id = 2103305,lv = 55},[6] = {id = 2103306,lv = 55},[7] = {id = 2103307,lv = 55},[8] = {id = 2103308,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 314,desc = "ds5-3-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		}
	},
	[50504] = {
		[1] = {
			jlr = {cha = "ds5",id = 5050410,cardId = 1101999,lv = 55,bklv = 7,star = 2,equip = {[1] = {id = 2003301,lv = 55},[2] = {id = 2003302,lv = 55},[3] = {id = 2003303,lv = 55},[4] = {id = 2003304,lv = 55},[5] = {id = 2003305,lv = 55},[6] = {id = 2003306,lv = 55},[7] = {id = 2003307,lv = 55},[8] = {id = 2003308,lv = 55}},mon = {id = 207,desc = "ds5-4-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 5,exert = 14,suffer = 21}},
			shl = {cha = "ds5",id = 5050411,cardId = 1102998,lv = 55,bklv = 8,star = 2,ghost = 15,equip = {[1] = {id = 2103301,lv = 55},[2] = {id = 2103302,lv = 55},[3] = {id = 2103303,lv = 55},[4] = {id = 2103304,lv = 55},[5] = {id = 2103305,lv = 55},[6] = {id = 2103306,lv = 55},[7] = {id = 2103307,lv = 55},[8] = {id = 2103308,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 303,desc = "ds5-4-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 5,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "ds5",id = 5050420,cardId = 1101999,lv = 55,bklv = 7,star = 2,equip = {[1] = {id = 2003401,lv = 55},[2] = {id = 2003402,lv = 55},[3] = {id = 2003403,lv = 55},[4] = {id = 2003404,lv = 55},[5] = {id = 2003405,lv = 55},[6] = {id = 2003406,lv = 55},[7] = {id = 2003407,lv = 55},[8] = {id = 2003408,lv = 55}},mon = {id = 210,desc = "ds5-4-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 5,exert = 14,suffer = 21}},
			shl = {cha = "ds5",id = 5050421,cardId = 1102998,lv = 55,bklv = 8,star = 2,ghost = 15,equip = {[1] = {id = 2103401,lv = 55},[2] = {id = 2103402,lv = 55},[3] = {id = 2103403,lv = 55},[4] = {id = 2103404,lv = 55},[5] = {id = 2103405,lv = 55},[6] = {id = 2103406,lv = 55},[7] = {id = 2103407,lv = 55},[8] = {id = 2103408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 316,desc = "ds5-4-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 5,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "ds5",id = 5050430,cardId = 1101999,lv = 55,bklv = 7,star = 2,equip = {[1] = {id = 2003301,lv = 55},[2] = {id = 2003302,lv = 55},[3] = {id = 2003303,lv = 55},[4] = {id = 2003304,lv = 55},[5] = {id = 2003305,lv = 55},[6] = {id = 2003306,lv = 55},[7] = {id = 2003307,lv = 55},[8] = {id = 2003308,lv = 55}},mon = {id = 206,desc = "ds5-4-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 5,exert = 14,suffer = 21}},
			shl = {cha = "ds5",id = 5050431,cardId = 1102998,lv = 55,bklv = 8,star = 2,ghost = 15,equip = {[1] = {id = 2103301,lv = 55},[2] = {id = 2103302,lv = 55},[3] = {id = 2103303,lv = 55},[4] = {id = 2103304,lv = 55},[5] = {id = 2103305,lv = 55},[6] = {id = 2103306,lv = 55},[7] = {id = 2103307,lv = 55},[8] = {id = 2103308,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 307,desc = "ds5-4-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 5,exert = 18,suffer = 25}}
		}
	},
	[50505] = {
		[1] = {
			jlr = {cha = "ds5",id = 5050510,cardId = 1101998,lv = 55,bklv = 7,star = 1,equip = {[1] = {id = 2003401,lv = 55},[2] = {id = 2003402,lv = 55},[3] = {id = 2003403,lv = 55},[4] = {id = 2003404,lv = 55},[5] = {id = 2003405,lv = 55},[6] = {id = 2003406,lv = 55},[7] = {id = 2003407,lv = 55},[8] = {id = 2003408,lv = 55}},mon = {id = 207,desc = "ds5-5-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 5,exert = 11,suffer = 21}},
			shl = {cha = "ds5",id = 5050511,cardId = 1102997,lv = 55,bklv = 8,star = 2,ghost = 15,equip = {[1] = {id = 2103401,lv = 55},[2] = {id = 2103402,lv = 55},[3] = {id = 2103403,lv = 55},[4] = {id = 2103404,lv = 55},[5] = {id = 2103405,lv = 55},[6] = {id = 2103406,lv = 55},[7] = {id = 2103407,lv = 55},[8] = {id = 2103408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 312,desc = "ds5-5-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 5,exert = 15,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "ds5",id = 5050520,cardId = 1101998,lv = 55,bklv = 7,star = 1,equip = {[1] = {id = 2003421,lv = 55},[2] = {id = 2003422,lv = 55},[3] = {id = 2003423,lv = 55},[4] = {id = 2003424,lv = 55},[5] = {id = 2003425,lv = 55},[6] = {id = 2003426,lv = 55},[7] = {id = 2003407,lv = 55},[8] = {id = 2003408,lv = 55}},mon = {id = 204,desc = "ds5-5-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 5,exert = 11,suffer = 21}},
			shl = {cha = "ds5",id = 5050521,cardId = 1102997,lv = 55,bklv = 8,star = 2,ghost = 15,equip = {[1] = {id = 2103421,lv = 55},[2] = {id = 2103422,lv = 55},[3] = {id = 2103423,lv = 55},[4] = {id = 2103424,lv = 55},[5] = {id = 2103425,lv = 55},[6] = {id = 2103426,lv = 55},[7] = {id = 2103407,lv = 55},[8] = {id = 2103408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 306,desc = "ds5-5-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 5,exert = 15,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "ds5",id = 5050530,cardId = 1101998,lv = 55,bklv = 7,star = 1,equip = {[1] = {id = 2003401,lv = 55},[2] = {id = 2003402,lv = 55},[3] = {id = 2003403,lv = 55},[4] = {id = 2003404,lv = 55},[5] = {id = 2003405,lv = 55},[6] = {id = 2003406,lv = 55},[7] = {id = 2003407,lv = 55},[8] = {id = 2003408,lv = 55}},mon = {id = 205,desc = "ds5-5-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 5,exert = 11,suffer = 21}},
			shl = {cha = "ds5",id = 5050531,cardId = 1102997,lv = 55,bklv = 8,star = 2,ghost = 15,equip = {[1] = {id = 2103401,lv = 55},[2] = {id = 2103402,lv = 55},[3] = {id = 2103403,lv = 55},[4] = {id = 2103404,lv = 55},[5] = {id = 2103405,lv = 55},[6] = {id = 2103406,lv = 55},[7] = {id = 2103407,lv = 55},[8] = {id = 2103408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 301,desc = "ds5-5-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 5,exert = 15,suffer = 25}}
		}
	},
	[50601] = {
		[1] = {
			jlr = {cha = "ds6",id = 5060110,cardId = 1101999,lv = 60,bklv = 8,star = 2,equip = {[1] = {id = 2003201,lv = 60},[2] = {id = 2003202,lv = 60},[3] = {id = 2003203,lv = 60},[4] = {id = 2003204,lv = 60},[5] = {id = 2003205,lv = 60},[6] = {id = 2003206,lv = 60},[7] = {id = 2003207,lv = 60},[8] = {id = 2003208,lv = 60}},mon = {id = 213,desc = "ds6-1-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 3,exert = 21,suffer = 21}},
			shl = {cha = "ds6",id = 5060111,cardId = 1102999,lv = 60,bklv = 9,star = 2,ghost = 17,equip = {[1] = {id = 2103201,lv = 60},[2] = {id = 2103202,lv = 60},[3] = {id = 2103203,lv = 60},[4] = {id = 2103204,lv = 60},[5] = {id = 2103205,lv = 60},[6] = {id = 2103206,lv = 60},[7] = {id = 2103207,lv = 60},[8] = {id = 2103208,lv = 60}},exWeapon = {[1] = 5,[2] = 2,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 239,desc = "ds6-1-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 3,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "ds6",id = 5060120,cardId = 1101998,lv = 60,bklv = 8,star = 1,equip = {[1] = {id = 2003301,lv = 60},[2] = {id = 2003302,lv = 60},[3] = {id = 2003303,lv = 60},[4] = {id = 2003304,lv = 60},[5] = {id = 2003305,lv = 60},[6] = {id = 2003306,lv = 60},[7] = {id = 2003307,lv = 60},[8] = {id = 2003308,lv = 60}},mon = {id = 212,desc = "ds6-1-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 3,exert = 21,suffer = 21}},
			shl = {cha = "ds6",id = 5060121,cardId = 1102998,lv = 60,bklv = 9,star = 2,ghost = 17,equip = {[1] = {id = 2103301,lv = 60},[2] = {id = 2103302,lv = 60},[3] = {id = 2103303,lv = 60},[4] = {id = 2103304,lv = 60},[5] = {id = 2103305,lv = 60},[6] = {id = 2103306,lv = 60},[7] = {id = 2103307,lv = 60},[8] = {id = 2103308,lv = 60}},exWeapon = {[1] = 5,[2] = 2,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 238,desc = "ds6-1-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 3,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "ds6",id = 5060130,cardId = 1101999,lv = 60,bklv = 8,star = 2,equip = {[1] = {id = 2003201,lv = 60},[2] = {id = 2003202,lv = 60},[3] = {id = 2003203,lv = 60},[4] = {id = 2003204,lv = 60},[5] = {id = 2003205,lv = 60},[6] = {id = 2003206,lv = 60},[7] = {id = 2003207,lv = 60},[8] = {id = 2003208,lv = 60}},mon = {id = 208,desc = "ds6-1-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 3,exert = 21,suffer = 21}},
			shl = {cha = "ds6",id = 5060131,cardId = 1102999,lv = 60,bklv = 9,star = 2,ghost = 17,equip = {[1] = {id = 2103201,lv = 60},[2] = {id = 2103202,lv = 60},[3] = {id = 2103203,lv = 60},[4] = {id = 2103204,lv = 60},[5] = {id = 2103205,lv = 60},[6] = {id = 2103206,lv = 60},[7] = {id = 2103207,lv = 60},[8] = {id = 2103208,lv = 60}},exWeapon = {[1] = 5,[2] = 2,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 233,desc = "ds6-1-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 3,exert = 25,suffer = 25}}
		}
	},
	[50602] = {
		[1] = {
			jlr = {cha = "ds6",id = 5060210,cardId = 1101999,lv = 60,bklv = 8,star = 2,equip = {[1] = {id = 2003201,lv = 60},[2] = {id = 2003202,lv = 60},[3] = {id = 2003203,lv = 60},[4] = {id = 2003204,lv = 60},[5] = {id = 2003205,lv = 60},[6] = {id = 2003206,lv = 60},[7] = {id = 2003207,lv = 60},[8] = {id = 2003208,lv = 60}},mon = {id = 201,desc = "ds6-2-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 4,exert = 21,suffer = 21}},
			shl = {cha = "ds6",id = 5060211,cardId = 1102999,lv = 60,bklv = 9,star = 2,ghost = 17,equip = {[1] = {id = 2103201,lv = 60},[2] = {id = 2103202,lv = 60},[3] = {id = 2103203,lv = 60},[4] = {id = 2103204,lv = 60},[5] = {id = 2103205,lv = 60},[6] = {id = 2103206,lv = 60},[7] = {id = 2103207,lv = 60},[8] = {id = 2103208,lv = 60}},exWeapon = {[1] = 5,[2] = 2,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 235,desc = "ds6-2-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 4,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "ds6",id = 5060220,cardId = 1101998,lv = 60,bklv = 8,star = 1,equip = {[1] = {id = 2003301,lv = 60},[2] = {id = 2003302,lv = 60},[3] = {id = 2003303,lv = 60},[4] = {id = 2003304,lv = 60},[5] = {id = 2003305,lv = 60},[6] = {id = 2003306,lv = 60},[7] = {id = 2003307,lv = 60},[8] = {id = 2003308,lv = 60}},mon = {id = 214,desc = "ds6-2-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 4,exert = 21,suffer = 21}},
			shl = {cha = "ds6",id = 5060221,cardId = 1102998,lv = 60,bklv = 9,star = 2,ghost = 17,equip = {[1] = {id = 2103301,lv = 60},[2] = {id = 2103302,lv = 60},[3] = {id = 2103303,lv = 60},[4] = {id = 2103304,lv = 60},[5] = {id = 2103305,lv = 60},[6] = {id = 2103306,lv = 60},[7] = {id = 2103307,lv = 60},[8] = {id = 2103308,lv = 60}},exWeapon = {[1] = 5,[2] = 2,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 240,desc = "ds6-2-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 4,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "ds6",id = 5060230,cardId = 1101999,lv = 60,bklv = 8,star = 2,equip = {[1] = {id = 2003201,lv = 60},[2] = {id = 2003202,lv = 60},[3] = {id = 2003203,lv = 60},[4] = {id = 2003204,lv = 60},[5] = {id = 2003205,lv = 60},[6] = {id = 2003206,lv = 60},[7] = {id = 2003207,lv = 60},[8] = {id = 2003208,lv = 60}},mon = {id = 203,desc = "ds6-2-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 4,exert = 21,suffer = 21}},
			shl = {cha = "ds6",id = 5060231,cardId = 1102999,lv = 60,bklv = 9,star = 2,ghost = 17,equip = {[1] = {id = 2103201,lv = 60},[2] = {id = 2103202,lv = 60},[3] = {id = 2103203,lv = 60},[4] = {id = 2103204,lv = 60},[5] = {id = 2103205,lv = 60},[6] = {id = 2103206,lv = 60},[7] = {id = 2103207,lv = 60},[8] = {id = 2103208,lv = 60}},exWeapon = {[1] = 5,[2] = 2,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 225,desc = "ds6-2-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 4,exert = 25,suffer = 25}}
		}
	},
	[50603] = {
		[1] = {
			jlr = {cha = "ds6",id = 5060310,cardId = 1101999,lv = 60,bklv = 8,star = 2,equip = {[1] = {id = 2003301,lv = 60},[2] = {id = 2003302,lv = 60},[3] = {id = 2003303,lv = 60},[4] = {id = 2003304,lv = 60},[5] = {id = 2003305,lv = 60},[6] = {id = 2003306,lv = 60},[7] = {id = 2003307,lv = 60},[8] = {id = 2003308,lv = 60}},mon = {id = 215,desc = "ds6-3-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "ds6",id = 5060311,cardId = 1102998,lv = 60,bklv = 9,star = 2,ghost = 17,equip = {[1] = {id = 2103301,lv = 60},[2] = {id = 2103302,lv = 60},[3] = {id = 2103303,lv = 60},[4] = {id = 2103304,lv = 60},[5] = {id = 2103305,lv = 60},[6] = {id = 2103306,lv = 60},[7] = {id = 2103307,lv = 60},[8] = {id = 2103308,lv = 60}},exWeapon = {[1] = 5,[2] = 2,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 321,desc = "ds6-3-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "ds6",id = 5060320,cardId = 1101999,lv = 60,bklv = 8,star = 2,equip = {[1] = {id = 2003401,lv = 60},[2] = {id = 2003402,lv = 60},[3] = {id = 2003403,lv = 60},[4] = {id = 2003404,lv = 60},[5] = {id = 2003405,lv = 60},[6] = {id = 2003406,lv = 60},[7] = {id = 2003407,lv = 60},[8] = {id = 2003408,lv = 60}},mon = {id = 211,desc = "ds6-3-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "ds6",id = 5060321,cardId = 1102998,lv = 60,bklv = 9,star = 2,ghost = 17,equip = {[1] = {id = 2103401,lv = 60},[2] = {id = 2103402,lv = 60},[3] = {id = 2103403,lv = 60},[4] = {id = 2103404,lv = 60},[5] = {id = 2103405,lv = 60},[6] = {id = 2103406,lv = 60},[7] = {id = 2103407,lv = 60},[8] = {id = 2103408,lv = 60}},exWeapon = {[1] = 5,[2] = 2,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 317,desc = "ds6-3-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "ds6",id = 5060330,cardId = 1101999,lv = 60,bklv = 8,star = 2,equip = {[1] = {id = 2003301,lv = 60},[2] = {id = 2003302,lv = 60},[3] = {id = 2003303,lv = 60},[4] = {id = 2003304,lv = 60},[5] = {id = 2003305,lv = 60},[6] = {id = 2003306,lv = 60},[7] = {id = 2003307,lv = 60},[8] = {id = 2003308,lv = 60}},mon = {id = 209,desc = "ds6-3-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "ds6",id = 5060331,cardId = 1102998,lv = 60,bklv = 9,star = 2,ghost = 17,equip = {[1] = {id = 2103301,lv = 60},[2] = {id = 2103302,lv = 60},[3] = {id = 2103303,lv = 60},[4] = {id = 2103304,lv = 60},[5] = {id = 2103305,lv = 60},[6] = {id = 2103306,lv = 60},[7] = {id = 2103307,lv = 60},[8] = {id = 2103308,lv = 60}},exWeapon = {[1] = 5,[2] = 2,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 314,desc = "ds6-3-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		}
	},
	[50604] = {
		[1] = {
			jlr = {cha = "ds6",id = 5060410,cardId = 1101999,lv = 60,bklv = 8,star = 2,equip = {[1] = {id = 2003301,lv = 60},[2] = {id = 2003302,lv = 60},[3] = {id = 2003303,lv = 60},[4] = {id = 2003304,lv = 60},[5] = {id = 2003305,lv = 60},[6] = {id = 2003306,lv = 60},[7] = {id = 2003307,lv = 60},[8] = {id = 2003308,lv = 60}},mon = {id = 207,desc = "ds6-4-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 5,exert = 14,suffer = 21}},
			shl = {cha = "ds6",id = 5060411,cardId = 1102998,lv = 60,bklv = 9,star = 2,ghost = 17,equip = {[1] = {id = 2103301,lv = 60},[2] = {id = 2103302,lv = 60},[3] = {id = 2103303,lv = 60},[4] = {id = 2103304,lv = 60},[5] = {id = 2103305,lv = 60},[6] = {id = 2103306,lv = 60},[7] = {id = 2103307,lv = 60},[8] = {id = 2103308,lv = 60}},exWeapon = {[1] = 5,[2] = 2,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 303,desc = "ds6-4-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 5,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "ds6",id = 5060420,cardId = 1101999,lv = 60,bklv = 8,star = 2,equip = {[1] = {id = 2003401,lv = 60},[2] = {id = 2003402,lv = 60},[3] = {id = 2003403,lv = 60},[4] = {id = 2003404,lv = 60},[5] = {id = 2003405,lv = 60},[6] = {id = 2003406,lv = 60},[7] = {id = 2003407,lv = 60},[8] = {id = 2003408,lv = 60}},mon = {id = 210,desc = "ds6-4-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 5,exert = 14,suffer = 21}},
			shl = {cha = "ds6",id = 5060421,cardId = 1102998,lv = 60,bklv = 9,star = 2,ghost = 17,equip = {[1] = {id = 2103401,lv = 60},[2] = {id = 2103402,lv = 60},[3] = {id = 2103403,lv = 60},[4] = {id = 2103404,lv = 60},[5] = {id = 2103405,lv = 60},[6] = {id = 2103406,lv = 60},[7] = {id = 2103407,lv = 60},[8] = {id = 2103408,lv = 60}},exWeapon = {[1] = 5,[2] = 2,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 316,desc = "ds6-4-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 5,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "ds6",id = 5060430,cardId = 1101999,lv = 60,bklv = 8,star = 2,equip = {[1] = {id = 2003301,lv = 60},[2] = {id = 2003302,lv = 60},[3] = {id = 2003303,lv = 60},[4] = {id = 2003304,lv = 60},[5] = {id = 2003305,lv = 60},[6] = {id = 2003306,lv = 60},[7] = {id = 2003307,lv = 60},[8] = {id = 2003308,lv = 60}},mon = {id = 206,desc = "ds6-4-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 5,exert = 14,suffer = 21}},
			shl = {cha = "ds6",id = 5060431,cardId = 1102998,lv = 60,bklv = 9,star = 2,ghost = 17,equip = {[1] = {id = 2103301,lv = 60},[2] = {id = 2103302,lv = 60},[3] = {id = 2103303,lv = 60},[4] = {id = 2103304,lv = 60},[5] = {id = 2103305,lv = 60},[6] = {id = 2103306,lv = 60},[7] = {id = 2103307,lv = 60},[8] = {id = 2103308,lv = 60}},exWeapon = {[1] = 5,[2] = 2,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 307,desc = "ds6-4-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 5,exert = 18,suffer = 25}}
		}
	},
	[50605] = {
		[1] = {
			jlr = {cha = "ds6",id = 5060510,cardId = 1101998,lv = 60,bklv = 8,star = 2,equip = {[1] = {id = 2003401,lv = 60},[2] = {id = 2003402,lv = 60},[3] = {id = 2003403,lv = 60},[4] = {id = 2003404,lv = 60},[5] = {id = 2003405,lv = 60},[6] = {id = 2003406,lv = 60},[7] = {id = 2003407,lv = 60},[8] = {id = 2003408,lv = 60}},mon = {id = 207,desc = "ds6-5-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 5,exert = 11,suffer = 21}},
			shl = {cha = "ds6",id = 5060511,cardId = 1102997,lv = 60,bklv = 9,star = 2,ghost = 17,equip = {[1] = {id = 2103401,lv = 60},[2] = {id = 2103402,lv = 60},[3] = {id = 2103403,lv = 60},[4] = {id = 2103404,lv = 60},[5] = {id = 2103405,lv = 60},[6] = {id = 2103406,lv = 60},[7] = {id = 2103407,lv = 60},[8] = {id = 2103408,lv = 60}},exWeapon = {[1] = 5,[2] = 2,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 312,desc = "ds6-5-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 5,exert = 15,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "ds6",id = 5060520,cardId = 1101998,lv = 60,bklv = 8,star = 2,equip = {[1] = {id = 2003421,lv = 60},[2] = {id = 2003422,lv = 60},[3] = {id = 2003423,lv = 60},[4] = {id = 2003424,lv = 60},[5] = {id = 2003425,lv = 60},[6] = {id = 2003426,lv = 60},[7] = {id = 2003407,lv = 60},[8] = {id = 2003408,lv = 60}},mon = {id = 204,desc = "ds6-5-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 5,exert = 11,suffer = 21}},
			shl = {cha = "ds6",id = 5060521,cardId = 1102997,lv = 60,bklv = 9,star = 2,ghost = 17,equip = {[1] = {id = 2103421,lv = 60},[2] = {id = 2103422,lv = 60},[3] = {id = 2103423,lv = 60},[4] = {id = 2103424,lv = 60},[5] = {id = 2103425,lv = 60},[6] = {id = 2103426,lv = 60},[7] = {id = 2103407,lv = 60},[8] = {id = 2103408,lv = 60}},exWeapon = {[1] = 5,[2] = 2,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 306,desc = "ds6-5-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 5,exert = 15,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "ds6",id = 5060530,cardId = 1101998,lv = 60,bklv = 8,star = 2,equip = {[1] = {id = 2003401,lv = 60},[2] = {id = 2003402,lv = 60},[3] = {id = 2003403,lv = 60},[4] = {id = 2003404,lv = 60},[5] = {id = 2003405,lv = 60},[6] = {id = 2003406,lv = 60},[7] = {id = 2003407,lv = 60},[8] = {id = 2003408,lv = 60}},mon = {id = 205,desc = "ds6-5-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 5,exert = 11,suffer = 21}},
			shl = {cha = "ds6",id = 5060531,cardId = 1102997,lv = 60,bklv = 9,star = 2,ghost = 17,equip = {[1] = {id = 2103401,lv = 60},[2] = {id = 2103402,lv = 60},[3] = {id = 2103403,lv = 60},[4] = {id = 2103404,lv = 60},[5] = {id = 2103405,lv = 60},[6] = {id = 2103406,lv = 60},[7] = {id = 2103407,lv = 60},[8] = {id = 2103408,lv = 60}},exWeapon = {[1] = 5,[2] = 2,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 301,desc = "ds6-5-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 5,exert = 15,suffer = 25}}
		}
	},
	[50701] = {
		[1] = {
			jlr = {cha = "ds7",id = 5070110,cardId = 1101999,lv = 65,bklv = 9,star = 2,equip = {[1] = {id = 2003201,lv = 65},[2] = {id = 2003202,lv = 65},[3] = {id = 2003203,lv = 65},[4] = {id = 2003204,lv = 65},[5] = {id = 2003205,lv = 65},[6] = {id = 2003206,lv = 65},[7] = {id = 2003207,lv = 65},[8] = {id = 2003208,lv = 65}},mon = {id = 213,desc = "ds7-1-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 3,exert = 21,suffer = 21}},
			shl = {cha = "ds7",id = 5070111,cardId = 1102999,lv = 65,bklv = 10,star = 2,ghost = 19,equip = {[1] = {id = 2103201,lv = 65},[2] = {id = 2103202,lv = 65},[3] = {id = 2103203,lv = 65},[4] = {id = 2103204,lv = 65},[5] = {id = 2103205,lv = 65},[6] = {id = 2103206,lv = 65},[7] = {id = 2103207,lv = 65},[8] = {id = 2103208,lv = 65}},exWeapon = {[1] = 5,[2] = 3,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 239,desc = "ds7-1-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 3,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "ds7",id = 5070120,cardId = 1101998,lv = 65,bklv = 9,star = 2,equip = {[1] = {id = 2003301,lv = 65},[2] = {id = 2003302,lv = 65},[3] = {id = 2003303,lv = 65},[4] = {id = 2003304,lv = 65},[5] = {id = 2003305,lv = 65},[6] = {id = 2003306,lv = 65},[7] = {id = 2003307,lv = 65},[8] = {id = 2003308,lv = 65}},mon = {id = 212,desc = "ds7-1-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 3,exert = 21,suffer = 21}},
			shl = {cha = "ds7",id = 5070121,cardId = 1102998,lv = 65,bklv = 10,star = 2,ghost = 19,equip = {[1] = {id = 2103301,lv = 65},[2] = {id = 2103302,lv = 65},[3] = {id = 2103303,lv = 65},[4] = {id = 2103304,lv = 65},[5] = {id = 2103305,lv = 65},[6] = {id = 2103306,lv = 65},[7] = {id = 2103307,lv = 65},[8] = {id = 2103308,lv = 65}},exWeapon = {[1] = 5,[2] = 3,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 238,desc = "ds7-1-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 3,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "ds7",id = 5070130,cardId = 1101999,lv = 65,bklv = 9,star = 2,equip = {[1] = {id = 2003201,lv = 65},[2] = {id = 2003202,lv = 65},[3] = {id = 2003203,lv = 65},[4] = {id = 2003204,lv = 65},[5] = {id = 2003205,lv = 65},[6] = {id = 2003206,lv = 65},[7] = {id = 2003207,lv = 65},[8] = {id = 2003208,lv = 65}},mon = {id = 208,desc = "ds7-1-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 3,exert = 21,suffer = 21}},
			shl = {cha = "ds7",id = 5070131,cardId = 1102999,lv = 65,bklv = 10,star = 2,ghost = 19,equip = {[1] = {id = 2103201,lv = 65},[2] = {id = 2103202,lv = 65},[3] = {id = 2103203,lv = 65},[4] = {id = 2103204,lv = 65},[5] = {id = 2103205,lv = 65},[6] = {id = 2103206,lv = 65},[7] = {id = 2103207,lv = 65},[8] = {id = 2103208,lv = 65}},exWeapon = {[1] = 5,[2] = 3,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 233,desc = "ds7-1-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 3,exert = 25,suffer = 25}}
		}
	},
	[50702] = {
		[1] = {
			jlr = {cha = "ds7",id = 5070210,cardId = 1101999,lv = 65,bklv = 9,star = 2,equip = {[1] = {id = 2003201,lv = 65},[2] = {id = 2003202,lv = 65},[3] = {id = 2003203,lv = 65},[4] = {id = 2003204,lv = 65},[5] = {id = 2003205,lv = 65},[6] = {id = 2003206,lv = 65},[7] = {id = 2003207,lv = 65},[8] = {id = 2003208,lv = 65}},mon = {id = 201,desc = "ds7-2-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 4,exert = 21,suffer = 21}},
			shl = {cha = "ds7",id = 5070211,cardId = 1102999,lv = 65,bklv = 10,star = 2,ghost = 19,equip = {[1] = {id = 2103201,lv = 65},[2] = {id = 2103202,lv = 65},[3] = {id = 2103203,lv = 65},[4] = {id = 2103204,lv = 65},[5] = {id = 2103205,lv = 65},[6] = {id = 2103206,lv = 65},[7] = {id = 2103207,lv = 65},[8] = {id = 2103208,lv = 65}},exWeapon = {[1] = 5,[2] = 3,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 235,desc = "ds7-2-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 4,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "ds7",id = 5070220,cardId = 1101998,lv = 65,bklv = 9,star = 2,equip = {[1] = {id = 2003301,lv = 65},[2] = {id = 2003302,lv = 65},[3] = {id = 2003303,lv = 65},[4] = {id = 2003304,lv = 65},[5] = {id = 2003305,lv = 65},[6] = {id = 2003306,lv = 65},[7] = {id = 2003307,lv = 65},[8] = {id = 2003308,lv = 65}},mon = {id = 214,desc = "ds7-2-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 4,exert = 21,suffer = 21}},
			shl = {cha = "ds7",id = 5070221,cardId = 1102998,lv = 65,bklv = 10,star = 2,ghost = 19,equip = {[1] = {id = 2103301,lv = 65},[2] = {id = 2103302,lv = 65},[3] = {id = 2103303,lv = 65},[4] = {id = 2103304,lv = 65},[5] = {id = 2103305,lv = 65},[6] = {id = 2103306,lv = 65},[7] = {id = 2103307,lv = 65},[8] = {id = 2103308,lv = 65}},exWeapon = {[1] = 5,[2] = 3,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 240,desc = "ds7-2-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 4,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "ds7",id = 5070230,cardId = 1101999,lv = 65,bklv = 9,star = 2,equip = {[1] = {id = 2003201,lv = 65},[2] = {id = 2003202,lv = 65},[3] = {id = 2003203,lv = 65},[4] = {id = 2003204,lv = 65},[5] = {id = 2003205,lv = 65},[6] = {id = 2003206,lv = 65},[7] = {id = 2003207,lv = 65},[8] = {id = 2003208,lv = 65}},mon = {id = 203,desc = "ds7-2-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 4,exert = 21,suffer = 21}},
			shl = {cha = "ds7",id = 5070231,cardId = 1102999,lv = 65,bklv = 10,star = 2,ghost = 19,equip = {[1] = {id = 2103201,lv = 65},[2] = {id = 2103202,lv = 65},[3] = {id = 2103203,lv = 65},[4] = {id = 2103204,lv = 65},[5] = {id = 2103205,lv = 65},[6] = {id = 2103206,lv = 65},[7] = {id = 2103207,lv = 65},[8] = {id = 2103208,lv = 65}},exWeapon = {[1] = 5,[2] = 3,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 225,desc = "ds7-2-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 4,exert = 25,suffer = 25}}
		}
	},
	[50703] = {
		[1] = {
			jlr = {cha = "ds7",id = 5070310,cardId = 1101999,lv = 65,bklv = 9,star = 2,equip = {[1] = {id = 2003301,lv = 65},[2] = {id = 2003302,lv = 65},[3] = {id = 2003303,lv = 65},[4] = {id = 2003304,lv = 65},[5] = {id = 2003305,lv = 65},[6] = {id = 2003306,lv = 65},[7] = {id = 2003307,lv = 65},[8] = {id = 2003308,lv = 65}},mon = {id = 215,desc = "ds7-3-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "ds7",id = 5070311,cardId = 1102998,lv = 65,bklv = 10,star = 2,ghost = 19,equip = {[1] = {id = 2103301,lv = 65},[2] = {id = 2103302,lv = 65},[3] = {id = 2103303,lv = 65},[4] = {id = 2103304,lv = 65},[5] = {id = 2103305,lv = 65},[6] = {id = 2103306,lv = 65},[7] = {id = 2103307,lv = 65},[8] = {id = 2103308,lv = 65}},exWeapon = {[1] = 5,[2] = 3,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 321,desc = "ds7-3-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "ds7",id = 5070320,cardId = 1101999,lv = 65,bklv = 9,star = 2,equip = {[1] = {id = 2003401,lv = 65},[2] = {id = 2003402,lv = 65},[3] = {id = 2003403,lv = 65},[4] = {id = 2003404,lv = 65},[5] = {id = 2003405,lv = 65},[6] = {id = 2003406,lv = 65},[7] = {id = 2003407,lv = 65},[8] = {id = 2003408,lv = 65}},mon = {id = 211,desc = "ds7-3-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "ds7",id = 5070321,cardId = 1102998,lv = 65,bklv = 10,star = 2,ghost = 19,equip = {[1] = {id = 2103401,lv = 65},[2] = {id = 2103402,lv = 65},[3] = {id = 2103403,lv = 65},[4] = {id = 2103404,lv = 65},[5] = {id = 2103405,lv = 65},[6] = {id = 2103406,lv = 65},[7] = {id = 2103407,lv = 65},[8] = {id = 2103408,lv = 65}},exWeapon = {[1] = 5,[2] = 3,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 317,desc = "ds7-3-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "ds7",id = 5070330,cardId = 1101999,lv = 65,bklv = 9,star = 2,equip = {[1] = {id = 2003301,lv = 65},[2] = {id = 2003302,lv = 65},[3] = {id = 2003303,lv = 65},[4] = {id = 2003304,lv = 65},[5] = {id = 2003305,lv = 65},[6] = {id = 2003306,lv = 65},[7] = {id = 2003307,lv = 65},[8] = {id = 2003308,lv = 65}},mon = {id = 209,desc = "ds7-3-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "ds7",id = 5070331,cardId = 1102998,lv = 65,bklv = 10,star = 2,ghost = 19,equip = {[1] = {id = 2103301,lv = 65},[2] = {id = 2103302,lv = 65},[3] = {id = 2103303,lv = 65},[4] = {id = 2103304,lv = 65},[5] = {id = 2103305,lv = 65},[6] = {id = 2103306,lv = 65},[7] = {id = 2103307,lv = 65},[8] = {id = 2103308,lv = 65}},exWeapon = {[1] = 5,[2] = 3,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 314,desc = "ds7-3-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		}
	},
	[50704] = {
		[1] = {
			jlr = {cha = "ds7",id = 5070410,cardId = 1101999,lv = 65,bklv = 9,star = 2,equip = {[1] = {id = 2003301,lv = 65},[2] = {id = 2003302,lv = 65},[3] = {id = 2003303,lv = 65},[4] = {id = 2003304,lv = 65},[5] = {id = 2003305,lv = 65},[6] = {id = 2003306,lv = 65},[7] = {id = 2003307,lv = 65},[8] = {id = 2003308,lv = 65}},mon = {id = 207,desc = "ds7-4-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 5,exert = 14,suffer = 21}},
			shl = {cha = "ds7",id = 5070411,cardId = 1102998,lv = 65,bklv = 10,star = 2,ghost = 19,equip = {[1] = {id = 2103301,lv = 65},[2] = {id = 2103302,lv = 65},[3] = {id = 2103303,lv = 65},[4] = {id = 2103304,lv = 65},[5] = {id = 2103305,lv = 65},[6] = {id = 2103306,lv = 65},[7] = {id = 2103307,lv = 65},[8] = {id = 2103308,lv = 65}},exWeapon = {[1] = 5,[2] = 3,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 303,desc = "ds7-4-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 5,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "ds7",id = 5070420,cardId = 1101999,lv = 65,bklv = 9,star = 2,equip = {[1] = {id = 2003401,lv = 65},[2] = {id = 2003402,lv = 65},[3] = {id = 2003403,lv = 65},[4] = {id = 2003404,lv = 65},[5] = {id = 2003405,lv = 65},[6] = {id = 2003406,lv = 65},[7] = {id = 2003407,lv = 65},[8] = {id = 2003408,lv = 65}},mon = {id = 210,desc = "ds7-4-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 5,exert = 14,suffer = 21}},
			shl = {cha = "ds7",id = 5070421,cardId = 1102998,lv = 65,bklv = 10,star = 2,ghost = 19,equip = {[1] = {id = 2103401,lv = 65},[2] = {id = 2103402,lv = 65},[3] = {id = 2103403,lv = 65},[4] = {id = 2103404,lv = 65},[5] = {id = 2103405,lv = 65},[6] = {id = 2103406,lv = 65},[7] = {id = 2103407,lv = 65},[8] = {id = 2103408,lv = 65}},exWeapon = {[1] = 5,[2] = 3,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 316,desc = "ds7-4-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 5,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "ds7",id = 5070430,cardId = 1101999,lv = 65,bklv = 9,star = 2,equip = {[1] = {id = 2003301,lv = 65},[2] = {id = 2003302,lv = 65},[3] = {id = 2003303,lv = 65},[4] = {id = 2003304,lv = 65},[5] = {id = 2003305,lv = 65},[6] = {id = 2003306,lv = 65},[7] = {id = 2003307,lv = 65},[8] = {id = 2003308,lv = 65}},mon = {id = 206,desc = "ds7-4-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 5,exert = 14,suffer = 21}},
			shl = {cha = "ds7",id = 5070431,cardId = 1102998,lv = 65,bklv = 10,star = 2,ghost = 19,equip = {[1] = {id = 2103301,lv = 65},[2] = {id = 2103302,lv = 65},[3] = {id = 2103303,lv = 65},[4] = {id = 2103304,lv = 65},[5] = {id = 2103305,lv = 65},[6] = {id = 2103306,lv = 65},[7] = {id = 2103307,lv = 65},[8] = {id = 2103308,lv = 65}},exWeapon = {[1] = 5,[2] = 3,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 307,desc = "ds7-4-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 5,exert = 18,suffer = 25}}
		}
	},
	[50705] = {
		[1] = {
			jlr = {cha = "ds7",id = 5070510,cardId = 1101998,lv = 65,bklv = 9,star = 2,equip = {[1] = {id = 2003401,lv = 65},[2] = {id = 2003402,lv = 65},[3] = {id = 2003403,lv = 65},[4] = {id = 2003404,lv = 65},[5] = {id = 2003405,lv = 65},[6] = {id = 2003406,lv = 65},[7] = {id = 2003407,lv = 65},[8] = {id = 2003408,lv = 65}},mon = {id = 207,desc = "ds7-5-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 5,exert = 11,suffer = 21}},
			shl = {cha = "ds7",id = 5070511,cardId = 1102997,lv = 65,bklv = 10,star = 2,ghost = 19,equip = {[1] = {id = 2103401,lv = 65},[2] = {id = 2103402,lv = 65},[3] = {id = 2103403,lv = 65},[4] = {id = 2103404,lv = 65},[5] = {id = 2103405,lv = 65},[6] = {id = 2103406,lv = 65},[7] = {id = 2103407,lv = 65},[8] = {id = 2103408,lv = 65}},exWeapon = {[1] = 5,[2] = 3,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 312,desc = "ds7-5-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 5,exert = 15,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "ds7",id = 5070520,cardId = 1101998,lv = 65,bklv = 9,star = 2,equip = {[1] = {id = 2003421,lv = 65},[2] = {id = 2003422,lv = 65},[3] = {id = 2003423,lv = 65},[4] = {id = 2003424,lv = 65},[5] = {id = 2003425,lv = 65},[6] = {id = 2003426,lv = 65},[7] = {id = 2003407,lv = 65},[8] = {id = 2003408,lv = 65}},mon = {id = 204,desc = "ds7-5-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 5,exert = 11,suffer = 21}},
			shl = {cha = "ds7",id = 5070521,cardId = 1102997,lv = 65,bklv = 10,star = 2,ghost = 19,equip = {[1] = {id = 2103421,lv = 65},[2] = {id = 2103422,lv = 65},[3] = {id = 2103423,lv = 65},[4] = {id = 2103424,lv = 65},[5] = {id = 2103425,lv = 65},[6] = {id = 2103426,lv = 65},[7] = {id = 2103407,lv = 65},[8] = {id = 2103408,lv = 65}},exWeapon = {[1] = 5,[2] = 3,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 306,desc = "ds7-5-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 5,exert = 15,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "ds7",id = 5070530,cardId = 1101998,lv = 65,bklv = 9,star = 2,equip = {[1] = {id = 2003401,lv = 65},[2] = {id = 2003402,lv = 65},[3] = {id = 2003403,lv = 65},[4] = {id = 2003404,lv = 65},[5] = {id = 2003405,lv = 65},[6] = {id = 2003406,lv = 65},[7] = {id = 2003407,lv = 65},[8] = {id = 2003408,lv = 65}},mon = {id = 205,desc = "ds7-5-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 5,exert = 11,suffer = 21}},
			shl = {cha = "ds7",id = 5070531,cardId = 1102997,lv = 65,bklv = 10,star = 2,ghost = 19,equip = {[1] = {id = 2103401,lv = 65},[2] = {id = 2103402,lv = 65},[3] = {id = 2103403,lv = 65},[4] = {id = 2103404,lv = 65},[5] = {id = 2103405,lv = 65},[6] = {id = 2103406,lv = 65},[7] = {id = 2103407,lv = 65},[8] = {id = 2103408,lv = 65}},exWeapon = {[1] = 5,[2] = 3,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 301,desc = "ds7-5-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 5,exert = 15,suffer = 25}}
		}
	},
	[50801] = {
		[1] = {
			jlr = {cha = "ds8",id = 5080110,cardId = 1101999,lv = 70,bklv = 10,star = 2,equip = {[1] = {id = 2004201,lv = 70},[2] = {id = 2004202,lv = 70},[3] = {id = 2004203,lv = 70},[4] = {id = 2004204,lv = 70},[5] = {id = 2004205,lv = 70},[6] = {id = 2004206,lv = 70},[7] = {id = 2004207,lv = 70},[8] = {id = 2004208,lv = 70}},mon = {id = 213,desc = "ds8-1-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 4,exert = 21,suffer = 21}},
			shl = {cha = "ds8",id = 5080111,cardId = 1102999,lv = 70,bklv = 11,star = 2,ghost = 21,equip = {[1] = {id = 2104201,lv = 70},[2] = {id = 2104202,lv = 70},[3] = {id = 2104203,lv = 70},[4] = {id = 2104204,lv = 70},[5] = {id = 2104205,lv = 70},[6] = {id = 2104206,lv = 70},[7] = {id = 2104207,lv = 70},[8] = {id = 2104208,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 239,desc = "ds8-1-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 4,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "ds8",id = 5080120,cardId = 1101998,lv = 70,bklv = 10,star = 2,equip = {[1] = {id = 2004301,lv = 70},[2] = {id = 2004302,lv = 70},[3] = {id = 2004303,lv = 70},[4] = {id = 2004304,lv = 70},[5] = {id = 2004305,lv = 70},[6] = {id = 2004306,lv = 70},[7] = {id = 2004307,lv = 70},[8] = {id = 2004308,lv = 70}},mon = {id = 212,desc = "ds8-1-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 4,exert = 21,suffer = 21}},
			shl = {cha = "ds8",id = 5080121,cardId = 1102998,lv = 70,bklv = 11,star = 2,ghost = 21,equip = {[1] = {id = 2104301,lv = 70},[2] = {id = 2104302,lv = 70},[3] = {id = 2104303,lv = 70},[4] = {id = 2104304,lv = 70},[5] = {id = 2104305,lv = 70},[6] = {id = 2104306,lv = 70},[7] = {id = 2104307,lv = 70},[8] = {id = 2104308,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 238,desc = "ds8-1-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 4,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "ds8",id = 5080130,cardId = 1101999,lv = 70,bklv = 10,star = 2,equip = {[1] = {id = 2004201,lv = 70},[2] = {id = 2004202,lv = 70},[3] = {id = 2004203,lv = 70},[4] = {id = 2004204,lv = 70},[5] = {id = 2004205,lv = 70},[6] = {id = 2004206,lv = 70},[7] = {id = 2004207,lv = 70},[8] = {id = 2004208,lv = 70}},mon = {id = 208,desc = "ds8-1-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 4,exert = 21,suffer = 21}},
			shl = {cha = "ds8",id = 5080131,cardId = 1102999,lv = 70,bklv = 11,star = 2,ghost = 21,equip = {[1] = {id = 2104201,lv = 70},[2] = {id = 2104202,lv = 70},[3] = {id = 2104203,lv = 70},[4] = {id = 2104204,lv = 70},[5] = {id = 2104205,lv = 70},[6] = {id = 2104206,lv = 70},[7] = {id = 2104207,lv = 70},[8] = {id = 2104208,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 233,desc = "ds8-1-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 4,exert = 25,suffer = 25}}
		}
	},
	[50802] = {
		[1] = {
			jlr = {cha = "ds8",id = 5080210,cardId = 1101999,lv = 70,bklv = 10,star = 2,equip = {[1] = {id = 2004201,lv = 70},[2] = {id = 2004202,lv = 70},[3] = {id = 2004203,lv = 70},[4] = {id = 2004204,lv = 70},[5] = {id = 2004205,lv = 70},[6] = {id = 2004206,lv = 70},[7] = {id = 2004207,lv = 70},[8] = {id = 2004208,lv = 70}},mon = {id = 201,desc = "ds8-2-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 5,exert = 21,suffer = 21}},
			shl = {cha = "ds8",id = 5080211,cardId = 1102999,lv = 70,bklv = 11,star = 2,ghost = 21,equip = {[1] = {id = 2104201,lv = 70},[2] = {id = 2104202,lv = 70},[3] = {id = 2104203,lv = 70},[4] = {id = 2104204,lv = 70},[5] = {id = 2104205,lv = 70},[6] = {id = 2104206,lv = 70},[7] = {id = 2104207,lv = 70},[8] = {id = 2104208,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 235,desc = "ds8-2-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 5,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "ds8",id = 5080220,cardId = 1101998,lv = 70,bklv = 10,star = 2,equip = {[1] = {id = 2004301,lv = 70},[2] = {id = 2004302,lv = 70},[3] = {id = 2004303,lv = 70},[4] = {id = 2004304,lv = 70},[5] = {id = 2004305,lv = 70},[6] = {id = 2004306,lv = 70},[7] = {id = 2004307,lv = 70},[8] = {id = 2004308,lv = 70}},mon = {id = 214,desc = "ds8-2-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 5,exert = 21,suffer = 21}},
			shl = {cha = "ds8",id = 5080221,cardId = 1102998,lv = 70,bklv = 11,star = 2,ghost = 21,equip = {[1] = {id = 2104301,lv = 70},[2] = {id = 2104302,lv = 70},[3] = {id = 2104303,lv = 70},[4] = {id = 2104304,lv = 70},[5] = {id = 2104305,lv = 70},[6] = {id = 2104306,lv = 70},[7] = {id = 2104307,lv = 70},[8] = {id = 2104308,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 240,desc = "ds8-2-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 5,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "ds8",id = 5080230,cardId = 1101999,lv = 70,bklv = 10,star = 2,equip = {[1] = {id = 2004201,lv = 70},[2] = {id = 2004202,lv = 70},[3] = {id = 2004203,lv = 70},[4] = {id = 2004204,lv = 70},[5] = {id = 2004205,lv = 70},[6] = {id = 2004206,lv = 70},[7] = {id = 2004207,lv = 70},[8] = {id = 2004208,lv = 70}},mon = {id = 203,desc = "ds8-2-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 5,exert = 21,suffer = 21}},
			shl = {cha = "ds8",id = 5080231,cardId = 1102999,lv = 70,bklv = 11,star = 2,ghost = 21,equip = {[1] = {id = 2104201,lv = 70},[2] = {id = 2104202,lv = 70},[3] = {id = 2104203,lv = 70},[4] = {id = 2104204,lv = 70},[5] = {id = 2104205,lv = 70},[6] = {id = 2104206,lv = 70},[7] = {id = 2104207,lv = 70},[8] = {id = 2104208,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 225,desc = "ds8-2-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 5,exert = 25,suffer = 25}}
		}
	},
	[50803] = {
		[1] = {
			jlr = {cha = "ds8",id = 5080310,cardId = 1101999,lv = 70,bklv = 10,star = 2,equip = {[1] = {id = 2004301,lv = 70},[2] = {id = 2004302,lv = 70},[3] = {id = 2004303,lv = 70},[4] = {id = 2004304,lv = 70},[5] = {id = 2004305,lv = 70},[6] = {id = 2004306,lv = 70},[7] = {id = 2004307,lv = 70},[8] = {id = 2004308,lv = 70}},mon = {id = 215,desc = "ds8-3-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 5,exert = 14,suffer = 21}},
			shl = {cha = "ds8",id = 5080311,cardId = 1102998,lv = 70,bklv = 11,star = 2,ghost = 21,equip = {[1] = {id = 2104301,lv = 70},[2] = {id = 2104302,lv = 70},[3] = {id = 2104303,lv = 70},[4] = {id = 2104304,lv = 70},[5] = {id = 2104305,lv = 70},[6] = {id = 2104306,lv = 70},[7] = {id = 2104307,lv = 70},[8] = {id = 2104308,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 321,desc = "ds8-3-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 5,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "ds8",id = 5080320,cardId = 1101999,lv = 70,bklv = 10,star = 2,equip = {[1] = {id = 2004401,lv = 70},[2] = {id = 2004402,lv = 70},[3] = {id = 2004403,lv = 70},[4] = {id = 2004404,lv = 70},[5] = {id = 2004405,lv = 70},[6] = {id = 2004406,lv = 70},[7] = {id = 2004407,lv = 70},[8] = {id = 2004408,lv = 70}},mon = {id = 211,desc = "ds8-3-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 5,exert = 14,suffer = 21}},
			shl = {cha = "ds8",id = 5080321,cardId = 1102998,lv = 70,bklv = 11,star = 2,ghost = 21,equip = {[1] = {id = 2104401,lv = 70},[2] = {id = 2104402,lv = 70},[3] = {id = 2104403,lv = 70},[4] = {id = 2104404,lv = 70},[5] = {id = 2104405,lv = 70},[6] = {id = 2104406,lv = 70},[7] = {id = 2104407,lv = 70},[8] = {id = 2104408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 317,desc = "ds8-3-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 5,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "ds8",id = 5080330,cardId = 1101999,lv = 70,bklv = 10,star = 2,equip = {[1] = {id = 2004301,lv = 70},[2] = {id = 2004302,lv = 70},[3] = {id = 2004303,lv = 70},[4] = {id = 2004304,lv = 70},[5] = {id = 2004305,lv = 70},[6] = {id = 2004306,lv = 70},[7] = {id = 2004307,lv = 70},[8] = {id = 2004308,lv = 70}},mon = {id = 209,desc = "ds8-3-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 5,exert = 14,suffer = 21}},
			shl = {cha = "ds8",id = 5080331,cardId = 1102998,lv = 70,bklv = 11,star = 2,ghost = 21,equip = {[1] = {id = 2104301,lv = 70},[2] = {id = 2104302,lv = 70},[3] = {id = 2104303,lv = 70},[4] = {id = 2104304,lv = 70},[5] = {id = 2104305,lv = 70},[6] = {id = 2104306,lv = 70},[7] = {id = 2104307,lv = 70},[8] = {id = 2104308,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 314,desc = "ds8-3-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 5,exert = 18,suffer = 25}}
		}
	},
	[50804] = {
		[1] = {
			jlr = {cha = "ds8",id = 5080410,cardId = 1101999,lv = 70,bklv = 10,star = 2,equip = {[1] = {id = 2004301,lv = 70},[2] = {id = 2004302,lv = 70},[3] = {id = 2004303,lv = 70},[4] = {id = 2004304,lv = 70},[5] = {id = 2004305,lv = 70},[6] = {id = 2004306,lv = 70},[7] = {id = 2004307,lv = 70},[8] = {id = 2004308,lv = 70}},mon = {id = 207,desc = "ds8-4-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 6,exert = 14,suffer = 21}},
			shl = {cha = "ds8",id = 5080411,cardId = 1102998,lv = 70,bklv = 11,star = 2,ghost = 21,equip = {[1] = {id = 2104301,lv = 70},[2] = {id = 2104302,lv = 70},[3] = {id = 2104303,lv = 70},[4] = {id = 2104304,lv = 70},[5] = {id = 2104305,lv = 70},[6] = {id = 2104306,lv = 70},[7] = {id = 2104307,lv = 70},[8] = {id = 2104308,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 303,desc = "ds8-4-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 6,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "ds8",id = 5080420,cardId = 1101999,lv = 70,bklv = 10,star = 2,equip = {[1] = {id = 2004401,lv = 70},[2] = {id = 2004402,lv = 70},[3] = {id = 2004403,lv = 70},[4] = {id = 2004404,lv = 70},[5] = {id = 2004405,lv = 70},[6] = {id = 2004406,lv = 70},[7] = {id = 2004407,lv = 70},[8] = {id = 2004408,lv = 70}},mon = {id = 210,desc = "ds8-4-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 6,exert = 14,suffer = 21}},
			shl = {cha = "ds8",id = 5080421,cardId = 1102998,lv = 70,bklv = 11,star = 2,ghost = 21,equip = {[1] = {id = 2104401,lv = 70},[2] = {id = 2104402,lv = 70},[3] = {id = 2104403,lv = 70},[4] = {id = 2104404,lv = 70},[5] = {id = 2104405,lv = 70},[6] = {id = 2104406,lv = 70},[7] = {id = 2104407,lv = 70},[8] = {id = 2104408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 316,desc = "ds8-4-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 6,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "ds8",id = 5080430,cardId = 1101999,lv = 70,bklv = 10,star = 2,equip = {[1] = {id = 2004301,lv = 70},[2] = {id = 2004302,lv = 70},[3] = {id = 2004303,lv = 70},[4] = {id = 2004304,lv = 70},[5] = {id = 2004305,lv = 70},[6] = {id = 2004306,lv = 70},[7] = {id = 2004307,lv = 70},[8] = {id = 2004308,lv = 70}},mon = {id = 206,desc = "ds8-4-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 6,exert = 14,suffer = 21}},
			shl = {cha = "ds8",id = 5080431,cardId = 1102998,lv = 70,bklv = 11,star = 2,ghost = 21,equip = {[1] = {id = 2104301,lv = 70},[2] = {id = 2104302,lv = 70},[3] = {id = 2104303,lv = 70},[4] = {id = 2104304,lv = 70},[5] = {id = 2104305,lv = 70},[6] = {id = 2104306,lv = 70},[7] = {id = 2104307,lv = 70},[8] = {id = 2104308,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 307,desc = "ds8-4-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 6,exert = 18,suffer = 25}}
		}
	},
	[50805] = {
		[1] = {
			jlr = {cha = "ds8",id = 5080510,cardId = 1101998,lv = 70,bklv = 10,star = 2,equip = {[1] = {id = 2004401,lv = 70},[2] = {id = 2004402,lv = 70},[3] = {id = 2004403,lv = 70},[4] = {id = 2004404,lv = 70},[5] = {id = 2004405,lv = 70},[6] = {id = 2004406,lv = 70},[7] = {id = 2004407,lv = 70},[8] = {id = 2004408,lv = 70}},mon = {id = 207,desc = "ds8-5-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 6,exert = 11,suffer = 21}},
			shl = {cha = "ds8",id = 5080511,cardId = 1102997,lv = 70,bklv = 11,star = 3,ghost = 21,equip = {[1] = {id = 2104401,lv = 70},[2] = {id = 2104402,lv = 70},[3] = {id = 2104403,lv = 70},[4] = {id = 2104404,lv = 70},[5] = {id = 2104405,lv = 70},[6] = {id = 2104406,lv = 70},[7] = {id = 2104407,lv = 70},[8] = {id = 2104408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 312,desc = "ds8-5-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 6,exert = 15,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "ds8",id = 5080520,cardId = 1101998,lv = 70,bklv = 10,star = 2,equip = {[1] = {id = 2004421,lv = 70},[2] = {id = 2004422,lv = 70},[3] = {id = 2004423,lv = 70},[4] = {id = 2004404,lv = 70},[5] = {id = 2004425,lv = 70},[6] = {id = 2004406,lv = 70},[7] = {id = 2004427,lv = 70},[8] = {id = 2004428,lv = 70}},mon = {id = 204,desc = "ds8-5-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 6,exert = 11,suffer = 21}},
			shl = {cha = "ds8",id = 5080521,cardId = 1102996,lv = 70,bklv = 11,star = 1,ghost = 21,equip = {[1] = {id = 2104421,lv = 70},[2] = {id = 2104422,lv = 70},[3] = {id = 2104423,lv = 70},[4] = {id = 2104404,lv = 70},[5] = {id = 2104425,lv = 70},[6] = {id = 2104406,lv = 70},[7] = {id = 2104427,lv = 70},[8] = {id = 2104428,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 306,desc = "ds8-5-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 6,exert = 15,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "ds8",id = 5080530,cardId = 1101998,lv = 70,bklv = 10,star = 2,equip = {[1] = {id = 2004401,lv = 70},[2] = {id = 2004402,lv = 70},[3] = {id = 2004403,lv = 70},[4] = {id = 2004404,lv = 70},[5] = {id = 2004405,lv = 70},[6] = {id = 2004406,lv = 70},[7] = {id = 2004407,lv = 70},[8] = {id = 2004408,lv = 70}},mon = {id = 205,desc = "ds8-5-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 6,exert = 11,suffer = 21}},
			shl = {cha = "ds8",id = 5080531,cardId = 1102997,lv = 70,bklv = 11,star = 3,ghost = 21,equip = {[1] = {id = 2104401,lv = 70},[2] = {id = 2104402,lv = 70},[3] = {id = 2104403,lv = 70},[4] = {id = 2104404,lv = 70},[5] = {id = 2104405,lv = 70},[6] = {id = 2104406,lv = 70},[7] = {id = 2104407,lv = 70},[8] = {id = 2104408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 301,desc = "ds8-5-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 6,exert = 15,suffer = 25}}
		}
	},
	[50901] = {
		[1] = {
			jlr = {cha = "ds9",id = 5090110,cardId = 1101999,lv = 80,bklv = 11,star = 2,equip = {[1] = {id = 2004201,lv = 80},[2] = {id = 2004202,lv = 80},[3] = {id = 2004203,lv = 80},[4] = {id = 2004204,lv = 80},[5] = {id = 2004205,lv = 80},[6] = {id = 2004206,lv = 80},[7] = {id = 2004207,lv = 80},[8] = {id = 2004208,lv = 80}},mon = {id = 213,desc = "ds9-1-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 4,exert = 21,suffer = 21}},
			shl = {cha = "ds9",id = 5090111,cardId = 1102999,lv = 80,bklv = 12,star = 3,ghost = 25,equip = {[1] = {id = 2104201,lv = 80},[2] = {id = 2104202,lv = 80},[3] = {id = 2104203,lv = 80},[4] = {id = 2104204,lv = 80},[5] = {id = 2104205,lv = 80},[6] = {id = 2104206,lv = 80},[7] = {id = 2104207,lv = 80},[8] = {id = 2104208,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 239,desc = "ds9-1-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 4,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "ds9",id = 5090120,cardId = 1101998,lv = 80,bklv = 11,star = 2,equip = {[1] = {id = 2004301,lv = 80},[2] = {id = 2004302,lv = 80},[3] = {id = 2004303,lv = 80},[4] = {id = 2004304,lv = 80},[5] = {id = 2004305,lv = 80},[6] = {id = 2004306,lv = 80},[7] = {id = 2004307,lv = 80},[8] = {id = 2004308,lv = 80}},mon = {id = 212,desc = "ds9-1-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 4,exert = 21,suffer = 21}},
			shl = {cha = "ds9",id = 5090121,cardId = 1102998,lv = 80,bklv = 12,star = 3,ghost = 25,equip = {[1] = {id = 2104301,lv = 80},[2] = {id = 2104302,lv = 80},[3] = {id = 2104303,lv = 80},[4] = {id = 2104304,lv = 80},[5] = {id = 2104305,lv = 80},[6] = {id = 2104306,lv = 80},[7] = {id = 2104307,lv = 80},[8] = {id = 2104308,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 238,desc = "ds9-1-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 4,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "ds9",id = 5090130,cardId = 1101999,lv = 80,bklv = 11,star = 2,equip = {[1] = {id = 2004201,lv = 80},[2] = {id = 2004202,lv = 80},[3] = {id = 2004203,lv = 80},[4] = {id = 2004204,lv = 80},[5] = {id = 2004205,lv = 80},[6] = {id = 2004206,lv = 80},[7] = {id = 2004207,lv = 80},[8] = {id = 2004208,lv = 80}},mon = {id = 208,desc = "ds9-1-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 4,exert = 21,suffer = 21}},
			shl = {cha = "ds9",id = 5090131,cardId = 1102999,lv = 80,bklv = 12,star = 3,ghost = 25,equip = {[1] = {id = 2104201,lv = 80},[2] = {id = 2104202,lv = 80},[3] = {id = 2104203,lv = 80},[4] = {id = 2104204,lv = 80},[5] = {id = 2104205,lv = 80},[6] = {id = 2104206,lv = 80},[7] = {id = 2104207,lv = 80},[8] = {id = 2104208,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 233,desc = "ds9-1-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 4,exert = 25,suffer = 25}}
		}
	},
	[50902] = {
		[1] = {
			jlr = {cha = "ds9",id = 5090210,cardId = 1101999,lv = 80,bklv = 11,star = 2,equip = {[1] = {id = 2004201,lv = 80},[2] = {id = 2004202,lv = 80},[3] = {id = 2004203,lv = 80},[4] = {id = 2004204,lv = 80},[5] = {id = 2004205,lv = 80},[6] = {id = 2004206,lv = 80},[7] = {id = 2004207,lv = 80},[8] = {id = 2004208,lv = 80}},mon = {id = 201,desc = "ds9-2-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 5,exert = 21,suffer = 21}},
			shl = {cha = "ds9",id = 5090211,cardId = 1102999,lv = 80,bklv = 12,star = 3,ghost = 25,equip = {[1] = {id = 2104201,lv = 80},[2] = {id = 2104202,lv = 80},[3] = {id = 2104203,lv = 80},[4] = {id = 2104204,lv = 80},[5] = {id = 2104205,lv = 80},[6] = {id = 2104206,lv = 80},[7] = {id = 2104207,lv = 80},[8] = {id = 2104208,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 235,desc = "ds9-2-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 5,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "ds9",id = 5090220,cardId = 1101998,lv = 80,bklv = 11,star = 2,equip = {[1] = {id = 2004301,lv = 80},[2] = {id = 2004302,lv = 80},[3] = {id = 2004303,lv = 80},[4] = {id = 2004304,lv = 80},[5] = {id = 2004305,lv = 80},[6] = {id = 2004306,lv = 80},[7] = {id = 2004307,lv = 80},[8] = {id = 2004308,lv = 80}},mon = {id = 214,desc = "ds9-2-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 5,exert = 21,suffer = 21}},
			shl = {cha = "ds9",id = 5090221,cardId = 1102998,lv = 80,bklv = 12,star = 3,ghost = 25,equip = {[1] = {id = 2104301,lv = 80},[2] = {id = 2104302,lv = 80},[3] = {id = 2104303,lv = 80},[4] = {id = 2104304,lv = 80},[5] = {id = 2104305,lv = 80},[6] = {id = 2104306,lv = 80},[7] = {id = 2104307,lv = 80},[8] = {id = 2104308,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 240,desc = "ds9-2-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 5,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "ds9",id = 5090230,cardId = 1101999,lv = 80,bklv = 11,star = 2,equip = {[1] = {id = 2004201,lv = 80},[2] = {id = 2004202,lv = 80},[3] = {id = 2004203,lv = 80},[4] = {id = 2004204,lv = 80},[5] = {id = 2004205,lv = 80},[6] = {id = 2004206,lv = 80},[7] = {id = 2004207,lv = 80},[8] = {id = 2004208,lv = 80}},mon = {id = 203,desc = "ds9-2-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 5,exert = 21,suffer = 21}},
			shl = {cha = "ds9",id = 5090231,cardId = 1102999,lv = 80,bklv = 12,star = 3,ghost = 25,equip = {[1] = {id = 2104201,lv = 80},[2] = {id = 2104202,lv = 80},[3] = {id = 2104203,lv = 80},[4] = {id = 2104204,lv = 80},[5] = {id = 2104205,lv = 80},[6] = {id = 2104206,lv = 80},[7] = {id = 2104207,lv = 80},[8] = {id = 2104208,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 225,desc = "ds9-2-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 5,exert = 25,suffer = 25}}
		}
	},
	[50903] = {
		[1] = {
			jlr = {cha = "ds9",id = 5090310,cardId = 1101998,lv = 80,bklv = 11,star = 1,equip = {[1] = {id = 2004301,lv = 80},[2] = {id = 2004302,lv = 80},[3] = {id = 2004303,lv = 80},[4] = {id = 2004304,lv = 80},[5] = {id = 2004305,lv = 80},[6] = {id = 2004306,lv = 80},[7] = {id = 2004307,lv = 80},[8] = {id = 2004308,lv = 80}},mon = {id = 215,desc = "ds9-3-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 5,exert = 14,suffer = 21}},
			shl = {cha = "ds9",id = 5090311,cardId = 1102997,lv = 80,bklv = 12,star = 1,ghost = 25,equip = {[1] = {id = 2104301,lv = 80},[2] = {id = 2104302,lv = 80},[3] = {id = 2104303,lv = 80},[4] = {id = 2104304,lv = 80},[5] = {id = 2104305,lv = 80},[6] = {id = 2104306,lv = 80},[7] = {id = 2104307,lv = 80},[8] = {id = 2104308,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 321,desc = "ds9-3-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 5,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "ds9",id = 5090320,cardId = 1101998,lv = 80,bklv = 11,star = 1,equip = {[1] = {id = 2004401,lv = 80},[2] = {id = 2004402,lv = 80},[3] = {id = 2004403,lv = 80},[4] = {id = 2004404,lv = 80},[5] = {id = 2004405,lv = 80},[6] = {id = 2004406,lv = 80},[7] = {id = 2004407,lv = 80},[8] = {id = 2004408,lv = 80}},mon = {id = 211,desc = "ds9-3-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 5,exert = 14,suffer = 21}},
			shl = {cha = "ds9",id = 5090321,cardId = 1102997,lv = 80,bklv = 12,star = 1,ghost = 25,equip = {[1] = {id = 2104401,lv = 80},[2] = {id = 2104402,lv = 80},[3] = {id = 2104403,lv = 80},[4] = {id = 2104404,lv = 80},[5] = {id = 2104405,lv = 80},[6] = {id = 2104406,lv = 80},[7] = {id = 2104407,lv = 80},[8] = {id = 2104408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 317,desc = "ds9-3-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 5,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "ds9",id = 5090330,cardId = 1101998,lv = 80,bklv = 11,star = 1,equip = {[1] = {id = 2004301,lv = 80},[2] = {id = 2004302,lv = 80},[3] = {id = 2004303,lv = 80},[4] = {id = 2004304,lv = 80},[5] = {id = 2004305,lv = 80},[6] = {id = 2004306,lv = 80},[7] = {id = 2004307,lv = 80},[8] = {id = 2004308,lv = 80}},mon = {id = 209,desc = "ds9-3-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 5,exert = 14,suffer = 21}},
			shl = {cha = "ds9",id = 5090331,cardId = 1102997,lv = 80,bklv = 12,star = 1,ghost = 25,equip = {[1] = {id = 2104301,lv = 80},[2] = {id = 2104302,lv = 80},[3] = {id = 2104303,lv = 80},[4] = {id = 2104304,lv = 80},[5] = {id = 2104305,lv = 80},[6] = {id = 2104306,lv = 80},[7] = {id = 2104307,lv = 80},[8] = {id = 2104308,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 314,desc = "ds9-3-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 5,exert = 18,suffer = 25}}
		}
	},
	[50904] = {
		[1] = {
			jlr = {cha = "ds9",id = 5090410,cardId = 1101998,lv = 80,bklv = 11,star = 1,equip = {[1] = {id = 2004301,lv = 80},[2] = {id = 2004302,lv = 80},[3] = {id = 2004303,lv = 80},[4] = {id = 2004304,lv = 80},[5] = {id = 2004305,lv = 80},[6] = {id = 2004306,lv = 80},[7] = {id = 2004307,lv = 80},[8] = {id = 2004308,lv = 80}},mon = {id = 207,desc = "ds9-4-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 6,exert = 14,suffer = 21}},
			shl = {cha = "ds9",id = 5090411,cardId = 1102997,lv = 80,bklv = 12,star = 1,ghost = 25,equip = {[1] = {id = 2104301,lv = 80},[2] = {id = 2104302,lv = 80},[3] = {id = 2104303,lv = 80},[4] = {id = 2104304,lv = 80},[5] = {id = 2104305,lv = 80},[6] = {id = 2104306,lv = 80},[7] = {id = 2104307,lv = 80},[8] = {id = 2104308,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 303,desc = "ds9-4-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 6,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "ds9",id = 5090420,cardId = 1101998,lv = 80,bklv = 11,star = 1,equip = {[1] = {id = 2004401,lv = 80},[2] = {id = 2004402,lv = 80},[3] = {id = 2004403,lv = 80},[4] = {id = 2004404,lv = 80},[5] = {id = 2004405,lv = 80},[6] = {id = 2004406,lv = 80},[7] = {id = 2004407,lv = 80},[8] = {id = 2004408,lv = 80}},mon = {id = 210,desc = "ds9-4-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 6,exert = 14,suffer = 21}},
			shl = {cha = "ds9",id = 5090421,cardId = 1102997,lv = 80,bklv = 12,star = 1,ghost = 25,equip = {[1] = {id = 2104401,lv = 80},[2] = {id = 2104402,lv = 80},[3] = {id = 2104403,lv = 80},[4] = {id = 2104404,lv = 80},[5] = {id = 2104405,lv = 80},[6] = {id = 2104406,lv = 80},[7] = {id = 2104407,lv = 80},[8] = {id = 2104408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 316,desc = "ds9-4-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 6,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "ds9",id = 5090430,cardId = 1101998,lv = 80,bklv = 11,star = 1,equip = {[1] = {id = 2004301,lv = 80},[2] = {id = 2004302,lv = 80},[3] = {id = 2004303,lv = 80},[4] = {id = 2004304,lv = 80},[5] = {id = 2004305,lv = 80},[6] = {id = 2004306,lv = 80},[7] = {id = 2004307,lv = 80},[8] = {id = 2004308,lv = 80}},mon = {id = 206,desc = "ds9-4-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 6,exert = 14,suffer = 21}},
			shl = {cha = "ds9",id = 5090431,cardId = 1102997,lv = 80,bklv = 12,star = 1,ghost = 25,equip = {[1] = {id = 2104301,lv = 80},[2] = {id = 2104302,lv = 80},[3] = {id = 2104303,lv = 80},[4] = {id = 2104304,lv = 80},[5] = {id = 2104305,lv = 80},[6] = {id = 2104306,lv = 80},[7] = {id = 2104307,lv = 80},[8] = {id = 2104308,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 307,desc = "ds9-4-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 6,exert = 18,suffer = 25}}
		}
	},
	[50905] = {
		[1] = {
			jlr = {cha = "ds9",id = 5090510,cardId = 1101998,lv = 80,bklv = 11,star = 2,equip = {[1] = {id = 2004401,lv = 80},[2] = {id = 2004402,lv = 80},[3] = {id = 2004403,lv = 80},[4] = {id = 2004404,lv = 80},[5] = {id = 2004405,lv = 80},[6] = {id = 2004406,lv = 80},[7] = {id = 2004407,lv = 80},[8] = {id = 2004408,lv = 80}},mon = {id = 207,desc = "ds9-5-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 6,exert = 11,suffer = 21}},
			shl = {cha = "ds9",id = 5090511,cardId = 1102997,lv = 80,bklv = 12,star = 3,ghost = 25,equip = {[1] = {id = 2104401,lv = 80},[2] = {id = 2104402,lv = 80},[3] = {id = 2104403,lv = 80},[4] = {id = 2104404,lv = 80},[5] = {id = 2104405,lv = 80},[6] = {id = 2104406,lv = 80},[7] = {id = 2104407,lv = 80},[8] = {id = 2104408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 312,desc = "ds9-5-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 6,exert = 15,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "ds9",id = 5090520,cardId = 1101998,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2004421,lv = 80},[2] = {id = 2004422,lv = 80},[3] = {id = 2004423,lv = 80},[4] = {id = 2004404,lv = 80},[5] = {id = 2004425,lv = 80},[6] = {id = 2004406,lv = 80},[7] = {id = 2004427,lv = 80},[8] = {id = 2004428,lv = 80}},mon = {id = 204,desc = "ds9-5-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 6,exert = 11,suffer = 21}},
			shl = {cha = "ds9",id = 5090521,cardId = 1102996,lv = 80,bklv = 12,star = 1,ghost = 25,equip = {[1] = {id = 2104421,lv = 80},[2] = {id = 2104422,lv = 80},[3] = {id = 2104423,lv = 80},[4] = {id = 2104404,lv = 80},[5] = {id = 2104425,lv = 80},[6] = {id = 2104406,lv = 80},[7] = {id = 2104427,lv = 80},[8] = {id = 2104428,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 306,desc = "ds9-5-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 6,exert = 15,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "ds9",id = 5090530,cardId = 1101998,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2004401,lv = 80},[2] = {id = 2004402,lv = 80},[3] = {id = 2004403,lv = 80},[4] = {id = 2004404,lv = 80},[5] = {id = 2004405,lv = 80},[6] = {id = 2004406,lv = 80},[7] = {id = 2004407,lv = 80},[8] = {id = 2004408,lv = 80}},mon = {id = 205,desc = "ds9-5-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 6,exert = 11,suffer = 21}},
			shl = {cha = "ds9",id = 5090531,cardId = 1102997,lv = 80,bklv = 12,star = 3,ghost = 25,equip = {[1] = {id = 2104401,lv = 80},[2] = {id = 2104402,lv = 80},[3] = {id = 2104403,lv = 80},[4] = {id = 2104404,lv = 80},[5] = {id = 2104405,lv = 80},[6] = {id = 2104406,lv = 80},[7] = {id = 2104407,lv = 80},[8] = {id = 2104408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 301,desc = "ds9-5-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 6,exert = 15,suffer = 25}}
		}
	},
	[51001] = {
		[1] = {
			jlr = {cha = "tg1",id = 5100110,cardId = 1101999,lv = 90,bklv = 13,star = 3,equip = {[1] = {id = 2005201,lv = 90},[2] = {id = 2005202,lv = 90},[3] = {id = 2005203,lv = 90},[4] = {id = 2005204,lv = 90},[5] = {id = 2005205,lv = 90},[6] = {id = 2005206,lv = 90},[7] = {id = 2005207,lv = 90},[8] = {id = 2005208,lv = 90}},mon = {id = 213,desc = "tg1-1-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 5,exert = 21,suffer = 21}},
			shl = {cha = "tg1",id = 5100111,cardId = 1102999,lv = 90,bklv = 13,star = 3,ghost = 29,equip = {[1] = {id = 2105201,lv = 90},[2] = {id = 2105202,lv = 90},[3] = {id = 2105203,lv = 90},[4] = {id = 2105204,lv = 90},[5] = {id = 2105205,lv = 90},[6] = {id = 2105206,lv = 90},[7] = {id = 2105207,lv = 90},[8] = {id = 2105208,lv = 90}},exWeapon = {[1] = 7,[2] = 5,[3] = 5,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 239,desc = "tg1-1-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 5,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "tg1",id = 5100120,cardId = 1101998,lv = 90,bklv = 13,star = 2,equip = {[1] = {id = 2005301,lv = 90},[2] = {id = 2005302,lv = 90},[3] = {id = 2005303,lv = 90},[4] = {id = 2005304,lv = 90},[5] = {id = 2005305,lv = 90},[6] = {id = 2005306,lv = 90},[7] = {id = 2005307,lv = 90},[8] = {id = 2005308,lv = 90}},mon = {id = 212,desc = "tg1-1-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 5,exert = 21,suffer = 21}},
			shl = {cha = "tg1",id = 5100121,cardId = 1102998,lv = 90,bklv = 13,star = 3,ghost = 29,equip = {[1] = {id = 2105301,lv = 90},[2] = {id = 2105302,lv = 90},[3] = {id = 2105303,lv = 90},[4] = {id = 2105304,lv = 90},[5] = {id = 2105305,lv = 90},[6] = {id = 2105306,lv = 90},[7] = {id = 2105307,lv = 90},[8] = {id = 2105308,lv = 90}},exWeapon = {[1] = 7,[2] = 5,[3] = 5,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 238,desc = "tg1-1-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 5,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "tg1",id = 5100130,cardId = 1101999,lv = 90,bklv = 13,star = 3,equip = {[1] = {id = 2005201,lv = 90},[2] = {id = 2005202,lv = 90},[3] = {id = 2005203,lv = 90},[4] = {id = 2005204,lv = 90},[5] = {id = 2005205,lv = 90},[6] = {id = 2005206,lv = 90},[7] = {id = 2005207,lv = 90},[8] = {id = 2005208,lv = 90}},mon = {id = 208,desc = "tg1-1-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 5,exert = 21,suffer = 21}},
			shl = {cha = "tg1",id = 5100131,cardId = 1102999,lv = 90,bklv = 13,star = 3,ghost = 29,equip = {[1] = {id = 2105201,lv = 90},[2] = {id = 2105202,lv = 90},[3] = {id = 2105203,lv = 90},[4] = {id = 2105204,lv = 90},[5] = {id = 2105205,lv = 90},[6] = {id = 2105206,lv = 90},[7] = {id = 2105207,lv = 90},[8] = {id = 2105208,lv = 90}},exWeapon = {[1] = 7,[2] = 5,[3] = 5,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 233,desc = "tg1-1-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 5,exert = 25,suffer = 25}}
		}
	},
	[51002] = {
		[1] = {
			jlr = {cha = "tg1",id = 5100210,cardId = 1101999,lv = 90,bklv = 13,star = 3,equip = {[1] = {id = 2005201,lv = 90},[2] = {id = 2005202,lv = 90},[3] = {id = 2005203,lv = 90},[4] = {id = 2005204,lv = 90},[5] = {id = 2005205,lv = 90},[6] = {id = 2005206,lv = 90},[7] = {id = 2005207,lv = 90},[8] = {id = 2005208,lv = 90}},mon = {id = 201,desc = "tg1-2-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 6,exert = 21,suffer = 21}},
			shl = {cha = "tg1",id = 5100211,cardId = 1102999,lv = 90,bklv = 13,star = 3,ghost = 29,equip = {[1] = {id = 2105201,lv = 90},[2] = {id = 2105202,lv = 90},[3] = {id = 2105203,lv = 90},[4] = {id = 2105204,lv = 90},[5] = {id = 2105205,lv = 90},[6] = {id = 2105206,lv = 90},[7] = {id = 2105207,lv = 90},[8] = {id = 2105208,lv = 90}},exWeapon = {[1] = 7,[2] = 5,[3] = 5,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 235,desc = "tg1-2-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 6,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "tg1",id = 5100220,cardId = 1101998,lv = 90,bklv = 13,star = 2,equip = {[1] = {id = 2005301,lv = 90},[2] = {id = 2005302,lv = 90},[3] = {id = 2005303,lv = 90},[4] = {id = 2005304,lv = 90},[5] = {id = 2005305,lv = 90},[6] = {id = 2005306,lv = 90},[7] = {id = 2005307,lv = 90},[8] = {id = 2005308,lv = 90}},mon = {id = 214,desc = "tg1-2-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 6,exert = 21,suffer = 21}},
			shl = {cha = "tg1",id = 5100221,cardId = 1102998,lv = 90,bklv = 13,star = 3,ghost = 29,equip = {[1] = {id = 2105301,lv = 90},[2] = {id = 2105302,lv = 90},[3] = {id = 2105303,lv = 90},[4] = {id = 2105304,lv = 90},[5] = {id = 2105305,lv = 90},[6] = {id = 2105306,lv = 90},[7] = {id = 2105307,lv = 90},[8] = {id = 2105308,lv = 90}},exWeapon = {[1] = 7,[2] = 5,[3] = 5,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 240,desc = "tg1-2-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 6,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "tg1",id = 5100230,cardId = 1101999,lv = 90,bklv = 13,star = 3,equip = {[1] = {id = 2005201,lv = 90},[2] = {id = 2005202,lv = 90},[3] = {id = 2005203,lv = 90},[4] = {id = 2005204,lv = 90},[5] = {id = 2005205,lv = 90},[6] = {id = 2005206,lv = 90},[7] = {id = 2005207,lv = 90},[8] = {id = 2005208,lv = 90}},mon = {id = 203,desc = "tg1-2-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 6,exert = 21,suffer = 21}},
			shl = {cha = "tg1",id = 5100231,cardId = 1102999,lv = 90,bklv = 13,star = 3,ghost = 29,equip = {[1] = {id = 2105201,lv = 90},[2] = {id = 2105202,lv = 90},[3] = {id = 2105203,lv = 90},[4] = {id = 2105204,lv = 90},[5] = {id = 2105205,lv = 90},[6] = {id = 2105206,lv = 90},[7] = {id = 2105207,lv = 90},[8] = {id = 2105208,lv = 90}},exWeapon = {[1] = 7,[2] = 5,[3] = 5,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 225,desc = "tg1-2-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 6,exert = 25,suffer = 25}}
		}
	},
	[51003] = {
		[1] = {
			jlr = {cha = "tg1",id = 5100310,cardId = 1101998,lv = 90,bklv = 13,star = 1,equip = {[1] = {id = 2005301,lv = 90},[2] = {id = 2005302,lv = 90},[3] = {id = 2005303,lv = 90},[4] = {id = 2005304,lv = 90},[5] = {id = 2005305,lv = 90},[6] = {id = 2005306,lv = 90},[7] = {id = 2005307,lv = 90},[8] = {id = 2005308,lv = 90}},mon = {id = 215,desc = "tg1-3-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 6,exert = 14,suffer = 21}},
			shl = {cha = "tg1",id = 5100311,cardId = 1102997,lv = 90,bklv = 13,star = 1,ghost = 29,equip = {[1] = {id = 2105301,lv = 90},[2] = {id = 2105302,lv = 90},[3] = {id = 2105303,lv = 90},[4] = {id = 2105304,lv = 90},[5] = {id = 2105305,lv = 90},[6] = {id = 2105306,lv = 90},[7] = {id = 2105307,lv = 90},[8] = {id = 2105308,lv = 90}},exWeapon = {[1] = 7,[2] = 5,[3] = 5,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 321,desc = "tg1-3-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 6,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "tg1",id = 5100320,cardId = 1101998,lv = 90,bklv = 13,star = 1,equip = {[1] = {id = 2005401,lv = 90},[2] = {id = 2005402,lv = 90},[3] = {id = 2005403,lv = 90},[4] = {id = 2005404,lv = 90},[5] = {id = 2005405,lv = 90},[6] = {id = 2005406,lv = 90},[7] = {id = 2005407,lv = 90},[8] = {id = 2005408,lv = 90}},mon = {id = 211,desc = "tg1-3-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 6,exert = 14,suffer = 21}},
			shl = {cha = "tg1",id = 5100321,cardId = 1102997,lv = 90,bklv = 13,star = 1,ghost = 29,equip = {[1] = {id = 2105401,lv = 90},[2] = {id = 2105402,lv = 90},[3] = {id = 2105403,lv = 90},[4] = {id = 2105404,lv = 90},[5] = {id = 2105405,lv = 90},[6] = {id = 2105406,lv = 90},[7] = {id = 2105407,lv = 90},[8] = {id = 2105408,lv = 90}},exWeapon = {[1] = 7,[2] = 5,[3] = 5,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 317,desc = "tg1-3-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 6,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "tg1",id = 5100330,cardId = 1101998,lv = 90,bklv = 13,star = 1,equip = {[1] = {id = 2005301,lv = 90},[2] = {id = 2005302,lv = 90},[3] = {id = 2005303,lv = 90},[4] = {id = 2005304,lv = 90},[5] = {id = 2005305,lv = 90},[6] = {id = 2005306,lv = 90},[7] = {id = 2005307,lv = 90},[8] = {id = 2005308,lv = 90}},mon = {id = 209,desc = "tg1-3-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 6,exert = 14,suffer = 21}},
			shl = {cha = "tg1",id = 5100331,cardId = 1102997,lv = 90,bklv = 13,star = 1,ghost = 29,equip = {[1] = {id = 2105301,lv = 90},[2] = {id = 2105302,lv = 90},[3] = {id = 2105303,lv = 90},[4] = {id = 2105304,lv = 90},[5] = {id = 2105305,lv = 90},[6] = {id = 2105306,lv = 90},[7] = {id = 2105307,lv = 90},[8] = {id = 2105308,lv = 90}},exWeapon = {[1] = 7,[2] = 5,[3] = 5,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 314,desc = "tg1-3-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 6,exert = 18,suffer = 25}}
		}
	},
	[51004] = {
		[1] = {
			jlr = {cha = "tg1",id = 5100410,cardId = 1101998,lv = 90,bklv = 13,star = 1,equip = {[1] = {id = 2005301,lv = 90},[2] = {id = 2005302,lv = 90},[3] = {id = 2005303,lv = 90},[4] = {id = 2005304,lv = 90},[5] = {id = 2005305,lv = 90},[6] = {id = 2005306,lv = 90},[7] = {id = 2005307,lv = 90},[8] = {id = 2005308,lv = 90}},mon = {id = 207,desc = "tg1-4-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 7,exert = 14,suffer = 21}},
			shl = {cha = "tg1",id = 5100411,cardId = 1102997,lv = 90,bklv = 13,star = 1,ghost = 29,equip = {[1] = {id = 2105301,lv = 90},[2] = {id = 2105302,lv = 90},[3] = {id = 2105303,lv = 90},[4] = {id = 2105304,lv = 90},[5] = {id = 2105305,lv = 90},[6] = {id = 2105306,lv = 90},[7] = {id = 2105307,lv = 90},[8] = {id = 2105308,lv = 90}},exWeapon = {[1] = 7,[2] = 5,[3] = 5,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 303,desc = "tg1-4-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 7,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "tg1",id = 5100420,cardId = 1101998,lv = 90,bklv = 13,star = 1,equip = {[1] = {id = 2005401,lv = 90},[2] = {id = 2005402,lv = 90},[3] = {id = 2005403,lv = 90},[4] = {id = 2005404,lv = 90},[5] = {id = 2005405,lv = 90},[6] = {id = 2005406,lv = 90},[7] = {id = 2005407,lv = 90},[8] = {id = 2005408,lv = 90}},mon = {id = 210,desc = "tg1-4-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 7,exert = 14,suffer = 21}},
			shl = {cha = "tg1",id = 5100421,cardId = 1102997,lv = 90,bklv = 13,star = 1,ghost = 29,equip = {[1] = {id = 2105401,lv = 90},[2] = {id = 2105402,lv = 90},[3] = {id = 2105403,lv = 90},[4] = {id = 2105404,lv = 90},[5] = {id = 2105405,lv = 90},[6] = {id = 2105406,lv = 90},[7] = {id = 2105407,lv = 90},[8] = {id = 2105408,lv = 90}},exWeapon = {[1] = 7,[2] = 5,[3] = 5,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 316,desc = "tg1-4-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 7,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "tg1",id = 5100430,cardId = 1101998,lv = 90,bklv = 13,star = 1,equip = {[1] = {id = 2005301,lv = 90},[2] = {id = 2005302,lv = 90},[3] = {id = 2005303,lv = 90},[4] = {id = 2005304,lv = 90},[5] = {id = 2005305,lv = 90},[6] = {id = 2005306,lv = 90},[7] = {id = 2005307,lv = 90},[8] = {id = 2005308,lv = 90}},mon = {id = 206,desc = "tg1-4-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 7,exert = 14,suffer = 21}},
			shl = {cha = "tg1",id = 5100431,cardId = 1102997,lv = 90,bklv = 13,star = 1,ghost = 29,equip = {[1] = {id = 2105301,lv = 90},[2] = {id = 2105302,lv = 90},[3] = {id = 2105303,lv = 90},[4] = {id = 2105304,lv = 90},[5] = {id = 2105305,lv = 90},[6] = {id = 2105306,lv = 90},[7] = {id = 2105307,lv = 90},[8] = {id = 2105308,lv = 90}},exWeapon = {[1] = 7,[2] = 5,[3] = 5,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 307,desc = "tg1-4-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 7,exert = 18,suffer = 25}}
		}
	},
	[51005] = {
		[1] = {
			jlr = {cha = "tg1",id = 5100510,cardId = 1101998,lv = 90,bklv = 13,star = 3,equip = {[1] = {id = 2005401,lv = 90},[2] = {id = 2005402,lv = 90},[3] = {id = 2005403,lv = 90},[4] = {id = 2005404,lv = 90},[5] = {id = 2005405,lv = 90},[6] = {id = 2005406,lv = 90},[7] = {id = 2005407,lv = 90},[8] = {id = 2005408,lv = 90}},mon = {id = 207,desc = "tg1-5-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 7,exert = 11,suffer = 21}},
			shl = {cha = "tg1",id = 5100511,cardId = 1102997,lv = 90,bklv = 13,star = 3,ghost = 29,equip = {[1] = {id = 2105401,lv = 90},[2] = {id = 2105402,lv = 90},[3] = {id = 2105403,lv = 90},[4] = {id = 2105404,lv = 90},[5] = {id = 2105405,lv = 90},[6] = {id = 2105406,lv = 90},[7] = {id = 2105407,lv = 90},[8] = {id = 2105408,lv = 90}},exWeapon = {[1] = 7,[2] = 5,[3] = 5,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 312,desc = "tg1-5-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 7,exert = 15,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "tg1",id = 5100520,cardId = 1101998,lv = 90,bklv = 13,star = 3,equip = {[1] = {id = 2005421,lv = 90},[2] = {id = 2005422,lv = 90},[3] = {id = 2005423,lv = 90},[4] = {id = 2005434,lv = 90},[5] = {id = 2005425,lv = 90},[6] = {id = 2005436,lv = 90},[7] = {id = 2005407,lv = 90},[8] = {id = 2005408,lv = 90}},mon = {id = 204,desc = "tg1-5-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 7,exert = 11,suffer = 21}},
			shl = {cha = "tg1",id = 5100521,cardId = 1102996,lv = 90,bklv = 13,star = 1,ghost = 29,equip = {[1] = {id = 2105421,lv = 90},[2] = {id = 2105432,lv = 90},[3] = {id = 2105423,lv = 90},[4] = {id = 2105434,lv = 90},[5] = {id = 2105425,lv = 90},[6] = {id = 2105436,lv = 90},[7] = {id = 2105407,lv = 90},[8] = {id = 2105408,lv = 90}},exWeapon = {[1] = 7,[2] = 5,[3] = 5,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 306,desc = "tg1-5-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 7,exert = 15,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "tg1",id = 5100530,cardId = 1101998,lv = 90,bklv = 13,star = 3,equip = {[1] = {id = 2005401,lv = 90},[2] = {id = 2005402,lv = 90},[3] = {id = 2005403,lv = 90},[4] = {id = 2005404,lv = 90},[5] = {id = 2005405,lv = 90},[6] = {id = 2005406,lv = 90},[7] = {id = 2005407,lv = 90},[8] = {id = 2005408,lv = 90}},mon = {id = 205,desc = "tg1-5-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 7,exert = 11,suffer = 21}},
			shl = {cha = "tg1",id = 5100531,cardId = 1102997,lv = 90,bklv = 13,star = 3,ghost = 29,equip = {[1] = {id = 2105401,lv = 90},[2] = {id = 2105402,lv = 90},[3] = {id = 2105403,lv = 90},[4] = {id = 2105404,lv = 90},[5] = {id = 2105405,lv = 90},[6] = {id = 2105406,lv = 90},[7] = {id = 2105407,lv = 90},[8] = {id = 2105408,lv = 90}},exWeapon = {[1] = 7,[2] = 5,[3] = 5,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 301,desc = "tg1-5-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 7,exert = 15,suffer = 25}}
		}
	},
	[51101] = {
		[1] = {
			jlr = {cha = "tg2",id = 5110110,cardId = 1101999,lv = 95,bklv = 13,star = 3,equip = {[1] = {id = 2005201,lv = 95},[2] = {id = 2005202,lv = 95},[3] = {id = 2005203,lv = 95},[4] = {id = 2005204,lv = 95},[5] = {id = 2005205,lv = 95},[6] = {id = 2005206,lv = 95},[7] = {id = 2005207,lv = 95},[8] = {id = 2005208,lv = 95}},mon = {id = 213,desc = "tg2-1-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 5,exert = 21,suffer = 21}},
			shl = {cha = "tg2",id = 5110111,cardId = 1102999,lv = 95,bklv = 14,star = 3,ghost = 31,equip = {[1] = {id = 2105201,lv = 95},[2] = {id = 2105202,lv = 95},[3] = {id = 2105203,lv = 95},[4] = {id = 2105204,lv = 95},[5] = {id = 2105205,lv = 95},[6] = {id = 2105206,lv = 95},[7] = {id = 2105207,lv = 95},[8] = {id = 2105208,lv = 95}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 2,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 239,desc = "tg2-1-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 5,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "tg2",id = 5110120,cardId = 1101998,lv = 95,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 95},[2] = {id = 2005302,lv = 95},[3] = {id = 2005303,lv = 95},[4] = {id = 2005304,lv = 95},[5] = {id = 2005305,lv = 95},[6] = {id = 2005306,lv = 95},[7] = {id = 2005307,lv = 95},[8] = {id = 2005308,lv = 95}},mon = {id = 212,desc = "tg2-1-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 5,exert = 21,suffer = 21}},
			shl = {cha = "tg2",id = 5110121,cardId = 1102998,lv = 95,bklv = 14,star = 3,ghost = 31,equip = {[1] = {id = 2105301,lv = 95},[2] = {id = 2105302,lv = 95},[3] = {id = 2105303,lv = 95},[4] = {id = 2105304,lv = 95},[5] = {id = 2105305,lv = 95},[6] = {id = 2105306,lv = 95},[7] = {id = 2105307,lv = 95},[8] = {id = 2105308,lv = 95}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 2,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 238,desc = "tg2-1-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 5,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "tg2",id = 5110130,cardId = 1101999,lv = 95,bklv = 13,star = 3,equip = {[1] = {id = 2005201,lv = 95},[2] = {id = 2005202,lv = 95},[3] = {id = 2005203,lv = 95},[4] = {id = 2005204,lv = 95},[5] = {id = 2005205,lv = 95},[6] = {id = 2005206,lv = 95},[7] = {id = 2005207,lv = 95},[8] = {id = 2005208,lv = 95}},mon = {id = 208,desc = "tg2-1-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 5,exert = 21,suffer = 21}},
			shl = {cha = "tg2",id = 5110131,cardId = 1102999,lv = 95,bklv = 14,star = 3,ghost = 31,equip = {[1] = {id = 2105201,lv = 95},[2] = {id = 2105202,lv = 95},[3] = {id = 2105203,lv = 95},[4] = {id = 2105204,lv = 95},[5] = {id = 2105205,lv = 95},[6] = {id = 2105206,lv = 95},[7] = {id = 2105207,lv = 95},[8] = {id = 2105208,lv = 95}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 2,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 233,desc = "tg2-1-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 5,exert = 25,suffer = 25}}
		}
	},
	[51102] = {
		[1] = {
			jlr = {cha = "tg2",id = 5110210,cardId = 1101999,lv = 95,bklv = 13,star = 3,equip = {[1] = {id = 2005201,lv = 95},[2] = {id = 2005202,lv = 95},[3] = {id = 2005203,lv = 95},[4] = {id = 2005204,lv = 95},[5] = {id = 2005205,lv = 95},[6] = {id = 2005206,lv = 95},[7] = {id = 2005207,lv = 95},[8] = {id = 2005208,lv = 95}},mon = {id = 201,desc = "tg2-2-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 6,exert = 21,suffer = 21}},
			shl = {cha = "tg2",id = 5110211,cardId = 1102999,lv = 95,bklv = 14,star = 3,ghost = 31,equip = {[1] = {id = 2105201,lv = 95},[2] = {id = 2105202,lv = 95},[3] = {id = 2105203,lv = 95},[4] = {id = 2105204,lv = 95},[5] = {id = 2105205,lv = 95},[6] = {id = 2105206,lv = 95},[7] = {id = 2105207,lv = 95},[8] = {id = 2105208,lv = 95}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 2,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 235,desc = "tg2-2-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 6,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "tg2",id = 5110220,cardId = 1101998,lv = 95,bklv = 13,star = 3,equip = {[1] = {id = 2005301,lv = 95},[2] = {id = 2005302,lv = 95},[3] = {id = 2005303,lv = 95},[4] = {id = 2005304,lv = 95},[5] = {id = 2005305,lv = 95},[6] = {id = 2005306,lv = 95},[7] = {id = 2005307,lv = 95},[8] = {id = 2005308,lv = 95}},mon = {id = 214,desc = "tg2-2-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 6,exert = 21,suffer = 21}},
			shl = {cha = "tg2",id = 5110221,cardId = 1102998,lv = 95,bklv = 14,star = 3,ghost = 31,equip = {[1] = {id = 2105301,lv = 95},[2] = {id = 2105302,lv = 95},[3] = {id = 2105303,lv = 95},[4] = {id = 2105304,lv = 95},[5] = {id = 2105305,lv = 95},[6] = {id = 2105306,lv = 95},[7] = {id = 2105307,lv = 95},[8] = {id = 2105308,lv = 95}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 2,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 240,desc = "tg2-2-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 6,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "tg2",id = 5110230,cardId = 1101999,lv = 95,bklv = 13,star = 3,equip = {[1] = {id = 2005201,lv = 95},[2] = {id = 2005202,lv = 95},[3] = {id = 2005203,lv = 95},[4] = {id = 2005204,lv = 95},[5] = {id = 2005205,lv = 95},[6] = {id = 2005206,lv = 95},[7] = {id = 2005207,lv = 95},[8] = {id = 2005208,lv = 95}},mon = {id = 203,desc = "tg2-2-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 6,exert = 21,suffer = 21}},
			shl = {cha = "tg2",id = 5110231,cardId = 1102999,lv = 95,bklv = 14,star = 3,ghost = 31,equip = {[1] = {id = 2105201,lv = 95},[2] = {id = 2105202,lv = 95},[3] = {id = 2105203,lv = 95},[4] = {id = 2105204,lv = 95},[5] = {id = 2105205,lv = 95},[6] = {id = 2105206,lv = 95},[7] = {id = 2105207,lv = 95},[8] = {id = 2105208,lv = 95}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 2,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 225,desc = "tg2-2-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 6,exert = 25,suffer = 25}}
		}
	},
	[51103] = {
		[1] = {
			jlr = {cha = "tg2",id = 5110310,cardId = 1101998,lv = 95,bklv = 13,star = 2,equip = {[1] = {id = 2005301,lv = 95},[2] = {id = 2005302,lv = 95},[3] = {id = 2005303,lv = 95},[4] = {id = 2005304,lv = 95},[5] = {id = 2005305,lv = 95},[6] = {id = 2005306,lv = 95},[7] = {id = 2005307,lv = 95},[8] = {id = 2005308,lv = 95}},mon = {id = 215,desc = "tg2-3-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 6,exert = 14,suffer = 21}},
			shl = {cha = "tg2",id = 5110311,cardId = 1102997,lv = 95,bklv = 14,star = 1,ghost = 31,equip = {[1] = {id = 2105301,lv = 95},[2] = {id = 2105302,lv = 95},[3] = {id = 2105303,lv = 95},[4] = {id = 2105304,lv = 95},[5] = {id = 2105305,lv = 95},[6] = {id = 2105306,lv = 95},[7] = {id = 2105307,lv = 95},[8] = {id = 2105308,lv = 95}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 2,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 321,desc = "tg2-3-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 6,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "tg2",id = 5110320,cardId = 1101998,lv = 95,bklv = 13,star = 2,equip = {[1] = {id = 2005401,lv = 95},[2] = {id = 2005402,lv = 95},[3] = {id = 2005403,lv = 95},[4] = {id = 2005404,lv = 95},[5] = {id = 2005405,lv = 95},[6] = {id = 2005406,lv = 95},[7] = {id = 2005407,lv = 95},[8] = {id = 2005408,lv = 95}},mon = {id = 211,desc = "tg2-3-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 6,exert = 14,suffer = 21}},
			shl = {cha = "tg2",id = 5110321,cardId = 1102997,lv = 95,bklv = 14,star = 1,ghost = 31,equip = {[1] = {id = 2105401,lv = 95},[2] = {id = 2105402,lv = 95},[3] = {id = 2105403,lv = 95},[4] = {id = 2105404,lv = 95},[5] = {id = 2105405,lv = 95},[6] = {id = 2105406,lv = 95},[7] = {id = 2105407,lv = 95},[8] = {id = 2105408,lv = 95}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 2,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 317,desc = "tg2-3-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 6,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "tg2",id = 5110330,cardId = 1101998,lv = 95,bklv = 13,star = 2,equip = {[1] = {id = 2005301,lv = 95},[2] = {id = 2005302,lv = 95},[3] = {id = 2005303,lv = 95},[4] = {id = 2005304,lv = 95},[5] = {id = 2005305,lv = 95},[6] = {id = 2005306,lv = 95},[7] = {id = 2005307,lv = 95},[8] = {id = 2005308,lv = 95}},mon = {id = 209,desc = "tg2-3-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 6,exert = 14,suffer = 21}},
			shl = {cha = "tg2",id = 5110331,cardId = 1102997,lv = 95,bklv = 14,star = 1,ghost = 31,equip = {[1] = {id = 2105301,lv = 95},[2] = {id = 2105302,lv = 95},[3] = {id = 2105303,lv = 95},[4] = {id = 2105304,lv = 95},[5] = {id = 2105305,lv = 95},[6] = {id = 2105306,lv = 95},[7] = {id = 2105307,lv = 95},[8] = {id = 2105308,lv = 95}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 2,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 314,desc = "tg2-3-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 6,exert = 18,suffer = 25}}
		}
	},
	[51104] = {
		[1] = {
			jlr = {cha = "tg2",id = 5110410,cardId = 1101998,lv = 95,bklv = 13,star = 2,equip = {[1] = {id = 2005301,lv = 95},[2] = {id = 2005302,lv = 95},[3] = {id = 2005303,lv = 95},[4] = {id = 2005304,lv = 95},[5] = {id = 2005305,lv = 95},[6] = {id = 2005306,lv = 95},[7] = {id = 2005307,lv = 95},[8] = {id = 2005308,lv = 95}},mon = {id = 207,desc = "tg2-4-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 7,exert = 14,suffer = 21}},
			shl = {cha = "tg2",id = 5110411,cardId = 1102997,lv = 95,bklv = 14,star = 1,ghost = 31,equip = {[1] = {id = 2105301,lv = 95},[2] = {id = 2105302,lv = 95},[3] = {id = 2105303,lv = 95},[4] = {id = 2105304,lv = 95},[5] = {id = 2105305,lv = 95},[6] = {id = 2105306,lv = 95},[7] = {id = 2105307,lv = 95},[8] = {id = 2105308,lv = 95}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 2,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 303,desc = "tg2-4-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 7,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "tg2",id = 5110420,cardId = 1101998,lv = 95,bklv = 13,star = 2,equip = {[1] = {id = 2005401,lv = 95},[2] = {id = 2005402,lv = 95},[3] = {id = 2005403,lv = 95},[4] = {id = 2005404,lv = 95},[5] = {id = 2005405,lv = 95},[6] = {id = 2005406,lv = 95},[7] = {id = 2005407,lv = 95},[8] = {id = 2005408,lv = 95}},mon = {id = 210,desc = "tg2-4-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 7,exert = 14,suffer = 21}},
			shl = {cha = "tg2",id = 5110421,cardId = 1102997,lv = 95,bklv = 14,star = 1,ghost = 31,equip = {[1] = {id = 2105401,lv = 95},[2] = {id = 2105402,lv = 95},[3] = {id = 2105403,lv = 95},[4] = {id = 2105404,lv = 95},[5] = {id = 2105405,lv = 95},[6] = {id = 2105406,lv = 95},[7] = {id = 2105407,lv = 95},[8] = {id = 2105408,lv = 95}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 2,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 316,desc = "tg2-4-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 7,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "tg2",id = 5110430,cardId = 1101998,lv = 95,bklv = 13,star = 2,equip = {[1] = {id = 2005301,lv = 95},[2] = {id = 2005302,lv = 95},[3] = {id = 2005303,lv = 95},[4] = {id = 2005304,lv = 95},[5] = {id = 2005305,lv = 95},[6] = {id = 2005306,lv = 95},[7] = {id = 2005307,lv = 95},[8] = {id = 2005308,lv = 95}},mon = {id = 206,desc = "tg2-4-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 7,exert = 14,suffer = 21}},
			shl = {cha = "tg2",id = 5110431,cardId = 1102997,lv = 95,bklv = 14,star = 1,ghost = 31,equip = {[1] = {id = 2105301,lv = 95},[2] = {id = 2105302,lv = 95},[3] = {id = 2105303,lv = 95},[4] = {id = 2105304,lv = 95},[5] = {id = 2105305,lv = 95},[6] = {id = 2105306,lv = 95},[7] = {id = 2105307,lv = 95},[8] = {id = 2105308,lv = 95}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 2,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 307,desc = "tg2-4-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 7,exert = 18,suffer = 25}}
		}
	},
	[51105] = {
		[1] = {
			jlr = {cha = "tg2",id = 5110510,cardId = 1101998,lv = 95,bklv = 13,star = 3,equip = {[1] = {id = 2005401,lv = 95},[2] = {id = 2005402,lv = 95},[3] = {id = 2005403,lv = 95},[4] = {id = 2005404,lv = 95},[5] = {id = 2005405,lv = 95},[6] = {id = 2005406,lv = 95},[7] = {id = 2005407,lv = 95},[8] = {id = 2005408,lv = 95}},mon = {id = 207,desc = "tg2-5-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 7,exert = 11,suffer = 21}},
			shl = {cha = "tg2",id = 5110511,cardId = 1102997,lv = 95,bklv = 14,star = 3,ghost = 31,equip = {[1] = {id = 2105401,lv = 95},[2] = {id = 2105402,lv = 95},[3] = {id = 2105403,lv = 95},[4] = {id = 2105404,lv = 95},[5] = {id = 2105405,lv = 95},[6] = {id = 2105406,lv = 95},[7] = {id = 2105407,lv = 95},[8] = {id = 2105408,lv = 95}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 2,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 312,desc = "tg2-5-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 7,exert = 15,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "tg2",id = 5110520,cardId = 1101998,lv = 95,bklv = 13,star = 3,equip = {[1] = {id = 2005421,lv = 95},[2] = {id = 2005422,lv = 95},[3] = {id = 2005423,lv = 95},[4] = {id = 2005434,lv = 95},[5] = {id = 2005425,lv = 95},[6] = {id = 2005436,lv = 95},[7] = {id = 2005407,lv = 95},[8] = {id = 2005408,lv = 95}},mon = {id = 204,desc = "tg2-5-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 7,exert = 11,suffer = 21}},
			shl = {cha = "tg2",id = 5110521,cardId = 1102996,lv = 95,bklv = 14,star = 1,ghost = 31,equip = {[1] = {id = 2105421,lv = 95},[2] = {id = 2105432,lv = 95},[3] = {id = 2105423,lv = 95},[4] = {id = 2105434,lv = 95},[5] = {id = 2105425,lv = 95},[6] = {id = 2105436,lv = 95},[7] = {id = 2105407,lv = 95},[8] = {id = 2105408,lv = 95}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 2,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 306,desc = "tg2-5-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 7,exert = 15,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "tg2",id = 5110530,cardId = 1101998,lv = 95,bklv = 13,star = 3,equip = {[1] = {id = 2005401,lv = 95},[2] = {id = 2005402,lv = 95},[3] = {id = 2005403,lv = 95},[4] = {id = 2005404,lv = 95},[5] = {id = 2005405,lv = 95},[6] = {id = 2005406,lv = 95},[7] = {id = 2005407,lv = 95},[8] = {id = 2005408,lv = 95}},mon = {id = 205,desc = "tg2-5-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 7,exert = 11,suffer = 21}},
			shl = {cha = "tg2",id = 5110531,cardId = 1102997,lv = 95,bklv = 14,star = 3,ghost = 31,equip = {[1] = {id = 2105401,lv = 95},[2] = {id = 2105402,lv = 95},[3] = {id = 2105403,lv = 95},[4] = {id = 2105404,lv = 95},[5] = {id = 2105405,lv = 95},[6] = {id = 2105406,lv = 95},[7] = {id = 2105407,lv = 95},[8] = {id = 2105408,lv = 95}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 2,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 301,desc = "tg2-5-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 7,exert = 15,suffer = 25}}
		}
	},
	[51201] = {
		[1] = {
			jlr = {cha = "tg3",id = 5120110,cardId = 1101999,lv = 100,bklv = 14,star = 3,equip = {[1] = {id = 2006201,lv = 100},[2] = {id = 2006202,lv = 100},[3] = {id = 2006203,lv = 100},[4] = {id = 2006204,lv = 100},[5] = {id = 2006205,lv = 100},[6] = {id = 2006206,lv = 100},[7] = {id = 2006207,lv = 100},[8] = {id = 2006208,lv = 100}},mon = {id = 213,desc = "tg3-1-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 6,exert = 21,suffer = 21}},
			shl = {cha = "tg3",id = 5120111,cardId = 1102999,lv = 100,bklv = 15,star = 3,ghost = 33,equip = {[1] = {id = 2106201,lv = 100},[2] = {id = 2106202,lv = 100},[3] = {id = 2106203,lv = 100},[4] = {id = 2106204,lv = 100},[5] = {id = 2106205,lv = 100},[6] = {id = 2106206,lv = 100},[7] = {id = 2106207,lv = 100},[8] = {id = 2106208,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 3,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 239,desc = "tg3-1-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 6,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "tg3",id = 5120120,cardId = 1101998,lv = 100,bklv = 14,star = 3,equip = {[1] = {id = 2006301,lv = 100},[2] = {id = 2006302,lv = 100},[3] = {id = 2006303,lv = 100},[4] = {id = 2006304,lv = 100},[5] = {id = 2006305,lv = 100},[6] = {id = 2006306,lv = 100},[7] = {id = 2006307,lv = 100},[8] = {id = 2006308,lv = 100}},mon = {id = 212,desc = "tg3-1-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 6,exert = 21,suffer = 21}},
			shl = {cha = "tg3",id = 5120121,cardId = 1102998,lv = 100,bklv = 15,star = 3,ghost = 33,equip = {[1] = {id = 2106301,lv = 100},[2] = {id = 2106302,lv = 100},[3] = {id = 2106303,lv = 100},[4] = {id = 2106304,lv = 100},[5] = {id = 2106305,lv = 100},[6] = {id = 2106306,lv = 100},[7] = {id = 2106307,lv = 100},[8] = {id = 2106308,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 3,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 238,desc = "tg3-1-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 6,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "tg3",id = 5120130,cardId = 1101999,lv = 100,bklv = 14,star = 3,equip = {[1] = {id = 2006201,lv = 100},[2] = {id = 2006202,lv = 100},[3] = {id = 2006203,lv = 100},[4] = {id = 2006204,lv = 100},[5] = {id = 2006205,lv = 100},[6] = {id = 2006206,lv = 100},[7] = {id = 2006207,lv = 100},[8] = {id = 2006208,lv = 100}},mon = {id = 208,desc = "tg3-1-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 6,exert = 21,suffer = 21}},
			shl = {cha = "tg3",id = 5120131,cardId = 1102999,lv = 100,bklv = 15,star = 3,ghost = 33,equip = {[1] = {id = 2106201,lv = 100},[2] = {id = 2106202,lv = 100},[3] = {id = 2106203,lv = 100},[4] = {id = 2106204,lv = 100},[5] = {id = 2106205,lv = 100},[6] = {id = 2106206,lv = 100},[7] = {id = 2106207,lv = 100},[8] = {id = 2106208,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 3,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 233,desc = "tg3-1-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 6,exert = 25,suffer = 25}}
		}
	},
	[51202] = {
		[1] = {
			jlr = {cha = "tg3",id = 5120210,cardId = 1101999,lv = 100,bklv = 14,star = 3,equip = {[1] = {id = 2006201,lv = 100},[2] = {id = 2006202,lv = 100},[3] = {id = 2006203,lv = 100},[4] = {id = 2006204,lv = 100},[5] = {id = 2006205,lv = 100},[6] = {id = 2006206,lv = 100},[7] = {id = 2006207,lv = 100},[8] = {id = 2006208,lv = 100}},mon = {id = 201,desc = "tg3-2-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 7,exert = 21,suffer = 21}},
			shl = {cha = "tg3",id = 5120211,cardId = 1102999,lv = 100,bklv = 15,star = 3,ghost = 33,equip = {[1] = {id = 2106201,lv = 100},[2] = {id = 2106202,lv = 100},[3] = {id = 2106203,lv = 100},[4] = {id = 2106204,lv = 100},[5] = {id = 2106205,lv = 100},[6] = {id = 2106206,lv = 100},[7] = {id = 2106207,lv = 100},[8] = {id = 2106208,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 3,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 235,desc = "tg3-2-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 7,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "tg3",id = 5120220,cardId = 1101998,lv = 100,bklv = 14,star = 3,equip = {[1] = {id = 2006301,lv = 100},[2] = {id = 2006302,lv = 100},[3] = {id = 2006303,lv = 100},[4] = {id = 2006304,lv = 100},[5] = {id = 2006305,lv = 100},[6] = {id = 2006306,lv = 100},[7] = {id = 2006307,lv = 100},[8] = {id = 2006308,lv = 100}},mon = {id = 214,desc = "tg3-2-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 7,exert = 21,suffer = 21}},
			shl = {cha = "tg3",id = 5120221,cardId = 1102998,lv = 100,bklv = 15,star = 3,ghost = 33,equip = {[1] = {id = 2106301,lv = 100},[2] = {id = 2106302,lv = 100},[3] = {id = 2106303,lv = 100},[4] = {id = 2106304,lv = 100},[5] = {id = 2106305,lv = 100},[6] = {id = 2106306,lv = 100},[7] = {id = 2106307,lv = 100},[8] = {id = 2106308,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 3,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 240,desc = "tg3-2-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 7,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "tg3",id = 5120230,cardId = 1101999,lv = 100,bklv = 14,star = 3,equip = {[1] = {id = 2006201,lv = 100},[2] = {id = 2006202,lv = 100},[3] = {id = 2006203,lv = 100},[4] = {id = 2006204,lv = 100},[5] = {id = 2006205,lv = 100},[6] = {id = 2006206,lv = 100},[7] = {id = 2006207,lv = 100},[8] = {id = 2006208,lv = 100}},mon = {id = 203,desc = "tg3-2-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 7,exert = 21,suffer = 21}},
			shl = {cha = "tg3",id = 5120231,cardId = 1102999,lv = 100,bklv = 15,star = 3,ghost = 33,equip = {[1] = {id = 2106201,lv = 100},[2] = {id = 2106202,lv = 100},[3] = {id = 2106203,lv = 100},[4] = {id = 2106204,lv = 100},[5] = {id = 2106205,lv = 100},[6] = {id = 2106206,lv = 100},[7] = {id = 2106207,lv = 100},[8] = {id = 2106208,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 3,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 225,desc = "tg3-2-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 7,exert = 25,suffer = 25}}
		}
	},
	[51203] = {
		[1] = {
			jlr = {cha = "tg3",id = 5120310,cardId = 1101998,lv = 100,bklv = 14,star = 2,equip = {[1] = {id = 2006301,lv = 100},[2] = {id = 2006302,lv = 100},[3] = {id = 2006303,lv = 100},[4] = {id = 2006304,lv = 100},[5] = {id = 2006305,lv = 100},[6] = {id = 2006306,lv = 100},[7] = {id = 2006307,lv = 100},[8] = {id = 2006308,lv = 100}},mon = {id = 215,desc = "tg3-3-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 7,exert = 14,suffer = 21}},
			shl = {cha = "tg3",id = 5120311,cardId = 1102997,lv = 100,bklv = 15,star = 1,ghost = 33,equip = {[1] = {id = 2106301,lv = 100},[2] = {id = 2106302,lv = 100},[3] = {id = 2106303,lv = 100},[4] = {id = 2106304,lv = 100},[5] = {id = 2106305,lv = 100},[6] = {id = 2106306,lv = 100},[7] = {id = 2106307,lv = 100},[8] = {id = 2106308,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 3,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 321,desc = "tg3-3-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 7,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "tg3",id = 5120320,cardId = 1101998,lv = 100,bklv = 14,star = 2,equip = {[1] = {id = 2006401,lv = 100},[2] = {id = 2006402,lv = 100},[3] = {id = 2006403,lv = 100},[4] = {id = 2006404,lv = 100},[5] = {id = 2006405,lv = 100},[6] = {id = 2006406,lv = 100},[7] = {id = 2006407,lv = 100},[8] = {id = 2006408,lv = 100}},mon = {id = 211,desc = "tg3-3-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 7,exert = 14,suffer = 21}},
			shl = {cha = "tg3",id = 5120321,cardId = 1102997,lv = 100,bklv = 15,star = 1,ghost = 33,equip = {[1] = {id = 2106401,lv = 100},[2] = {id = 2106402,lv = 100},[3] = {id = 2106403,lv = 100},[4] = {id = 2106404,lv = 100},[5] = {id = 2106405,lv = 100},[6] = {id = 2106406,lv = 100},[7] = {id = 2106407,lv = 100},[8] = {id = 2106408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 3,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 317,desc = "tg3-3-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 7,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "tg3",id = 5120330,cardId = 1101998,lv = 100,bklv = 14,star = 2,equip = {[1] = {id = 2006301,lv = 100},[2] = {id = 2006302,lv = 100},[3] = {id = 2006303,lv = 100},[4] = {id = 2006304,lv = 100},[5] = {id = 2006305,lv = 100},[6] = {id = 2006306,lv = 100},[7] = {id = 2006307,lv = 100},[8] = {id = 2006308,lv = 100}},mon = {id = 209,desc = "tg3-3-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 7,exert = 14,suffer = 21}},
			shl = {cha = "tg3",id = 5120331,cardId = 1102997,lv = 100,bklv = 15,star = 1,ghost = 33,equip = {[1] = {id = 2106301,lv = 100},[2] = {id = 2106302,lv = 100},[3] = {id = 2106303,lv = 100},[4] = {id = 2106304,lv = 100},[5] = {id = 2106305,lv = 100},[6] = {id = 2106306,lv = 100},[7] = {id = 2106307,lv = 100},[8] = {id = 2106308,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 3,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 314,desc = "tg3-3-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 7,exert = 18,suffer = 25}}
		}
	},
	[51204] = {
		[1] = {
			jlr = {cha = "tg3",id = 5120410,cardId = 1101998,lv = 100,bklv = 14,star = 2,equip = {[1] = {id = 2006301,lv = 100},[2] = {id = 2006302,lv = 100},[3] = {id = 2006303,lv = 100},[4] = {id = 2006304,lv = 100},[5] = {id = 2006305,lv = 100},[6] = {id = 2006306,lv = 100},[7] = {id = 2006307,lv = 100},[8] = {id = 2006308,lv = 100}},mon = {id = 207,desc = "tg3-4-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 8,exert = 14,suffer = 21}},
			shl = {cha = "tg3",id = 5120411,cardId = 1102997,lv = 100,bklv = 15,star = 1,ghost = 33,equip = {[1] = {id = 2106301,lv = 100},[2] = {id = 2106302,lv = 100},[3] = {id = 2106303,lv = 100},[4] = {id = 2106304,lv = 100},[5] = {id = 2106305,lv = 100},[6] = {id = 2106306,lv = 100},[7] = {id = 2106307,lv = 100},[8] = {id = 2106308,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 3,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 303,desc = "tg3-4-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 8,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "tg3",id = 5120420,cardId = 1101998,lv = 100,bklv = 14,star = 2,equip = {[1] = {id = 2006401,lv = 100},[2] = {id = 2006402,lv = 100},[3] = {id = 2006403,lv = 100},[4] = {id = 2006404,lv = 100},[5] = {id = 2006405,lv = 100},[6] = {id = 2006406,lv = 100},[7] = {id = 2006407,lv = 100},[8] = {id = 2006408,lv = 100}},mon = {id = 210,desc = "tg3-4-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 8,exert = 14,suffer = 21}},
			shl = {cha = "tg3",id = 5120421,cardId = 1102997,lv = 100,bklv = 15,star = 1,ghost = 33,equip = {[1] = {id = 2106401,lv = 100},[2] = {id = 2106402,lv = 100},[3] = {id = 2106403,lv = 100},[4] = {id = 2106404,lv = 100},[5] = {id = 2106405,lv = 100},[6] = {id = 2106406,lv = 100},[7] = {id = 2106407,lv = 100},[8] = {id = 2106408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 3,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 316,desc = "tg3-4-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 8,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "tg3",id = 5120430,cardId = 1101998,lv = 100,bklv = 14,star = 2,equip = {[1] = {id = 2006301,lv = 100},[2] = {id = 2006302,lv = 100},[3] = {id = 2006303,lv = 100},[4] = {id = 2006304,lv = 100},[5] = {id = 2006305,lv = 100},[6] = {id = 2006306,lv = 100},[7] = {id = 2006307,lv = 100},[8] = {id = 2006308,lv = 100}},mon = {id = 206,desc = "tg3-4-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 8,exert = 14,suffer = 21}},
			shl = {cha = "tg3",id = 5120431,cardId = 1102997,lv = 100,bklv = 15,star = 1,ghost = 33,equip = {[1] = {id = 2106301,lv = 100},[2] = {id = 2106302,lv = 100},[3] = {id = 2106303,lv = 100},[4] = {id = 2106304,lv = 100},[5] = {id = 2106305,lv = 100},[6] = {id = 2106306,lv = 100},[7] = {id = 2106307,lv = 100},[8] = {id = 2106308,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 3,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 307,desc = "tg3-4-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 8,exert = 18,suffer = 25}}
		}
	},
	[51205] = {
		[1] = {
			jlr = {cha = "tg3",id = 5120510,cardId = 1101998,lv = 100,bklv = 14,star = 3,equip = {[1] = {id = 2006401,lv = 100},[2] = {id = 2006402,lv = 100},[3] = {id = 2006403,lv = 100},[4] = {id = 2006404,lv = 100},[5] = {id = 2006405,lv = 100},[6] = {id = 2006406,lv = 100},[7] = {id = 2006407,lv = 100},[8] = {id = 2006408,lv = 100}},mon = {id = 207,desc = "tg3-5-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 8,exert = 11,suffer = 21}},
			shl = {cha = "tg3",id = 5120511,cardId = 1102997,lv = 100,bklv = 15,star = 3,ghost = 33,equip = {[1] = {id = 2106401,lv = 100},[2] = {id = 2106402,lv = 100},[3] = {id = 2106403,lv = 100},[4] = {id = 2106404,lv = 100},[5] = {id = 2106405,lv = 100},[6] = {id = 2106406,lv = 100},[7] = {id = 2106407,lv = 100},[8] = {id = 2106408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 3,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 312,desc = "tg3-5-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 8,exert = 15,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "tg3",id = 5120520,cardId = 1101998,lv = 100,bklv = 14,star = 3,equip = {[1] = {id = 2006411,lv = 100},[2] = {id = 2006412,lv = 100},[3] = {id = 2006413,lv = 100},[4] = {id = 2006404,lv = 100},[5] = {id = 2006415,lv = 100},[6] = {id = 2006406,lv = 100},[7] = {id = 2006417,lv = 100},[8] = {id = 2006418,lv = 100}},mon = {id = 204,desc = "tg3-5-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 8,exert = 11,suffer = 21}},
			shl = {cha = "tg3",id = 5120521,cardId = 1102996,lv = 100,bklv = 15,star = 2,ghost = 33,equip = {[1] = {id = 2106411,lv = 100},[2] = {id = 2106412,lv = 100},[3] = {id = 2106413,lv = 100},[4] = {id = 2106404,lv = 100},[5] = {id = 2106415,lv = 100},[6] = {id = 2106406,lv = 100},[7] = {id = 2106417,lv = 100},[8] = {id = 2106418,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 3,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 306,desc = "tg3-5-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 8,exert = 15,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "tg3",id = 5120530,cardId = 1101998,lv = 100,bklv = 14,star = 3,equip = {[1] = {id = 2006401,lv = 100},[2] = {id = 2006402,lv = 100},[3] = {id = 2006403,lv = 100},[4] = {id = 2006404,lv = 100},[5] = {id = 2006405,lv = 100},[6] = {id = 2006406,lv = 100},[7] = {id = 2006407,lv = 100},[8] = {id = 2006408,lv = 100}},mon = {id = 205,desc = "tg3-5-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 8,exert = 11,suffer = 21}},
			shl = {cha = "tg3",id = 5120531,cardId = 1102997,lv = 100,bklv = 15,star = 3,ghost = 33,equip = {[1] = {id = 2106401,lv = 100},[2] = {id = 2106402,lv = 100},[3] = {id = 2106403,lv = 100},[4] = {id = 2106404,lv = 100},[5] = {id = 2106405,lv = 100},[6] = {id = 2106406,lv = 100},[7] = {id = 2106407,lv = 100},[8] = {id = 2106408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 3,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 301,desc = "tg3-5-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 8,exert = 15,suffer = 25}}
		}
	},
	[51301] = {
		[1] = {
			jlr = {cha = "tg4",id = 5130110,cardId = 1101999,lv = 105,bklv = 14,star = 3,equip = {[1] = {id = 2006201,lv = 105},[2] = {id = 2006202,lv = 105},[3] = {id = 2006203,lv = 105},[4] = {id = 2006204,lv = 105},[5] = {id = 2006205,lv = 105},[6] = {id = 2006206,lv = 105},[7] = {id = 2006207,lv = 105},[8] = {id = 2006208,lv = 105}},mon = {id = 213,desc = "tg4-1-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 6,exert = 21,suffer = 21}},
			shl = {cha = "tg4",id = 5130111,cardId = 1102999,lv = 105,bklv = 15,star = 3,ghost = 35,equip = {[1] = {id = 2106201,lv = 105},[2] = {id = 2106202,lv = 105},[3] = {id = 2106203,lv = 105},[4] = {id = 2106204,lv = 105},[5] = {id = 2106205,lv = 105},[6] = {id = 2106206,lv = 105},[7] = {id = 2106207,lv = 105},[8] = {id = 2106208,lv = 105}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 1,[6] = 0,[7] = 0,[8] = 0},mon = {id = 239,desc = "tg4-1-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 6,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "tg4",id = 5130120,cardId = 1101998,lv = 105,bklv = 14,star = 3,equip = {[1] = {id = 2006301,lv = 105},[2] = {id = 2006302,lv = 105},[3] = {id = 2006303,lv = 105},[4] = {id = 2006304,lv = 105},[5] = {id = 2006305,lv = 105},[6] = {id = 2006306,lv = 105},[7] = {id = 2006307,lv = 105},[8] = {id = 2006308,lv = 105}},mon = {id = 212,desc = "tg4-1-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 6,exert = 21,suffer = 21}},
			shl = {cha = "tg4",id = 5130121,cardId = 1102998,lv = 105,bklv = 15,star = 3,ghost = 35,equip = {[1] = {id = 2106301,lv = 105},[2] = {id = 2106302,lv = 105},[3] = {id = 2106303,lv = 105},[4] = {id = 2106304,lv = 105},[5] = {id = 2106305,lv = 105},[6] = {id = 2106306,lv = 105},[7] = {id = 2106307,lv = 105},[8] = {id = 2106308,lv = 105}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 1,[6] = 0,[7] = 0,[8] = 0},mon = {id = 238,desc = "tg4-1-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 6,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "tg4",id = 5130130,cardId = 1101999,lv = 105,bklv = 14,star = 3,equip = {[1] = {id = 2006201,lv = 105},[2] = {id = 2006202,lv = 105},[3] = {id = 2006203,lv = 105},[4] = {id = 2006204,lv = 105},[5] = {id = 2006205,lv = 105},[6] = {id = 2006206,lv = 105},[7] = {id = 2006207,lv = 105},[8] = {id = 2006208,lv = 105}},mon = {id = 208,desc = "tg4-1-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 6,exert = 21,suffer = 21}},
			shl = {cha = "tg4",id = 5130131,cardId = 1102999,lv = 105,bklv = 15,star = 3,ghost = 35,equip = {[1] = {id = 2106201,lv = 105},[2] = {id = 2106202,lv = 105},[3] = {id = 2106203,lv = 105},[4] = {id = 2106204,lv = 105},[5] = {id = 2106205,lv = 105},[6] = {id = 2106206,lv = 105},[7] = {id = 2106207,lv = 105},[8] = {id = 2106208,lv = 105}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 1,[6] = 0,[7] = 0,[8] = 0},mon = {id = 233,desc = "tg4-1-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 6,exert = 25,suffer = 25}}
		}
	},
	[51302] = {
		[1] = {
			jlr = {cha = "tg4",id = 5130210,cardId = 1101999,lv = 105,bklv = 14,star = 3,equip = {[1] = {id = 2006201,lv = 105},[2] = {id = 2006202,lv = 105},[3] = {id = 2006203,lv = 105},[4] = {id = 2006204,lv = 105},[5] = {id = 2006205,lv = 105},[6] = {id = 2006206,lv = 105},[7] = {id = 2006207,lv = 105},[8] = {id = 2006208,lv = 105}},mon = {id = 201,desc = "tg4-2-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 7,exert = 21,suffer = 21}},
			shl = {cha = "tg4",id = 5130211,cardId = 1102999,lv = 105,bklv = 15,star = 3,ghost = 35,equip = {[1] = {id = 2106201,lv = 105},[2] = {id = 2106202,lv = 105},[3] = {id = 2106203,lv = 105},[4] = {id = 2106204,lv = 105},[5] = {id = 2106205,lv = 105},[6] = {id = 2106206,lv = 105},[7] = {id = 2106207,lv = 105},[8] = {id = 2106208,lv = 105}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 1,[6] = 0,[7] = 0,[8] = 0},mon = {id = 235,desc = "tg4-2-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 7,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "tg4",id = 5130220,cardId = 1101998,lv = 105,bklv = 14,star = 3,equip = {[1] = {id = 2006301,lv = 105},[2] = {id = 2006302,lv = 105},[3] = {id = 2006303,lv = 105},[4] = {id = 2006304,lv = 105},[5] = {id = 2006305,lv = 105},[6] = {id = 2006306,lv = 105},[7] = {id = 2006307,lv = 105},[8] = {id = 2006308,lv = 105}},mon = {id = 214,desc = "tg4-2-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 7,exert = 21,suffer = 21}},
			shl = {cha = "tg4",id = 5130221,cardId = 1102998,lv = 105,bklv = 15,star = 3,ghost = 35,equip = {[1] = {id = 2106301,lv = 105},[2] = {id = 2106302,lv = 105},[3] = {id = 2106303,lv = 105},[4] = {id = 2106304,lv = 105},[5] = {id = 2106305,lv = 105},[6] = {id = 2106306,lv = 105},[7] = {id = 2106307,lv = 105},[8] = {id = 2106308,lv = 105}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 1,[6] = 0,[7] = 0,[8] = 0},mon = {id = 240,desc = "tg4-2-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 7,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "tg4",id = 5130230,cardId = 1101999,lv = 105,bklv = 14,star = 3,equip = {[1] = {id = 2006201,lv = 105},[2] = {id = 2006202,lv = 105},[3] = {id = 2006203,lv = 105},[4] = {id = 2006204,lv = 105},[5] = {id = 2006205,lv = 105},[6] = {id = 2006206,lv = 105},[7] = {id = 2006207,lv = 105},[8] = {id = 2006208,lv = 105}},mon = {id = 203,desc = "tg4-2-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 7,exert = 21,suffer = 21}},
			shl = {cha = "tg4",id = 5130231,cardId = 1102999,lv = 105,bklv = 15,star = 3,ghost = 35,equip = {[1] = {id = 2106201,lv = 105},[2] = {id = 2106202,lv = 105},[3] = {id = 2106203,lv = 105},[4] = {id = 2106204,lv = 105},[5] = {id = 2106205,lv = 105},[6] = {id = 2106206,lv = 105},[7] = {id = 2106207,lv = 105},[8] = {id = 2106208,lv = 105}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 1,[6] = 0,[7] = 0,[8] = 0},mon = {id = 225,desc = "tg4-2-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 7,exert = 25,suffer = 25}}
		}
	},
	[51303] = {
		[1] = {
			jlr = {cha = "tg4",id = 5130310,cardId = 1101998,lv = 105,bklv = 14,star = 2,equip = {[1] = {id = 2006301,lv = 105},[2] = {id = 2006302,lv = 105},[3] = {id = 2006303,lv = 105},[4] = {id = 2006304,lv = 105},[5] = {id = 2006305,lv = 105},[6] = {id = 2006306,lv = 105},[7] = {id = 2006307,lv = 105},[8] = {id = 2006308,lv = 105}},mon = {id = 215,desc = "tg4-3-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 7,exert = 14,suffer = 21}},
			shl = {cha = "tg4",id = 5130311,cardId = 1102997,lv = 105,bklv = 15,star = 1,ghost = 35,equip = {[1] = {id = 2106301,lv = 105},[2] = {id = 2106302,lv = 105},[3] = {id = 2106303,lv = 105},[4] = {id = 2106304,lv = 105},[5] = {id = 2106305,lv = 105},[6] = {id = 2106306,lv = 105},[7] = {id = 2106307,lv = 105},[8] = {id = 2106308,lv = 105}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 1,[6] = 0,[7] = 0,[8] = 0},mon = {id = 321,desc = "tg4-3-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 7,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "tg4",id = 5130320,cardId = 1101998,lv = 105,bklv = 14,star = 2,equip = {[1] = {id = 2006401,lv = 105},[2] = {id = 2006402,lv = 105},[3] = {id = 2006403,lv = 105},[4] = {id = 2006404,lv = 105},[5] = {id = 2006405,lv = 105},[6] = {id = 2006406,lv = 105},[7] = {id = 2006407,lv = 105},[8] = {id = 2006408,lv = 105}},mon = {id = 211,desc = "tg4-3-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 7,exert = 14,suffer = 21}},
			shl = {cha = "tg4",id = 5130321,cardId = 1102997,lv = 105,bklv = 15,star = 1,ghost = 35,equip = {[1] = {id = 2106401,lv = 105},[2] = {id = 2106402,lv = 105},[3] = {id = 2106403,lv = 105},[4] = {id = 2106404,lv = 105},[5] = {id = 2106405,lv = 105},[6] = {id = 2106406,lv = 105},[7] = {id = 2106407,lv = 105},[8] = {id = 2106408,lv = 105}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 1,[6] = 0,[7] = 0,[8] = 0},mon = {id = 317,desc = "tg4-3-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 7,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "tg4",id = 5130330,cardId = 1101998,lv = 105,bklv = 14,star = 2,equip = {[1] = {id = 2006301,lv = 105},[2] = {id = 2006302,lv = 105},[3] = {id = 2006303,lv = 105},[4] = {id = 2006304,lv = 105},[5] = {id = 2006305,lv = 105},[6] = {id = 2006306,lv = 105},[7] = {id = 2006307,lv = 105},[8] = {id = 2006308,lv = 105}},mon = {id = 209,desc = "tg4-3-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 7,exert = 14,suffer = 21}},
			shl = {cha = "tg4",id = 5130331,cardId = 1102997,lv = 105,bklv = 15,star = 1,ghost = 35,equip = {[1] = {id = 2106301,lv = 105},[2] = {id = 2106302,lv = 105},[3] = {id = 2106303,lv = 105},[4] = {id = 2106304,lv = 105},[5] = {id = 2106305,lv = 105},[6] = {id = 2106306,lv = 105},[7] = {id = 2106307,lv = 105},[8] = {id = 2106308,lv = 105}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 1,[6] = 0,[7] = 0,[8] = 0},mon = {id = 314,desc = "tg4-3-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 7,exert = 18,suffer = 25}}
		}
	},
	[51304] = {
		[1] = {
			jlr = {cha = "tg4",id = 5130410,cardId = 1101998,lv = 105,bklv = 14,star = 2,equip = {[1] = {id = 2006301,lv = 105},[2] = {id = 2006302,lv = 105},[3] = {id = 2006303,lv = 105},[4] = {id = 2006304,lv = 105},[5] = {id = 2006305,lv = 105},[6] = {id = 2006306,lv = 105},[7] = {id = 2006307,lv = 105},[8] = {id = 2006308,lv = 105}},mon = {id = 207,desc = "tg4-4-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 8,exert = 14,suffer = 21}},
			shl = {cha = "tg4",id = 5130411,cardId = 1102997,lv = 105,bklv = 15,star = 1,ghost = 35,equip = {[1] = {id = 2106301,lv = 105},[2] = {id = 2106302,lv = 105},[3] = {id = 2106303,lv = 105},[4] = {id = 2106304,lv = 105},[5] = {id = 2106305,lv = 105},[6] = {id = 2106306,lv = 105},[7] = {id = 2106307,lv = 105},[8] = {id = 2106308,lv = 105}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 1,[6] = 0,[7] = 0,[8] = 0},mon = {id = 303,desc = "tg4-4-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 8,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "tg4",id = 5130420,cardId = 1101998,lv = 105,bklv = 14,star = 2,equip = {[1] = {id = 2006401,lv = 105},[2] = {id = 2006402,lv = 105},[3] = {id = 2006403,lv = 105},[4] = {id = 2006404,lv = 105},[5] = {id = 2006405,lv = 105},[6] = {id = 2006406,lv = 105},[7] = {id = 2006407,lv = 105},[8] = {id = 2006408,lv = 105}},mon = {id = 210,desc = "tg4-4-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 8,exert = 14,suffer = 21}},
			shl = {cha = "tg4",id = 5130421,cardId = 1102997,lv = 105,bklv = 15,star = 1,ghost = 35,equip = {[1] = {id = 2106401,lv = 105},[2] = {id = 2106402,lv = 105},[3] = {id = 2106403,lv = 105},[4] = {id = 2106404,lv = 105},[5] = {id = 2106405,lv = 105},[6] = {id = 2106406,lv = 105},[7] = {id = 2106407,lv = 105},[8] = {id = 2106408,lv = 105}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 1,[6] = 0,[7] = 0,[8] = 0},mon = {id = 316,desc = "tg4-4-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 8,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "tg4",id = 5130430,cardId = 1101998,lv = 105,bklv = 14,star = 2,equip = {[1] = {id = 2006301,lv = 105},[2] = {id = 2006302,lv = 105},[3] = {id = 2006303,lv = 105},[4] = {id = 2006304,lv = 105},[5] = {id = 2006305,lv = 105},[6] = {id = 2006306,lv = 105},[7] = {id = 2006307,lv = 105},[8] = {id = 2006308,lv = 105}},mon = {id = 206,desc = "tg4-4-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 8,exert = 14,suffer = 21}},
			shl = {cha = "tg4",id = 5130431,cardId = 1102997,lv = 105,bklv = 15,star = 1,ghost = 35,equip = {[1] = {id = 2106301,lv = 105},[2] = {id = 2106302,lv = 105},[3] = {id = 2106303,lv = 105},[4] = {id = 2106304,lv = 105},[5] = {id = 2106305,lv = 105},[6] = {id = 2106306,lv = 105},[7] = {id = 2106307,lv = 105},[8] = {id = 2106308,lv = 105}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 1,[6] = 0,[7] = 0,[8] = 0},mon = {id = 307,desc = "tg4-4-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 8,exert = 18,suffer = 25}}
		}
	},
	[51305] = {
		[1] = {
			jlr = {cha = "tg4",id = 5130510,cardId = 1101998,lv = 105,bklv = 14,star = 3,equip = {[1] = {id = 2006401,lv = 105},[2] = {id = 2006402,lv = 105},[3] = {id = 2006403,lv = 105},[4] = {id = 2006404,lv = 105},[5] = {id = 2006405,lv = 105},[6] = {id = 2006406,lv = 105},[7] = {id = 2006407,lv = 105},[8] = {id = 2006408,lv = 105}},mon = {id = 207,desc = "tg4-5-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 8,exert = 11,suffer = 21}},
			shl = {cha = "tg4",id = 5130511,cardId = 1102997,lv = 105,bklv = 15,star = 3,ghost = 35,equip = {[1] = {id = 2106401,lv = 105},[2] = {id = 2106402,lv = 105},[3] = {id = 2106403,lv = 105},[4] = {id = 2106404,lv = 105},[5] = {id = 2106405,lv = 105},[6] = {id = 2106406,lv = 105},[7] = {id = 2106407,lv = 105},[8] = {id = 2106408,lv = 105}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 1,[6] = 0,[7] = 0,[8] = 0},mon = {id = 312,desc = "tg4-5-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 8,exert = 15,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "tg4",id = 5130520,cardId = 1101998,lv = 105,bklv = 14,star = 3,equip = {[1] = {id = 2006411,lv = 105},[2] = {id = 2006412,lv = 105},[3] = {id = 2006413,lv = 105},[4] = {id = 2006404,lv = 105},[5] = {id = 2006415,lv = 105},[6] = {id = 2006406,lv = 105},[7] = {id = 2006417,lv = 105},[8] = {id = 2006418,lv = 105}},mon = {id = 204,desc = "tg4-5-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 8,exert = 11,suffer = 21}},
			shl = {cha = "tg4",id = 5130521,cardId = 1102996,lv = 105,bklv = 15,star = 2,ghost = 35,equip = {[1] = {id = 2106411,lv = 105},[2] = {id = 2106412,lv = 105},[3] = {id = 2106413,lv = 105},[4] = {id = 2106404,lv = 105},[5] = {id = 2106415,lv = 105},[6] = {id = 2106406,lv = 105},[7] = {id = 2106417,lv = 105},[8] = {id = 2106418,lv = 105}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 1,[6] = 0,[7] = 0,[8] = 0},mon = {id = 306,desc = "tg4-5-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 8,exert = 15,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "tg4",id = 5130530,cardId = 1101998,lv = 105,bklv = 14,star = 3,equip = {[1] = {id = 2006401,lv = 105},[2] = {id = 2006402,lv = 105},[3] = {id = 2006403,lv = 105},[4] = {id = 2006404,lv = 105},[5] = {id = 2006405,lv = 105},[6] = {id = 2006406,lv = 105},[7] = {id = 2006407,lv = 105},[8] = {id = 2006408,lv = 105}},mon = {id = 205,desc = "tg4-5-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 8,exert = 11,suffer = 21}},
			shl = {cha = "tg4",id = 5130531,cardId = 1102997,lv = 105,bklv = 15,star = 3,ghost = 35,equip = {[1] = {id = 2106401,lv = 105},[2] = {id = 2106402,lv = 105},[3] = {id = 2106403,lv = 105},[4] = {id = 2106404,lv = 105},[5] = {id = 2106405,lv = 105},[6] = {id = 2106406,lv = 105},[7] = {id = 2106407,lv = 105},[8] = {id = 2106408,lv = 105}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 1,[6] = 0,[7] = 0,[8] = 0},mon = {id = 301,desc = "tg4-5-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 8,exert = 15,suffer = 25}}
		}
	},
	[51401] = {
		[1] = {
			jlr = {cha = "tg5",id = 5140110,cardId = 1101999,lv = 110,bklv = 15,star = 3,equip = {[1] = {id = 2007201,lv = 110},[2] = {id = 2007202,lv = 110},[3] = {id = 2007203,lv = 110},[4] = {id = 2007204,lv = 110},[5] = {id = 2007205,lv = 110},[6] = {id = 2007206,lv = 110},[7] = {id = 2007207,lv = 110},[8] = {id = 2007208,lv = 110}},mon = {id = 213,desc = "tg5-1-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 6,exert = 21,suffer = 21}},
			shl = {cha = "tg5",id = 5140111,cardId = 1102999,lv = 110,bklv = 16,star = 3,ghost = 37,equip = {[1] = {id = 2107201,lv = 110},[2] = {id = 2107202,lv = 110},[3] = {id = 2107203,lv = 110},[4] = {id = 2107204,lv = 110},[5] = {id = 2107205,lv = 110},[6] = {id = 2107206,lv = 110},[7] = {id = 2107207,lv = 110},[8] = {id = 2107208,lv = 110}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0},mon = {id = 239,desc = "tg5-1-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 6,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "tg5",id = 5140120,cardId = 1101998,lv = 110,bklv = 15,star = 3,equip = {[1] = {id = 2007301,lv = 110},[2] = {id = 2007302,lv = 110},[3] = {id = 2007303,lv = 110},[4] = {id = 2007304,lv = 110},[5] = {id = 2007305,lv = 110},[6] = {id = 2007306,lv = 110},[7] = {id = 2007307,lv = 110},[8] = {id = 2007308,lv = 110}},mon = {id = 212,desc = "tg5-1-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 6,exert = 21,suffer = 21}},
			shl = {cha = "tg5",id = 5140121,cardId = 1102998,lv = 110,bklv = 16,star = 3,ghost = 37,equip = {[1] = {id = 2107301,lv = 110},[2] = {id = 2107302,lv = 110},[3] = {id = 2107303,lv = 110},[4] = {id = 2107304,lv = 110},[5] = {id = 2107305,lv = 110},[6] = {id = 2107306,lv = 110},[7] = {id = 2107307,lv = 110},[8] = {id = 2107308,lv = 110}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0},mon = {id = 238,desc = "tg5-1-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 6,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "tg5",id = 5140130,cardId = 1101999,lv = 110,bklv = 15,star = 3,equip = {[1] = {id = 2007201,lv = 110},[2] = {id = 2007202,lv = 110},[3] = {id = 2007203,lv = 110},[4] = {id = 2007204,lv = 110},[5] = {id = 2007205,lv = 110},[6] = {id = 2007206,lv = 110},[7] = {id = 2007207,lv = 110},[8] = {id = 2007208,lv = 110}},mon = {id = 208,desc = "tg5-1-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 6,exert = 21,suffer = 21}},
			shl = {cha = "tg5",id = 5140131,cardId = 1102999,lv = 110,bklv = 16,star = 3,ghost = 37,equip = {[1] = {id = 2107201,lv = 110},[2] = {id = 2107202,lv = 110},[3] = {id = 2107203,lv = 110},[4] = {id = 2107204,lv = 110},[5] = {id = 2107205,lv = 110},[6] = {id = 2107206,lv = 110},[7] = {id = 2107207,lv = 110},[8] = {id = 2107208,lv = 110}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0},mon = {id = 233,desc = "tg5-1-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 6,exert = 25,suffer = 25}}
		}
	},
	[51402] = {
		[1] = {
			jlr = {cha = "tg5",id = 5140210,cardId = 1101999,lv = 110,bklv = 15,star = 3,equip = {[1] = {id = 2007201,lv = 110},[2] = {id = 2007202,lv = 110},[3] = {id = 2007203,lv = 110},[4] = {id = 2007204,lv = 110},[5] = {id = 2007205,lv = 110},[6] = {id = 2007206,lv = 110},[7] = {id = 2007207,lv = 110},[8] = {id = 2007208,lv = 110}},mon = {id = 201,desc = "tg5-2-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 7,exert = 21,suffer = 21}},
			shl = {cha = "tg5",id = 5140211,cardId = 1102999,lv = 110,bklv = 16,star = 3,ghost = 37,equip = {[1] = {id = 2107201,lv = 110},[2] = {id = 2107202,lv = 110},[3] = {id = 2107203,lv = 110},[4] = {id = 2107204,lv = 110},[5] = {id = 2107205,lv = 110},[6] = {id = 2107206,lv = 110},[7] = {id = 2107207,lv = 110},[8] = {id = 2107208,lv = 110}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0},mon = {id = 235,desc = "tg5-2-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 7,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "tg5",id = 5140220,cardId = 1101998,lv = 110,bklv = 15,star = 3,equip = {[1] = {id = 2007301,lv = 110},[2] = {id = 2007302,lv = 110},[3] = {id = 2007303,lv = 110},[4] = {id = 2007304,lv = 110},[5] = {id = 2007305,lv = 110},[6] = {id = 2007306,lv = 110},[7] = {id = 2007307,lv = 110},[8] = {id = 2007308,lv = 110}},mon = {id = 214,desc = "tg5-2-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 7,exert = 21,suffer = 21}},
			shl = {cha = "tg5",id = 5140221,cardId = 1102998,lv = 110,bklv = 16,star = 3,ghost = 37,equip = {[1] = {id = 2107301,lv = 110},[2] = {id = 2107302,lv = 110},[3] = {id = 2107303,lv = 110},[4] = {id = 2107304,lv = 110},[5] = {id = 2107305,lv = 110},[6] = {id = 2107306,lv = 110},[7] = {id = 2107307,lv = 110},[8] = {id = 2107308,lv = 110}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0},mon = {id = 240,desc = "tg5-2-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 7,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "tg5",id = 5140230,cardId = 1101999,lv = 110,bklv = 15,star = 3,equip = {[1] = {id = 2007201,lv = 110},[2] = {id = 2007202,lv = 110},[3] = {id = 2007203,lv = 110},[4] = {id = 2007204,lv = 110},[5] = {id = 2007205,lv = 110},[6] = {id = 2007206,lv = 110},[7] = {id = 2007207,lv = 110},[8] = {id = 2007208,lv = 110}},mon = {id = 203,desc = "tg5-2-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 7,exert = 21,suffer = 21}},
			shl = {cha = "tg5",id = 5140231,cardId = 1102999,lv = 110,bklv = 16,star = 3,ghost = 37,equip = {[1] = {id = 2107201,lv = 110},[2] = {id = 2107202,lv = 110},[3] = {id = 2107203,lv = 110},[4] = {id = 2107204,lv = 110},[5] = {id = 2107205,lv = 110},[6] = {id = 2107206,lv = 110},[7] = {id = 2107207,lv = 110},[8] = {id = 2107208,lv = 110}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0},mon = {id = 225,desc = "tg5-2-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 7,exert = 25,suffer = 25}}
		}
	},
	[51403] = {
		[1] = {
			jlr = {cha = "tg5",id = 5140310,cardId = 1101998,lv = 110,bklv = 15,star = 2,equip = {[1] = {id = 2007301,lv = 110},[2] = {id = 2007302,lv = 110},[3] = {id = 2007303,lv = 110},[4] = {id = 2007304,lv = 110},[5] = {id = 2007305,lv = 110},[6] = {id = 2007306,lv = 110},[7] = {id = 2007307,lv = 110},[8] = {id = 2007308,lv = 110}},mon = {id = 215,desc = "tg5-3-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 7,exert = 14,suffer = 21}},
			shl = {cha = "tg5",id = 5140311,cardId = 1102997,lv = 110,bklv = 16,star = 2,ghost = 37,equip = {[1] = {id = 2107301,lv = 110},[2] = {id = 2107302,lv = 110},[3] = {id = 2107303,lv = 110},[4] = {id = 2107304,lv = 110},[5] = {id = 2107305,lv = 110},[6] = {id = 2107306,lv = 110},[7] = {id = 2107307,lv = 110},[8] = {id = 2107308,lv = 110}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0},mon = {id = 321,desc = "tg5-3-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 7,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "tg5",id = 5140320,cardId = 1101998,lv = 110,bklv = 15,star = 2,equip = {[1] = {id = 2007401,lv = 110},[2] = {id = 2007402,lv = 110},[3] = {id = 2007403,lv = 110},[4] = {id = 2007404,lv = 110},[5] = {id = 2007405,lv = 110},[6] = {id = 2007406,lv = 110},[7] = {id = 2007407,lv = 110},[8] = {id = 2007408,lv = 110}},mon = {id = 211,desc = "tg5-3-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 7,exert = 14,suffer = 21}},
			shl = {cha = "tg5",id = 5140321,cardId = 1102997,lv = 110,bklv = 16,star = 2,ghost = 37,equip = {[1] = {id = 2107401,lv = 110},[2] = {id = 2107402,lv = 110},[3] = {id = 2107403,lv = 110},[4] = {id = 2107404,lv = 110},[5] = {id = 2107405,lv = 110},[6] = {id = 2107406,lv = 110},[7] = {id = 2107407,lv = 110},[8] = {id = 2107408,lv = 110}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0},mon = {id = 317,desc = "tg5-3-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 7,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "tg5",id = 5140330,cardId = 1101998,lv = 110,bklv = 15,star = 2,equip = {[1] = {id = 2007301,lv = 110},[2] = {id = 2007302,lv = 110},[3] = {id = 2007303,lv = 110},[4] = {id = 2007304,lv = 110},[5] = {id = 2007305,lv = 110},[6] = {id = 2007306,lv = 110},[7] = {id = 2007307,lv = 110},[8] = {id = 2007308,lv = 110}},mon = {id = 209,desc = "tg5-3-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 7,exert = 14,suffer = 21}},
			shl = {cha = "tg5",id = 5140331,cardId = 1102997,lv = 110,bklv = 16,star = 2,ghost = 37,equip = {[1] = {id = 2107301,lv = 110},[2] = {id = 2107302,lv = 110},[3] = {id = 2107303,lv = 110},[4] = {id = 2107304,lv = 110},[5] = {id = 2107305,lv = 110},[6] = {id = 2107306,lv = 110},[7] = {id = 2107307,lv = 110},[8] = {id = 2107308,lv = 110}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0},mon = {id = 314,desc = "tg5-3-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 7,exert = 18,suffer = 25}}
		}
	},
	[51404] = {
		[1] = {
			jlr = {cha = "tg5",id = 5140410,cardId = 1101998,lv = 110,bklv = 15,star = 2,equip = {[1] = {id = 2007301,lv = 110},[2] = {id = 2007302,lv = 110},[3] = {id = 2007303,lv = 110},[4] = {id = 2007304,lv = 110},[5] = {id = 2007305,lv = 110},[6] = {id = 2007306,lv = 110},[7] = {id = 2007307,lv = 110},[8] = {id = 2007308,lv = 110}},mon = {id = 207,desc = "tg5-4-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 8,exert = 14,suffer = 21}},
			shl = {cha = "tg5",id = 5140411,cardId = 1102997,lv = 110,bklv = 16,star = 2,ghost = 37,equip = {[1] = {id = 2107301,lv = 110},[2] = {id = 2107302,lv = 110},[3] = {id = 2107303,lv = 110},[4] = {id = 2107304,lv = 110},[5] = {id = 2107305,lv = 110},[6] = {id = 2107306,lv = 110},[7] = {id = 2107307,lv = 110},[8] = {id = 2107308,lv = 110}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0},mon = {id = 303,desc = "tg5-4-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 8,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "tg5",id = 5140420,cardId = 1101998,lv = 110,bklv = 15,star = 2,equip = {[1] = {id = 2007401,lv = 110},[2] = {id = 2007402,lv = 110},[3] = {id = 2007403,lv = 110},[4] = {id = 2007404,lv = 110},[5] = {id = 2007405,lv = 110},[6] = {id = 2007406,lv = 110},[7] = {id = 2007407,lv = 110},[8] = {id = 2007408,lv = 110}},mon = {id = 210,desc = "tg5-4-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 8,exert = 14,suffer = 21}},
			shl = {cha = "tg5",id = 5140421,cardId = 1102997,lv = 110,bklv = 16,star = 2,ghost = 37,equip = {[1] = {id = 2107401,lv = 110},[2] = {id = 2107402,lv = 110},[3] = {id = 2107403,lv = 110},[4] = {id = 2107404,lv = 110},[5] = {id = 2107405,lv = 110},[6] = {id = 2107406,lv = 110},[7] = {id = 2107407,lv = 110},[8] = {id = 2107408,lv = 110}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0},mon = {id = 316,desc = "tg5-4-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 8,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "tg5",id = 5140430,cardId = 1101998,lv = 110,bklv = 15,star = 2,equip = {[1] = {id = 2007301,lv = 110},[2] = {id = 2007302,lv = 110},[3] = {id = 2007303,lv = 110},[4] = {id = 2007304,lv = 110},[5] = {id = 2007305,lv = 110},[6] = {id = 2007306,lv = 110},[7] = {id = 2007307,lv = 110},[8] = {id = 2007308,lv = 110}},mon = {id = 206,desc = "tg5-4-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 8,exert = 14,suffer = 21}},
			shl = {cha = "tg5",id = 5140431,cardId = 1102997,lv = 110,bklv = 16,star = 2,ghost = 37,equip = {[1] = {id = 2107301,lv = 110},[2] = {id = 2107302,lv = 110},[3] = {id = 2107303,lv = 110},[4] = {id = 2107304,lv = 110},[5] = {id = 2107305,lv = 110},[6] = {id = 2107306,lv = 110},[7] = {id = 2107307,lv = 110},[8] = {id = 2107308,lv = 110}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0},mon = {id = 307,desc = "tg5-4-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 8,exert = 18,suffer = 25}}
		}
	},
	[51405] = {
		[1] = {
			jlr = {cha = "tg5",id = 5140510,cardId = 1101998,lv = 110,bklv = 15,star = 3,equip = {[1] = {id = 2007401,lv = 110},[2] = {id = 2007402,lv = 110},[3] = {id = 2007403,lv = 110},[4] = {id = 2007404,lv = 110},[5] = {id = 2007405,lv = 110},[6] = {id = 2007406,lv = 110},[7] = {id = 2007407,lv = 110},[8] = {id = 2007408,lv = 110}},mon = {id = 207,desc = "tg5-5-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 8,exert = 11,suffer = 21}},
			shl = {cha = "tg5",id = 5140511,cardId = 1102997,lv = 110,bklv = 16,star = 3,ghost = 37,equip = {[1] = {id = 2107401,lv = 110},[2] = {id = 2107402,lv = 110},[3] = {id = 2107403,lv = 110},[4] = {id = 2107404,lv = 110},[5] = {id = 2107405,lv = 110},[6] = {id = 2107406,lv = 110},[7] = {id = 2107407,lv = 110},[8] = {id = 2107408,lv = 110}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0},mon = {id = 312,desc = "tg5-5-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 8,exert = 15,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "tg5",id = 5140520,cardId = 1101998,lv = 110,bklv = 15,star = 3,equip = {[1] = {id = 2007421,lv = 110},[2] = {id = 2007422,lv = 110},[3] = {id = 2007423,lv = 110},[4] = {id = 2007424,lv = 110},[5] = {id = 2007425,lv = 110},[6] = {id = 2007426,lv = 110},[7] = {id = 2007407,lv = 110},[8] = {id = 2007408,lv = 110}},mon = {id = 204,desc = "tg5-5-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 8,exert = 11,suffer = 21}},
			shl = {cha = "tg5",id = 5140521,cardId = 1102996,lv = 110,bklv = 16,star = 2,ghost = 37,equip = {[1] = {id = 2107421,lv = 110},[2] = {id = 2107422,lv = 110},[3] = {id = 2107423,lv = 110},[4] = {id = 2107424,lv = 110},[5] = {id = 2107425,lv = 110},[6] = {id = 2107426,lv = 110},[7] = {id = 2107407,lv = 110},[8] = {id = 2107408,lv = 110}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0},mon = {id = 306,desc = "tg5-5-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 8,exert = 15,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "tg5",id = 5140530,cardId = 1101998,lv = 110,bklv = 15,star = 3,equip = {[1] = {id = 2007401,lv = 110},[2] = {id = 2007402,lv = 110},[3] = {id = 2007403,lv = 110},[4] = {id = 2007404,lv = 110},[5] = {id = 2007405,lv = 110},[6] = {id = 2007406,lv = 110},[7] = {id = 2007407,lv = 110},[8] = {id = 2007408,lv = 110}},mon = {id = 205,desc = "tg5-5-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 8,exert = 11,suffer = 21}},
			shl = {cha = "tg5",id = 5140531,cardId = 1102997,lv = 110,bklv = 16,star = 3,ghost = 37,equip = {[1] = {id = 2107401,lv = 110},[2] = {id = 2107402,lv = 110},[3] = {id = 2107403,lv = 110},[4] = {id = 2107404,lv = 110},[5] = {id = 2107405,lv = 110},[6] = {id = 2107406,lv = 110},[7] = {id = 2107407,lv = 110},[8] = {id = 2107408,lv = 110}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0},mon = {id = 301,desc = "tg5-5-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 8,exert = 15,suffer = 25}}
		}
	},
	[51501] = {
		[1] = {
			jlr = {cha = "tg6",id = 5150110,cardId = 1101999,lv = 120,bklv = 16,star = 3,equip = {[1] = {id = 2008201,lv = 120},[2] = {id = 2008202,lv = 120},[3] = {id = 2008203,lv = 120},[4] = {id = 2008204,lv = 120},[5] = {id = 2008205,lv = 120},[6] = {id = 2008206,lv = 120},[7] = {id = 2008207,lv = 120},[8] = {id = 2008208,lv = 120}},mon = {id = 213,desc = "tg6-1-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 7,exert = 21,suffer = 21}},
			shl = {cha = "tg6",id = 5150111,cardId = 1102999,lv = 120,bklv = 17,star = 4,ghost = 41,equip = {[1] = {id = 2108201,lv = 120},[2] = {id = 2108202,lv = 120},[3] = {id = 2108203,lv = 120},[4] = {id = 2108204,lv = 120},[5] = {id = 2108205,lv = 120},[6] = {id = 2108206,lv = 120},[7] = {id = 2108207,lv = 120},[8] = {id = 2108208,lv = 120}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 3,[6] = 1,[7] = 0,[8] = 0},mon = {id = 239,desc = "tg6-1-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 7,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "tg6",id = 5150120,cardId = 1101998,lv = 120,bklv = 16,star = 3,equip = {[1] = {id = 2008301,lv = 120},[2] = {id = 2008302,lv = 120},[3] = {id = 2008303,lv = 120},[4] = {id = 2008304,lv = 120},[5] = {id = 2008305,lv = 120},[6] = {id = 2008306,lv = 120},[7] = {id = 2008307,lv = 120},[8] = {id = 2008308,lv = 120}},mon = {id = 212,desc = "tg6-1-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 7,exert = 21,suffer = 21}},
			shl = {cha = "tg6",id = 5150121,cardId = 1102998,lv = 120,bklv = 17,star = 3,ghost = 41,equip = {[1] = {id = 2108301,lv = 120},[2] = {id = 2108302,lv = 120},[3] = {id = 2108303,lv = 120},[4] = {id = 2108304,lv = 120},[5] = {id = 2108305,lv = 120},[6] = {id = 2108306,lv = 120},[7] = {id = 2108307,lv = 120},[8] = {id = 2108308,lv = 120}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 3,[6] = 1,[7] = 0,[8] = 0},mon = {id = 238,desc = "tg6-1-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 7,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "tg6",id = 5150130,cardId = 1101999,lv = 120,bklv = 16,star = 3,equip = {[1] = {id = 2008201,lv = 120},[2] = {id = 2008202,lv = 120},[3] = {id = 2008203,lv = 120},[4] = {id = 2008204,lv = 120},[5] = {id = 2008205,lv = 120},[6] = {id = 2008206,lv = 120},[7] = {id = 2008207,lv = 120},[8] = {id = 2008208,lv = 120}},mon = {id = 208,desc = "tg6-1-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 7,exert = 21,suffer = 21}},
			shl = {cha = "tg6",id = 5150131,cardId = 1102999,lv = 120,bklv = 17,star = 4,ghost = 41,equip = {[1] = {id = 2108201,lv = 120},[2] = {id = 2108202,lv = 120},[3] = {id = 2108203,lv = 120},[4] = {id = 2108204,lv = 120},[5] = {id = 2108205,lv = 120},[6] = {id = 2108206,lv = 120},[7] = {id = 2108207,lv = 120},[8] = {id = 2108208,lv = 120}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 3,[6] = 1,[7] = 0,[8] = 0},mon = {id = 233,desc = "tg6-1-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 7,exert = 25,suffer = 25}}
		}
	},
	[51502] = {
		[1] = {
			jlr = {cha = "tg6",id = 5150210,cardId = 1101999,lv = 120,bklv = 16,star = 3,equip = {[1] = {id = 2008201,lv = 120},[2] = {id = 2008202,lv = 120},[3] = {id = 2008203,lv = 120},[4] = {id = 2008204,lv = 120},[5] = {id = 2008205,lv = 120},[6] = {id = 2008206,lv = 120},[7] = {id = 2008207,lv = 120},[8] = {id = 2008208,lv = 120}},mon = {id = 201,desc = "tg6-2-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 8,exert = 21,suffer = 21}},
			shl = {cha = "tg6",id = 5150211,cardId = 1102999,lv = 120,bklv = 17,star = 4,ghost = 41,equip = {[1] = {id = 2108201,lv = 120},[2] = {id = 2108202,lv = 120},[3] = {id = 2108203,lv = 120},[4] = {id = 2108204,lv = 120},[5] = {id = 2108205,lv = 120},[6] = {id = 2108206,lv = 120},[7] = {id = 2108207,lv = 120},[8] = {id = 2108208,lv = 120}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 3,[6] = 1,[7] = 0,[8] = 0},mon = {id = 235,desc = "tg6-2-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 8,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "tg6",id = 5150220,cardId = 1101998,lv = 120,bklv = 16,star = 3,equip = {[1] = {id = 2008301,lv = 120},[2] = {id = 2008302,lv = 120},[3] = {id = 2008303,lv = 120},[4] = {id = 2008304,lv = 120},[5] = {id = 2008305,lv = 120},[6] = {id = 2008306,lv = 120},[7] = {id = 2008307,lv = 120},[8] = {id = 2008308,lv = 120}},mon = {id = 214,desc = "tg6-2-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 8,exert = 21,suffer = 21}},
			shl = {cha = "tg6",id = 5150221,cardId = 1102998,lv = 120,bklv = 17,star = 3,ghost = 41,equip = {[1] = {id = 2108301,lv = 120},[2] = {id = 2108302,lv = 120},[3] = {id = 2108303,lv = 120},[4] = {id = 2108304,lv = 120},[5] = {id = 2108305,lv = 120},[6] = {id = 2108306,lv = 120},[7] = {id = 2108307,lv = 120},[8] = {id = 2108308,lv = 120}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 3,[6] = 1,[7] = 0,[8] = 0},mon = {id = 240,desc = "tg6-2-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 8,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "tg6",id = 5150230,cardId = 1101999,lv = 120,bklv = 16,star = 3,equip = {[1] = {id = 2008201,lv = 120},[2] = {id = 2008202,lv = 120},[3] = {id = 2008203,lv = 120},[4] = {id = 2008204,lv = 120},[5] = {id = 2008205,lv = 120},[6] = {id = 2008206,lv = 120},[7] = {id = 2008207,lv = 120},[8] = {id = 2008208,lv = 120}},mon = {id = 203,desc = "tg6-2-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 8,exert = 21,suffer = 21}},
			shl = {cha = "tg6",id = 5150231,cardId = 1102999,lv = 120,bklv = 17,star = 4,ghost = 41,equip = {[1] = {id = 2108201,lv = 120},[2] = {id = 2108202,lv = 120},[3] = {id = 2108203,lv = 120},[4] = {id = 2108204,lv = 120},[5] = {id = 2108205,lv = 120},[6] = {id = 2108206,lv = 120},[7] = {id = 2108207,lv = 120},[8] = {id = 2108208,lv = 120}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 3,[6] = 1,[7] = 0,[8] = 0},mon = {id = 225,desc = "tg6-2-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 8,exert = 25,suffer = 25}}
		}
	},
	[51503] = {
		[1] = {
			jlr = {cha = "tg6",id = 5150310,cardId = 1101998,lv = 120,bklv = 16,star = 3,equip = {[1] = {id = 2008301,lv = 120},[2] = {id = 2008302,lv = 120},[3] = {id = 2008303,lv = 120},[4] = {id = 2008304,lv = 120},[5] = {id = 2008305,lv = 120},[6] = {id = 2008306,lv = 120},[7] = {id = 2008307,lv = 120},[8] = {id = 2008308,lv = 120}},mon = {id = 215,desc = "tg6-3-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 8,exert = 14,suffer = 21}},
			shl = {cha = "tg6",id = 5150311,cardId = 1102997,lv = 120,bklv = 17,star = 2,ghost = 41,equip = {[1] = {id = 2108301,lv = 120},[2] = {id = 2108302,lv = 120},[3] = {id = 2108303,lv = 120},[4] = {id = 2108304,lv = 120},[5] = {id = 2108305,lv = 120},[6] = {id = 2108306,lv = 120},[7] = {id = 2108307,lv = 120},[8] = {id = 2108308,lv = 120}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 3,[6] = 1,[7] = 0,[8] = 0},mon = {id = 321,desc = "tg6-3-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 8,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "tg6",id = 5150320,cardId = 1101998,lv = 120,bklv = 16,star = 3,equip = {[1] = {id = 2008401,lv = 120},[2] = {id = 2008402,lv = 120},[3] = {id = 2008403,lv = 120},[4] = {id = 2008404,lv = 120},[5] = {id = 2008405,lv = 120},[6] = {id = 2008406,lv = 120},[7] = {id = 2008407,lv = 120},[8] = {id = 2008408,lv = 120}},mon = {id = 211,desc = "tg6-3-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 8,exert = 14,suffer = 21}},
			shl = {cha = "tg6",id = 5150321,cardId = 1102997,lv = 120,bklv = 17,star = 2,ghost = 41,equip = {[1] = {id = 2108401,lv = 120},[2] = {id = 2108402,lv = 120},[3] = {id = 2108403,lv = 120},[4] = {id = 2108404,lv = 120},[5] = {id = 2108405,lv = 120},[6] = {id = 2108406,lv = 120},[7] = {id = 2108407,lv = 120},[8] = {id = 2108408,lv = 120}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 3,[6] = 1,[7] = 0,[8] = 0},mon = {id = 317,desc = "tg6-3-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 8,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "tg6",id = 5150330,cardId = 1101998,lv = 120,bklv = 16,star = 3,equip = {[1] = {id = 2008301,lv = 120},[2] = {id = 2008302,lv = 120},[3] = {id = 2008303,lv = 120},[4] = {id = 2008304,lv = 120},[5] = {id = 2008305,lv = 120},[6] = {id = 2008306,lv = 120},[7] = {id = 2008307,lv = 120},[8] = {id = 2008308,lv = 120}},mon = {id = 209,desc = "tg6-3-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 8,exert = 14,suffer = 21}},
			shl = {cha = "tg6",id = 5150331,cardId = 1102997,lv = 120,bklv = 17,star = 2,ghost = 41,equip = {[1] = {id = 2108301,lv = 120},[2] = {id = 2108302,lv = 120},[3] = {id = 2108303,lv = 120},[4] = {id = 2108304,lv = 120},[5] = {id = 2108305,lv = 120},[6] = {id = 2108306,lv = 120},[7] = {id = 2108307,lv = 120},[8] = {id = 2108308,lv = 120}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 3,[6] = 1,[7] = 0,[8] = 0},mon = {id = 314,desc = "tg6-3-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 8,exert = 18,suffer = 25}}
		}
	},
	[51504] = {
		[1] = {
			jlr = {cha = "tg6",id = 5150410,cardId = 1101998,lv = 120,bklv = 16,star = 3,equip = {[1] = {id = 2008301,lv = 120},[2] = {id = 2008302,lv = 120},[3] = {id = 2008303,lv = 120},[4] = {id = 2008304,lv = 120},[5] = {id = 2008305,lv = 120},[6] = {id = 2008306,lv = 120},[7] = {id = 2008307,lv = 120},[8] = {id = 2008308,lv = 120}},mon = {id = 207,desc = "tg6-4-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 9,exert = 14,suffer = 21}},
			shl = {cha = "tg6",id = 5150411,cardId = 1102997,lv = 120,bklv = 17,star = 2,ghost = 41,equip = {[1] = {id = 2108301,lv = 120},[2] = {id = 2108302,lv = 120},[3] = {id = 2108303,lv = 120},[4] = {id = 2108304,lv = 120},[5] = {id = 2108305,lv = 120},[6] = {id = 2108306,lv = 120},[7] = {id = 2108307,lv = 120},[8] = {id = 2108308,lv = 120}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 3,[6] = 1,[7] = 0,[8] = 0},mon = {id = 303,desc = "tg6-4-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 9,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "tg6",id = 5150420,cardId = 1101998,lv = 120,bklv = 16,star = 3,equip = {[1] = {id = 2008401,lv = 120},[2] = {id = 2008402,lv = 120},[3] = {id = 2008403,lv = 120},[4] = {id = 2008404,lv = 120},[5] = {id = 2008405,lv = 120},[6] = {id = 2008406,lv = 120},[7] = {id = 2008407,lv = 120},[8] = {id = 2008408,lv = 120}},mon = {id = 210,desc = "tg6-4-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 9,exert = 14,suffer = 21}},
			shl = {cha = "tg6",id = 5150421,cardId = 1102997,lv = 120,bklv = 17,star = 2,ghost = 41,equip = {[1] = {id = 2108401,lv = 120},[2] = {id = 2108402,lv = 120},[3] = {id = 2108403,lv = 120},[4] = {id = 2108404,lv = 120},[5] = {id = 2108405,lv = 120},[6] = {id = 2108406,lv = 120},[7] = {id = 2108407,lv = 120},[8] = {id = 2108408,lv = 120}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 3,[6] = 1,[7] = 0,[8] = 0},mon = {id = 316,desc = "tg6-4-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 9,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "tg6",id = 5150430,cardId = 1101998,lv = 120,bklv = 16,star = 3,equip = {[1] = {id = 2008301,lv = 120},[2] = {id = 2008302,lv = 120},[3] = {id = 2008303,lv = 120},[4] = {id = 2008304,lv = 120},[5] = {id = 2008305,lv = 120},[6] = {id = 2008306,lv = 120},[7] = {id = 2008307,lv = 120},[8] = {id = 2008308,lv = 120}},mon = {id = 206,desc = "tg6-4-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 9,exert = 14,suffer = 21}},
			shl = {cha = "tg6",id = 5150431,cardId = 1102997,lv = 120,bklv = 17,star = 2,ghost = 41,equip = {[1] = {id = 2108301,lv = 120},[2] = {id = 2108302,lv = 120},[3] = {id = 2108303,lv = 120},[4] = {id = 2108304,lv = 120},[5] = {id = 2108305,lv = 120},[6] = {id = 2108306,lv = 120},[7] = {id = 2108307,lv = 120},[8] = {id = 2108308,lv = 120}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 3,[6] = 1,[7] = 0,[8] = 0},mon = {id = 307,desc = "tg6-4-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 9,exert = 18,suffer = 25}}
		}
	},
	[51505] = {
		[1] = {
			jlr = {cha = "tg6",id = 5150510,cardId = 1101998,lv = 120,bklv = 16,star = 3,equip = {[1] = {id = 2008401,lv = 120},[2] = {id = 2008402,lv = 120},[3] = {id = 2008403,lv = 120},[4] = {id = 2008404,lv = 120},[5] = {id = 2008405,lv = 120},[6] = {id = 2008406,lv = 120},[7] = {id = 2008407,lv = 120},[8] = {id = 2008408,lv = 120}},mon = {id = 207,desc = "tg6-5-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 9,exert = 11,suffer = 21}},
			shl = {cha = "tg6",id = 5150511,cardId = 1102997,lv = 120,bklv = 17,star = 3,ghost = 41,equip = {[1] = {id = 2108401,lv = 120},[2] = {id = 2108402,lv = 120},[3] = {id = 2108403,lv = 120},[4] = {id = 2108404,lv = 120},[5] = {id = 2108405,lv = 120},[6] = {id = 2108406,lv = 120},[7] = {id = 2108407,lv = 120},[8] = {id = 2108408,lv = 120}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 3,[6] = 1,[7] = 0,[8] = 0},mon = {id = 312,desc = "tg6-5-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 9,exert = 15,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "tg6",id = 5150520,cardId = 1101998,lv = 120,bklv = 16,star = 3,equip = {[1] = {id = 2008421,lv = 120},[2] = {id = 2008412,lv = 120},[3] = {id = 2008413,lv = 120},[4] = {id = 2008404,lv = 120},[5] = {id = 2008415,lv = 120},[6] = {id = 2008406,lv = 120},[7] = {id = 2008427,lv = 120},[8] = {id = 2008418,lv = 120}},mon = {id = 204,desc = "tg6-5-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 9,exert = 11,suffer = 21}},
			shl = {cha = "tg6",id = 5150521,cardId = 1102996,lv = 120,bklv = 17,star = 2,ghost = 41,equip = {[1] = {id = 2108421,lv = 120},[2] = {id = 2108422,lv = 120},[3] = {id = 2108413,lv = 120},[4] = {id = 2108404,lv = 120},[5] = {id = 2108415,lv = 120},[6] = {id = 2108406,lv = 120},[7] = {id = 2108427,lv = 120},[8] = {id = 2108428,lv = 120}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 3,[6] = 1,[7] = 0,[8] = 0},mon = {id = 306,desc = "tg6-5-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 9,exert = 15,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "tg6",id = 5150530,cardId = 1101998,lv = 120,bklv = 16,star = 3,equip = {[1] = {id = 2008401,lv = 120},[2] = {id = 2008402,lv = 120},[3] = {id = 2008403,lv = 120},[4] = {id = 2008404,lv = 120},[5] = {id = 2008405,lv = 120},[6] = {id = 2008406,lv = 120},[7] = {id = 2008407,lv = 120},[8] = {id = 2008408,lv = 120}},mon = {id = 205,desc = "tg6-5-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 9,exert = 11,suffer = 21}},
			shl = {cha = "tg6",id = 5150531,cardId = 1102997,lv = 120,bklv = 17,star = 3,ghost = 41,equip = {[1] = {id = 2108401,lv = 120},[2] = {id = 2108402,lv = 120},[3] = {id = 2108403,lv = 120},[4] = {id = 2108404,lv = 120},[5] = {id = 2108405,lv = 120},[6] = {id = 2108406,lv = 120},[7] = {id = 2108407,lv = 120},[8] = {id = 2108408,lv = 120}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 3,[6] = 1,[7] = 0,[8] = 0},mon = {id = 301,desc = "tg6-5-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 9,exert = 15,suffer = 25}}
		}
	},
	[51601] = {
		[1] = {
			jlr = {cha = "xy",id = 5160110,cardId = 1101999,lv = 135,bklv = 17,star = 4,equip = {[1] = {id = 2009201,lv = 130},[2] = {id = 2009202,lv = 130},[3] = {id = 2009203,lv = 130},[4] = {id = 2009204,lv = 130},[5] = {id = 2009205,lv = 130},[6] = {id = 2009206,lv = 130},[7] = {id = 2009207,lv = 130},[8] = {id = 2009208,lv = 130}},mon = {id = 201,desc = "xy-1-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 8,exert = 21,suffer = 21}},
			shl = {cha = "xy",id = 5160111,cardId = 1102999,lv = 135,bklv = 19,star = 4,ghost = 45,equip = {[1] = {id = 2109201,lv = 130},[2] = {id = 2109202,lv = 130},[3] = {id = 2109203,lv = 130},[4] = {id = 2109204,lv = 130},[5] = {id = 2109205,lv = 130},[6] = {id = 2109206,lv = 130},[7] = {id = 2109207,lv = 130},[8] = {id = 2109208,lv = 130}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 3,[6] = 3,[7] = 1,[8] = 0},mon = {id = 302,desc = "xy-1-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 8,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "xy",id = 5160120,cardId = 1101998,lv = 135,bklv = 17,star = 4,equip = {[1] = {id = 2009301,lv = 130},[2] = {id = 2009302,lv = 130},[3] = {id = 2009303,lv = 130},[4] = {id = 2009304,lv = 130},[5] = {id = 2009305,lv = 130},[6] = {id = 2009306,lv = 130},[7] = {id = 2009307,lv = 130},[8] = {id = 2009308,lv = 130}},mon = {id = 214,desc = "xy-1-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 8,exert = 21,suffer = 21}},
			shl = {cha = "xy",id = 5160121,cardId = 1102998,lv = 135,bklv = 19,star = 4,ghost = 45,equip = {[1] = {id = 2109301,lv = 130},[2] = {id = 2109302,lv = 130},[3] = {id = 2109303,lv = 130},[4] = {id = 2109304,lv = 130},[5] = {id = 2109305,lv = 130},[6] = {id = 2109306,lv = 130},[7] = {id = 2109307,lv = 130},[8] = {id = 2109308,lv = 130}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 3,[6] = 3,[7] = 1,[8] = 0},mon = {id = 320,desc = "xy-1-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 8,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "xy",id = 5160130,cardId = 1101999,lv = 135,bklv = 17,star = 4,equip = {[1] = {id = 2009201,lv = 130},[2] = {id = 2009202,lv = 130},[3] = {id = 2009203,lv = 130},[4] = {id = 2009204,lv = 130},[5] = {id = 2009205,lv = 130},[6] = {id = 2009206,lv = 130},[7] = {id = 2009207,lv = 130},[8] = {id = 2009208,lv = 130}},mon = {id = 203,desc = "xy-1-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 8,exert = 21,suffer = 21}},
			shl = {cha = "xy",id = 5160131,cardId = 1102999,lv = 135,bklv = 19,star = 4,ghost = 45,equip = {[1] = {id = 2109201,lv = 130},[2] = {id = 2109202,lv = 130},[3] = {id = 2109203,lv = 130},[4] = {id = 2109204,lv = 130},[5] = {id = 2109205,lv = 130},[6] = {id = 2109206,lv = 130},[7] = {id = 2109207,lv = 130},[8] = {id = 2109208,lv = 130}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 3,[6] = 3,[7] = 1,[8] = 0},mon = {id = 305,desc = "xy-1-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 8,exert = 25,suffer = 25}}
		}
	},
	[51602] = {
		[1] = {
			jlr = {cha = "xy",id = 5160210,cardId = 1101998,lv = 135,bklv = 17,star = 3,equip = {[1] = {id = 2009301,lv = 130},[2] = {id = 2009302,lv = 130},[3] = {id = 2009303,lv = 130},[4] = {id = 2009304,lv = 130},[5] = {id = 2009305,lv = 130},[6] = {id = 2009306,lv = 130},[7] = {id = 2009307,lv = 130},[8] = {id = 2009308,lv = 130}},mon = {id = 215,desc = "xy-2-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 8,exert = 14,suffer = 21}},
			shl = {cha = "xy",id = 5160211,cardId = 1102997,lv = 135,bklv = 19,star = 3,ghost = 45,equip = {[1] = {id = 2109301,lv = 130},[2] = {id = 2109302,lv = 130},[3] = {id = 2109303,lv = 130},[4] = {id = 2109304,lv = 130},[5] = {id = 2109305,lv = 130},[6] = {id = 2109306,lv = 130},[7] = {id = 2109307,lv = 130},[8] = {id = 2109308,lv = 130}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 3,[6] = 3,[7] = 1,[8] = 0},mon = {id = 321,desc = "xy-2-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 8,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "xy",id = 5160220,cardId = 1101998,lv = 135,bklv = 17,star = 3,equip = {[1] = {id = 2009401,lv = 130},[2] = {id = 2009402,lv = 130},[3] = {id = 2009403,lv = 130},[4] = {id = 2009404,lv = 130},[5] = {id = 2009405,lv = 130},[6] = {id = 2009406,lv = 130},[7] = {id = 2009407,lv = 130},[8] = {id = 2009408,lv = 130}},mon = {id = 211,desc = "xy-2-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 8,exert = 14,suffer = 21}},
			shl = {cha = "xy",id = 5160221,cardId = 1102997,lv = 135,bklv = 19,star = 3,ghost = 45,equip = {[1] = {id = 2109401,lv = 130},[2] = {id = 2109402,lv = 130},[3] = {id = 2109403,lv = 130},[4] = {id = 2109404,lv = 130},[5] = {id = 2109405,lv = 130},[6] = {id = 2109406,lv = 130},[7] = {id = 2109407,lv = 130},[8] = {id = 2109408,lv = 130}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 3,[6] = 3,[7] = 1,[8] = 0},mon = {id = 317,desc = "xy-2-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 8,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "xy",id = 5160230,cardId = 1101998,lv = 135,bklv = 17,star = 3,equip = {[1] = {id = 2009301,lv = 130},[2] = {id = 2009302,lv = 130},[3] = {id = 2009303,lv = 130},[4] = {id = 2009304,lv = 130},[5] = {id = 2009305,lv = 130},[6] = {id = 2009306,lv = 130},[7] = {id = 2009307,lv = 130},[8] = {id = 2009308,lv = 130}},mon = {id = 209,desc = "xy-2-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 8,exert = 14,suffer = 21}},
			shl = {cha = "xy",id = 5160231,cardId = 1102997,lv = 135,bklv = 19,star = 3,ghost = 45,equip = {[1] = {id = 2109301,lv = 130},[2] = {id = 2109302,lv = 130},[3] = {id = 2109303,lv = 130},[4] = {id = 2109304,lv = 130},[5] = {id = 2109305,lv = 130},[6] = {id = 2109306,lv = 130},[7] = {id = 2109307,lv = 130},[8] = {id = 2109308,lv = 130}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 3,[6] = 3,[7] = 1,[8] = 0},mon = {id = 314,desc = "xy-2-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 8,exert = 18,suffer = 25}}
		}
	},
	[51603] = {
		[1] = {
			jlr = {cha = "xy",id = 5160310,cardId = 1101998,lv = 135,bklv = 17,star = 3,equip = {[1] = {id = 2009301,lv = 130},[2] = {id = 2009302,lv = 130},[3] = {id = 2009303,lv = 130},[4] = {id = 2009304,lv = 130},[5] = {id = 2009305,lv = 130},[6] = {id = 2009306,lv = 130},[7] = {id = 2009307,lv = 130},[8] = {id = 2009308,lv = 130}},mon = {id = 207,desc = "xy-3-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 9,exert = 14,suffer = 21}},
			shl = {cha = "xy",id = 5160311,cardId = 1102997,lv = 135,bklv = 19,star = 3,ghost = 45,equip = {[1] = {id = 2109301,lv = 130},[2] = {id = 2109302,lv = 130},[3] = {id = 2109303,lv = 130},[4] = {id = 2109304,lv = 130},[5] = {id = 2109305,lv = 130},[6] = {id = 2109306,lv = 130},[7] = {id = 2109307,lv = 130},[8] = {id = 2109308,lv = 130}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 3,[6] = 3,[7] = 1,[8] = 0},mon = {id = 303,desc = "xy-3-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 9,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "xy",id = 5160320,cardId = 1101998,lv = 135,bklv = 17,star = 3,equip = {[1] = {id = 2009401,lv = 130},[2] = {id = 2009402,lv = 130},[3] = {id = 2009403,lv = 130},[4] = {id = 2009404,lv = 130},[5] = {id = 2009405,lv = 130},[6] = {id = 2009406,lv = 130},[7] = {id = 2009407,lv = 130},[8] = {id = 2009408,lv = 130}},mon = {id = 210,desc = "xy-3-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 9,exert = 14,suffer = 21}},
			shl = {cha = "xy",id = 5160321,cardId = 1102997,lv = 135,bklv = 19,star = 3,ghost = 45,equip = {[1] = {id = 2109401,lv = 130},[2] = {id = 2109402,lv = 130},[3] = {id = 2109403,lv = 130},[4] = {id = 2109404,lv = 130},[5] = {id = 2109405,lv = 130},[6] = {id = 2109406,lv = 130},[7] = {id = 2109407,lv = 130},[8] = {id = 2109408,lv = 130}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 3,[6] = 3,[7] = 1,[8] = 0},mon = {id = 316,desc = "xy-3-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 9,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "xy",id = 5160330,cardId = 1101998,lv = 135,bklv = 17,star = 3,equip = {[1] = {id = 2009301,lv = 130},[2] = {id = 2009302,lv = 130},[3] = {id = 2009303,lv = 130},[4] = {id = 2009304,lv = 130},[5] = {id = 2009305,lv = 130},[6] = {id = 2009306,lv = 130},[7] = {id = 2009307,lv = 130},[8] = {id = 2009308,lv = 130}},mon = {id = 206,desc = "xy-3-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 9,exert = 14,suffer = 21}},
			shl = {cha = "xy",id = 5160331,cardId = 1102997,lv = 135,bklv = 19,star = 3,ghost = 45,equip = {[1] = {id = 2109301,lv = 130},[2] = {id = 2109302,lv = 130},[3] = {id = 2109303,lv = 130},[4] = {id = 2109304,lv = 130},[5] = {id = 2109305,lv = 130},[6] = {id = 2109306,lv = 130},[7] = {id = 2109307,lv = 130},[8] = {id = 2109308,lv = 130}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 3,[6] = 3,[7] = 1,[8] = 0},mon = {id = 307,desc = "xy-3-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 9,exert = 18,suffer = 25}}
		}
	},
	[51604] = {
		[1] = {
			jlr = {cha = "xy",id = 5160410,cardId = 1101998,lv = 135,bklv = 17,star = 4,equip = {[1] = {id = 2009401,lv = 130},[2] = {id = 2009402,lv = 130},[3] = {id = 2009403,lv = 130},[4] = {id = 2009404,lv = 130},[5] = {id = 2009405,lv = 130},[6] = {id = 2009406,lv = 130},[7] = {id = 2009407,lv = 130},[8] = {id = 2009408,lv = 130}},mon = {id = 207,desc = "xy-4-loc1-jlr",srcLoc = 1,srcType = 1,skillLv = 10,exert = 11,suffer = 21}},
			shl = {cha = "xy",id = 5160411,cardId = 1102997,lv = 135,bklv = 19,star = 4,ghost = 45,equip = {[1] = {id = 2109401,lv = 130},[2] = {id = 2109402,lv = 130},[3] = {id = 2109403,lv = 130},[4] = {id = 2109404,lv = 130},[5] = {id = 2109405,lv = 130},[6] = {id = 2109406,lv = 130},[7] = {id = 2109407,lv = 130},[8] = {id = 2109408,lv = 130}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 3,[6] = 3,[7] = 1,[8] = 0},mon = {id = 312,desc = "xy-4-loc1-shl",srcLoc = 1,srcType = 2,skillLv = 10,exert = 15,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "xy",id = 5160420,cardId = 1101998,lv = 135,bklv = 17,star = 4,equip = {[1] = {id = 2009421,lv = 130},[2] = {id = 2009422,lv = 130},[3] = {id = 2009423,lv = 130},[4] = {id = 2009424,lv = 130},[5] = {id = 2009425,lv = 130},[6] = {id = 2009426,lv = 130},[7] = {id = 2009407,lv = 130},[8] = {id = 2009408,lv = 130}},mon = {id = 204,desc = "xy-4-loc2-jlr",srcLoc = 2,srcType = 1,skillLv = 10,exert = 11,suffer = 21}},
			shl = {cha = "xy",id = 5160421,cardId = 1102996,lv = 135,bklv = 19,star = 3,ghost = 45,equip = {[1] = {id = 2109421,lv = 130},[2] = {id = 2109422,lv = 130},[3] = {id = 2109423,lv = 130},[4] = {id = 2109424,lv = 130},[5] = {id = 2109425,lv = 130},[6] = {id = 2109426,lv = 130},[7] = {id = 2109407,lv = 130},[8] = {id = 2109408,lv = 130}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 3,[6] = 3,[7] = 1,[8] = 0},mon = {id = 306,desc = "xy-4-loc2-shl",srcLoc = 2,srcType = 2,skillLv = 10,exert = 15,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "xy",id = 5160430,cardId = 1101998,lv = 135,bklv = 17,star = 4,equip = {[1] = {id = 2009401,lv = 130},[2] = {id = 2009402,lv = 130},[3] = {id = 2009403,lv = 130},[4] = {id = 2009404,lv = 130},[5] = {id = 2009405,lv = 130},[6] = {id = 2009406,lv = 130},[7] = {id = 2009407,lv = 130},[8] = {id = 2009408,lv = 130}},mon = {id = 205,desc = "xy-4-loc3-jlr",srcLoc = 3,srcType = 1,skillLv = 10,exert = 11,suffer = 21}},
			shl = {cha = "xy",id = 5160431,cardId = 1102997,lv = 135,bklv = 19,star = 4,ghost = 45,equip = {[1] = {id = 2109401,lv = 130},[2] = {id = 2109402,lv = 130},[3] = {id = 2109403,lv = 130},[4] = {id = 2109404,lv = 130},[5] = {id = 2109405,lv = 130},[6] = {id = 2109406,lv = 130},[7] = {id = 2109407,lv = 130},[8] = {id = 2109408,lv = 130}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 3,[6] = 3,[7] = 1,[8] = 0},mon = {id = 301,desc = "xy-4-loc3-shl",srcLoc = 3,srcType = 2,skillLv = 10,exert = 15,suffer = 25}}
		}
	},
	[60101] = {
		[1] = {
			jlr = {cha = "daily_ghost",id = 6010110,cardId = 1101999,lv = 15,bklv = 2,star = 1,mon = {id = 201,desc = "daily_ghost-1-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_ghost",id = 6010111,cardId = 1102999,lv = 15,bklv = 2,star = 2,ghost = 3,equip = {[1] = {id = 2101201,lv = 10},[2] = {id = 2101202,lv = 10},[3] = {id = 2101203,lv = 10},[4] = {id = 2101204,lv = 10},[5] = {id = 2101205,lv = 10},[6] = {id = 2101206,lv = 10},[7] = {id = 2101207,lv = 10},[8] = {id = 2101208,lv = 10}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 235,desc = "daily_ghost-1-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_ghost",id = 6010120,cardId = 1101999,lv = 15,bklv = 2,star = 1,mon = {id = 202,desc = "daily_ghost-1-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_ghost",id = 6010121,cardId = 1102999,lv = 15,bklv = 2,star = 1,ghost = 3,equip = {[1] = {id = 2101201,lv = 10},[2] = {id = 2101202,lv = 10},[3] = {id = 2101203,lv = 10},[4] = {id = 2101204,lv = 10},[5] = {id = 2101205,lv = 10},[6] = {id = 2101206,lv = 10},[7] = {id = 2101207,lv = 10},[8] = {id = 2101208,lv = 10}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 224,desc = "daily_ghost-1-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_ghost",id = 6010130,cardId = 1101999,lv = 15,bklv = 2,star = 1,mon = {id = 203,desc = "daily_ghost-1-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_ghost",id = 6010131,cardId = 1102999,lv = 15,bklv = 2,star = 2,ghost = 3,equip = {[1] = {id = 2101201,lv = 10},[2] = {id = 2101202,lv = 10},[3] = {id = 2101203,lv = 10},[4] = {id = 2101204,lv = 10},[5] = {id = 2101205,lv = 10},[6] = {id = 2101206,lv = 10},[7] = {id = 2101207,lv = 10},[8] = {id = 2101208,lv = 10}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 233,desc = "daily_ghost-1-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		}
	},
	[60102] = {
		[1] = {
			jlr = {cha = "daily_ghost",id = 6010210,cardId = 1101999,lv = 35,bklv = 3,star = 1,equip = {[1] = {id = 2001201,lv = 30},[2] = {id = 2001202,lv = 30},[3] = {id = 2001203,lv = 30},[4] = {id = 2001204,lv = 30},[5] = {id = 2001205,lv = 30},[6] = {id = 2001206,lv = 30},[7] = {id = 2001207,lv = 30},[8] = {id = 2001208,lv = 30}},mon = {id = 201,desc = "daily_ghost-2-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_ghost",id = 6010211,cardId = 1102999,lv = 35,bklv = 3,star = 2,ghost = 6,equip = {[1] = {id = 2101201,lv = 30},[2] = {id = 2101202,lv = 30},[3] = {id = 2101203,lv = 30},[4] = {id = 2101204,lv = 30},[5] = {id = 2101205,lv = 30},[6] = {id = 2101206,lv = 30},[7] = {id = 2101207,lv = 30},[8] = {id = 2101208,lv = 30}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 235,desc = "daily_ghost-2-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_ghost",id = 6010220,cardId = 1101998,lv = 35,bklv = 3,star = 1,equip = {[1] = {id = 2001201,lv = 30},[2] = {id = 2001202,lv = 30},[3] = {id = 2001203,lv = 30},[4] = {id = 2001204,lv = 30},[5] = {id = 2001205,lv = 30},[6] = {id = 2001206,lv = 30},[7] = {id = 2001207,lv = 30},[8] = {id = 2001208,lv = 30}},mon = {id = 202,desc = "daily_ghost-2-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_ghost",id = 6010221,cardId = 1102998,lv = 35,bklv = 3,star = 1,ghost = 6,equip = {[1] = {id = 2101201,lv = 30},[2] = {id = 2101202,lv = 30},[3] = {id = 2101203,lv = 30},[4] = {id = 2101204,lv = 30},[5] = {id = 2101205,lv = 30},[6] = {id = 2101206,lv = 30},[7] = {id = 2101207,lv = 30},[8] = {id = 2101208,lv = 30}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 224,desc = "daily_ghost-2-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_ghost",id = 6010230,cardId = 1101999,lv = 35,bklv = 3,star = 1,equip = {[1] = {id = 2001201,lv = 30},[2] = {id = 2001202,lv = 30},[3] = {id = 2001203,lv = 30},[4] = {id = 2001204,lv = 30},[5] = {id = 2001205,lv = 30},[6] = {id = 2001206,lv = 30},[7] = {id = 2001207,lv = 30},[8] = {id = 2001208,lv = 30}},mon = {id = 203,desc = "daily_ghost-2-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_ghost",id = 6010231,cardId = 1102999,lv = 35,bklv = 3,star = 2,ghost = 6,equip = {[1] = {id = 2101201,lv = 30},[2] = {id = 2101202,lv = 30},[3] = {id = 2101203,lv = 30},[4] = {id = 2101204,lv = 30},[5] = {id = 2101205,lv = 30},[6] = {id = 2101206,lv = 30},[7] = {id = 2101207,lv = 30},[8] = {id = 2101208,lv = 30}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 225,desc = "daily_ghost-2-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		}
	},
	[60103] = {
		[1] = {
			jlr = {cha = "daily_ghost",id = 6010310,cardId = 1101998,lv = 45,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 45},[2] = {id = 2001302,lv = 45},[3] = {id = 2001303,lv = 45},[4] = {id = 2001304,lv = 45},[5] = {id = 2001305,lv = 45},[6] = {id = 2001306,lv = 45},[7] = {id = 2001307,lv = 45},[8] = {id = 2001308,lv = 45}},mon = {id = 201,desc = "daily_ghost-3-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_ghost",id = 6010311,cardId = 1102998,lv = 45,bklv = 5,star = 1,ghost = 10,equip = {[1] = {id = 2102201,lv = 45},[2] = {id = 2102202,lv = 45},[3] = {id = 2102203,lv = 45},[4] = {id = 2102204,lv = 45},[5] = {id = 2102205,lv = 45},[6] = {id = 2102206,lv = 45},[7] = {id = 2102207,lv = 45},[8] = {id = 2102208,lv = 45}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 222,desc = "daily_ghost-3-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_ghost",id = 6010320,cardId = 1101998,lv = 45,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 45},[2] = {id = 2001302,lv = 45},[3] = {id = 2001303,lv = 45},[4] = {id = 2001304,lv = 45},[5] = {id = 2001305,lv = 45},[6] = {id = 2001306,lv = 45},[7] = {id = 2001307,lv = 45},[8] = {id = 2001308,lv = 45}},mon = {id = 214,desc = "daily_ghost-3-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_ghost",id = 6010321,cardId = 1102998,lv = 45,bklv = 5,star = 1,ghost = 10,equip = {[1] = {id = 2102201,lv = 45},[2] = {id = 2102202,lv = 45},[3] = {id = 2102203,lv = 45},[4] = {id = 2102204,lv = 45},[5] = {id = 2102205,lv = 45},[6] = {id = 2102206,lv = 45},[7] = {id = 2102207,lv = 45},[8] = {id = 2102208,lv = 45}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 240,desc = "daily_ghost-3-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_ghost",id = 6010330,cardId = 1101998,lv = 45,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 45},[2] = {id = 2001302,lv = 45},[3] = {id = 2001303,lv = 45},[4] = {id = 2001304,lv = 45},[5] = {id = 2001305,lv = 45},[6] = {id = 2001306,lv = 45},[7] = {id = 2001307,lv = 45},[8] = {id = 2001308,lv = 45}},mon = {id = 203,desc = "daily_ghost-3-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_ghost",id = 6010331,cardId = 1102998,lv = 45,bklv = 5,star = 1,ghost = 10,equip = {[1] = {id = 2102201,lv = 45},[2] = {id = 2102202,lv = 45},[3] = {id = 2102203,lv = 45},[4] = {id = 2102204,lv = 45},[5] = {id = 2102205,lv = 45},[6] = {id = 2102206,lv = 45},[7] = {id = 2102207,lv = 45},[8] = {id = 2102208,lv = 45}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 225,desc = "daily_ghost-3-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		}
	},
	[60104] = {
		[1] = {
			jlr = {cha = "daily_ghost",id = 6010410,cardId = 1101998,lv = 55,bklv = 6,star = 1,equip = {[1] = {id = 2002301,lv = 60},[2] = {id = 2002302,lv = 60},[3] = {id = 2002303,lv = 60},[4] = {id = 2002304,lv = 60},[5] = {id = 2002305,lv = 60},[6] = {id = 2002306,lv = 60},[7] = {id = 2002307,lv = 60},[8] = {id = 2002308,lv = 60}},mon = {id = 201,desc = "daily_ghost-4-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_ghost",id = 6010411,cardId = 1102998,lv = 55,bklv = 7,star = 1,ghost = 14,equip = {[1] = {id = 2103301,lv = 60},[2] = {id = 2103302,lv = 60},[3] = {id = 2103303,lv = 60},[4] = {id = 2103304,lv = 60},[5] = {id = 2103305,lv = 60},[6] = {id = 2103306,lv = 60},[7] = {id = 2103307,lv = 60},[8] = {id = 2103308,lv = 60}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 223,desc = "daily_ghost-4-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_ghost",id = 6010420,cardId = 1101998,lv = 55,bklv = 6,star = 1,equip = {[1] = {id = 2002301,lv = 60},[2] = {id = 2002302,lv = 60},[3] = {id = 2002303,lv = 60},[4] = {id = 2002304,lv = 60},[5] = {id = 2002305,lv = 60},[6] = {id = 2002306,lv = 60},[7] = {id = 2002307,lv = 60},[8] = {id = 2002308,lv = 60}},mon = {id = 210,desc = "daily_ghost-4-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_ghost",id = 6010421,cardId = 1102998,lv = 55,bklv = 7,star = 2,ghost = 14,equip = {[1] = {id = 2103301,lv = 60},[2] = {id = 2103302,lv = 60},[3] = {id = 2103303,lv = 60},[4] = {id = 2103304,lv = 60},[5] = {id = 2103305,lv = 60},[6] = {id = 2103306,lv = 60},[7] = {id = 2103307,lv = 60},[8] = {id = 2103308,lv = 60}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 236,desc = "daily_ghost-4-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_ghost",id = 6010430,cardId = 1101998,lv = 55,bklv = 6,star = 1,equip = {[1] = {id = 2002301,lv = 60},[2] = {id = 2002302,lv = 60},[3] = {id = 2002303,lv = 60},[4] = {id = 2002304,lv = 60},[5] = {id = 2002305,lv = 60},[6] = {id = 2002306,lv = 60},[7] = {id = 2002307,lv = 60},[8] = {id = 2002308,lv = 60}},mon = {id = 203,desc = "daily_ghost-4-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_ghost",id = 6010431,cardId = 1102998,lv = 55,bklv = 7,star = 1,ghost = 14,equip = {[1] = {id = 2103301,lv = 60},[2] = {id = 2103302,lv = 60},[3] = {id = 2103303,lv = 60},[4] = {id = 2103304,lv = 60},[5] = {id = 2103305,lv = 60},[6] = {id = 2103306,lv = 60},[7] = {id = 2103307,lv = 60},[8] = {id = 2103308,lv = 60}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 225,desc = "daily_ghost-4-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		}
	},
	[60105] = {
		[1] = {
			jlr = {cha = "daily_ghost",id = 6010510,cardId = 1101998,lv = 75,bklv = 8,star = 2,equip = {[1] = {id = 2003301,lv = 75},[2] = {id = 2003302,lv = 75},[3] = {id = 2003303,lv = 75},[4] = {id = 2003304,lv = 75},[5] = {id = 2003305,lv = 75},[6] = {id = 2003306,lv = 75},[7] = {id = 2003307,lv = 75},[8] = {id = 2003308,lv = 75}},mon = {id = 201,desc = "daily_ghost-5-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_ghost",id = 6010511,cardId = 1102998,lv = 75,bklv = 10,star = 2,ghost = 22,equip = {[1] = {id = 2103301,lv = 75},[2] = {id = 2103302,lv = 75},[3] = {id = 2103303,lv = 75},[4] = {id = 2103304,lv = 75},[5] = {id = 2103305,lv = 75},[6] = {id = 2103306,lv = 75},[7] = {id = 2103307,lv = 75},[8] = {id = 2103308,lv = 75}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 223,desc = "daily_ghost-5-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_ghost",id = 6010520,cardId = 1101998,lv = 75,bklv = 8,star = 2,equip = {[1] = {id = 2003301,lv = 75},[2] = {id = 2003302,lv = 75},[3] = {id = 2003303,lv = 75},[4] = {id = 2003304,lv = 75},[5] = {id = 2003305,lv = 75},[6] = {id = 2003306,lv = 75},[7] = {id = 2003307,lv = 75},[8] = {id = 2003308,lv = 75}},mon = {id = 210,desc = "daily_ghost-5-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_ghost",id = 6010521,cardId = 1102998,lv = 75,bklv = 10,star = 2,ghost = 22,equip = {[1] = {id = 2103301,lv = 75},[2] = {id = 2103302,lv = 75},[3] = {id = 2103303,lv = 75},[4] = {id = 2103304,lv = 75},[5] = {id = 2103305,lv = 75},[6] = {id = 2103306,lv = 75},[7] = {id = 2103307,lv = 75},[8] = {id = 2103308,lv = 75}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 236,desc = "daily_ghost-5-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_ghost",id = 6010530,cardId = 1101998,lv = 75,bklv = 8,star = 2,equip = {[1] = {id = 2003301,lv = 75},[2] = {id = 2003302,lv = 75},[3] = {id = 2003303,lv = 75},[4] = {id = 2003304,lv = 75},[5] = {id = 2003305,lv = 75},[6] = {id = 2003306,lv = 75},[7] = {id = 2003307,lv = 75},[8] = {id = 2003308,lv = 75}},mon = {id = 205,desc = "daily_ghost-5-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_ghost",id = 6010531,cardId = 1102998,lv = 75,bklv = 10,star = 2,ghost = 22,equip = {[1] = {id = 2103301,lv = 75},[2] = {id = 2103302,lv = 75},[3] = {id = 2103303,lv = 75},[4] = {id = 2103304,lv = 75},[5] = {id = 2103305,lv = 75},[6] = {id = 2103306,lv = 75},[7] = {id = 2103307,lv = 75},[8] = {id = 2103308,lv = 75}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 231,desc = "daily_ghost-5-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		}
	},
	[60106] = {
		[1] = {
			jlr = {cha = "daily_ghost",id = 6010610,cardId = 1101997,lv = 95,bklv = 12,star = 1,equip = {[1] = {id = 2005301,lv = 90},[2] = {id = 2005302,lv = 90},[3] = {id = 2005303,lv = 90},[4] = {id = 2005304,lv = 90},[5] = {id = 2005305,lv = 90},[6] = {id = 2005306,lv = 90},[7] = {id = 2005307,lv = 90},[8] = {id = 2005308,lv = 90}},mon = {id = 207,desc = "daily_ghost-6-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_ghost",id = 6010611,cardId = 1102997,lv = 95,bklv = 13,star = 1,ghost = 30,equip = {[1] = {id = 2105301,lv = 90},[2] = {id = 2105302,lv = 90},[3] = {id = 2105303,lv = 90},[4] = {id = 2105304,lv = 90},[5] = {id = 2105305,lv = 90},[6] = {id = 2105306,lv = 90},[7] = {id = 2105307,lv = 90},[8] = {id = 2105308,lv = 90}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 230,desc = "daily_ghost-6-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_ghost",id = 6010620,cardId = 1101997,lv = 95,bklv = 12,star = 1,equip = {[1] = {id = 2005301,lv = 90},[2] = {id = 2005302,lv = 90},[3] = {id = 2005303,lv = 90},[4] = {id = 2005304,lv = 90},[5] = {id = 2005305,lv = 90},[6] = {id = 2005306,lv = 90},[7] = {id = 2005307,lv = 90},[8] = {id = 2005308,lv = 90}},mon = {id = 205,desc = "daily_ghost-6-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_ghost",id = 6010621,cardId = 1102997,lv = 95,bklv = 13,star = 1,ghost = 30,equip = {[1] = {id = 2105301,lv = 90},[2] = {id = 2105302,lv = 90},[3] = {id = 2105303,lv = 90},[4] = {id = 2105304,lv = 90},[5] = {id = 2105305,lv = 90},[6] = {id = 2105306,lv = 90},[7] = {id = 2105307,lv = 90},[8] = {id = 2105308,lv = 90}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 231,desc = "daily_ghost-6-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_ghost",id = 6010630,cardId = 1101997,lv = 95,bklv = 12,star = 1,equip = {[1] = {id = 2005301,lv = 90},[2] = {id = 2005302,lv = 90},[3] = {id = 2005303,lv = 90},[4] = {id = 2005304,lv = 90},[5] = {id = 2005305,lv = 90},[6] = {id = 2005306,lv = 90},[7] = {id = 2005307,lv = 90},[8] = {id = 2005308,lv = 90}},mon = {id = 210,desc = "daily_ghost-6-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_ghost",id = 6010631,cardId = 1102997,lv = 95,bklv = 13,star = 1,ghost = 30,equip = {[1] = {id = 2105301,lv = 90},[2] = {id = 2105302,lv = 90},[3] = {id = 2105303,lv = 90},[4] = {id = 2105304,lv = 90},[5] = {id = 2105305,lv = 90},[6] = {id = 2105306,lv = 90},[7] = {id = 2105307,lv = 90},[8] = {id = 2105308,lv = 90}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 236,desc = "daily_ghost-6-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		}
	},
	[60107] = {
		[1] = {
			jlr = {cha = "daily_ghost",id = 6010710,cardId = 1101997,lv = 105,bklv = 14,star = 1,equip = {[1] = {id = 2006301,lv = 105},[2] = {id = 2006302,lv = 105},[3] = {id = 2006303,lv = 105},[4] = {id = 2006304,lv = 105},[5] = {id = 2006305,lv = 105},[6] = {id = 2006306,lv = 105},[7] = {id = 2006307,lv = 105},[8] = {id = 2006308,lv = 105}},mon = {id = 207,desc = "daily_ghost-7-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_ghost",id = 6010711,cardId = 1102997,lv = 105,bklv = 14,star = 1,ghost = 34,equip = {[1] = {id = 2106301,lv = 105},[2] = {id = 2106302,lv = 105},[3] = {id = 2106303,lv = 105},[4] = {id = 2106304,lv = 105},[5] = {id = 2106305,lv = 105},[6] = {id = 2106306,lv = 105},[7] = {id = 2106307,lv = 105},[8] = {id = 2106308,lv = 105}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 232,desc = "daily_ghost-7-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_ghost",id = 6010720,cardId = 1101997,lv = 105,bklv = 14,star = 2,equip = {[1] = {id = 2006301,lv = 105},[2] = {id = 2006302,lv = 105},[3] = {id = 2006303,lv = 105},[4] = {id = 2006304,lv = 105},[5] = {id = 2006305,lv = 105},[6] = {id = 2006306,lv = 105},[7] = {id = 2006307,lv = 105},[8] = {id = 2006308,lv = 105}},mon = {id = 205,desc = "daily_ghost-7-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_ghost",id = 6010721,cardId = 1102997,lv = 105,bklv = 14,star = 2,ghost = 34,equip = {[1] = {id = 2106301,lv = 105},[2] = {id = 2106302,lv = 105},[3] = {id = 2106303,lv = 105},[4] = {id = 2106304,lv = 105},[5] = {id = 2106305,lv = 105},[6] = {id = 2106306,lv = 105},[7] = {id = 2106307,lv = 105},[8] = {id = 2106308,lv = 105}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 221,desc = "daily_ghost-7-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_ghost",id = 6010730,cardId = 1101997,lv = 105,bklv = 14,star = 1,equip = {[1] = {id = 2006301,lv = 105},[2] = {id = 2006302,lv = 105},[3] = {id = 2006303,lv = 105},[4] = {id = 2006304,lv = 105},[5] = {id = 2006305,lv = 105},[6] = {id = 2006306,lv = 105},[7] = {id = 2006307,lv = 105},[8] = {id = 2006308,lv = 105}},mon = {id = 204,desc = "daily_ghost-7-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_ghost",id = 6010731,cardId = 1102997,lv = 105,bklv = 14,star = 1,ghost = 34,equip = {[1] = {id = 2106301,lv = 105},[2] = {id = 2106302,lv = 105},[3] = {id = 2106303,lv = 105},[4] = {id = 2106304,lv = 105},[5] = {id = 2106305,lv = 105},[6] = {id = 2106306,lv = 105},[7] = {id = 2106307,lv = 105},[8] = {id = 2106308,lv = 105}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 226,desc = "daily_ghost-7-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		}
	},
	[60108] = {
		[1] = {
			jlr = {cha = "daily_ghost",id = 6010810,cardId = 1101997,lv = 120,bklv = 16,star = 1,equip = {[1] = {id = 2007301,lv = 120},[2] = {id = 2007302,lv = 120},[3] = {id = 2007303,lv = 120},[4] = {id = 2007304,lv = 120},[5] = {id = 2007305,lv = 120},[6] = {id = 2007306,lv = 120},[7] = {id = 2007307,lv = 120},[8] = {id = 2007308,lv = 120}},mon = {id = 207,desc = "daily_ghost-8-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_ghost",id = 6010811,cardId = 1102997,lv = 120,bklv = 17,star = 2,ghost = 41,equip = {[1] = {id = 2108301,lv = 120},[2] = {id = 2108302,lv = 120},[3] = {id = 2108303,lv = 120},[4] = {id = 2108304,lv = 120},[5] = {id = 2108305,lv = 120},[6] = {id = 2108306,lv = 120},[7] = {id = 2108307,lv = 120},[8] = {id = 2108308,lv = 120}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 232,desc = "daily_ghost-8-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_ghost",id = 6010820,cardId = 1101997,lv = 120,bklv = 16,star = 2,equip = {[1] = {id = 2007301,lv = 120},[2] = {id = 2007302,lv = 120},[3] = {id = 2007303,lv = 120},[4] = {id = 2007304,lv = 120},[5] = {id = 2007305,lv = 120},[6] = {id = 2007306,lv = 120},[7] = {id = 2007307,lv = 120},[8] = {id = 2007308,lv = 120}},mon = {id = 205,desc = "daily_ghost-8-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_ghost",id = 6010821,cardId = 1102997,lv = 120,bklv = 17,star = 2,ghost = 41,equip = {[1] = {id = 2108301,lv = 120},[2] = {id = 2108302,lv = 120},[3] = {id = 2108303,lv = 120},[4] = {id = 2108304,lv = 120},[5] = {id = 2108305,lv = 120},[6] = {id = 2108306,lv = 120},[7] = {id = 2108307,lv = 120},[8] = {id = 2108308,lv = 120}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 221,desc = "daily_ghost-8-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_ghost",id = 6010830,cardId = 1101997,lv = 120,bklv = 16,star = 1,equip = {[1] = {id = 2007301,lv = 120},[2] = {id = 2007302,lv = 120},[3] = {id = 2007303,lv = 120},[4] = {id = 2007304,lv = 120},[5] = {id = 2007305,lv = 120},[6] = {id = 2007306,lv = 120},[7] = {id = 2007307,lv = 120},[8] = {id = 2007308,lv = 120}},mon = {id = 204,desc = "daily_ghost-8-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_ghost",id = 6010831,cardId = 1102997,lv = 120,bklv = 17,star = 2,ghost = 41,equip = {[1] = {id = 2108301,lv = 120},[2] = {id = 2108302,lv = 120},[3] = {id = 2108303,lv = 120},[4] = {id = 2108304,lv = 120},[5] = {id = 2108305,lv = 120},[6] = {id = 2108306,lv = 120},[7] = {id = 2108307,lv = 120},[8] = {id = 2108308,lv = 120}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 226,desc = "daily_ghost-8-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		}
	},
	[60109] = {
		[1] = {
			jlr = {cha = "daily_ghost",id = 6010910,cardId = 1101997,lv = 135,bklv = 18,star = 2,equip = {[1] = {id = 2009301,lv = 135},[2] = {id = 2009302,lv = 135},[3] = {id = 2009303,lv = 135},[4] = {id = 2009304,lv = 135},[5] = {id = 2009305,lv = 135},[6] = {id = 2009306,lv = 135},[7] = {id = 2009307,lv = 135},[8] = {id = 2009308,lv = 135}},mon = {id = 207,desc = "daily_ghost-9-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_ghost",id = 6010911,cardId = 1102997,lv = 135,bklv = 18,star = 2,ghost = 46,equip = {[1] = {id = 2109301,lv = 135},[2] = {id = 2109302,lv = 135},[3] = {id = 2109303,lv = 135},[4] = {id = 2109304,lv = 135},[5] = {id = 2109305,lv = 135},[6] = {id = 2109306,lv = 135},[7] = {id = 2109307,lv = 135},[8] = {id = 2109308,lv = 135}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 232,desc = "daily_ghost-9-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_ghost",id = 6010920,cardId = 1101997,lv = 135,bklv = 18,star = 1,equip = {[1] = {id = 2009301,lv = 135},[2] = {id = 2009302,lv = 135},[3] = {id = 2009303,lv = 135},[4] = {id = 2009304,lv = 135},[5] = {id = 2009305,lv = 135},[6] = {id = 2009306,lv = 135},[7] = {id = 2009307,lv = 135},[8] = {id = 2009308,lv = 135}},mon = {id = 205,desc = "daily_ghost-9-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_ghost",id = 6010921,cardId = 1102996,lv = 135,bklv = 18,star = 1,ghost = 46,equip = {[1] = {id = 2109301,lv = 135},[2] = {id = 2109302,lv = 135},[3] = {id = 2109303,lv = 135},[4] = {id = 2109304,lv = 135},[5] = {id = 2109305,lv = 135},[6] = {id = 2109306,lv = 135},[7] = {id = 2109307,lv = 135},[8] = {id = 2109308,lv = 135}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 221,desc = "daily_ghost-9-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_ghost",id = 6010930,cardId = 1101997,lv = 135,bklv = 18,star = 2,equip = {[1] = {id = 2009301,lv = 135},[2] = {id = 2009302,lv = 135},[3] = {id = 2009303,lv = 135},[4] = {id = 2009304,lv = 135},[5] = {id = 2009305,lv = 135},[6] = {id = 2009306,lv = 135},[7] = {id = 2009307,lv = 135},[8] = {id = 2009308,lv = 135}},mon = {id = 204,desc = "daily_ghost-9-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_ghost",id = 6010931,cardId = 1102997,lv = 135,bklv = 18,star = 2,ghost = 46,equip = {[1] = {id = 2109301,lv = 135},[2] = {id = 2109302,lv = 135},[3] = {id = 2109303,lv = 135},[4] = {id = 2109304,lv = 135},[5] = {id = 2109305,lv = 135},[6] = {id = 2109306,lv = 135},[7] = {id = 2109307,lv = 135},[8] = {id = 2109308,lv = 135}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 226,desc = "daily_ghost-9-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		}
	},
	[60201] = {
		[1] = {
			jlr = {cha = "daily_break",id = 6020110,cardId = 1101999,lv = 25,bklv = 4,star = 1,equip = {[1] = {id = 2001201,lv = 15},[2] = {id = 2001202,lv = 15},[3] = {id = 2001203,lv = 15},[4] = {id = 2001204,lv = 15},[5] = {id = 2001205,lv = 15},[6] = {id = 2001206,lv = 15},[7] = {id = 2001207,lv = 15},[8] = {id = 2001208,lv = 15}},mon = {id = 201,desc = "daily_break-1-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_break",id = 6020111,cardId = 1102999,lv = 25,bklv = 3,star = 2,ghost = 6,equip = {[1] = {id = 2101201,lv = 15},[2] = {id = 2101202,lv = 15},[3] = {id = 2101203,lv = 15},[4] = {id = 2101204,lv = 15},[5] = {id = 2101205,lv = 15},[6] = {id = 2101206,lv = 15},[7] = {id = 2101207,lv = 15},[8] = {id = 2101208,lv = 15}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 235,desc = "daily_break-1-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_break",id = 6020120,cardId = 1101999,lv = 25,bklv = 4,star = 1,equip = {[1] = {id = 2001201,lv = 15},[2] = {id = 2001202,lv = 15},[3] = {id = 2001203,lv = 15},[4] = {id = 2001204,lv = 15},[5] = {id = 2001205,lv = 15},[6] = {id = 2001206,lv = 15},[7] = {id = 2001207,lv = 15},[8] = {id = 2001208,lv = 15}},mon = {id = 202,desc = "daily_break-1-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_break",id = 6020121,cardId = 1102999,lv = 25,bklv = 3,star = 1,ghost = 6,equip = {[1] = {id = 2101201,lv = 15},[2] = {id = 2101202,lv = 15},[3] = {id = 2101203,lv = 15},[4] = {id = 2101204,lv = 15},[5] = {id = 2101205,lv = 15},[6] = {id = 2101206,lv = 15},[7] = {id = 2101207,lv = 15},[8] = {id = 2101208,lv = 15}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 224,desc = "daily_break-1-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_break",id = 6020130,cardId = 1101999,lv = 25,bklv = 4,star = 1,equip = {[1] = {id = 2001201,lv = 15},[2] = {id = 2001202,lv = 15},[3] = {id = 2001203,lv = 15},[4] = {id = 2001204,lv = 15},[5] = {id = 2001205,lv = 15},[6] = {id = 2001206,lv = 15},[7] = {id = 2001207,lv = 15},[8] = {id = 2001208,lv = 15}},mon = {id = 203,desc = "daily_break-1-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_break",id = 6020131,cardId = 1102999,lv = 25,bklv = 3,star = 2,ghost = 6,equip = {[1] = {id = 2101201,lv = 15},[2] = {id = 2101202,lv = 15},[3] = {id = 2101203,lv = 15},[4] = {id = 2101204,lv = 15},[5] = {id = 2101205,lv = 15},[6] = {id = 2101206,lv = 15},[7] = {id = 2101207,lv = 15},[8] = {id = 2101208,lv = 15}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 233,desc = "daily_break-1-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		}
	},
	[60202] = {
		[1] = {
			jlr = {cha = "daily_break",id = 6020210,cardId = 1101999,lv = 40,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 35},[2] = {id = 2001302,lv = 35},[3] = {id = 2001303,lv = 35},[4] = {id = 2001304,lv = 35},[5] = {id = 2001305,lv = 35},[6] = {id = 2001306,lv = 35},[7] = {id = 2001307,lv = 35},[8] = {id = 2001308,lv = 35}},mon = {id = 201,desc = "daily_break-2-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_break",id = 6020211,cardId = 1102999,lv = 40,bklv = 4,star = 2,ghost = 8,equip = {[1] = {id = 2102201,lv = 35},[2] = {id = 2102202,lv = 35},[3] = {id = 2102203,lv = 35},[4] = {id = 2102204,lv = 35},[5] = {id = 2102205,lv = 35},[6] = {id = 2102206,lv = 35},[7] = {id = 2102207,lv = 35},[8] = {id = 2102208,lv = 35}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 235,desc = "daily_break-2-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_break",id = 6020220,cardId = 1101998,lv = 40,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 35},[2] = {id = 2001302,lv = 35},[3] = {id = 2001303,lv = 35},[4] = {id = 2001304,lv = 35},[5] = {id = 2001305,lv = 35},[6] = {id = 2001306,lv = 35},[7] = {id = 2001307,lv = 35},[8] = {id = 2001308,lv = 35}},mon = {id = 202,desc = "daily_break-2-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_break",id = 6020221,cardId = 1102998,lv = 40,bklv = 4,star = 1,ghost = 8,equip = {[1] = {id = 2102201,lv = 35},[2] = {id = 2102202,lv = 35},[3] = {id = 2102203,lv = 35},[4] = {id = 2102204,lv = 35},[5] = {id = 2102205,lv = 35},[6] = {id = 2102206,lv = 35},[7] = {id = 2102207,lv = 35},[8] = {id = 2102208,lv = 35}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 224,desc = "daily_break-2-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_break",id = 6020230,cardId = 1101999,lv = 40,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 35},[2] = {id = 2001302,lv = 35},[3] = {id = 2001303,lv = 35},[4] = {id = 2001304,lv = 35},[5] = {id = 2001305,lv = 35},[6] = {id = 2001306,lv = 35},[7] = {id = 2001307,lv = 35},[8] = {id = 2001308,lv = 35}},mon = {id = 203,desc = "daily_break-2-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_break",id = 6020231,cardId = 1102999,lv = 40,bklv = 4,star = 2,ghost = 8,equip = {[1] = {id = 2102201,lv = 35},[2] = {id = 2102202,lv = 35},[3] = {id = 2102203,lv = 35},[4] = {id = 2102204,lv = 35},[5] = {id = 2102205,lv = 35},[6] = {id = 2102206,lv = 35},[7] = {id = 2102207,lv = 35},[8] = {id = 2102208,lv = 35}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 225,desc = "daily_break-2-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		}
	},
	[60203] = {
		[1] = {
			jlr = {cha = "daily_break",id = 6020310,cardId = 1101998,lv = 60,bklv = 7,star = 1,equip = {[1] = {id = 2002301,lv = 55},[2] = {id = 2002302,lv = 55},[3] = {id = 2002303,lv = 55},[4] = {id = 2002304,lv = 55},[5] = {id = 2002305,lv = 55},[6] = {id = 2002306,lv = 55},[7] = {id = 2002307,lv = 55},[8] = {id = 2002308,lv = 55}},mon = {id = 201,desc = "daily_break-3-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_break",id = 6020311,cardId = 1102998,lv = 60,bklv = 8,star = 1,ghost = 16,equip = {[1] = {id = 2103301,lv = 55},[2] = {id = 2103302,lv = 55},[3] = {id = 2103303,lv = 55},[4] = {id = 2103304,lv = 55},[5] = {id = 2103305,lv = 55},[6] = {id = 2103306,lv = 55},[7] = {id = 2103307,lv = 55},[8] = {id = 2103308,lv = 55}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 222,desc = "daily_break-3-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_break",id = 6020320,cardId = 1101998,lv = 60,bklv = 7,star = 1,equip = {[1] = {id = 2002301,lv = 55},[2] = {id = 2002302,lv = 55},[3] = {id = 2002303,lv = 55},[4] = {id = 2002304,lv = 55},[5] = {id = 2002305,lv = 55},[6] = {id = 2002306,lv = 55},[7] = {id = 2002307,lv = 55},[8] = {id = 2002308,lv = 55}},mon = {id = 214,desc = "daily_break-3-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_break",id = 6020321,cardId = 1102998,lv = 60,bklv = 8,star = 2,ghost = 16,equip = {[1] = {id = 2103301,lv = 55},[2] = {id = 2103302,lv = 55},[3] = {id = 2103303,lv = 55},[4] = {id = 2103304,lv = 55},[5] = {id = 2103305,lv = 55},[6] = {id = 2103306,lv = 55},[7] = {id = 2103307,lv = 55},[8] = {id = 2103308,lv = 55}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 240,desc = "daily_break-3-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_break",id = 6020330,cardId = 1101998,lv = 60,bklv = 7,star = 1,equip = {[1] = {id = 2002301,lv = 55},[2] = {id = 2002302,lv = 55},[3] = {id = 2002303,lv = 55},[4] = {id = 2002304,lv = 55},[5] = {id = 2002305,lv = 55},[6] = {id = 2002306,lv = 55},[7] = {id = 2002307,lv = 55},[8] = {id = 2002308,lv = 55}},mon = {id = 203,desc = "daily_break-3-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_break",id = 6020331,cardId = 1102998,lv = 60,bklv = 8,star = 1,ghost = 16,equip = {[1] = {id = 2103301,lv = 55},[2] = {id = 2103302,lv = 55},[3] = {id = 2103303,lv = 55},[4] = {id = 2103304,lv = 55},[5] = {id = 2103305,lv = 55},[6] = {id = 2103306,lv = 55},[7] = {id = 2103307,lv = 55},[8] = {id = 2103308,lv = 55}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 225,desc = "daily_break-3-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		}
	},
	[60204] = {
		[1] = {
			jlr = {cha = "daily_break",id = 6020410,cardId = 1101998,lv = 70,bklv = 9,star = 1,equip = {[1] = {id = 2003301,lv = 65},[2] = {id = 2003302,lv = 65},[3] = {id = 2003303,lv = 65},[4] = {id = 2003304,lv = 65},[5] = {id = 2003305,lv = 65},[6] = {id = 2003306,lv = 65},[7] = {id = 2003307,lv = 65},[8] = {id = 2003308,lv = 65}},mon = {id = 201,desc = "daily_break-4-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_break",id = 6020411,cardId = 1102998,lv = 70,bklv = 9,star = 2,ghost = 20,equip = {[1] = {id = 2103301,lv = 65},[2] = {id = 2103302,lv = 65},[3] = {id = 2103303,lv = 65},[4] = {id = 2103304,lv = 65},[5] = {id = 2103305,lv = 65},[6] = {id = 2103306,lv = 65},[7] = {id = 2103307,lv = 65},[8] = {id = 2103308,lv = 65}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 223,desc = "daily_break-4-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_break",id = 6020420,cardId = 1101998,lv = 70,bklv = 9,star = 1,equip = {[1] = {id = 2003301,lv = 65},[2] = {id = 2003302,lv = 65},[3] = {id = 2003303,lv = 65},[4] = {id = 2003304,lv = 65},[5] = {id = 2003305,lv = 65},[6] = {id = 2003306,lv = 65},[7] = {id = 2003307,lv = 65},[8] = {id = 2003308,lv = 65}},mon = {id = 210,desc = "daily_break-4-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_break",id = 6020421,cardId = 1102998,lv = 70,bklv = 9,star = 2,ghost = 20,equip = {[1] = {id = 2103301,lv = 65},[2] = {id = 2103302,lv = 65},[3] = {id = 2103303,lv = 65},[4] = {id = 2103304,lv = 65},[5] = {id = 2103305,lv = 65},[6] = {id = 2103306,lv = 65},[7] = {id = 2103307,lv = 65},[8] = {id = 2103308,lv = 65}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 236,desc = "daily_break-4-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_break",id = 6020430,cardId = 1101998,lv = 70,bklv = 9,star = 1,equip = {[1] = {id = 2003301,lv = 65},[2] = {id = 2003302,lv = 65},[3] = {id = 2003303,lv = 65},[4] = {id = 2003304,lv = 65},[5] = {id = 2003305,lv = 65},[6] = {id = 2003306,lv = 65},[7] = {id = 2003307,lv = 65},[8] = {id = 2003308,lv = 65}},mon = {id = 203,desc = "daily_break-4-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_break",id = 6020431,cardId = 1102998,lv = 70,bklv = 9,star = 2,ghost = 20,equip = {[1] = {id = 2103301,lv = 65},[2] = {id = 2103302,lv = 65},[3] = {id = 2103303,lv = 65},[4] = {id = 2103304,lv = 65},[5] = {id = 2103305,lv = 65},[6] = {id = 2103306,lv = 65},[7] = {id = 2103307,lv = 65},[8] = {id = 2103308,lv = 65}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 225,desc = "daily_break-4-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		}
	},
	[60205] = {
		[1] = {
			jlr = {cha = "daily_break",id = 6020510,cardId = 1101998,lv = 90,bklv = 12,star = 2,equip = {[1] = {id = 2005301,lv = 85},[2] = {id = 2005302,lv = 85},[3] = {id = 2005303,lv = 85},[4] = {id = 2005304,lv = 85},[5] = {id = 2005305,lv = 85},[6] = {id = 2005306,lv = 85},[7] = {id = 2005307,lv = 85},[8] = {id = 2005308,lv = 85}},mon = {id = 201,desc = "daily_break-5-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_break",id = 6020511,cardId = 1102998,lv = 90,bklv = 12,star = 2,ghost = 28,equip = {[1] = {id = 2105301,lv = 85},[2] = {id = 2105302,lv = 85},[3] = {id = 2105303,lv = 85},[4] = {id = 2105304,lv = 85},[5] = {id = 2105305,lv = 85},[6] = {id = 2105306,lv = 85},[7] = {id = 2105307,lv = 85},[8] = {id = 2105308,lv = 85}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 223,desc = "daily_break-5-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_break",id = 6020520,cardId = 1101998,lv = 90,bklv = 12,star = 2,equip = {[1] = {id = 2005301,lv = 85},[2] = {id = 2005302,lv = 85},[3] = {id = 2005303,lv = 85},[4] = {id = 2005304,lv = 85},[5] = {id = 2005305,lv = 85},[6] = {id = 2005306,lv = 85},[7] = {id = 2005307,lv = 85},[8] = {id = 2005308,lv = 85}},mon = {id = 210,desc = "daily_break-5-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_break",id = 6020521,cardId = 1102997,lv = 90,bklv = 12,star = 1,ghost = 28,equip = {[1] = {id = 2105301,lv = 85},[2] = {id = 2105302,lv = 85},[3] = {id = 2105303,lv = 85},[4] = {id = 2105304,lv = 85},[5] = {id = 2105305,lv = 85},[6] = {id = 2105306,lv = 85},[7] = {id = 2105307,lv = 85},[8] = {id = 2105308,lv = 85}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 236,desc = "daily_break-5-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_break",id = 6020530,cardId = 1101998,lv = 90,bklv = 12,star = 2,equip = {[1] = {id = 2005301,lv = 85},[2] = {id = 2005302,lv = 85},[3] = {id = 2005303,lv = 85},[4] = {id = 2005304,lv = 85},[5] = {id = 2005305,lv = 85},[6] = {id = 2005306,lv = 85},[7] = {id = 2005307,lv = 85},[8] = {id = 2005308,lv = 85}},mon = {id = 205,desc = "daily_break-5-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_break",id = 6020531,cardId = 1102998,lv = 90,bklv = 12,star = 2,ghost = 28,equip = {[1] = {id = 2105301,lv = 85},[2] = {id = 2105302,lv = 85},[3] = {id = 2105303,lv = 85},[4] = {id = 2105304,lv = 85},[5] = {id = 2105305,lv = 85},[6] = {id = 2105306,lv = 85},[7] = {id = 2105307,lv = 85},[8] = {id = 2105308,lv = 85}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 231,desc = "daily_break-5-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		}
	},
	[60206] = {
		[1] = {
			jlr = {cha = "daily_break",id = 6020610,cardId = 1101997,lv = 100,bklv = 14,star = 1,equip = {[1] = {id = 2006301,lv = 100},[2] = {id = 2006302,lv = 100},[3] = {id = 2006303,lv = 100},[4] = {id = 2006304,lv = 100},[5] = {id = 2006305,lv = 100},[6] = {id = 2006306,lv = 100},[7] = {id = 2006307,lv = 100},[8] = {id = 2006308,lv = 100}},mon = {id = 207,desc = "daily_break-6-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_break",id = 6020611,cardId = 1102997,lv = 100,bklv = 13,star = 1,ghost = 32,equip = {[1] = {id = 2106301,lv = 100},[2] = {id = 2106302,lv = 100},[3] = {id = 2106303,lv = 100},[4] = {id = 2106304,lv = 100},[5] = {id = 2106305,lv = 100},[6] = {id = 2106306,lv = 100},[7] = {id = 2106307,lv = 100},[8] = {id = 2106308,lv = 100}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 230,desc = "daily_break-6-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_break",id = 6020620,cardId = 1101997,lv = 100,bklv = 14,star = 1,equip = {[1] = {id = 2006301,lv = 100},[2] = {id = 2006302,lv = 100},[3] = {id = 2006303,lv = 100},[4] = {id = 2006304,lv = 100},[5] = {id = 2006305,lv = 100},[6] = {id = 2006306,lv = 100},[7] = {id = 2006307,lv = 100},[8] = {id = 2006308,lv = 100}},mon = {id = 205,desc = "daily_break-6-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_break",id = 6020621,cardId = 1102997,lv = 100,bklv = 13,star = 1,ghost = 32,equip = {[1] = {id = 2106301,lv = 100},[2] = {id = 2106302,lv = 100},[3] = {id = 2106303,lv = 100},[4] = {id = 2106304,lv = 100},[5] = {id = 2106305,lv = 100},[6] = {id = 2106306,lv = 100},[7] = {id = 2106307,lv = 100},[8] = {id = 2106308,lv = 100}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 231,desc = "daily_break-6-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_break",id = 6020630,cardId = 1101997,lv = 100,bklv = 14,star = 1,equip = {[1] = {id = 2006301,lv = 100},[2] = {id = 2006302,lv = 100},[3] = {id = 2006303,lv = 100},[4] = {id = 2006304,lv = 100},[5] = {id = 2006305,lv = 100},[6] = {id = 2006306,lv = 100},[7] = {id = 2006307,lv = 100},[8] = {id = 2006308,lv = 100}},mon = {id = 210,desc = "daily_break-6-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_break",id = 6020631,cardId = 1102997,lv = 100,bklv = 13,star = 1,ghost = 32,equip = {[1] = {id = 2106301,lv = 100},[2] = {id = 2106302,lv = 100},[3] = {id = 2106303,lv = 100},[4] = {id = 2106304,lv = 100},[5] = {id = 2106305,lv = 100},[6] = {id = 2106306,lv = 100},[7] = {id = 2106307,lv = 100},[8] = {id = 2106308,lv = 100}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 236,desc = "daily_break-6-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		}
	},
	[60207] = {
		[1] = {
			jlr = {cha = "daily_break",id = 6020710,cardId = 1101997,lv = 120,bklv = 17,star = 2,equip = {[1] = {id = 2008301,lv = 115},[2] = {id = 2008302,lv = 115},[3] = {id = 2008303,lv = 115},[4] = {id = 2008304,lv = 115},[5] = {id = 2008305,lv = 115},[6] = {id = 2008306,lv = 115},[7] = {id = 2008307,lv = 115},[8] = {id = 2008308,lv = 115}},mon = {id = 207,desc = "daily_break-7-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_break",id = 6020711,cardId = 1102997,lv = 120,bklv = 16,star = 2,ghost = 40,equip = {[1] = {id = 2108301,lv = 115},[2] = {id = 2108302,lv = 115},[3] = {id = 2108303,lv = 115},[4] = {id = 2108304,lv = 115},[5] = {id = 2108305,lv = 115},[6] = {id = 2108306,lv = 115},[7] = {id = 2108307,lv = 115},[8] = {id = 2108308,lv = 115}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 232,desc = "daily_break-7-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_break",id = 6020720,cardId = 1101997,lv = 120,bklv = 17,star = 2,equip = {[1] = {id = 2008301,lv = 115},[2] = {id = 2008302,lv = 115},[3] = {id = 2008303,lv = 115},[4] = {id = 2008304,lv = 115},[5] = {id = 2008305,lv = 115},[6] = {id = 2008306,lv = 115},[7] = {id = 2008307,lv = 115},[8] = {id = 2008308,lv = 115}},mon = {id = 205,desc = "daily_break-7-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_break",id = 6020721,cardId = 1102997,lv = 120,bklv = 16,star = 2,ghost = 40,equip = {[1] = {id = 2108301,lv = 115},[2] = {id = 2108302,lv = 115},[3] = {id = 2108303,lv = 115},[4] = {id = 2108304,lv = 115},[5] = {id = 2108305,lv = 115},[6] = {id = 2108306,lv = 115},[7] = {id = 2108307,lv = 115},[8] = {id = 2108308,lv = 115}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 221,desc = "daily_break-7-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_break",id = 6020730,cardId = 1101997,lv = 120,bklv = 17,star = 2,equip = {[1] = {id = 2008301,lv = 115},[2] = {id = 2008302,lv = 115},[3] = {id = 2008303,lv = 115},[4] = {id = 2008304,lv = 115},[5] = {id = 2008305,lv = 115},[6] = {id = 2008306,lv = 115},[7] = {id = 2008307,lv = 115},[8] = {id = 2008308,lv = 115}},mon = {id = 204,desc = "daily_break-7-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_break",id = 6020731,cardId = 1102997,lv = 120,bklv = 16,star = 2,ghost = 40,equip = {[1] = {id = 2108301,lv = 115},[2] = {id = 2108302,lv = 115},[3] = {id = 2108303,lv = 115},[4] = {id = 2108304,lv = 115},[5] = {id = 2108305,lv = 115},[6] = {id = 2108306,lv = 115},[7] = {id = 2108307,lv = 115},[8] = {id = 2108308,lv = 115}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 226,desc = "daily_break-7-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		}
	},
	[60208] = {
		[1] = {
			jlr = {cha = "daily_break",id = 6020810,cardId = 1101997,lv = 140,bklv = 20,star = 2,equip = {[1] = {id = 2010301,lv = 135},[2] = {id = 2010302,lv = 135},[3] = {id = 2010303,lv = 135},[4] = {id = 2010304,lv = 135},[5] = {id = 2010305,lv = 135},[6] = {id = 2010306,lv = 135},[7] = {id = 2010307,lv = 135},[8] = {id = 2010308,lv = 135}},mon = {id = 207,desc = "daily_break-8-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_break",id = 6020811,cardId = 1102997,lv = 140,bklv = 19,star = 2,ghost = 48,equip = {[1] = {id = 2110301,lv = 135},[2] = {id = 2110302,lv = 135},[3] = {id = 2110303,lv = 135},[4] = {id = 2110304,lv = 135},[5] = {id = 2110305,lv = 135},[6] = {id = 2110306,lv = 135},[7] = {id = 2110307,lv = 135},[8] = {id = 2110308,lv = 135}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 232,desc = "daily_break-8-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_break",id = 6020820,cardId = 1101997,lv = 140,bklv = 20,star = 1,equip = {[1] = {id = 2010301,lv = 135},[2] = {id = 2010302,lv = 135},[3] = {id = 2010303,lv = 135},[4] = {id = 2010304,lv = 135},[5] = {id = 2010305,lv = 135},[6] = {id = 2010306,lv = 135},[7] = {id = 2010307,lv = 135},[8] = {id = 2010308,lv = 135}},mon = {id = 205,desc = "daily_break-8-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_break",id = 6020821,cardId = 1102996,lv = 140,bklv = 19,star = 1,ghost = 48,equip = {[1] = {id = 2110301,lv = 135},[2] = {id = 2110302,lv = 135},[3] = {id = 2110303,lv = 135},[4] = {id = 2110304,lv = 135},[5] = {id = 2110305,lv = 135},[6] = {id = 2110306,lv = 135},[7] = {id = 2110307,lv = 135},[8] = {id = 2110308,lv = 135}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 221,desc = "daily_break-8-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_break",id = 6020830,cardId = 1101997,lv = 140,bklv = 20,star = 2,equip = {[1] = {id = 2010301,lv = 135},[2] = {id = 2010302,lv = 135},[3] = {id = 2010303,lv = 135},[4] = {id = 2010304,lv = 135},[5] = {id = 2010305,lv = 135},[6] = {id = 2010306,lv = 135},[7] = {id = 2010307,lv = 135},[8] = {id = 2010308,lv = 135}},mon = {id = 204,desc = "daily_break-8-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_break",id = 6020831,cardId = 1102997,lv = 140,bklv = 19,star = 2,ghost = 48,equip = {[1] = {id = 2110301,lv = 135},[2] = {id = 2110302,lv = 135},[3] = {id = 2110303,lv = 135},[4] = {id = 2110304,lv = 135},[5] = {id = 2110305,lv = 135},[6] = {id = 2110306,lv = 135},[7] = {id = 2110307,lv = 135},[8] = {id = 2110308,lv = 135}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 226,desc = "daily_break-8-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		}
	},
	[60301] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6030110,cardId = 1101999,lv = 20,bklv = 3,star = 1,mon = {id = 201,desc = "daily_gold-1-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_gold",id = 6030111,cardId = 1102999,lv = 20,bklv = 2,star = 1,ghost = 4,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 235,desc = "daily_gold-1-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6030120,cardId = 1101999,lv = 20,bklv = 3,star = 1,mon = {id = 202,desc = "daily_gold-1-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_gold",id = 6030121,cardId = 1102999,lv = 20,bklv = 2,star = 1,ghost = 4,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 224,desc = "daily_gold-1-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6030130,cardId = 1101999,lv = 20,bklv = 3,star = 1,mon = {id = 203,desc = "daily_gold-1-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_gold",id = 6030131,cardId = 1102999,lv = 20,bklv = 2,star = 1,ghost = 4,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 233,desc = "daily_gold-1-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		}
	},
	[60302] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6030210,cardId = 1101999,lv = 20,bklv = 3,star = 2,equip = {[1] = {id = 2001301,lv = 10},[2] = {id = 2001302,lv = 10},[3] = {id = 2001303,lv = 10},[4] = {id = 2001304,lv = 10},[5] = {id = 2001305,lv = 10},[6] = {id = 2001306,lv = 10},[7] = {id = 2001307,lv = 10},[8] = {id = 2001308,lv = 10}},mon = {id = 201,desc = "daily_gold-2-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 2,exert = 14,suffer = 21}},
			shl = {cha = "daily_gold",id = 6030211,cardId = 1102999,lv = 20,bklv = 2,star = 2,ghost = 4,equip = {[1] = {id = 2101301,lv = 10},[2] = {id = 2101302,lv = 10},[3] = {id = 2101303,lv = 10},[4] = {id = 2101304,lv = 10},[5] = {id = 2101305,lv = 10},[6] = {id = 2101306,lv = 10},[7] = {id = 2101307,lv = 10},[8] = {id = 2101308,lv = 10}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 222,desc = "daily_gold-2-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 2,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6030220,cardId = 1101998,lv = 20,bklv = 3,star = 1,equip = {[1] = {id = 2001301,lv = 10},[2] = {id = 2001302,lv = 10},[3] = {id = 2001303,lv = 10},[4] = {id = 2001304,lv = 10},[5] = {id = 2001305,lv = 10},[6] = {id = 2001306,lv = 10},[7] = {id = 2001307,lv = 10},[8] = {id = 2001308,lv = 10}},mon = {id = 214,desc = "daily_gold-2-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 2,exert = 14,suffer = 21}},
			shl = {cha = "daily_gold",id = 6030221,cardId = 1102998,lv = 20,bklv = 2,star = 1,ghost = 4,equip = {[1] = {id = 2101301,lv = 10},[2] = {id = 2101302,lv = 10},[3] = {id = 2101303,lv = 10},[4] = {id = 2101304,lv = 10},[5] = {id = 2101305,lv = 10},[6] = {id = 2101306,lv = 10},[7] = {id = 2101307,lv = 10},[8] = {id = 2101308,lv = 10}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 240,desc = "daily_gold-2-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 2,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6030230,cardId = 1101999,lv = 20,bklv = 3,star = 2,equip = {[1] = {id = 2001301,lv = 10},[2] = {id = 2001302,lv = 10},[3] = {id = 2001303,lv = 10},[4] = {id = 2001304,lv = 10},[5] = {id = 2001305,lv = 10},[6] = {id = 2001306,lv = 10},[7] = {id = 2001307,lv = 10},[8] = {id = 2001308,lv = 10}},mon = {id = 203,desc = "daily_gold-2-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 2,exert = 14,suffer = 21}},
			shl = {cha = "daily_gold",id = 6030231,cardId = 1102999,lv = 20,bklv = 2,star = 2,ghost = 4,equip = {[1] = {id = 2101301,lv = 10},[2] = {id = 2101302,lv = 10},[3] = {id = 2101303,lv = 10},[4] = {id = 2101304,lv = 10},[5] = {id = 2101305,lv = 10},[6] = {id = 2101306,lv = 10},[7] = {id = 2101307,lv = 10},[8] = {id = 2101308,lv = 10}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 225,desc = "daily_gold-2-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 2,exert = 18,suffer = 25}}
		}
	},
	[60303] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6030310,cardId = 1101999,lv = 20,bklv = 3,star = 3,equip = {[1] = {id = 2001401,lv = 20},[2] = {id = 2001402,lv = 20},[3] = {id = 2001403,lv = 20},[4] = {id = 2001404,lv = 20},[5] = {id = 2001405,lv = 20},[6] = {id = 2001406,lv = 20},[7] = {id = 2001407,lv = 20},[8] = {id = 2001408,lv = 20}},mon = {id = 207,desc = "daily_gold-3-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 3,exert = 11,suffer = 21}},
			shl = {cha = "daily_gold",id = 6030311,cardId = 1102999,lv = 20,bklv = 2,star = 3,ghost = 4,equip = {[1] = {id = 2101401,lv = 20},[2] = {id = 2101402,lv = 20},[3] = {id = 2101403,lv = 20},[4] = {id = 2101404,lv = 20},[5] = {id = 2101405,lv = 20},[6] = {id = 2101406,lv = 20},[7] = {id = 2101407,lv = 20},[8] = {id = 2101408,lv = 20}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 232,desc = "daily_gold-3-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 3,exert = 15,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6030320,cardId = 1101998,lv = 20,bklv = 3,star = 3,equip = {[1] = {id = 2001401,lv = 20},[2] = {id = 2001402,lv = 20},[3] = {id = 2001403,lv = 20},[4] = {id = 2001404,lv = 20},[5] = {id = 2001405,lv = 20},[6] = {id = 2001406,lv = 20},[7] = {id = 2001407,lv = 20},[8] = {id = 2001408,lv = 20}},mon = {id = 205,desc = "daily_gold-3-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 3,exert = 11,suffer = 21}},
			shl = {cha = "daily_gold",id = 6030321,cardId = 1102998,lv = 20,bklv = 2,star = 3,ghost = 4,equip = {[1] = {id = 2101401,lv = 20},[2] = {id = 2101402,lv = 20},[3] = {id = 2101403,lv = 20},[4] = {id = 2101404,lv = 20},[5] = {id = 2101405,lv = 20},[6] = {id = 2101406,lv = 20},[7] = {id = 2101407,lv = 20},[8] = {id = 2101408,lv = 20}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 221,desc = "daily_gold-3-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 3,exert = 15,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6030330,cardId = 1101999,lv = 20,bklv = 3,star = 3,equip = {[1] = {id = 2001401,lv = 20},[2] = {id = 2001402,lv = 20},[3] = {id = 2001403,lv = 20},[4] = {id = 2001404,lv = 20},[5] = {id = 2001405,lv = 20},[6] = {id = 2001406,lv = 20},[7] = {id = 2001407,lv = 20},[8] = {id = 2001408,lv = 20}},mon = {id = 204,desc = "daily_gold-3-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 3,exert = 11,suffer = 21}},
			shl = {cha = "daily_gold",id = 6030331,cardId = 1102999,lv = 20,bklv = 2,star = 3,ghost = 4,equip = {[1] = {id = 2101401,lv = 20},[2] = {id = 2101402,lv = 20},[3] = {id = 2101403,lv = 20},[4] = {id = 2101404,lv = 20},[5] = {id = 2101405,lv = 20},[6] = {id = 2101406,lv = 20},[7] = {id = 2101407,lv = 20},[8] = {id = 2101408,lv = 20}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 226,desc = "daily_gold-3-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 3,exert = 15,suffer = 25}}
		}
	},
	[60304] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6030410,cardId = 1101998,lv = 30,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 30},[2] = {id = 2001302,lv = 30},[3] = {id = 2001303,lv = 30},[4] = {id = 2001304,lv = 30},[5] = {id = 2001305,lv = 30},[6] = {id = 2001306,lv = 30},[7] = {id = 2001307,lv = 30},[8] = {id = 2001308,lv = 30}},mon = {id = 201,desc = "daily_gold-4-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_gold",id = 6030411,cardId = 1102998,lv = 30,bklv = 3,star = 1,ghost = 6,equip = {[1] = {id = 2101301,lv = 30},[2] = {id = 2101302,lv = 30},[3] = {id = 2101303,lv = 30},[4] = {id = 2101304,lv = 30},[5] = {id = 2101305,lv = 30},[6] = {id = 2101306,lv = 30},[7] = {id = 2101307,lv = 30},[8] = {id = 2101308,lv = 30}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 235,desc = "daily_gold-4-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6030420,cardId = 1101998,lv = 30,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 30},[2] = {id = 2001302,lv = 30},[3] = {id = 2001303,lv = 30},[4] = {id = 2001304,lv = 30},[5] = {id = 2001305,lv = 30},[6] = {id = 2001306,lv = 30},[7] = {id = 2001307,lv = 30},[8] = {id = 2001308,lv = 30}},mon = {id = 202,desc = "daily_gold-4-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_gold",id = 6030421,cardId = 1102998,lv = 30,bklv = 3,star = 1,ghost = 6,equip = {[1] = {id = 2101301,lv = 30},[2] = {id = 2101302,lv = 30},[3] = {id = 2101303,lv = 30},[4] = {id = 2101304,lv = 30},[5] = {id = 2101305,lv = 30},[6] = {id = 2101306,lv = 30},[7] = {id = 2101307,lv = 30},[8] = {id = 2101308,lv = 30}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 224,desc = "daily_gold-4-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6030430,cardId = 1101998,lv = 30,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 30},[2] = {id = 2001302,lv = 30},[3] = {id = 2001303,lv = 30},[4] = {id = 2001304,lv = 30},[5] = {id = 2001305,lv = 30},[6] = {id = 2001306,lv = 30},[7] = {id = 2001307,lv = 30},[8] = {id = 2001308,lv = 30}},mon = {id = 203,desc = "daily_gold-4-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_gold",id = 6030431,cardId = 1102998,lv = 30,bklv = 3,star = 1,ghost = 6,equip = {[1] = {id = 2101301,lv = 30},[2] = {id = 2101302,lv = 30},[3] = {id = 2101303,lv = 30},[4] = {id = 2101304,lv = 30},[5] = {id = 2101305,lv = 30},[6] = {id = 2101306,lv = 30},[7] = {id = 2101307,lv = 30},[8] = {id = 2101308,lv = 30}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 233,desc = "daily_gold-4-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		}
	},
	[60305] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6030510,cardId = 1101998,lv = 30,bklv = 4,star = 2,equip = {[1] = {id = 2001401,lv = 30},[2] = {id = 2001402,lv = 30},[3] = {id = 2001403,lv = 30},[4] = {id = 2001404,lv = 30},[5] = {id = 2001405,lv = 30},[6] = {id = 2001406,lv = 30},[7] = {id = 2001407,lv = 30},[8] = {id = 2001408,lv = 30}},mon = {id = 201,desc = "daily_gold-5-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 2,exert = 14,suffer = 21}},
			shl = {cha = "daily_gold",id = 6030511,cardId = 1102998,lv = 30,bklv = 3,star = 2,ghost = 6,equip = {[1] = {id = 2101401,lv = 30},[2] = {id = 2101402,lv = 30},[3] = {id = 2101403,lv = 30},[4] = {id = 2101404,lv = 30},[5] = {id = 2101405,lv = 30},[6] = {id = 2101406,lv = 30},[7] = {id = 2101407,lv = 30},[8] = {id = 2101408,lv = 30}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 222,desc = "daily_gold-5-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 2,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6030520,cardId = 1101997,lv = 30,bklv = 4,star = 1,equip = {[1] = {id = 2001401,lv = 30},[2] = {id = 2001402,lv = 30},[3] = {id = 2001403,lv = 30},[4] = {id = 2001404,lv = 30},[5] = {id = 2001405,lv = 30},[6] = {id = 2001406,lv = 30},[7] = {id = 2001407,lv = 30},[8] = {id = 2001408,lv = 30}},mon = {id = 214,desc = "daily_gold-5-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 2,exert = 14,suffer = 21}},
			shl = {cha = "daily_gold",id = 6030521,cardId = 1102997,lv = 30,bklv = 3,star = 1,ghost = 6,equip = {[1] = {id = 2101401,lv = 30},[2] = {id = 2101402,lv = 30},[3] = {id = 2101403,lv = 30},[4] = {id = 2101404,lv = 30},[5] = {id = 2101405,lv = 30},[6] = {id = 2101406,lv = 30},[7] = {id = 2101407,lv = 30},[8] = {id = 2101408,lv = 30}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 240,desc = "daily_gold-5-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 2,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6030530,cardId = 1101998,lv = 30,bklv = 4,star = 2,equip = {[1] = {id = 2001401,lv = 30},[2] = {id = 2001402,lv = 30},[3] = {id = 2001403,lv = 30},[4] = {id = 2001404,lv = 30},[5] = {id = 2001405,lv = 30},[6] = {id = 2001406,lv = 30},[7] = {id = 2001407,lv = 30},[8] = {id = 2001408,lv = 30}},mon = {id = 203,desc = "daily_gold-5-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 2,exert = 14,suffer = 21}},
			shl = {cha = "daily_gold",id = 6030531,cardId = 1102998,lv = 30,bklv = 3,star = 2,ghost = 6,equip = {[1] = {id = 2101401,lv = 30},[2] = {id = 2101402,lv = 30},[3] = {id = 2101403,lv = 30},[4] = {id = 2101404,lv = 30},[5] = {id = 2101405,lv = 30},[6] = {id = 2101406,lv = 30},[7] = {id = 2101407,lv = 30},[8] = {id = 2101408,lv = 30}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 225,desc = "daily_gold-5-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 2,exert = 18,suffer = 25}}
		}
	},
	[60306] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6030610,cardId = 1101998,lv = 30,bklv = 4,star = 3,equip = {[1] = {id = 2001431,lv = 30},[2] = {id = 2001432,lv = 30},[3] = {id = 2001433,lv = 30},[4] = {id = 2001434,lv = 30},[5] = {id = 2001435,lv = 30},[6] = {id = 2001436,lv = 30},[7] = {id = 2001437,lv = 30},[8] = {id = 2001438,lv = 30}},mon = {id = 207,desc = "daily_gold-6-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 3,exert = 11,suffer = 21}},
			shl = {cha = "daily_gold",id = 6030611,cardId = 1102998,lv = 30,bklv = 3,star = 3,ghost = 6,equip = {[1] = {id = 2101431,lv = 30},[2] = {id = 2101432,lv = 30},[3] = {id = 2101433,lv = 30},[4] = {id = 2101434,lv = 30},[5] = {id = 2101435,lv = 30},[6] = {id = 2101436,lv = 30},[7] = {id = 2101437,lv = 30},[8] = {id = 2101438,lv = 30}},exWeapon = {[1] = 3,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 232,desc = "daily_gold-6-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 3,exert = 15,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6030620,cardId = 1101997,lv = 30,bklv = 4,star = 3,equip = {[1] = {id = 2001431,lv = 30},[2] = {id = 2001432,lv = 30},[3] = {id = 2001433,lv = 30},[4] = {id = 2001434,lv = 30},[5] = {id = 2001435,lv = 30},[6] = {id = 2001436,lv = 30},[7] = {id = 2001437,lv = 30},[8] = {id = 2001438,lv = 30}},mon = {id = 205,desc = "daily_gold-6-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 3,exert = 11,suffer = 21}},
			shl = {cha = "daily_gold",id = 6030621,cardId = 1102997,lv = 30,bklv = 3,star = 3,ghost = 6,equip = {[1] = {id = 2101431,lv = 30},[2] = {id = 2101432,lv = 30},[3] = {id = 2101433,lv = 30},[4] = {id = 2101434,lv = 30},[5] = {id = 2101435,lv = 30},[6] = {id = 2101436,lv = 30},[7] = {id = 2101437,lv = 30},[8] = {id = 2101438,lv = 30}},exWeapon = {[1] = 3,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 221,desc = "daily_gold-6-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 3,exert = 15,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6030630,cardId = 1101998,lv = 30,bklv = 4,star = 3,equip = {[1] = {id = 2001431,lv = 30},[2] = {id = 2001432,lv = 30},[3] = {id = 2001433,lv = 30},[4] = {id = 2001434,lv = 30},[5] = {id = 2001435,lv = 30},[6] = {id = 2001436,lv = 30},[7] = {id = 2001437,lv = 30},[8] = {id = 2001438,lv = 30}},mon = {id = 204,desc = "daily_gold-6-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 3,exert = 11,suffer = 21}},
			shl = {cha = "daily_gold",id = 6030631,cardId = 1102998,lv = 30,bklv = 3,star = 3,ghost = 6,equip = {[1] = {id = 2101431,lv = 30},[2] = {id = 2101432,lv = 30},[3] = {id = 2101433,lv = 30},[4] = {id = 2101434,lv = 30},[5] = {id = 2101435,lv = 30},[6] = {id = 2101436,lv = 30},[7] = {id = 2101437,lv = 30},[8] = {id = 2101438,lv = 30}},exWeapon = {[1] = 3,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 226,desc = "daily_gold-6-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 3,exert = 15,suffer = 25}}
		}
	},
	[60307] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6030710,cardId = 1101997,lv = 45,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 40},[2] = {id = 2001302,lv = 40},[3] = {id = 2001303,lv = 40},[4] = {id = 2001304,lv = 40},[5] = {id = 2001305,lv = 40},[6] = {id = 2001306,lv = 40},[7] = {id = 2001307,lv = 40},[8] = {id = 2001308,lv = 40}},mon = {id = 201,desc = "daily_gold-7-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 2,exert = 21,suffer = 21}},
			shl = {cha = "daily_gold",id = 6030711,cardId = 1102997,lv = 45,bklv = 5,star = 1,ghost = 8,equip = {[1] = {id = 2102301,lv = 40},[2] = {id = 2102302,lv = 40},[3] = {id = 2102303,lv = 40},[4] = {id = 2102304,lv = 40},[5] = {id = 2102305,lv = 40},[6] = {id = 2102306,lv = 40},[7] = {id = 2102307,lv = 40},[8] = {id = 2102308,lv = 40}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 235,desc = "daily_gold-7-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 2,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6030720,cardId = 1101997,lv = 45,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 40},[2] = {id = 2001302,lv = 40},[3] = {id = 2001303,lv = 40},[4] = {id = 2001304,lv = 40},[5] = {id = 2001305,lv = 40},[6] = {id = 2001306,lv = 40},[7] = {id = 2001307,lv = 40},[8] = {id = 2001308,lv = 40}},mon = {id = 202,desc = "daily_gold-7-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 2,exert = 21,suffer = 21}},
			shl = {cha = "daily_gold",id = 6030721,cardId = 1102997,lv = 45,bklv = 5,star = 1,ghost = 8,equip = {[1] = {id = 2102301,lv = 40},[2] = {id = 2102302,lv = 40},[3] = {id = 2102303,lv = 40},[4] = {id = 2102304,lv = 40},[5] = {id = 2102305,lv = 40},[6] = {id = 2102306,lv = 40},[7] = {id = 2102307,lv = 40},[8] = {id = 2102308,lv = 40}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 224,desc = "daily_gold-7-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 2,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6030730,cardId = 1101997,lv = 45,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 40},[2] = {id = 2001302,lv = 40},[3] = {id = 2001303,lv = 40},[4] = {id = 2001304,lv = 40},[5] = {id = 2001305,lv = 40},[6] = {id = 2001306,lv = 40},[7] = {id = 2001307,lv = 40},[8] = {id = 2001308,lv = 40}},mon = {id = 203,desc = "daily_gold-7-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 2,exert = 21,suffer = 21}},
			shl = {cha = "daily_gold",id = 6030731,cardId = 1102997,lv = 45,bklv = 5,star = 1,ghost = 8,equip = {[1] = {id = 2102301,lv = 40},[2] = {id = 2102302,lv = 40},[3] = {id = 2102303,lv = 40},[4] = {id = 2102304,lv = 40},[5] = {id = 2102305,lv = 40},[6] = {id = 2102306,lv = 40},[7] = {id = 2102307,lv = 40},[8] = {id = 2102308,lv = 40}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 233,desc = "daily_gold-7-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 2,exert = 25,suffer = 25}}
		}
	},
	[60308] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6030810,cardId = 1101997,lv = 45,bklv = 5,star = 2,equip = {[1] = {id = 2001401,lv = 40},[2] = {id = 2001402,lv = 40},[3] = {id = 2001403,lv = 40},[4] = {id = 2001404,lv = 40},[5] = {id = 2001405,lv = 40},[6] = {id = 2001406,lv = 40},[7] = {id = 2001407,lv = 40},[8] = {id = 2001408,lv = 40}},mon = {id = 201,desc = "daily_gold-8-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 3,exert = 14,suffer = 21}},
			shl = {cha = "daily_gold",id = 6030811,cardId = 1102997,lv = 45,bklv = 5,star = 2,ghost = 8,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 4,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 222,desc = "daily_gold-8-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 3,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6030820,cardId = 1101997,lv = 45,bklv = 5,star = 1,equip = {[1] = {id = 2001401,lv = 40},[2] = {id = 2001402,lv = 40},[3] = {id = 2001403,lv = 40},[4] = {id = 2001404,lv = 40},[5] = {id = 2001405,lv = 40},[6] = {id = 2001406,lv = 40},[7] = {id = 2001407,lv = 40},[8] = {id = 2001408,lv = 40}},mon = {id = 214,desc = "daily_gold-8-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 3,exert = 14,suffer = 21}},
			shl = {cha = "daily_gold",id = 6030821,cardId = 1102996,lv = 45,bklv = 5,star = 1,ghost = 8,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 4,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 240,desc = "daily_gold-8-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 3,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6030830,cardId = 1101997,lv = 45,bklv = 5,star = 2,equip = {[1] = {id = 2001401,lv = 40},[2] = {id = 2001402,lv = 40},[3] = {id = 2001403,lv = 40},[4] = {id = 2001404,lv = 40},[5] = {id = 2001405,lv = 40},[6] = {id = 2001406,lv = 40},[7] = {id = 2001407,lv = 40},[8] = {id = 2001408,lv = 40}},mon = {id = 203,desc = "daily_gold-8-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 3,exert = 14,suffer = 21}},
			shl = {cha = "daily_gold",id = 6030831,cardId = 1102997,lv = 45,bklv = 5,star = 2,ghost = 8,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 4,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 225,desc = "daily_gold-8-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 3,exert = 18,suffer = 25}}
		}
	},
	[60309] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6030910,cardId = 1101997,lv = 45,bklv = 5,star = 3,equip = {[1] = {id = 2001431,lv = 40},[2] = {id = 2001432,lv = 40},[3] = {id = 2001433,lv = 40},[4] = {id = 2001434,lv = 40},[5] = {id = 2001435,lv = 40},[6] = {id = 2001436,lv = 40},[7] = {id = 2001437,lv = 40},[8] = {id = 2001438,lv = 40}},mon = {id = 207,desc = "daily_gold-9-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 4,exert = 11,suffer = 21}},
			shl = {cha = "daily_gold",id = 6030911,cardId = 1102997,lv = 45,bklv = 5,star = 3,ghost = 8,equip = {[1] = {id = 2102411,lv = 40},[2] = {id = 2102412,lv = 40},[3] = {id = 2102413,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102415,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102417,lv = 40},[8] = {id = 2102418,lv = 40}},exWeapon = {[1] = 5,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 232,desc = "daily_gold-9-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 4,exert = 15,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6030920,cardId = 1101997,lv = 45,bklv = 5,star = 3,equip = {[1] = {id = 2001431,lv = 40},[2] = {id = 2001432,lv = 40},[3] = {id = 2001433,lv = 40},[4] = {id = 2001434,lv = 40},[5] = {id = 2001435,lv = 40},[6] = {id = 2001436,lv = 40},[7] = {id = 2001437,lv = 40},[8] = {id = 2001438,lv = 40}},mon = {id = 205,desc = "daily_gold-9-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 4,exert = 11,suffer = 21}},
			shl = {cha = "daily_gold",id = 6030921,cardId = 1102996,lv = 45,bklv = 5,star = 3,ghost = 8,equip = {[1] = {id = 2102411,lv = 40},[2] = {id = 2102412,lv = 40},[3] = {id = 2102413,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102415,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102417,lv = 40},[8] = {id = 2102418,lv = 40}},exWeapon = {[1] = 5,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 221,desc = "daily_gold-9-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 4,exert = 15,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6030930,cardId = 1101997,lv = 45,bklv = 5,star = 3,equip = {[1] = {id = 2001431,lv = 40},[2] = {id = 2001432,lv = 40},[3] = {id = 2001433,lv = 40},[4] = {id = 2001434,lv = 40},[5] = {id = 2001435,lv = 40},[6] = {id = 2001436,lv = 40},[7] = {id = 2001437,lv = 40},[8] = {id = 2001438,lv = 40}},mon = {id = 204,desc = "daily_gold-9-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 4,exert = 11,suffer = 21}},
			shl = {cha = "daily_gold",id = 6030931,cardId = 1102997,lv = 45,bklv = 5,star = 3,ghost = 8,equip = {[1] = {id = 2102411,lv = 40},[2] = {id = 2102412,lv = 40},[3] = {id = 2102413,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102415,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102417,lv = 40},[8] = {id = 2102418,lv = 40}},exWeapon = {[1] = 5,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 226,desc = "daily_gold-9-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 4,exert = 15,suffer = 25}}
		}
	},
	[60310] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6031010,cardId = 1101999,lv = 55,bklv = 6,star = 1,equip = {[1] = {id = 2002301,lv = 55},[2] = {id = 2002302,lv = 55},[3] = {id = 2002303,lv = 55},[4] = {id = 2002304,lv = 55},[5] = {id = 2002305,lv = 55},[6] = {id = 2002306,lv = 55},[7] = {id = 2002307,lv = 55},[8] = {id = 2002308,lv = 55}},mon = {id = 201,desc = "daily_gold-10-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 2,exert = 21,suffer = 21}},
			shl = {cha = "daily_gold",id = 6031011,cardId = 1102999,lv = 55,bklv = 7,star = 1,ghost = 14,equip = {[1] = {id = 2102301,lv = 55},[2] = {id = 2102302,lv = 55},[3] = {id = 2102303,lv = 55},[4] = {id = 2102304,lv = 55},[5] = {id = 2102305,lv = 55},[6] = {id = 2102306,lv = 55},[7] = {id = 2102307,lv = 55},[8] = {id = 2102308,lv = 55}},exWeapon = {[1] = 5,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 235,desc = "daily_gold-10-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 2,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6031020,cardId = 1101999,lv = 55,bklv = 6,star = 1,equip = {[1] = {id = 2002301,lv = 55},[2] = {id = 2002302,lv = 55},[3] = {id = 2002303,lv = 55},[4] = {id = 2002304,lv = 55},[5] = {id = 2002305,lv = 55},[6] = {id = 2002306,lv = 55},[7] = {id = 2002307,lv = 55},[8] = {id = 2002308,lv = 55}},mon = {id = 202,desc = "daily_gold-10-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 2,exert = 21,suffer = 21}},
			shl = {cha = "daily_gold",id = 6031021,cardId = 1102999,lv = 55,bklv = 7,star = 2,ghost = 14,equip = {[1] = {id = 2102301,lv = 55},[2] = {id = 2102302,lv = 55},[3] = {id = 2102303,lv = 55},[4] = {id = 2102304,lv = 55},[5] = {id = 2102305,lv = 55},[6] = {id = 2102306,lv = 55},[7] = {id = 2102307,lv = 55},[8] = {id = 2102308,lv = 55}},exWeapon = {[1] = 5,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 224,desc = "daily_gold-10-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 2,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6031030,cardId = 1101999,lv = 55,bklv = 6,star = 1,equip = {[1] = {id = 2002301,lv = 55},[2] = {id = 2002302,lv = 55},[3] = {id = 2002303,lv = 55},[4] = {id = 2002304,lv = 55},[5] = {id = 2002305,lv = 55},[6] = {id = 2002306,lv = 55},[7] = {id = 2002307,lv = 55},[8] = {id = 2002308,lv = 55}},mon = {id = 203,desc = "daily_gold-10-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 2,exert = 21,suffer = 21}},
			shl = {cha = "daily_gold",id = 6031031,cardId = 1102999,lv = 55,bklv = 7,star = 1,ghost = 14,equip = {[1] = {id = 2102301,lv = 55},[2] = {id = 2102302,lv = 55},[3] = {id = 2102303,lv = 55},[4] = {id = 2102304,lv = 55},[5] = {id = 2102305,lv = 55},[6] = {id = 2102306,lv = 55},[7] = {id = 2102307,lv = 55},[8] = {id = 2102308,lv = 55}},exWeapon = {[1] = 5,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 233,desc = "daily_gold-10-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 2,exert = 25,suffer = 25}}
		}
	},
	[60311] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6031110,cardId = 1101999,lv = 55,bklv = 6,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}},mon = {id = 201,desc = "daily_gold-11-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 3,exert = 14,suffer = 21}},
			shl = {cha = "daily_gold",id = 6031111,cardId = 1102999,lv = 55,bklv = 7,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 222,desc = "daily_gold-11-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 3,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6031120,cardId = 1101998,lv = 55,bklv = 6,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}},mon = {id = 214,desc = "daily_gold-11-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 3,exert = 14,suffer = 21}},
			shl = {cha = "daily_gold",id = 6031121,cardId = 1102998,lv = 55,bklv = 7,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 240,desc = "daily_gold-11-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 3,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6031130,cardId = 1101999,lv = 55,bklv = 6,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}},mon = {id = 203,desc = "daily_gold-11-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 3,exert = 14,suffer = 21}},
			shl = {cha = "daily_gold",id = 6031131,cardId = 1102999,lv = 55,bklv = 7,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 225,desc = "daily_gold-11-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 3,exert = 18,suffer = 25}}
		}
	},
	[60312] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6031210,cardId = 1101999,lv = 55,bklv = 6,star = 3,equip = {[1] = {id = 2002411,lv = 55},[2] = {id = 2002412,lv = 55},[3] = {id = 2002413,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002415,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002417,lv = 55},[8] = {id = 2002418,lv = 55}},mon = {id = 207,desc = "daily_gold-12-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 4,exert = 11,suffer = 21}},
			shl = {cha = "daily_gold",id = 6031211,cardId = 1102999,lv = 55,bklv = 7,star = 3,ghost = 14,equip = {[1] = {id = 2102411,lv = 55},[2] = {id = 2102412,lv = 55},[3] = {id = 2102413,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102415,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102417,lv = 55},[8] = {id = 2102418,lv = 55}},exWeapon = {[1] = 5,[2] = 2,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 232,desc = "daily_gold-12-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 4,exert = 15,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6031220,cardId = 1101998,lv = 55,bklv = 6,star = 4,equip = {[1] = {id = 2002411,lv = 55},[2] = {id = 2002412,lv = 55},[3] = {id = 2002413,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002415,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002417,lv = 55},[8] = {id = 2002418,lv = 55}},mon = {id = 205,desc = "daily_gold-12-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 4,exert = 11,suffer = 21}},
			shl = {cha = "daily_gold",id = 6031221,cardId = 1102998,lv = 55,bklv = 7,star = 4,ghost = 14,equip = {[1] = {id = 2102411,lv = 55},[2] = {id = 2102412,lv = 55},[3] = {id = 2102413,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102415,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102417,lv = 55},[8] = {id = 2102418,lv = 55}},exWeapon = {[1] = 5,[2] = 2,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 221,desc = "daily_gold-12-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 4,exert = 15,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6031230,cardId = 1101999,lv = 55,bklv = 6,star = 3,equip = {[1] = {id = 2002411,lv = 55},[2] = {id = 2002412,lv = 55},[3] = {id = 2002413,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002415,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002417,lv = 55},[8] = {id = 2002418,lv = 55}},mon = {id = 204,desc = "daily_gold-12-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 4,exert = 11,suffer = 21}},
			shl = {cha = "daily_gold",id = 6031231,cardId = 1102999,lv = 55,bklv = 7,star = 3,ghost = 14,equip = {[1] = {id = 2102411,lv = 55},[2] = {id = 2102412,lv = 55},[3] = {id = 2102413,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102415,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102417,lv = 55},[8] = {id = 2102418,lv = 55}},exWeapon = {[1] = 5,[2] = 2,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 226,desc = "daily_gold-12-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 4,exert = 15,suffer = 25}}
		}
	},
	[60313] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6031310,cardId = 1101998,lv = 72,bklv = 9,star = 1,equip = {[1] = {id = 2003301,lv = 70},[2] = {id = 2003302,lv = 70},[3] = {id = 2003303,lv = 70},[4] = {id = 2003304,lv = 70},[5] = {id = 2003305,lv = 70},[6] = {id = 2003306,lv = 70},[7] = {id = 2003307,lv = 70},[8] = {id = 2003308,lv = 70}},mon = {id = 201,desc = "daily_gold-13-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 2,exert = 21,suffer = 21}},
			shl = {cha = "daily_gold",id = 6031311,cardId = 1102998,lv = 72,bklv = 9,star = 1,ghost = 20,equip = {[1] = {id = 2103301,lv = 70},[2] = {id = 2103302,lv = 70},[3] = {id = 2103303,lv = 70},[4] = {id = 2103304,lv = 70},[5] = {id = 2103305,lv = 70},[6] = {id = 2103306,lv = 70},[7] = {id = 2103307,lv = 70},[8] = {id = 2103308,lv = 70}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 235,desc = "daily_gold-13-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 2,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6031320,cardId = 1101998,lv = 72,bklv = 9,star = 1,equip = {[1] = {id = 2003301,lv = 70},[2] = {id = 2003302,lv = 70},[3] = {id = 2003303,lv = 70},[4] = {id = 2003304,lv = 70},[5] = {id = 2003305,lv = 70},[6] = {id = 2003306,lv = 70},[7] = {id = 2003307,lv = 70},[8] = {id = 2003308,lv = 70}},mon = {id = 202,desc = "daily_gold-13-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 2,exert = 21,suffer = 21}},
			shl = {cha = "daily_gold",id = 6031321,cardId = 1102998,lv = 72,bklv = 9,star = 2,ghost = 20,equip = {[1] = {id = 2103301,lv = 70},[2] = {id = 2103302,lv = 70},[3] = {id = 2103303,lv = 70},[4] = {id = 2103304,lv = 70},[5] = {id = 2103305,lv = 70},[6] = {id = 2103306,lv = 70},[7] = {id = 2103307,lv = 70},[8] = {id = 2103308,lv = 70}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 224,desc = "daily_gold-13-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 2,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6031330,cardId = 1101998,lv = 72,bklv = 9,star = 1,equip = {[1] = {id = 2003301,lv = 70},[2] = {id = 2003302,lv = 70},[3] = {id = 2003303,lv = 70},[4] = {id = 2003304,lv = 70},[5] = {id = 2003305,lv = 70},[6] = {id = 2003306,lv = 70},[7] = {id = 2003307,lv = 70},[8] = {id = 2003308,lv = 70}},mon = {id = 203,desc = "daily_gold-13-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 2,exert = 21,suffer = 21}},
			shl = {cha = "daily_gold",id = 6031331,cardId = 1102998,lv = 72,bklv = 9,star = 1,ghost = 20,equip = {[1] = {id = 2103301,lv = 70},[2] = {id = 2103302,lv = 70},[3] = {id = 2103303,lv = 70},[4] = {id = 2103304,lv = 70},[5] = {id = 2103305,lv = 70},[6] = {id = 2103306,lv = 70},[7] = {id = 2103307,lv = 70},[8] = {id = 2103308,lv = 70}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 233,desc = "daily_gold-13-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 2,exert = 25,suffer = 25}}
		}
	},
	[60314] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6031410,cardId = 1101998,lv = 72,bklv = 9,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}},mon = {id = 201,desc = "daily_gold-14-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 3,exert = 14,suffer = 21}},
			shl = {cha = "daily_gold",id = 6031411,cardId = 1102998,lv = 72,bklv = 9,star = 2,ghost = 20,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 3,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 222,desc = "daily_gold-14-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 3,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6031420,cardId = 1101997,lv = 72,bklv = 9,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}},mon = {id = 214,desc = "daily_gold-14-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 3,exert = 14,suffer = 21}},
			shl = {cha = "daily_gold",id = 6031421,cardId = 1102997,lv = 72,bklv = 9,star = 2,ghost = 20,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 3,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 240,desc = "daily_gold-14-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 3,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6031430,cardId = 1101998,lv = 72,bklv = 9,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}},mon = {id = 203,desc = "daily_gold-14-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 3,exert = 14,suffer = 21}},
			shl = {cha = "daily_gold",id = 6031431,cardId = 1102998,lv = 72,bklv = 9,star = 2,ghost = 20,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 3,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 225,desc = "daily_gold-14-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 3,exert = 18,suffer = 25}}
		}
	},
	[60315] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6031510,cardId = 1101998,lv = 72,bklv = 9,star = 3,equip = {[1] = {id = 2003421,lv = 70},[2] = {id = 2003422,lv = 70},[3] = {id = 2003423,lv = 70},[4] = {id = 2003424,lv = 70},[5] = {id = 2003425,lv = 70},[6] = {id = 2003426,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}},mon = {id = 207,desc = "daily_gold-15-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 4,exert = 11,suffer = 21}},
			shl = {cha = "daily_gold",id = 6031511,cardId = 1102998,lv = 72,bklv = 9,star = 3,ghost = 20,equip = {[1] = {id = 2103421,lv = 70},[2] = {id = 2103422,lv = 70},[3] = {id = 2103423,lv = 70},[4] = {id = 2103424,lv = 70},[5] = {id = 2103425,lv = 70},[6] = {id = 2103426,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 232,desc = "daily_gold-15-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 4,exert = 15,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6031520,cardId = 1101997,lv = 72,bklv = 9,star = 4,equip = {[1] = {id = 2003421,lv = 70},[2] = {id = 2003422,lv = 70},[3] = {id = 2003423,lv = 70},[4] = {id = 2003424,lv = 70},[5] = {id = 2003425,lv = 70},[6] = {id = 2003426,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}},mon = {id = 205,desc = "daily_gold-15-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 4,exert = 11,suffer = 21}},
			shl = {cha = "daily_gold",id = 6031521,cardId = 1102997,lv = 72,bklv = 9,star = 4,ghost = 20,equip = {[1] = {id = 2103421,lv = 70},[2] = {id = 2103422,lv = 70},[3] = {id = 2103423,lv = 70},[4] = {id = 2103424,lv = 70},[5] = {id = 2103425,lv = 70},[6] = {id = 2103426,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 221,desc = "daily_gold-15-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 4,exert = 15,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6031530,cardId = 1101998,lv = 72,bklv = 9,star = 3,equip = {[1] = {id = 2003421,lv = 70},[2] = {id = 2003422,lv = 70},[3] = {id = 2003423,lv = 70},[4] = {id = 2003424,lv = 70},[5] = {id = 2003425,lv = 70},[6] = {id = 2003426,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}},mon = {id = 204,desc = "daily_gold-15-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 4,exert = 11,suffer = 21}},
			shl = {cha = "daily_gold",id = 6031531,cardId = 1102998,lv = 72,bklv = 9,star = 3,ghost = 20,equip = {[1] = {id = 2103421,lv = 70},[2] = {id = 2103422,lv = 70},[3] = {id = 2103423,lv = 70},[4] = {id = 2103424,lv = 70},[5] = {id = 2103425,lv = 70},[6] = {id = 2103426,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 226,desc = "daily_gold-15-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 4,exert = 15,suffer = 25}}
		}
	},
	[60316] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6031610,cardId = 1101997,lv = 80,bklv = 10,star = 1,equip = {[1] = {id = 2004301,lv = 80},[2] = {id = 2004302,lv = 80},[3] = {id = 2004303,lv = 80},[4] = {id = 2004304,lv = 80},[5] = {id = 2004305,lv = 80},[6] = {id = 2004306,lv = 80},[7] = {id = 2004307,lv = 80},[8] = {id = 2004308,lv = 80}},mon = {id = 201,desc = "daily_gold-16-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 3,exert = 21,suffer = 21}},
			shl = {cha = "daily_gold",id = 6031611,cardId = 1102997,lv = 80,bklv = 10,star = 1,ghost = 24,equip = {[1] = {id = 2104301,lv = 80},[2] = {id = 2104302,lv = 80},[3] = {id = 2104303,lv = 80},[4] = {id = 2104304,lv = 80},[5] = {id = 2104305,lv = 80},[6] = {id = 2104306,lv = 80},[7] = {id = 2104307,lv = 80},[8] = {id = 2104308,lv = 80}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 235,desc = "daily_gold-16-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 3,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6031620,cardId = 1101997,lv = 80,bklv = 10,star = 1,equip = {[1] = {id = 2004301,lv = 80},[2] = {id = 2004302,lv = 80},[3] = {id = 2004303,lv = 80},[4] = {id = 2004304,lv = 80},[5] = {id = 2004305,lv = 80},[6] = {id = 2004306,lv = 80},[7] = {id = 2004307,lv = 80},[8] = {id = 2004308,lv = 80}},mon = {id = 202,desc = "daily_gold-16-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 3,exert = 21,suffer = 21}},
			shl = {cha = "daily_gold",id = 6031621,cardId = 1102997,lv = 80,bklv = 10,star = 2,ghost = 24,equip = {[1] = {id = 2104301,lv = 80},[2] = {id = 2104302,lv = 80},[3] = {id = 2104303,lv = 80},[4] = {id = 2104304,lv = 80},[5] = {id = 2104305,lv = 80},[6] = {id = 2104306,lv = 80},[7] = {id = 2104307,lv = 80},[8] = {id = 2104308,lv = 80}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 224,desc = "daily_gold-16-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 3,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6031630,cardId = 1101997,lv = 80,bklv = 10,star = 1,equip = {[1] = {id = 2004301,lv = 80},[2] = {id = 2004302,lv = 80},[3] = {id = 2004303,lv = 80},[4] = {id = 2004304,lv = 80},[5] = {id = 2004305,lv = 80},[6] = {id = 2004306,lv = 80},[7] = {id = 2004307,lv = 80},[8] = {id = 2004308,lv = 80}},mon = {id = 203,desc = "daily_gold-16-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 3,exert = 21,suffer = 21}},
			shl = {cha = "daily_gold",id = 6031631,cardId = 1102997,lv = 80,bklv = 10,star = 1,ghost = 24,equip = {[1] = {id = 2104301,lv = 80},[2] = {id = 2104302,lv = 80},[3] = {id = 2104303,lv = 80},[4] = {id = 2104304,lv = 80},[5] = {id = 2104305,lv = 80},[6] = {id = 2104306,lv = 80},[7] = {id = 2104307,lv = 80},[8] = {id = 2104308,lv = 80}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 233,desc = "daily_gold-16-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 3,exert = 25,suffer = 25}}
		}
	},
	[60317] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6031710,cardId = 1101997,lv = 80,bklv = 10,star = 2,equip = {[1] = {id = 2004401,lv = 80},[2] = {id = 2004402,lv = 80},[3] = {id = 2004403,lv = 80},[4] = {id = 2004404,lv = 80},[5] = {id = 2004405,lv = 80},[6] = {id = 2004406,lv = 80},[7] = {id = 2004407,lv = 80},[8] = {id = 2004408,lv = 80}},mon = {id = 201,desc = "daily_gold-17-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "daily_gold",id = 6031711,cardId = 1102997,lv = 80,bklv = 10,star = 2,ghost = 24,equip = {[1] = {id = 2104401,lv = 80},[2] = {id = 2104402,lv = 80},[3] = {id = 2104403,lv = 80},[4] = {id = 2104404,lv = 80},[5] = {id = 2104405,lv = 80},[6] = {id = 2104406,lv = 80},[7] = {id = 2104407,lv = 80},[8] = {id = 2104408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 222,desc = "daily_gold-17-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6031720,cardId = 1101997,lv = 80,bklv = 10,star = 2,equip = {[1] = {id = 2004401,lv = 80},[2] = {id = 2004402,lv = 80},[3] = {id = 2004403,lv = 80},[4] = {id = 2004404,lv = 80},[5] = {id = 2004405,lv = 80},[6] = {id = 2004406,lv = 80},[7] = {id = 2004407,lv = 80},[8] = {id = 2004408,lv = 80}},mon = {id = 214,desc = "daily_gold-17-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "daily_gold",id = 6031721,cardId = 1102996,lv = 80,bklv = 10,star = 2,ghost = 24,equip = {[1] = {id = 2104401,lv = 80},[2] = {id = 2104402,lv = 80},[3] = {id = 2104403,lv = 80},[4] = {id = 2104404,lv = 80},[5] = {id = 2104405,lv = 80},[6] = {id = 2104406,lv = 80},[7] = {id = 2104407,lv = 80},[8] = {id = 2104408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 240,desc = "daily_gold-17-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6031730,cardId = 1101997,lv = 80,bklv = 10,star = 2,equip = {[1] = {id = 2004401,lv = 80},[2] = {id = 2004402,lv = 80},[3] = {id = 2004403,lv = 80},[4] = {id = 2004404,lv = 80},[5] = {id = 2004405,lv = 80},[6] = {id = 2004406,lv = 80},[7] = {id = 2004407,lv = 80},[8] = {id = 2004408,lv = 80}},mon = {id = 203,desc = "daily_gold-17-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "daily_gold",id = 6031731,cardId = 1102997,lv = 80,bklv = 10,star = 2,ghost = 24,equip = {[1] = {id = 2104401,lv = 80},[2] = {id = 2104402,lv = 80},[3] = {id = 2104403,lv = 80},[4] = {id = 2104404,lv = 80},[5] = {id = 2104405,lv = 80},[6] = {id = 2104406,lv = 80},[7] = {id = 2104407,lv = 80},[8] = {id = 2104408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 225,desc = "daily_gold-17-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		}
	},
	[60318] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6031810,cardId = 1101997,lv = 80,bklv = 10,star = 3,equip = {[1] = {id = 2004421,lv = 80},[2] = {id = 2004422,lv = 80},[3] = {id = 2004423,lv = 80},[4] = {id = 2004404,lv = 80},[5] = {id = 2004425,lv = 80},[6] = {id = 2004406,lv = 80},[7] = {id = 2004427,lv = 80},[8] = {id = 2004428,lv = 80}},mon = {id = 207,desc = "daily_gold-18-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 5,exert = 11,suffer = 21}},
			shl = {cha = "daily_gold",id = 6031811,cardId = 1102997,lv = 80,bklv = 10,star = 3,ghost = 24,equip = {[1] = {id = 2104421,lv = 80},[2] = {id = 2104422,lv = 80},[3] = {id = 2104423,lv = 80},[4] = {id = 2104404,lv = 80},[5] = {id = 2104425,lv = 80},[6] = {id = 2104406,lv = 80},[7] = {id = 2104427,lv = 80},[8] = {id = 2104428,lv = 80}},exWeapon = {[1] = 7,[2] = 6,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 232,desc = "daily_gold-18-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 5,exert = 15,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6031820,cardId = 1101997,lv = 80,bklv = 10,star = 4,equip = {[1] = {id = 2004421,lv = 80},[2] = {id = 2004422,lv = 80},[3] = {id = 2004423,lv = 80},[4] = {id = 2004404,lv = 80},[5] = {id = 2004425,lv = 80},[6] = {id = 2004406,lv = 80},[7] = {id = 2004427,lv = 80},[8] = {id = 2004428,lv = 80}},mon = {id = 205,desc = "daily_gold-18-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 5,exert = 11,suffer = 21}},
			shl = {cha = "daily_gold",id = 6031821,cardId = 1102996,lv = 80,bklv = 10,star = 4,ghost = 24,equip = {[1] = {id = 2104421,lv = 80},[2] = {id = 2104422,lv = 80},[3] = {id = 2104423,lv = 80},[4] = {id = 2104404,lv = 80},[5] = {id = 2104425,lv = 80},[6] = {id = 2104406,lv = 80},[7] = {id = 2104427,lv = 80},[8] = {id = 2104428,lv = 80}},exWeapon = {[1] = 7,[2] = 6,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 221,desc = "daily_gold-18-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 5,exert = 15,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6031830,cardId = 1101997,lv = 80,bklv = 10,star = 3,equip = {[1] = {id = 2004421,lv = 80},[2] = {id = 2004422,lv = 80},[3] = {id = 2004423,lv = 80},[4] = {id = 2004404,lv = 80},[5] = {id = 2004425,lv = 80},[6] = {id = 2004406,lv = 80},[7] = {id = 2004427,lv = 80},[8] = {id = 2004428,lv = 80}},mon = {id = 204,desc = "daily_gold-18-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 5,exert = 11,suffer = 21}},
			shl = {cha = "daily_gold",id = 6031831,cardId = 1102997,lv = 80,bklv = 10,star = 3,ghost = 24,equip = {[1] = {id = 2104421,lv = 80},[2] = {id = 2104422,lv = 80},[3] = {id = 2104423,lv = 80},[4] = {id = 2104404,lv = 80},[5] = {id = 2104425,lv = 80},[6] = {id = 2104406,lv = 80},[7] = {id = 2104427,lv = 80},[8] = {id = 2104428,lv = 80}},exWeapon = {[1] = 7,[2] = 6,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 226,desc = "daily_gold-18-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 5,exert = 15,suffer = 25}}
		}
	},
	[60319] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6031910,cardId = 1101999,lv = 90,bklv = 12,star = 2,equip = {[1] = {id = 2005301,lv = 90},[2] = {id = 2005302,lv = 90},[3] = {id = 2005303,lv = 90},[4] = {id = 2005304,lv = 90},[5] = {id = 2005305,lv = 90},[6] = {id = 2005306,lv = 90},[7] = {id = 2005307,lv = 90},[8] = {id = 2005308,lv = 90}},mon = {id = 201,desc = "daily_gold-19-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 3,exert = 21,suffer = 21}},
			shl = {cha = "daily_gold",id = 6031911,cardId = 1102999,lv = 90,bklv = 11,star = 2,ghost = 28,equip = {[1] = {id = 2105301,lv = 90},[2] = {id = 2105302,lv = 90},[3] = {id = 2105303,lv = 90},[4] = {id = 2105304,lv = 90},[5] = {id = 2105305,lv = 90},[6] = {id = 2105306,lv = 90},[7] = {id = 2105307,lv = 90},[8] = {id = 2105308,lv = 90}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 235,desc = "daily_gold-19-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 3,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6031920,cardId = 1101999,lv = 90,bklv = 12,star = 2,equip = {[1] = {id = 2005301,lv = 90},[2] = {id = 2005302,lv = 90},[3] = {id = 2005303,lv = 90},[4] = {id = 2005304,lv = 90},[5] = {id = 2005305,lv = 90},[6] = {id = 2005306,lv = 90},[7] = {id = 2005307,lv = 90},[8] = {id = 2005308,lv = 90}},mon = {id = 202,desc = "daily_gold-19-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 3,exert = 21,suffer = 21}},
			shl = {cha = "daily_gold",id = 6031921,cardId = 1102999,lv = 90,bklv = 11,star = 2,ghost = 28,equip = {[1] = {id = 2105301,lv = 90},[2] = {id = 2105302,lv = 90},[3] = {id = 2105303,lv = 90},[4] = {id = 2105304,lv = 90},[5] = {id = 2105305,lv = 90},[6] = {id = 2105306,lv = 90},[7] = {id = 2105307,lv = 90},[8] = {id = 2105308,lv = 90}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 224,desc = "daily_gold-19-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 3,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6031930,cardId = 1101999,lv = 90,bklv = 12,star = 2,equip = {[1] = {id = 2005301,lv = 90},[2] = {id = 2005302,lv = 90},[3] = {id = 2005303,lv = 90},[4] = {id = 2005304,lv = 90},[5] = {id = 2005305,lv = 90},[6] = {id = 2005306,lv = 90},[7] = {id = 2005307,lv = 90},[8] = {id = 2005308,lv = 90}},mon = {id = 203,desc = "daily_gold-19-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 3,exert = 21,suffer = 21}},
			shl = {cha = "daily_gold",id = 6031931,cardId = 1102999,lv = 90,bklv = 11,star = 2,ghost = 28,equip = {[1] = {id = 2105301,lv = 90},[2] = {id = 2105302,lv = 90},[3] = {id = 2105303,lv = 90},[4] = {id = 2105304,lv = 90},[5] = {id = 2105305,lv = 90},[6] = {id = 2105306,lv = 90},[7] = {id = 2105307,lv = 90},[8] = {id = 2105308,lv = 90}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 233,desc = "daily_gold-19-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 3,exert = 25,suffer = 25}}
		}
	},
	[60320] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6032010,cardId = 1101999,lv = 90,bklv = 12,star = 2,equip = {[1] = {id = 2005401,lv = 90},[2] = {id = 2005402,lv = 90},[3] = {id = 2005403,lv = 90},[4] = {id = 2005404,lv = 90},[5] = {id = 2005405,lv = 90},[6] = {id = 2005406,lv = 90},[7] = {id = 2005407,lv = 90},[8] = {id = 2005408,lv = 90}},mon = {id = 201,desc = "daily_gold-20-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "daily_gold",id = 6032011,cardId = 1102999,lv = 90,bklv = 11,star = 2,ghost = 28,equip = {[1] = {id = 2105401,lv = 90},[2] = {id = 2105402,lv = 90},[3] = {id = 2105403,lv = 90},[4] = {id = 2105404,lv = 90},[5] = {id = 2105405,lv = 90},[6] = {id = 2105406,lv = 90},[7] = {id = 2105407,lv = 90},[8] = {id = 2105408,lv = 90}},exWeapon = {[1] = 7,[2] = 5,[3] = 5,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 222,desc = "daily_gold-20-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6032020,cardId = 1101998,lv = 90,bklv = 12,star = 2,equip = {[1] = {id = 2005401,lv = 90},[2] = {id = 2005402,lv = 90},[3] = {id = 2005403,lv = 90},[4] = {id = 2005404,lv = 90},[5] = {id = 2005405,lv = 90},[6] = {id = 2005406,lv = 90},[7] = {id = 2005407,lv = 90},[8] = {id = 2005408,lv = 90}},mon = {id = 214,desc = "daily_gold-20-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "daily_gold",id = 6032021,cardId = 1102998,lv = 90,bklv = 11,star = 2,ghost = 28,equip = {[1] = {id = 2105401,lv = 90},[2] = {id = 2105402,lv = 90},[3] = {id = 2105403,lv = 90},[4] = {id = 2105404,lv = 90},[5] = {id = 2105405,lv = 90},[6] = {id = 2105406,lv = 90},[7] = {id = 2105407,lv = 90},[8] = {id = 2105408,lv = 90}},exWeapon = {[1] = 7,[2] = 5,[3] = 5,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 240,desc = "daily_gold-20-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6032030,cardId = 1101999,lv = 90,bklv = 12,star = 2,equip = {[1] = {id = 2005401,lv = 90},[2] = {id = 2005402,lv = 90},[3] = {id = 2005403,lv = 90},[4] = {id = 2005404,lv = 90},[5] = {id = 2005405,lv = 90},[6] = {id = 2005406,lv = 90},[7] = {id = 2005407,lv = 90},[8] = {id = 2005408,lv = 90}},mon = {id = 203,desc = "daily_gold-20-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "daily_gold",id = 6032031,cardId = 1102999,lv = 90,bklv = 11,star = 2,ghost = 28,equip = {[1] = {id = 2105401,lv = 90},[2] = {id = 2105402,lv = 90},[3] = {id = 2105403,lv = 90},[4] = {id = 2105404,lv = 90},[5] = {id = 2105405,lv = 90},[6] = {id = 2105406,lv = 90},[7] = {id = 2105407,lv = 90},[8] = {id = 2105408,lv = 90}},exWeapon = {[1] = 7,[2] = 5,[3] = 5,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 225,desc = "daily_gold-20-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		}
	},
	[60321] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6032110,cardId = 1101999,lv = 90,bklv = 12,star = 4,equip = {[1] = {id = 2005421,lv = 90},[2] = {id = 2005422,lv = 90},[3] = {id = 2005423,lv = 90},[4] = {id = 2005434,lv = 90},[5] = {id = 2005425,lv = 90},[6] = {id = 2005436,lv = 90},[7] = {id = 2005407,lv = 90},[8] = {id = 2005408,lv = 90}},mon = {id = 207,desc = "daily_gold-21-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 5,exert = 11,suffer = 21}},
			shl = {cha = "daily_gold",id = 6032111,cardId = 1102999,lv = 90,bklv = 11,star = 4,ghost = 28,equip = {[1] = {id = 2105421,lv = 90},[2] = {id = 2105432,lv = 90},[3] = {id = 2105423,lv = 90},[4] = {id = 2105434,lv = 90},[5] = {id = 2105425,lv = 90},[6] = {id = 2105436,lv = 90},[7] = {id = 2105407,lv = 90},[8] = {id = 2105408,lv = 90}},exWeapon = {[1] = 7,[2] = 6,[3] = 6,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 232,desc = "daily_gold-21-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 5,exert = 15,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6032120,cardId = 1101998,lv = 90,bklv = 12,star = 4,equip = {[1] = {id = 2005421,lv = 90},[2] = {id = 2005422,lv = 90},[3] = {id = 2005423,lv = 90},[4] = {id = 2005434,lv = 90},[5] = {id = 2005425,lv = 90},[6] = {id = 2005436,lv = 90},[7] = {id = 2005407,lv = 90},[8] = {id = 2005408,lv = 90}},mon = {id = 205,desc = "daily_gold-21-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 5,exert = 11,suffer = 21}},
			shl = {cha = "daily_gold",id = 6032121,cardId = 1102998,lv = 90,bklv = 11,star = 4,ghost = 28,equip = {[1] = {id = 2105421,lv = 90},[2] = {id = 2105432,lv = 90},[3] = {id = 2105423,lv = 90},[4] = {id = 2105434,lv = 90},[5] = {id = 2105425,lv = 90},[6] = {id = 2105436,lv = 90},[7] = {id = 2105407,lv = 90},[8] = {id = 2105408,lv = 90}},exWeapon = {[1] = 7,[2] = 6,[3] = 6,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 221,desc = "daily_gold-21-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 5,exert = 15,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6032130,cardId = 1101999,lv = 90,bklv = 12,star = 4,equip = {[1] = {id = 2005421,lv = 90},[2] = {id = 2005422,lv = 90},[3] = {id = 2005423,lv = 90},[4] = {id = 2005434,lv = 90},[5] = {id = 2005425,lv = 90},[6] = {id = 2005436,lv = 90},[7] = {id = 2005407,lv = 90},[8] = {id = 2005408,lv = 90}},mon = {id = 204,desc = "daily_gold-21-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 5,exert = 11,suffer = 21}},
			shl = {cha = "daily_gold",id = 6032131,cardId = 1102999,lv = 90,bklv = 11,star = 4,ghost = 28,equip = {[1] = {id = 2105421,lv = 90},[2] = {id = 2105432,lv = 90},[3] = {id = 2105423,lv = 90},[4] = {id = 2105434,lv = 90},[5] = {id = 2105425,lv = 90},[6] = {id = 2105436,lv = 90},[7] = {id = 2105407,lv = 90},[8] = {id = 2105408,lv = 90}},exWeapon = {[1] = 7,[2] = 6,[3] = 6,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 226,desc = "daily_gold-21-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 5,exert = 15,suffer = 25}}
		}
	},
	[60322] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6032210,cardId = 1101998,lv = 105,bklv = 14,star = 2,equip = {[1] = {id = 2006301,lv = 105},[2] = {id = 2006302,lv = 105},[3] = {id = 2006303,lv = 105},[4] = {id = 2006304,lv = 105},[5] = {id = 2006305,lv = 105},[6] = {id = 2006306,lv = 105},[7] = {id = 2006307,lv = 105},[8] = {id = 2006308,lv = 105}},mon = {id = 201,desc = "daily_gold-22-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 3,exert = 21,suffer = 21}},
			shl = {cha = "daily_gold",id = 6032211,cardId = 1102998,lv = 105,bklv = 13,star = 2,ghost = 34,equip = {[1] = {id = 2106301,lv = 105},[2] = {id = 2106302,lv = 105},[3] = {id = 2106303,lv = 105},[4] = {id = 2106304,lv = 105},[5] = {id = 2106305,lv = 105},[6] = {id = 2106306,lv = 105},[7] = {id = 2106307,lv = 105},[8] = {id = 2106308,lv = 105}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 235,desc = "daily_gold-22-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 3,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6032220,cardId = 1101998,lv = 105,bklv = 14,star = 2,equip = {[1] = {id = 2006301,lv = 105},[2] = {id = 2006302,lv = 105},[3] = {id = 2006303,lv = 105},[4] = {id = 2006304,lv = 105},[5] = {id = 2006305,lv = 105},[6] = {id = 2006306,lv = 105},[7] = {id = 2006307,lv = 105},[8] = {id = 2006308,lv = 105}},mon = {id = 202,desc = "daily_gold-22-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 3,exert = 21,suffer = 21}},
			shl = {cha = "daily_gold",id = 6032221,cardId = 1102998,lv = 105,bklv = 13,star = 2,ghost = 34,equip = {[1] = {id = 2106301,lv = 105},[2] = {id = 2106302,lv = 105},[3] = {id = 2106303,lv = 105},[4] = {id = 2106304,lv = 105},[5] = {id = 2106305,lv = 105},[6] = {id = 2106306,lv = 105},[7] = {id = 2106307,lv = 105},[8] = {id = 2106308,lv = 105}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 224,desc = "daily_gold-22-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 3,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6032230,cardId = 1101998,lv = 105,bklv = 14,star = 2,equip = {[1] = {id = 2006301,lv = 105},[2] = {id = 2006302,lv = 105},[3] = {id = 2006303,lv = 105},[4] = {id = 2006304,lv = 105},[5] = {id = 2006305,lv = 105},[6] = {id = 2006306,lv = 105},[7] = {id = 2006307,lv = 105},[8] = {id = 2006308,lv = 105}},mon = {id = 203,desc = "daily_gold-22-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 3,exert = 21,suffer = 21}},
			shl = {cha = "daily_gold",id = 6032231,cardId = 1102998,lv = 105,bklv = 13,star = 2,ghost = 34,equip = {[1] = {id = 2106301,lv = 105},[2] = {id = 2106302,lv = 105},[3] = {id = 2106303,lv = 105},[4] = {id = 2106304,lv = 105},[5] = {id = 2106305,lv = 105},[6] = {id = 2106306,lv = 105},[7] = {id = 2106307,lv = 105},[8] = {id = 2106308,lv = 105}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 233,desc = "daily_gold-22-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 3,exert = 25,suffer = 25}}
		}
	},
	[60323] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6032310,cardId = 1101998,lv = 105,bklv = 14,star = 2,equip = {[1] = {id = 2006401,lv = 105},[2] = {id = 2006402,lv = 105},[3] = {id = 2006403,lv = 105},[4] = {id = 2006404,lv = 105},[5] = {id = 2006405,lv = 105},[6] = {id = 2006406,lv = 105},[7] = {id = 2006407,lv = 105},[8] = {id = 2006408,lv = 105}},mon = {id = 201,desc = "daily_gold-23-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "daily_gold",id = 6032311,cardId = 1102998,lv = 105,bklv = 13,star = 2,ghost = 34,equip = {[1] = {id = 2106401,lv = 105},[2] = {id = 2106402,lv = 105},[3] = {id = 2106403,lv = 105},[4] = {id = 2106404,lv = 105},[5] = {id = 2106405,lv = 105},[6] = {id = 2106406,lv = 105},[7] = {id = 2106407,lv = 105},[8] = {id = 2106408,lv = 105}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 3,[5] = 1,[6] = 0,[7] = 0,[8] = 0},mon = {id = 222,desc = "daily_gold-23-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6032320,cardId = 1101997,lv = 105,bklv = 14,star = 2,equip = {[1] = {id = 2006401,lv = 105},[2] = {id = 2006402,lv = 105},[3] = {id = 2006403,lv = 105},[4] = {id = 2006404,lv = 105},[5] = {id = 2006405,lv = 105},[6] = {id = 2006406,lv = 105},[7] = {id = 2006407,lv = 105},[8] = {id = 2006408,lv = 105}},mon = {id = 214,desc = "daily_gold-23-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "daily_gold",id = 6032321,cardId = 1102997,lv = 105,bklv = 13,star = 2,ghost = 34,equip = {[1] = {id = 2106401,lv = 105},[2] = {id = 2106402,lv = 105},[3] = {id = 2106403,lv = 105},[4] = {id = 2106404,lv = 105},[5] = {id = 2106405,lv = 105},[6] = {id = 2106406,lv = 105},[7] = {id = 2106407,lv = 105},[8] = {id = 2106408,lv = 105}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 3,[5] = 1,[6] = 0,[7] = 0,[8] = 0},mon = {id = 240,desc = "daily_gold-23-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6032330,cardId = 1101998,lv = 105,bklv = 14,star = 2,equip = {[1] = {id = 2006401,lv = 105},[2] = {id = 2006402,lv = 105},[3] = {id = 2006403,lv = 105},[4] = {id = 2006404,lv = 105},[5] = {id = 2006405,lv = 105},[6] = {id = 2006406,lv = 105},[7] = {id = 2006407,lv = 105},[8] = {id = 2006408,lv = 105}},mon = {id = 203,desc = "daily_gold-23-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "daily_gold",id = 6032331,cardId = 1102998,lv = 105,bklv = 13,star = 2,ghost = 34,equip = {[1] = {id = 2106401,lv = 105},[2] = {id = 2106402,lv = 105},[3] = {id = 2106403,lv = 105},[4] = {id = 2106404,lv = 105},[5] = {id = 2106405,lv = 105},[6] = {id = 2106406,lv = 105},[7] = {id = 2106407,lv = 105},[8] = {id = 2106408,lv = 105}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 3,[5] = 1,[6] = 0,[7] = 0,[8] = 0},mon = {id = 225,desc = "daily_gold-23-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		}
	},
	[60324] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6032410,cardId = 1101998,lv = 105,bklv = 14,star = 4,equip = {[1] = {id = 2006411,lv = 105},[2] = {id = 2006412,lv = 105},[3] = {id = 2006413,lv = 105},[4] = {id = 2006404,lv = 105},[5] = {id = 2006415,lv = 105},[6] = {id = 2006406,lv = 105},[7] = {id = 2006417,lv = 105},[8] = {id = 2006418,lv = 105}},mon = {id = 207,desc = "daily_gold-24-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 5,exert = 11,suffer = 21}},
			shl = {cha = "daily_gold",id = 6032411,cardId = 1102998,lv = 105,bklv = 13,star = 4,ghost = 34,equip = {[1] = {id = 2106411,lv = 105},[2] = {id = 2106412,lv = 105},[3] = {id = 2106413,lv = 105},[4] = {id = 2106404,lv = 105},[5] = {id = 2106415,lv = 105},[6] = {id = 2106406,lv = 105},[7] = {id = 2106417,lv = 105},[8] = {id = 2106418,lv = 105}},exWeapon = {[1] = 8,[2] = 7,[3] = 6,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0},mon = {id = 232,desc = "daily_gold-24-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 5,exert = 15,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6032420,cardId = 1101997,lv = 105,bklv = 14,star = 4,equip = {[1] = {id = 2006411,lv = 105},[2] = {id = 2006412,lv = 105},[3] = {id = 2006413,lv = 105},[4] = {id = 2006404,lv = 105},[5] = {id = 2006415,lv = 105},[6] = {id = 2006406,lv = 105},[7] = {id = 2006417,lv = 105},[8] = {id = 2006418,lv = 105}},mon = {id = 205,desc = "daily_gold-24-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 5,exert = 11,suffer = 21}},
			shl = {cha = "daily_gold",id = 6032421,cardId = 1102997,lv = 105,bklv = 13,star = 4,ghost = 34,equip = {[1] = {id = 2106411,lv = 105},[2] = {id = 2106412,lv = 105},[3] = {id = 2106413,lv = 105},[4] = {id = 2106404,lv = 105},[5] = {id = 2106415,lv = 105},[6] = {id = 2106406,lv = 105},[7] = {id = 2106417,lv = 105},[8] = {id = 2106418,lv = 105}},exWeapon = {[1] = 8,[2] = 7,[3] = 6,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0},mon = {id = 221,desc = "daily_gold-24-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 5,exert = 15,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6032430,cardId = 1101998,lv = 105,bklv = 14,star = 4,equip = {[1] = {id = 2006411,lv = 105},[2] = {id = 2006412,lv = 105},[3] = {id = 2006413,lv = 105},[4] = {id = 2006404,lv = 105},[5] = {id = 2006415,lv = 105},[6] = {id = 2006406,lv = 105},[7] = {id = 2006417,lv = 105},[8] = {id = 2006418,lv = 105}},mon = {id = 204,desc = "daily_gold-24-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 5,exert = 11,suffer = 21}},
			shl = {cha = "daily_gold",id = 6032431,cardId = 1102998,lv = 105,bklv = 13,star = 4,ghost = 34,equip = {[1] = {id = 2106411,lv = 105},[2] = {id = 2106412,lv = 105},[3] = {id = 2106413,lv = 105},[4] = {id = 2106404,lv = 105},[5] = {id = 2106415,lv = 105},[6] = {id = 2106406,lv = 105},[7] = {id = 2106417,lv = 105},[8] = {id = 2106418,lv = 105}},exWeapon = {[1] = 8,[2] = 7,[3] = 6,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0},mon = {id = 226,desc = "daily_gold-24-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 5,exert = 15,suffer = 25}}
		}
	},
	[60325] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6032510,cardId = 1101997,lv = 120,bklv = 17,star = 2,equip = {[1] = {id = 2007301,lv = 120},[2] = {id = 2007302,lv = 120},[3] = {id = 2007303,lv = 120},[4] = {id = 2007304,lv = 120},[5] = {id = 2007305,lv = 120},[6] = {id = 2007306,lv = 120},[7] = {id = 2007307,lv = 120},[8] = {id = 2007308,lv = 120}},mon = {id = 201,desc = "daily_gold-25-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 4,exert = 21,suffer = 21}},
			shl = {cha = "daily_gold",id = 6032511,cardId = 1102997,lv = 120,bklv = 16,star = 2,ghost = 40,equip = {[1] = {id = 2107301,lv = 120},[2] = {id = 2107302,lv = 120},[3] = {id = 2107303,lv = 120},[4] = {id = 2107304,lv = 120},[5] = {id = 2107305,lv = 120},[6] = {id = 2107306,lv = 120},[7] = {id = 2107307,lv = 120},[8] = {id = 2107308,lv = 120}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 235,desc = "daily_gold-25-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 4,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6032520,cardId = 1101997,lv = 120,bklv = 17,star = 2,equip = {[1] = {id = 2007301,lv = 120},[2] = {id = 2007302,lv = 120},[3] = {id = 2007303,lv = 120},[4] = {id = 2007304,lv = 120},[5] = {id = 2007305,lv = 120},[6] = {id = 2007306,lv = 120},[7] = {id = 2007307,lv = 120},[8] = {id = 2007308,lv = 120}},mon = {id = 202,desc = "daily_gold-25-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 4,exert = 21,suffer = 21}},
			shl = {cha = "daily_gold",id = 6032521,cardId = 1102997,lv = 120,bklv = 16,star = 2,ghost = 40,equip = {[1] = {id = 2107301,lv = 120},[2] = {id = 2107302,lv = 120},[3] = {id = 2107303,lv = 120},[4] = {id = 2107304,lv = 120},[5] = {id = 2107305,lv = 120},[6] = {id = 2107306,lv = 120},[7] = {id = 2107307,lv = 120},[8] = {id = 2107308,lv = 120}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 224,desc = "daily_gold-25-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 4,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6032530,cardId = 1101997,lv = 120,bklv = 17,star = 2,equip = {[1] = {id = 2007301,lv = 120},[2] = {id = 2007302,lv = 120},[3] = {id = 2007303,lv = 120},[4] = {id = 2007304,lv = 120},[5] = {id = 2007305,lv = 120},[6] = {id = 2007306,lv = 120},[7] = {id = 2007307,lv = 120},[8] = {id = 2007308,lv = 120}},mon = {id = 203,desc = "daily_gold-25-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 4,exert = 21,suffer = 21}},
			shl = {cha = "daily_gold",id = 6032531,cardId = 1102997,lv = 120,bklv = 16,star = 2,ghost = 40,equip = {[1] = {id = 2107301,lv = 120},[2] = {id = 2107302,lv = 120},[3] = {id = 2107303,lv = 120},[4] = {id = 2107304,lv = 120},[5] = {id = 2107305,lv = 120},[6] = {id = 2107306,lv = 120},[7] = {id = 2107307,lv = 120},[8] = {id = 2107308,lv = 120}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 233,desc = "daily_gold-25-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 4,exert = 25,suffer = 25}}
		}
	},
	[60326] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6032610,cardId = 1101997,lv = 120,bklv = 17,star = 2,equip = {[1] = {id = 2007401,lv = 120},[2] = {id = 2007402,lv = 120},[3] = {id = 2007403,lv = 120},[4] = {id = 2007404,lv = 120},[5] = {id = 2007405,lv = 120},[6] = {id = 2007406,lv = 120},[7] = {id = 2007407,lv = 120},[8] = {id = 2007408,lv = 120}},mon = {id = 201,desc = "daily_gold-26-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 5,exert = 14,suffer = 21}},
			shl = {cha = "daily_gold",id = 6032611,cardId = 1102997,lv = 120,bklv = 16,star = 2,ghost = 40,equip = {[1] = {id = 2107401,lv = 120},[2] = {id = 2107402,lv = 120},[3] = {id = 2107403,lv = 120},[4] = {id = 2107404,lv = 120},[5] = {id = 2107405,lv = 120},[6] = {id = 2107406,lv = 120},[7] = {id = 2107407,lv = 120},[8] = {id = 2107408,lv = 120}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 3,[6] = 1,[7] = 0,[8] = 0},mon = {id = 222,desc = "daily_gold-26-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 5,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6032620,cardId = 1101997,lv = 120,bklv = 17,star = 2,equip = {[1] = {id = 2007401,lv = 120},[2] = {id = 2007402,lv = 120},[3] = {id = 2007403,lv = 120},[4] = {id = 2007404,lv = 120},[5] = {id = 2007405,lv = 120},[6] = {id = 2007406,lv = 120},[7] = {id = 2007407,lv = 120},[8] = {id = 2007408,lv = 120}},mon = {id = 214,desc = "daily_gold-26-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 5,exert = 14,suffer = 21}},
			shl = {cha = "daily_gold",id = 6032621,cardId = 1102996,lv = 120,bklv = 16,star = 2,ghost = 40,equip = {[1] = {id = 2107401,lv = 120},[2] = {id = 2107402,lv = 120},[3] = {id = 2107403,lv = 120},[4] = {id = 2107404,lv = 120},[5] = {id = 2107405,lv = 120},[6] = {id = 2107406,lv = 120},[7] = {id = 2107407,lv = 120},[8] = {id = 2107408,lv = 120}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 3,[6] = 1,[7] = 0,[8] = 0},mon = {id = 240,desc = "daily_gold-26-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 5,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6032630,cardId = 1101997,lv = 120,bklv = 17,star = 2,equip = {[1] = {id = 2007401,lv = 120},[2] = {id = 2007402,lv = 120},[3] = {id = 2007403,lv = 120},[4] = {id = 2007404,lv = 120},[5] = {id = 2007405,lv = 120},[6] = {id = 2007406,lv = 120},[7] = {id = 2007407,lv = 120},[8] = {id = 2007408,lv = 120}},mon = {id = 203,desc = "daily_gold-26-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 5,exert = 14,suffer = 21}},
			shl = {cha = "daily_gold",id = 6032631,cardId = 1102997,lv = 120,bklv = 16,star = 2,ghost = 40,equip = {[1] = {id = 2107401,lv = 120},[2] = {id = 2107402,lv = 120},[3] = {id = 2107403,lv = 120},[4] = {id = 2107404,lv = 120},[5] = {id = 2107405,lv = 120},[6] = {id = 2107406,lv = 120},[7] = {id = 2107407,lv = 120},[8] = {id = 2107408,lv = 120}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 3,[6] = 1,[7] = 0,[8] = 0},mon = {id = 225,desc = "daily_gold-26-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 5,exert = 18,suffer = 25}}
		}
	},
	[60327] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6032710,cardId = 1101997,lv = 120,bklv = 17,star = 4,equip = {[1] = {id = 2007421,lv = 120},[2] = {id = 2007422,lv = 120},[3] = {id = 2007423,lv = 120},[4] = {id = 2007424,lv = 120},[5] = {id = 2007425,lv = 120},[6] = {id = 2007426,lv = 120},[7] = {id = 2007407,lv = 120},[8] = {id = 2007408,lv = 120}},mon = {id = 207,desc = "daily_gold-27-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 6,exert = 11,suffer = 21}},
			shl = {cha = "daily_gold",id = 6032711,cardId = 1102997,lv = 120,bklv = 16,star = 4,ghost = 40,equip = {[1] = {id = 2107421,lv = 120},[2] = {id = 2107422,lv = 120},[3] = {id = 2107423,lv = 120},[4] = {id = 2107424,lv = 120},[5] = {id = 2107425,lv = 120},[6] = {id = 2107426,lv = 120},[7] = {id = 2107407,lv = 120},[8] = {id = 2107408,lv = 120}},exWeapon = {[1] = 8,[2] = 8,[3] = 6,[4] = 6,[5] = 4,[6] = 2,[7] = 0,[8] = 0},mon = {id = 232,desc = "daily_gold-27-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 6,exert = 15,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6032720,cardId = 1101997,lv = 120,bklv = 17,star = 4,equip = {[1] = {id = 2007421,lv = 120},[2] = {id = 2007422,lv = 120},[3] = {id = 2007423,lv = 120},[4] = {id = 2007424,lv = 120},[5] = {id = 2007425,lv = 120},[6] = {id = 2007426,lv = 120},[7] = {id = 2007407,lv = 120},[8] = {id = 2007408,lv = 120}},mon = {id = 205,desc = "daily_gold-27-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 6,exert = 11,suffer = 21}},
			shl = {cha = "daily_gold",id = 6032721,cardId = 1102996,lv = 120,bklv = 16,star = 4,ghost = 40,equip = {[1] = {id = 2107421,lv = 120},[2] = {id = 2107422,lv = 120},[3] = {id = 2107423,lv = 120},[4] = {id = 2107424,lv = 120},[5] = {id = 2107425,lv = 120},[6] = {id = 2107426,lv = 120},[7] = {id = 2107407,lv = 120},[8] = {id = 2107408,lv = 120}},exWeapon = {[1] = 8,[2] = 8,[3] = 6,[4] = 6,[5] = 4,[6] = 2,[7] = 0,[8] = 0},mon = {id = 221,desc = "daily_gold-27-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 6,exert = 15,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6032730,cardId = 1101997,lv = 120,bklv = 17,star = 4,equip = {[1] = {id = 2007421,lv = 120},[2] = {id = 2007422,lv = 120},[3] = {id = 2007423,lv = 120},[4] = {id = 2007424,lv = 120},[5] = {id = 2007425,lv = 120},[6] = {id = 2007426,lv = 120},[7] = {id = 2007407,lv = 120},[8] = {id = 2007408,lv = 120}},mon = {id = 204,desc = "daily_gold-27-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 6,exert = 11,suffer = 21}},
			shl = {cha = "daily_gold",id = 6032731,cardId = 1102997,lv = 120,bklv = 16,star = 4,ghost = 40,equip = {[1] = {id = 2107421,lv = 120},[2] = {id = 2107422,lv = 120},[3] = {id = 2107423,lv = 120},[4] = {id = 2107424,lv = 120},[5] = {id = 2107425,lv = 120},[6] = {id = 2107426,lv = 120},[7] = {id = 2107407,lv = 120},[8] = {id = 2107408,lv = 120}},exWeapon = {[1] = 8,[2] = 8,[3] = 6,[4] = 6,[5] = 4,[6] = 2,[7] = 0,[8] = 0},mon = {id = 226,desc = "daily_gold-27-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 6,exert = 15,suffer = 25}}
		}
	},
	[60328] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6032810,cardId = 1101999,lv = 132,bklv = 18,star = 2,equip = {[1] = {id = 2008301,lv = 130},[2] = {id = 2008302,lv = 130},[3] = {id = 2008303,lv = 130},[4] = {id = 2008304,lv = 130},[5] = {id = 2008305,lv = 130},[6] = {id = 2008306,lv = 130},[7] = {id = 2008307,lv = 130},[8] = {id = 2008308,lv = 130}},mon = {id = 201,desc = "daily_gold-28-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 4,exert = 21,suffer = 21}},
			shl = {cha = "daily_gold",id = 6032811,cardId = 1102999,lv = 132,bklv = 18,star = 2,ghost = 44,equip = {[1] = {id = 2108301,lv = 130},[2] = {id = 2108302,lv = 130},[3] = {id = 2108303,lv = 130},[4] = {id = 2108304,lv = 130},[5] = {id = 2108305,lv = 130},[6] = {id = 2108306,lv = 130},[7] = {id = 2108307,lv = 130},[8] = {id = 2108308,lv = 130}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 235,desc = "daily_gold-28-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 4,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6032820,cardId = 1101998,lv = 132,bklv = 18,star = 1,equip = {[1] = {id = 2008301,lv = 130},[2] = {id = 2008302,lv = 130},[3] = {id = 2008303,lv = 130},[4] = {id = 2008304,lv = 130},[5] = {id = 2008305,lv = 130},[6] = {id = 2008306,lv = 130},[7] = {id = 2008307,lv = 130},[8] = {id = 2008308,lv = 130}},mon = {id = 202,desc = "daily_gold-28-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 4,exert = 21,suffer = 21}},
			shl = {cha = "daily_gold",id = 6032821,cardId = 1102998,lv = 132,bklv = 18,star = 1,ghost = 44,equip = {[1] = {id = 2108301,lv = 130},[2] = {id = 2108302,lv = 130},[3] = {id = 2108303,lv = 130},[4] = {id = 2108304,lv = 130},[5] = {id = 2108305,lv = 130},[6] = {id = 2108306,lv = 130},[7] = {id = 2108307,lv = 130},[8] = {id = 2108308,lv = 130}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 224,desc = "daily_gold-28-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 4,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6032830,cardId = 1101999,lv = 132,bklv = 18,star = 2,equip = {[1] = {id = 2008301,lv = 130},[2] = {id = 2008302,lv = 130},[3] = {id = 2008303,lv = 130},[4] = {id = 2008304,lv = 130},[5] = {id = 2008305,lv = 130},[6] = {id = 2008306,lv = 130},[7] = {id = 2008307,lv = 130},[8] = {id = 2008308,lv = 130}},mon = {id = 203,desc = "daily_gold-28-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 4,exert = 21,suffer = 21}},
			shl = {cha = "daily_gold",id = 6032831,cardId = 1102999,lv = 132,bklv = 18,star = 2,ghost = 44,equip = {[1] = {id = 2108301,lv = 130},[2] = {id = 2108302,lv = 130},[3] = {id = 2108303,lv = 130},[4] = {id = 2108304,lv = 130},[5] = {id = 2108305,lv = 130},[6] = {id = 2108306,lv = 130},[7] = {id = 2108307,lv = 130},[8] = {id = 2108308,lv = 130}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 233,desc = "daily_gold-28-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 4,exert = 25,suffer = 25}}
		}
	},
	[60329] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6032910,cardId = 1101999,lv = 132,bklv = 18,star = 3,equip = {[1] = {id = 2008401,lv = 130},[2] = {id = 2008402,lv = 130},[3] = {id = 2008403,lv = 130},[4] = {id = 2008404,lv = 130},[5] = {id = 2008405,lv = 130},[6] = {id = 2008406,lv = 130},[7] = {id = 2008407,lv = 130},[8] = {id = 2008408,lv = 130}},mon = {id = 201,desc = "daily_gold-29-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 5,exert = 14,suffer = 21}},
			shl = {cha = "daily_gold",id = 6032911,cardId = 1102999,lv = 132,bklv = 18,star = 3,ghost = 44,equip = {[1] = {id = 2108401,lv = 130},[2] = {id = 2108402,lv = 130},[3] = {id = 2108403,lv = 130},[4] = {id = 2108404,lv = 130},[5] = {id = 2108405,lv = 130},[6] = {id = 2108406,lv = 130},[7] = {id = 2108407,lv = 130},[8] = {id = 2108408,lv = 130}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 3,[6] = 3,[7] = 1,[8] = 0},mon = {id = 222,desc = "daily_gold-29-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 5,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6032920,cardId = 1101998,lv = 132,bklv = 18,star = 2,equip = {[1] = {id = 2008401,lv = 130},[2] = {id = 2008402,lv = 130},[3] = {id = 2008403,lv = 130},[4] = {id = 2008404,lv = 130},[5] = {id = 2008405,lv = 130},[6] = {id = 2008406,lv = 130},[7] = {id = 2008407,lv = 130},[8] = {id = 2008408,lv = 130}},mon = {id = 214,desc = "daily_gold-29-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 5,exert = 14,suffer = 21}},
			shl = {cha = "daily_gold",id = 6032921,cardId = 1102998,lv = 132,bklv = 18,star = 2,ghost = 44,equip = {[1] = {id = 2108401,lv = 130},[2] = {id = 2108402,lv = 130},[3] = {id = 2108403,lv = 130},[4] = {id = 2108404,lv = 130},[5] = {id = 2108405,lv = 130},[6] = {id = 2108406,lv = 130},[7] = {id = 2108407,lv = 130},[8] = {id = 2108408,lv = 130}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 3,[6] = 3,[7] = 1,[8] = 0},mon = {id = 240,desc = "daily_gold-29-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 5,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6032930,cardId = 1101999,lv = 132,bklv = 18,star = 3,equip = {[1] = {id = 2008401,lv = 130},[2] = {id = 2008402,lv = 130},[3] = {id = 2008403,lv = 130},[4] = {id = 2008404,lv = 130},[5] = {id = 2008405,lv = 130},[6] = {id = 2008406,lv = 130},[7] = {id = 2008407,lv = 130},[8] = {id = 2008408,lv = 130}},mon = {id = 203,desc = "daily_gold-29-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 5,exert = 14,suffer = 21}},
			shl = {cha = "daily_gold",id = 6032931,cardId = 1102999,lv = 132,bklv = 18,star = 3,ghost = 44,equip = {[1] = {id = 2108401,lv = 130},[2] = {id = 2108402,lv = 130},[3] = {id = 2108403,lv = 130},[4] = {id = 2108404,lv = 130},[5] = {id = 2108405,lv = 130},[6] = {id = 2108406,lv = 130},[7] = {id = 2108407,lv = 130},[8] = {id = 2108408,lv = 130}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 3,[6] = 3,[7] = 1,[8] = 0},mon = {id = 225,desc = "daily_gold-29-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 5,exert = 18,suffer = 25}}
		}
	},
	[60330] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6033010,cardId = 1101999,lv = 132,bklv = 18,star = 5,equip = {[1] = {id = 2008421,lv = 130},[2] = {id = 2008412,lv = 130},[3] = {id = 2008413,lv = 130},[4] = {id = 2008404,lv = 130},[5] = {id = 2008415,lv = 130},[6] = {id = 2008406,lv = 130},[7] = {id = 2008427,lv = 130},[8] = {id = 2008418,lv = 130}},mon = {id = 207,desc = "daily_gold-30-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 6,exert = 11,suffer = 21}},
			shl = {cha = "daily_gold",id = 6033011,cardId = 1102999,lv = 132,bklv = 18,star = 5,ghost = 44,equip = {[1] = {id = 2108421,lv = 130},[2] = {id = 2108422,lv = 130},[3] = {id = 2108413,lv = 130},[4] = {id = 2108404,lv = 130},[5] = {id = 2108415,lv = 130},[6] = {id = 2108406,lv = 130},[7] = {id = 2108427,lv = 130},[8] = {id = 2108428,lv = 130}},exWeapon = {[1] = 8,[2] = 8,[3] = 6,[4] = 6,[5] = 4,[6] = 4,[7] = 2,[8] = 0},mon = {id = 232,desc = "daily_gold-30-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 6,exert = 15,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6033020,cardId = 1101998,lv = 132,bklv = 18,star = 5,equip = {[1] = {id = 2008421,lv = 130},[2] = {id = 2008412,lv = 130},[3] = {id = 2008413,lv = 130},[4] = {id = 2008404,lv = 130},[5] = {id = 2008415,lv = 130},[6] = {id = 2008406,lv = 130},[7] = {id = 2008427,lv = 130},[8] = {id = 2008418,lv = 130}},mon = {id = 205,desc = "daily_gold-30-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 6,exert = 11,suffer = 21}},
			shl = {cha = "daily_gold",id = 6033021,cardId = 1102998,lv = 132,bklv = 18,star = 5,ghost = 44,equip = {[1] = {id = 2108421,lv = 130},[2] = {id = 2108422,lv = 130},[3] = {id = 2108413,lv = 130},[4] = {id = 2108404,lv = 130},[5] = {id = 2108415,lv = 130},[6] = {id = 2108406,lv = 130},[7] = {id = 2108427,lv = 130},[8] = {id = 2108428,lv = 130}},exWeapon = {[1] = 8,[2] = 8,[3] = 6,[4] = 6,[5] = 4,[6] = 4,[7] = 2,[8] = 0},mon = {id = 221,desc = "daily_gold-30-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 6,exert = 15,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6033030,cardId = 1101999,lv = 132,bklv = 18,star = 5,equip = {[1] = {id = 2008421,lv = 130},[2] = {id = 2008412,lv = 130},[3] = {id = 2008413,lv = 130},[4] = {id = 2008404,lv = 130},[5] = {id = 2008415,lv = 130},[6] = {id = 2008406,lv = 130},[7] = {id = 2008427,lv = 130},[8] = {id = 2008418,lv = 130}},mon = {id = 204,desc = "daily_gold-30-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 6,exert = 11,suffer = 21}},
			shl = {cha = "daily_gold",id = 6033031,cardId = 1102999,lv = 132,bklv = 18,star = 5,ghost = 44,equip = {[1] = {id = 2108421,lv = 130},[2] = {id = 2108422,lv = 130},[3] = {id = 2108413,lv = 130},[4] = {id = 2108404,lv = 130},[5] = {id = 2108415,lv = 130},[6] = {id = 2108406,lv = 130},[7] = {id = 2108427,lv = 130},[8] = {id = 2108428,lv = 130}},exWeapon = {[1] = 8,[2] = 8,[3] = 6,[4] = 6,[5] = 4,[6] = 4,[7] = 2,[8] = 0},mon = {id = 226,desc = "daily_gold-30-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 6,exert = 15,suffer = 25}}
		}
	},
	[60331] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6033110,cardId = 1101998,lv = 140,bklv = 19,star = 2,equip = {[1] = {id = 2009301,lv = 140},[2] = {id = 2009302,lv = 140},[3] = {id = 2009303,lv = 140},[4] = {id = 2009304,lv = 140},[5] = {id = 2009305,lv = 140},[6] = {id = 2009306,lv = 140},[7] = {id = 2009307,lv = 140},[8] = {id = 2009308,lv = 140}},mon = {id = 201,desc = "daily_gold-31-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 4,exert = 21,suffer = 21}},
			shl = {cha = "daily_gold",id = 6033111,cardId = 1102998,lv = 140,bklv = 19,star = 2,ghost = 48,equip = {[1] = {id = 2109301,lv = 140},[2] = {id = 2109302,lv = 140},[3] = {id = 2109303,lv = 140},[4] = {id = 2109304,lv = 140},[5] = {id = 2109305,lv = 140},[6] = {id = 2109306,lv = 140},[7] = {id = 2109307,lv = 140},[8] = {id = 2109308,lv = 140}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 235,desc = "daily_gold-31-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 4,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6033120,cardId = 1101997,lv = 140,bklv = 19,star = 1,equip = {[1] = {id = 2009301,lv = 140},[2] = {id = 2009302,lv = 140},[3] = {id = 2009303,lv = 140},[4] = {id = 2009304,lv = 140},[5] = {id = 2009305,lv = 140},[6] = {id = 2009306,lv = 140},[7] = {id = 2009307,lv = 140},[8] = {id = 2009308,lv = 140}},mon = {id = 202,desc = "daily_gold-31-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 4,exert = 21,suffer = 21}},
			shl = {cha = "daily_gold",id = 6033121,cardId = 1102997,lv = 140,bklv = 19,star = 1,ghost = 48,equip = {[1] = {id = 2109301,lv = 140},[2] = {id = 2109302,lv = 140},[3] = {id = 2109303,lv = 140},[4] = {id = 2109304,lv = 140},[5] = {id = 2109305,lv = 140},[6] = {id = 2109306,lv = 140},[7] = {id = 2109307,lv = 140},[8] = {id = 2109308,lv = 140}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 224,desc = "daily_gold-31-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 4,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6033130,cardId = 1101998,lv = 140,bklv = 19,star = 2,equip = {[1] = {id = 2009301,lv = 140},[2] = {id = 2009302,lv = 140},[3] = {id = 2009303,lv = 140},[4] = {id = 2009304,lv = 140},[5] = {id = 2009305,lv = 140},[6] = {id = 2009306,lv = 140},[7] = {id = 2009307,lv = 140},[8] = {id = 2009308,lv = 140}},mon = {id = 203,desc = "daily_gold-31-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 4,exert = 21,suffer = 21}},
			shl = {cha = "daily_gold",id = 6033131,cardId = 1102998,lv = 140,bklv = 19,star = 2,ghost = 48,equip = {[1] = {id = 2109301,lv = 140},[2] = {id = 2109302,lv = 140},[3] = {id = 2109303,lv = 140},[4] = {id = 2109304,lv = 140},[5] = {id = 2109305,lv = 140},[6] = {id = 2109306,lv = 140},[7] = {id = 2109307,lv = 140},[8] = {id = 2109308,lv = 140}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 233,desc = "daily_gold-31-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 4,exert = 25,suffer = 25}}
		}
	},
	[60332] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6033210,cardId = 1101998,lv = 140,bklv = 19,star = 3,equip = {[1] = {id = 2009401,lv = 140},[2] = {id = 2009402,lv = 140},[3] = {id = 2009403,lv = 140},[4] = {id = 2009404,lv = 140},[5] = {id = 2009405,lv = 140},[6] = {id = 2009406,lv = 140},[7] = {id = 2009407,lv = 140},[8] = {id = 2009408,lv = 140}},mon = {id = 201,desc = "daily_gold-32-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 5,exert = 14,suffer = 21}},
			shl = {cha = "daily_gold",id = 6033211,cardId = 1102998,lv = 140,bklv = 19,star = 3,ghost = 48,equip = {[1] = {id = 2109401,lv = 140},[2] = {id = 2109402,lv = 140},[3] = {id = 2109403,lv = 140},[4] = {id = 2109404,lv = 140},[5] = {id = 2109405,lv = 140},[6] = {id = 2109406,lv = 140},[7] = {id = 2109407,lv = 140},[8] = {id = 2109408,lv = 140}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 4,[6] = 3,[7] = 3,[8] = 1},mon = {id = 222,desc = "daily_gold-32-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 5,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6033220,cardId = 1101997,lv = 140,bklv = 19,star = 2,equip = {[1] = {id = 2009401,lv = 140},[2] = {id = 2009402,lv = 140},[3] = {id = 2009403,lv = 140},[4] = {id = 2009404,lv = 140},[5] = {id = 2009405,lv = 140},[6] = {id = 2009406,lv = 140},[7] = {id = 2009407,lv = 140},[8] = {id = 2009408,lv = 140}},mon = {id = 214,desc = "daily_gold-32-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 5,exert = 14,suffer = 21}},
			shl = {cha = "daily_gold",id = 6033221,cardId = 1102997,lv = 140,bklv = 19,star = 2,ghost = 48,equip = {[1] = {id = 2109401,lv = 140},[2] = {id = 2109402,lv = 140},[3] = {id = 2109403,lv = 140},[4] = {id = 2109404,lv = 140},[5] = {id = 2109405,lv = 140},[6] = {id = 2109406,lv = 140},[7] = {id = 2109407,lv = 140},[8] = {id = 2109408,lv = 140}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 4,[6] = 3,[7] = 3,[8] = 1},mon = {id = 240,desc = "daily_gold-32-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 5,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6033230,cardId = 1101998,lv = 140,bklv = 19,star = 3,equip = {[1] = {id = 2009401,lv = 140},[2] = {id = 2009402,lv = 140},[3] = {id = 2009403,lv = 140},[4] = {id = 2009404,lv = 140},[5] = {id = 2009405,lv = 140},[6] = {id = 2009406,lv = 140},[7] = {id = 2009407,lv = 140},[8] = {id = 2009408,lv = 140}},mon = {id = 203,desc = "daily_gold-32-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 5,exert = 14,suffer = 21}},
			shl = {cha = "daily_gold",id = 6033231,cardId = 1102998,lv = 140,bklv = 19,star = 3,ghost = 48,equip = {[1] = {id = 2109401,lv = 140},[2] = {id = 2109402,lv = 140},[3] = {id = 2109403,lv = 140},[4] = {id = 2109404,lv = 140},[5] = {id = 2109405,lv = 140},[6] = {id = 2109406,lv = 140},[7] = {id = 2109407,lv = 140},[8] = {id = 2109408,lv = 140}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 4,[6] = 3,[7] = 3,[8] = 1},mon = {id = 225,desc = "daily_gold-32-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 5,exert = 18,suffer = 25}}
		}
	},
	[60333] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6033310,cardId = 1101998,lv = 140,bklv = 19,star = 5,equip = {[1] = {id = 2009421,lv = 140},[2] = {id = 2009422,lv = 140},[3] = {id = 2009423,lv = 140},[4] = {id = 2009424,lv = 140},[5] = {id = 2009425,lv = 140},[6] = {id = 2009426,lv = 140},[7] = {id = 2009407,lv = 140},[8] = {id = 2009408,lv = 140}},mon = {id = 207,desc = "daily_gold-33-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 6,exert = 11,suffer = 21}},
			shl = {cha = "daily_gold",id = 6033311,cardId = 1102998,lv = 140,bklv = 19,star = 5,ghost = 48,equip = {[1] = {id = 2109421,lv = 140},[2] = {id = 2109422,lv = 140},[3] = {id = 2109423,lv = 140},[4] = {id = 2109424,lv = 140},[5] = {id = 2109425,lv = 140},[6] = {id = 2109426,lv = 140},[7] = {id = 2109407,lv = 140},[8] = {id = 2109408,lv = 140}},exWeapon = {[1] = 8,[2] = 8,[3] = 6,[4] = 6,[5] = 5,[6] = 4,[7] = 4,[8] = 2},mon = {id = 232,desc = "daily_gold-33-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 6,exert = 15,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6033320,cardId = 1101997,lv = 140,bklv = 19,star = 5,equip = {[1] = {id = 2009421,lv = 140},[2] = {id = 2009422,lv = 140},[3] = {id = 2009423,lv = 140},[4] = {id = 2009424,lv = 140},[5] = {id = 2009425,lv = 140},[6] = {id = 2009426,lv = 140},[7] = {id = 2009407,lv = 140},[8] = {id = 2009408,lv = 140}},mon = {id = 205,desc = "daily_gold-33-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 6,exert = 11,suffer = 21}},
			shl = {cha = "daily_gold",id = 6033321,cardId = 1102997,lv = 140,bklv = 19,star = 5,ghost = 48,equip = {[1] = {id = 2109421,lv = 140},[2] = {id = 2109422,lv = 140},[3] = {id = 2109423,lv = 140},[4] = {id = 2109424,lv = 140},[5] = {id = 2109425,lv = 140},[6] = {id = 2109426,lv = 140},[7] = {id = 2109407,lv = 140},[8] = {id = 2109408,lv = 140}},exWeapon = {[1] = 8,[2] = 8,[3] = 6,[4] = 6,[5] = 5,[6] = 4,[7] = 4,[8] = 2},mon = {id = 221,desc = "daily_gold-33-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 6,exert = 15,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6033330,cardId = 1101998,lv = 140,bklv = 19,star = 5,equip = {[1] = {id = 2009421,lv = 140},[2] = {id = 2009422,lv = 140},[3] = {id = 2009423,lv = 140},[4] = {id = 2009424,lv = 140},[5] = {id = 2009425,lv = 140},[6] = {id = 2009426,lv = 140},[7] = {id = 2009407,lv = 140},[8] = {id = 2009408,lv = 140}},mon = {id = 204,desc = "daily_gold-33-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 6,exert = 11,suffer = 21}},
			shl = {cha = "daily_gold",id = 6033331,cardId = 1102998,lv = 140,bklv = 19,star = 5,ghost = 48,equip = {[1] = {id = 2109421,lv = 140},[2] = {id = 2109422,lv = 140},[3] = {id = 2109423,lv = 140},[4] = {id = 2109424,lv = 140},[5] = {id = 2109425,lv = 140},[6] = {id = 2109426,lv = 140},[7] = {id = 2109407,lv = 140},[8] = {id = 2109408,lv = 140}},exWeapon = {[1] = 8,[2] = 8,[3] = 6,[4] = 6,[5] = 5,[6] = 4,[7] = 4,[8] = 2},mon = {id = 226,desc = "daily_gold-33-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 6,exert = 15,suffer = 25}}
		}
	},
	[60334] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6033410,cardId = 1101997,lv = 150,bklv = 20,star = 2,equip = {[1] = {id = 2010301,lv = 150},[2] = {id = 2010302,lv = 150},[3] = {id = 2010303,lv = 150},[4] = {id = 2010304,lv = 150},[5] = {id = 2010305,lv = 150},[6] = {id = 2010306,lv = 150},[7] = {id = 2010307,lv = 150},[8] = {id = 2010308,lv = 150}},mon = {id = 201,desc = "daily_gold-34-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 5,exert = 21,suffer = 21}},
			shl = {cha = "daily_gold",id = 6033411,cardId = 1102997,lv = 150,bklv = 20,star = 2,ghost = 52,equip = {[1] = {id = 2110301,lv = 150},[2] = {id = 2110302,lv = 150},[3] = {id = 2110303,lv = 150},[4] = {id = 2110304,lv = 150},[5] = {id = 2110305,lv = 150},[6] = {id = 2110306,lv = 150},[7] = {id = 2110307,lv = 150},[8] = {id = 2110308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 235,desc = "daily_gold-34-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 5,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6033420,cardId = 1101997,lv = 150,bklv = 20,star = 1,equip = {[1] = {id = 2010301,lv = 150},[2] = {id = 2010302,lv = 150},[3] = {id = 2010303,lv = 150},[4] = {id = 2010304,lv = 150},[5] = {id = 2010305,lv = 150},[6] = {id = 2010306,lv = 150},[7] = {id = 2010307,lv = 150},[8] = {id = 2010308,lv = 150}},mon = {id = 202,desc = "daily_gold-34-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 5,exert = 21,suffer = 21}},
			shl = {cha = "daily_gold",id = 6033421,cardId = 1102996,lv = 150,bklv = 20,star = 1,ghost = 52,equip = {[1] = {id = 2110301,lv = 150},[2] = {id = 2110302,lv = 150},[3] = {id = 2110303,lv = 150},[4] = {id = 2110304,lv = 150},[5] = {id = 2110305,lv = 150},[6] = {id = 2110306,lv = 150},[7] = {id = 2110307,lv = 150},[8] = {id = 2110308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 224,desc = "daily_gold-34-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 5,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6033430,cardId = 1101997,lv = 150,bklv = 20,star = 2,equip = {[1] = {id = 2010301,lv = 150},[2] = {id = 2010302,lv = 150},[3] = {id = 2010303,lv = 150},[4] = {id = 2010304,lv = 150},[5] = {id = 2010305,lv = 150},[6] = {id = 2010306,lv = 150},[7] = {id = 2010307,lv = 150},[8] = {id = 2010308,lv = 150}},mon = {id = 203,desc = "daily_gold-34-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 5,exert = 21,suffer = 21}},
			shl = {cha = "daily_gold",id = 6033431,cardId = 1102997,lv = 150,bklv = 20,star = 2,ghost = 52,equip = {[1] = {id = 2110301,lv = 150},[2] = {id = 2110302,lv = 150},[3] = {id = 2110303,lv = 150},[4] = {id = 2110304,lv = 150},[5] = {id = 2110305,lv = 150},[6] = {id = 2110306,lv = 150},[7] = {id = 2110307,lv = 150},[8] = {id = 2110308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 233,desc = "daily_gold-34-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 5,exert = 25,suffer = 25}}
		}
	},
	[60335] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6033510,cardId = 1101997,lv = 150,bklv = 20,star = 3,equip = {[1] = {id = 2010401,lv = 150},[2] = {id = 2010402,lv = 150},[3] = {id = 2010403,lv = 150},[4] = {id = 2010404,lv = 150},[5] = {id = 2010405,lv = 150},[6] = {id = 2010406,lv = 150},[7] = {id = 2010407,lv = 150},[8] = {id = 2010408,lv = 150}},mon = {id = 201,desc = "daily_gold-35-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 6,exert = 14,suffer = 21}},
			shl = {cha = "daily_gold",id = 6033511,cardId = 1102997,lv = 150,bklv = 20,star = 3,ghost = 52,equip = {[1] = {id = 2110401,lv = 150},[2] = {id = 2110402,lv = 150},[3] = {id = 2110403,lv = 150},[4] = {id = 2110404,lv = 150},[5] = {id = 2110405,lv = 150},[6] = {id = 2110406,lv = 150},[7] = {id = 2110407,lv = 150},[8] = {id = 2110408,lv = 150}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 4,[6] = 4,[7] = 3,[8] = 2},mon = {id = 222,desc = "daily_gold-35-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 6,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6033520,cardId = 1101997,lv = 150,bklv = 20,star = 2,equip = {[1] = {id = 2010401,lv = 150},[2] = {id = 2010402,lv = 150},[3] = {id = 2010403,lv = 150},[4] = {id = 2010404,lv = 150},[5] = {id = 2010405,lv = 150},[6] = {id = 2010406,lv = 150},[7] = {id = 2010407,lv = 150},[8] = {id = 2010408,lv = 150}},mon = {id = 214,desc = "daily_gold-35-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 6,exert = 14,suffer = 21}},
			shl = {cha = "daily_gold",id = 6033521,cardId = 1102996,lv = 150,bklv = 20,star = 2,ghost = 52,equip = {[1] = {id = 2110401,lv = 150},[2] = {id = 2110402,lv = 150},[3] = {id = 2110403,lv = 150},[4] = {id = 2110404,lv = 150},[5] = {id = 2110405,lv = 150},[6] = {id = 2110406,lv = 150},[7] = {id = 2110407,lv = 150},[8] = {id = 2110408,lv = 150}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 4,[6] = 4,[7] = 3,[8] = 2},mon = {id = 240,desc = "daily_gold-35-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 6,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6033530,cardId = 1101997,lv = 150,bklv = 20,star = 3,equip = {[1] = {id = 2010401,lv = 150},[2] = {id = 2010402,lv = 150},[3] = {id = 2010403,lv = 150},[4] = {id = 2010404,lv = 150},[5] = {id = 2010405,lv = 150},[6] = {id = 2010406,lv = 150},[7] = {id = 2010407,lv = 150},[8] = {id = 2010408,lv = 150}},mon = {id = 203,desc = "daily_gold-35-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 6,exert = 14,suffer = 21}},
			shl = {cha = "daily_gold",id = 6033531,cardId = 1102997,lv = 150,bklv = 20,star = 3,ghost = 52,equip = {[1] = {id = 2110401,lv = 150},[2] = {id = 2110402,lv = 150},[3] = {id = 2110403,lv = 150},[4] = {id = 2110404,lv = 150},[5] = {id = 2110405,lv = 150},[6] = {id = 2110406,lv = 150},[7] = {id = 2110407,lv = 150},[8] = {id = 2110408,lv = 150}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 4,[6] = 4,[7] = 3,[8] = 2},mon = {id = 225,desc = "daily_gold-35-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 6,exert = 18,suffer = 25}}
		}
	},
	[60336] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6033610,cardId = 1101997,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2010411,lv = 150},[2] = {id = 2010412,lv = 150},[3] = {id = 2010413,lv = 150},[4] = {id = 2010404,lv = 150},[5] = {id = 2010415,lv = 150},[6] = {id = 2010406,lv = 150},[7] = {id = 2010417,lv = 150},[8] = {id = 2010418,lv = 150}},mon = {id = 207,desc = "daily_gold-36-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 7,exert = 11,suffer = 21}},
			shl = {cha = "daily_gold",id = 6033611,cardId = 1102997,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2110411,lv = 150},[2] = {id = 2110412,lv = 150},[3] = {id = 2110413,lv = 150},[4] = {id = 2110404,lv = 150},[5] = {id = 2110415,lv = 150},[6] = {id = 2110406,lv = 150},[7] = {id = 2110417,lv = 150},[8] = {id = 2110418,lv = 150}},exWeapon = {[1] = 8,[2] = 8,[3] = 6,[4] = 6,[5] = 5,[6] = 5,[7] = 4,[8] = 3},mon = {id = 232,desc = "daily_gold-36-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 7,exert = 15,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6033620,cardId = 1101997,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2010411,lv = 150},[2] = {id = 2010412,lv = 150},[3] = {id = 2010413,lv = 150},[4] = {id = 2010404,lv = 150},[5] = {id = 2010415,lv = 150},[6] = {id = 2010406,lv = 150},[7] = {id = 2010417,lv = 150},[8] = {id = 2010418,lv = 150}},mon = {id = 205,desc = "daily_gold-36-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 7,exert = 11,suffer = 21}},
			shl = {cha = "daily_gold",id = 6033621,cardId = 1102996,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2110411,lv = 150},[2] = {id = 2110412,lv = 150},[3] = {id = 2110413,lv = 150},[4] = {id = 2110404,lv = 150},[5] = {id = 2110415,lv = 150},[6] = {id = 2110406,lv = 150},[7] = {id = 2110417,lv = 150},[8] = {id = 2110418,lv = 150}},exWeapon = {[1] = 8,[2] = 8,[3] = 6,[4] = 6,[5] = 5,[6] = 5,[7] = 4,[8] = 3},mon = {id = 221,desc = "daily_gold-36-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 7,exert = 15,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6033630,cardId = 1101997,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2010411,lv = 150},[2] = {id = 2010412,lv = 150},[3] = {id = 2010413,lv = 150},[4] = {id = 2010404,lv = 150},[5] = {id = 2010415,lv = 150},[6] = {id = 2010406,lv = 150},[7] = {id = 2010417,lv = 150},[8] = {id = 2010418,lv = 150}},mon = {id = 204,desc = "daily_gold-36-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 7,exert = 11,suffer = 21}},
			shl = {cha = "daily_gold",id = 6033631,cardId = 1102997,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2110411,lv = 150},[2] = {id = 2110412,lv = 150},[3] = {id = 2110413,lv = 150},[4] = {id = 2110404,lv = 150},[5] = {id = 2110415,lv = 150},[6] = {id = 2110406,lv = 150},[7] = {id = 2110417,lv = 150},[8] = {id = 2110418,lv = 150}},exWeapon = {[1] = 8,[2] = 8,[3] = 6,[4] = 6,[5] = 5,[6] = 5,[7] = 4,[8] = 3},mon = {id = 226,desc = "daily_gold-36-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 7,exert = 15,suffer = 25}}
		}
	},
	[60401] = {
		[1] = {
			jlr = {cha = "daily_relic",id = 6040110,cardId = 1101999,lv = 45,bklv = 6,star = 1,equip = {[1] = {id = 2002301,lv = 45},[2] = {id = 2002302,lv = 45},[3] = {id = 2002303,lv = 45},[4] = {id = 2002304,lv = 45},[5] = {id = 2002305,lv = 45},[6] = {id = 2002306,lv = 45},[7] = {id = 2002307,lv = 45},[8] = {id = 2002308,lv = 45}},mon = {id = 201,desc = "daily_relic-1-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_relic",id = 6040111,cardId = 1102999,lv = 45,bklv = 7,star = 1,ghost = 11,equip = {[1] = {id = 2102301,lv = 45},[2] = {id = 2102302,lv = 45},[3] = {id = 2102303,lv = 45},[4] = {id = 2102304,lv = 45},[5] = {id = 2102305,lv = 45},[6] = {id = 2102306,lv = 45},[7] = {id = 2102307,lv = 45},[8] = {id = 2102308,lv = 45}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 235,desc = "daily_relic-1-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_relic",id = 6040120,cardId = 1101998,lv = 45,bklv = 6,star = 1,equip = {[1] = {id = 2002301,lv = 45},[2] = {id = 2002302,lv = 45},[3] = {id = 2002303,lv = 45},[4] = {id = 2002304,lv = 45},[5] = {id = 2002305,lv = 45},[6] = {id = 2002306,lv = 45},[7] = {id = 2002307,lv = 45},[8] = {id = 2002308,lv = 45}},mon = {id = 202,desc = "daily_relic-1-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_relic",id = 6040121,cardId = 1102998,lv = 45,bklv = 7,star = 1,ghost = 11,equip = {[1] = {id = 2102301,lv = 45},[2] = {id = 2102302,lv = 45},[3] = {id = 2102303,lv = 45},[4] = {id = 2102304,lv = 45},[5] = {id = 2102305,lv = 45},[6] = {id = 2102306,lv = 45},[7] = {id = 2102307,lv = 45},[8] = {id = 2102308,lv = 45}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 224,desc = "daily_relic-1-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_relic",id = 6040130,cardId = 1101999,lv = 45,bklv = 6,star = 1,equip = {[1] = {id = 2002301,lv = 45},[2] = {id = 2002302,lv = 45},[3] = {id = 2002303,lv = 45},[4] = {id = 2002304,lv = 45},[5] = {id = 2002305,lv = 45},[6] = {id = 2002306,lv = 45},[7] = {id = 2002307,lv = 45},[8] = {id = 2002308,lv = 45}},mon = {id = 203,desc = "daily_relic-1-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_relic",id = 6040131,cardId = 1102999,lv = 45,bklv = 7,star = 1,ghost = 11,equip = {[1] = {id = 2102301,lv = 45},[2] = {id = 2102302,lv = 45},[3] = {id = 2102303,lv = 45},[4] = {id = 2102304,lv = 45},[5] = {id = 2102305,lv = 45},[6] = {id = 2102306,lv = 45},[7] = {id = 2102307,lv = 45},[8] = {id = 2102308,lv = 45}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 233,desc = "daily_relic-1-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		}
	},
	[60402] = {
		[1] = {
			jlr = {cha = "daily_relic",id = 6040210,cardId = 1101999,lv = 65,bklv = 9,star = 1,equip = {[1] = {id = 2003301,lv = 65},[2] = {id = 2003302,lv = 65},[3] = {id = 2003303,lv = 65},[4] = {id = 2003304,lv = 65},[5] = {id = 2003305,lv = 65},[6] = {id = 2003306,lv = 65},[7] = {id = 2003307,lv = 65},[8] = {id = 2003308,lv = 65}},mon = {id = 201,desc = "daily_relic-2-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_relic",id = 6040211,cardId = 1102999,lv = 65,bklv = 11,star = 1,ghost = 19,equip = {[1] = {id = 2103301,lv = 65},[2] = {id = 2103302,lv = 65},[3] = {id = 2103303,lv = 65},[4] = {id = 2103304,lv = 65},[5] = {id = 2103305,lv = 65},[6] = {id = 2103306,lv = 65},[7] = {id = 2103307,lv = 65},[8] = {id = 2103308,lv = 65}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 222,desc = "daily_relic-2-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_relic",id = 6040220,cardId = 1101998,lv = 65,bklv = 9,star = 1,equip = {[1] = {id = 2003301,lv = 65},[2] = {id = 2003302,lv = 65},[3] = {id = 2003303,lv = 65},[4] = {id = 2003304,lv = 65},[5] = {id = 2003305,lv = 65},[6] = {id = 2003306,lv = 65},[7] = {id = 2003307,lv = 65},[8] = {id = 2003308,lv = 65}},mon = {id = 214,desc = "daily_relic-2-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_relic",id = 6040221,cardId = 1102998,lv = 65,bklv = 11,star = 1,ghost = 19,equip = {[1] = {id = 2103301,lv = 65},[2] = {id = 2103302,lv = 65},[3] = {id = 2103303,lv = 65},[4] = {id = 2103304,lv = 65},[5] = {id = 2103305,lv = 65},[6] = {id = 2103306,lv = 65},[7] = {id = 2103307,lv = 65},[8] = {id = 2103308,lv = 65}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 240,desc = "daily_relic-2-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_relic",id = 6040230,cardId = 1101999,lv = 65,bklv = 9,star = 1,equip = {[1] = {id = 2003301,lv = 65},[2] = {id = 2003302,lv = 65},[3] = {id = 2003303,lv = 65},[4] = {id = 2003304,lv = 65},[5] = {id = 2003305,lv = 65},[6] = {id = 2003306,lv = 65},[7] = {id = 2003307,lv = 65},[8] = {id = 2003308,lv = 65}},mon = {id = 203,desc = "daily_relic-2-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_relic",id = 6040231,cardId = 1102999,lv = 65,bklv = 11,star = 1,ghost = 19,equip = {[1] = {id = 2103301,lv = 65},[2] = {id = 2103302,lv = 65},[3] = {id = 2103303,lv = 65},[4] = {id = 2103304,lv = 65},[5] = {id = 2103305,lv = 65},[6] = {id = 2103306,lv = 65},[7] = {id = 2103307,lv = 65},[8] = {id = 2103308,lv = 65}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 225,desc = "daily_relic-2-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		}
	},
	[60403] = {
		[1] = {
			jlr = {cha = "daily_relic",id = 6040310,cardId = 1101998,lv = 65,bklv = 9,star = 1,equip = {[1] = {id = 2003401,lv = 65},[2] = {id = 2003402,lv = 65},[3] = {id = 2003403,lv = 65},[4] = {id = 2003404,lv = 65},[5] = {id = 2003405,lv = 65},[6] = {id = 2003406,lv = 65},[7] = {id = 2003407,lv = 65},[8] = {id = 2003408,lv = 65}},mon = {id = 207,desc = "daily_relic-3-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 2,exert = 14,suffer = 21}},
			shl = {cha = "daily_relic",id = 6040311,cardId = 1102998,lv = 65,bklv = 11,star = 1,ghost = 19,equip = {[1] = {id = 2103401,lv = 65},[2] = {id = 2103402,lv = 65},[3] = {id = 2103403,lv = 65},[4] = {id = 2103404,lv = 65},[5] = {id = 2103405,lv = 65},[6] = {id = 2103406,lv = 65},[7] = {id = 2103407,lv = 65},[8] = {id = 2103408,lv = 65}},exWeapon = {[1] = 5,[2] = 2,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 232,desc = "daily_relic-3-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 2,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_relic",id = 6040320,cardId = 1101998,lv = 65,bklv = 9,star = 1,equip = {[1] = {id = 2003401,lv = 65},[2] = {id = 2003402,lv = 65},[3] = {id = 2003403,lv = 65},[4] = {id = 2003404,lv = 65},[5] = {id = 2003405,lv = 65},[6] = {id = 2003406,lv = 65},[7] = {id = 2003407,lv = 65},[8] = {id = 2003408,lv = 65}},mon = {id = 205,desc = "daily_relic-3-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 2,exert = 14,suffer = 21}},
			shl = {cha = "daily_relic",id = 6040321,cardId = 1102998,lv = 65,bklv = 11,star = 1,ghost = 19,equip = {[1] = {id = 2103401,lv = 65},[2] = {id = 2103402,lv = 65},[3] = {id = 2103403,lv = 65},[4] = {id = 2103404,lv = 65},[5] = {id = 2103405,lv = 65},[6] = {id = 2103406,lv = 65},[7] = {id = 2103407,lv = 65},[8] = {id = 2103408,lv = 65}},exWeapon = {[1] = 5,[2] = 2,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 221,desc = "daily_relic-3-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 2,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_relic",id = 6040330,cardId = 1101998,lv = 65,bklv = 9,star = 1,equip = {[1] = {id = 2003401,lv = 65},[2] = {id = 2003402,lv = 65},[3] = {id = 2003403,lv = 65},[4] = {id = 2003404,lv = 65},[5] = {id = 2003405,lv = 65},[6] = {id = 2003406,lv = 65},[7] = {id = 2003407,lv = 65},[8] = {id = 2003408,lv = 65}},mon = {id = 204,desc = "daily_relic-3-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 2,exert = 14,suffer = 21}},
			shl = {cha = "daily_relic",id = 6040331,cardId = 1102998,lv = 65,bklv = 11,star = 1,ghost = 19,equip = {[1] = {id = 2103401,lv = 65},[2] = {id = 2103402,lv = 65},[3] = {id = 2103403,lv = 65},[4] = {id = 2103404,lv = 65},[5] = {id = 2103405,lv = 65},[6] = {id = 2103406,lv = 65},[7] = {id = 2103407,lv = 65},[8] = {id = 2103408,lv = 65}},exWeapon = {[1] = 5,[2] = 2,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 226,desc = "daily_relic-3-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 2,exert = 18,suffer = 25}}
		}
	},
	[60404] = {
		[1] = {
			jlr = {cha = "daily_relic",id = 6040410,cardId = 1101999,lv = 85,bklv = 12,star = 2,equip = {[1] = {id = 2004301,lv = 85},[2] = {id = 2004302,lv = 85},[3] = {id = 2004303,lv = 85},[4] = {id = 2004304,lv = 85},[5] = {id = 2004305,lv = 85},[6] = {id = 2004306,lv = 85},[7] = {id = 2004307,lv = 85},[8] = {id = 2004308,lv = 85}},mon = {id = 201,desc = "daily_relic-4-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_relic",id = 6040411,cardId = 1102999,lv = 85,bklv = 13,star = 2,ghost = 27,equip = {[1] = {id = 2104301,lv = 85},[2] = {id = 2104302,lv = 85},[3] = {id = 2104303,lv = 85},[4] = {id = 2104304,lv = 85},[5] = {id = 2104305,lv = 85},[6] = {id = 2104306,lv = 85},[7] = {id = 2104307,lv = 85},[8] = {id = 2104308,lv = 85}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 235,desc = "daily_relic-4-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_relic",id = 6040420,cardId = 1101998,lv = 85,bklv = 12,star = 1,equip = {[1] = {id = 2004301,lv = 85},[2] = {id = 2004302,lv = 85},[3] = {id = 2004303,lv = 85},[4] = {id = 2004304,lv = 85},[5] = {id = 2004305,lv = 85},[6] = {id = 2004306,lv = 85},[7] = {id = 2004307,lv = 85},[8] = {id = 2004308,lv = 85}},mon = {id = 202,desc = "daily_relic-4-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_relic",id = 6040421,cardId = 1102998,lv = 85,bklv = 13,star = 1,ghost = 27,equip = {[1] = {id = 2104301,lv = 85},[2] = {id = 2104302,lv = 85},[3] = {id = 2104303,lv = 85},[4] = {id = 2104304,lv = 85},[5] = {id = 2104305,lv = 85},[6] = {id = 2104306,lv = 85},[7] = {id = 2104307,lv = 85},[8] = {id = 2104308,lv = 85}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 224,desc = "daily_relic-4-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_relic",id = 6040430,cardId = 1101999,lv = 85,bklv = 12,star = 2,equip = {[1] = {id = 2004301,lv = 85},[2] = {id = 2004302,lv = 85},[3] = {id = 2004303,lv = 85},[4] = {id = 2004304,lv = 85},[5] = {id = 2004305,lv = 85},[6] = {id = 2004306,lv = 85},[7] = {id = 2004307,lv = 85},[8] = {id = 2004308,lv = 85}},mon = {id = 203,desc = "daily_relic-4-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_relic",id = 6040431,cardId = 1102999,lv = 85,bklv = 13,star = 2,ghost = 27,equip = {[1] = {id = 2104301,lv = 85},[2] = {id = 2104302,lv = 85},[3] = {id = 2104303,lv = 85},[4] = {id = 2104304,lv = 85},[5] = {id = 2104305,lv = 85},[6] = {id = 2104306,lv = 85},[7] = {id = 2104307,lv = 85},[8] = {id = 2104308,lv = 85}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 233,desc = "daily_relic-4-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		}
	},
	[60405] = {
		[1] = {
			jlr = {cha = "daily_relic",id = 6040510,cardId = 1101998,lv = 85,bklv = 12,star = 2,equip = {[1] = {id = 2004401,lv = 85},[2] = {id = 2004402,lv = 85},[3] = {id = 2004403,lv = 85},[4] = {id = 2004404,lv = 85},[5] = {id = 2004405,lv = 85},[6] = {id = 2004406,lv = 85},[7] = {id = 2004407,lv = 85},[8] = {id = 2004408,lv = 85}},mon = {id = 201,desc = "daily_relic-5-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 2,exert = 14,suffer = 21}},
			shl = {cha = "daily_relic",id = 6040511,cardId = 1102998,lv = 85,bklv = 13,star = 2,ghost = 27,equip = {[1] = {id = 2104401,lv = 85},[2] = {id = 2104402,lv = 85},[3] = {id = 2104403,lv = 85},[4] = {id = 2104404,lv = 85},[5] = {id = 2104405,lv = 85},[6] = {id = 2104406,lv = 85},[7] = {id = 2104407,lv = 85},[8] = {id = 2104408,lv = 85}},exWeapon = {[1] = 6,[2] = 5,[3] = 4,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 222,desc = "daily_relic-5-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 2,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_relic",id = 6040520,cardId = 1101997,lv = 85,bklv = 12,star = 1,equip = {[1] = {id = 2004401,lv = 85},[2] = {id = 2004402,lv = 85},[3] = {id = 2004403,lv = 85},[4] = {id = 2004404,lv = 85},[5] = {id = 2004405,lv = 85},[6] = {id = 2004406,lv = 85},[7] = {id = 2004407,lv = 85},[8] = {id = 2004408,lv = 85}},mon = {id = 214,desc = "daily_relic-5-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 2,exert = 14,suffer = 21}},
			shl = {cha = "daily_relic",id = 6040521,cardId = 1102997,lv = 85,bklv = 13,star = 1,ghost = 27,equip = {[1] = {id = 2104401,lv = 85},[2] = {id = 2104402,lv = 85},[3] = {id = 2104403,lv = 85},[4] = {id = 2104404,lv = 85},[5] = {id = 2104405,lv = 85},[6] = {id = 2104406,lv = 85},[7] = {id = 2104407,lv = 85},[8] = {id = 2104408,lv = 85}},exWeapon = {[1] = 6,[2] = 5,[3] = 4,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 240,desc = "daily_relic-5-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 2,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_relic",id = 6040530,cardId = 1101998,lv = 85,bklv = 12,star = 2,equip = {[1] = {id = 2004401,lv = 85},[2] = {id = 2004402,lv = 85},[3] = {id = 2004403,lv = 85},[4] = {id = 2004404,lv = 85},[5] = {id = 2004405,lv = 85},[6] = {id = 2004406,lv = 85},[7] = {id = 2004407,lv = 85},[8] = {id = 2004408,lv = 85}},mon = {id = 203,desc = "daily_relic-5-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 2,exert = 14,suffer = 21}},
			shl = {cha = "daily_relic",id = 6040531,cardId = 1102998,lv = 85,bklv = 13,star = 2,ghost = 27,equip = {[1] = {id = 2104401,lv = 85},[2] = {id = 2104402,lv = 85},[3] = {id = 2104403,lv = 85},[4] = {id = 2104404,lv = 85},[5] = {id = 2104405,lv = 85},[6] = {id = 2104406,lv = 85},[7] = {id = 2104407,lv = 85},[8] = {id = 2104408,lv = 85}},exWeapon = {[1] = 6,[2] = 5,[3] = 4,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 225,desc = "daily_relic-5-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 2,exert = 18,suffer = 25}}
		}
	},
	[60406] = {
		[1] = {
			jlr = {cha = "daily_relic",id = 6040610,cardId = 1101997,lv = 85,bklv = 12,star = 2,equip = {[1] = {id = 2004421,lv = 85},[2] = {id = 2004422,lv = 85},[3] = {id = 2004423,lv = 85},[4] = {id = 2004404,lv = 85},[5] = {id = 2004425,lv = 85},[6] = {id = 2004406,lv = 85},[7] = {id = 2004427,lv = 85},[8] = {id = 2004428,lv = 85}},mon = {id = 207,desc = "daily_relic-6-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 3,exert = 11,suffer = 21}},
			shl = {cha = "daily_relic",id = 6040611,cardId = 1102997,lv = 85,bklv = 13,star = 2,ghost = 27,equip = {[1] = {id = 2104421,lv = 85},[2] = {id = 2104422,lv = 85},[3] = {id = 2104423,lv = 85},[4] = {id = 2104404,lv = 85},[5] = {id = 2104425,lv = 85},[6] = {id = 2104406,lv = 85},[7] = {id = 2104427,lv = 85},[8] = {id = 2104428,lv = 85}},exWeapon = {[1] = 7,[2] = 6,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 232,desc = "daily_relic-6-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 3,exert = 15,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_relic",id = 6040620,cardId = 1101997,lv = 85,bklv = 12,star = 2,equip = {[1] = {id = 2004421,lv = 85},[2] = {id = 2004422,lv = 85},[3] = {id = 2004423,lv = 85},[4] = {id = 2004404,lv = 85},[5] = {id = 2004425,lv = 85},[6] = {id = 2004406,lv = 85},[7] = {id = 2004427,lv = 85},[8] = {id = 2004428,lv = 85}},mon = {id = 205,desc = "daily_relic-6-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 3,exert = 11,suffer = 21}},
			shl = {cha = "daily_relic",id = 6040621,cardId = 1102997,lv = 85,bklv = 13,star = 2,ghost = 27,equip = {[1] = {id = 2104421,lv = 85},[2] = {id = 2104422,lv = 85},[3] = {id = 2104423,lv = 85},[4] = {id = 2104404,lv = 85},[5] = {id = 2104425,lv = 85},[6] = {id = 2104406,lv = 85},[7] = {id = 2104427,lv = 85},[8] = {id = 2104428,lv = 85}},exWeapon = {[1] = 7,[2] = 6,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 221,desc = "daily_relic-6-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 3,exert = 15,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_relic",id = 6040630,cardId = 1101997,lv = 85,bklv = 12,star = 2,equip = {[1] = {id = 2004421,lv = 85},[2] = {id = 2004422,lv = 85},[3] = {id = 2004423,lv = 85},[4] = {id = 2004404,lv = 85},[5] = {id = 2004425,lv = 85},[6] = {id = 2004406,lv = 85},[7] = {id = 2004427,lv = 85},[8] = {id = 2004428,lv = 85}},mon = {id = 204,desc = "daily_relic-6-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 3,exert = 11,suffer = 21}},
			shl = {cha = "daily_relic",id = 6040631,cardId = 1102997,lv = 85,bklv = 13,star = 2,ghost = 27,equip = {[1] = {id = 2104421,lv = 85},[2] = {id = 2104422,lv = 85},[3] = {id = 2104423,lv = 85},[4] = {id = 2104404,lv = 85},[5] = {id = 2104425,lv = 85},[6] = {id = 2104406,lv = 85},[7] = {id = 2104427,lv = 85},[8] = {id = 2104428,lv = 85}},exWeapon = {[1] = 7,[2] = 6,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 226,desc = "daily_relic-6-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 3,exert = 15,suffer = 25}}
		}
	},
	[60407] = {
		[1] = {
			jlr = {cha = "daily_relic",id = 6040710,cardId = 1101999,lv = 95,bklv = 13,star = 2,equip = {[1] = {id = 2005301,lv = 95},[2] = {id = 2005302,lv = 95},[3] = {id = 2005303,lv = 95},[4] = {id = 2005304,lv = 95},[5] = {id = 2005305,lv = 95},[6] = {id = 2005306,lv = 95},[7] = {id = 2005307,lv = 95},[8] = {id = 2005308,lv = 95}},mon = {id = 201,desc = "daily_relic-7-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 2,exert = 21,suffer = 21}},
			shl = {cha = "daily_relic",id = 6040711,cardId = 1102999,lv = 95,bklv = 15,star = 2,ghost = 31,equip = {[1] = {id = 2105301,lv = 95},[2] = {id = 2105302,lv = 95},[3] = {id = 2105303,lv = 95},[4] = {id = 2105304,lv = 95},[5] = {id = 2105305,lv = 95},[6] = {id = 2105306,lv = 95},[7] = {id = 2105307,lv = 95},[8] = {id = 2105308,lv = 95}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 235,desc = "daily_relic-7-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 2,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_relic",id = 6040720,cardId = 1101998,lv = 95,bklv = 13,star = 2,equip = {[1] = {id = 2005301,lv = 95},[2] = {id = 2005302,lv = 95},[3] = {id = 2005303,lv = 95},[4] = {id = 2005304,lv = 95},[5] = {id = 2005305,lv = 95},[6] = {id = 2005306,lv = 95},[7] = {id = 2005307,lv = 95},[8] = {id = 2005308,lv = 95}},mon = {id = 202,desc = "daily_relic-7-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 2,exert = 21,suffer = 21}},
			shl = {cha = "daily_relic",id = 6040721,cardId = 1102998,lv = 95,bklv = 15,star = 2,ghost = 31,equip = {[1] = {id = 2105301,lv = 95},[2] = {id = 2105302,lv = 95},[3] = {id = 2105303,lv = 95},[4] = {id = 2105304,lv = 95},[5] = {id = 2105305,lv = 95},[6] = {id = 2105306,lv = 95},[7] = {id = 2105307,lv = 95},[8] = {id = 2105308,lv = 95}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 224,desc = "daily_relic-7-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 2,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_relic",id = 6040730,cardId = 1101999,lv = 95,bklv = 13,star = 2,equip = {[1] = {id = 2005301,lv = 95},[2] = {id = 2005302,lv = 95},[3] = {id = 2005303,lv = 95},[4] = {id = 2005304,lv = 95},[5] = {id = 2005305,lv = 95},[6] = {id = 2005306,lv = 95},[7] = {id = 2005307,lv = 95},[8] = {id = 2005308,lv = 95}},mon = {id = 203,desc = "daily_relic-7-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 2,exert = 21,suffer = 21}},
			shl = {cha = "daily_relic",id = 6040731,cardId = 1102999,lv = 95,bklv = 15,star = 2,ghost = 31,equip = {[1] = {id = 2105301,lv = 95},[2] = {id = 2105302,lv = 95},[3] = {id = 2105303,lv = 95},[4] = {id = 2105304,lv = 95},[5] = {id = 2105305,lv = 95},[6] = {id = 2105306,lv = 95},[7] = {id = 2105307,lv = 95},[8] = {id = 2105308,lv = 95}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 233,desc = "daily_relic-7-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 2,exert = 25,suffer = 25}}
		}
	},
	[60408] = {
		[1] = {
			jlr = {cha = "daily_relic",id = 6040810,cardId = 1101998,lv = 95,bklv = 13,star = 2,equip = {[1] = {id = 2005401,lv = 95},[2] = {id = 2005402,lv = 95},[3] = {id = 2005403,lv = 95},[4] = {id = 2005404,lv = 95},[5] = {id = 2005405,lv = 95},[6] = {id = 2005406,lv = 95},[7] = {id = 2005407,lv = 95},[8] = {id = 2005408,lv = 95}},mon = {id = 201,desc = "daily_relic-8-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 3,exert = 14,suffer = 21}},
			shl = {cha = "daily_relic",id = 6040811,cardId = 1102998,lv = 95,bklv = 15,star = 2,ghost = 31,equip = {[1] = {id = 2105401,lv = 95},[2] = {id = 2105402,lv = 95},[3] = {id = 2105403,lv = 95},[4] = {id = 2105404,lv = 95},[5] = {id = 2105405,lv = 95},[6] = {id = 2105406,lv = 95},[7] = {id = 2105407,lv = 95},[8] = {id = 2105408,lv = 95}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 2,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 222,desc = "daily_relic-8-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 3,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_relic",id = 6040820,cardId = 1101997,lv = 95,bklv = 13,star = 2,equip = {[1] = {id = 2005401,lv = 95},[2] = {id = 2005402,lv = 95},[3] = {id = 2005403,lv = 95},[4] = {id = 2005404,lv = 95},[5] = {id = 2005405,lv = 95},[6] = {id = 2005406,lv = 95},[7] = {id = 2005407,lv = 95},[8] = {id = 2005408,lv = 95}},mon = {id = 214,desc = "daily_relic-8-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 3,exert = 14,suffer = 21}},
			shl = {cha = "daily_relic",id = 6040821,cardId = 1102997,lv = 95,bklv = 15,star = 2,ghost = 31,equip = {[1] = {id = 2105401,lv = 95},[2] = {id = 2105402,lv = 95},[3] = {id = 2105403,lv = 95},[4] = {id = 2105404,lv = 95},[5] = {id = 2105405,lv = 95},[6] = {id = 2105406,lv = 95},[7] = {id = 2105407,lv = 95},[8] = {id = 2105408,lv = 95}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 2,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 240,desc = "daily_relic-8-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 3,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_relic",id = 6040830,cardId = 1101998,lv = 95,bklv = 13,star = 2,equip = {[1] = {id = 2005401,lv = 95},[2] = {id = 2005402,lv = 95},[3] = {id = 2005403,lv = 95},[4] = {id = 2005404,lv = 95},[5] = {id = 2005405,lv = 95},[6] = {id = 2005406,lv = 95},[7] = {id = 2005407,lv = 95},[8] = {id = 2005408,lv = 95}},mon = {id = 203,desc = "daily_relic-8-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 3,exert = 14,suffer = 21}},
			shl = {cha = "daily_relic",id = 6040831,cardId = 1102998,lv = 95,bklv = 15,star = 2,ghost = 31,equip = {[1] = {id = 2105401,lv = 95},[2] = {id = 2105402,lv = 95},[3] = {id = 2105403,lv = 95},[4] = {id = 2105404,lv = 95},[5] = {id = 2105405,lv = 95},[6] = {id = 2105406,lv = 95},[7] = {id = 2105407,lv = 95},[8] = {id = 2105408,lv = 95}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 2,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 225,desc = "daily_relic-8-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 3,exert = 18,suffer = 25}}
		}
	},
	[60409] = {
		[1] = {
			jlr = {cha = "daily_relic",id = 6040910,cardId = 1101997,lv = 95,bklv = 13,star = 2,equip = {[1] = {id = 2005421,lv = 95},[2] = {id = 2005422,lv = 95},[3] = {id = 2005423,lv = 95},[4] = {id = 2005434,lv = 95},[5] = {id = 2005425,lv = 95},[6] = {id = 2005436,lv = 95},[7] = {id = 2005407,lv = 95},[8] = {id = 2005408,lv = 95}},mon = {id = 207,desc = "daily_relic-9-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 4,exert = 11,suffer = 21}},
			shl = {cha = "daily_relic",id = 6040911,cardId = 1102997,lv = 95,bklv = 15,star = 2,ghost = 31,equip = {[1] = {id = 2105421,lv = 95},[2] = {id = 2105432,lv = 95},[3] = {id = 2105423,lv = 95},[4] = {id = 2105434,lv = 95},[5] = {id = 2105425,lv = 95},[6] = {id = 2105436,lv = 95},[7] = {id = 2105407,lv = 95},[8] = {id = 2105408,lv = 95}},exWeapon = {[1] = 8,[2] = 7,[3] = 6,[4] = 3,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 232,desc = "daily_relic-9-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 4,exert = 15,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_relic",id = 6040920,cardId = 1101997,lv = 95,bklv = 13,star = 2,equip = {[1] = {id = 2005421,lv = 95},[2] = {id = 2005422,lv = 95},[3] = {id = 2005423,lv = 95},[4] = {id = 2005434,lv = 95},[5] = {id = 2005425,lv = 95},[6] = {id = 2005436,lv = 95},[7] = {id = 2005407,lv = 95},[8] = {id = 2005408,lv = 95}},mon = {id = 205,desc = "daily_relic-9-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 4,exert = 11,suffer = 21}},
			shl = {cha = "daily_relic",id = 6040921,cardId = 1102996,lv = 95,bklv = 15,star = 1,ghost = 31,equip = {[1] = {id = 2105421,lv = 95},[2] = {id = 2105432,lv = 95},[3] = {id = 2105423,lv = 95},[4] = {id = 2105434,lv = 95},[5] = {id = 2105425,lv = 95},[6] = {id = 2105436,lv = 95},[7] = {id = 2105407,lv = 95},[8] = {id = 2105408,lv = 95}},exWeapon = {[1] = 8,[2] = 7,[3] = 6,[4] = 3,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 221,desc = "daily_relic-9-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 4,exert = 15,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_relic",id = 6040930,cardId = 1101997,lv = 95,bklv = 13,star = 2,equip = {[1] = {id = 2005421,lv = 95},[2] = {id = 2005422,lv = 95},[3] = {id = 2005423,lv = 95},[4] = {id = 2005434,lv = 95},[5] = {id = 2005425,lv = 95},[6] = {id = 2005436,lv = 95},[7] = {id = 2005407,lv = 95},[8] = {id = 2005408,lv = 95}},mon = {id = 204,desc = "daily_relic-9-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 4,exert = 11,suffer = 21}},
			shl = {cha = "daily_relic",id = 6040931,cardId = 1102997,lv = 95,bklv = 15,star = 2,ghost = 31,equip = {[1] = {id = 2105421,lv = 95},[2] = {id = 2105432,lv = 95},[3] = {id = 2105423,lv = 95},[4] = {id = 2105434,lv = 95},[5] = {id = 2105425,lv = 95},[6] = {id = 2105436,lv = 95},[7] = {id = 2105407,lv = 95},[8] = {id = 2105408,lv = 95}},exWeapon = {[1] = 8,[2] = 7,[3] = 6,[4] = 3,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 226,desc = "daily_relic-9-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 4,exert = 15,suffer = 25}}
		}
	},
	[60410] = {
		[1] = {
			jlr = {cha = "daily_relic",id = 6041010,cardId = 1101999,lv = 105,bklv = 14,star = 3,equip = {[1] = {id = 2006301,lv = 105},[2] = {id = 2006302,lv = 105},[3] = {id = 2006303,lv = 105},[4] = {id = 2006304,lv = 105},[5] = {id = 2006305,lv = 105},[6] = {id = 2006306,lv = 105},[7] = {id = 2006307,lv = 105},[8] = {id = 2006308,lv = 105}},mon = {id = 201,desc = "daily_relic-10-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 3,exert = 21,suffer = 21}},
			shl = {cha = "daily_relic",id = 6041011,cardId = 1102999,lv = 105,bklv = 16,star = 3,ghost = 35,equip = {[1] = {id = 2106301,lv = 105},[2] = {id = 2106302,lv = 105},[3] = {id = 2106303,lv = 105},[4] = {id = 2106304,lv = 105},[5] = {id = 2106305,lv = 105},[6] = {id = 2106306,lv = 105},[7] = {id = 2106307,lv = 105},[8] = {id = 2106308,lv = 105}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 235,desc = "daily_relic-10-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 3,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_relic",id = 6041020,cardId = 1101998,lv = 105,bklv = 14,star = 2,equip = {[1] = {id = 2006301,lv = 105},[2] = {id = 2006302,lv = 105},[3] = {id = 2006303,lv = 105},[4] = {id = 2006304,lv = 105},[5] = {id = 2006305,lv = 105},[6] = {id = 2006306,lv = 105},[7] = {id = 2006307,lv = 105},[8] = {id = 2006308,lv = 105}},mon = {id = 202,desc = "daily_relic-10-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 3,exert = 21,suffer = 21}},
			shl = {cha = "daily_relic",id = 6041021,cardId = 1102998,lv = 105,bklv = 16,star = 2,ghost = 35,equip = {[1] = {id = 2106301,lv = 105},[2] = {id = 2106302,lv = 105},[3] = {id = 2106303,lv = 105},[4] = {id = 2106304,lv = 105},[5] = {id = 2106305,lv = 105},[6] = {id = 2106306,lv = 105},[7] = {id = 2106307,lv = 105},[8] = {id = 2106308,lv = 105}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 224,desc = "daily_relic-10-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 3,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_relic",id = 6041030,cardId = 1101999,lv = 105,bklv = 14,star = 3,equip = {[1] = {id = 2006301,lv = 105},[2] = {id = 2006302,lv = 105},[3] = {id = 2006303,lv = 105},[4] = {id = 2006304,lv = 105},[5] = {id = 2006305,lv = 105},[6] = {id = 2006306,lv = 105},[7] = {id = 2006307,lv = 105},[8] = {id = 2006308,lv = 105}},mon = {id = 203,desc = "daily_relic-10-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 3,exert = 21,suffer = 21}},
			shl = {cha = "daily_relic",id = 6041031,cardId = 1102999,lv = 105,bklv = 16,star = 3,ghost = 35,equip = {[1] = {id = 2106301,lv = 105},[2] = {id = 2106302,lv = 105},[3] = {id = 2106303,lv = 105},[4] = {id = 2106304,lv = 105},[5] = {id = 2106305,lv = 105},[6] = {id = 2106306,lv = 105},[7] = {id = 2106307,lv = 105},[8] = {id = 2106308,lv = 105}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 233,desc = "daily_relic-10-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 3,exert = 25,suffer = 25}}
		}
	},
	[60411] = {
		[1] = {
			jlr = {cha = "daily_relic",id = 6041110,cardId = 1101998,lv = 105,bklv = 14,star = 3,equip = {[1] = {id = 2006401,lv = 105},[2] = {id = 2006402,lv = 105},[3] = {id = 2006403,lv = 105},[4] = {id = 2006404,lv = 105},[5] = {id = 2006405,lv = 105},[6] = {id = 2006406,lv = 105},[7] = {id = 2006407,lv = 105},[8] = {id = 2006408,lv = 105}},mon = {id = 201,desc = "daily_relic-11-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "daily_relic",id = 6041111,cardId = 1102998,lv = 105,bklv = 16,star = 3,ghost = 35,equip = {[1] = {id = 2106401,lv = 105},[2] = {id = 2106402,lv = 105},[3] = {id = 2106403,lv = 105},[4] = {id = 2106404,lv = 105},[5] = {id = 2106405,lv = 105},[6] = {id = 2106406,lv = 105},[7] = {id = 2106407,lv = 105},[8] = {id = 2106408,lv = 105}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 1,[6] = 0,[7] = 0,[8] = 0},mon = {id = 222,desc = "daily_relic-11-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_relic",id = 6041120,cardId = 1101997,lv = 105,bklv = 14,star = 2,equip = {[1] = {id = 2006401,lv = 105},[2] = {id = 2006402,lv = 105},[3] = {id = 2006403,lv = 105},[4] = {id = 2006404,lv = 105},[5] = {id = 2006405,lv = 105},[6] = {id = 2006406,lv = 105},[7] = {id = 2006407,lv = 105},[8] = {id = 2006408,lv = 105}},mon = {id = 214,desc = "daily_relic-11-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "daily_relic",id = 6041121,cardId = 1102997,lv = 105,bklv = 16,star = 2,ghost = 35,equip = {[1] = {id = 2106401,lv = 105},[2] = {id = 2106402,lv = 105},[3] = {id = 2106403,lv = 105},[4] = {id = 2106404,lv = 105},[5] = {id = 2106405,lv = 105},[6] = {id = 2106406,lv = 105},[7] = {id = 2106407,lv = 105},[8] = {id = 2106408,lv = 105}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 1,[6] = 0,[7] = 0,[8] = 0},mon = {id = 240,desc = "daily_relic-11-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_relic",id = 6041130,cardId = 1101998,lv = 105,bklv = 14,star = 3,equip = {[1] = {id = 2006401,lv = 105},[2] = {id = 2006402,lv = 105},[3] = {id = 2006403,lv = 105},[4] = {id = 2006404,lv = 105},[5] = {id = 2006405,lv = 105},[6] = {id = 2006406,lv = 105},[7] = {id = 2006407,lv = 105},[8] = {id = 2006408,lv = 105}},mon = {id = 203,desc = "daily_relic-11-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "daily_relic",id = 6041131,cardId = 1102998,lv = 105,bklv = 16,star = 3,ghost = 35,equip = {[1] = {id = 2106401,lv = 105},[2] = {id = 2106402,lv = 105},[3] = {id = 2106403,lv = 105},[4] = {id = 2106404,lv = 105},[5] = {id = 2106405,lv = 105},[6] = {id = 2106406,lv = 105},[7] = {id = 2106407,lv = 105},[8] = {id = 2106408,lv = 105}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 1,[6] = 0,[7] = 0,[8] = 0},mon = {id = 225,desc = "daily_relic-11-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		}
	},
	[60412] = {
		[1] = {
			jlr = {cha = "daily_relic",id = 6041210,cardId = 1101997,lv = 105,bklv = 14,star = 3,equip = {[1] = {id = 2006411,lv = 105},[2] = {id = 2006412,lv = 105},[3] = {id = 2006413,lv = 105},[4] = {id = 2006404,lv = 105},[5] = {id = 2006415,lv = 105},[6] = {id = 2006406,lv = 105},[7] = {id = 2006417,lv = 105},[8] = {id = 2006418,lv = 105}},mon = {id = 207,desc = "daily_relic-12-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 5,exert = 11,suffer = 21}},
			shl = {cha = "daily_relic",id = 6041211,cardId = 1102997,lv = 105,bklv = 16,star = 3,ghost = 35,equip = {[1] = {id = 2106411,lv = 105},[2] = {id = 2106412,lv = 105},[3] = {id = 2106413,lv = 105},[4] = {id = 2106404,lv = 105},[5] = {id = 2106415,lv = 105},[6] = {id = 2106406,lv = 105},[7] = {id = 2106417,lv = 105},[8] = {id = 2106418,lv = 105}},exWeapon = {[1] = 8,[2] = 7,[3] = 6,[4] = 5,[5] = 2,[6] = 0,[7] = 0,[8] = 0},mon = {id = 232,desc = "daily_relic-12-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 5,exert = 15,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_relic",id = 6041220,cardId = 1101997,lv = 105,bklv = 14,star = 2,equip = {[1] = {id = 2006411,lv = 105},[2] = {id = 2006412,lv = 105},[3] = {id = 2006413,lv = 105},[4] = {id = 2006404,lv = 105},[5] = {id = 2006415,lv = 105},[6] = {id = 2006406,lv = 105},[7] = {id = 2006417,lv = 105},[8] = {id = 2006418,lv = 105}},mon = {id = 205,desc = "daily_relic-12-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 5,exert = 11,suffer = 21}},
			shl = {cha = "daily_relic",id = 6041221,cardId = 1102996,lv = 105,bklv = 16,star = 2,ghost = 35,equip = {[1] = {id = 2106411,lv = 105},[2] = {id = 2106412,lv = 105},[3] = {id = 2106413,lv = 105},[4] = {id = 2106404,lv = 105},[5] = {id = 2106415,lv = 105},[6] = {id = 2106406,lv = 105},[7] = {id = 2106417,lv = 105},[8] = {id = 2106418,lv = 105}},exWeapon = {[1] = 8,[2] = 7,[3] = 6,[4] = 5,[5] = 2,[6] = 0,[7] = 0,[8] = 0},mon = {id = 221,desc = "daily_relic-12-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 5,exert = 15,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_relic",id = 6041230,cardId = 1101997,lv = 105,bklv = 14,star = 3,equip = {[1] = {id = 2006411,lv = 105},[2] = {id = 2006412,lv = 105},[3] = {id = 2006413,lv = 105},[4] = {id = 2006404,lv = 105},[5] = {id = 2006415,lv = 105},[6] = {id = 2006406,lv = 105},[7] = {id = 2006417,lv = 105},[8] = {id = 2006418,lv = 105}},mon = {id = 204,desc = "daily_relic-12-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 5,exert = 11,suffer = 21}},
			shl = {cha = "daily_relic",id = 6041231,cardId = 1102997,lv = 105,bklv = 16,star = 3,ghost = 35,equip = {[1] = {id = 2106411,lv = 105},[2] = {id = 2106412,lv = 105},[3] = {id = 2106413,lv = 105},[4] = {id = 2106404,lv = 105},[5] = {id = 2106415,lv = 105},[6] = {id = 2106406,lv = 105},[7] = {id = 2106417,lv = 105},[8] = {id = 2106418,lv = 105}},exWeapon = {[1] = 8,[2] = 7,[3] = 6,[4] = 5,[5] = 2,[6] = 0,[7] = 0,[8] = 0},mon = {id = 226,desc = "daily_relic-12-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 5,exert = 15,suffer = 25}}
		}
	},
	[60413] = {
		[1] = {
			jlr = {cha = "daily_relic",id = 6041310,cardId = 1101999,lv = 115,bklv = 15,star = 3,equip = {[1] = {id = 2007301,lv = 115},[2] = {id = 2007302,lv = 115},[3] = {id = 2007303,lv = 115},[4] = {id = 2007304,lv = 115},[5] = {id = 2007305,lv = 115},[6] = {id = 2007306,lv = 115},[7] = {id = 2007307,lv = 115},[8] = {id = 2007308,lv = 115}},mon = {id = 201,desc = "daily_relic-13-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 4,exert = 21,suffer = 21}},
			shl = {cha = "daily_relic",id = 6041311,cardId = 1102999,lv = 115,bklv = 17,star = 3,ghost = 39,equip = {[1] = {id = 2107301,lv = 115},[2] = {id = 2107302,lv = 115},[3] = {id = 2107303,lv = 115},[4] = {id = 2107304,lv = 115},[5] = {id = 2107305,lv = 115},[6] = {id = 2107306,lv = 115},[7] = {id = 2107307,lv = 115},[8] = {id = 2107308,lv = 115}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 235,desc = "daily_relic-13-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 4,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_relic",id = 6041320,cardId = 1101998,lv = 115,bklv = 15,star = 3,equip = {[1] = {id = 2007301,lv = 115},[2] = {id = 2007302,lv = 115},[3] = {id = 2007303,lv = 115},[4] = {id = 2007304,lv = 115},[5] = {id = 2007305,lv = 115},[6] = {id = 2007306,lv = 115},[7] = {id = 2007307,lv = 115},[8] = {id = 2007308,lv = 115}},mon = {id = 202,desc = "daily_relic-13-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 4,exert = 21,suffer = 21}},
			shl = {cha = "daily_relic",id = 6041321,cardId = 1102998,lv = 115,bklv = 17,star = 3,ghost = 39,equip = {[1] = {id = 2107301,lv = 115},[2] = {id = 2107302,lv = 115},[3] = {id = 2107303,lv = 115},[4] = {id = 2107304,lv = 115},[5] = {id = 2107305,lv = 115},[6] = {id = 2107306,lv = 115},[7] = {id = 2107307,lv = 115},[8] = {id = 2107308,lv = 115}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 224,desc = "daily_relic-13-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 4,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_relic",id = 6041330,cardId = 1101999,lv = 115,bklv = 15,star = 3,equip = {[1] = {id = 2007301,lv = 115},[2] = {id = 2007302,lv = 115},[3] = {id = 2007303,lv = 115},[4] = {id = 2007304,lv = 115},[5] = {id = 2007305,lv = 115},[6] = {id = 2007306,lv = 115},[7] = {id = 2007307,lv = 115},[8] = {id = 2007308,lv = 115}},mon = {id = 203,desc = "daily_relic-13-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 4,exert = 21,suffer = 21}},
			shl = {cha = "daily_relic",id = 6041331,cardId = 1102999,lv = 115,bklv = 17,star = 3,ghost = 39,equip = {[1] = {id = 2107301,lv = 115},[2] = {id = 2107302,lv = 115},[3] = {id = 2107303,lv = 115},[4] = {id = 2107304,lv = 115},[5] = {id = 2107305,lv = 115},[6] = {id = 2107306,lv = 115},[7] = {id = 2107307,lv = 115},[8] = {id = 2107308,lv = 115}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 233,desc = "daily_relic-13-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 4,exert = 25,suffer = 25}}
		}
	},
	[60414] = {
		[1] = {
			jlr = {cha = "daily_relic",id = 6041410,cardId = 1101998,lv = 115,bklv = 15,star = 3,equip = {[1] = {id = 2007401,lv = 115},[2] = {id = 2007402,lv = 115},[3] = {id = 2007403,lv = 115},[4] = {id = 2007404,lv = 115},[5] = {id = 2007405,lv = 115},[6] = {id = 2007406,lv = 115},[7] = {id = 2007407,lv = 115},[8] = {id = 2007408,lv = 115}},mon = {id = 201,desc = "daily_relic-14-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 5,exert = 14,suffer = 21}},
			shl = {cha = "daily_relic",id = 6041411,cardId = 1102998,lv = 115,bklv = 17,star = 3,ghost = 39,equip = {[1] = {id = 2107401,lv = 115},[2] = {id = 2107402,lv = 115},[3] = {id = 2107403,lv = 115},[4] = {id = 2107404,lv = 115},[5] = {id = 2107405,lv = 115},[6] = {id = 2107406,lv = 115},[7] = {id = 2107407,lv = 115},[8] = {id = 2107408,lv = 115}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 2,[6] = 0,[7] = 0,[8] = 0},mon = {id = 222,desc = "daily_relic-14-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 5,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_relic",id = 6041420,cardId = 1101997,lv = 115,bklv = 15,star = 3,equip = {[1] = {id = 2007401,lv = 115},[2] = {id = 2007402,lv = 115},[3] = {id = 2007403,lv = 115},[4] = {id = 2007404,lv = 115},[5] = {id = 2007405,lv = 115},[6] = {id = 2007406,lv = 115},[7] = {id = 2007407,lv = 115},[8] = {id = 2007408,lv = 115}},mon = {id = 214,desc = "daily_relic-14-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 5,exert = 14,suffer = 21}},
			shl = {cha = "daily_relic",id = 6041421,cardId = 1102997,lv = 115,bklv = 17,star = 3,ghost = 39,equip = {[1] = {id = 2107401,lv = 115},[2] = {id = 2107402,lv = 115},[3] = {id = 2107403,lv = 115},[4] = {id = 2107404,lv = 115},[5] = {id = 2107405,lv = 115},[6] = {id = 2107406,lv = 115},[7] = {id = 2107407,lv = 115},[8] = {id = 2107408,lv = 115}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 2,[6] = 0,[7] = 0,[8] = 0},mon = {id = 240,desc = "daily_relic-14-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 5,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_relic",id = 6041430,cardId = 1101998,lv = 115,bklv = 15,star = 3,equip = {[1] = {id = 2007401,lv = 115},[2] = {id = 2007402,lv = 115},[3] = {id = 2007403,lv = 115},[4] = {id = 2007404,lv = 115},[5] = {id = 2007405,lv = 115},[6] = {id = 2007406,lv = 115},[7] = {id = 2007407,lv = 115},[8] = {id = 2007408,lv = 115}},mon = {id = 203,desc = "daily_relic-14-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 5,exert = 14,suffer = 21}},
			shl = {cha = "daily_relic",id = 6041431,cardId = 1102998,lv = 115,bklv = 17,star = 3,ghost = 39,equip = {[1] = {id = 2107401,lv = 115},[2] = {id = 2107402,lv = 115},[3] = {id = 2107403,lv = 115},[4] = {id = 2107404,lv = 115},[5] = {id = 2107405,lv = 115},[6] = {id = 2107406,lv = 115},[7] = {id = 2107407,lv = 115},[8] = {id = 2107408,lv = 115}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 2,[6] = 0,[7] = 0,[8] = 0},mon = {id = 225,desc = "daily_relic-14-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 5,exert = 18,suffer = 25}}
		}
	},
	[60415] = {
		[1] = {
			jlr = {cha = "daily_relic",id = 6041510,cardId = 1101997,lv = 115,bklv = 15,star = 3,equip = {[1] = {id = 2007421,lv = 115},[2] = {id = 2007422,lv = 115},[3] = {id = 2007423,lv = 115},[4] = {id = 2007424,lv = 115},[5] = {id = 2007425,lv = 115},[6] = {id = 2007426,lv = 115},[7] = {id = 2007407,lv = 115},[8] = {id = 2007408,lv = 115}},mon = {id = 207,desc = "daily_relic-15-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 6,exert = 11,suffer = 21}},
			shl = {cha = "daily_relic",id = 6041511,cardId = 1102997,lv = 115,bklv = 17,star = 3,ghost = 39,equip = {[1] = {id = 2107421,lv = 115},[2] = {id = 2107422,lv = 115},[3] = {id = 2107423,lv = 115},[4] = {id = 2107424,lv = 115},[5] = {id = 2107425,lv = 115},[6] = {id = 2107426,lv = 115},[7] = {id = 2107407,lv = 115},[8] = {id = 2107408,lv = 115}},exWeapon = {[1] = 8,[2] = 8,[3] = 6,[4] = 6,[5] = 3,[6] = 0,[7] = 0,[8] = 0},mon = {id = 232,desc = "daily_relic-15-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 6,exert = 15,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_relic",id = 6041520,cardId = 1101997,lv = 115,bklv = 15,star = 3,equip = {[1] = {id = 2007421,lv = 115},[2] = {id = 2007422,lv = 115},[3] = {id = 2007423,lv = 115},[4] = {id = 2007424,lv = 115},[5] = {id = 2007425,lv = 115},[6] = {id = 2007426,lv = 115},[7] = {id = 2007407,lv = 115},[8] = {id = 2007408,lv = 115}},mon = {id = 205,desc = "daily_relic-15-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 6,exert = 11,suffer = 21}},
			shl = {cha = "daily_relic",id = 6041521,cardId = 1102996,lv = 115,bklv = 17,star = 3,ghost = 39,equip = {[1] = {id = 2107421,lv = 115},[2] = {id = 2107422,lv = 115},[3] = {id = 2107423,lv = 115},[4] = {id = 2107424,lv = 115},[5] = {id = 2107425,lv = 115},[6] = {id = 2107426,lv = 115},[7] = {id = 2107407,lv = 115},[8] = {id = 2107408,lv = 115}},exWeapon = {[1] = 8,[2] = 8,[3] = 6,[4] = 6,[5] = 3,[6] = 0,[7] = 0,[8] = 0},mon = {id = 221,desc = "daily_relic-15-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 6,exert = 15,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_relic",id = 6041530,cardId = 1101997,lv = 115,bklv = 15,star = 3,equip = {[1] = {id = 2007421,lv = 115},[2] = {id = 2007422,lv = 115},[3] = {id = 2007423,lv = 115},[4] = {id = 2007424,lv = 115},[5] = {id = 2007425,lv = 115},[6] = {id = 2007426,lv = 115},[7] = {id = 2007407,lv = 115},[8] = {id = 2007408,lv = 115}},mon = {id = 204,desc = "daily_relic-15-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 6,exert = 11,suffer = 21}},
			shl = {cha = "daily_relic",id = 6041531,cardId = 1102997,lv = 115,bklv = 17,star = 3,ghost = 39,equip = {[1] = {id = 2107421,lv = 115},[2] = {id = 2107422,lv = 115},[3] = {id = 2107423,lv = 115},[4] = {id = 2107424,lv = 115},[5] = {id = 2107425,lv = 115},[6] = {id = 2107426,lv = 115},[7] = {id = 2107407,lv = 115},[8] = {id = 2107408,lv = 115}},exWeapon = {[1] = 8,[2] = 8,[3] = 6,[4] = 6,[5] = 3,[6] = 0,[7] = 0,[8] = 0},mon = {id = 226,desc = "daily_relic-15-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 6,exert = 15,suffer = 25}}
		}
	},
	[60416] = {
		[1] = {
			jlr = {cha = "daily_relic",id = 6041610,cardId = 1101999,lv = 125,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 125},[2] = {id = 2008302,lv = 125},[3] = {id = 2008303,lv = 125},[4] = {id = 2008304,lv = 125},[5] = {id = 2008305,lv = 125},[6] = {id = 2008306,lv = 125},[7] = {id = 2008307,lv = 125},[8] = {id = 2008308,lv = 125}},mon = {id = 201,desc = "daily_relic-16-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 5,exert = 21,suffer = 21}},
			shl = {cha = "daily_relic",id = 6041611,cardId = 1102999,lv = 125,bklv = 19,star = 4,ghost = 43,equip = {[1] = {id = 2108301,lv = 125},[2] = {id = 2108302,lv = 125},[3] = {id = 2108303,lv = 125},[4] = {id = 2108304,lv = 125},[5] = {id = 2108305,lv = 125},[6] = {id = 2108306,lv = 125},[7] = {id = 2108307,lv = 125},[8] = {id = 2108308,lv = 125}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 235,desc = "daily_relic-16-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 5,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_relic",id = 6041620,cardId = 1101998,lv = 125,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 125},[2] = {id = 2008302,lv = 125},[3] = {id = 2008303,lv = 125},[4] = {id = 2008304,lv = 125},[5] = {id = 2008305,lv = 125},[6] = {id = 2008306,lv = 125},[7] = {id = 2008307,lv = 125},[8] = {id = 2008308,lv = 125}},mon = {id = 202,desc = "daily_relic-16-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 5,exert = 21,suffer = 21}},
			shl = {cha = "daily_relic",id = 6041621,cardId = 1102998,lv = 125,bklv = 19,star = 4,ghost = 43,equip = {[1] = {id = 2108301,lv = 125},[2] = {id = 2108302,lv = 125},[3] = {id = 2108303,lv = 125},[4] = {id = 2108304,lv = 125},[5] = {id = 2108305,lv = 125},[6] = {id = 2108306,lv = 125},[7] = {id = 2108307,lv = 125},[8] = {id = 2108308,lv = 125}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 224,desc = "daily_relic-16-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 5,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_relic",id = 6041630,cardId = 1101999,lv = 125,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 125},[2] = {id = 2008302,lv = 125},[3] = {id = 2008303,lv = 125},[4] = {id = 2008304,lv = 125},[5] = {id = 2008305,lv = 125},[6] = {id = 2008306,lv = 125},[7] = {id = 2008307,lv = 125},[8] = {id = 2008308,lv = 125}},mon = {id = 203,desc = "daily_relic-16-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 5,exert = 21,suffer = 21}},
			shl = {cha = "daily_relic",id = 6041631,cardId = 1102999,lv = 125,bklv = 19,star = 4,ghost = 43,equip = {[1] = {id = 2108301,lv = 125},[2] = {id = 2108302,lv = 125},[3] = {id = 2108303,lv = 125},[4] = {id = 2108304,lv = 125},[5] = {id = 2108305,lv = 125},[6] = {id = 2108306,lv = 125},[7] = {id = 2108307,lv = 125},[8] = {id = 2108308,lv = 125}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 233,desc = "daily_relic-16-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 5,exert = 25,suffer = 25}}
		}
	},
	[60417] = {
		[1] = {
			jlr = {cha = "daily_relic",id = 6041710,cardId = 1101998,lv = 125,bklv = 16,star = 4,equip = {[1] = {id = 2008401,lv = 125},[2] = {id = 2008402,lv = 125},[3] = {id = 2008403,lv = 125},[4] = {id = 2008404,lv = 125},[5] = {id = 2008405,lv = 125},[6] = {id = 2008406,lv = 125},[7] = {id = 2008407,lv = 125},[8] = {id = 2008408,lv = 125}},mon = {id = 201,desc = "daily_relic-17-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 6,exert = 14,suffer = 21}},
			shl = {cha = "daily_relic",id = 6041711,cardId = 1102998,lv = 125,bklv = 19,star = 4,ghost = 43,equip = {[1] = {id = 2108401,lv = 125},[2] = {id = 2108402,lv = 125},[3] = {id = 2108403,lv = 125},[4] = {id = 2108404,lv = 125},[5] = {id = 2108405,lv = 125},[6] = {id = 2108406,lv = 125},[7] = {id = 2108407,lv = 125},[8] = {id = 2108408,lv = 125}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 3,[6] = 2,[7] = 0,[8] = 0},mon = {id = 222,desc = "daily_relic-17-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 6,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_relic",id = 6041720,cardId = 1101997,lv = 125,bklv = 16,star = 4,equip = {[1] = {id = 2008401,lv = 125},[2] = {id = 2008402,lv = 125},[3] = {id = 2008403,lv = 125},[4] = {id = 2008404,lv = 125},[5] = {id = 2008405,lv = 125},[6] = {id = 2008406,lv = 125},[7] = {id = 2008407,lv = 125},[8] = {id = 2008408,lv = 125}},mon = {id = 214,desc = "daily_relic-17-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 6,exert = 14,suffer = 21}},
			shl = {cha = "daily_relic",id = 6041721,cardId = 1102997,lv = 125,bklv = 19,star = 4,ghost = 43,equip = {[1] = {id = 2108401,lv = 125},[2] = {id = 2108402,lv = 125},[3] = {id = 2108403,lv = 125},[4] = {id = 2108404,lv = 125},[5] = {id = 2108405,lv = 125},[6] = {id = 2108406,lv = 125},[7] = {id = 2108407,lv = 125},[8] = {id = 2108408,lv = 125}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 3,[6] = 2,[7] = 0,[8] = 0},mon = {id = 240,desc = "daily_relic-17-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 6,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_relic",id = 6041730,cardId = 1101998,lv = 125,bklv = 16,star = 4,equip = {[1] = {id = 2008401,lv = 125},[2] = {id = 2008402,lv = 125},[3] = {id = 2008403,lv = 125},[4] = {id = 2008404,lv = 125},[5] = {id = 2008405,lv = 125},[6] = {id = 2008406,lv = 125},[7] = {id = 2008407,lv = 125},[8] = {id = 2008408,lv = 125}},mon = {id = 203,desc = "daily_relic-17-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 6,exert = 14,suffer = 21}},
			shl = {cha = "daily_relic",id = 6041731,cardId = 1102998,lv = 125,bklv = 19,star = 4,ghost = 43,equip = {[1] = {id = 2108401,lv = 125},[2] = {id = 2108402,lv = 125},[3] = {id = 2108403,lv = 125},[4] = {id = 2108404,lv = 125},[5] = {id = 2108405,lv = 125},[6] = {id = 2108406,lv = 125},[7] = {id = 2108407,lv = 125},[8] = {id = 2108408,lv = 125}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 3,[6] = 2,[7] = 0,[8] = 0},mon = {id = 225,desc = "daily_relic-17-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 6,exert = 18,suffer = 25}}
		}
	},
	[60418] = {
		[1] = {
			jlr = {cha = "daily_relic",id = 6041810,cardId = 1101997,lv = 125,bklv = 16,star = 4,equip = {[1] = {id = 2008421,lv = 125},[2] = {id = 2008412,lv = 125},[3] = {id = 2008413,lv = 125},[4] = {id = 2008404,lv = 125},[5] = {id = 2008415,lv = 125},[6] = {id = 2008406,lv = 125},[7] = {id = 2008427,lv = 125},[8] = {id = 2008418,lv = 125}},mon = {id = 207,desc = "daily_relic-18-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 7,exert = 11,suffer = 21}},
			shl = {cha = "daily_relic",id = 6041811,cardId = 1102997,lv = 125,bklv = 19,star = 4,ghost = 43,equip = {[1] = {id = 2108421,lv = 125},[2] = {id = 2108422,lv = 125},[3] = {id = 2108413,lv = 125},[4] = {id = 2108404,lv = 125},[5] = {id = 2108415,lv = 125},[6] = {id = 2108406,lv = 125},[7] = {id = 2108427,lv = 125},[8] = {id = 2108428,lv = 125}},exWeapon = {[1] = 8,[2] = 8,[3] = 6,[4] = 6,[5] = 4,[6] = 3,[7] = 1,[8] = 0},mon = {id = 232,desc = "daily_relic-18-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 7,exert = 15,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_relic",id = 6041820,cardId = 1101997,lv = 125,bklv = 16,star = 4,equip = {[1] = {id = 2008421,lv = 125},[2] = {id = 2008412,lv = 125},[3] = {id = 2008413,lv = 125},[4] = {id = 2008404,lv = 125},[5] = {id = 2008415,lv = 125},[6] = {id = 2008406,lv = 125},[7] = {id = 2008427,lv = 125},[8] = {id = 2008418,lv = 125}},mon = {id = 205,desc = "daily_relic-18-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 7,exert = 11,suffer = 21}},
			shl = {cha = "daily_relic",id = 6041821,cardId = 1102996,lv = 125,bklv = 19,star = 4,ghost = 43,equip = {[1] = {id = 2108421,lv = 125},[2] = {id = 2108422,lv = 125},[3] = {id = 2108413,lv = 125},[4] = {id = 2108404,lv = 125},[5] = {id = 2108415,lv = 125},[6] = {id = 2108406,lv = 125},[7] = {id = 2108427,lv = 125},[8] = {id = 2108428,lv = 125}},exWeapon = {[1] = 8,[2] = 8,[3] = 6,[4] = 6,[5] = 4,[6] = 3,[7] = 1,[8] = 0},mon = {id = 221,desc = "daily_relic-18-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 7,exert = 15,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_relic",id = 6041830,cardId = 1101997,lv = 125,bklv = 16,star = 4,equip = {[1] = {id = 2008421,lv = 125},[2] = {id = 2008412,lv = 125},[3] = {id = 2008413,lv = 125},[4] = {id = 2008404,lv = 125},[5] = {id = 2008415,lv = 125},[6] = {id = 2008406,lv = 125},[7] = {id = 2008427,lv = 125},[8] = {id = 2008418,lv = 125}},mon = {id = 204,desc = "daily_relic-18-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 7,exert = 11,suffer = 21}},
			shl = {cha = "daily_relic",id = 6041831,cardId = 1102997,lv = 125,bklv = 19,star = 4,ghost = 43,equip = {[1] = {id = 2108421,lv = 125},[2] = {id = 2108422,lv = 125},[3] = {id = 2108413,lv = 125},[4] = {id = 2108404,lv = 125},[5] = {id = 2108415,lv = 125},[6] = {id = 2108406,lv = 125},[7] = {id = 2108427,lv = 125},[8] = {id = 2108428,lv = 125}},exWeapon = {[1] = 8,[2] = 8,[3] = 6,[4] = 6,[5] = 4,[6] = 3,[7] = 1,[8] = 0},mon = {id = 226,desc = "daily_relic-18-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 7,exert = 15,suffer = 25}}
		}
	},
	[60501] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6050110,cardId = 1101999,lv = 40,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 40},[2] = {id = 2001302,lv = 40},[3] = {id = 2001303,lv = 40},[4] = {id = 2001304,lv = 40},[5] = {id = 2001305,lv = 40},[6] = {id = 2001306,lv = 40},[7] = {id = 2001307,lv = 40},[8] = {id = 2001308,lv = 40}},mon = {id = 201,desc = "daily_exwp-1-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6050111,cardId = 1102999,lv = 40,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2101301,lv = 40},[2] = {id = 2101302,lv = 40},[3] = {id = 2101303,lv = 40},[4] = {id = 2101304,lv = 40},[5] = {id = 2101305,lv = 40},[6] = {id = 2101306,lv = 40},[7] = {id = 2101307,lv = 40},[8] = {id = 2101308,lv = 40}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 235,desc = "daily_exwp-1-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6050120,cardId = 1101999,lv = 40,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 40},[2] = {id = 2001302,lv = 40},[3] = {id = 2001303,lv = 40},[4] = {id = 2001304,lv = 40},[5] = {id = 2001305,lv = 40},[6] = {id = 2001306,lv = 40},[7] = {id = 2001307,lv = 40},[8] = {id = 2001308,lv = 40}},mon = {id = 202,desc = "daily_exwp-1-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6050121,cardId = 1102999,lv = 40,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2101301,lv = 40},[2] = {id = 2101302,lv = 40},[3] = {id = 2101303,lv = 40},[4] = {id = 2101304,lv = 40},[5] = {id = 2101305,lv = 40},[6] = {id = 2101306,lv = 40},[7] = {id = 2101307,lv = 40},[8] = {id = 2101308,lv = 40}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 224,desc = "daily_exwp-1-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6050130,cardId = 1101999,lv = 40,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 40},[2] = {id = 2001302,lv = 40},[3] = {id = 2001303,lv = 40},[4] = {id = 2001304,lv = 40},[5] = {id = 2001305,lv = 40},[6] = {id = 2001306,lv = 40},[7] = {id = 2001307,lv = 40},[8] = {id = 2001308,lv = 40}},mon = {id = 203,desc = "daily_exwp-1-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6050131,cardId = 1102999,lv = 40,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2101301,lv = 40},[2] = {id = 2101302,lv = 40},[3] = {id = 2101303,lv = 40},[4] = {id = 2101304,lv = 40},[5] = {id = 2101305,lv = 40},[6] = {id = 2101306,lv = 40},[7] = {id = 2101307,lv = 40},[8] = {id = 2101308,lv = 40}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 233,desc = "daily_exwp-1-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		}
	},
	[60502] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6050210,cardId = 1101999,lv = 40,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 40},[2] = {id = 2001302,lv = 40},[3] = {id = 2001303,lv = 40},[4] = {id = 2001304,lv = 40},[5] = {id = 2001305,lv = 40},[6] = {id = 2001306,lv = 40},[7] = {id = 2001307,lv = 40},[8] = {id = 2001308,lv = 40}},mon = {id = 201,desc = "daily_exwp-2-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 2,exert = 14,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6050211,cardId = 1102999,lv = 40,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102301,lv = 40},[2] = {id = 2102302,lv = 40},[3] = {id = 2102303,lv = 40},[4] = {id = 2102304,lv = 40},[5] = {id = 2102305,lv = 40},[6] = {id = 2102306,lv = 40},[7] = {id = 2102307,lv = 40},[8] = {id = 2102308,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 222,desc = "daily_exwp-2-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 2,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6050220,cardId = 1101998,lv = 40,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 40},[2] = {id = 2001302,lv = 40},[3] = {id = 2001303,lv = 40},[4] = {id = 2001304,lv = 40},[5] = {id = 2001305,lv = 40},[6] = {id = 2001306,lv = 40},[7] = {id = 2001307,lv = 40},[8] = {id = 2001308,lv = 40}},mon = {id = 214,desc = "daily_exwp-2-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 2,exert = 14,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6050221,cardId = 1102998,lv = 40,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102301,lv = 40},[2] = {id = 2102302,lv = 40},[3] = {id = 2102303,lv = 40},[4] = {id = 2102304,lv = 40},[5] = {id = 2102305,lv = 40},[6] = {id = 2102306,lv = 40},[7] = {id = 2102307,lv = 40},[8] = {id = 2102308,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 240,desc = "daily_exwp-2-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 2,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6050230,cardId = 1101999,lv = 40,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 40},[2] = {id = 2001302,lv = 40},[3] = {id = 2001303,lv = 40},[4] = {id = 2001304,lv = 40},[5] = {id = 2001305,lv = 40},[6] = {id = 2001306,lv = 40},[7] = {id = 2001307,lv = 40},[8] = {id = 2001308,lv = 40}},mon = {id = 203,desc = "daily_exwp-2-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 2,exert = 14,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6050231,cardId = 1102999,lv = 40,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102301,lv = 40},[2] = {id = 2102302,lv = 40},[3] = {id = 2102303,lv = 40},[4] = {id = 2102304,lv = 40},[5] = {id = 2102305,lv = 40},[6] = {id = 2102306,lv = 40},[7] = {id = 2102307,lv = 40},[8] = {id = 2102308,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 225,desc = "daily_exwp-2-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 2,exert = 18,suffer = 25}}
		}
	},
	[60503] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6050310,cardId = 1101998,lv = 40,bklv = 5,star = 1,equip = {[1] = {id = 2001401,lv = 40},[2] = {id = 2001402,lv = 40},[3] = {id = 2001403,lv = 40},[4] = {id = 2001404,lv = 40},[5] = {id = 2001405,lv = 40},[6] = {id = 2001406,lv = 40},[7] = {id = 2001407,lv = 40},[8] = {id = 2001408,lv = 40}},mon = {id = 207,desc = "daily_exwp-3-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 3,exert = 11,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6050311,cardId = 1102998,lv = 40,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 3,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 232,desc = "daily_exwp-3-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 3,exert = 15,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6050320,cardId = 1101997,lv = 40,bklv = 5,star = 1,equip = {[1] = {id = 2001401,lv = 40},[2] = {id = 2001402,lv = 40},[3] = {id = 2001403,lv = 40},[4] = {id = 2001404,lv = 40},[5] = {id = 2001405,lv = 40},[6] = {id = 2001406,lv = 40},[7] = {id = 2001407,lv = 40},[8] = {id = 2001408,lv = 40}},mon = {id = 205,desc = "daily_exwp-3-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 3,exert = 11,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6050321,cardId = 1102997,lv = 40,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 3,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 221,desc = "daily_exwp-3-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 3,exert = 15,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6050330,cardId = 1101998,lv = 40,bklv = 5,star = 1,equip = {[1] = {id = 2001401,lv = 40},[2] = {id = 2001402,lv = 40},[3] = {id = 2001403,lv = 40},[4] = {id = 2001404,lv = 40},[5] = {id = 2001405,lv = 40},[6] = {id = 2001406,lv = 40},[7] = {id = 2001407,lv = 40},[8] = {id = 2001408,lv = 40}},mon = {id = 204,desc = "daily_exwp-3-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 3,exert = 11,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6050331,cardId = 1102998,lv = 40,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 3,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 226,desc = "daily_exwp-3-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 3,exert = 15,suffer = 25}}
		}
	},
	[60504] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6050410,cardId = 1101999,lv = 55,bklv = 7,star = 1,equip = {[1] = {id = 2002301,lv = 55},[2] = {id = 2002302,lv = 55},[3] = {id = 2002303,lv = 55},[4] = {id = 2002304,lv = 55},[5] = {id = 2002305,lv = 55},[6] = {id = 2002306,lv = 55},[7] = {id = 2002307,lv = 55},[8] = {id = 2002308,lv = 55}},mon = {id = 201,desc = "daily_exwp-4-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6050411,cardId = 1102999,lv = 55,bklv = 8,star = 1,ghost = 15,equip = {[1] = {id = 2102301,lv = 55},[2] = {id = 2102302,lv = 55},[3] = {id = 2102303,lv = 55},[4] = {id = 2102304,lv = 55},[5] = {id = 2102305,lv = 55},[6] = {id = 2102306,lv = 55},[7] = {id = 2102307,lv = 55},[8] = {id = 2102308,lv = 55}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 235,desc = "daily_exwp-4-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6050420,cardId = 1101998,lv = 55,bklv = 7,star = 1,equip = {[1] = {id = 2002301,lv = 55},[2] = {id = 2002302,lv = 55},[3] = {id = 2002303,lv = 55},[4] = {id = 2002304,lv = 55},[5] = {id = 2002305,lv = 55},[6] = {id = 2002306,lv = 55},[7] = {id = 2002307,lv = 55},[8] = {id = 2002308,lv = 55}},mon = {id = 202,desc = "daily_exwp-4-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6050421,cardId = 1102998,lv = 55,bklv = 8,star = 1,ghost = 15,equip = {[1] = {id = 2102301,lv = 55},[2] = {id = 2102302,lv = 55},[3] = {id = 2102303,lv = 55},[4] = {id = 2102304,lv = 55},[5] = {id = 2102305,lv = 55},[6] = {id = 2102306,lv = 55},[7] = {id = 2102307,lv = 55},[8] = {id = 2102308,lv = 55}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 224,desc = "daily_exwp-4-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6050430,cardId = 1101999,lv = 55,bklv = 7,star = 1,equip = {[1] = {id = 2002301,lv = 55},[2] = {id = 2002302,lv = 55},[3] = {id = 2002303,lv = 55},[4] = {id = 2002304,lv = 55},[5] = {id = 2002305,lv = 55},[6] = {id = 2002306,lv = 55},[7] = {id = 2002307,lv = 55},[8] = {id = 2002308,lv = 55}},mon = {id = 203,desc = "daily_exwp-4-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 21,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6050431,cardId = 1102999,lv = 55,bklv = 8,star = 1,ghost = 15,equip = {[1] = {id = 2102301,lv = 55},[2] = {id = 2102302,lv = 55},[3] = {id = 2102303,lv = 55},[4] = {id = 2102304,lv = 55},[5] = {id = 2102305,lv = 55},[6] = {id = 2102306,lv = 55},[7] = {id = 2102307,lv = 55},[8] = {id = 2102308,lv = 55}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 233,desc = "daily_exwp-4-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 25,suffer = 25}}
		}
	},
	[60505] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6050510,cardId = 1101998,lv = 55,bklv = 7,star = 1,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}},mon = {id = 201,desc = "daily_exwp-5-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 2,exert = 14,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6050511,cardId = 1102998,lv = 55,bklv = 8,star = 1,ghost = 15,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 222,desc = "daily_exwp-5-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 2,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6050520,cardId = 1101997,lv = 55,bklv = 7,star = 1,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}},mon = {id = 214,desc = "daily_exwp-5-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 2,exert = 14,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6050521,cardId = 1102997,lv = 55,bklv = 8,star = 1,ghost = 15,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 240,desc = "daily_exwp-5-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 2,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6050530,cardId = 1101998,lv = 55,bklv = 7,star = 1,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}},mon = {id = 203,desc = "daily_exwp-5-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 2,exert = 14,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6050531,cardId = 1102998,lv = 55,bklv = 8,star = 1,ghost = 15,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 225,desc = "daily_exwp-5-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 2,exert = 18,suffer = 25}}
		}
	},
	[60506] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6050610,cardId = 1101997,lv = 55,bklv = 7,star = 1,equip = {[1] = {id = 2002411,lv = 55},[2] = {id = 2002412,lv = 55},[3] = {id = 2002413,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002415,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002417,lv = 55},[8] = {id = 2002418,lv = 55}},mon = {id = 207,desc = "daily_exwp-6-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 3,exert = 11,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6050611,cardId = 1102997,lv = 55,bklv = 8,star = 1,ghost = 15,equip = {[1] = {id = 2102411,lv = 55},[2] = {id = 2102412,lv = 55},[3] = {id = 2102413,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102415,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102417,lv = 55},[8] = {id = 2102418,lv = 55}},exWeapon = {[1] = 6,[2] = 2,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 232,desc = "daily_exwp-6-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 3,exert = 15,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6050620,cardId = 1101997,lv = 55,bklv = 7,star = 1,equip = {[1] = {id = 2002411,lv = 55},[2] = {id = 2002412,lv = 55},[3] = {id = 2002413,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002415,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002417,lv = 55},[8] = {id = 2002418,lv = 55}},mon = {id = 205,desc = "daily_exwp-6-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 3,exert = 11,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6050621,cardId = 1102997,lv = 55,bklv = 8,star = 1,ghost = 15,equip = {[1] = {id = 2102411,lv = 55},[2] = {id = 2102412,lv = 55},[3] = {id = 2102413,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102415,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102417,lv = 55},[8] = {id = 2102418,lv = 55}},exWeapon = {[1] = 6,[2] = 2,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 221,desc = "daily_exwp-6-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 3,exert = 15,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6050630,cardId = 1101997,lv = 55,bklv = 7,star = 1,equip = {[1] = {id = 2002411,lv = 55},[2] = {id = 2002412,lv = 55},[3] = {id = 2002413,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002415,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002417,lv = 55},[8] = {id = 2002418,lv = 55}},mon = {id = 204,desc = "daily_exwp-6-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 3,exert = 11,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6050631,cardId = 1102997,lv = 55,bklv = 8,star = 1,ghost = 15,equip = {[1] = {id = 2102411,lv = 55},[2] = {id = 2102412,lv = 55},[3] = {id = 2102413,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102415,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102417,lv = 55},[8] = {id = 2102418,lv = 55}},exWeapon = {[1] = 6,[2] = 2,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 226,desc = "daily_exwp-6-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 3,exert = 15,suffer = 25}}
		}
	},
	[60507] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6050710,cardId = 1101999,lv = 80,bklv = 11,star = 1,equip = {[1] = {id = 2003301,lv = 80},[2] = {id = 2003302,lv = 80},[3] = {id = 2003303,lv = 80},[4] = {id = 2003304,lv = 80},[5] = {id = 2003305,lv = 80},[6] = {id = 2003306,lv = 80},[7] = {id = 2003307,lv = 80},[8] = {id = 2003308,lv = 80}},mon = {id = 201,desc = "daily_exwp-7-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 2,exert = 21,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6050711,cardId = 1102999,lv = 80,bklv = 12,star = 1,ghost = 25,equip = {[1] = {id = 2104301,lv = 80},[2] = {id = 2104302,lv = 80},[3] = {id = 2104303,lv = 80},[4] = {id = 2104304,lv = 80},[5] = {id = 2104305,lv = 80},[6] = {id = 2104306,lv = 80},[7] = {id = 2104307,lv = 80},[8] = {id = 2104308,lv = 80}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 235,desc = "daily_exwp-7-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 2,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6050720,cardId = 1101998,lv = 80,bklv = 11,star = 1,equip = {[1] = {id = 2003301,lv = 80},[2] = {id = 2003302,lv = 80},[3] = {id = 2003303,lv = 80},[4] = {id = 2003304,lv = 80},[5] = {id = 2003305,lv = 80},[6] = {id = 2003306,lv = 80},[7] = {id = 2003307,lv = 80},[8] = {id = 2003308,lv = 80}},mon = {id = 202,desc = "daily_exwp-7-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 2,exert = 21,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6050721,cardId = 1102998,lv = 80,bklv = 12,star = 1,ghost = 25,equip = {[1] = {id = 2104301,lv = 80},[2] = {id = 2104302,lv = 80},[3] = {id = 2104303,lv = 80},[4] = {id = 2104304,lv = 80},[5] = {id = 2104305,lv = 80},[6] = {id = 2104306,lv = 80},[7] = {id = 2104307,lv = 80},[8] = {id = 2104308,lv = 80}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 224,desc = "daily_exwp-7-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 2,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6050730,cardId = 1101999,lv = 80,bklv = 11,star = 1,equip = {[1] = {id = 2003301,lv = 80},[2] = {id = 2003302,lv = 80},[3] = {id = 2003303,lv = 80},[4] = {id = 2003304,lv = 80},[5] = {id = 2003305,lv = 80},[6] = {id = 2003306,lv = 80},[7] = {id = 2003307,lv = 80},[8] = {id = 2003308,lv = 80}},mon = {id = 203,desc = "daily_exwp-7-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 2,exert = 21,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6050731,cardId = 1102999,lv = 80,bklv = 12,star = 1,ghost = 25,equip = {[1] = {id = 2104301,lv = 80},[2] = {id = 2104302,lv = 80},[3] = {id = 2104303,lv = 80},[4] = {id = 2104304,lv = 80},[5] = {id = 2104305,lv = 80},[6] = {id = 2104306,lv = 80},[7] = {id = 2104307,lv = 80},[8] = {id = 2104308,lv = 80}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 233,desc = "daily_exwp-7-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 2,exert = 25,suffer = 25}}
		}
	},
	[60508] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6050810,cardId = 1101998,lv = 80,bklv = 11,star = 1,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}},mon = {id = 201,desc = "daily_exwp-8-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 3,exert = 14,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6050811,cardId = 1102998,lv = 80,bklv = 12,star = 1,ghost = 25,equip = {[1] = {id = 2104401,lv = 80},[2] = {id = 2104402,lv = 80},[3] = {id = 2104403,lv = 80},[4] = {id = 2104404,lv = 80},[5] = {id = 2104405,lv = 80},[6] = {id = 2104406,lv = 80},[7] = {id = 2104407,lv = 80},[8] = {id = 2104408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 222,desc = "daily_exwp-8-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 3,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6050820,cardId = 1101997,lv = 80,bklv = 11,star = 1,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}},mon = {id = 214,desc = "daily_exwp-8-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 3,exert = 14,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6050821,cardId = 1102997,lv = 80,bklv = 12,star = 1,ghost = 25,equip = {[1] = {id = 2104401,lv = 80},[2] = {id = 2104402,lv = 80},[3] = {id = 2104403,lv = 80},[4] = {id = 2104404,lv = 80},[5] = {id = 2104405,lv = 80},[6] = {id = 2104406,lv = 80},[7] = {id = 2104407,lv = 80},[8] = {id = 2104408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 240,desc = "daily_exwp-8-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 3,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6050830,cardId = 1101998,lv = 80,bklv = 11,star = 1,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}},mon = {id = 203,desc = "daily_exwp-8-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 3,exert = 14,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6050831,cardId = 1102998,lv = 80,bklv = 12,star = 1,ghost = 25,equip = {[1] = {id = 2104401,lv = 80},[2] = {id = 2104402,lv = 80},[3] = {id = 2104403,lv = 80},[4] = {id = 2104404,lv = 80},[5] = {id = 2104405,lv = 80},[6] = {id = 2104406,lv = 80},[7] = {id = 2104407,lv = 80},[8] = {id = 2104408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 225,desc = "daily_exwp-8-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 3,exert = 18,suffer = 25}}
		}
	},
	[60509] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6050910,cardId = 1101997,lv = 80,bklv = 11,star = 1,equip = {[1] = {id = 2003421,lv = 80},[2] = {id = 2003422,lv = 80},[3] = {id = 2003423,lv = 80},[4] = {id = 2003424,lv = 80},[5] = {id = 2003425,lv = 80},[6] = {id = 2003426,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}},mon = {id = 207,desc = "daily_exwp-9-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 4,exert = 11,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6050911,cardId = 1102997,lv = 80,bklv = 12,star = 1,ghost = 25,equip = {[1] = {id = 2104421,lv = 80},[2] = {id = 2104422,lv = 80},[3] = {id = 2104423,lv = 80},[4] = {id = 2104404,lv = 80},[5] = {id = 2104425,lv = 80},[6] = {id = 2104406,lv = 80},[7] = {id = 2104427,lv = 80},[8] = {id = 2104428,lv = 80}},exWeapon = {[1] = 7,[2] = 6,[3] = 3,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 232,desc = "daily_exwp-9-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 4,exert = 15,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6050920,cardId = 1101997,lv = 80,bklv = 11,star = 1,equip = {[1] = {id = 2003421,lv = 80},[2] = {id = 2003422,lv = 80},[3] = {id = 2003423,lv = 80},[4] = {id = 2003424,lv = 80},[5] = {id = 2003425,lv = 80},[6] = {id = 2003426,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}},mon = {id = 205,desc = "daily_exwp-9-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 4,exert = 11,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6050921,cardId = 1102996,lv = 80,bklv = 12,star = 1,ghost = 25,equip = {[1] = {id = 2104421,lv = 80},[2] = {id = 2104422,lv = 80},[3] = {id = 2104423,lv = 80},[4] = {id = 2104404,lv = 80},[5] = {id = 2104425,lv = 80},[6] = {id = 2104406,lv = 80},[7] = {id = 2104427,lv = 80},[8] = {id = 2104428,lv = 80}},exWeapon = {[1] = 7,[2] = 6,[3] = 3,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 221,desc = "daily_exwp-9-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 4,exert = 15,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6050930,cardId = 1101997,lv = 80,bklv = 11,star = 1,equip = {[1] = {id = 2003421,lv = 80},[2] = {id = 2003422,lv = 80},[3] = {id = 2003423,lv = 80},[4] = {id = 2003424,lv = 80},[5] = {id = 2003425,lv = 80},[6] = {id = 2003426,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}},mon = {id = 204,desc = "daily_exwp-9-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 4,exert = 11,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6050931,cardId = 1102997,lv = 80,bklv = 12,star = 1,ghost = 25,equip = {[1] = {id = 2104421,lv = 80},[2] = {id = 2104422,lv = 80},[3] = {id = 2104423,lv = 80},[4] = {id = 2104404,lv = 80},[5] = {id = 2104425,lv = 80},[6] = {id = 2104406,lv = 80},[7] = {id = 2104427,lv = 80},[8] = {id = 2104428,lv = 80}},exWeapon = {[1] = 7,[2] = 6,[3] = 3,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 226,desc = "daily_exwp-9-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 4,exert = 15,suffer = 25}}
		}
	},
	[60510] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6051010,cardId = 1101999,lv = 100,bklv = 14,star = 2,equip = {[1] = {id = 2005301,lv = 100},[2] = {id = 2005302,lv = 100},[3] = {id = 2005303,lv = 100},[4] = {id = 2005304,lv = 100},[5] = {id = 2005305,lv = 100},[6] = {id = 2005306,lv = 100},[7] = {id = 2005307,lv = 100},[8] = {id = 2005308,lv = 100}},mon = {id = 201,desc = "daily_exwp-10-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 3,exert = 21,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6051011,cardId = 1102999,lv = 100,bklv = 14,star = 2,ghost = 33,equip = {[1] = {id = 2106301,lv = 100},[2] = {id = 2106302,lv = 100},[3] = {id = 2106303,lv = 100},[4] = {id = 2106304,lv = 100},[5] = {id = 2106305,lv = 100},[6] = {id = 2106306,lv = 100},[7] = {id = 2106307,lv = 100},[8] = {id = 2106308,lv = 100}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 235,desc = "daily_exwp-10-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 3,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6051020,cardId = 1101997,lv = 100,bklv = 14,star = 1,equip = {[1] = {id = 2005301,lv = 100},[2] = {id = 2005302,lv = 100},[3] = {id = 2005303,lv = 100},[4] = {id = 2005304,lv = 100},[5] = {id = 2005305,lv = 100},[6] = {id = 2005306,lv = 100},[7] = {id = 2005307,lv = 100},[8] = {id = 2005308,lv = 100}},mon = {id = 202,desc = "daily_exwp-10-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 3,exert = 21,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6051021,cardId = 1102998,lv = 100,bklv = 14,star = 1,ghost = 33,equip = {[1] = {id = 2106301,lv = 100},[2] = {id = 2106302,lv = 100},[3] = {id = 2106303,lv = 100},[4] = {id = 2106304,lv = 100},[5] = {id = 2106305,lv = 100},[6] = {id = 2106306,lv = 100},[7] = {id = 2106307,lv = 100},[8] = {id = 2106308,lv = 100}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 224,desc = "daily_exwp-10-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 3,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6051030,cardId = 1101999,lv = 100,bklv = 14,star = 2,equip = {[1] = {id = 2005301,lv = 100},[2] = {id = 2005302,lv = 100},[3] = {id = 2005303,lv = 100},[4] = {id = 2005304,lv = 100},[5] = {id = 2005305,lv = 100},[6] = {id = 2005306,lv = 100},[7] = {id = 2005307,lv = 100},[8] = {id = 2005308,lv = 100}},mon = {id = 203,desc = "daily_exwp-10-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 3,exert = 21,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6051031,cardId = 1102999,lv = 100,bklv = 14,star = 2,ghost = 33,equip = {[1] = {id = 2106301,lv = 100},[2] = {id = 2106302,lv = 100},[3] = {id = 2106303,lv = 100},[4] = {id = 2106304,lv = 100},[5] = {id = 2106305,lv = 100},[6] = {id = 2106306,lv = 100},[7] = {id = 2106307,lv = 100},[8] = {id = 2106308,lv = 100}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 233,desc = "daily_exwp-10-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 3,exert = 25,suffer = 25}}
		}
	},
	[60511] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6051110,cardId = 1101998,lv = 100,bklv = 14,star = 2,equip = {[1] = {id = 2005401,lv = 100},[2] = {id = 2005402,lv = 100},[3] = {id = 2005403,lv = 100},[4] = {id = 2005404,lv = 100},[5] = {id = 2005405,lv = 100},[6] = {id = 2005406,lv = 100},[7] = {id = 2005407,lv = 100},[8] = {id = 2005408,lv = 100}},mon = {id = 201,desc = "daily_exwp-11-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6051111,cardId = 1102998,lv = 100,bklv = 14,star = 2,ghost = 33,equip = {[1] = {id = 2106401,lv = 100},[2] = {id = 2106402,lv = 100},[3] = {id = 2106403,lv = 100},[4] = {id = 2106404,lv = 100},[5] = {id = 2106405,lv = 100},[6] = {id = 2106406,lv = 100},[7] = {id = 2106407,lv = 100},[8] = {id = 2106408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 3,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 222,desc = "daily_exwp-11-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6051120,cardId = 1101997,lv = 100,bklv = 14,star = 1,equip = {[1] = {id = 2005401,lv = 100},[2] = {id = 2005402,lv = 100},[3] = {id = 2005403,lv = 100},[4] = {id = 2005404,lv = 100},[5] = {id = 2005405,lv = 100},[6] = {id = 2005406,lv = 100},[7] = {id = 2005407,lv = 100},[8] = {id = 2005408,lv = 100}},mon = {id = 214,desc = "daily_exwp-11-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6051121,cardId = 1102997,lv = 100,bklv = 14,star = 1,ghost = 33,equip = {[1] = {id = 2106401,lv = 100},[2] = {id = 2106402,lv = 100},[3] = {id = 2106403,lv = 100},[4] = {id = 2106404,lv = 100},[5] = {id = 2106405,lv = 100},[6] = {id = 2106406,lv = 100},[7] = {id = 2106407,lv = 100},[8] = {id = 2106408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 3,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 240,desc = "daily_exwp-11-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6051130,cardId = 1101998,lv = 100,bklv = 14,star = 2,equip = {[1] = {id = 2005401,lv = 100},[2] = {id = 2005402,lv = 100},[3] = {id = 2005403,lv = 100},[4] = {id = 2005404,lv = 100},[5] = {id = 2005405,lv = 100},[6] = {id = 2005406,lv = 100},[7] = {id = 2005407,lv = 100},[8] = {id = 2005408,lv = 100}},mon = {id = 203,desc = "daily_exwp-11-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6051131,cardId = 1102998,lv = 100,bklv = 14,star = 2,ghost = 33,equip = {[1] = {id = 2106401,lv = 100},[2] = {id = 2106402,lv = 100},[3] = {id = 2106403,lv = 100},[4] = {id = 2106404,lv = 100},[5] = {id = 2106405,lv = 100},[6] = {id = 2106406,lv = 100},[7] = {id = 2106407,lv = 100},[8] = {id = 2106408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 3,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 225,desc = "daily_exwp-11-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		}
	},
	[60512] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6051210,cardId = 1101997,lv = 100,bklv = 14,star = 2,equip = {[1] = {id = 2005421,lv = 100},[2] = {id = 2005422,lv = 100},[3] = {id = 2005423,lv = 100},[4] = {id = 2005434,lv = 100},[5] = {id = 2005425,lv = 100},[6] = {id = 2005436,lv = 100},[7] = {id = 2005407,lv = 100},[8] = {id = 2005408,lv = 100}},mon = {id = 207,desc = "daily_exwp-12-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 5,exert = 11,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6051211,cardId = 1102997,lv = 100,bklv = 14,star = 2,ghost = 33,equip = {[1] = {id = 2106411,lv = 100},[2] = {id = 2106412,lv = 100},[3] = {id = 2106413,lv = 100},[4] = {id = 2106404,lv = 100},[5] = {id = 2106415,lv = 100},[6] = {id = 2106406,lv = 100},[7] = {id = 2106417,lv = 100},[8] = {id = 2106418,lv = 100}},exWeapon = {[1] = 8,[2] = 7,[3] = 6,[4] = 4,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 232,desc = "daily_exwp-12-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 5,exert = 15,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6051220,cardId = 1101997,lv = 100,bklv = 14,star = 1,equip = {[1] = {id = 2005421,lv = 100},[2] = {id = 2005422,lv = 100},[3] = {id = 2005423,lv = 100},[4] = {id = 2005434,lv = 100},[5] = {id = 2005425,lv = 100},[6] = {id = 2005436,lv = 100},[7] = {id = 2005407,lv = 100},[8] = {id = 2005408,lv = 100}},mon = {id = 205,desc = "daily_exwp-12-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 5,exert = 11,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6051221,cardId = 1102996,lv = 100,bklv = 14,star = 1,ghost = 33,equip = {[1] = {id = 2106411,lv = 100},[2] = {id = 2106412,lv = 100},[3] = {id = 2106413,lv = 100},[4] = {id = 2106404,lv = 100},[5] = {id = 2106415,lv = 100},[6] = {id = 2106406,lv = 100},[7] = {id = 2106417,lv = 100},[8] = {id = 2106418,lv = 100}},exWeapon = {[1] = 8,[2] = 7,[3] = 6,[4] = 4,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 221,desc = "daily_exwp-12-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 5,exert = 15,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6051230,cardId = 1101997,lv = 100,bklv = 14,star = 2,equip = {[1] = {id = 2005421,lv = 100},[2] = {id = 2005422,lv = 100},[3] = {id = 2005423,lv = 100},[4] = {id = 2005434,lv = 100},[5] = {id = 2005425,lv = 100},[6] = {id = 2005436,lv = 100},[7] = {id = 2005407,lv = 100},[8] = {id = 2005408,lv = 100}},mon = {id = 204,desc = "daily_exwp-12-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 5,exert = 11,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6051231,cardId = 1102997,lv = 100,bklv = 14,star = 2,ghost = 33,equip = {[1] = {id = 2106411,lv = 100},[2] = {id = 2106412,lv = 100},[3] = {id = 2106413,lv = 100},[4] = {id = 2106404,lv = 100},[5] = {id = 2106415,lv = 100},[6] = {id = 2106406,lv = 100},[7] = {id = 2106417,lv = 100},[8] = {id = 2106418,lv = 100}},exWeapon = {[1] = 8,[2] = 7,[3] = 6,[4] = 4,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 226,desc = "daily_exwp-12-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 5,exert = 15,suffer = 25}}
		}
	},
	[60513] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6051310,cardId = 1101999,lv = 110,bklv = 15,star = 2,equip = {[1] = {id = 2006301,lv = 110},[2] = {id = 2006302,lv = 110},[3] = {id = 2006303,lv = 110},[4] = {id = 2006304,lv = 110},[5] = {id = 2006305,lv = 110},[6] = {id = 2006306,lv = 110},[7] = {id = 2006307,lv = 110},[8] = {id = 2006308,lv = 110}},mon = {id = 201,desc = "daily_exwp-13-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 4,exert = 21,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6051311,cardId = 1102999,lv = 110,bklv = 16,star = 2,ghost = 37,equip = {[1] = {id = 2107301,lv = 110},[2] = {id = 2107302,lv = 110},[3] = {id = 2107303,lv = 110},[4] = {id = 2107304,lv = 110},[5] = {id = 2107305,lv = 110},[6] = {id = 2107306,lv = 110},[7] = {id = 2107307,lv = 110},[8] = {id = 2107308,lv = 110}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 235,desc = "daily_exwp-13-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 4,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6051320,cardId = 1101997,lv = 110,bklv = 15,star = 2,equip = {[1] = {id = 2006301,lv = 110},[2] = {id = 2006302,lv = 110},[3] = {id = 2006303,lv = 110},[4] = {id = 2006304,lv = 110},[5] = {id = 2006305,lv = 110},[6] = {id = 2006306,lv = 110},[7] = {id = 2006307,lv = 110},[8] = {id = 2006308,lv = 110}},mon = {id = 202,desc = "daily_exwp-13-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 4,exert = 21,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6051321,cardId = 1102998,lv = 110,bklv = 16,star = 2,ghost = 37,equip = {[1] = {id = 2107301,lv = 110},[2] = {id = 2107302,lv = 110},[3] = {id = 2107303,lv = 110},[4] = {id = 2107304,lv = 110},[5] = {id = 2107305,lv = 110},[6] = {id = 2107306,lv = 110},[7] = {id = 2107307,lv = 110},[8] = {id = 2107308,lv = 110}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 224,desc = "daily_exwp-13-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 4,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6051330,cardId = 1101999,lv = 110,bklv = 15,star = 2,equip = {[1] = {id = 2006301,lv = 110},[2] = {id = 2006302,lv = 110},[3] = {id = 2006303,lv = 110},[4] = {id = 2006304,lv = 110},[5] = {id = 2006305,lv = 110},[6] = {id = 2006306,lv = 110},[7] = {id = 2006307,lv = 110},[8] = {id = 2006308,lv = 110}},mon = {id = 203,desc = "daily_exwp-13-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 4,exert = 21,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6051331,cardId = 1102999,lv = 110,bklv = 16,star = 2,ghost = 37,equip = {[1] = {id = 2107301,lv = 110},[2] = {id = 2107302,lv = 110},[3] = {id = 2107303,lv = 110},[4] = {id = 2107304,lv = 110},[5] = {id = 2107305,lv = 110},[6] = {id = 2107306,lv = 110},[7] = {id = 2107307,lv = 110},[8] = {id = 2107308,lv = 110}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 233,desc = "daily_exwp-13-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 4,exert = 25,suffer = 25}}
		}
	},
	[60514] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6051410,cardId = 1101998,lv = 110,bklv = 15,star = 2,equip = {[1] = {id = 2006401,lv = 110},[2] = {id = 2006402,lv = 110},[3] = {id = 2006403,lv = 110},[4] = {id = 2006404,lv = 110},[5] = {id = 2006405,lv = 110},[6] = {id = 2006406,lv = 110},[7] = {id = 2006407,lv = 110},[8] = {id = 2006408,lv = 110}},mon = {id = 201,desc = "daily_exwp-14-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 5,exert = 14,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6051411,cardId = 1102998,lv = 110,bklv = 16,star = 2,ghost = 37,equip = {[1] = {id = 2107401,lv = 110},[2] = {id = 2107402,lv = 110},[3] = {id = 2107403,lv = 110},[4] = {id = 2107404,lv = 110},[5] = {id = 2107405,lv = 110},[6] = {id = 2107406,lv = 110},[7] = {id = 2107407,lv = 110},[8] = {id = 2107408,lv = 110}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0},mon = {id = 222,desc = "daily_exwp-14-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 5,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6051420,cardId = 1101997,lv = 110,bklv = 15,star = 2,equip = {[1] = {id = 2006401,lv = 110},[2] = {id = 2006402,lv = 110},[3] = {id = 2006403,lv = 110},[4] = {id = 2006404,lv = 110},[5] = {id = 2006405,lv = 110},[6] = {id = 2006406,lv = 110},[7] = {id = 2006407,lv = 110},[8] = {id = 2006408,lv = 110}},mon = {id = 214,desc = "daily_exwp-14-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 5,exert = 14,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6051421,cardId = 1102997,lv = 110,bklv = 16,star = 2,ghost = 37,equip = {[1] = {id = 2107401,lv = 110},[2] = {id = 2107402,lv = 110},[3] = {id = 2107403,lv = 110},[4] = {id = 2107404,lv = 110},[5] = {id = 2107405,lv = 110},[6] = {id = 2107406,lv = 110},[7] = {id = 2107407,lv = 110},[8] = {id = 2107408,lv = 110}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0},mon = {id = 240,desc = "daily_exwp-14-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 5,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6051430,cardId = 1101998,lv = 110,bklv = 15,star = 2,equip = {[1] = {id = 2006401,lv = 110},[2] = {id = 2006402,lv = 110},[3] = {id = 2006403,lv = 110},[4] = {id = 2006404,lv = 110},[5] = {id = 2006405,lv = 110},[6] = {id = 2006406,lv = 110},[7] = {id = 2006407,lv = 110},[8] = {id = 2006408,lv = 110}},mon = {id = 203,desc = "daily_exwp-14-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 5,exert = 14,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6051431,cardId = 1102998,lv = 110,bklv = 16,star = 2,ghost = 37,equip = {[1] = {id = 2107401,lv = 110},[2] = {id = 2107402,lv = 110},[3] = {id = 2107403,lv = 110},[4] = {id = 2107404,lv = 110},[5] = {id = 2107405,lv = 110},[6] = {id = 2107406,lv = 110},[7] = {id = 2107407,lv = 110},[8] = {id = 2107408,lv = 110}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0},mon = {id = 225,desc = "daily_exwp-14-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 5,exert = 18,suffer = 25}}
		}
	},
	[60515] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6051510,cardId = 1101997,lv = 110,bklv = 15,star = 2,equip = {[1] = {id = 2006411,lv = 110},[2] = {id = 2006412,lv = 110},[3] = {id = 2006413,lv = 110},[4] = {id = 2006404,lv = 110},[5] = {id = 2006415,lv = 110},[6] = {id = 2006406,lv = 110},[7] = {id = 2006417,lv = 110},[8] = {id = 2006418,lv = 110}},mon = {id = 207,desc = "daily_exwp-15-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 6,exert = 11,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6051511,cardId = 1102997,lv = 110,bklv = 16,star = 2,ghost = 37,equip = {[1] = {id = 2107421,lv = 110},[2] = {id = 2107422,lv = 110},[3] = {id = 2107423,lv = 110},[4] = {id = 2107424,lv = 110},[5] = {id = 2107425,lv = 110},[6] = {id = 2107426,lv = 110},[7] = {id = 2107407,lv = 110},[8] = {id = 2107408,lv = 110}},exWeapon = {[1] = 8,[2] = 7,[3] = 6,[4] = 5,[5] = 3,[6] = 0,[7] = 0,[8] = 0},mon = {id = 232,desc = "daily_exwp-15-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 6,exert = 15,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6051520,cardId = 1101997,lv = 110,bklv = 15,star = 2,equip = {[1] = {id = 2006411,lv = 110},[2] = {id = 2006412,lv = 110},[3] = {id = 2006413,lv = 110},[4] = {id = 2006404,lv = 110},[5] = {id = 2006415,lv = 110},[6] = {id = 2006406,lv = 110},[7] = {id = 2006417,lv = 110},[8] = {id = 2006418,lv = 110}},mon = {id = 205,desc = "daily_exwp-15-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 6,exert = 11,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6051521,cardId = 1102996,lv = 110,bklv = 16,star = 2,ghost = 37,equip = {[1] = {id = 2107421,lv = 110},[2] = {id = 2107422,lv = 110},[3] = {id = 2107423,lv = 110},[4] = {id = 2107424,lv = 110},[5] = {id = 2107425,lv = 110},[6] = {id = 2107426,lv = 110},[7] = {id = 2107407,lv = 110},[8] = {id = 2107408,lv = 110}},exWeapon = {[1] = 8,[2] = 7,[3] = 6,[4] = 5,[5] = 3,[6] = 0,[7] = 0,[8] = 0},mon = {id = 221,desc = "daily_exwp-15-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 6,exert = 15,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6051530,cardId = 1101997,lv = 110,bklv = 15,star = 2,equip = {[1] = {id = 2006411,lv = 110},[2] = {id = 2006412,lv = 110},[3] = {id = 2006413,lv = 110},[4] = {id = 2006404,lv = 110},[5] = {id = 2006415,lv = 110},[6] = {id = 2006406,lv = 110},[7] = {id = 2006417,lv = 110},[8] = {id = 2006418,lv = 110}},mon = {id = 204,desc = "daily_exwp-15-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 6,exert = 11,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6051531,cardId = 1102997,lv = 110,bklv = 16,star = 2,ghost = 37,equip = {[1] = {id = 2107421,lv = 110},[2] = {id = 2107422,lv = 110},[3] = {id = 2107423,lv = 110},[4] = {id = 2107424,lv = 110},[5] = {id = 2107425,lv = 110},[6] = {id = 2107426,lv = 110},[7] = {id = 2107407,lv = 110},[8] = {id = 2107408,lv = 110}},exWeapon = {[1] = 8,[2] = 7,[3] = 6,[4] = 5,[5] = 3,[6] = 0,[7] = 0,[8] = 0},mon = {id = 226,desc = "daily_exwp-15-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 6,exert = 15,suffer = 25}}
		}
	},
	[60516] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6051610,cardId = 1101999,lv = 120,bklv = 16,star = 3,equip = {[1] = {id = 2007301,lv = 120},[2] = {id = 2007302,lv = 120},[3] = {id = 2007303,lv = 120},[4] = {id = 2007304,lv = 120},[5] = {id = 2007305,lv = 120},[6] = {id = 2007306,lv = 120},[7] = {id = 2007307,lv = 120},[8] = {id = 2007308,lv = 120}},mon = {id = 201,desc = "daily_exwp-16-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 5,exert = 21,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6051611,cardId = 1102999,lv = 120,bklv = 17,star = 3,ghost = 41,equip = {[1] = {id = 2108301,lv = 120},[2] = {id = 2108302,lv = 120},[3] = {id = 2108303,lv = 120},[4] = {id = 2108304,lv = 120},[5] = {id = 2108305,lv = 120},[6] = {id = 2108306,lv = 120},[7] = {id = 2108307,lv = 120},[8] = {id = 2108308,lv = 120}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 235,desc = "daily_exwp-16-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 5,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6051620,cardId = 1101997,lv = 120,bklv = 16,star = 2,equip = {[1] = {id = 2007301,lv = 120},[2] = {id = 2007302,lv = 120},[3] = {id = 2007303,lv = 120},[4] = {id = 2007304,lv = 120},[5] = {id = 2007305,lv = 120},[6] = {id = 2007306,lv = 120},[7] = {id = 2007307,lv = 120},[8] = {id = 2007308,lv = 120}},mon = {id = 202,desc = "daily_exwp-16-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 5,exert = 21,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6051621,cardId = 1102998,lv = 120,bklv = 17,star = 2,ghost = 41,equip = {[1] = {id = 2108301,lv = 120},[2] = {id = 2108302,lv = 120},[3] = {id = 2108303,lv = 120},[4] = {id = 2108304,lv = 120},[5] = {id = 2108305,lv = 120},[6] = {id = 2108306,lv = 120},[7] = {id = 2108307,lv = 120},[8] = {id = 2108308,lv = 120}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 224,desc = "daily_exwp-16-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 5,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6051630,cardId = 1101999,lv = 120,bklv = 16,star = 3,equip = {[1] = {id = 2007301,lv = 120},[2] = {id = 2007302,lv = 120},[3] = {id = 2007303,lv = 120},[4] = {id = 2007304,lv = 120},[5] = {id = 2007305,lv = 120},[6] = {id = 2007306,lv = 120},[7] = {id = 2007307,lv = 120},[8] = {id = 2007308,lv = 120}},mon = {id = 203,desc = "daily_exwp-16-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 5,exert = 21,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6051631,cardId = 1102999,lv = 120,bklv = 17,star = 3,ghost = 41,equip = {[1] = {id = 2108301,lv = 120},[2] = {id = 2108302,lv = 120},[3] = {id = 2108303,lv = 120},[4] = {id = 2108304,lv = 120},[5] = {id = 2108305,lv = 120},[6] = {id = 2108306,lv = 120},[7] = {id = 2108307,lv = 120},[8] = {id = 2108308,lv = 120}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 233,desc = "daily_exwp-16-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 5,exert = 25,suffer = 25}}
		}
	},
	[60517] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6051710,cardId = 1101998,lv = 120,bklv = 16,star = 3,equip = {[1] = {id = 2007401,lv = 120},[2] = {id = 2007402,lv = 120},[3] = {id = 2007403,lv = 120},[4] = {id = 2007404,lv = 120},[5] = {id = 2007405,lv = 120},[6] = {id = 2007406,lv = 120},[7] = {id = 2007407,lv = 120},[8] = {id = 2007408,lv = 120}},mon = {id = 201,desc = "daily_exwp-17-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 6,exert = 14,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6051711,cardId = 1102998,lv = 120,bklv = 17,star = 3,ghost = 41,equip = {[1] = {id = 2108401,lv = 120},[2] = {id = 2108402,lv = 120},[3] = {id = 2108403,lv = 120},[4] = {id = 2108404,lv = 120},[5] = {id = 2108405,lv = 120},[6] = {id = 2108406,lv = 120},[7] = {id = 2108407,lv = 120},[8] = {id = 2108408,lv = 120}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 3,[6] = 1,[7] = 0,[8] = 0},mon = {id = 222,desc = "daily_exwp-17-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 6,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6051720,cardId = 1101997,lv = 120,bklv = 16,star = 2,equip = {[1] = {id = 2007401,lv = 120},[2] = {id = 2007402,lv = 120},[3] = {id = 2007403,lv = 120},[4] = {id = 2007404,lv = 120},[5] = {id = 2007405,lv = 120},[6] = {id = 2007406,lv = 120},[7] = {id = 2007407,lv = 120},[8] = {id = 2007408,lv = 120}},mon = {id = 214,desc = "daily_exwp-17-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 6,exert = 14,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6051721,cardId = 1102997,lv = 120,bklv = 17,star = 2,ghost = 41,equip = {[1] = {id = 2108401,lv = 120},[2] = {id = 2108402,lv = 120},[3] = {id = 2108403,lv = 120},[4] = {id = 2108404,lv = 120},[5] = {id = 2108405,lv = 120},[6] = {id = 2108406,lv = 120},[7] = {id = 2108407,lv = 120},[8] = {id = 2108408,lv = 120}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 3,[6] = 1,[7] = 0,[8] = 0},mon = {id = 240,desc = "daily_exwp-17-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 6,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6051730,cardId = 1101998,lv = 120,bklv = 16,star = 3,equip = {[1] = {id = 2007401,lv = 120},[2] = {id = 2007402,lv = 120},[3] = {id = 2007403,lv = 120},[4] = {id = 2007404,lv = 120},[5] = {id = 2007405,lv = 120},[6] = {id = 2007406,lv = 120},[7] = {id = 2007407,lv = 120},[8] = {id = 2007408,lv = 120}},mon = {id = 203,desc = "daily_exwp-17-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 6,exert = 14,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6051731,cardId = 1102998,lv = 120,bklv = 17,star = 3,ghost = 41,equip = {[1] = {id = 2108401,lv = 120},[2] = {id = 2108402,lv = 120},[3] = {id = 2108403,lv = 120},[4] = {id = 2108404,lv = 120},[5] = {id = 2108405,lv = 120},[6] = {id = 2108406,lv = 120},[7] = {id = 2108407,lv = 120},[8] = {id = 2108408,lv = 120}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 3,[6] = 1,[7] = 0,[8] = 0},mon = {id = 225,desc = "daily_exwp-17-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 6,exert = 18,suffer = 25}}
		}
	},
	[60518] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6051810,cardId = 1101997,lv = 120,bklv = 16,star = 3,equip = {[1] = {id = 2007421,lv = 120},[2] = {id = 2007422,lv = 120},[3] = {id = 2007423,lv = 120},[4] = {id = 2007424,lv = 120},[5] = {id = 2007425,lv = 120},[6] = {id = 2007426,lv = 120},[7] = {id = 2007407,lv = 120},[8] = {id = 2007408,lv = 120}},mon = {id = 207,desc = "daily_exwp-18-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 7,exert = 11,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6051811,cardId = 1102997,lv = 120,bklv = 17,star = 3,ghost = 41,equip = {[1] = {id = 2108421,lv = 120},[2] = {id = 2108422,lv = 120},[3] = {id = 2108413,lv = 120},[4] = {id = 2108404,lv = 120},[5] = {id = 2108415,lv = 120},[6] = {id = 2108406,lv = 120},[7] = {id = 2108427,lv = 120},[8] = {id = 2108428,lv = 120}},exWeapon = {[1] = 8,[2] = 8,[3] = 6,[4] = 6,[5] = 4,[6] = 2,[7] = 0,[8] = 0},mon = {id = 232,desc = "daily_exwp-18-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 7,exert = 15,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6051820,cardId = 1101997,lv = 120,bklv = 16,star = 2,equip = {[1] = {id = 2007421,lv = 120},[2] = {id = 2007422,lv = 120},[3] = {id = 2007423,lv = 120},[4] = {id = 2007424,lv = 120},[5] = {id = 2007425,lv = 120},[6] = {id = 2007426,lv = 120},[7] = {id = 2007407,lv = 120},[8] = {id = 2007408,lv = 120}},mon = {id = 205,desc = "daily_exwp-18-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 7,exert = 11,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6051821,cardId = 1102996,lv = 120,bklv = 17,star = 2,ghost = 41,equip = {[1] = {id = 2108421,lv = 120},[2] = {id = 2108422,lv = 120},[3] = {id = 2108413,lv = 120},[4] = {id = 2108404,lv = 120},[5] = {id = 2108415,lv = 120},[6] = {id = 2108406,lv = 120},[7] = {id = 2108427,lv = 120},[8] = {id = 2108428,lv = 120}},exWeapon = {[1] = 8,[2] = 8,[3] = 6,[4] = 6,[5] = 4,[6] = 2,[7] = 0,[8] = 0},mon = {id = 221,desc = "daily_exwp-18-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 7,exert = 15,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6051830,cardId = 1101997,lv = 120,bklv = 16,star = 3,equip = {[1] = {id = 2007421,lv = 120},[2] = {id = 2007422,lv = 120},[3] = {id = 2007423,lv = 120},[4] = {id = 2007424,lv = 120},[5] = {id = 2007425,lv = 120},[6] = {id = 2007426,lv = 120},[7] = {id = 2007407,lv = 120},[8] = {id = 2007408,lv = 120}},mon = {id = 204,desc = "daily_exwp-18-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 7,exert = 11,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6051831,cardId = 1102997,lv = 120,bklv = 17,star = 3,ghost = 41,equip = {[1] = {id = 2108421,lv = 120},[2] = {id = 2108422,lv = 120},[3] = {id = 2108413,lv = 120},[4] = {id = 2108404,lv = 120},[5] = {id = 2108415,lv = 120},[6] = {id = 2108406,lv = 120},[7] = {id = 2108427,lv = 120},[8] = {id = 2108428,lv = 120}},exWeapon = {[1] = 8,[2] = 8,[3] = 6,[4] = 6,[5] = 4,[6] = 2,[7] = 0,[8] = 0},mon = {id = 226,desc = "daily_exwp-18-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 7,exert = 15,suffer = 25}}
		}
	},
	[60519] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6051910,cardId = 1101999,lv = 130,bklv = 17,star = 3,equip = {[1] = {id = 2008301,lv = 130},[2] = {id = 2008302,lv = 130},[3] = {id = 2008303,lv = 130},[4] = {id = 2008304,lv = 130},[5] = {id = 2008305,lv = 130},[6] = {id = 2008306,lv = 130},[7] = {id = 2008307,lv = 130},[8] = {id = 2008308,lv = 130}},mon = {id = 201,desc = "daily_exwp-19-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 7,exert = 21,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6051911,cardId = 1102999,lv = 130,bklv = 18,star = 3,ghost = 45,equip = {[1] = {id = 2109301,lv = 130},[2] = {id = 2109302,lv = 130},[3] = {id = 2109303,lv = 130},[4] = {id = 2109304,lv = 130},[5] = {id = 2109305,lv = 130},[6] = {id = 2109306,lv = 130},[7] = {id = 2109307,lv = 130},[8] = {id = 2109308,lv = 130}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 235,desc = "daily_exwp-19-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 7,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6051920,cardId = 1101997,lv = 130,bklv = 17,star = 3,equip = {[1] = {id = 2008301,lv = 130},[2] = {id = 2008302,lv = 130},[3] = {id = 2008303,lv = 130},[4] = {id = 2008304,lv = 130},[5] = {id = 2008305,lv = 130},[6] = {id = 2008306,lv = 130},[7] = {id = 2008307,lv = 130},[8] = {id = 2008308,lv = 130}},mon = {id = 202,desc = "daily_exwp-19-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 7,exert = 21,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6051921,cardId = 1102998,lv = 130,bklv = 18,star = 3,ghost = 45,equip = {[1] = {id = 2109301,lv = 130},[2] = {id = 2109302,lv = 130},[3] = {id = 2109303,lv = 130},[4] = {id = 2109304,lv = 130},[5] = {id = 2109305,lv = 130},[6] = {id = 2109306,lv = 130},[7] = {id = 2109307,lv = 130},[8] = {id = 2109308,lv = 130}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 224,desc = "daily_exwp-19-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 7,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6051930,cardId = 1101999,lv = 130,bklv = 17,star = 3,equip = {[1] = {id = 2008301,lv = 130},[2] = {id = 2008302,lv = 130},[3] = {id = 2008303,lv = 130},[4] = {id = 2008304,lv = 130},[5] = {id = 2008305,lv = 130},[6] = {id = 2008306,lv = 130},[7] = {id = 2008307,lv = 130},[8] = {id = 2008308,lv = 130}},mon = {id = 203,desc = "daily_exwp-19-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 7,exert = 21,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6051931,cardId = 1102999,lv = 130,bklv = 18,star = 3,ghost = 45,equip = {[1] = {id = 2109301,lv = 130},[2] = {id = 2109302,lv = 130},[3] = {id = 2109303,lv = 130},[4] = {id = 2109304,lv = 130},[5] = {id = 2109305,lv = 130},[6] = {id = 2109306,lv = 130},[7] = {id = 2109307,lv = 130},[8] = {id = 2109308,lv = 130}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 233,desc = "daily_exwp-19-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 7,exert = 25,suffer = 25}}
		}
	},
	[60520] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6052010,cardId = 1101998,lv = 130,bklv = 17,star = 3,equip = {[1] = {id = 2008401,lv = 130},[2] = {id = 2008402,lv = 130},[3] = {id = 2008403,lv = 130},[4] = {id = 2008404,lv = 130},[5] = {id = 2008405,lv = 130},[6] = {id = 2008406,lv = 130},[7] = {id = 2008407,lv = 130},[8] = {id = 2008408,lv = 130}},mon = {id = 201,desc = "daily_exwp-20-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 8,exert = 14,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6052011,cardId = 1102998,lv = 130,bklv = 18,star = 3,ghost = 45,equip = {[1] = {id = 2109401,lv = 130},[2] = {id = 2109402,lv = 130},[3] = {id = 2109403,lv = 130},[4] = {id = 2109404,lv = 130},[5] = {id = 2109405,lv = 130},[6] = {id = 2109406,lv = 130},[7] = {id = 2109407,lv = 130},[8] = {id = 2109408,lv = 130}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 3,[6] = 3,[7] = 1,[8] = 0},mon = {id = 222,desc = "daily_exwp-20-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 8,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6052020,cardId = 1101997,lv = 130,bklv = 17,star = 3,equip = {[1] = {id = 2008401,lv = 130},[2] = {id = 2008402,lv = 130},[3] = {id = 2008403,lv = 130},[4] = {id = 2008404,lv = 130},[5] = {id = 2008405,lv = 130},[6] = {id = 2008406,lv = 130},[7] = {id = 2008407,lv = 130},[8] = {id = 2008408,lv = 130}},mon = {id = 214,desc = "daily_exwp-20-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 8,exert = 14,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6052021,cardId = 1102997,lv = 130,bklv = 18,star = 3,ghost = 45,equip = {[1] = {id = 2109401,lv = 130},[2] = {id = 2109402,lv = 130},[3] = {id = 2109403,lv = 130},[4] = {id = 2109404,lv = 130},[5] = {id = 2109405,lv = 130},[6] = {id = 2109406,lv = 130},[7] = {id = 2109407,lv = 130},[8] = {id = 2109408,lv = 130}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 3,[6] = 3,[7] = 1,[8] = 0},mon = {id = 240,desc = "daily_exwp-20-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 8,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6052030,cardId = 1101998,lv = 130,bklv = 17,star = 3,equip = {[1] = {id = 2008401,lv = 130},[2] = {id = 2008402,lv = 130},[3] = {id = 2008403,lv = 130},[4] = {id = 2008404,lv = 130},[5] = {id = 2008405,lv = 130},[6] = {id = 2008406,lv = 130},[7] = {id = 2008407,lv = 130},[8] = {id = 2008408,lv = 130}},mon = {id = 203,desc = "daily_exwp-20-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 8,exert = 14,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6052031,cardId = 1102998,lv = 130,bklv = 18,star = 3,ghost = 45,equip = {[1] = {id = 2109401,lv = 130},[2] = {id = 2109402,lv = 130},[3] = {id = 2109403,lv = 130},[4] = {id = 2109404,lv = 130},[5] = {id = 2109405,lv = 130},[6] = {id = 2109406,lv = 130},[7] = {id = 2109407,lv = 130},[8] = {id = 2109408,lv = 130}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 3,[6] = 3,[7] = 1,[8] = 0},mon = {id = 225,desc = "daily_exwp-20-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 8,exert = 18,suffer = 25}}
		}
	},
	[60521] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6052110,cardId = 1101997,lv = 130,bklv = 17,star = 3,equip = {[1] = {id = 2008421,lv = 130},[2] = {id = 2008412,lv = 130},[3] = {id = 2008413,lv = 130},[4] = {id = 2008404,lv = 130},[5] = {id = 2008415,lv = 130},[6] = {id = 2008406,lv = 130},[7] = {id = 2008427,lv = 130},[8] = {id = 2008418,lv = 130}},mon = {id = 207,desc = "daily_exwp-21-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 9,exert = 11,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6052111,cardId = 1102997,lv = 130,bklv = 18,star = 3,ghost = 45,equip = {[1] = {id = 2109421,lv = 130},[2] = {id = 2109422,lv = 130},[3] = {id = 2109423,lv = 130},[4] = {id = 2109424,lv = 130},[5] = {id = 2109425,lv = 130},[6] = {id = 2109426,lv = 130},[7] = {id = 2109407,lv = 130},[8] = {id = 2109408,lv = 130}},exWeapon = {[1] = 8,[2] = 8,[3] = 6,[4] = 6,[5] = 4,[6] = 4,[7] = 2,[8] = 0},mon = {id = 232,desc = "daily_exwp-21-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 9,exert = 15,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6052120,cardId = 1101997,lv = 130,bklv = 17,star = 3,equip = {[1] = {id = 2008421,lv = 130},[2] = {id = 2008412,lv = 130},[3] = {id = 2008413,lv = 130},[4] = {id = 2008404,lv = 130},[5] = {id = 2008415,lv = 130},[6] = {id = 2008406,lv = 130},[7] = {id = 2008427,lv = 130},[8] = {id = 2008418,lv = 130}},mon = {id = 205,desc = "daily_exwp-21-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 9,exert = 11,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6052121,cardId = 1102996,lv = 130,bklv = 18,star = 3,ghost = 45,equip = {[1] = {id = 2109421,lv = 130},[2] = {id = 2109422,lv = 130},[3] = {id = 2109423,lv = 130},[4] = {id = 2109424,lv = 130},[5] = {id = 2109425,lv = 130},[6] = {id = 2109426,lv = 130},[7] = {id = 2109407,lv = 130},[8] = {id = 2109408,lv = 130}},exWeapon = {[1] = 8,[2] = 8,[3] = 6,[4] = 6,[5] = 4,[6] = 4,[7] = 2,[8] = 0},mon = {id = 221,desc = "daily_exwp-21-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 9,exert = 15,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6052130,cardId = 1101997,lv = 130,bklv = 17,star = 3,equip = {[1] = {id = 2008421,lv = 130},[2] = {id = 2008412,lv = 130},[3] = {id = 2008413,lv = 130},[4] = {id = 2008404,lv = 130},[5] = {id = 2008415,lv = 130},[6] = {id = 2008406,lv = 130},[7] = {id = 2008427,lv = 130},[8] = {id = 2008418,lv = 130}},mon = {id = 204,desc = "daily_exwp-21-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 9,exert = 11,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6052131,cardId = 1102997,lv = 130,bklv = 18,star = 3,ghost = 45,equip = {[1] = {id = 2109421,lv = 130},[2] = {id = 2109422,lv = 130},[3] = {id = 2109423,lv = 130},[4] = {id = 2109424,lv = 130},[5] = {id = 2109425,lv = 130},[6] = {id = 2109426,lv = 130},[7] = {id = 2109407,lv = 130},[8] = {id = 2109408,lv = 130}},exWeapon = {[1] = 8,[2] = 8,[3] = 6,[4] = 6,[5] = 4,[6] = 4,[7] = 2,[8] = 0},mon = {id = 226,desc = "daily_exwp-21-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 9,exert = 15,suffer = 25}}
		}
	},
	[60522] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6052210,cardId = 1101999,lv = 140,bklv = 19,star = 4,equip = {[1] = {id = 2009301,lv = 140},[2] = {id = 2009302,lv = 140},[3] = {id = 2009303,lv = 140},[4] = {id = 2009304,lv = 140},[5] = {id = 2009305,lv = 140},[6] = {id = 2009306,lv = 140},[7] = {id = 2009307,lv = 140},[8] = {id = 2009308,lv = 140}},mon = {id = 201,desc = "daily_exwp-22-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 7,exert = 21,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6052211,cardId = 1102999,lv = 140,bklv = 20,star = 4,ghost = 49,equip = {[1] = {id = 2110301,lv = 140},[2] = {id = 2110302,lv = 140},[3] = {id = 2110303,lv = 140},[4] = {id = 2110304,lv = 140},[5] = {id = 2110305,lv = 140},[6] = {id = 2110306,lv = 140},[7] = {id = 2110307,lv = 140},[8] = {id = 2110308,lv = 140}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 235,desc = "daily_exwp-22-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 7,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6052220,cardId = 1101997,lv = 140,bklv = 19,star = 3,equip = {[1] = {id = 2009301,lv = 140},[2] = {id = 2009302,lv = 140},[3] = {id = 2009303,lv = 140},[4] = {id = 2009304,lv = 140},[5] = {id = 2009305,lv = 140},[6] = {id = 2009306,lv = 140},[7] = {id = 2009307,lv = 140},[8] = {id = 2009308,lv = 140}},mon = {id = 202,desc = "daily_exwp-22-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 7,exert = 21,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6052221,cardId = 1102998,lv = 140,bklv = 20,star = 3,ghost = 49,equip = {[1] = {id = 2110301,lv = 140},[2] = {id = 2110302,lv = 140},[3] = {id = 2110303,lv = 140},[4] = {id = 2110304,lv = 140},[5] = {id = 2110305,lv = 140},[6] = {id = 2110306,lv = 140},[7] = {id = 2110307,lv = 140},[8] = {id = 2110308,lv = 140}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 224,desc = "daily_exwp-22-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 7,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6052230,cardId = 1101999,lv = 140,bklv = 19,star = 4,equip = {[1] = {id = 2009301,lv = 140},[2] = {id = 2009302,lv = 140},[3] = {id = 2009303,lv = 140},[4] = {id = 2009304,lv = 140},[5] = {id = 2009305,lv = 140},[6] = {id = 2009306,lv = 140},[7] = {id = 2009307,lv = 140},[8] = {id = 2009308,lv = 140}},mon = {id = 203,desc = "daily_exwp-22-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 7,exert = 21,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6052231,cardId = 1102999,lv = 140,bklv = 20,star = 4,ghost = 49,equip = {[1] = {id = 2110301,lv = 140},[2] = {id = 2110302,lv = 140},[3] = {id = 2110303,lv = 140},[4] = {id = 2110304,lv = 140},[5] = {id = 2110305,lv = 140},[6] = {id = 2110306,lv = 140},[7] = {id = 2110307,lv = 140},[8] = {id = 2110308,lv = 140}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 233,desc = "daily_exwp-22-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 7,exert = 25,suffer = 25}}
		}
	},
	[60523] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6052310,cardId = 1101998,lv = 140,bklv = 19,star = 4,equip = {[1] = {id = 2009401,lv = 140},[2] = {id = 2009402,lv = 140},[3] = {id = 2009403,lv = 140},[4] = {id = 2009404,lv = 140},[5] = {id = 2009405,lv = 140},[6] = {id = 2009406,lv = 140},[7] = {id = 2009407,lv = 140},[8] = {id = 2009408,lv = 140}},mon = {id = 201,desc = "daily_exwp-23-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 8,exert = 14,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6052311,cardId = 1102998,lv = 140,bklv = 20,star = 4,ghost = 49,equip = {[1] = {id = 2110401,lv = 140},[2] = {id = 2110402,lv = 140},[3] = {id = 2110403,lv = 140},[4] = {id = 2110404,lv = 140},[5] = {id = 2110405,lv = 140},[6] = {id = 2110406,lv = 140},[7] = {id = 2110407,lv = 140},[8] = {id = 2110408,lv = 140}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 4,[6] = 3,[7] = 3,[8] = 1},mon = {id = 222,desc = "daily_exwp-23-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 8,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6052320,cardId = 1101997,lv = 140,bklv = 19,star = 3,equip = {[1] = {id = 2009401,lv = 140},[2] = {id = 2009402,lv = 140},[3] = {id = 2009403,lv = 140},[4] = {id = 2009404,lv = 140},[5] = {id = 2009405,lv = 140},[6] = {id = 2009406,lv = 140},[7] = {id = 2009407,lv = 140},[8] = {id = 2009408,lv = 140}},mon = {id = 214,desc = "daily_exwp-23-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 8,exert = 14,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6052321,cardId = 1102997,lv = 140,bklv = 20,star = 3,ghost = 49,equip = {[1] = {id = 2110401,lv = 140},[2] = {id = 2110402,lv = 140},[3] = {id = 2110403,lv = 140},[4] = {id = 2110404,lv = 140},[5] = {id = 2110405,lv = 140},[6] = {id = 2110406,lv = 140},[7] = {id = 2110407,lv = 140},[8] = {id = 2110408,lv = 140}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 4,[6] = 3,[7] = 3,[8] = 1},mon = {id = 240,desc = "daily_exwp-23-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 8,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6052330,cardId = 1101998,lv = 140,bklv = 19,star = 4,equip = {[1] = {id = 2009401,lv = 140},[2] = {id = 2009402,lv = 140},[3] = {id = 2009403,lv = 140},[4] = {id = 2009404,lv = 140},[5] = {id = 2009405,lv = 140},[6] = {id = 2009406,lv = 140},[7] = {id = 2009407,lv = 140},[8] = {id = 2009408,lv = 140}},mon = {id = 203,desc = "daily_exwp-23-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 8,exert = 14,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6052331,cardId = 1102998,lv = 140,bklv = 20,star = 4,ghost = 49,equip = {[1] = {id = 2110401,lv = 140},[2] = {id = 2110402,lv = 140},[3] = {id = 2110403,lv = 140},[4] = {id = 2110404,lv = 140},[5] = {id = 2110405,lv = 140},[6] = {id = 2110406,lv = 140},[7] = {id = 2110407,lv = 140},[8] = {id = 2110408,lv = 140}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 4,[6] = 3,[7] = 3,[8] = 1},mon = {id = 225,desc = "daily_exwp-23-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 8,exert = 18,suffer = 25}}
		}
	},
	[60524] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6052410,cardId = 1101997,lv = 140,bklv = 19,star = 4,equip = {[1] = {id = 2009421,lv = 140},[2] = {id = 2009422,lv = 140},[3] = {id = 2009423,lv = 140},[4] = {id = 2009424,lv = 140},[5] = {id = 2009425,lv = 140},[6] = {id = 2009426,lv = 140},[7] = {id = 2009407,lv = 140},[8] = {id = 2009408,lv = 140}},mon = {id = 207,desc = "daily_exwp-24-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 9,exert = 11,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6052411,cardId = 1102997,lv = 140,bklv = 20,star = 4,ghost = 49,equip = {[1] = {id = 2110411,lv = 140},[2] = {id = 2110412,lv = 140},[3] = {id = 2110413,lv = 140},[4] = {id = 2110404,lv = 140},[5] = {id = 2110415,lv = 140},[6] = {id = 2110406,lv = 140},[7] = {id = 2110417,lv = 140},[8] = {id = 2110418,lv = 140}},exWeapon = {[1] = 8,[2] = 8,[3] = 6,[4] = 6,[5] = 5,[6] = 4,[7] = 4,[8] = 2},mon = {id = 232,desc = "daily_exwp-24-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 9,exert = 15,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6052420,cardId = 1101997,lv = 140,bklv = 19,star = 3,equip = {[1] = {id = 2009421,lv = 140},[2] = {id = 2009422,lv = 140},[3] = {id = 2009423,lv = 140},[4] = {id = 2009424,lv = 140},[5] = {id = 2009425,lv = 140},[6] = {id = 2009426,lv = 140},[7] = {id = 2009407,lv = 140},[8] = {id = 2009408,lv = 140}},mon = {id = 205,desc = "daily_exwp-24-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 9,exert = 11,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6052421,cardId = 1102996,lv = 140,bklv = 20,star = 3,ghost = 49,equip = {[1] = {id = 2110411,lv = 140},[2] = {id = 2110412,lv = 140},[3] = {id = 2110413,lv = 140},[4] = {id = 2110404,lv = 140},[5] = {id = 2110415,lv = 140},[6] = {id = 2110406,lv = 140},[7] = {id = 2110417,lv = 140},[8] = {id = 2110418,lv = 140}},exWeapon = {[1] = 8,[2] = 8,[3] = 6,[4] = 6,[5] = 5,[6] = 4,[7] = 4,[8] = 2},mon = {id = 221,desc = "daily_exwp-24-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 9,exert = 15,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6052430,cardId = 1101997,lv = 140,bklv = 19,star = 4,equip = {[1] = {id = 2009421,lv = 140},[2] = {id = 2009422,lv = 140},[3] = {id = 2009423,lv = 140},[4] = {id = 2009424,lv = 140},[5] = {id = 2009425,lv = 140},[6] = {id = 2009426,lv = 140},[7] = {id = 2009407,lv = 140},[8] = {id = 2009408,lv = 140}},mon = {id = 204,desc = "daily_exwp-24-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 9,exert = 11,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6052431,cardId = 1102997,lv = 140,bklv = 20,star = 4,ghost = 49,equip = {[1] = {id = 2110411,lv = 140},[2] = {id = 2110412,lv = 140},[3] = {id = 2110413,lv = 140},[4] = {id = 2110404,lv = 140},[5] = {id = 2110415,lv = 140},[6] = {id = 2110406,lv = 140},[7] = {id = 2110417,lv = 140},[8] = {id = 2110418,lv = 140}},exWeapon = {[1] = 8,[2] = 8,[3] = 6,[4] = 6,[5] = 5,[6] = 4,[7] = 4,[8] = 2},mon = {id = 226,desc = "daily_exwp-24-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 9,exert = 15,suffer = 25}}
		}
	},
	[60525] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6052510,cardId = 1101999,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2010301,lv = 150},[2] = {id = 2010302,lv = 150},[3] = {id = 2010303,lv = 150},[4] = {id = 2010304,lv = 150},[5] = {id = 2010305,lv = 150},[6] = {id = 2010306,lv = 150},[7] = {id = 2010307,lv = 150},[8] = {id = 2010308,lv = 150}},mon = {id = 201,desc = "daily_exwp-25-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 8,exert = 21,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6052511,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111301,lv = 150},[2] = {id = 2111302,lv = 150},[3] = {id = 2111303,lv = 150},[4] = {id = 2111304,lv = 150},[5] = {id = 2111305,lv = 150},[6] = {id = 2111306,lv = 150},[7] = {id = 2111307,lv = 150},[8] = {id = 2111308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 235,desc = "daily_exwp-25-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 8,exert = 25,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6052520,cardId = 1101997,lv = 150,bklv = 20,star = 4,equip = {[1] = {id = 2010301,lv = 150},[2] = {id = 2010302,lv = 150},[3] = {id = 2010303,lv = 150},[4] = {id = 2010304,lv = 150},[5] = {id = 2010305,lv = 150},[6] = {id = 2010306,lv = 150},[7] = {id = 2010307,lv = 150},[8] = {id = 2010308,lv = 150}},mon = {id = 202,desc = "daily_exwp-25-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 8,exert = 21,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6052521,cardId = 1102998,lv = 150,bklv = 20,star = 4,ghost = 52,equip = {[1] = {id = 2111301,lv = 150},[2] = {id = 2111302,lv = 150},[3] = {id = 2111303,lv = 150},[4] = {id = 2111304,lv = 150},[5] = {id = 2111305,lv = 150},[6] = {id = 2111306,lv = 150},[7] = {id = 2111307,lv = 150},[8] = {id = 2111308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 224,desc = "daily_exwp-25-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 8,exert = 25,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6052530,cardId = 1101999,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2010301,lv = 150},[2] = {id = 2010302,lv = 150},[3] = {id = 2010303,lv = 150},[4] = {id = 2010304,lv = 150},[5] = {id = 2010305,lv = 150},[6] = {id = 2010306,lv = 150},[7] = {id = 2010307,lv = 150},[8] = {id = 2010308,lv = 150}},mon = {id = 203,desc = "daily_exwp-25-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 8,exert = 21,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6052531,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111301,lv = 150},[2] = {id = 2111302,lv = 150},[3] = {id = 2111303,lv = 150},[4] = {id = 2111304,lv = 150},[5] = {id = 2111305,lv = 150},[6] = {id = 2111306,lv = 150},[7] = {id = 2111307,lv = 150},[8] = {id = 2111308,lv = 150}},exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 233,desc = "daily_exwp-25-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 8,exert = 25,suffer = 25}}
		}
	},
	[60526] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6052610,cardId = 1101998,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2010401,lv = 150},[2] = {id = 2010402,lv = 150},[3] = {id = 2010403,lv = 150},[4] = {id = 2010404,lv = 150},[5] = {id = 2010405,lv = 150},[6] = {id = 2010406,lv = 150},[7] = {id = 2010407,lv = 150},[8] = {id = 2010408,lv = 150}},mon = {id = 201,desc = "daily_exwp-26-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 9,exert = 14,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6052611,cardId = 1102998,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111401,lv = 150},[2] = {id = 2111402,lv = 150},[3] = {id = 2111403,lv = 150},[4] = {id = 2111404,lv = 150},[5] = {id = 2111405,lv = 150},[6] = {id = 2111406,lv = 150},[7] = {id = 2111407,lv = 150},[8] = {id = 2111408,lv = 150}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 4,[6] = 4,[7] = 4,[8] = 3},mon = {id = 222,desc = "daily_exwp-26-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 9,exert = 18,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6052620,cardId = 1101997,lv = 150,bklv = 20,star = 4,equip = {[1] = {id = 2010401,lv = 150},[2] = {id = 2010402,lv = 150},[3] = {id = 2010403,lv = 150},[4] = {id = 2010404,lv = 150},[5] = {id = 2010405,lv = 150},[6] = {id = 2010406,lv = 150},[7] = {id = 2010407,lv = 150},[8] = {id = 2010408,lv = 150}},mon = {id = 214,desc = "daily_exwp-26-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 9,exert = 14,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6052621,cardId = 1102997,lv = 150,bklv = 20,star = 4,ghost = 52,equip = {[1] = {id = 2111401,lv = 150},[2] = {id = 2111402,lv = 150},[3] = {id = 2111403,lv = 150},[4] = {id = 2111404,lv = 150},[5] = {id = 2111405,lv = 150},[6] = {id = 2111406,lv = 150},[7] = {id = 2111407,lv = 150},[8] = {id = 2111408,lv = 150}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 4,[6] = 4,[7] = 4,[8] = 3},mon = {id = 240,desc = "daily_exwp-26-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 9,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6052630,cardId = 1101998,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2010401,lv = 150},[2] = {id = 2010402,lv = 150},[3] = {id = 2010403,lv = 150},[4] = {id = 2010404,lv = 150},[5] = {id = 2010405,lv = 150},[6] = {id = 2010406,lv = 150},[7] = {id = 2010407,lv = 150},[8] = {id = 2010408,lv = 150}},mon = {id = 203,desc = "daily_exwp-26-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 9,exert = 14,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6052631,cardId = 1102998,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111401,lv = 150},[2] = {id = 2111402,lv = 150},[3] = {id = 2111403,lv = 150},[4] = {id = 2111404,lv = 150},[5] = {id = 2111405,lv = 150},[6] = {id = 2111406,lv = 150},[7] = {id = 2111407,lv = 150},[8] = {id = 2111408,lv = 150}},exWeapon = {[1] = 7,[2] = 7,[3] = 5,[4] = 5,[5] = 4,[6] = 4,[7] = 4,[8] = 3},mon = {id = 225,desc = "daily_exwp-26-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 9,exert = 18,suffer = 25}}
		}
	},
	[60527] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6052710,cardId = 1101997,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2010411,lv = 150},[2] = {id = 2010412,lv = 150},[3] = {id = 2010413,lv = 150},[4] = {id = 2010404,lv = 150},[5] = {id = 2010415,lv = 150},[6] = {id = 2010406,lv = 150},[7] = {id = 2010417,lv = 150},[8] = {id = 2010418,lv = 150}},mon = {id = 207,desc = "daily_exwp-27-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 10,exert = 11,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6052711,cardId = 1102997,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111431,lv = 150},[2] = {id = 2111432,lv = 150},[3] = {id = 2111423,lv = 150},[4] = {id = 2111434,lv = 150},[5] = {id = 2111425,lv = 150},[6] = {id = 2111436,lv = 150},[7] = {id = 2111407,lv = 150},[8] = {id = 2111408,lv = 150}},exWeapon = {[1] = 8,[2] = 8,[3] = 6,[4] = 6,[5] = 5,[6] = 5,[7] = 5,[8] = 4},mon = {id = 232,desc = "daily_exwp-27-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 10,exert = 15,suffer = 25}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6052720,cardId = 1101997,lv = 150,bklv = 20,star = 4,equip = {[1] = {id = 2010411,lv = 150},[2] = {id = 2010412,lv = 150},[3] = {id = 2010413,lv = 150},[4] = {id = 2010404,lv = 150},[5] = {id = 2010415,lv = 150},[6] = {id = 2010406,lv = 150},[7] = {id = 2010417,lv = 150},[8] = {id = 2010418,lv = 150}},mon = {id = 205,desc = "daily_exwp-27-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 10,exert = 11,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6052721,cardId = 1102996,lv = 150,bklv = 20,star = 4,ghost = 52,equip = {[1] = {id = 2111431,lv = 150},[2] = {id = 2111432,lv = 150},[3] = {id = 2111423,lv = 150},[4] = {id = 2111434,lv = 150},[5] = {id = 2111425,lv = 150},[6] = {id = 2111436,lv = 150},[7] = {id = 2111407,lv = 150},[8] = {id = 2111408,lv = 150}},exWeapon = {[1] = 8,[2] = 8,[3] = 6,[4] = 6,[5] = 5,[6] = 5,[7] = 5,[8] = 4},mon = {id = 221,desc = "daily_exwp-27-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 10,exert = 15,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6052730,cardId = 1101997,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2010411,lv = 150},[2] = {id = 2010412,lv = 150},[3] = {id = 2010413,lv = 150},[4] = {id = 2010404,lv = 150},[5] = {id = 2010415,lv = 150},[6] = {id = 2010406,lv = 150},[7] = {id = 2010417,lv = 150},[8] = {id = 2010418,lv = 150}},mon = {id = 204,desc = "daily_exwp-27-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 10,exert = 11,suffer = 21}},
			shl = {cha = "daily_exwp",id = 6052731,cardId = 1102997,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111431,lv = 150},[2] = {id = 2111432,lv = 150},[3] = {id = 2111423,lv = 150},[4] = {id = 2111434,lv = 150},[5] = {id = 2111425,lv = 150},[6] = {id = 2111436,lv = 150},[7] = {id = 2111407,lv = 150},[8] = {id = 2111408,lv = 150}},exWeapon = {[1] = 8,[2] = 8,[3] = 6,[4] = 6,[5] = 5,[6] = 5,[7] = 5,[8] = 4},mon = {id = 226,desc = "daily_exwp-27-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 10,exert = 15,suffer = 25}}
		}
	},
	[200101] = {
		[1] = {
			jlr = {cha = "cardDaily_xc_1",id = 7010110,cardId = 1101998,lv = 11,bklv = 1,star = 1},
			shl = {cha = "cardDaily_xc_1",id = 7010111,cardId = 1102998,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_xc_1",id = 7010120,cardId = 1101998,lv = 11,bklv = 1,star = 1,mon = {id = 207,desc = "cardDaily_xc_1_jlr_2",srcLoc = 2,srcType = 1,skillLv = 1,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_xc_1",id = 7010121,cardId = 1102998,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 302,desc = "cardDaily_xc_1_shl_2",srcLoc = 2,srcType = 2,skillLv = 1,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_xc_1",id = 7010130,cardId = 1101998,lv = 11,bklv = 1,star = 1},
			shl = {cha = "cardDaily_xc_1",id = 7010131,cardId = 1102998,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200102] = {
		[1] = {
			jlr = {cha = "cardDaily_xc_2",id = 7010210,cardId = 1101998,lv = 42,bklv = 5,star = 1,equip = {[1] = {id = 2002401,lv = 40},[2] = {id = 2002402,lv = 40},[3] = {id = 2002403,lv = 40},[4] = {id = 2002404,lv = 40},[5] = {id = 2002405,lv = 40},[6] = {id = 2002406,lv = 40},[7] = {id = 2002407,lv = 40},[8] = {id = 2002408,lv = 40}}},
			shl = {cha = "cardDaily_xc_2",id = 7010211,cardId = 1102998,lv = 42,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_xc_2",id = 7010220,cardId = 1101997,lv = 42,bklv = 5,star = 1,equip = {[1] = {id = 2002401,lv = 40},[2] = {id = 2002402,lv = 40},[3] = {id = 2002403,lv = 40},[4] = {id = 2002404,lv = 40},[5] = {id = 2002405,lv = 40},[6] = {id = 2002406,lv = 40},[7] = {id = 2002407,lv = 40},[8] = {id = 2002408,lv = 40}},mon = {id = 207,desc = "cardDaily_xc_2_jlr_2",srcLoc = 2,srcType = 1,skillLv = 2,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_xc_2",id = 7010221,cardId = 1102997,lv = 42,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 302,desc = "cardDaily_xc_2_shl_2",srcLoc = 2,srcType = 2,skillLv = 2,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_xc_2",id = 7010230,cardId = 1101998,lv = 42,bklv = 5,star = 1,equip = {[1] = {id = 2002401,lv = 40},[2] = {id = 2002402,lv = 40},[3] = {id = 2002403,lv = 40},[4] = {id = 2002404,lv = 40},[5] = {id = 2002405,lv = 40},[6] = {id = 2002406,lv = 40},[7] = {id = 2002407,lv = 40},[8] = {id = 2002408,lv = 40}}},
			shl = {cha = "cardDaily_xc_2",id = 7010231,cardId = 1102998,lv = 42,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200103] = {
		[1] = {
			jlr = {cha = "cardDaily_xc_3",id = 7010310,cardId = 1101998,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}}},
			shl = {cha = "cardDaily_xc_3",id = 7010311,cardId = 1102998,lv = 57,bklv = 9,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_xc_3",id = 7010320,cardId = 1101997,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}},mon = {id = 207,desc = "cardDaily_xc_3_jlr_2",srcLoc = 2,srcType = 1,skillLv = 3,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_xc_3",id = 7010321,cardId = 1102997,lv = 57,bklv = 9,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 302,desc = "cardDaily_xc_3_shl_2",srcLoc = 2,srcType = 2,skillLv = 3,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_xc_3",id = 7010330,cardId = 1101998,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}}},
			shl = {cha = "cardDaily_xc_3",id = 7010331,cardId = 1102998,lv = 57,bklv = 9,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200104] = {
		[1] = {
			jlr = {cha = "cardDaily_xc_4",id = 7010410,cardId = 1101998,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}}},
			shl = {cha = "cardDaily_xc_4",id = 7010411,cardId = 1102998,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_xc_4",id = 7010420,cardId = 1101997,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}},mon = {id = 207,desc = "cardDaily_xc_4_jlr_2",srcLoc = 2,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_xc_4",id = 7010421,cardId = 1102997,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 302,desc = "cardDaily_xc_4_shl_2",srcLoc = 2,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_xc_4",id = 7010430,cardId = 1101998,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}}},
			shl = {cha = "cardDaily_xc_4",id = 7010431,cardId = 1102998,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200105] = {
		[1] = {
			jlr = {cha = "cardDaily_xc_5",id = 7010510,cardId = 1101998,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}}},
			shl = {cha = "cardDaily_xc_5",id = 7010511,cardId = 1102998,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_xc_5",id = 7010520,cardId = 1101997,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}},mon = {id = 207,desc = "cardDaily_xc_5_jlr_2",srcLoc = 2,srcType = 1,skillLv = 5,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_xc_5",id = 7010521,cardId = 1102997,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 302,desc = "cardDaily_xc_5_shl_2",srcLoc = 2,srcType = 2,skillLv = 5,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_xc_5",id = 7010530,cardId = 1101998,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}}},
			shl = {cha = "cardDaily_xc_5",id = 7010531,cardId = 1102998,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200201] = {
		[1] = {
			jlr = {cha = "cardDaily_dw_1",id = 7020110,cardId = 1101998,lv = 11,bklv = 1,star = 1},
			shl = {cha = "cardDaily_dw_1",id = 7020111,cardId = 1102998,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_dw_1",id = 7020120,cardId = 1101997,lv = 11,bklv = 1,star = 1,mon = {id = 207,desc = "cardDaily_dw_1_jlr_2",srcLoc = 2,srcType = 1,skillLv = 1,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_dw_1",id = 7020121,cardId = 1102997,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 303,desc = "cardDaily_dw_1_shl_2",srcLoc = 2,srcType = 2,skillLv = 1,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_dw_1",id = 7020130,cardId = 1101998,lv = 11,bklv = 1,star = 1},
			shl = {cha = "cardDaily_dw_1",id = 7020131,cardId = 1102998,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200202] = {
		[1] = {
			jlr = {cha = "cardDaily_dw_2",id = 7020210,cardId = 1101998,lv = 42,bklv = 5,star = 1,equip = {[1] = {id = 2002401,lv = 40},[2] = {id = 2002402,lv = 40},[3] = {id = 2002403,lv = 40},[4] = {id = 2002404,lv = 40},[5] = {id = 2002405,lv = 40},[6] = {id = 2002406,lv = 40},[7] = {id = 2002407,lv = 40},[8] = {id = 2002408,lv = 40}}},
			shl = {cha = "cardDaily_dw_2",id = 7020211,cardId = 1102998,lv = 42,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_dw_2",id = 7020220,cardId = 1101997,lv = 42,bklv = 5,star = 1,equip = {[1] = {id = 2002401,lv = 40},[2] = {id = 2002402,lv = 40},[3] = {id = 2002403,lv = 40},[4] = {id = 2002404,lv = 40},[5] = {id = 2002405,lv = 40},[6] = {id = 2002406,lv = 40},[7] = {id = 2002407,lv = 40},[8] = {id = 2002408,lv = 40}},mon = {id = 207,desc = "cardDaily_dw_2_jlr_2",srcLoc = 2,srcType = 1,skillLv = 2,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_dw_2",id = 7020221,cardId = 1102997,lv = 42,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 303,desc = "cardDaily_dw_2_shl_2",srcLoc = 2,srcType = 2,skillLv = 2,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_dw_2",id = 7020230,cardId = 1101998,lv = 42,bklv = 5,star = 1,equip = {[1] = {id = 2002401,lv = 40},[2] = {id = 2002402,lv = 40},[3] = {id = 2002403,lv = 40},[4] = {id = 2002404,lv = 40},[5] = {id = 2002405,lv = 40},[6] = {id = 2002406,lv = 40},[7] = {id = 2002407,lv = 40},[8] = {id = 2002408,lv = 40}}},
			shl = {cha = "cardDaily_dw_2",id = 7020231,cardId = 1102998,lv = 42,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200203] = {
		[1] = {
			jlr = {cha = "cardDaily_dw_3",id = 7020310,cardId = 1101998,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}}},
			shl = {cha = "cardDaily_dw_3",id = 7020311,cardId = 1102998,lv = 57,bklv = 9,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_dw_3",id = 7020320,cardId = 1101997,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}},mon = {id = 207,desc = "cardDaily_dw_3_jlr_2",srcLoc = 2,srcType = 1,skillLv = 3,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_dw_3",id = 7020321,cardId = 1102997,lv = 57,bklv = 9,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 303,desc = "cardDaily_dw_3_shl_2",srcLoc = 2,srcType = 2,skillLv = 3,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_dw_3",id = 7020330,cardId = 1101998,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}}},
			shl = {cha = "cardDaily_dw_3",id = 7020331,cardId = 1102998,lv = 57,bklv = 9,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200204] = {
		[1] = {
			jlr = {cha = "cardDaily_dw_4",id = 7020410,cardId = 1101998,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}}},
			shl = {cha = "cardDaily_dw_4",id = 7020411,cardId = 1102998,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_dw_4",id = 7020420,cardId = 1101997,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}},mon = {id = 207,desc = "cardDaily_dw_4_jlr_2",srcLoc = 2,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_dw_4",id = 7020421,cardId = 1102997,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 303,desc = "cardDaily_dw_4_shl_2",srcLoc = 2,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_dw_4",id = 7020430,cardId = 1101998,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}}},
			shl = {cha = "cardDaily_dw_4",id = 7020431,cardId = 1102998,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200205] = {
		[1] = {
			jlr = {cha = "cardDaily_dw_5",id = 7020510,cardId = 1101998,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}}},
			shl = {cha = "cardDaily_dw_5",id = 7020511,cardId = 1102998,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_dw_5",id = 7020520,cardId = 1101997,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}},mon = {id = 207,desc = "cardDaily_dw_5_jlr_2",srcLoc = 2,srcType = 1,skillLv = 5,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_dw_5",id = 7020521,cardId = 1102997,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 303,desc = "cardDaily_dw_5_shl_2",srcLoc = 2,srcType = 2,skillLv = 5,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_dw_5",id = 7020530,cardId = 1101998,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}}},
			shl = {cha = "cardDaily_dw_5",id = 7020531,cardId = 1102998,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200206] = {
		[1] = {
			jlr = {cha = "cardDaily_dw_6",id = 7020610,cardId = 1101998,lv = 90,bklv = 13,star = 3,equip = {[1] = {id = 2004401,lv = 90},[2] = {id = 2004402,lv = 90},[3] = {id = 2004403,lv = 90},[4] = {id = 2004404,lv = 90},[5] = {id = 2004405,lv = 90},[6] = {id = 2004406,lv = 90},[7] = {id = 2004407,lv = 90},[8] = {id = 2004408,lv = 90}}},
			shl = {cha = "cardDaily_dw_6",id = 7020611,cardId = 1102998,lv = 90,bklv = 13,star = 3,ghost = 29,equip = {[1] = {id = 2104401,lv = 90},[2] = {id = 2104402,lv = 90},[3] = {id = 2104403,lv = 90},[4] = {id = 2104404,lv = 90},[5] = {id = 2104405,lv = 90},[6] = {id = 2104406,lv = 90},[7] = {id = 2104407,lv = 90},[8] = {id = 2104408,lv = 90}},exWeapon = {[1] = 7,[2] = 5,[3] = 5,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_dw_6",id = 7020620,cardId = 1101997,lv = 90,bklv = 13,star = 3,equip = {[1] = {id = 2004401,lv = 90},[2] = {id = 2004402,lv = 90},[3] = {id = 2004403,lv = 90},[4] = {id = 2004404,lv = 90},[5] = {id = 2004405,lv = 90},[6] = {id = 2004406,lv = 90},[7] = {id = 2004407,lv = 90},[8] = {id = 2004408,lv = 90}},mon = {id = 207,desc = "cardDaily_dw_6_jlr_2",srcLoc = 2,srcType = 1,skillLv = 6,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_dw_6",id = 7020621,cardId = 1102997,lv = 90,bklv = 13,star = 3,ghost = 29,equip = {[1] = {id = 2104401,lv = 90},[2] = {id = 2104402,lv = 90},[3] = {id = 2104403,lv = 90},[4] = {id = 2104404,lv = 90},[5] = {id = 2104405,lv = 90},[6] = {id = 2104406,lv = 90},[7] = {id = 2104407,lv = 90},[8] = {id = 2104408,lv = 90}},exWeapon = {[1] = 7,[2] = 5,[3] = 5,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 303,desc = "cardDaily_dw_6_shl_2",srcLoc = 2,srcType = 2,skillLv = 6,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_dw_6",id = 7020630,cardId = 1101998,lv = 90,bklv = 13,star = 3,equip = {[1] = {id = 2004401,lv = 90},[2] = {id = 2004402,lv = 90},[3] = {id = 2004403,lv = 90},[4] = {id = 2004404,lv = 90},[5] = {id = 2004405,lv = 90},[6] = {id = 2004406,lv = 90},[7] = {id = 2004407,lv = 90},[8] = {id = 2004408,lv = 90}}},
			shl = {cha = "cardDaily_dw_6",id = 7020631,cardId = 1102998,lv = 90,bklv = 13,star = 3,ghost = 29,equip = {[1] = {id = 2104401,lv = 90},[2] = {id = 2104402,lv = 90},[3] = {id = 2104403,lv = 90},[4] = {id = 2104404,lv = 90},[5] = {id = 2104405,lv = 90},[6] = {id = 2104406,lv = 90},[7] = {id = 2104407,lv = 90},[8] = {id = 2104408,lv = 90}},exWeapon = {[1] = 7,[2] = 5,[3] = 5,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200207] = {
		[1] = {
			jlr = {cha = "cardDaily_dw_7",id = 7020710,cardId = 1101998,lv = 102,bklv = 14,star = 4,equip = {[1] = {id = 2005401,lv = 100},[2] = {id = 2005402,lv = 100},[3] = {id = 2005403,lv = 100},[4] = {id = 2005404,lv = 100},[5] = {id = 2005405,lv = 100},[6] = {id = 2005406,lv = 100},[7] = {id = 2005407,lv = 100},[8] = {id = 2005408,lv = 100}}},
			shl = {cha = "cardDaily_dw_7",id = 7020711,cardId = 1102998,lv = 102,bklv = 15,star = 4,ghost = 32,equip = {[1] = {id = 2105401,lv = 100},[2] = {id = 2105402,lv = 100},[3] = {id = 2105403,lv = 100},[4] = {id = 2105404,lv = 100},[5] = {id = 2105405,lv = 100},[6] = {id = 2105406,lv = 100},[7] = {id = 2105407,lv = 100},[8] = {id = 2105408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_dw_7",id = 7020720,cardId = 1101997,lv = 102,bklv = 14,star = 4,equip = {[1] = {id = 2005401,lv = 100},[2] = {id = 2005402,lv = 100},[3] = {id = 2005403,lv = 100},[4] = {id = 2005404,lv = 100},[5] = {id = 2005405,lv = 100},[6] = {id = 2005406,lv = 100},[7] = {id = 2005407,lv = 100},[8] = {id = 2005408,lv = 100}},mon = {id = 207,desc = "cardDaily_dw_7_jlr_2",srcLoc = 2,srcType = 1,skillLv = 7,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_dw_7",id = 7020721,cardId = 1102997,lv = 102,bklv = 15,star = 4,ghost = 32,equip = {[1] = {id = 2105401,lv = 100},[2] = {id = 2105402,lv = 100},[3] = {id = 2105403,lv = 100},[4] = {id = 2105404,lv = 100},[5] = {id = 2105405,lv = 100},[6] = {id = 2105406,lv = 100},[7] = {id = 2105407,lv = 100},[8] = {id = 2105408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0},mon = {id = 303,desc = "cardDaily_dw_7_shl_2",srcLoc = 2,srcType = 2,skillLv = 7,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_dw_7",id = 7020730,cardId = 1101998,lv = 102,bklv = 14,star = 4,equip = {[1] = {id = 2005401,lv = 100},[2] = {id = 2005402,lv = 100},[3] = {id = 2005403,lv = 100},[4] = {id = 2005404,lv = 100},[5] = {id = 2005405,lv = 100},[6] = {id = 2005406,lv = 100},[7] = {id = 2005407,lv = 100},[8] = {id = 2005408,lv = 100}}},
			shl = {cha = "cardDaily_dw_7",id = 7020731,cardId = 1102998,lv = 102,bklv = 15,star = 4,ghost = 32,equip = {[1] = {id = 2105401,lv = 100},[2] = {id = 2105402,lv = 100},[3] = {id = 2105403,lv = 100},[4] = {id = 2105404,lv = 100},[5] = {id = 2105405,lv = 100},[6] = {id = 2105406,lv = 100},[7] = {id = 2105407,lv = 100},[8] = {id = 2105408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200208] = {
		[1] = {
			jlr = {cha = "cardDaily_dw_8",id = 7020810,cardId = 1101998,lv = 130,bklv = 14,star = 4,equip = {[1] = {id = 2008401,lv = 100},[2] = {id = 2008402,lv = 100},[3] = {id = 2008403,lv = 100},[4] = {id = 2008404,lv = 100},[5] = {id = 2008405,lv = 100},[6] = {id = 2008406,lv = 100},[7] = {id = 2008407,lv = 100},[8] = {id = 2008408,lv = 100}}},
			shl = {cha = "cardDaily_dw_8",id = 7020811,cardId = 1102998,lv = 130,bklv = 15,star = 4,ghost = 32,equip = {[1] = {id = 2108401,lv = 100},[2] = {id = 2108402,lv = 100},[3] = {id = 2108403,lv = 100},[4] = {id = 2108404,lv = 100},[5] = {id = 2108405,lv = 100},[6] = {id = 2108406,lv = 100},[7] = {id = 2108407,lv = 100},[8] = {id = 2108408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_dw_8",id = 7020820,cardId = 1101997,lv = 130,bklv = 14,star = 4,equip = {[1] = {id = 2008401,lv = 100},[2] = {id = 2008402,lv = 100},[3] = {id = 2008403,lv = 100},[4] = {id = 2008404,lv = 100},[5] = {id = 2008405,lv = 100},[6] = {id = 2008406,lv = 100},[7] = {id = 2008407,lv = 100},[8] = {id = 2008408,lv = 100}},mon = {id = 207,desc = "cardDaily_dw_8_jlr_2",srcLoc = 2,srcType = 1,skillLv = 8,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_dw_8",id = 7020821,cardId = 1102997,lv = 130,bklv = 15,star = 4,ghost = 32,equip = {[1] = {id = 2108401,lv = 100},[2] = {id = 2108402,lv = 100},[3] = {id = 2108403,lv = 100},[4] = {id = 2108404,lv = 100},[5] = {id = 2108405,lv = 100},[6] = {id = 2108406,lv = 100},[7] = {id = 2108407,lv = 100},[8] = {id = 2108408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0},mon = {id = 303,desc = "cardDaily_dw_8_shl_2",srcLoc = 2,srcType = 2,skillLv = 8,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_dw_8",id = 7020830,cardId = 1101998,lv = 130,bklv = 14,star = 4,equip = {[1] = {id = 2008401,lv = 100},[2] = {id = 2008402,lv = 100},[3] = {id = 2008403,lv = 100},[4] = {id = 2008404,lv = 100},[5] = {id = 2008405,lv = 100},[6] = {id = 2008406,lv = 100},[7] = {id = 2008407,lv = 100},[8] = {id = 2008408,lv = 100}}},
			shl = {cha = "cardDaily_dw_8",id = 7020831,cardId = 1102998,lv = 130,bklv = 15,star = 4,ghost = 32,equip = {[1] = {id = 2108401,lv = 100},[2] = {id = 2108402,lv = 100},[3] = {id = 2108403,lv = 100},[4] = {id = 2108404,lv = 100},[5] = {id = 2108405,lv = 100},[6] = {id = 2108406,lv = 100},[7] = {id = 2108407,lv = 100},[8] = {id = 2108408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200301] = {
		[1] = {
			jlr = {cha = "cardDaily_lxy_1",id = 7030110,cardId = 1101998,lv = 11,bklv = 1,star = 1},
			shl = {cha = "cardDaily_lxy_1",id = 7030111,cardId = 1102998,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_lxy_1",id = 7030120,cardId = 1101998,lv = 11,bklv = 1,star = 1,mon = {id = 203,desc = "cardDaily_lxy_1_jlr_2",srcLoc = 2,srcType = 1,skillLv = 1,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_lxy_1",id = 7030121,cardId = 1102998,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 305,desc = "cardDaily_lxy_1_shl_2",srcLoc = 2,srcType = 2,skillLv = 1,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_lxy_1",id = 7030130,cardId = 1101998,lv = 11,bklv = 1,star = 1},
			shl = {cha = "cardDaily_lxy_1",id = 7030131,cardId = 1102998,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200302] = {
		[1] = {
			jlr = {cha = "cardDaily_lxy_2",id = 7030210,cardId = 1101998,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}}},
			shl = {cha = "cardDaily_lxy_2",id = 7030211,cardId = 1102998,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_lxy_2",id = 7030220,cardId = 1101997,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}},mon = {id = 203,desc = "cardDaily_lxy_2_jlr_2",srcLoc = 2,srcType = 1,skillLv = 2,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_lxy_2",id = 7030221,cardId = 1102997,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 305,desc = "cardDaily_lxy_2_shl_2",srcLoc = 2,srcType = 2,skillLv = 2,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_lxy_2",id = 7030230,cardId = 1101998,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}}},
			shl = {cha = "cardDaily_lxy_2",id = 7030231,cardId = 1102998,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200303] = {
		[1] = {
			jlr = {cha = "cardDaily_lxy_3",id = 7030310,cardId = 1101998,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}}},
			shl = {cha = "cardDaily_lxy_3",id = 7030311,cardId = 1102998,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_lxy_3",id = 7030320,cardId = 1101997,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}},mon = {id = 203,desc = "cardDaily_lxy_3_jlr_2",srcLoc = 2,srcType = 1,skillLv = 3,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_lxy_3",id = 7030321,cardId = 1102997,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 305,desc = "cardDaily_lxy_3_shl_2",srcLoc = 2,srcType = 2,skillLv = 3,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_lxy_3",id = 7030330,cardId = 1101998,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}}},
			shl = {cha = "cardDaily_lxy_3",id = 7030331,cardId = 1102998,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200304] = {
		[1] = {
			jlr = {cha = "cardDaily_lxy_4",id = 7030410,cardId = 1101998,lv = 90,bklv = 13,star = 3,equip = {[1] = {id = 2004401,lv = 90},[2] = {id = 2004402,lv = 90},[3] = {id = 2004403,lv = 90},[4] = {id = 2004404,lv = 90},[5] = {id = 2004405,lv = 90},[6] = {id = 2004406,lv = 90},[7] = {id = 2004407,lv = 90},[8] = {id = 2004408,lv = 90}}},
			shl = {cha = "cardDaily_lxy_4",id = 7030411,cardId = 1102998,lv = 90,bklv = 13,star = 3,ghost = 29,equip = {[1] = {id = 2104401,lv = 90},[2] = {id = 2104402,lv = 90},[3] = {id = 2104403,lv = 90},[4] = {id = 2104404,lv = 90},[5] = {id = 2104405,lv = 90},[6] = {id = 2104406,lv = 90},[7] = {id = 2104407,lv = 90},[8] = {id = 2104408,lv = 90}},exWeapon = {[1] = 7,[2] = 5,[3] = 5,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_lxy_4",id = 7030420,cardId = 1101997,lv = 90,bklv = 13,star = 3,equip = {[1] = {id = 2004401,lv = 90},[2] = {id = 2004402,lv = 90},[3] = {id = 2004403,lv = 90},[4] = {id = 2004404,lv = 90},[5] = {id = 2004405,lv = 90},[6] = {id = 2004406,lv = 90},[7] = {id = 2004407,lv = 90},[8] = {id = 2004408,lv = 90}},mon = {id = 203,desc = "cardDaily_lxy_4_jlr_2",srcLoc = 2,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_lxy_4",id = 7030421,cardId = 1102997,lv = 90,bklv = 13,star = 3,ghost = 29,equip = {[1] = {id = 2104401,lv = 90},[2] = {id = 2104402,lv = 90},[3] = {id = 2104403,lv = 90},[4] = {id = 2104404,lv = 90},[5] = {id = 2104405,lv = 90},[6] = {id = 2104406,lv = 90},[7] = {id = 2104407,lv = 90},[8] = {id = 2104408,lv = 90}},exWeapon = {[1] = 7,[2] = 5,[3] = 5,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 305,desc = "cardDaily_lxy_4_shl_2",srcLoc = 2,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_lxy_4",id = 7030430,cardId = 1101998,lv = 90,bklv = 13,star = 3,equip = {[1] = {id = 2004401,lv = 90},[2] = {id = 2004402,lv = 90},[3] = {id = 2004403,lv = 90},[4] = {id = 2004404,lv = 90},[5] = {id = 2004405,lv = 90},[6] = {id = 2004406,lv = 90},[7] = {id = 2004407,lv = 90},[8] = {id = 2004408,lv = 90}}},
			shl = {cha = "cardDaily_lxy_4",id = 7030431,cardId = 1102998,lv = 90,bklv = 13,star = 3,ghost = 29,equip = {[1] = {id = 2104401,lv = 90},[2] = {id = 2104402,lv = 90},[3] = {id = 2104403,lv = 90},[4] = {id = 2104404,lv = 90},[5] = {id = 2104405,lv = 90},[6] = {id = 2104406,lv = 90},[7] = {id = 2104407,lv = 90},[8] = {id = 2104408,lv = 90}},exWeapon = {[1] = 7,[2] = 5,[3] = 5,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200305] = {
		[1] = {
			jlr = {cha = "cardDaily_lxy_5",id = 7030510,cardId = 1101998,lv = 102,bklv = 14,star = 4,equip = {[1] = {id = 2005401,lv = 100},[2] = {id = 2005402,lv = 100},[3] = {id = 2005403,lv = 100},[4] = {id = 2005404,lv = 100},[5] = {id = 2005405,lv = 100},[6] = {id = 2005406,lv = 100},[7] = {id = 2005407,lv = 100},[8] = {id = 2005408,lv = 100}}},
			shl = {cha = "cardDaily_lxy_5",id = 7030511,cardId = 1102998,lv = 102,bklv = 15,star = 4,ghost = 32,equip = {[1] = {id = 2105401,lv = 100},[2] = {id = 2105402,lv = 100},[3] = {id = 2105403,lv = 100},[4] = {id = 2105404,lv = 100},[5] = {id = 2105405,lv = 100},[6] = {id = 2105406,lv = 100},[7] = {id = 2105407,lv = 100},[8] = {id = 2105408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_lxy_5",id = 7030520,cardId = 1101997,lv = 102,bklv = 14,star = 4,equip = {[1] = {id = 2005401,lv = 100},[2] = {id = 2005402,lv = 100},[3] = {id = 2005403,lv = 100},[4] = {id = 2005404,lv = 100},[5] = {id = 2005405,lv = 100},[6] = {id = 2005406,lv = 100},[7] = {id = 2005407,lv = 100},[8] = {id = 2005408,lv = 100}},mon = {id = 203,desc = "cardDaily_lxy_5_jlr_2",srcLoc = 2,srcType = 1,skillLv = 5,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_lxy_5",id = 7030521,cardId = 1102997,lv = 102,bklv = 15,star = 4,ghost = 32,equip = {[1] = {id = 2105401,lv = 100},[2] = {id = 2105402,lv = 100},[3] = {id = 2105403,lv = 100},[4] = {id = 2105404,lv = 100},[5] = {id = 2105405,lv = 100},[6] = {id = 2105406,lv = 100},[7] = {id = 2105407,lv = 100},[8] = {id = 2105408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0},mon = {id = 305,desc = "cardDaily_lxy_5_shl_2",srcLoc = 2,srcType = 2,skillLv = 5,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_lxy_5",id = 7030530,cardId = 1101998,lv = 102,bklv = 14,star = 4,equip = {[1] = {id = 2005401,lv = 100},[2] = {id = 2005402,lv = 100},[3] = {id = 2005403,lv = 100},[4] = {id = 2005404,lv = 100},[5] = {id = 2005405,lv = 100},[6] = {id = 2005406,lv = 100},[7] = {id = 2005407,lv = 100},[8] = {id = 2005408,lv = 100}}},
			shl = {cha = "cardDaily_lxy_5",id = 7030531,cardId = 1102998,lv = 102,bklv = 15,star = 4,ghost = 32,equip = {[1] = {id = 2105401,lv = 100},[2] = {id = 2105402,lv = 100},[3] = {id = 2105403,lv = 100},[4] = {id = 2105404,lv = 100},[5] = {id = 2105405,lv = 100},[6] = {id = 2105406,lv = 100},[7] = {id = 2105407,lv = 100},[8] = {id = 2105408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200401] = {
		[1] = {
			jlr = {cha = "cardDaily_tstn_1",id = 7040110,cardId = 1101998,lv = 11,bklv = 1,star = 1},
			shl = {cha = "cardDaily_tstn_1",id = 7040111,cardId = 1102998,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_tstn_1",id = 7040120,cardId = 1101997,lv = 11,bklv = 1,star = 1,mon = {id = 206,desc = "cardDaily_tstn_1_jlr_2",srcLoc = 2,srcType = 1,skillLv = 1,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_tstn_1",id = 7040121,cardId = 1102997,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 307,desc = "cardDaily_tstn_1_shl_2",srcLoc = 2,srcType = 2,skillLv = 1,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_tstn_1",id = 7040130,cardId = 1101998,lv = 11,bklv = 1,star = 1},
			shl = {cha = "cardDaily_tstn_1",id = 7040131,cardId = 1102998,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200402] = {
		[1] = {
			jlr = {cha = "cardDaily_tstn_2",id = 7040210,cardId = 1101998,lv = 42,bklv = 5,star = 1,equip = {[1] = {id = 2002401,lv = 40},[2] = {id = 2002402,lv = 40},[3] = {id = 2002403,lv = 40},[4] = {id = 2002404,lv = 40},[5] = {id = 2002405,lv = 40},[6] = {id = 2002406,lv = 40},[7] = {id = 2002407,lv = 40},[8] = {id = 2002408,lv = 40}}},
			shl = {cha = "cardDaily_tstn_2",id = 7040211,cardId = 1102998,lv = 42,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_tstn_2",id = 7040220,cardId = 1101997,lv = 42,bklv = 5,star = 1,equip = {[1] = {id = 2002401,lv = 40},[2] = {id = 2002402,lv = 40},[3] = {id = 2002403,lv = 40},[4] = {id = 2002404,lv = 40},[5] = {id = 2002405,lv = 40},[6] = {id = 2002406,lv = 40},[7] = {id = 2002407,lv = 40},[8] = {id = 2002408,lv = 40}},mon = {id = 206,desc = "cardDaily_tstn_2_jlr_2",srcLoc = 2,srcType = 1,skillLv = 2,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_tstn_2",id = 7040221,cardId = 1102997,lv = 42,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 307,desc = "cardDaily_tstn_2_shl_2",srcLoc = 2,srcType = 2,skillLv = 2,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_tstn_2",id = 7040230,cardId = 1101998,lv = 42,bklv = 5,star = 1,equip = {[1] = {id = 2002401,lv = 40},[2] = {id = 2002402,lv = 40},[3] = {id = 2002403,lv = 40},[4] = {id = 2002404,lv = 40},[5] = {id = 2002405,lv = 40},[6] = {id = 2002406,lv = 40},[7] = {id = 2002407,lv = 40},[8] = {id = 2002408,lv = 40}}},
			shl = {cha = "cardDaily_tstn_2",id = 7040231,cardId = 1102998,lv = 42,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200403] = {
		[1] = {
			jlr = {cha = "cardDaily_tstn_3",id = 7040310,cardId = 1101998,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}}},
			shl = {cha = "cardDaily_tstn_3",id = 7040311,cardId = 1102998,lv = 57,bklv = 9,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_tstn_3",id = 7040320,cardId = 1101997,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}},mon = {id = 206,desc = "cardDaily_tstn_3_jlr_2",srcLoc = 2,srcType = 1,skillLv = 3,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_tstn_3",id = 7040321,cardId = 1102997,lv = 57,bklv = 9,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 307,desc = "cardDaily_tstn_3_shl_2",srcLoc = 2,srcType = 2,skillLv = 3,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_tstn_3",id = 7040330,cardId = 1101998,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}}},
			shl = {cha = "cardDaily_tstn_3",id = 7040331,cardId = 1102998,lv = 57,bklv = 9,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200404] = {
		[1] = {
			jlr = {cha = "cardDaily_tstn_4",id = 7040410,cardId = 1101998,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}}},
			shl = {cha = "cardDaily_tstn_4",id = 7040411,cardId = 1102998,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_tstn_4",id = 7040420,cardId = 1101997,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}},mon = {id = 206,desc = "cardDaily_tstn_4_jlr_2",srcLoc = 2,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_tstn_4",id = 7040421,cardId = 1102997,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 307,desc = "cardDaily_tstn_4_shl_2",srcLoc = 2,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_tstn_4",id = 7040430,cardId = 1101998,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}}},
			shl = {cha = "cardDaily_tstn_4",id = 7040431,cardId = 1102998,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200405] = {
		[1] = {
			jlr = {cha = "cardDaily_tstn_5",id = 7040510,cardId = 1101998,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}}},
			shl = {cha = "cardDaily_tstn_5",id = 7040511,cardId = 1102998,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_tstn_5",id = 7040520,cardId = 1101997,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}},mon = {id = 206,desc = "cardDaily_tstn_5_jlr_2",srcLoc = 2,srcType = 1,skillLv = 5,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_tstn_5",id = 7040521,cardId = 1102997,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 307,desc = "cardDaily_tstn_5_shl_2",srcLoc = 2,srcType = 2,skillLv = 5,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_tstn_5",id = 7040530,cardId = 1101998,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}}},
			shl = {cha = "cardDaily_tstn_5",id = 7040531,cardId = 1102998,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200406] = {
		[1] = {
			jlr = {cha = "cardDaily_tstn_6",id = 7040610,cardId = 1101998,lv = 90,bklv = 13,star = 3,equip = {[1] = {id = 2004401,lv = 90},[2] = {id = 2004402,lv = 90},[3] = {id = 2004403,lv = 90},[4] = {id = 2004404,lv = 90},[5] = {id = 2004405,lv = 90},[6] = {id = 2004406,lv = 90},[7] = {id = 2004407,lv = 90},[8] = {id = 2004408,lv = 90}}},
			shl = {cha = "cardDaily_tstn_6",id = 7040611,cardId = 1102998,lv = 90,bklv = 13,star = 3,ghost = 29,equip = {[1] = {id = 2104401,lv = 90},[2] = {id = 2104402,lv = 90},[3] = {id = 2104403,lv = 90},[4] = {id = 2104404,lv = 90},[5] = {id = 2104405,lv = 90},[6] = {id = 2104406,lv = 90},[7] = {id = 2104407,lv = 90},[8] = {id = 2104408,lv = 90}},exWeapon = {[1] = 7,[2] = 5,[3] = 5,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_tstn_6",id = 7040620,cardId = 1101997,lv = 90,bklv = 13,star = 3,equip = {[1] = {id = 2004401,lv = 90},[2] = {id = 2004402,lv = 90},[3] = {id = 2004403,lv = 90},[4] = {id = 2004404,lv = 90},[5] = {id = 2004405,lv = 90},[6] = {id = 2004406,lv = 90},[7] = {id = 2004407,lv = 90},[8] = {id = 2004408,lv = 90}},mon = {id = 206,desc = "cardDaily_tstn_6_jlr_2",srcLoc = 2,srcType = 1,skillLv = 6,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_tstn_6",id = 7040621,cardId = 1102997,lv = 90,bklv = 13,star = 3,ghost = 29,equip = {[1] = {id = 2104401,lv = 90},[2] = {id = 2104402,lv = 90},[3] = {id = 2104403,lv = 90},[4] = {id = 2104404,lv = 90},[5] = {id = 2104405,lv = 90},[6] = {id = 2104406,lv = 90},[7] = {id = 2104407,lv = 90},[8] = {id = 2104408,lv = 90}},exWeapon = {[1] = 7,[2] = 5,[3] = 5,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 307,desc = "cardDaily_tstn_6_shl_2",srcLoc = 2,srcType = 2,skillLv = 6,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_tstn_6",id = 7040630,cardId = 1101998,lv = 90,bklv = 13,star = 3,equip = {[1] = {id = 2004401,lv = 90},[2] = {id = 2004402,lv = 90},[3] = {id = 2004403,lv = 90},[4] = {id = 2004404,lv = 90},[5] = {id = 2004405,lv = 90},[6] = {id = 2004406,lv = 90},[7] = {id = 2004407,lv = 90},[8] = {id = 2004408,lv = 90}}},
			shl = {cha = "cardDaily_tstn_6",id = 7040631,cardId = 1102998,lv = 90,bklv = 13,star = 3,ghost = 29,equip = {[1] = {id = 2104401,lv = 90},[2] = {id = 2104402,lv = 90},[3] = {id = 2104403,lv = 90},[4] = {id = 2104404,lv = 90},[5] = {id = 2104405,lv = 90},[6] = {id = 2104406,lv = 90},[7] = {id = 2104407,lv = 90},[8] = {id = 2104408,lv = 90}},exWeapon = {[1] = 7,[2] = 5,[3] = 5,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200407] = {
		[1] = {
			jlr = {cha = "cardDaily_tstn_7",id = 7040710,cardId = 1101998,lv = 102,bklv = 14,star = 4,equip = {[1] = {id = 2005401,lv = 100},[2] = {id = 2005402,lv = 100},[3] = {id = 2005403,lv = 100},[4] = {id = 2005404,lv = 100},[5] = {id = 2005405,lv = 100},[6] = {id = 2005406,lv = 100},[7] = {id = 2005407,lv = 100},[8] = {id = 2005408,lv = 100}}},
			shl = {cha = "cardDaily_tstn_7",id = 7040711,cardId = 1102998,lv = 102,bklv = 15,star = 4,ghost = 32,equip = {[1] = {id = 2105401,lv = 100},[2] = {id = 2105402,lv = 100},[3] = {id = 2105403,lv = 100},[4] = {id = 2105404,lv = 100},[5] = {id = 2105405,lv = 100},[6] = {id = 2105406,lv = 100},[7] = {id = 2105407,lv = 100},[8] = {id = 2105408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_tstn_7",id = 7040720,cardId = 1101997,lv = 102,bklv = 14,star = 4,equip = {[1] = {id = 2005401,lv = 100},[2] = {id = 2005402,lv = 100},[3] = {id = 2005403,lv = 100},[4] = {id = 2005404,lv = 100},[5] = {id = 2005405,lv = 100},[6] = {id = 2005406,lv = 100},[7] = {id = 2005407,lv = 100},[8] = {id = 2005408,lv = 100}},mon = {id = 206,desc = "cardDaily_tstn_7_jlr_2",srcLoc = 2,srcType = 1,skillLv = 7,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_tstn_7",id = 7040721,cardId = 1102997,lv = 102,bklv = 15,star = 4,ghost = 32,equip = {[1] = {id = 2105401,lv = 100},[2] = {id = 2105402,lv = 100},[3] = {id = 2105403,lv = 100},[4] = {id = 2105404,lv = 100},[5] = {id = 2105405,lv = 100},[6] = {id = 2105406,lv = 100},[7] = {id = 2105407,lv = 100},[8] = {id = 2105408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0},mon = {id = 307,desc = "cardDaily_tstn_7_shl_2",srcLoc = 2,srcType = 2,skillLv = 7,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_tstn_7",id = 7040730,cardId = 1101998,lv = 102,bklv = 14,star = 4,equip = {[1] = {id = 2005401,lv = 100},[2] = {id = 2005402,lv = 100},[3] = {id = 2005403,lv = 100},[4] = {id = 2005404,lv = 100},[5] = {id = 2005405,lv = 100},[6] = {id = 2005406,lv = 100},[7] = {id = 2005407,lv = 100},[8] = {id = 2005408,lv = 100}}},
			shl = {cha = "cardDaily_tstn_7",id = 7040731,cardId = 1102998,lv = 102,bklv = 15,star = 4,ghost = 32,equip = {[1] = {id = 2105401,lv = 100},[2] = {id = 2105402,lv = 100},[3] = {id = 2105403,lv = 100},[4] = {id = 2105404,lv = 100},[5] = {id = 2105405,lv = 100},[6] = {id = 2105406,lv = 100},[7] = {id = 2105407,lv = 100},[8] = {id = 2105408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200408] = {
		[1] = {
			jlr = {cha = "cardDaily_tstn_8",id = 7040810,cardId = 1101998,lv = 130,bklv = 14,star = 4,equip = {[1] = {id = 2008401,lv = 100},[2] = {id = 2008402,lv = 100},[3] = {id = 2008403,lv = 100},[4] = {id = 2008404,lv = 100},[5] = {id = 2008405,lv = 100},[6] = {id = 2008406,lv = 100},[7] = {id = 2008407,lv = 100},[8] = {id = 2008408,lv = 100}}},
			shl = {cha = "cardDaily_tstn_8",id = 7040811,cardId = 1102998,lv = 130,bklv = 15,star = 4,ghost = 32,equip = {[1] = {id = 2108401,lv = 100},[2] = {id = 2108402,lv = 100},[3] = {id = 2108403,lv = 100},[4] = {id = 2108404,lv = 100},[5] = {id = 2108405,lv = 100},[6] = {id = 2108406,lv = 100},[7] = {id = 2108407,lv = 100},[8] = {id = 2108408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_tstn_8",id = 7040820,cardId = 1101997,lv = 130,bklv = 14,star = 4,equip = {[1] = {id = 2008401,lv = 100},[2] = {id = 2008402,lv = 100},[3] = {id = 2008403,lv = 100},[4] = {id = 2008404,lv = 100},[5] = {id = 2008405,lv = 100},[6] = {id = 2008406,lv = 100},[7] = {id = 2008407,lv = 100},[8] = {id = 2008408,lv = 100}},mon = {id = 206,desc = "cardDaily_tstn_8_jlr_2",srcLoc = 2,srcType = 1,skillLv = 8,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_tstn_8",id = 7040821,cardId = 1102997,lv = 130,bklv = 15,star = 4,ghost = 32,equip = {[1] = {id = 2108401,lv = 100},[2] = {id = 2108402,lv = 100},[3] = {id = 2108403,lv = 100},[4] = {id = 2108404,lv = 100},[5] = {id = 2108405,lv = 100},[6] = {id = 2108406,lv = 100},[7] = {id = 2108407,lv = 100},[8] = {id = 2108408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0},mon = {id = 307,desc = "cardDaily_tstn_8_shl_2",srcLoc = 2,srcType = 2,skillLv = 8,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_tstn_8",id = 7040830,cardId = 1101998,lv = 130,bklv = 14,star = 4,equip = {[1] = {id = 2008401,lv = 100},[2] = {id = 2008402,lv = 100},[3] = {id = 2008403,lv = 100},[4] = {id = 2008404,lv = 100},[5] = {id = 2008405,lv = 100},[6] = {id = 2008406,lv = 100},[7] = {id = 2008407,lv = 100},[8] = {id = 2008408,lv = 100}}},
			shl = {cha = "cardDaily_tstn_8",id = 7040831,cardId = 1102998,lv = 130,bklv = 15,star = 4,ghost = 32,equip = {[1] = {id = 2108401,lv = 100},[2] = {id = 2108402,lv = 100},[3] = {id = 2108403,lv = 100},[4] = {id = 2108404,lv = 100},[5] = {id = 2108405,lv = 100},[6] = {id = 2108406,lv = 100},[7] = {id = 2108407,lv = 100},[8] = {id = 2108408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200501] = {
		[1] = {
			jlr = {cha = "cardDaily_xhy_1",id = 7050110,cardId = 1101998,lv = 11,bklv = 1,star = 1},
			shl = {cha = "cardDaily_xhy_1",id = 7050111,cardId = 1102998,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_xhy_1",id = 7050120,cardId = 1101997,lv = 11,bklv = 1,star = 1,mon = {id = 207,desc = "cardDaily_xhy_1_jlr_2",srcLoc = 2,srcType = 1,skillLv = 1,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_xhy_1",id = 7050121,cardId = 1102997,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 308,desc = "cardDaily_xhy_1_shl_2",srcLoc = 2,srcType = 2,skillLv = 1,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_xhy_1",id = 7050130,cardId = 1101998,lv = 11,bklv = 1,star = 1},
			shl = {cha = "cardDaily_xhy_1",id = 7050131,cardId = 1102998,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200502] = {
		[1] = {
			jlr = {cha = "cardDaily_xhy_2",id = 7050210,cardId = 1101998,lv = 42,bklv = 5,star = 1,equip = {[1] = {id = 2002401,lv = 40},[2] = {id = 2002402,lv = 40},[3] = {id = 2002403,lv = 40},[4] = {id = 2002404,lv = 40},[5] = {id = 2002405,lv = 40},[6] = {id = 2002406,lv = 40},[7] = {id = 2002407,lv = 40},[8] = {id = 2002408,lv = 40}}},
			shl = {cha = "cardDaily_xhy_2",id = 7050211,cardId = 1102998,lv = 42,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_xhy_2",id = 7050220,cardId = 1101997,lv = 42,bklv = 5,star = 1,equip = {[1] = {id = 2002401,lv = 40},[2] = {id = 2002402,lv = 40},[3] = {id = 2002403,lv = 40},[4] = {id = 2002404,lv = 40},[5] = {id = 2002405,lv = 40},[6] = {id = 2002406,lv = 40},[7] = {id = 2002407,lv = 40},[8] = {id = 2002408,lv = 40}},mon = {id = 207,desc = "cardDaily_xhy_2_jlr_2",srcLoc = 2,srcType = 1,skillLv = 2,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_xhy_2",id = 7050221,cardId = 1102997,lv = 42,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 308,desc = "cardDaily_xhy_2_shl_2",srcLoc = 2,srcType = 2,skillLv = 2,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_xhy_2",id = 7050230,cardId = 1101998,lv = 42,bklv = 5,star = 1,equip = {[1] = {id = 2002401,lv = 40},[2] = {id = 2002402,lv = 40},[3] = {id = 2002403,lv = 40},[4] = {id = 2002404,lv = 40},[5] = {id = 2002405,lv = 40},[6] = {id = 2002406,lv = 40},[7] = {id = 2002407,lv = 40},[8] = {id = 2002408,lv = 40}}},
			shl = {cha = "cardDaily_xhy_2",id = 7050231,cardId = 1102998,lv = 42,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200503] = {
		[1] = {
			jlr = {cha = "cardDaily_xhy_3",id = 7050310,cardId = 1101998,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}}},
			shl = {cha = "cardDaily_xhy_3",id = 7050311,cardId = 1102998,lv = 57,bklv = 9,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_xhy_3",id = 7050320,cardId = 1101997,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}},mon = {id = 207,desc = "cardDaily_xhy_3_jlr_2",srcLoc = 2,srcType = 1,skillLv = 3,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_xhy_3",id = 7050321,cardId = 1102997,lv = 57,bklv = 9,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 308,desc = "cardDaily_xhy_3_shl_2",srcLoc = 2,srcType = 2,skillLv = 3,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_xhy_3",id = 7050330,cardId = 1101998,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}}},
			shl = {cha = "cardDaily_xhy_3",id = 7050331,cardId = 1102998,lv = 57,bklv = 9,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200504] = {
		[1] = {
			jlr = {cha = "cardDaily_xhy_4",id = 7050410,cardId = 1101998,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}}},
			shl = {cha = "cardDaily_xhy_4",id = 7050411,cardId = 1102998,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_xhy_4",id = 7050420,cardId = 1101997,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}},mon = {id = 207,desc = "cardDaily_xhy_4_jlr_2",srcLoc = 2,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_xhy_4",id = 7050421,cardId = 1102997,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 308,desc = "cardDaily_xhy_4_shl_2",srcLoc = 2,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_xhy_4",id = 7050430,cardId = 1101998,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}}},
			shl = {cha = "cardDaily_xhy_4",id = 7050431,cardId = 1102998,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200505] = {
		[1] = {
			jlr = {cha = "cardDaily_xhy_5",id = 7050510,cardId = 1101998,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}}},
			shl = {cha = "cardDaily_xhy_5",id = 7050511,cardId = 1102998,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_xhy_5",id = 7050520,cardId = 1101997,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}},mon = {id = 207,desc = "cardDaily_xhy_5_jlr_2",srcLoc = 2,srcType = 1,skillLv = 5,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_xhy_5",id = 7050521,cardId = 1102997,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 308,desc = "cardDaily_xhy_5_shl_2",srcLoc = 2,srcType = 2,skillLv = 5,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_xhy_5",id = 7050530,cardId = 1101998,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}}},
			shl = {cha = "cardDaily_xhy_5",id = 7050531,cardId = 1102998,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200506] = {
		[1] = {
			jlr = {cha = "cardDaily_xhy_6",id = 7050610,cardId = 1101998,lv = 90,bklv = 13,star = 3,equip = {[1] = {id = 2004401,lv = 90},[2] = {id = 2004402,lv = 90},[3] = {id = 2004403,lv = 90},[4] = {id = 2004404,lv = 90},[5] = {id = 2004405,lv = 90},[6] = {id = 2004406,lv = 90},[7] = {id = 2004407,lv = 90},[8] = {id = 2004408,lv = 90}}},
			shl = {cha = "cardDaily_xhy_6",id = 7050611,cardId = 1102998,lv = 90,bklv = 13,star = 3,ghost = 29,equip = {[1] = {id = 2104401,lv = 90},[2] = {id = 2104402,lv = 90},[3] = {id = 2104403,lv = 90},[4] = {id = 2104404,lv = 90},[5] = {id = 2104405,lv = 90},[6] = {id = 2104406,lv = 90},[7] = {id = 2104407,lv = 90},[8] = {id = 2104408,lv = 90}},exWeapon = {[1] = 7,[2] = 5,[3] = 5,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_xhy_6",id = 7050620,cardId = 1101997,lv = 90,bklv = 13,star = 3,equip = {[1] = {id = 2004401,lv = 90},[2] = {id = 2004402,lv = 90},[3] = {id = 2004403,lv = 90},[4] = {id = 2004404,lv = 90},[5] = {id = 2004405,lv = 90},[6] = {id = 2004406,lv = 90},[7] = {id = 2004407,lv = 90},[8] = {id = 2004408,lv = 90}},mon = {id = 207,desc = "cardDaily_xhy_6_jlr_2",srcLoc = 2,srcType = 1,skillLv = 6,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_xhy_6",id = 7050621,cardId = 1102997,lv = 90,bklv = 13,star = 3,ghost = 29,equip = {[1] = {id = 2104401,lv = 90},[2] = {id = 2104402,lv = 90},[3] = {id = 2104403,lv = 90},[4] = {id = 2104404,lv = 90},[5] = {id = 2104405,lv = 90},[6] = {id = 2104406,lv = 90},[7] = {id = 2104407,lv = 90},[8] = {id = 2104408,lv = 90}},exWeapon = {[1] = 7,[2] = 5,[3] = 5,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 308,desc = "cardDaily_xhy_6_shl_2",srcLoc = 2,srcType = 2,skillLv = 6,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_xhy_6",id = 7050630,cardId = 1101998,lv = 90,bklv = 13,star = 3,equip = {[1] = {id = 2004401,lv = 90},[2] = {id = 2004402,lv = 90},[3] = {id = 2004403,lv = 90},[4] = {id = 2004404,lv = 90},[5] = {id = 2004405,lv = 90},[6] = {id = 2004406,lv = 90},[7] = {id = 2004407,lv = 90},[8] = {id = 2004408,lv = 90}}},
			shl = {cha = "cardDaily_xhy_6",id = 7050631,cardId = 1102998,lv = 90,bklv = 13,star = 3,ghost = 29,equip = {[1] = {id = 2104401,lv = 90},[2] = {id = 2104402,lv = 90},[3] = {id = 2104403,lv = 90},[4] = {id = 2104404,lv = 90},[5] = {id = 2104405,lv = 90},[6] = {id = 2104406,lv = 90},[7] = {id = 2104407,lv = 90},[8] = {id = 2104408,lv = 90}},exWeapon = {[1] = 7,[2] = 5,[3] = 5,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200507] = {
		[1] = {
			jlr = {cha = "cardDaily_xhy_7",id = 7050710,cardId = 1101998,lv = 102,bklv = 14,star = 4,equip = {[1] = {id = 2005401,lv = 100},[2] = {id = 2005402,lv = 100},[3] = {id = 2005403,lv = 100},[4] = {id = 2005404,lv = 100},[5] = {id = 2005405,lv = 100},[6] = {id = 2005406,lv = 100},[7] = {id = 2005407,lv = 100},[8] = {id = 2005408,lv = 100}}},
			shl = {cha = "cardDaily_xhy_7",id = 7050711,cardId = 1102998,lv = 102,bklv = 15,star = 4,ghost = 32,equip = {[1] = {id = 2105401,lv = 100},[2] = {id = 2105402,lv = 100},[3] = {id = 2105403,lv = 100},[4] = {id = 2105404,lv = 100},[5] = {id = 2105405,lv = 100},[6] = {id = 2105406,lv = 100},[7] = {id = 2105407,lv = 100},[8] = {id = 2105408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_xhy_7",id = 7050720,cardId = 1101997,lv = 102,bklv = 14,star = 4,equip = {[1] = {id = 2005401,lv = 100},[2] = {id = 2005402,lv = 100},[3] = {id = 2005403,lv = 100},[4] = {id = 2005404,lv = 100},[5] = {id = 2005405,lv = 100},[6] = {id = 2005406,lv = 100},[7] = {id = 2005407,lv = 100},[8] = {id = 2005408,lv = 100}},mon = {id = 207,desc = "cardDaily_xhy_7_jlr_2",srcLoc = 2,srcType = 1,skillLv = 7,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_xhy_7",id = 7050721,cardId = 1102997,lv = 102,bklv = 15,star = 4,ghost = 32,equip = {[1] = {id = 2105401,lv = 100},[2] = {id = 2105402,lv = 100},[3] = {id = 2105403,lv = 100},[4] = {id = 2105404,lv = 100},[5] = {id = 2105405,lv = 100},[6] = {id = 2105406,lv = 100},[7] = {id = 2105407,lv = 100},[8] = {id = 2105408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0},mon = {id = 308,desc = "cardDaily_xhy_7_shl_2",srcLoc = 2,srcType = 2,skillLv = 7,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_xhy_7",id = 7050730,cardId = 1101998,lv = 102,bklv = 14,star = 4,equip = {[1] = {id = 2005401,lv = 100},[2] = {id = 2005402,lv = 100},[3] = {id = 2005403,lv = 100},[4] = {id = 2005404,lv = 100},[5] = {id = 2005405,lv = 100},[6] = {id = 2005406,lv = 100},[7] = {id = 2005407,lv = 100},[8] = {id = 2005408,lv = 100}}},
			shl = {cha = "cardDaily_xhy_7",id = 7050731,cardId = 1102998,lv = 102,bklv = 15,star = 4,ghost = 32,equip = {[1] = {id = 2105401,lv = 100},[2] = {id = 2105402,lv = 100},[3] = {id = 2105403,lv = 100},[4] = {id = 2105404,lv = 100},[5] = {id = 2105405,lv = 100},[6] = {id = 2105406,lv = 100},[7] = {id = 2105407,lv = 100},[8] = {id = 2105408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200508] = {
		[1] = {
			jlr = {cha = "cardDaily_xhy_8",id = 7050810,cardId = 1101998,lv = 130,bklv = 14,star = 4,equip = {[1] = {id = 2008401,lv = 100},[2] = {id = 2008402,lv = 100},[3] = {id = 2008403,lv = 100},[4] = {id = 2008404,lv = 100},[5] = {id = 2008405,lv = 100},[6] = {id = 2008406,lv = 100},[7] = {id = 2008407,lv = 100},[8] = {id = 2008408,lv = 100}}},
			shl = {cha = "cardDaily_xhy_8",id = 7050811,cardId = 1102998,lv = 130,bklv = 15,star = 4,ghost = 32,equip = {[1] = {id = 2108401,lv = 100},[2] = {id = 2108402,lv = 100},[3] = {id = 2108403,lv = 100},[4] = {id = 2108404,lv = 100},[5] = {id = 2108405,lv = 100},[6] = {id = 2108406,lv = 100},[7] = {id = 2108407,lv = 100},[8] = {id = 2108408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_xhy_8",id = 7050820,cardId = 1101997,lv = 130,bklv = 14,star = 4,equip = {[1] = {id = 2008401,lv = 100},[2] = {id = 2008402,lv = 100},[3] = {id = 2008403,lv = 100},[4] = {id = 2008404,lv = 100},[5] = {id = 2008405,lv = 100},[6] = {id = 2008406,lv = 100},[7] = {id = 2008407,lv = 100},[8] = {id = 2008408,lv = 100}},mon = {id = 207,desc = "cardDaily_xhy_8_jlr_2",srcLoc = 2,srcType = 1,skillLv = 8,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_xhy_8",id = 7050821,cardId = 1102997,lv = 130,bklv = 15,star = 4,ghost = 32,equip = {[1] = {id = 2108401,lv = 100},[2] = {id = 2108402,lv = 100},[3] = {id = 2108403,lv = 100},[4] = {id = 2108404,lv = 100},[5] = {id = 2108405,lv = 100},[6] = {id = 2108406,lv = 100},[7] = {id = 2108407,lv = 100},[8] = {id = 2108408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0},mon = {id = 308,desc = "cardDaily_xhy_8_shl_2",srcLoc = 2,srcType = 2,skillLv = 8,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_xhy_8",id = 7050830,cardId = 1101998,lv = 130,bklv = 14,star = 4,equip = {[1] = {id = 2008401,lv = 100},[2] = {id = 2008402,lv = 100},[3] = {id = 2008403,lv = 100},[4] = {id = 2008404,lv = 100},[5] = {id = 2008405,lv = 100},[6] = {id = 2008406,lv = 100},[7] = {id = 2008407,lv = 100},[8] = {id = 2008408,lv = 100}}},
			shl = {cha = "cardDaily_xhy_8",id = 7050831,cardId = 1102998,lv = 130,bklv = 15,star = 4,ghost = 32,equip = {[1] = {id = 2108401,lv = 100},[2] = {id = 2108402,lv = 100},[3] = {id = 2108403,lv = 100},[4] = {id = 2108404,lv = 100},[5] = {id = 2108405,lv = 100},[6] = {id = 2108406,lv = 100},[7] = {id = 2108407,lv = 100},[8] = {id = 2108408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200601] = {
		[1] = {
			jlr = {cha = "cardDaily_xh_1",id = 7060110,cardId = 1101998,lv = 11,bklv = 1,star = 1},
			shl = {cha = "cardDaily_xh_1",id = 7060111,cardId = 1102998,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_xh_1",id = 7060120,cardId = 1101998,lv = 11,bklv = 1,star = 1,mon = {id = 207,desc = "cardDaily_xh_1_jlr_2",srcLoc = 2,srcType = 1,skillLv = 1,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_xh_1",id = 7060121,cardId = 1102998,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 309,desc = "cardDaily_xh_1_shl_2",srcLoc = 2,srcType = 2,skillLv = 1,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_xh_1",id = 7060130,cardId = 1101998,lv = 11,bklv = 1,star = 1},
			shl = {cha = "cardDaily_xh_1",id = 7060131,cardId = 1102998,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200602] = {
		[1] = {
			jlr = {cha = "cardDaily_xh_2",id = 7060210,cardId = 1101998,lv = 42,bklv = 5,star = 1,equip = {[1] = {id = 2002401,lv = 40},[2] = {id = 2002402,lv = 40},[3] = {id = 2002403,lv = 40},[4] = {id = 2002404,lv = 40},[5] = {id = 2002405,lv = 40},[6] = {id = 2002406,lv = 40},[7] = {id = 2002407,lv = 40},[8] = {id = 2002408,lv = 40}}},
			shl = {cha = "cardDaily_xh_2",id = 7060211,cardId = 1102998,lv = 42,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_xh_2",id = 7060220,cardId = 1101997,lv = 42,bklv = 5,star = 1,equip = {[1] = {id = 2002401,lv = 40},[2] = {id = 2002402,lv = 40},[3] = {id = 2002403,lv = 40},[4] = {id = 2002404,lv = 40},[5] = {id = 2002405,lv = 40},[6] = {id = 2002406,lv = 40},[7] = {id = 2002407,lv = 40},[8] = {id = 2002408,lv = 40}},mon = {id = 207,desc = "cardDaily_xh_2_jlr_2",srcLoc = 2,srcType = 1,skillLv = 2,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_xh_2",id = 7060221,cardId = 1102997,lv = 42,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 309,desc = "cardDaily_xh_2_shl_2",srcLoc = 2,srcType = 2,skillLv = 2,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_xh_2",id = 7060230,cardId = 1101998,lv = 42,bklv = 5,star = 1,equip = {[1] = {id = 2002401,lv = 40},[2] = {id = 2002402,lv = 40},[3] = {id = 2002403,lv = 40},[4] = {id = 2002404,lv = 40},[5] = {id = 2002405,lv = 40},[6] = {id = 2002406,lv = 40},[7] = {id = 2002407,lv = 40},[8] = {id = 2002408,lv = 40}}},
			shl = {cha = "cardDaily_xh_2",id = 7060231,cardId = 1102998,lv = 42,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200603] = {
		[1] = {
			jlr = {cha = "cardDaily_xh_3",id = 7060310,cardId = 1101998,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}}},
			shl = {cha = "cardDaily_xh_3",id = 7060311,cardId = 1102998,lv = 57,bklv = 9,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_xh_3",id = 7060320,cardId = 1101997,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}},mon = {id = 207,desc = "cardDaily_xh_3_jlr_2",srcLoc = 2,srcType = 1,skillLv = 3,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_xh_3",id = 7060321,cardId = 1102997,lv = 57,bklv = 9,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 309,desc = "cardDaily_xh_3_shl_2",srcLoc = 2,srcType = 2,skillLv = 3,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_xh_3",id = 7060330,cardId = 1101998,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}}},
			shl = {cha = "cardDaily_xh_3",id = 7060331,cardId = 1102998,lv = 57,bklv = 9,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200604] = {
		[1] = {
			jlr = {cha = "cardDaily_xh_4",id = 7060410,cardId = 1101998,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}}},
			shl = {cha = "cardDaily_xh_4",id = 7060411,cardId = 1102998,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_xh_4",id = 7060420,cardId = 1101997,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}},mon = {id = 207,desc = "cardDaily_xh_4_jlr_2",srcLoc = 2,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_xh_4",id = 7060421,cardId = 1102997,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 309,desc = "cardDaily_xh_4_shl_2",srcLoc = 2,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_xh_4",id = 7060430,cardId = 1101998,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}}},
			shl = {cha = "cardDaily_xh_4",id = 7060431,cardId = 1102998,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200605] = {
		[1] = {
			jlr = {cha = "cardDaily_xh_5",id = 7060510,cardId = 1101998,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}}},
			shl = {cha = "cardDaily_xh_5",id = 7060511,cardId = 1102998,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_xh_5",id = 7060520,cardId = 1101997,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}},mon = {id = 207,desc = "cardDaily_xh_5_jlr_2",srcLoc = 2,srcType = 1,skillLv = 5,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_xh_5",id = 7060521,cardId = 1102997,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 309,desc = "cardDaily_xh_5_shl_2",srcLoc = 2,srcType = 2,skillLv = 5,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_xh_5",id = 7060530,cardId = 1101998,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}}},
			shl = {cha = "cardDaily_xh_5",id = 7060531,cardId = 1102998,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200701] = {
		[1] = {
			jlr = {cha = "cardDaily_zh_1",id = 7070110,cardId = 1101998,lv = 11,bklv = 1,star = 1},
			shl = {cha = "cardDaily_zh_1",id = 7070111,cardId = 1102998,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_zh_1",id = 7070120,cardId = 1101997,lv = 11,bklv = 1,star = 1,mon = {id = 207,desc = "cardDaily_zh_1_jlr_2",srcLoc = 2,srcType = 1,skillLv = 1,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_zh_1",id = 7070121,cardId = 1102997,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 310,desc = "cardDaily_zh_1_shl_2",srcLoc = 2,srcType = 2,skillLv = 1,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_zh_1",id = 7070130,cardId = 1101998,lv = 11,bklv = 1,star = 1},
			shl = {cha = "cardDaily_zh_1",id = 7070131,cardId = 1102998,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200702] = {
		[1] = {
			jlr = {cha = "cardDaily_zh_2",id = 7070210,cardId = 1101998,lv = 42,bklv = 5,star = 1,equip = {[1] = {id = 2002401,lv = 40},[2] = {id = 2002402,lv = 40},[3] = {id = 2002403,lv = 40},[4] = {id = 2002404,lv = 40},[5] = {id = 2002405,lv = 40},[6] = {id = 2002406,lv = 40},[7] = {id = 2002407,lv = 40},[8] = {id = 2002408,lv = 40}}},
			shl = {cha = "cardDaily_zh_2",id = 7070211,cardId = 1102998,lv = 42,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_zh_2",id = 7070220,cardId = 1101997,lv = 42,bklv = 5,star = 1,equip = {[1] = {id = 2002401,lv = 40},[2] = {id = 2002402,lv = 40},[3] = {id = 2002403,lv = 40},[4] = {id = 2002404,lv = 40},[5] = {id = 2002405,lv = 40},[6] = {id = 2002406,lv = 40},[7] = {id = 2002407,lv = 40},[8] = {id = 2002408,lv = 40}},mon = {id = 207,desc = "cardDaily_zh_2_jlr_2",srcLoc = 2,srcType = 1,skillLv = 2,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_zh_2",id = 7070221,cardId = 1102997,lv = 42,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 310,desc = "cardDaily_zh_2_shl_2",srcLoc = 2,srcType = 2,skillLv = 2,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_zh_2",id = 7070230,cardId = 1101998,lv = 42,bklv = 5,star = 1,equip = {[1] = {id = 2002401,lv = 40},[2] = {id = 2002402,lv = 40},[3] = {id = 2002403,lv = 40},[4] = {id = 2002404,lv = 40},[5] = {id = 2002405,lv = 40},[6] = {id = 2002406,lv = 40},[7] = {id = 2002407,lv = 40},[8] = {id = 2002408,lv = 40}}},
			shl = {cha = "cardDaily_zh_2",id = 7070231,cardId = 1102998,lv = 42,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200703] = {
		[1] = {
			jlr = {cha = "cardDaily_zh_3",id = 7070310,cardId = 1101998,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}}},
			shl = {cha = "cardDaily_zh_3",id = 7070311,cardId = 1102998,lv = 57,bklv = 9,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_zh_3",id = 7070320,cardId = 1101997,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}},mon = {id = 207,desc = "cardDaily_zh_3_jlr_2",srcLoc = 2,srcType = 1,skillLv = 3,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_zh_3",id = 7070321,cardId = 1102997,lv = 57,bklv = 9,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 310,desc = "cardDaily_zh_3_shl_2",srcLoc = 2,srcType = 2,skillLv = 3,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_zh_3",id = 7070330,cardId = 1101998,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}}},
			shl = {cha = "cardDaily_zh_3",id = 7070331,cardId = 1102998,lv = 57,bklv = 9,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200704] = {
		[1] = {
			jlr = {cha = "cardDaily_zh_4",id = 7070410,cardId = 1101998,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}}},
			shl = {cha = "cardDaily_zh_4",id = 7070411,cardId = 1102998,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_zh_4",id = 7070420,cardId = 1101997,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}},mon = {id = 207,desc = "cardDaily_zh_4_jlr_2",srcLoc = 2,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_zh_4",id = 7070421,cardId = 1102997,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 310,desc = "cardDaily_zh_4_shl_2",srcLoc = 2,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_zh_4",id = 7070430,cardId = 1101998,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}}},
			shl = {cha = "cardDaily_zh_4",id = 7070431,cardId = 1102998,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200705] = {
		[1] = {
			jlr = {cha = "cardDaily_zh_5",id = 7070510,cardId = 1101998,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}}},
			shl = {cha = "cardDaily_zh_5",id = 7070511,cardId = 1102998,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_zh_5",id = 7070520,cardId = 1101997,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}},mon = {id = 207,desc = "cardDaily_zh_5_jlr_2",srcLoc = 2,srcType = 1,skillLv = 5,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_zh_5",id = 7070521,cardId = 1102997,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 310,desc = "cardDaily_zh_5_shl_2",srcLoc = 2,srcType = 2,skillLv = 5,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_zh_5",id = 7070530,cardId = 1101998,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}}},
			shl = {cha = "cardDaily_zh_5",id = 7070531,cardId = 1102998,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200706] = {
		[1] = {
			jlr = {cha = "cardDaily_zh_6",id = 7070610,cardId = 1101998,lv = 90,bklv = 13,star = 3,equip = {[1] = {id = 2004401,lv = 90},[2] = {id = 2004402,lv = 90},[3] = {id = 2004403,lv = 90},[4] = {id = 2004404,lv = 90},[5] = {id = 2004405,lv = 90},[6] = {id = 2004406,lv = 90},[7] = {id = 2004407,lv = 90},[8] = {id = 2004408,lv = 90}}},
			shl = {cha = "cardDaily_zh_6",id = 7070611,cardId = 1102998,lv = 90,bklv = 13,star = 3,ghost = 29,equip = {[1] = {id = 2104401,lv = 90},[2] = {id = 2104402,lv = 90},[3] = {id = 2104403,lv = 90},[4] = {id = 2104404,lv = 90},[5] = {id = 2104405,lv = 90},[6] = {id = 2104406,lv = 90},[7] = {id = 2104407,lv = 90},[8] = {id = 2104408,lv = 90}},exWeapon = {[1] = 7,[2] = 5,[3] = 5,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_zh_6",id = 7070620,cardId = 1101997,lv = 90,bklv = 13,star = 3,equip = {[1] = {id = 2004401,lv = 90},[2] = {id = 2004402,lv = 90},[3] = {id = 2004403,lv = 90},[4] = {id = 2004404,lv = 90},[5] = {id = 2004405,lv = 90},[6] = {id = 2004406,lv = 90},[7] = {id = 2004407,lv = 90},[8] = {id = 2004408,lv = 90}},mon = {id = 207,desc = "cardDaily_zh_6_jlr_2",srcLoc = 2,srcType = 1,skillLv = 6,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_zh_6",id = 7070621,cardId = 1102997,lv = 90,bklv = 13,star = 3,ghost = 29,equip = {[1] = {id = 2104401,lv = 90},[2] = {id = 2104402,lv = 90},[3] = {id = 2104403,lv = 90},[4] = {id = 2104404,lv = 90},[5] = {id = 2104405,lv = 90},[6] = {id = 2104406,lv = 90},[7] = {id = 2104407,lv = 90},[8] = {id = 2104408,lv = 90}},exWeapon = {[1] = 7,[2] = 5,[3] = 5,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 310,desc = "cardDaily_zh_6_shl_2",srcLoc = 2,srcType = 2,skillLv = 6,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_zh_6",id = 7070630,cardId = 1101998,lv = 90,bklv = 13,star = 3,equip = {[1] = {id = 2004401,lv = 90},[2] = {id = 2004402,lv = 90},[3] = {id = 2004403,lv = 90},[4] = {id = 2004404,lv = 90},[5] = {id = 2004405,lv = 90},[6] = {id = 2004406,lv = 90},[7] = {id = 2004407,lv = 90},[8] = {id = 2004408,lv = 90}}},
			shl = {cha = "cardDaily_zh_6",id = 7070631,cardId = 1102998,lv = 90,bklv = 13,star = 3,ghost = 29,equip = {[1] = {id = 2104401,lv = 90},[2] = {id = 2104402,lv = 90},[3] = {id = 2104403,lv = 90},[4] = {id = 2104404,lv = 90},[5] = {id = 2104405,lv = 90},[6] = {id = 2104406,lv = 90},[7] = {id = 2104407,lv = 90},[8] = {id = 2104408,lv = 90}},exWeapon = {[1] = 7,[2] = 5,[3] = 5,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200707] = {
		[1] = {
			jlr = {cha = "cardDaily_zh_7",id = 7070710,cardId = 1101998,lv = 102,bklv = 14,star = 4,equip = {[1] = {id = 2005401,lv = 100},[2] = {id = 2005402,lv = 100},[3] = {id = 2005403,lv = 100},[4] = {id = 2005404,lv = 100},[5] = {id = 2005405,lv = 100},[6] = {id = 2005406,lv = 100},[7] = {id = 2005407,lv = 100},[8] = {id = 2005408,lv = 100}}},
			shl = {cha = "cardDaily_zh_7",id = 7070711,cardId = 1102998,lv = 102,bklv = 15,star = 4,ghost = 32,equip = {[1] = {id = 2105401,lv = 100},[2] = {id = 2105402,lv = 100},[3] = {id = 2105403,lv = 100},[4] = {id = 2105404,lv = 100},[5] = {id = 2105405,lv = 100},[6] = {id = 2105406,lv = 100},[7] = {id = 2105407,lv = 100},[8] = {id = 2105408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_zh_7",id = 7070720,cardId = 1101997,lv = 102,bklv = 14,star = 4,equip = {[1] = {id = 2005401,lv = 100},[2] = {id = 2005402,lv = 100},[3] = {id = 2005403,lv = 100},[4] = {id = 2005404,lv = 100},[5] = {id = 2005405,lv = 100},[6] = {id = 2005406,lv = 100},[7] = {id = 2005407,lv = 100},[8] = {id = 2005408,lv = 100}},mon = {id = 207,desc = "cardDaily_zh_7_jlr_2",srcLoc = 2,srcType = 1,skillLv = 7,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_zh_7",id = 7070721,cardId = 1102997,lv = 102,bklv = 15,star = 4,ghost = 32,equip = {[1] = {id = 2105401,lv = 100},[2] = {id = 2105402,lv = 100},[3] = {id = 2105403,lv = 100},[4] = {id = 2105404,lv = 100},[5] = {id = 2105405,lv = 100},[6] = {id = 2105406,lv = 100},[7] = {id = 2105407,lv = 100},[8] = {id = 2105408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0},mon = {id = 310,desc = "cardDaily_zh_7_shl_2",srcLoc = 2,srcType = 2,skillLv = 7,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_zh_7",id = 7070730,cardId = 1101998,lv = 102,bklv = 14,star = 4,equip = {[1] = {id = 2005401,lv = 100},[2] = {id = 2005402,lv = 100},[3] = {id = 2005403,lv = 100},[4] = {id = 2005404,lv = 100},[5] = {id = 2005405,lv = 100},[6] = {id = 2005406,lv = 100},[7] = {id = 2005407,lv = 100},[8] = {id = 2005408,lv = 100}}},
			shl = {cha = "cardDaily_zh_7",id = 7070731,cardId = 1102998,lv = 102,bklv = 15,star = 4,ghost = 32,equip = {[1] = {id = 2105401,lv = 100},[2] = {id = 2105402,lv = 100},[3] = {id = 2105403,lv = 100},[4] = {id = 2105404,lv = 100},[5] = {id = 2105405,lv = 100},[6] = {id = 2105406,lv = 100},[7] = {id = 2105407,lv = 100},[8] = {id = 2105408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200708] = {
		[1] = {
			jlr = {cha = "cardDaily_zh_8",id = 7070810,cardId = 1101998,lv = 130,bklv = 14,star = 4,equip = {[1] = {id = 2008401,lv = 100},[2] = {id = 2008402,lv = 100},[3] = {id = 2008403,lv = 100},[4] = {id = 2008404,lv = 100},[5] = {id = 2008405,lv = 100},[6] = {id = 2008406,lv = 100},[7] = {id = 2008407,lv = 100},[8] = {id = 2008408,lv = 100}}},
			shl = {cha = "cardDaily_zh_8",id = 7070811,cardId = 1102998,lv = 130,bklv = 15,star = 4,ghost = 32,equip = {[1] = {id = 2108401,lv = 100},[2] = {id = 2108402,lv = 100},[3] = {id = 2108403,lv = 100},[4] = {id = 2108404,lv = 100},[5] = {id = 2108405,lv = 100},[6] = {id = 2108406,lv = 100},[7] = {id = 2108407,lv = 100},[8] = {id = 2108408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_zh_8",id = 7070820,cardId = 1101997,lv = 130,bklv = 14,star = 4,equip = {[1] = {id = 2008401,lv = 100},[2] = {id = 2008402,lv = 100},[3] = {id = 2008403,lv = 100},[4] = {id = 2008404,lv = 100},[5] = {id = 2008405,lv = 100},[6] = {id = 2008406,lv = 100},[7] = {id = 2008407,lv = 100},[8] = {id = 2008408,lv = 100}},mon = {id = 207,desc = "cardDaily_zh_8_jlr_2",srcLoc = 2,srcType = 1,skillLv = 8,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_zh_8",id = 7070821,cardId = 1102997,lv = 130,bklv = 15,star = 4,ghost = 32,equip = {[1] = {id = 2108401,lv = 100},[2] = {id = 2108402,lv = 100},[3] = {id = 2108403,lv = 100},[4] = {id = 2108404,lv = 100},[5] = {id = 2108405,lv = 100},[6] = {id = 2108406,lv = 100},[7] = {id = 2108407,lv = 100},[8] = {id = 2108408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0},mon = {id = 310,desc = "cardDaily_zh_8_shl_2",srcLoc = 2,srcType = 2,skillLv = 8,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_zh_8",id = 7070830,cardId = 1101998,lv = 130,bklv = 14,star = 4,equip = {[1] = {id = 2008401,lv = 100},[2] = {id = 2008402,lv = 100},[3] = {id = 2008403,lv = 100},[4] = {id = 2008404,lv = 100},[5] = {id = 2008405,lv = 100},[6] = {id = 2008406,lv = 100},[7] = {id = 2008407,lv = 100},[8] = {id = 2008408,lv = 100}}},
			shl = {cha = "cardDaily_zh_8",id = 7070831,cardId = 1102998,lv = 130,bklv = 15,star = 4,ghost = 32,equip = {[1] = {id = 2108401,lv = 100},[2] = {id = 2108402,lv = 100},[3] = {id = 2108403,lv = 100},[4] = {id = 2108404,lv = 100},[5] = {id = 2108405,lv = 100},[6] = {id = 2108406,lv = 100},[7] = {id = 2108407,lv = 100},[8] = {id = 2108408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200801] = {
		[1] = {
			jlr = {cha = "cardDaily_zf_1",id = 7080110,cardId = 1101998,lv = 11,bklv = 1,star = 1},
			shl = {cha = "cardDaily_zf_1",id = 7080111,cardId = 1102998,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_zf_1",id = 7080120,cardId = 1101997,lv = 11,bklv = 1,star = 1,mon = {id = 205,desc = "cardDaily_zf_1_jlr_2",srcLoc = 2,srcType = 1,skillLv = 1,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_zf_1",id = 7080121,cardId = 1102997,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 311,desc = "cardDaily_zf_1_shl_2",srcLoc = 2,srcType = 2,skillLv = 1,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_zf_1",id = 7080130,cardId = 1101998,lv = 11,bklv = 1,star = 1},
			shl = {cha = "cardDaily_zf_1",id = 7080131,cardId = 1102998,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200802] = {
		[1] = {
			jlr = {cha = "cardDaily_zf_2",id = 7080210,cardId = 1101998,lv = 42,bklv = 5,star = 1,equip = {[1] = {id = 2002401,lv = 40},[2] = {id = 2002402,lv = 40},[3] = {id = 2002403,lv = 40},[4] = {id = 2002404,lv = 40},[5] = {id = 2002405,lv = 40},[6] = {id = 2002406,lv = 40},[7] = {id = 2002407,lv = 40},[8] = {id = 2002408,lv = 40}}},
			shl = {cha = "cardDaily_zf_2",id = 7080211,cardId = 1102998,lv = 42,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_zf_2",id = 7080220,cardId = 1101997,lv = 42,bklv = 5,star = 1,equip = {[1] = {id = 2002401,lv = 40},[2] = {id = 2002402,lv = 40},[3] = {id = 2002403,lv = 40},[4] = {id = 2002404,lv = 40},[5] = {id = 2002405,lv = 40},[6] = {id = 2002406,lv = 40},[7] = {id = 2002407,lv = 40},[8] = {id = 2002408,lv = 40}},mon = {id = 205,desc = "cardDaily_zf_2_jlr_2",srcLoc = 2,srcType = 1,skillLv = 2,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_zf_2",id = 7080221,cardId = 1102997,lv = 42,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 311,desc = "cardDaily_zf_2_shl_2",srcLoc = 2,srcType = 2,skillLv = 2,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_zf_2",id = 7080230,cardId = 1101998,lv = 42,bklv = 5,star = 1,equip = {[1] = {id = 2002401,lv = 40},[2] = {id = 2002402,lv = 40},[3] = {id = 2002403,lv = 40},[4] = {id = 2002404,lv = 40},[5] = {id = 2002405,lv = 40},[6] = {id = 2002406,lv = 40},[7] = {id = 2002407,lv = 40},[8] = {id = 2002408,lv = 40}}},
			shl = {cha = "cardDaily_zf_2",id = 7080231,cardId = 1102998,lv = 42,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200803] = {
		[1] = {
			jlr = {cha = "cardDaily_zf_3",id = 7080310,cardId = 1101998,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}}},
			shl = {cha = "cardDaily_zf_3",id = 7080311,cardId = 1102998,lv = 57,bklv = 9,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_zf_3",id = 7080320,cardId = 1101997,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}},mon = {id = 205,desc = "cardDaily_zf_3_jlr_2",srcLoc = 2,srcType = 1,skillLv = 3,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_zf_3",id = 7080321,cardId = 1102997,lv = 57,bklv = 9,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 311,desc = "cardDaily_zf_3_shl_2",srcLoc = 2,srcType = 2,skillLv = 3,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_zf_3",id = 7080330,cardId = 1101998,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}}},
			shl = {cha = "cardDaily_zf_3",id = 7080331,cardId = 1102998,lv = 57,bklv = 9,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200804] = {
		[1] = {
			jlr = {cha = "cardDaily_zf_4",id = 7080410,cardId = 1101998,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}}},
			shl = {cha = "cardDaily_zf_4",id = 7080411,cardId = 1102998,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_zf_4",id = 7080420,cardId = 1101997,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}},mon = {id = 205,desc = "cardDaily_zf_4_jlr_2",srcLoc = 2,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_zf_4",id = 7080421,cardId = 1102997,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 311,desc = "cardDaily_zf_4_shl_2",srcLoc = 2,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_zf_4",id = 7080430,cardId = 1101998,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}}},
			shl = {cha = "cardDaily_zf_4",id = 7080431,cardId = 1102998,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200805] = {
		[1] = {
			jlr = {cha = "cardDaily_zf_5",id = 7080510,cardId = 1101998,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}}},
			shl = {cha = "cardDaily_zf_5",id = 7080511,cardId = 1102998,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_zf_5",id = 7080520,cardId = 1101997,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}},mon = {id = 205,desc = "cardDaily_zf_5_jlr_2",srcLoc = 2,srcType = 1,skillLv = 5,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_zf_5",id = 7080521,cardId = 1102997,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 311,desc = "cardDaily_zf_5_shl_2",srcLoc = 2,srcType = 2,skillLv = 5,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_zf_5",id = 7080530,cardId = 1101998,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}}},
			shl = {cha = "cardDaily_zf_5",id = 7080531,cardId = 1102998,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200806] = {
		[1] = {
			jlr = {cha = "cardDaily_zf_6",id = 7080610,cardId = 1101998,lv = 90,bklv = 13,star = 3,equip = {[1] = {id = 2004401,lv = 90},[2] = {id = 2004402,lv = 90},[3] = {id = 2004403,lv = 90},[4] = {id = 2004404,lv = 90},[5] = {id = 2004405,lv = 90},[6] = {id = 2004406,lv = 90},[7] = {id = 2004407,lv = 90},[8] = {id = 2004408,lv = 90}}},
			shl = {cha = "cardDaily_zf_6",id = 7080611,cardId = 1102998,lv = 90,bklv = 13,star = 3,ghost = 29,equip = {[1] = {id = 2104401,lv = 90},[2] = {id = 2104402,lv = 90},[3] = {id = 2104403,lv = 90},[4] = {id = 2104404,lv = 90},[5] = {id = 2104405,lv = 90},[6] = {id = 2104406,lv = 90},[7] = {id = 2104407,lv = 90},[8] = {id = 2104408,lv = 90}},exWeapon = {[1] = 7,[2] = 5,[3] = 5,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_zf_6",id = 7080620,cardId = 1101997,lv = 90,bklv = 13,star = 3,equip = {[1] = {id = 2004401,lv = 90},[2] = {id = 2004402,lv = 90},[3] = {id = 2004403,lv = 90},[4] = {id = 2004404,lv = 90},[5] = {id = 2004405,lv = 90},[6] = {id = 2004406,lv = 90},[7] = {id = 2004407,lv = 90},[8] = {id = 2004408,lv = 90}},mon = {id = 205,desc = "cardDaily_zf_6_jlr_2",srcLoc = 2,srcType = 1,skillLv = 6,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_zf_6",id = 7080621,cardId = 1102997,lv = 90,bklv = 13,star = 3,ghost = 29,equip = {[1] = {id = 2104401,lv = 90},[2] = {id = 2104402,lv = 90},[3] = {id = 2104403,lv = 90},[4] = {id = 2104404,lv = 90},[5] = {id = 2104405,lv = 90},[6] = {id = 2104406,lv = 90},[7] = {id = 2104407,lv = 90},[8] = {id = 2104408,lv = 90}},exWeapon = {[1] = 7,[2] = 5,[3] = 5,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 311,desc = "cardDaily_zf_6_shl_2",srcLoc = 2,srcType = 2,skillLv = 6,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_zf_6",id = 7080630,cardId = 1101998,lv = 90,bklv = 13,star = 3,equip = {[1] = {id = 2004401,lv = 90},[2] = {id = 2004402,lv = 90},[3] = {id = 2004403,lv = 90},[4] = {id = 2004404,lv = 90},[5] = {id = 2004405,lv = 90},[6] = {id = 2004406,lv = 90},[7] = {id = 2004407,lv = 90},[8] = {id = 2004408,lv = 90}}},
			shl = {cha = "cardDaily_zf_6",id = 7080631,cardId = 1102998,lv = 90,bklv = 13,star = 3,ghost = 29,equip = {[1] = {id = 2104401,lv = 90},[2] = {id = 2104402,lv = 90},[3] = {id = 2104403,lv = 90},[4] = {id = 2104404,lv = 90},[5] = {id = 2104405,lv = 90},[6] = {id = 2104406,lv = 90},[7] = {id = 2104407,lv = 90},[8] = {id = 2104408,lv = 90}},exWeapon = {[1] = 7,[2] = 5,[3] = 5,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200807] = {
		[1] = {
			jlr = {cha = "cardDaily_zf_7",id = 7080710,cardId = 1101998,lv = 102,bklv = 14,star = 4,equip = {[1] = {id = 2005401,lv = 100},[2] = {id = 2005402,lv = 100},[3] = {id = 2005403,lv = 100},[4] = {id = 2005404,lv = 100},[5] = {id = 2005405,lv = 100},[6] = {id = 2005406,lv = 100},[7] = {id = 2005407,lv = 100},[8] = {id = 2005408,lv = 100}}},
			shl = {cha = "cardDaily_zf_7",id = 7080711,cardId = 1102998,lv = 102,bklv = 15,star = 4,ghost = 32,equip = {[1] = {id = 2105401,lv = 100},[2] = {id = 2105402,lv = 100},[3] = {id = 2105403,lv = 100},[4] = {id = 2105404,lv = 100},[5] = {id = 2105405,lv = 100},[6] = {id = 2105406,lv = 100},[7] = {id = 2105407,lv = 100},[8] = {id = 2105408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_zf_7",id = 7080720,cardId = 1101997,lv = 102,bklv = 14,star = 4,equip = {[1] = {id = 2005401,lv = 100},[2] = {id = 2005402,lv = 100},[3] = {id = 2005403,lv = 100},[4] = {id = 2005404,lv = 100},[5] = {id = 2005405,lv = 100},[6] = {id = 2005406,lv = 100},[7] = {id = 2005407,lv = 100},[8] = {id = 2005408,lv = 100}},mon = {id = 205,desc = "cardDaily_zf_7_jlr_2",srcLoc = 2,srcType = 1,skillLv = 7,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_zf_7",id = 7080721,cardId = 1102997,lv = 102,bklv = 15,star = 4,ghost = 32,equip = {[1] = {id = 2105401,lv = 100},[2] = {id = 2105402,lv = 100},[3] = {id = 2105403,lv = 100},[4] = {id = 2105404,lv = 100},[5] = {id = 2105405,lv = 100},[6] = {id = 2105406,lv = 100},[7] = {id = 2105407,lv = 100},[8] = {id = 2105408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0},mon = {id = 311,desc = "cardDaily_zf_7_shl_2",srcLoc = 2,srcType = 2,skillLv = 7,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_zf_7",id = 7080730,cardId = 1101998,lv = 102,bklv = 14,star = 4,equip = {[1] = {id = 2005401,lv = 100},[2] = {id = 2005402,lv = 100},[3] = {id = 2005403,lv = 100},[4] = {id = 2005404,lv = 100},[5] = {id = 2005405,lv = 100},[6] = {id = 2005406,lv = 100},[7] = {id = 2005407,lv = 100},[8] = {id = 2005408,lv = 100}}},
			shl = {cha = "cardDaily_zf_7",id = 7080731,cardId = 1102998,lv = 102,bklv = 15,star = 4,ghost = 32,equip = {[1] = {id = 2105401,lv = 100},[2] = {id = 2105402,lv = 100},[3] = {id = 2105403,lv = 100},[4] = {id = 2105404,lv = 100},[5] = {id = 2105405,lv = 100},[6] = {id = 2105406,lv = 100},[7] = {id = 2105407,lv = 100},[8] = {id = 2105408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200808] = {
		[1] = {
			jlr = {cha = "cardDaily_zf_8",id = 7080810,cardId = 1101998,lv = 130,bklv = 14,star = 4,equip = {[1] = {id = 2008401,lv = 100},[2] = {id = 2008402,lv = 100},[3] = {id = 2008403,lv = 100},[4] = {id = 2008404,lv = 100},[5] = {id = 2008405,lv = 100},[6] = {id = 2008406,lv = 100},[7] = {id = 2008407,lv = 100},[8] = {id = 2008408,lv = 100}}},
			shl = {cha = "cardDaily_zf_8",id = 7080811,cardId = 1102998,lv = 130,bklv = 15,star = 4,ghost = 32,equip = {[1] = {id = 2108401,lv = 100},[2] = {id = 2108402,lv = 100},[3] = {id = 2108403,lv = 100},[4] = {id = 2108404,lv = 100},[5] = {id = 2108405,lv = 100},[6] = {id = 2108406,lv = 100},[7] = {id = 2108407,lv = 100},[8] = {id = 2108408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_zf_8",id = 7080820,cardId = 1101997,lv = 130,bklv = 14,star = 4,equip = {[1] = {id = 2008401,lv = 100},[2] = {id = 2008402,lv = 100},[3] = {id = 2008403,lv = 100},[4] = {id = 2008404,lv = 100},[5] = {id = 2008405,lv = 100},[6] = {id = 2008406,lv = 100},[7] = {id = 2008407,lv = 100},[8] = {id = 2008408,lv = 100}},mon = {id = 205,desc = "cardDaily_zf_8_jlr_2",srcLoc = 2,srcType = 1,skillLv = 8,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_zf_8",id = 7080821,cardId = 1102997,lv = 130,bklv = 15,star = 4,ghost = 32,equip = {[1] = {id = 2108401,lv = 100},[2] = {id = 2108402,lv = 100},[3] = {id = 2108403,lv = 100},[4] = {id = 2108404,lv = 100},[5] = {id = 2108405,lv = 100},[6] = {id = 2108406,lv = 100},[7] = {id = 2108407,lv = 100},[8] = {id = 2108408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0},mon = {id = 311,desc = "cardDaily_zf_8_shl_2",srcLoc = 2,srcType = 2,skillLv = 8,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_zf_8",id = 7080830,cardId = 1101998,lv = 130,bklv = 14,star = 4,equip = {[1] = {id = 2008401,lv = 100},[2] = {id = 2008402,lv = 100},[3] = {id = 2008403,lv = 100},[4] = {id = 2008404,lv = 100},[5] = {id = 2008405,lv = 100},[6] = {id = 2008406,lv = 100},[7] = {id = 2008407,lv = 100},[8] = {id = 2008408,lv = 100}}},
			shl = {cha = "cardDaily_zf_8",id = 7080831,cardId = 1102998,lv = 130,bklv = 15,star = 4,ghost = 32,equip = {[1] = {id = 2108401,lv = 100},[2] = {id = 2108402,lv = 100},[3] = {id = 2108403,lv = 100},[4] = {id = 2108404,lv = 100},[5] = {id = 2108405,lv = 100},[6] = {id = 2108406,lv = 100},[7] = {id = 2108407,lv = 100},[8] = {id = 2108408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200901] = {
		[1] = {
			jlr = {cha = "cardDaily_slm_1",id = 7090110,cardId = 1101998,lv = 11,bklv = 1,star = 1},
			shl = {cha = "cardDaily_slm_1",id = 7090111,cardId = 1102998,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_slm_1",id = 7090120,cardId = 1101998,lv = 11,bklv = 1,star = 1,mon = {id = 209,desc = "cardDaily_slm_1_jlr_2",srcLoc = 2,srcType = 1,skillLv = 1,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_slm_1",id = 7090121,cardId = 1102998,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 314,desc = "cardDaily_slm_1_shl_2",srcLoc = 2,srcType = 2,skillLv = 1,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_slm_1",id = 7090130,cardId = 1101998,lv = 11,bklv = 1,star = 1},
			shl = {cha = "cardDaily_slm_1",id = 7090131,cardId = 1102998,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200902] = {
		[1] = {
			jlr = {cha = "cardDaily_slm_2",id = 7090210,cardId = 1101998,lv = 42,bklv = 5,star = 1,equip = {[1] = {id = 2002401,lv = 40},[2] = {id = 2002402,lv = 40},[3] = {id = 2002403,lv = 40},[4] = {id = 2002404,lv = 40},[5] = {id = 2002405,lv = 40},[6] = {id = 2002406,lv = 40},[7] = {id = 2002407,lv = 40},[8] = {id = 2002408,lv = 40}}},
			shl = {cha = "cardDaily_slm_2",id = 7090211,cardId = 1102998,lv = 42,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_slm_2",id = 7090220,cardId = 1101997,lv = 42,bklv = 5,star = 1,equip = {[1] = {id = 2002401,lv = 40},[2] = {id = 2002402,lv = 40},[3] = {id = 2002403,lv = 40},[4] = {id = 2002404,lv = 40},[5] = {id = 2002405,lv = 40},[6] = {id = 2002406,lv = 40},[7] = {id = 2002407,lv = 40},[8] = {id = 2002408,lv = 40}},mon = {id = 209,desc = "cardDaily_slm_2_jlr_2",srcLoc = 2,srcType = 1,skillLv = 2,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_slm_2",id = 7090221,cardId = 1102997,lv = 42,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 314,desc = "cardDaily_slm_2_shl_2",srcLoc = 2,srcType = 2,skillLv = 2,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_slm_2",id = 7090230,cardId = 1101998,lv = 42,bklv = 5,star = 1,equip = {[1] = {id = 2002401,lv = 40},[2] = {id = 2002402,lv = 40},[3] = {id = 2002403,lv = 40},[4] = {id = 2002404,lv = 40},[5] = {id = 2002405,lv = 40},[6] = {id = 2002406,lv = 40},[7] = {id = 2002407,lv = 40},[8] = {id = 2002408,lv = 40}}},
			shl = {cha = "cardDaily_slm_2",id = 7090231,cardId = 1102998,lv = 42,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200903] = {
		[1] = {
			jlr = {cha = "cardDaily_slm_3",id = 7090310,cardId = 1101998,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}}},
			shl = {cha = "cardDaily_slm_3",id = 7090311,cardId = 1102998,lv = 57,bklv = 9,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_slm_3",id = 7090320,cardId = 1101997,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}},mon = {id = 209,desc = "cardDaily_slm_3_jlr_2",srcLoc = 2,srcType = 1,skillLv = 3,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_slm_3",id = 7090321,cardId = 1102997,lv = 57,bklv = 9,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 314,desc = "cardDaily_slm_3_shl_2",srcLoc = 2,srcType = 2,skillLv = 3,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_slm_3",id = 7090330,cardId = 1101998,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}}},
			shl = {cha = "cardDaily_slm_3",id = 7090331,cardId = 1102998,lv = 57,bklv = 9,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200904] = {
		[1] = {
			jlr = {cha = "cardDaily_slm_4",id = 7090410,cardId = 1101998,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}}},
			shl = {cha = "cardDaily_slm_4",id = 7090411,cardId = 1102998,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_slm_4",id = 7090420,cardId = 1101997,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}},mon = {id = 209,desc = "cardDaily_slm_4_jlr_2",srcLoc = 2,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_slm_4",id = 7090421,cardId = 1102997,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 314,desc = "cardDaily_slm_4_shl_2",srcLoc = 2,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_slm_4",id = 7090430,cardId = 1101998,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}}},
			shl = {cha = "cardDaily_slm_4",id = 7090431,cardId = 1102998,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[200905] = {
		[1] = {
			jlr = {cha = "cardDaily_slm_5",id = 7090510,cardId = 1101998,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}}},
			shl = {cha = "cardDaily_slm_5",id = 7090511,cardId = 1102998,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_slm_5",id = 7090520,cardId = 1101997,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}},mon = {id = 209,desc = "cardDaily_slm_5_jlr_2",srcLoc = 2,srcType = 1,skillLv = 5,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_slm_5",id = 7090521,cardId = 1102997,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 314,desc = "cardDaily_slm_5_shl_2",srcLoc = 2,srcType = 2,skillLv = 5,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_slm_5",id = 7090530,cardId = 1101998,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}}},
			shl = {cha = "cardDaily_slm_5",id = 7090531,cardId = 1102998,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[201001] = {
		[1] = {
			jlr = {cha = "cardDaily_xfl_1",id = 7100110,cardId = 1101998,lv = 11,bklv = 1,star = 1},
			shl = {cha = "cardDaily_xfl_1",id = 7100111,cardId = 1102998,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_xfl_1",id = 7100120,cardId = 1101997,lv = 11,bklv = 1,star = 1,mon = {id = 210,desc = "cardDaily_xfl_1_jlr_2",srcLoc = 2,srcType = 1,skillLv = 1,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_xfl_1",id = 7100121,cardId = 1102997,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 316,desc = "cardDaily_xfl_1_shl_2",srcLoc = 2,srcType = 2,skillLv = 1,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_xfl_1",id = 7100130,cardId = 1101998,lv = 11,bklv = 1,star = 1},
			shl = {cha = "cardDaily_xfl_1",id = 7100131,cardId = 1102998,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[201002] = {
		[1] = {
			jlr = {cha = "cardDaily_xfl_2",id = 7100210,cardId = 1101998,lv = 42,bklv = 5,star = 1,equip = {[1] = {id = 2002401,lv = 40},[2] = {id = 2002402,lv = 40},[3] = {id = 2002403,lv = 40},[4] = {id = 2002404,lv = 40},[5] = {id = 2002405,lv = 40},[6] = {id = 2002406,lv = 40},[7] = {id = 2002407,lv = 40},[8] = {id = 2002408,lv = 40}}},
			shl = {cha = "cardDaily_xfl_2",id = 7100211,cardId = 1102998,lv = 42,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_xfl_2",id = 7100220,cardId = 1101997,lv = 42,bklv = 5,star = 1,equip = {[1] = {id = 2002401,lv = 40},[2] = {id = 2002402,lv = 40},[3] = {id = 2002403,lv = 40},[4] = {id = 2002404,lv = 40},[5] = {id = 2002405,lv = 40},[6] = {id = 2002406,lv = 40},[7] = {id = 2002407,lv = 40},[8] = {id = 2002408,lv = 40}},mon = {id = 210,desc = "cardDaily_xfl_2_jlr_2",srcLoc = 2,srcType = 1,skillLv = 2,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_xfl_2",id = 7100221,cardId = 1102997,lv = 42,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 316,desc = "cardDaily_xfl_2_shl_2",srcLoc = 2,srcType = 2,skillLv = 2,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_xfl_2",id = 7100230,cardId = 1101998,lv = 42,bklv = 5,star = 1,equip = {[1] = {id = 2002401,lv = 40},[2] = {id = 2002402,lv = 40},[3] = {id = 2002403,lv = 40},[4] = {id = 2002404,lv = 40},[5] = {id = 2002405,lv = 40},[6] = {id = 2002406,lv = 40},[7] = {id = 2002407,lv = 40},[8] = {id = 2002408,lv = 40}}},
			shl = {cha = "cardDaily_xfl_2",id = 7100231,cardId = 1102998,lv = 42,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[201003] = {
		[1] = {
			jlr = {cha = "cardDaily_xfl_3",id = 7100310,cardId = 1101998,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}}},
			shl = {cha = "cardDaily_xfl_3",id = 7100311,cardId = 1102998,lv = 57,bklv = 9,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_xfl_3",id = 7100320,cardId = 1101997,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}},mon = {id = 210,desc = "cardDaily_xfl_3_jlr_2",srcLoc = 2,srcType = 1,skillLv = 3,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_xfl_3",id = 7100321,cardId = 1102997,lv = 57,bklv = 9,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 316,desc = "cardDaily_xfl_3_shl_2",srcLoc = 2,srcType = 2,skillLv = 3,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_xfl_3",id = 7100330,cardId = 1101998,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}}},
			shl = {cha = "cardDaily_xfl_3",id = 7100331,cardId = 1102998,lv = 57,bklv = 9,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[201004] = {
		[1] = {
			jlr = {cha = "cardDaily_xfl_4",id = 7100410,cardId = 1101998,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}}},
			shl = {cha = "cardDaily_xfl_4",id = 7100411,cardId = 1102998,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_xfl_4",id = 7100420,cardId = 1101997,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}},mon = {id = 210,desc = "cardDaily_xfl_4_jlr_2",srcLoc = 2,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_xfl_4",id = 7100421,cardId = 1102997,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 316,desc = "cardDaily_xfl_4_shl_2",srcLoc = 2,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_xfl_4",id = 7100430,cardId = 1101998,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}}},
			shl = {cha = "cardDaily_xfl_4",id = 7100431,cardId = 1102998,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[201005] = {
		[1] = {
			jlr = {cha = "cardDaily_xfl_5",id = 7100510,cardId = 1101998,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}}},
			shl = {cha = "cardDaily_xfl_5",id = 7100511,cardId = 1102998,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_xfl_5",id = 7100520,cardId = 1101997,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}},mon = {id = 210,desc = "cardDaily_xfl_5_jlr_2",srcLoc = 2,srcType = 1,skillLv = 5,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_xfl_5",id = 7100521,cardId = 1102997,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 316,desc = "cardDaily_xfl_5_shl_2",srcLoc = 2,srcType = 2,skillLv = 5,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_xfl_5",id = 7100530,cardId = 1101998,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}}},
			shl = {cha = "cardDaily_xfl_5",id = 7100531,cardId = 1102998,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[201006] = {
		[1] = {
			jlr = {cha = "cardDaily_xfl_6",id = 7100610,cardId = 1101998,lv = 90,bklv = 13,star = 3,equip = {[1] = {id = 2004401,lv = 90},[2] = {id = 2004402,lv = 90},[3] = {id = 2004403,lv = 90},[4] = {id = 2004404,lv = 90},[5] = {id = 2004405,lv = 90},[6] = {id = 2004406,lv = 90},[7] = {id = 2004407,lv = 90},[8] = {id = 2004408,lv = 90}}},
			shl = {cha = "cardDaily_xfl_6",id = 7100611,cardId = 1102998,lv = 90,bklv = 13,star = 3,ghost = 29,equip = {[1] = {id = 2104401,lv = 90},[2] = {id = 2104402,lv = 90},[3] = {id = 2104403,lv = 90},[4] = {id = 2104404,lv = 90},[5] = {id = 2104405,lv = 90},[6] = {id = 2104406,lv = 90},[7] = {id = 2104407,lv = 90},[8] = {id = 2104408,lv = 90}},exWeapon = {[1] = 7,[2] = 5,[3] = 5,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_xfl_6",id = 7100620,cardId = 1101997,lv = 90,bklv = 13,star = 3,equip = {[1] = {id = 2004401,lv = 90},[2] = {id = 2004402,lv = 90},[3] = {id = 2004403,lv = 90},[4] = {id = 2004404,lv = 90},[5] = {id = 2004405,lv = 90},[6] = {id = 2004406,lv = 90},[7] = {id = 2004407,lv = 90},[8] = {id = 2004408,lv = 90}},mon = {id = 210,desc = "cardDaily_xfl_6_jlr_2",srcLoc = 2,srcType = 1,skillLv = 6,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_xfl_6",id = 7100621,cardId = 1102997,lv = 90,bklv = 13,star = 3,ghost = 29,equip = {[1] = {id = 2104401,lv = 90},[2] = {id = 2104402,lv = 90},[3] = {id = 2104403,lv = 90},[4] = {id = 2104404,lv = 90},[5] = {id = 2104405,lv = 90},[6] = {id = 2104406,lv = 90},[7] = {id = 2104407,lv = 90},[8] = {id = 2104408,lv = 90}},exWeapon = {[1] = 7,[2] = 5,[3] = 5,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 316,desc = "cardDaily_xfl_6_shl_2",srcLoc = 2,srcType = 2,skillLv = 6,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_xfl_6",id = 7100630,cardId = 1101998,lv = 90,bklv = 13,star = 3,equip = {[1] = {id = 2004401,lv = 90},[2] = {id = 2004402,lv = 90},[3] = {id = 2004403,lv = 90},[4] = {id = 2004404,lv = 90},[5] = {id = 2004405,lv = 90},[6] = {id = 2004406,lv = 90},[7] = {id = 2004407,lv = 90},[8] = {id = 2004408,lv = 90}}},
			shl = {cha = "cardDaily_xfl_6",id = 7100631,cardId = 1102998,lv = 90,bklv = 13,star = 3,ghost = 29,equip = {[1] = {id = 2104401,lv = 90},[2] = {id = 2104402,lv = 90},[3] = {id = 2104403,lv = 90},[4] = {id = 2104404,lv = 90},[5] = {id = 2104405,lv = 90},[6] = {id = 2104406,lv = 90},[7] = {id = 2104407,lv = 90},[8] = {id = 2104408,lv = 90}},exWeapon = {[1] = 7,[2] = 5,[3] = 5,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[201007] = {
		[1] = {
			jlr = {cha = "cardDaily_xfl_7",id = 7100710,cardId = 1101998,lv = 102,bklv = 14,star = 4,equip = {[1] = {id = 2005401,lv = 100},[2] = {id = 2005402,lv = 100},[3] = {id = 2005403,lv = 100},[4] = {id = 2005404,lv = 100},[5] = {id = 2005405,lv = 100},[6] = {id = 2005406,lv = 100},[7] = {id = 2005407,lv = 100},[8] = {id = 2005408,lv = 100}}},
			shl = {cha = "cardDaily_xfl_7",id = 7100711,cardId = 1102998,lv = 102,bklv = 15,star = 4,ghost = 32,equip = {[1] = {id = 2105401,lv = 100},[2] = {id = 2105402,lv = 100},[3] = {id = 2105403,lv = 100},[4] = {id = 2105404,lv = 100},[5] = {id = 2105405,lv = 100},[6] = {id = 2105406,lv = 100},[7] = {id = 2105407,lv = 100},[8] = {id = 2105408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_xfl_7",id = 7100720,cardId = 1101997,lv = 102,bklv = 14,star = 4,equip = {[1] = {id = 2005401,lv = 100},[2] = {id = 2005402,lv = 100},[3] = {id = 2005403,lv = 100},[4] = {id = 2005404,lv = 100},[5] = {id = 2005405,lv = 100},[6] = {id = 2005406,lv = 100},[7] = {id = 2005407,lv = 100},[8] = {id = 2005408,lv = 100}},mon = {id = 210,desc = "cardDaily_xfl_7_jlr_2",srcLoc = 2,srcType = 1,skillLv = 7,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_xfl_7",id = 7100721,cardId = 1102997,lv = 102,bklv = 15,star = 4,ghost = 32,equip = {[1] = {id = 2105401,lv = 100},[2] = {id = 2105402,lv = 100},[3] = {id = 2105403,lv = 100},[4] = {id = 2105404,lv = 100},[5] = {id = 2105405,lv = 100},[6] = {id = 2105406,lv = 100},[7] = {id = 2105407,lv = 100},[8] = {id = 2105408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0},mon = {id = 316,desc = "cardDaily_xfl_7_shl_2",srcLoc = 2,srcType = 2,skillLv = 7,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_xfl_7",id = 7100730,cardId = 1101998,lv = 102,bklv = 14,star = 4,equip = {[1] = {id = 2005401,lv = 100},[2] = {id = 2005402,lv = 100},[3] = {id = 2005403,lv = 100},[4] = {id = 2005404,lv = 100},[5] = {id = 2005405,lv = 100},[6] = {id = 2005406,lv = 100},[7] = {id = 2005407,lv = 100},[8] = {id = 2005408,lv = 100}}},
			shl = {cha = "cardDaily_xfl_7",id = 7100731,cardId = 1102998,lv = 102,bklv = 15,star = 4,ghost = 32,equip = {[1] = {id = 2105401,lv = 100},[2] = {id = 2105402,lv = 100},[3] = {id = 2105403,lv = 100},[4] = {id = 2105404,lv = 100},[5] = {id = 2105405,lv = 100},[6] = {id = 2105406,lv = 100},[7] = {id = 2105407,lv = 100},[8] = {id = 2105408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[201008] = {
		[1] = {
			jlr = {cha = "cardDaily_xfl_8",id = 7100810,cardId = 1101998,lv = 130,bklv = 14,star = 4,equip = {[1] = {id = 2008401,lv = 100},[2] = {id = 2008402,lv = 100},[3] = {id = 2008403,lv = 100},[4] = {id = 2008404,lv = 100},[5] = {id = 2008405,lv = 100},[6] = {id = 2008406,lv = 100},[7] = {id = 2008407,lv = 100},[8] = {id = 2008408,lv = 100}}},
			shl = {cha = "cardDaily_xfl_8",id = 7100811,cardId = 1102998,lv = 130,bklv = 15,star = 4,ghost = 32,equip = {[1] = {id = 2108401,lv = 100},[2] = {id = 2108402,lv = 100},[3] = {id = 2108403,lv = 100},[4] = {id = 2108404,lv = 100},[5] = {id = 2108405,lv = 100},[6] = {id = 2108406,lv = 100},[7] = {id = 2108407,lv = 100},[8] = {id = 2108408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_xfl_8",id = 7100820,cardId = 1101997,lv = 130,bklv = 14,star = 4,equip = {[1] = {id = 2008401,lv = 100},[2] = {id = 2008402,lv = 100},[3] = {id = 2008403,lv = 100},[4] = {id = 2008404,lv = 100},[5] = {id = 2008405,lv = 100},[6] = {id = 2008406,lv = 100},[7] = {id = 2008407,lv = 100},[8] = {id = 2008408,lv = 100}},mon = {id = 210,desc = "cardDaily_xfl_8_jlr_2",srcLoc = 2,srcType = 1,skillLv = 8,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_xfl_8",id = 7100821,cardId = 1102997,lv = 130,bklv = 15,star = 4,ghost = 32,equip = {[1] = {id = 2108401,lv = 100},[2] = {id = 2108402,lv = 100},[3] = {id = 2108403,lv = 100},[4] = {id = 2108404,lv = 100},[5] = {id = 2108405,lv = 100},[6] = {id = 2108406,lv = 100},[7] = {id = 2108407,lv = 100},[8] = {id = 2108408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0},mon = {id = 316,desc = "cardDaily_xfl_8_shl_2",srcLoc = 2,srcType = 2,skillLv = 8,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_xfl_8",id = 7100830,cardId = 1101998,lv = 130,bklv = 14,star = 4,equip = {[1] = {id = 2008401,lv = 100},[2] = {id = 2008402,lv = 100},[3] = {id = 2008403,lv = 100},[4] = {id = 2008404,lv = 100},[5] = {id = 2008405,lv = 100},[6] = {id = 2008406,lv = 100},[7] = {id = 2008407,lv = 100},[8] = {id = 2008408,lv = 100}}},
			shl = {cha = "cardDaily_xfl_8",id = 7100831,cardId = 1102998,lv = 130,bklv = 15,star = 4,ghost = 32,equip = {[1] = {id = 2108401,lv = 100},[2] = {id = 2108402,lv = 100},[3] = {id = 2108403,lv = 100},[4] = {id = 2108404,lv = 100},[5] = {id = 2108405,lv = 100},[6] = {id = 2108406,lv = 100},[7] = {id = 2108407,lv = 100},[8] = {id = 2108408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[201101] = {
		[1] = {
			jlr = {cha = "cardDaily_fl_1",id = 7110110,cardId = 1101998,lv = 11,bklv = 1,star = 1},
			shl = {cha = "cardDaily_fl_1",id = 7110111,cardId = 1102998,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_fl_1",id = 7110120,cardId = 1101998,lv = 11,bklv = 1,star = 1,mon = {id = 211,desc = "cardDaily_fl_1_jlr_2",srcLoc = 2,srcType = 1,skillLv = 1,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_fl_1",id = 7110121,cardId = 1102998,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 317,desc = "cardDaily_fl_1_shl_2",srcLoc = 2,srcType = 2,skillLv = 1,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_fl_1",id = 7110130,cardId = 1101998,lv = 11,bklv = 1,star = 1},
			shl = {cha = "cardDaily_fl_1",id = 7110131,cardId = 1102998,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[201102] = {
		[1] = {
			jlr = {cha = "cardDaily_fl_2",id = 7110210,cardId = 1101998,lv = 42,bklv = 5,star = 1,equip = {[1] = {id = 2002401,lv = 40},[2] = {id = 2002402,lv = 40},[3] = {id = 2002403,lv = 40},[4] = {id = 2002404,lv = 40},[5] = {id = 2002405,lv = 40},[6] = {id = 2002406,lv = 40},[7] = {id = 2002407,lv = 40},[8] = {id = 2002408,lv = 40}}},
			shl = {cha = "cardDaily_fl_2",id = 7110211,cardId = 1102998,lv = 42,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_fl_2",id = 7110220,cardId = 1101997,lv = 42,bklv = 5,star = 1,equip = {[1] = {id = 2002401,lv = 40},[2] = {id = 2002402,lv = 40},[3] = {id = 2002403,lv = 40},[4] = {id = 2002404,lv = 40},[5] = {id = 2002405,lv = 40},[6] = {id = 2002406,lv = 40},[7] = {id = 2002407,lv = 40},[8] = {id = 2002408,lv = 40}},mon = {id = 211,desc = "cardDaily_fl_2_jlr_2",srcLoc = 2,srcType = 1,skillLv = 2,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_fl_2",id = 7110221,cardId = 1102997,lv = 42,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 317,desc = "cardDaily_fl_2_shl_2",srcLoc = 2,srcType = 2,skillLv = 2,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_fl_2",id = 7110230,cardId = 1101998,lv = 42,bklv = 5,star = 1,equip = {[1] = {id = 2002401,lv = 40},[2] = {id = 2002402,lv = 40},[3] = {id = 2002403,lv = 40},[4] = {id = 2002404,lv = 40},[5] = {id = 2002405,lv = 40},[6] = {id = 2002406,lv = 40},[7] = {id = 2002407,lv = 40},[8] = {id = 2002408,lv = 40}}},
			shl = {cha = "cardDaily_fl_2",id = 7110231,cardId = 1102998,lv = 42,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[201103] = {
		[1] = {
			jlr = {cha = "cardDaily_fl_3",id = 7110310,cardId = 1101998,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}}},
			shl = {cha = "cardDaily_fl_3",id = 7110311,cardId = 1102998,lv = 57,bklv = 9,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_fl_3",id = 7110320,cardId = 1101997,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}},mon = {id = 211,desc = "cardDaily_fl_3_jlr_2",srcLoc = 2,srcType = 1,skillLv = 3,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_fl_3",id = 7110321,cardId = 1102997,lv = 57,bklv = 9,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 317,desc = "cardDaily_fl_3_shl_2",srcLoc = 2,srcType = 2,skillLv = 3,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_fl_3",id = 7110330,cardId = 1101998,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}}},
			shl = {cha = "cardDaily_fl_3",id = 7110331,cardId = 1102998,lv = 57,bklv = 9,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[201104] = {
		[1] = {
			jlr = {cha = "cardDaily_fl_4",id = 7110410,cardId = 1101998,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}}},
			shl = {cha = "cardDaily_fl_4",id = 7110411,cardId = 1102998,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_fl_4",id = 7110420,cardId = 1101997,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}},mon = {id = 211,desc = "cardDaily_fl_4_jlr_2",srcLoc = 2,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_fl_4",id = 7110421,cardId = 1102997,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 317,desc = "cardDaily_fl_4_shl_2",srcLoc = 2,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_fl_4",id = 7110430,cardId = 1101998,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}}},
			shl = {cha = "cardDaily_fl_4",id = 7110431,cardId = 1102998,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[201105] = {
		[1] = {
			jlr = {cha = "cardDaily_fl_5",id = 7110510,cardId = 1101998,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}}},
			shl = {cha = "cardDaily_fl_5",id = 7110511,cardId = 1102998,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_fl_5",id = 7110520,cardId = 1101997,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}},mon = {id = 211,desc = "cardDaily_fl_5_jlr_2",srcLoc = 2,srcType = 1,skillLv = 5,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_fl_5",id = 7110521,cardId = 1102997,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 317,desc = "cardDaily_fl_5_shl_2",srcLoc = 2,srcType = 2,skillLv = 5,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_fl_5",id = 7110530,cardId = 1101998,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}}},
			shl = {cha = "cardDaily_fl_5",id = 7110531,cardId = 1102998,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[201201] = {
		[1] = {
			jlr = {cha = "cardDaily_gs_1",id = 7120110,cardId = 1101998,lv = 11,bklv = 1,star = 1},
			shl = {cha = "cardDaily_gs_1",id = 7120111,cardId = 1102998,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_gs_1",id = 7120120,cardId = 1101998,lv = 11,bklv = 1,star = 1,mon = {id = 214,desc = "cardDaily_gs_1_jlr_2",srcLoc = 2,srcType = 1,skillLv = 1,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_gs_1",id = 7120121,cardId = 1102998,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 320,desc = "cardDaily_gs_1_shl_2",srcLoc = 2,srcType = 2,skillLv = 1,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_gs_1",id = 7120130,cardId = 1101998,lv = 11,bklv = 1,star = 1},
			shl = {cha = "cardDaily_gs_1",id = 7120131,cardId = 1102998,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[201202] = {
		[1] = {
			jlr = {cha = "cardDaily_gs_2",id = 7120210,cardId = 1101998,lv = 42,bklv = 5,star = 1,equip = {[1] = {id = 2002401,lv = 40},[2] = {id = 2002402,lv = 40},[3] = {id = 2002403,lv = 40},[4] = {id = 2002404,lv = 40},[5] = {id = 2002405,lv = 40},[6] = {id = 2002406,lv = 40},[7] = {id = 2002407,lv = 40},[8] = {id = 2002408,lv = 40}}},
			shl = {cha = "cardDaily_gs_2",id = 7120211,cardId = 1102998,lv = 42,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_gs_2",id = 7120220,cardId = 1101997,lv = 42,bklv = 5,star = 1,equip = {[1] = {id = 2002401,lv = 40},[2] = {id = 2002402,lv = 40},[3] = {id = 2002403,lv = 40},[4] = {id = 2002404,lv = 40},[5] = {id = 2002405,lv = 40},[6] = {id = 2002406,lv = 40},[7] = {id = 2002407,lv = 40},[8] = {id = 2002408,lv = 40}},mon = {id = 214,desc = "cardDaily_gs_2_jlr_2",srcLoc = 2,srcType = 1,skillLv = 2,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_gs_2",id = 7120221,cardId = 1102997,lv = 42,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 320,desc = "cardDaily_gs_2_shl_2",srcLoc = 2,srcType = 2,skillLv = 2,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_gs_2",id = 7120230,cardId = 1101998,lv = 42,bklv = 5,star = 1,equip = {[1] = {id = 2002401,lv = 40},[2] = {id = 2002402,lv = 40},[3] = {id = 2002403,lv = 40},[4] = {id = 2002404,lv = 40},[5] = {id = 2002405,lv = 40},[6] = {id = 2002406,lv = 40},[7] = {id = 2002407,lv = 40},[8] = {id = 2002408,lv = 40}}},
			shl = {cha = "cardDaily_gs_2",id = 7120231,cardId = 1102998,lv = 42,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[201203] = {
		[1] = {
			jlr = {cha = "cardDaily_gs_3",id = 7120310,cardId = 1101998,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}}},
			shl = {cha = "cardDaily_gs_3",id = 7120311,cardId = 1102998,lv = 57,bklv = 9,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_gs_3",id = 7120320,cardId = 1101997,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}},mon = {id = 214,desc = "cardDaily_gs_3_jlr_2",srcLoc = 2,srcType = 1,skillLv = 3,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_gs_3",id = 7120321,cardId = 1102997,lv = 57,bklv = 9,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 320,desc = "cardDaily_gs_3_shl_2",srcLoc = 2,srcType = 2,skillLv = 3,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_gs_3",id = 7120330,cardId = 1101998,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}}},
			shl = {cha = "cardDaily_gs_3",id = 7120331,cardId = 1102998,lv = 57,bklv = 9,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[201204] = {
		[1] = {
			jlr = {cha = "cardDaily_gs_4",id = 7120410,cardId = 1101998,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}}},
			shl = {cha = "cardDaily_gs_4",id = 7120411,cardId = 1102998,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_gs_4",id = 7120420,cardId = 1101997,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}},mon = {id = 214,desc = "cardDaily_gs_4_jlr_2",srcLoc = 2,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_gs_4",id = 7120421,cardId = 1102997,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 320,desc = "cardDaily_gs_4_shl_2",srcLoc = 2,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_gs_4",id = 7120430,cardId = 1101998,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}}},
			shl = {cha = "cardDaily_gs_4",id = 7120431,cardId = 1102998,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[201205] = {
		[1] = {
			jlr = {cha = "cardDaily_gs_5",id = 7120510,cardId = 1101998,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}}},
			shl = {cha = "cardDaily_gs_5",id = 7120511,cardId = 1102998,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_gs_5",id = 7120520,cardId = 1101997,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}},mon = {id = 214,desc = "cardDaily_gs_5_jlr_2",srcLoc = 2,srcType = 1,skillLv = 5,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_gs_5",id = 7120521,cardId = 1102997,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 320,desc = "cardDaily_gs_5_shl_2",srcLoc = 2,srcType = 2,skillLv = 5,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_gs_5",id = 7120530,cardId = 1101998,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}}},
			shl = {cha = "cardDaily_gs_5",id = 7120531,cardId = 1102998,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[201301] = {
		[1] = {
			jlr = {cha = "cardDaily_lftl_1",id = 7130110,cardId = 1101998,lv = 11,bklv = 1,star = 1},
			shl = {cha = "cardDaily_lftl_1",id = 7130111,cardId = 1102998,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_lftl_1",id = 7130120,cardId = 1101998,lv = 11,bklv = 1,star = 1,mon = {id = 215,desc = "cardDaily_lftl_1_jlr_2",srcLoc = 2,srcType = 1,skillLv = 1,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_lftl_1",id = 7130121,cardId = 1102998,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 321,desc = "cardDaily_lftl_1_shl_2",srcLoc = 2,srcType = 2,skillLv = 1,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_lftl_1",id = 7130130,cardId = 1101998,lv = 11,bklv = 1,star = 1},
			shl = {cha = "cardDaily_lftl_1",id = 7130131,cardId = 1102998,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[201302] = {
		[1] = {
			jlr = {cha = "cardDaily_lftl_2",id = 7130210,cardId = 1101998,lv = 42,bklv = 5,star = 1,equip = {[1] = {id = 2002401,lv = 40},[2] = {id = 2002402,lv = 40},[3] = {id = 2002403,lv = 40},[4] = {id = 2002404,lv = 40},[5] = {id = 2002405,lv = 40},[6] = {id = 2002406,lv = 40},[7] = {id = 2002407,lv = 40},[8] = {id = 2002408,lv = 40}}},
			shl = {cha = "cardDaily_lftl_2",id = 7130211,cardId = 1102998,lv = 42,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_lftl_2",id = 7130220,cardId = 1101997,lv = 42,bklv = 5,star = 1,equip = {[1] = {id = 2002401,lv = 40},[2] = {id = 2002402,lv = 40},[3] = {id = 2002403,lv = 40},[4] = {id = 2002404,lv = 40},[5] = {id = 2002405,lv = 40},[6] = {id = 2002406,lv = 40},[7] = {id = 2002407,lv = 40},[8] = {id = 2002408,lv = 40}},mon = {id = 215,desc = "cardDaily_lftl_2_jlr_2",srcLoc = 2,srcType = 1,skillLv = 2,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_lftl_2",id = 7130221,cardId = 1102997,lv = 42,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 321,desc = "cardDaily_lftl_2_shl_2",srcLoc = 2,srcType = 2,skillLv = 2,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_lftl_2",id = 7130230,cardId = 1101998,lv = 42,bklv = 5,star = 1,equip = {[1] = {id = 2002401,lv = 40},[2] = {id = 2002402,lv = 40},[3] = {id = 2002403,lv = 40},[4] = {id = 2002404,lv = 40},[5] = {id = 2002405,lv = 40},[6] = {id = 2002406,lv = 40},[7] = {id = 2002407,lv = 40},[8] = {id = 2002408,lv = 40}}},
			shl = {cha = "cardDaily_lftl_2",id = 7130231,cardId = 1102998,lv = 42,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[201303] = {
		[1] = {
			jlr = {cha = "cardDaily_lftl_3",id = 7130310,cardId = 1101998,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}}},
			shl = {cha = "cardDaily_lftl_3",id = 7130311,cardId = 1102998,lv = 57,bklv = 9,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_lftl_3",id = 7130320,cardId = 1101997,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}},mon = {id = 215,desc = "cardDaily_lftl_3_jlr_2",srcLoc = 2,srcType = 1,skillLv = 3,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_lftl_3",id = 7130321,cardId = 1102997,lv = 57,bklv = 9,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 321,desc = "cardDaily_lftl_3_shl_2",srcLoc = 2,srcType = 2,skillLv = 3,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_lftl_3",id = 7130330,cardId = 1101998,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}}},
			shl = {cha = "cardDaily_lftl_3",id = 7130331,cardId = 1102998,lv = 57,bklv = 9,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[201304] = {
		[1] = {
			jlr = {cha = "cardDaily_lftl_4",id = 7130410,cardId = 1101998,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}}},
			shl = {cha = "cardDaily_lftl_4",id = 7130411,cardId = 1102998,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_lftl_4",id = 7130420,cardId = 1101997,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}},mon = {id = 215,desc = "cardDaily_lftl_4_jlr_2",srcLoc = 2,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_lftl_4",id = 7130421,cardId = 1102997,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 321,desc = "cardDaily_lftl_4_shl_2",srcLoc = 2,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_lftl_4",id = 7130430,cardId = 1101998,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}}},
			shl = {cha = "cardDaily_lftl_4",id = 7130431,cardId = 1102998,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[201305] = {
		[1] = {
			jlr = {cha = "cardDaily_lftl_5",id = 7130510,cardId = 1101998,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}}},
			shl = {cha = "cardDaily_lftl_5",id = 7130511,cardId = 1102998,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_lftl_5",id = 7130520,cardId = 1101997,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}},mon = {id = 215,desc = "cardDaily_lftl_5_jlr_2",srcLoc = 2,srcType = 1,skillLv = 5,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_lftl_5",id = 7130521,cardId = 1102997,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 321,desc = "cardDaily_lftl_5_shl_2",srcLoc = 2,srcType = 2,skillLv = 5,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_lftl_5",id = 7130530,cardId = 1101998,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}}},
			shl = {cha = "cardDaily_lftl_5",id = 7130531,cardId = 1102998,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[201401] = {
		[1] = {
			jlr = {cha = "cardDaily_zx_1",id = 7140110,cardId = 1101998,lv = 11,bklv = 1,star = 1},
			shl = {cha = "cardDaily_zx_1",id = 7140111,cardId = 1102998,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_zx_1",id = 7140120,cardId = 1101998,lv = 11,bklv = 1,star = 1,mon = {id = 219,desc = "cardDaily_zx_1_jlr_2",srcLoc = 2,srcType = 1,skillLv = 1,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_zx_1",id = 7140121,cardId = 1102998,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 325,desc = "cardDaily_zx_1_shl_2",srcLoc = 2,srcType = 2,skillLv = 1,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_zx_1",id = 7140130,cardId = 1101998,lv = 11,bklv = 1,star = 1},
			shl = {cha = "cardDaily_zx_1",id = 7140131,cardId = 1102998,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[201402] = {
		[1] = {
			jlr = {cha = "cardDaily_zx_2",id = 7140210,cardId = 1101998,lv = 42,bklv = 5,star = 1,equip = {[1] = {id = 2002401,lv = 40},[2] = {id = 2002402,lv = 40},[3] = {id = 2002403,lv = 40},[4] = {id = 2002404,lv = 40},[5] = {id = 2002405,lv = 40},[6] = {id = 2002406,lv = 40},[7] = {id = 2002407,lv = 40},[8] = {id = 2002408,lv = 40}}},
			shl = {cha = "cardDaily_zx_2",id = 7140211,cardId = 1102998,lv = 42,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_zx_2",id = 7140220,cardId = 1101997,lv = 42,bklv = 5,star = 1,equip = {[1] = {id = 2002401,lv = 40},[2] = {id = 2002402,lv = 40},[3] = {id = 2002403,lv = 40},[4] = {id = 2002404,lv = 40},[5] = {id = 2002405,lv = 40},[6] = {id = 2002406,lv = 40},[7] = {id = 2002407,lv = 40},[8] = {id = 2002408,lv = 40}},mon = {id = 219,desc = "cardDaily_zx_2_jlr_2",srcLoc = 2,srcType = 1,skillLv = 2,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_zx_2",id = 7140221,cardId = 1102997,lv = 42,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 325,desc = "cardDaily_zx_2_shl_2",srcLoc = 2,srcType = 2,skillLv = 2,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_zx_2",id = 7140230,cardId = 1101998,lv = 42,bklv = 5,star = 1,equip = {[1] = {id = 2002401,lv = 40},[2] = {id = 2002402,lv = 40},[3] = {id = 2002403,lv = 40},[4] = {id = 2002404,lv = 40},[5] = {id = 2002405,lv = 40},[6] = {id = 2002406,lv = 40},[7] = {id = 2002407,lv = 40},[8] = {id = 2002408,lv = 40}}},
			shl = {cha = "cardDaily_zx_2",id = 7140231,cardId = 1102998,lv = 42,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[201403] = {
		[1] = {
			jlr = {cha = "cardDaily_zx_3",id = 7140310,cardId = 1101998,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}}},
			shl = {cha = "cardDaily_zx_3",id = 7140311,cardId = 1102998,lv = 57,bklv = 9,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_zx_3",id = 7140320,cardId = 1101997,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}},mon = {id = 219,desc = "cardDaily_zx_3_jlr_2",srcLoc = 2,srcType = 1,skillLv = 3,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_zx_3",id = 7140321,cardId = 1102997,lv = 57,bklv = 9,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 325,desc = "cardDaily_zx_3_shl_2",srcLoc = 2,srcType = 2,skillLv = 3,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_zx_3",id = 7140330,cardId = 1101998,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}}},
			shl = {cha = "cardDaily_zx_3",id = 7140331,cardId = 1102998,lv = 57,bklv = 9,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[201404] = {
		[1] = {
			jlr = {cha = "cardDaily_zx_4",id = 7140410,cardId = 1101998,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}}},
			shl = {cha = "cardDaily_zx_4",id = 7140411,cardId = 1102998,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_zx_4",id = 7140420,cardId = 1101997,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}},mon = {id = 219,desc = "cardDaily_zx_4_jlr_2",srcLoc = 2,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_zx_4",id = 7140421,cardId = 1102997,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 325,desc = "cardDaily_zx_4_shl_2",srcLoc = 2,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_zx_4",id = 7140430,cardId = 1101998,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}}},
			shl = {cha = "cardDaily_zx_4",id = 7140431,cardId = 1102998,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[201405] = {
		[1] = {
			jlr = {cha = "cardDaily_zx_5",id = 7140510,cardId = 1101998,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}}},
			shl = {cha = "cardDaily_zx_5",id = 7140511,cardId = 1102998,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_zx_5",id = 7140520,cardId = 1101997,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}},mon = {id = 219,desc = "cardDaily_zx_5_jlr_2",srcLoc = 2,srcType = 1,skillLv = 5,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_zx_5",id = 7140521,cardId = 1102997,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 325,desc = "cardDaily_zx_5_shl_2",srcLoc = 2,srcType = 2,skillLv = 5,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_zx_5",id = 7140530,cardId = 1101998,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}}},
			shl = {cha = "cardDaily_zx_5",id = 7140531,cardId = 1102998,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[201501] = {
		[1] = {
			jlr = {cha = "cardDaily_lzz_1",id = 7150110,cardId = 1101998,lv = 11,bklv = 1,star = 1},
			shl = {cha = "cardDaily_lzz_1",id = 7150111,cardId = 1102998,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_lzz_1",id = 7150120,cardId = 1101998,lv = 11,bklv = 1,star = 1,mon = {id = 216,desc = "cardDaily_lzz_1_jlr_2",srcLoc = 2,srcType = 1,skillLv = 1,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_lzz_1",id = 7150121,cardId = 1102998,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 324,desc = "cardDaily_lzz_1_shl_2",srcLoc = 2,srcType = 2,skillLv = 1,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_lzz_1",id = 7150130,cardId = 1101998,lv = 11,bklv = 1,star = 1},
			shl = {cha = "cardDaily_lzz_1",id = 7150131,cardId = 1102998,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[201502] = {
		[1] = {
			jlr = {cha = "cardDaily_lzz_2",id = 7150210,cardId = 1101998,lv = 42,bklv = 5,star = 1,equip = {[1] = {id = 2002401,lv = 40},[2] = {id = 2002402,lv = 40},[3] = {id = 2002403,lv = 40},[4] = {id = 2002404,lv = 40},[5] = {id = 2002405,lv = 40},[6] = {id = 2002406,lv = 40},[7] = {id = 2002407,lv = 40},[8] = {id = 2002408,lv = 40}}},
			shl = {cha = "cardDaily_lzz_2",id = 7150211,cardId = 1102998,lv = 42,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_lzz_2",id = 7150220,cardId = 1101997,lv = 42,bklv = 5,star = 1,equip = {[1] = {id = 2002401,lv = 40},[2] = {id = 2002402,lv = 40},[3] = {id = 2002403,lv = 40},[4] = {id = 2002404,lv = 40},[5] = {id = 2002405,lv = 40},[6] = {id = 2002406,lv = 40},[7] = {id = 2002407,lv = 40},[8] = {id = 2002408,lv = 40}},mon = {id = 216,desc = "cardDaily_lzz_2_jlr_2",srcLoc = 2,srcType = 1,skillLv = 2,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_lzz_2",id = 7150221,cardId = 1102997,lv = 42,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 324,desc = "cardDaily_lzz_2_shl_2",srcLoc = 2,srcType = 2,skillLv = 2,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_lzz_2",id = 7150230,cardId = 1101998,lv = 42,bklv = 5,star = 1,equip = {[1] = {id = 2002401,lv = 40},[2] = {id = 2002402,lv = 40},[3] = {id = 2002403,lv = 40},[4] = {id = 2002404,lv = 40},[5] = {id = 2002405,lv = 40},[6] = {id = 2002406,lv = 40},[7] = {id = 2002407,lv = 40},[8] = {id = 2002408,lv = 40}}},
			shl = {cha = "cardDaily_lzz_2",id = 7150231,cardId = 1102998,lv = 42,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[201503] = {
		[1] = {
			jlr = {cha = "cardDaily_lzz_3",id = 7150310,cardId = 1101998,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}}},
			shl = {cha = "cardDaily_lzz_3",id = 7150311,cardId = 1102998,lv = 57,bklv = 9,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_lzz_3",id = 7150320,cardId = 1101997,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}},mon = {id = 216,desc = "cardDaily_lzz_3_jlr_2",srcLoc = 2,srcType = 1,skillLv = 3,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_lzz_3",id = 7150321,cardId = 1102997,lv = 57,bklv = 9,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 324,desc = "cardDaily_lzz_3_shl_2",srcLoc = 2,srcType = 2,skillLv = 3,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_lzz_3",id = 7150330,cardId = 1101998,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}}},
			shl = {cha = "cardDaily_lzz_3",id = 7150331,cardId = 1102998,lv = 57,bklv = 9,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[201504] = {
		[1] = {
			jlr = {cha = "cardDaily_lzz_4",id = 7150410,cardId = 1101998,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}}},
			shl = {cha = "cardDaily_lzz_4",id = 7150411,cardId = 1102998,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_lzz_4",id = 7150420,cardId = 1101997,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}},mon = {id = 216,desc = "cardDaily_lzz_4_jlr_2",srcLoc = 2,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_lzz_4",id = 7150421,cardId = 1102997,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 324,desc = "cardDaily_lzz_4_shl_2",srcLoc = 2,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_lzz_4",id = 7150430,cardId = 1101998,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}}},
			shl = {cha = "cardDaily_lzz_4",id = 7150431,cardId = 1102998,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[201505] = {
		[1] = {
			jlr = {cha = "cardDaily_lzz_5",id = 7150510,cardId = 1101998,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}}},
			shl = {cha = "cardDaily_lzz_5",id = 7150511,cardId = 1102998,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_lzz_5",id = 7150520,cardId = 1101997,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}},mon = {id = 216,desc = "cardDaily_lzz_5_jlr_2",srcLoc = 2,srcType = 1,skillLv = 5,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_lzz_5",id = 7150521,cardId = 1102997,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 324,desc = "cardDaily_lzz_5_shl_2",srcLoc = 2,srcType = 2,skillLv = 5,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_lzz_5",id = 7150530,cardId = 1101998,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}}},
			shl = {cha = "cardDaily_lzz_5",id = 7150531,cardId = 1102998,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[201601] = {
		[1] = {
			jlr = {cha = "cardDaily_yq_1",id = 7160110,cardId = 1101998,lv = 11,bklv = 1,star = 1},
			shl = {cha = "cardDaily_yq_1",id = 7160111,cardId = 1102998,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_yq_1",id = 7160120,cardId = 1101998,lv = 11,bklv = 1,star = 1,mon = {id = 218,desc = "cardDaily_yq_1_jlr_2",srcLoc = 2,srcType = 1,skillLv = 1,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_yq_1",id = 7160121,cardId = 1102998,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 326,desc = "cardDaily_yq_1_shl_2",srcLoc = 2,srcType = 2,skillLv = 1,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_yq_1",id = 7160130,cardId = 1101998,lv = 11,bklv = 1,star = 1},
			shl = {cha = "cardDaily_yq_1",id = 7160131,cardId = 1102998,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[201602] = {
		[1] = {
			jlr = {cha = "cardDaily_yq_2",id = 7160210,cardId = 1101998,lv = 42,bklv = 5,star = 1,equip = {[1] = {id = 2002401,lv = 40},[2] = {id = 2002402,lv = 40},[3] = {id = 2002403,lv = 40},[4] = {id = 2002404,lv = 40},[5] = {id = 2002405,lv = 40},[6] = {id = 2002406,lv = 40},[7] = {id = 2002407,lv = 40},[8] = {id = 2002408,lv = 40}}},
			shl = {cha = "cardDaily_yq_2",id = 7160211,cardId = 1102998,lv = 42,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_yq_2",id = 7160220,cardId = 1101997,lv = 42,bklv = 5,star = 1,equip = {[1] = {id = 2002401,lv = 40},[2] = {id = 2002402,lv = 40},[3] = {id = 2002403,lv = 40},[4] = {id = 2002404,lv = 40},[5] = {id = 2002405,lv = 40},[6] = {id = 2002406,lv = 40},[7] = {id = 2002407,lv = 40},[8] = {id = 2002408,lv = 40}},mon = {id = 218,desc = "cardDaily_yq_2_jlr_2",srcLoc = 2,srcType = 1,skillLv = 2,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_yq_2",id = 7160221,cardId = 1102997,lv = 42,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 326,desc = "cardDaily_yq_2_shl_2",srcLoc = 2,srcType = 2,skillLv = 2,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_yq_2",id = 7160230,cardId = 1101998,lv = 42,bklv = 5,star = 1,equip = {[1] = {id = 2002401,lv = 40},[2] = {id = 2002402,lv = 40},[3] = {id = 2002403,lv = 40},[4] = {id = 2002404,lv = 40},[5] = {id = 2002405,lv = 40},[6] = {id = 2002406,lv = 40},[7] = {id = 2002407,lv = 40},[8] = {id = 2002408,lv = 40}}},
			shl = {cha = "cardDaily_yq_2",id = 7160231,cardId = 1102998,lv = 42,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[201603] = {
		[1] = {
			jlr = {cha = "cardDaily_yq_3",id = 7160310,cardId = 1101998,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}}},
			shl = {cha = "cardDaily_yq_3",id = 7160311,cardId = 1102998,lv = 57,bklv = 9,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_yq_3",id = 7160320,cardId = 1101997,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}},mon = {id = 218,desc = "cardDaily_yq_3_jlr_2",srcLoc = 2,srcType = 1,skillLv = 3,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_yq_3",id = 7160321,cardId = 1102997,lv = 57,bklv = 9,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 326,desc = "cardDaily_yq_3_shl_2",srcLoc = 2,srcType = 2,skillLv = 3,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_yq_3",id = 7160330,cardId = 1101998,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}}},
			shl = {cha = "cardDaily_yq_3",id = 7160331,cardId = 1102998,lv = 57,bklv = 9,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[201604] = {
		[1] = {
			jlr = {cha = "cardDaily_yq_4",id = 7160410,cardId = 1101998,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}}},
			shl = {cha = "cardDaily_yq_4",id = 7160411,cardId = 1102998,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_yq_4",id = 7160420,cardId = 1101997,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}},mon = {id = 218,desc = "cardDaily_yq_4_jlr_2",srcLoc = 2,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_yq_4",id = 7160421,cardId = 1102997,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 326,desc = "cardDaily_yq_4_shl_2",srcLoc = 2,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_yq_4",id = 7160430,cardId = 1101998,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}}},
			shl = {cha = "cardDaily_yq_4",id = 7160431,cardId = 1102998,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[201605] = {
		[1] = {
			jlr = {cha = "cardDaily_yq_5",id = 7160510,cardId = 1101998,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}}},
			shl = {cha = "cardDaily_yq_5",id = 7160511,cardId = 1102998,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_yq_5",id = 7160520,cardId = 1101997,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}},mon = {id = 218,desc = "cardDaily_yq_5_jlr_2",srcLoc = 2,srcType = 1,skillLv = 5,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_yq_5",id = 7160521,cardId = 1102997,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 326,desc = "cardDaily_yq_5_shl_2",srcLoc = 2,srcType = 2,skillLv = 5,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_yq_5",id = 7160530,cardId = 1101998,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}}},
			shl = {cha = "cardDaily_yq_5",id = 7160531,cardId = 1102998,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[201701] = {
		[1] = {
			jlr = {cha = "cardDaily_qq_1",id = 7170110,cardId = 1101998,lv = 11,bklv = 1,star = 1},
			shl = {cha = "cardDaily_qq_1",id = 7170111,cardId = 1102998,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_qq_1",id = 7170120,cardId = 1101997,lv = 11,bklv = 1,star = 1,mon = {id = 220,desc = "cardDaily_qq_1_jlr_2",srcLoc = 2,srcType = 1,skillLv = 1,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_qq_1",id = 7170121,cardId = 1102997,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 327,desc = "cardDaily_qq_1_shl_2",srcLoc = 2,srcType = 2,skillLv = 1,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_qq_1",id = 7170130,cardId = 1101998,lv = 11,bklv = 1,star = 1},
			shl = {cha = "cardDaily_qq_1",id = 7170131,cardId = 1102998,lv = 11,bklv = 1,star = 1,ghost = 1,exWeapon = {[1] = 0,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[201702] = {
		[1] = {
			jlr = {cha = "cardDaily_qq_2",id = 7170210,cardId = 1101998,lv = 42,bklv = 5,star = 1,equip = {[1] = {id = 2002401,lv = 40},[2] = {id = 2002402,lv = 40},[3] = {id = 2002403,lv = 40},[4] = {id = 2002404,lv = 40},[5] = {id = 2002405,lv = 40},[6] = {id = 2002406,lv = 40},[7] = {id = 2002407,lv = 40},[8] = {id = 2002408,lv = 40}}},
			shl = {cha = "cardDaily_qq_2",id = 7170211,cardId = 1102998,lv = 42,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_qq_2",id = 7170220,cardId = 1101997,lv = 42,bklv = 5,star = 1,equip = {[1] = {id = 2002401,lv = 40},[2] = {id = 2002402,lv = 40},[3] = {id = 2002403,lv = 40},[4] = {id = 2002404,lv = 40},[5] = {id = 2002405,lv = 40},[6] = {id = 2002406,lv = 40},[7] = {id = 2002407,lv = 40},[8] = {id = 2002408,lv = 40}},mon = {id = 220,desc = "cardDaily_qq_2_jlr_2",srcLoc = 2,srcType = 1,skillLv = 2,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_qq_2",id = 7170221,cardId = 1102997,lv = 42,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 327,desc = "cardDaily_qq_2_shl_2",srcLoc = 2,srcType = 2,skillLv = 2,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_qq_2",id = 7170230,cardId = 1101998,lv = 42,bklv = 5,star = 1,equip = {[1] = {id = 2002401,lv = 40},[2] = {id = 2002402,lv = 40},[3] = {id = 2002403,lv = 40},[4] = {id = 2002404,lv = 40},[5] = {id = 2002405,lv = 40},[6] = {id = 2002406,lv = 40},[7] = {id = 2002407,lv = 40},[8] = {id = 2002408,lv = 40}}},
			shl = {cha = "cardDaily_qq_2",id = 7170231,cardId = 1102998,lv = 42,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},exWeapon = {[1] = 2,[2] = 0,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[201703] = {
		[1] = {
			jlr = {cha = "cardDaily_qq_3",id = 7170310,cardId = 1101998,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}}},
			shl = {cha = "cardDaily_qq_3",id = 7170311,cardId = 1102998,lv = 57,bklv = 9,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_qq_3",id = 7170320,cardId = 1101997,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}},mon = {id = 220,desc = "cardDaily_qq_3_jlr_2",srcLoc = 2,srcType = 1,skillLv = 3,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_qq_3",id = 7170321,cardId = 1102997,lv = 57,bklv = 9,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 327,desc = "cardDaily_qq_3_shl_2",srcLoc = 2,srcType = 2,skillLv = 3,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_qq_3",id = 7170330,cardId = 1101998,lv = 57,bklv = 7,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}}},
			shl = {cha = "cardDaily_qq_3",id = 7170331,cardId = 1102998,lv = 57,bklv = 9,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},exWeapon = {[1] = 5,[2] = 1,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[201704] = {
		[1] = {
			jlr = {cha = "cardDaily_qq_4",id = 7170410,cardId = 1101998,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}}},
			shl = {cha = "cardDaily_qq_4",id = 7170411,cardId = 1102998,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_qq_4",id = 7170420,cardId = 1101997,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}},mon = {id = 220,desc = "cardDaily_qq_4_jlr_2",srcLoc = 2,srcType = 1,skillLv = 4,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_qq_4",id = 7170421,cardId = 1102997,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 327,desc = "cardDaily_qq_4_shl_2",srcLoc = 2,srcType = 2,skillLv = 4,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_qq_4",id = 7170430,cardId = 1101998,lv = 72,bklv = 10,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}}},
			shl = {cha = "cardDaily_qq_4",id = 7170431,cardId = 1102998,lv = 72,bklv = 10,star = 2,ghost = 21,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},exWeapon = {[1] = 6,[2] = 4,[3] = 0,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[201705] = {
		[1] = {
			jlr = {cha = "cardDaily_qq_5",id = 7170510,cardId = 1101998,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}}},
			shl = {cha = "cardDaily_qq_5",id = 7170511,cardId = 1102998,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_qq_5",id = 7170520,cardId = 1101997,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}},mon = {id = 220,desc = "cardDaily_qq_5_jlr_2",srcLoc = 2,srcType = 1,skillLv = 5,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_qq_5",id = 7170521,cardId = 1102997,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 327,desc = "cardDaily_qq_5_shl_2",srcLoc = 2,srcType = 2,skillLv = 5,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_qq_5",id = 7170530,cardId = 1101998,lv = 80,bklv = 11,star = 3,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}}},
			shl = {cha = "cardDaily_qq_5",id = 7170531,cardId = 1102998,lv = 80,bklv = 11,star = 3,ghost = 25,equip = {[1] = {id = 2103401,lv = 80},[2] = {id = 2103402,lv = 80},[3] = {id = 2103403,lv = 80},[4] = {id = 2103404,lv = 80},[5] = {id = 2103405,lv = 80},[6] = {id = 2103406,lv = 80},[7] = {id = 2103407,lv = 80},[8] = {id = 2103408,lv = 80}},exWeapon = {[1] = 6,[2] = 5,[3] = 2,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[201706] = {
		[1] = {
			jlr = {cha = "cardDaily_qq_6",id = 7170610,cardId = 1101998,lv = 90,bklv = 13,star = 3,equip = {[1] = {id = 2004401,lv = 90},[2] = {id = 2004402,lv = 90},[3] = {id = 2004403,lv = 90},[4] = {id = 2004404,lv = 90},[5] = {id = 2004405,lv = 90},[6] = {id = 2004406,lv = 90},[7] = {id = 2004407,lv = 90},[8] = {id = 2004408,lv = 90}}},
			shl = {cha = "cardDaily_qq_6",id = 7170611,cardId = 1102998,lv = 90,bklv = 13,star = 3,ghost = 29,equip = {[1] = {id = 2104401,lv = 90},[2] = {id = 2104402,lv = 90},[3] = {id = 2104403,lv = 90},[4] = {id = 2104404,lv = 90},[5] = {id = 2104405,lv = 90},[6] = {id = 2104406,lv = 90},[7] = {id = 2104407,lv = 90},[8] = {id = 2104408,lv = 90}},exWeapon = {[1] = 7,[2] = 5,[3] = 5,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_qq_6",id = 7170620,cardId = 1101997,lv = 90,bklv = 13,star = 3,equip = {[1] = {id = 2004401,lv = 90},[2] = {id = 2004402,lv = 90},[3] = {id = 2004403,lv = 90},[4] = {id = 2004404,lv = 90},[5] = {id = 2004405,lv = 90},[6] = {id = 2004406,lv = 90},[7] = {id = 2004407,lv = 90},[8] = {id = 2004408,lv = 90}},mon = {id = 220,desc = "cardDaily_qq_6_jlr_2",srcLoc = 2,srcType = 1,skillLv = 6,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_qq_6",id = 7170621,cardId = 1102997,lv = 90,bklv = 13,star = 3,ghost = 29,equip = {[1] = {id = 2104401,lv = 90},[2] = {id = 2104402,lv = 90},[3] = {id = 2104403,lv = 90},[4] = {id = 2104404,lv = 90},[5] = {id = 2104405,lv = 90},[6] = {id = 2104406,lv = 90},[7] = {id = 2104407,lv = 90},[8] = {id = 2104408,lv = 90}},exWeapon = {[1] = 7,[2] = 5,[3] = 5,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0},mon = {id = 327,desc = "cardDaily_qq_6_shl_2",srcLoc = 2,srcType = 2,skillLv = 6,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_qq_6",id = 7170630,cardId = 1101998,lv = 90,bklv = 13,star = 3,equip = {[1] = {id = 2004401,lv = 90},[2] = {id = 2004402,lv = 90},[3] = {id = 2004403,lv = 90},[4] = {id = 2004404,lv = 90},[5] = {id = 2004405,lv = 90},[6] = {id = 2004406,lv = 90},[7] = {id = 2004407,lv = 90},[8] = {id = 2004408,lv = 90}}},
			shl = {cha = "cardDaily_qq_6",id = 7170631,cardId = 1102998,lv = 90,bklv = 13,star = 3,ghost = 29,equip = {[1] = {id = 2104401,lv = 90},[2] = {id = 2104402,lv = 90},[3] = {id = 2104403,lv = 90},[4] = {id = 2104404,lv = 90},[5] = {id = 2104405,lv = 90},[6] = {id = 2104406,lv = 90},[7] = {id = 2104407,lv = 90},[8] = {id = 2104408,lv = 90}},exWeapon = {[1] = 7,[2] = 5,[3] = 5,[4] = 0,[5] = 0,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[201707] = {
		[1] = {
			jlr = {cha = "cardDaily_qq_7",id = 7170710,cardId = 1101998,lv = 102,bklv = 14,star = 4,equip = {[1] = {id = 2005401,lv = 100},[2] = {id = 2005402,lv = 100},[3] = {id = 2005403,lv = 100},[4] = {id = 2005404,lv = 100},[5] = {id = 2005405,lv = 100},[6] = {id = 2005406,lv = 100},[7] = {id = 2005407,lv = 100},[8] = {id = 2005408,lv = 100}}},
			shl = {cha = "cardDaily_qq_7",id = 7170711,cardId = 1102998,lv = 102,bklv = 15,star = 4,ghost = 32,equip = {[1] = {id = 2105401,lv = 100},[2] = {id = 2105402,lv = 100},[3] = {id = 2105403,lv = 100},[4] = {id = 2105404,lv = 100},[5] = {id = 2105405,lv = 100},[6] = {id = 2105406,lv = 100},[7] = {id = 2105407,lv = 100},[8] = {id = 2105408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_qq_7",id = 7170720,cardId = 1101997,lv = 102,bklv = 14,star = 4,equip = {[1] = {id = 2005401,lv = 100},[2] = {id = 2005402,lv = 100},[3] = {id = 2005403,lv = 100},[4] = {id = 2005404,lv = 100},[5] = {id = 2005405,lv = 100},[6] = {id = 2005406,lv = 100},[7] = {id = 2005407,lv = 100},[8] = {id = 2005408,lv = 100}},mon = {id = 220,desc = "cardDaily_qq_7_jlr_2",srcLoc = 2,srcType = 1,skillLv = 7,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_qq_7",id = 7170721,cardId = 1102997,lv = 102,bklv = 15,star = 4,ghost = 32,equip = {[1] = {id = 2105401,lv = 100},[2] = {id = 2105402,lv = 100},[3] = {id = 2105403,lv = 100},[4] = {id = 2105404,lv = 100},[5] = {id = 2105405,lv = 100},[6] = {id = 2105406,lv = 100},[7] = {id = 2105407,lv = 100},[8] = {id = 2105408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0},mon = {id = 327,desc = "cardDaily_qq_7_shl_2",srcLoc = 2,srcType = 2,skillLv = 7,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_qq_7",id = 7170730,cardId = 1101998,lv = 102,bklv = 14,star = 4,equip = {[1] = {id = 2005401,lv = 100},[2] = {id = 2005402,lv = 100},[3] = {id = 2005403,lv = 100},[4] = {id = 2005404,lv = 100},[5] = {id = 2005405,lv = 100},[6] = {id = 2005406,lv = 100},[7] = {id = 2005407,lv = 100},[8] = {id = 2005408,lv = 100}}},
			shl = {cha = "cardDaily_qq_7",id = 7170731,cardId = 1102998,lv = 102,bklv = 15,star = 4,ghost = 32,equip = {[1] = {id = 2105401,lv = 100},[2] = {id = 2105402,lv = 100},[3] = {id = 2105403,lv = 100},[4] = {id = 2105404,lv = 100},[5] = {id = 2105405,lv = 100},[6] = {id = 2105406,lv = 100},[7] = {id = 2105407,lv = 100},[8] = {id = 2105408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0}}
		}
	},
	[201708] = {
		[1] = {
			jlr = {cha = "cardDaily_qq_8",id = 7170810,cardId = 1101998,lv = 130,bklv = 14,star = 4,equip = {[1] = {id = 2008401,lv = 100},[2] = {id = 2008402,lv = 100},[3] = {id = 2008403,lv = 100},[4] = {id = 2008404,lv = 100},[5] = {id = 2008405,lv = 100},[6] = {id = 2008406,lv = 100},[7] = {id = 2008407,lv = 100},[8] = {id = 2008408,lv = 100}}},
			shl = {cha = "cardDaily_qq_8",id = 7170811,cardId = 1102998,lv = 130,bklv = 15,star = 4,ghost = 32,equip = {[1] = {id = 2108401,lv = 100},[2] = {id = 2108402,lv = 100},[3] = {id = 2108403,lv = 100},[4] = {id = 2108404,lv = 100},[5] = {id = 2108405,lv = 100},[6] = {id = 2108406,lv = 100},[7] = {id = 2108407,lv = 100},[8] = {id = 2108408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0}}
		},
		[2] = {
			jlr = {cha = "cardDaily_qq_8",id = 7170820,cardId = 1101997,lv = 130,bklv = 14,star = 4,equip = {[1] = {id = 2008401,lv = 100},[2] = {id = 2008402,lv = 100},[3] = {id = 2008403,lv = 100},[4] = {id = 2008404,lv = 100},[5] = {id = 2008405,lv = 100},[6] = {id = 2008406,lv = 100},[7] = {id = 2008407,lv = 100},[8] = {id = 2008408,lv = 100}},mon = {id = 220,desc = "cardDaily_qq_8_jlr_2",srcLoc = 2,srcType = 1,skillLv = 8,exert = 14,suffer = 21}},
			shl = {cha = "cardDaily_qq_8",id = 7170821,cardId = 1102997,lv = 130,bklv = 15,star = 4,ghost = 32,equip = {[1] = {id = 2108401,lv = 100},[2] = {id = 2108402,lv = 100},[3] = {id = 2108403,lv = 100},[4] = {id = 2108404,lv = 100},[5] = {id = 2108405,lv = 100},[6] = {id = 2108406,lv = 100},[7] = {id = 2108407,lv = 100},[8] = {id = 2108408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0},mon = {id = 327,desc = "cardDaily_qq_8_shl_2",srcLoc = 2,srcType = 2,skillLv = 8,exert = 18,suffer = 25}}
		},
		[3] = {
			jlr = {cha = "cardDaily_qq_8",id = 7170830,cardId = 1101998,lv = 130,bklv = 14,star = 4,equip = {[1] = {id = 2008401,lv = 100},[2] = {id = 2008402,lv = 100},[3] = {id = 2008403,lv = 100},[4] = {id = 2008404,lv = 100},[5] = {id = 2008405,lv = 100},[6] = {id = 2008406,lv = 100},[7] = {id = 2008407,lv = 100},[8] = {id = 2008408,lv = 100}}},
			shl = {cha = "cardDaily_qq_8",id = 7170831,cardId = 1102998,lv = 130,bklv = 15,star = 4,ghost = 32,equip = {[1] = {id = 2108401,lv = 100},[2] = {id = 2108402,lv = 100},[3] = {id = 2108403,lv = 100},[4] = {id = 2108404,lv = 100},[5] = {id = 2108405,lv = 100},[6] = {id = 2108406,lv = 100},[7] = {id = 2108407,lv = 100},[8] = {id = 2108408,lv = 100}},exWeapon = {[1] = 7,[2] = 6,[3] = 5,[4] = 4,[5] = 2,[6] = 0,[7] = 0,[8] = 0}}
		}
	}
}
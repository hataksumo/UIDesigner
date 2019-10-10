--[[
--note:

colums:
{cha,章节} ,{id,卡牌Id} ,{group,组} ,{loc,位置} ,{type,类型} ,{cardId,卡牌ID} ,{lv,等级} ,{bklv,突破} ,{star,星级} ,{ghost,魂火} ,{equip[1].id,装备1Id} ,{equip[1].lv,装备1强化} ,{equip[2].id,装备1Id} ,{equip[2].lv,装备1强化} ,{equip[3].id,装备1Id} ,{equip[3].lv,装备1强化} ,{equip[4].id,装备1Id} ,{equip[4].lv,装备1强化} ,{equip[5].id,装备1Id} ,{equip[5].lv,装备1强化} ,{equip[6].id,装备1Id} ,{equip[6].lv,装备1强化} ,{equip[7].id,装备1Id} ,{equip[7].lv,装备1强化} ,{equip[8].id,装备1Id} ,{equip[8].lv,装备1强化} ,{exWeapon.unseal,专属武器解封} ,{exWeapon.lv,专属武器等级} ,{mon.id,怪物模组ID} ,{mon.desc,备注} ,{mon.srcLoc,源属性位} ,{mon.srcType,源属性类型} ,{mon.skillLv,技能等级} ,{mon.exert,施加攻击} ,{mon.suffer,承受攻击}
primary key:
#0 [日常本卡牌组]: group,loc,type
]]
local _T = LangUtil.Language
return{
	[60101] = {
		[1] = {
			jlr = {cha = "daily_ghost",id = 6010110,cardId = 1101999,lv = 15,bklv = 2,star = 1,mon = {id = 207,desc = "daily_ghost-1-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 14,suffer = 9}},
			shl = {cha = "daily_ghost",id = 6010111,cardId = 1102999,lv = 15,bklv = 2,star = 1,ghost = 3,mon = {id = 230,desc = "daily_ghost-1-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 15,suffer = 6.5}}
		},
		[2] = {
			jlr = {cha = "daily_ghost",id = 6010120,cardId = 1101999,lv = 15,bklv = 2,star = 1,mon = {id = 205,desc = "daily_ghost-1-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 14,suffer = 9}},
			shl = {cha = "daily_ghost",id = 6010121,cardId = 1102999,lv = 15,bklv = 2,star = 1,ghost = 3,mon = {id = 219,desc = "daily_ghost-1-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 15,suffer = 6.5}}
		},
		[3] = {
			jlr = {cha = "daily_ghost",id = 6010130,cardId = 1101999,lv = 15,bklv = 2,star = 1,mon = {id = 204,desc = "daily_ghost-1-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 14,suffer = 9}},
			shl = {cha = "daily_ghost",id = 6010131,cardId = 1102999,lv = 15,bklv = 2,star = 1,ghost = 3,mon = {id = 224,desc = "daily_ghost-1-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 15,suffer = 6.5}}
		}
	},
	[60102] = {
		[1] = {
			jlr = {cha = "daily_ghost",id = 6010210,cardId = 1101999,lv = 25,bklv = 3,star = 1,mon = {id = 207,desc = "daily_ghost-2-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_ghost",id = 6010211,cardId = 1102999,lv = 25,bklv = 3,star = 2,ghost = 5,equip = {[1] = {id = 2101301,lv = 25},[2] = {id = 2101302,lv = 25},[3] = {id = 2101303,lv = 25},[4] = {id = 2101304,lv = 25},[5] = {id = 2101305,lv = 25},[6] = {id = 2101306,lv = 25},[7] = {id = 2101307,lv = 25},[8] = {id = 2101308,lv = 25}},mon = {id = 230,desc = "daily_ghost-2-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 8}}
		},
		[2] = {
			jlr = {cha = "daily_ghost",id = 6010220,cardId = 1101998,lv = 25,bklv = 3,star = 1,mon = {id = 205,desc = "daily_ghost-2-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_ghost",id = 6010221,cardId = 1102998,lv = 25,bklv = 3,star = 1,ghost = 5,equip = {[1] = {id = 2101301,lv = 25},[2] = {id = 2101302,lv = 25},[3] = {id = 2101303,lv = 25},[4] = {id = 2101304,lv = 25},[5] = {id = 2101305,lv = 25},[6] = {id = 2101306,lv = 25},[7] = {id = 2101307,lv = 25},[8] = {id = 2101308,lv = 25}},mon = {id = 219,desc = "daily_ghost-2-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 8}}
		},
		[3] = {
			jlr = {cha = "daily_ghost",id = 6010230,cardId = 1101999,lv = 25,bklv = 3,star = 1,mon = {id = 204,desc = "daily_ghost-2-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_ghost",id = 6010231,cardId = 1102999,lv = 25,bklv = 3,star = 2,ghost = 5,equip = {[1] = {id = 2101301,lv = 25},[2] = {id = 2101302,lv = 25},[3] = {id = 2101303,lv = 25},[4] = {id = 2101304,lv = 25},[5] = {id = 2101305,lv = 25},[6] = {id = 2101306,lv = 25},[7] = {id = 2101307,lv = 25},[8] = {id = 2101308,lv = 25}},mon = {id = 224,desc = "daily_ghost-2-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 8}}
		}
	},
	[60103] = {
		[1] = {
			jlr = {cha = "daily_ghost",id = 6010310,cardId = 1101999,lv = 35,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 35},[2] = {id = 2001302,lv = 35},[3] = {id = 2001303,lv = 35},[4] = {id = 2001304,lv = 35},[5] = {id = 2001305,lv = 35},[6] = {id = 2001306,lv = 35},[7] = {id = 2001307,lv = 35},[8] = {id = 2001308,lv = 35}},mon = {id = 207,desc = "daily_ghost-3-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_ghost",id = 6010311,cardId = 1102999,lv = 35,bklv = 4,star = 2,ghost = 7,equip = {[1] = {id = 2101301,lv = 35},[2] = {id = 2101302,lv = 35},[3] = {id = 2101303,lv = 35},[4] = {id = 2101304,lv = 35},[5] = {id = 2101305,lv = 35},[6] = {id = 2101306,lv = 35},[7] = {id = 2101307,lv = 35},[8] = {id = 2101308,lv = 35}},mon = {id = 230,desc = "daily_ghost-3-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "daily_ghost",id = 6010320,cardId = 1101998,lv = 35,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 35},[2] = {id = 2001302,lv = 35},[3] = {id = 2001303,lv = 35},[4] = {id = 2001304,lv = 35},[5] = {id = 2001305,lv = 35},[6] = {id = 2001306,lv = 35},[7] = {id = 2001307,lv = 35},[8] = {id = 2001308,lv = 35}},mon = {id = 205,desc = "daily_ghost-3-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_ghost",id = 6010321,cardId = 1102998,lv = 35,bklv = 4,star = 1,ghost = 7,equip = {[1] = {id = 2101301,lv = 35},[2] = {id = 2101302,lv = 35},[3] = {id = 2101303,lv = 35},[4] = {id = 2101304,lv = 35},[5] = {id = 2101305,lv = 35},[6] = {id = 2101306,lv = 35},[7] = {id = 2101307,lv = 35},[8] = {id = 2101308,lv = 35}},mon = {id = 219,desc = "daily_ghost-3-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "daily_ghost",id = 6010330,cardId = 1101999,lv = 35,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 35},[2] = {id = 2001302,lv = 35},[3] = {id = 2001303,lv = 35},[4] = {id = 2001304,lv = 35},[5] = {id = 2001305,lv = 35},[6] = {id = 2001306,lv = 35},[7] = {id = 2001307,lv = 35},[8] = {id = 2001308,lv = 35}},mon = {id = 204,desc = "daily_ghost-3-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_ghost",id = 6010331,cardId = 1102999,lv = 35,bklv = 4,star = 2,ghost = 7,equip = {[1] = {id = 2101301,lv = 35},[2] = {id = 2101302,lv = 35},[3] = {id = 2101303,lv = 35},[4] = {id = 2101304,lv = 35},[5] = {id = 2101305,lv = 35},[6] = {id = 2101306,lv = 35},[7] = {id = 2101307,lv = 35},[8] = {id = 2101308,lv = 35}},mon = {id = 224,desc = "daily_ghost-3-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 9}}
		}
	},
	[60104] = {
		[1] = {
			jlr = {cha = "daily_ghost",id = 6010410,cardId = 1101998,lv = 45,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 45},[2] = {id = 2001302,lv = 45},[3] = {id = 2001303,lv = 45},[4] = {id = 2001304,lv = 45},[5] = {id = 2001305,lv = 45},[6] = {id = 2001306,lv = 45},[7] = {id = 2001307,lv = 45},[8] = {id = 2001308,lv = 45}},mon = {id = 207,desc = "daily_ghost-4-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_ghost",id = 6010411,cardId = 1102998,lv = 45,bklv = 5,star = 1,ghost = 10,equip = {[1] = {id = 2102301,lv = 45},[2] = {id = 2102302,lv = 45},[3] = {id = 2102303,lv = 45},[4] = {id = 2102304,lv = 45},[5] = {id = 2102305,lv = 45},[6] = {id = 2102306,lv = 45},[7] = {id = 2102307,lv = 45},[8] = {id = 2102308,lv = 45}},mon = {id = 230,desc = "daily_ghost-4-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_ghost",id = 6010420,cardId = 1101998,lv = 45,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 45},[2] = {id = 2001302,lv = 45},[3] = {id = 2001303,lv = 45},[4] = {id = 2001304,lv = 45},[5] = {id = 2001305,lv = 45},[6] = {id = 2001306,lv = 45},[7] = {id = 2001307,lv = 45},[8] = {id = 2001308,lv = 45}},mon = {id = 205,desc = "daily_ghost-4-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_ghost",id = 6010421,cardId = 1102998,lv = 45,bklv = 5,star = 1,ghost = 10,equip = {[1] = {id = 2102301,lv = 45},[2] = {id = 2102302,lv = 45},[3] = {id = 2102303,lv = 45},[4] = {id = 2102304,lv = 45},[5] = {id = 2102305,lv = 45},[6] = {id = 2102306,lv = 45},[7] = {id = 2102307,lv = 45},[8] = {id = 2102308,lv = 45}},mon = {id = 219,desc = "daily_ghost-4-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_ghost",id = 6010430,cardId = 1101998,lv = 45,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 45},[2] = {id = 2001302,lv = 45},[3] = {id = 2001303,lv = 45},[4] = {id = 2001304,lv = 45},[5] = {id = 2001305,lv = 45},[6] = {id = 2001306,lv = 45},[7] = {id = 2001307,lv = 45},[8] = {id = 2001308,lv = 45}},mon = {id = 204,desc = "daily_ghost-4-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_ghost",id = 6010431,cardId = 1102998,lv = 45,bklv = 5,star = 1,ghost = 10,equip = {[1] = {id = 2102301,lv = 45},[2] = {id = 2102302,lv = 45},[3] = {id = 2102303,lv = 45},[4] = {id = 2102304,lv = 45},[5] = {id = 2102305,lv = 45},[6] = {id = 2102306,lv = 45},[7] = {id = 2102307,lv = 45},[8] = {id = 2102308,lv = 45}},mon = {id = 224,desc = "daily_ghost-4-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60105] = {
		[1] = {
			jlr = {cha = "daily_ghost",id = 6010510,cardId = 1101998,lv = 55,bklv = 6,star = 1,equip = {[1] = {id = 2002301,lv = 55},[2] = {id = 2002302,lv = 55},[3] = {id = 2002303,lv = 55},[4] = {id = 2002304,lv = 55},[5] = {id = 2002305,lv = 55},[6] = {id = 2002306,lv = 55},[7] = {id = 2002307,lv = 55},[8] = {id = 2002308,lv = 55}},mon = {id = 207,desc = "daily_ghost-5-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_ghost",id = 6010511,cardId = 1102998,lv = 55,bklv = 7,star = 1,ghost = 14,equip = {[1] = {id = 2102301,lv = 55},[2] = {id = 2102302,lv = 55},[3] = {id = 2102303,lv = 55},[4] = {id = 2102304,lv = 55},[5] = {id = 2102305,lv = 55},[6] = {id = 2102306,lv = 55},[7] = {id = 2102307,lv = 55},[8] = {id = 2102308,lv = 55}},mon = {id = 230,desc = "daily_ghost-5-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_ghost",id = 6010520,cardId = 1101998,lv = 55,bklv = 6,star = 1,equip = {[1] = {id = 2002301,lv = 55},[2] = {id = 2002302,lv = 55},[3] = {id = 2002303,lv = 55},[4] = {id = 2002304,lv = 55},[5] = {id = 2002305,lv = 55},[6] = {id = 2002306,lv = 55},[7] = {id = 2002307,lv = 55},[8] = {id = 2002308,lv = 55}},mon = {id = 205,desc = "daily_ghost-5-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_ghost",id = 6010521,cardId = 1102998,lv = 55,bklv = 7,star = 2,ghost = 14,equip = {[1] = {id = 2102301,lv = 55},[2] = {id = 2102302,lv = 55},[3] = {id = 2102303,lv = 55},[4] = {id = 2102304,lv = 55},[5] = {id = 2102305,lv = 55},[6] = {id = 2102306,lv = 55},[7] = {id = 2102307,lv = 55},[8] = {id = 2102308,lv = 55}},mon = {id = 219,desc = "daily_ghost-5-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_ghost",id = 6010530,cardId = 1101998,lv = 55,bklv = 6,star = 1,equip = {[1] = {id = 2002301,lv = 55},[2] = {id = 2002302,lv = 55},[3] = {id = 2002303,lv = 55},[4] = {id = 2002304,lv = 55},[5] = {id = 2002305,lv = 55},[6] = {id = 2002306,lv = 55},[7] = {id = 2002307,lv = 55},[8] = {id = 2002308,lv = 55}},mon = {id = 204,desc = "daily_ghost-5-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_ghost",id = 6010531,cardId = 1102998,lv = 55,bklv = 7,star = 1,ghost = 14,equip = {[1] = {id = 2102301,lv = 55},[2] = {id = 2102302,lv = 55},[3] = {id = 2102303,lv = 55},[4] = {id = 2102304,lv = 55},[5] = {id = 2102305,lv = 55},[6] = {id = 2102306,lv = 55},[7] = {id = 2102307,lv = 55},[8] = {id = 2102308,lv = 55}},mon = {id = 224,desc = "daily_ghost-5-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60106] = {
		[1] = {
			jlr = {cha = "daily_ghost",id = 6010610,cardId = 1101998,lv = 65,bklv = 7,star = 1,equip = {[1] = {id = 2002301,lv = 65},[2] = {id = 2002302,lv = 65},[3] = {id = 2002303,lv = 65},[4] = {id = 2002304,lv = 65},[5] = {id = 2002305,lv = 65},[6] = {id = 2002306,lv = 65},[7] = {id = 2002307,lv = 65},[8] = {id = 2002308,lv = 65}},mon = {id = 207,desc = "daily_ghost-6-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_ghost",id = 6010611,cardId = 1102998,lv = 65,bklv = 9,star = 2,ghost = 18,equip = {[1] = {id = 2103301,lv = 65},[2] = {id = 2103302,lv = 65},[3] = {id = 2103303,lv = 65},[4] = {id = 2103304,lv = 65},[5] = {id = 2103305,lv = 65},[6] = {id = 2103306,lv = 65},[7] = {id = 2103307,lv = 65},[8] = {id = 2103308,lv = 65}},mon = {id = 230,desc = "daily_ghost-6-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_ghost",id = 6010620,cardId = 1101998,lv = 65,bklv = 7,star = 1,equip = {[1] = {id = 2002301,lv = 65},[2] = {id = 2002302,lv = 65},[3] = {id = 2002303,lv = 65},[4] = {id = 2002304,lv = 65},[5] = {id = 2002305,lv = 65},[6] = {id = 2002306,lv = 65},[7] = {id = 2002307,lv = 65},[8] = {id = 2002308,lv = 65}},mon = {id = 205,desc = "daily_ghost-6-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_ghost",id = 6010621,cardId = 1102998,lv = 65,bklv = 9,star = 2,ghost = 18,equip = {[1] = {id = 2103301,lv = 65},[2] = {id = 2103302,lv = 65},[3] = {id = 2103303,lv = 65},[4] = {id = 2103304,lv = 65},[5] = {id = 2103305,lv = 65},[6] = {id = 2103306,lv = 65},[7] = {id = 2103307,lv = 65},[8] = {id = 2103308,lv = 65}},mon = {id = 219,desc = "daily_ghost-6-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_ghost",id = 6010630,cardId = 1101998,lv = 65,bklv = 7,star = 1,equip = {[1] = {id = 2002301,lv = 65},[2] = {id = 2002302,lv = 65},[3] = {id = 2002303,lv = 65},[4] = {id = 2002304,lv = 65},[5] = {id = 2002305,lv = 65},[6] = {id = 2002306,lv = 65},[7] = {id = 2002307,lv = 65},[8] = {id = 2002308,lv = 65}},mon = {id = 204,desc = "daily_ghost-6-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_ghost",id = 6010631,cardId = 1102998,lv = 65,bklv = 9,star = 2,ghost = 18,equip = {[1] = {id = 2103301,lv = 65},[2] = {id = 2103302,lv = 65},[3] = {id = 2103303,lv = 65},[4] = {id = 2103304,lv = 65},[5] = {id = 2103305,lv = 65},[6] = {id = 2103306,lv = 65},[7] = {id = 2103307,lv = 65},[8] = {id = 2103308,lv = 65}},mon = {id = 224,desc = "daily_ghost-6-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60107] = {
		[1] = {
			jlr = {cha = "daily_ghost",id = 6010710,cardId = 1101998,lv = 75,bklv = 8,star = 2,equip = {[1] = {id = 2003301,lv = 75},[2] = {id = 2003302,lv = 75},[3] = {id = 2003303,lv = 75},[4] = {id = 2003304,lv = 75},[5] = {id = 2003305,lv = 75},[6] = {id = 2003306,lv = 75},[7] = {id = 2003307,lv = 75},[8] = {id = 2003308,lv = 75}},mon = {id = 207,desc = "daily_ghost-7-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_ghost",id = 6010711,cardId = 1102998,lv = 75,bklv = 10,star = 2,ghost = 22,equip = {[1] = {id = 2103301,lv = 75},[2] = {id = 2103302,lv = 75},[3] = {id = 2103303,lv = 75},[4] = {id = 2103304,lv = 75},[5] = {id = 2103305,lv = 75},[6] = {id = 2103306,lv = 75},[7] = {id = 2103307,lv = 75},[8] = {id = 2103308,lv = 75}},mon = {id = 230,desc = "daily_ghost-7-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_ghost",id = 6010720,cardId = 1101998,lv = 75,bklv = 8,star = 2,equip = {[1] = {id = 2003301,lv = 75},[2] = {id = 2003302,lv = 75},[3] = {id = 2003303,lv = 75},[4] = {id = 2003304,lv = 75},[5] = {id = 2003305,lv = 75},[6] = {id = 2003306,lv = 75},[7] = {id = 2003307,lv = 75},[8] = {id = 2003308,lv = 75}},mon = {id = 205,desc = "daily_ghost-7-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_ghost",id = 6010721,cardId = 1102998,lv = 75,bklv = 10,star = 2,ghost = 22,equip = {[1] = {id = 2103301,lv = 75},[2] = {id = 2103302,lv = 75},[3] = {id = 2103303,lv = 75},[4] = {id = 2103304,lv = 75},[5] = {id = 2103305,lv = 75},[6] = {id = 2103306,lv = 75},[7] = {id = 2103307,lv = 75},[8] = {id = 2103308,lv = 75}},mon = {id = 219,desc = "daily_ghost-7-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_ghost",id = 6010730,cardId = 1101998,lv = 75,bklv = 8,star = 2,equip = {[1] = {id = 2003301,lv = 75},[2] = {id = 2003302,lv = 75},[3] = {id = 2003303,lv = 75},[4] = {id = 2003304,lv = 75},[5] = {id = 2003305,lv = 75},[6] = {id = 2003306,lv = 75},[7] = {id = 2003307,lv = 75},[8] = {id = 2003308,lv = 75}},mon = {id = 204,desc = "daily_ghost-7-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_ghost",id = 6010731,cardId = 1102998,lv = 75,bklv = 10,star = 2,ghost = 22,equip = {[1] = {id = 2103301,lv = 75},[2] = {id = 2103302,lv = 75},[3] = {id = 2103303,lv = 75},[4] = {id = 2103304,lv = 75},[5] = {id = 2103305,lv = 75},[6] = {id = 2103306,lv = 75},[7] = {id = 2103307,lv = 75},[8] = {id = 2103308,lv = 75}},mon = {id = 224,desc = "daily_ghost-7-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60108] = {
		[1] = {
			jlr = {cha = "daily_ghost",id = 6010810,cardId = 1101998,lv = 85,bklv = 10,star = 2,equip = {[1] = {id = 2004301,lv = 85},[2] = {id = 2004302,lv = 85},[3] = {id = 2004303,lv = 85},[4] = {id = 2004304,lv = 85},[5] = {id = 2004305,lv = 85},[6] = {id = 2004306,lv = 85},[7] = {id = 2004307,lv = 85},[8] = {id = 2004308,lv = 85}},mon = {id = 207,desc = "daily_ghost-8-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_ghost",id = 6010811,cardId = 1102998,lv = 85,bklv = 11,star = 2,ghost = 26,equip = {[1] = {id = 2104301,lv = 85},[2] = {id = 2104302,lv = 85},[3] = {id = 2104303,lv = 85},[4] = {id = 2104304,lv = 85},[5] = {id = 2104305,lv = 85},[6] = {id = 2104306,lv = 85},[7] = {id = 2104307,lv = 85},[8] = {id = 2104308,lv = 85}},mon = {id = 230,desc = "daily_ghost-8-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_ghost",id = 6010820,cardId = 1101998,lv = 85,bklv = 10,star = 2,equip = {[1] = {id = 2004301,lv = 85},[2] = {id = 2004302,lv = 85},[3] = {id = 2004303,lv = 85},[4] = {id = 2004304,lv = 85},[5] = {id = 2004305,lv = 85},[6] = {id = 2004306,lv = 85},[7] = {id = 2004307,lv = 85},[8] = {id = 2004308,lv = 85}},mon = {id = 205,desc = "daily_ghost-8-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_ghost",id = 6010821,cardId = 1102997,lv = 85,bklv = 11,star = 1,ghost = 26,equip = {[1] = {id = 2104301,lv = 85},[2] = {id = 2104302,lv = 85},[3] = {id = 2104303,lv = 85},[4] = {id = 2104304,lv = 85},[5] = {id = 2104305,lv = 85},[6] = {id = 2104306,lv = 85},[7] = {id = 2104307,lv = 85},[8] = {id = 2104308,lv = 85}},mon = {id = 219,desc = "daily_ghost-8-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_ghost",id = 6010830,cardId = 1101998,lv = 85,bklv = 10,star = 2,equip = {[1] = {id = 2004301,lv = 85},[2] = {id = 2004302,lv = 85},[3] = {id = 2004303,lv = 85},[4] = {id = 2004304,lv = 85},[5] = {id = 2004305,lv = 85},[6] = {id = 2004306,lv = 85},[7] = {id = 2004307,lv = 85},[8] = {id = 2004308,lv = 85}},mon = {id = 204,desc = "daily_ghost-8-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_ghost",id = 6010831,cardId = 1102998,lv = 85,bklv = 11,star = 2,ghost = 26,equip = {[1] = {id = 2104301,lv = 85},[2] = {id = 2104302,lv = 85},[3] = {id = 2104303,lv = 85},[4] = {id = 2104304,lv = 85},[5] = {id = 2104305,lv = 85},[6] = {id = 2104306,lv = 85},[7] = {id = 2104307,lv = 85},[8] = {id = 2104308,lv = 85}},mon = {id = 224,desc = "daily_ghost-8-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60109] = {
		[1] = {
			jlr = {cha = "daily_ghost",id = 6010910,cardId = 1101997,lv = 95,bklv = 12,star = 1,equip = {[1] = {id = 2005301,lv = 95},[2] = {id = 2005302,lv = 95},[3] = {id = 2005303,lv = 95},[4] = {id = 2005304,lv = 95},[5] = {id = 2005305,lv = 95},[6] = {id = 2005306,lv = 95},[7] = {id = 2005307,lv = 95},[8] = {id = 2005308,lv = 95}},mon = {id = 207,desc = "daily_ghost-9-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_ghost",id = 6010911,cardId = 1102997,lv = 95,bklv = 13,star = 1,ghost = 30,equip = {[1] = {id = 2105301,lv = 95},[2] = {id = 2105302,lv = 95},[3] = {id = 2105303,lv = 95},[4] = {id = 2105304,lv = 95},[5] = {id = 2105305,lv = 95},[6] = {id = 2105306,lv = 95},[7] = {id = 2105307,lv = 95},[8] = {id = 2105308,lv = 95}},mon = {id = 230,desc = "daily_ghost-9-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_ghost",id = 6010920,cardId = 1101997,lv = 95,bklv = 12,star = 1,equip = {[1] = {id = 2005301,lv = 95},[2] = {id = 2005302,lv = 95},[3] = {id = 2005303,lv = 95},[4] = {id = 2005304,lv = 95},[5] = {id = 2005305,lv = 95},[6] = {id = 2005306,lv = 95},[7] = {id = 2005307,lv = 95},[8] = {id = 2005308,lv = 95}},mon = {id = 205,desc = "daily_ghost-9-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_ghost",id = 6010921,cardId = 1102997,lv = 95,bklv = 13,star = 1,ghost = 30,equip = {[1] = {id = 2105301,lv = 95},[2] = {id = 2105302,lv = 95},[3] = {id = 2105303,lv = 95},[4] = {id = 2105304,lv = 95},[5] = {id = 2105305,lv = 95},[6] = {id = 2105306,lv = 95},[7] = {id = 2105307,lv = 95},[8] = {id = 2105308,lv = 95}},mon = {id = 219,desc = "daily_ghost-9-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_ghost",id = 6010930,cardId = 1101997,lv = 95,bklv = 12,star = 1,equip = {[1] = {id = 2005301,lv = 95},[2] = {id = 2005302,lv = 95},[3] = {id = 2005303,lv = 95},[4] = {id = 2005304,lv = 95},[5] = {id = 2005305,lv = 95},[6] = {id = 2005306,lv = 95},[7] = {id = 2005307,lv = 95},[8] = {id = 2005308,lv = 95}},mon = {id = 204,desc = "daily_ghost-9-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_ghost",id = 6010931,cardId = 1102997,lv = 95,bklv = 13,star = 1,ghost = 30,equip = {[1] = {id = 2105301,lv = 95},[2] = {id = 2105302,lv = 95},[3] = {id = 2105303,lv = 95},[4] = {id = 2105304,lv = 95},[5] = {id = 2105305,lv = 95},[6] = {id = 2105306,lv = 95},[7] = {id = 2105307,lv = 95},[8] = {id = 2105308,lv = 95}},mon = {id = 224,desc = "daily_ghost-9-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60110] = {
		[1] = {
			jlr = {cha = "daily_ghost",id = 6011010,cardId = 1101997,lv = 105,bklv = 14,star = 1,equip = {[1] = {id = 2006301,lv = 105},[2] = {id = 2006302,lv = 105},[3] = {id = 2006303,lv = 105},[4] = {id = 2006304,lv = 105},[5] = {id = 2006305,lv = 105},[6] = {id = 2006306,lv = 105},[7] = {id = 2006307,lv = 105},[8] = {id = 2006308,lv = 105}},mon = {id = 207,desc = "daily_ghost-10-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_ghost",id = 6011011,cardId = 1102997,lv = 105,bklv = 14,star = 1,ghost = 34,equip = {[1] = {id = 2106301,lv = 105},[2] = {id = 2106302,lv = 105},[3] = {id = 2106303,lv = 105},[4] = {id = 2106304,lv = 105},[5] = {id = 2106305,lv = 105},[6] = {id = 2106306,lv = 105},[7] = {id = 2106307,lv = 105},[8] = {id = 2106308,lv = 105}},mon = {id = 230,desc = "daily_ghost-10-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_ghost",id = 6011020,cardId = 1101997,lv = 105,bklv = 14,star = 2,equip = {[1] = {id = 2006301,lv = 105},[2] = {id = 2006302,lv = 105},[3] = {id = 2006303,lv = 105},[4] = {id = 2006304,lv = 105},[5] = {id = 2006305,lv = 105},[6] = {id = 2006306,lv = 105},[7] = {id = 2006307,lv = 105},[8] = {id = 2006308,lv = 105}},mon = {id = 205,desc = "daily_ghost-10-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_ghost",id = 6011021,cardId = 1102997,lv = 105,bklv = 14,star = 2,ghost = 34,equip = {[1] = {id = 2106301,lv = 105},[2] = {id = 2106302,lv = 105},[3] = {id = 2106303,lv = 105},[4] = {id = 2106304,lv = 105},[5] = {id = 2106305,lv = 105},[6] = {id = 2106306,lv = 105},[7] = {id = 2106307,lv = 105},[8] = {id = 2106308,lv = 105}},mon = {id = 219,desc = "daily_ghost-10-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_ghost",id = 6011030,cardId = 1101997,lv = 105,bklv = 14,star = 1,equip = {[1] = {id = 2006301,lv = 105},[2] = {id = 2006302,lv = 105},[3] = {id = 2006303,lv = 105},[4] = {id = 2006304,lv = 105},[5] = {id = 2006305,lv = 105},[6] = {id = 2006306,lv = 105},[7] = {id = 2006307,lv = 105},[8] = {id = 2006308,lv = 105}},mon = {id = 204,desc = "daily_ghost-10-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_ghost",id = 6011031,cardId = 1102997,lv = 105,bklv = 14,star = 1,ghost = 34,equip = {[1] = {id = 2106301,lv = 105},[2] = {id = 2106302,lv = 105},[3] = {id = 2106303,lv = 105},[4] = {id = 2106304,lv = 105},[5] = {id = 2106305,lv = 105},[6] = {id = 2106306,lv = 105},[7] = {id = 2106307,lv = 105},[8] = {id = 2106308,lv = 105}},mon = {id = 224,desc = "daily_ghost-10-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60111] = {
		[1] = {
			jlr = {cha = "daily_ghost",id = 6011110,cardId = 1101997,lv = 115,bklv = 15,star = 2,equip = {[1] = {id = 2007301,lv = 115},[2] = {id = 2007302,lv = 115},[3] = {id = 2007303,lv = 115},[4] = {id = 2007304,lv = 115},[5] = {id = 2007305,lv = 115},[6] = {id = 2007306,lv = 115},[7] = {id = 2007307,lv = 115},[8] = {id = 2007308,lv = 115}},mon = {id = 207,desc = "daily_ghost-11-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_ghost",id = 6011111,cardId = 1102997,lv = 115,bklv = 15,star = 2,ghost = 38,equip = {[1] = {id = 2107301,lv = 115},[2] = {id = 2107302,lv = 115},[3] = {id = 2107303,lv = 115},[4] = {id = 2107304,lv = 115},[5] = {id = 2107305,lv = 115},[6] = {id = 2107306,lv = 115},[7] = {id = 2107307,lv = 115},[8] = {id = 2107308,lv = 115}},mon = {id = 230,desc = "daily_ghost-11-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_ghost",id = 6011120,cardId = 1101997,lv = 115,bklv = 15,star = 2,equip = {[1] = {id = 2007301,lv = 115},[2] = {id = 2007302,lv = 115},[3] = {id = 2007303,lv = 115},[4] = {id = 2007304,lv = 115},[5] = {id = 2007305,lv = 115},[6] = {id = 2007306,lv = 115},[7] = {id = 2007307,lv = 115},[8] = {id = 2007308,lv = 115}},mon = {id = 205,desc = "daily_ghost-11-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_ghost",id = 6011121,cardId = 1102997,lv = 115,bklv = 15,star = 2,ghost = 38,equip = {[1] = {id = 2107301,lv = 115},[2] = {id = 2107302,lv = 115},[3] = {id = 2107303,lv = 115},[4] = {id = 2107304,lv = 115},[5] = {id = 2107305,lv = 115},[6] = {id = 2107306,lv = 115},[7] = {id = 2107307,lv = 115},[8] = {id = 2107308,lv = 115}},mon = {id = 219,desc = "daily_ghost-11-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_ghost",id = 6011130,cardId = 1101997,lv = 115,bklv = 15,star = 2,equip = {[1] = {id = 2007301,lv = 115},[2] = {id = 2007302,lv = 115},[3] = {id = 2007303,lv = 115},[4] = {id = 2007304,lv = 115},[5] = {id = 2007305,lv = 115},[6] = {id = 2007306,lv = 115},[7] = {id = 2007307,lv = 115},[8] = {id = 2007308,lv = 115}},mon = {id = 204,desc = "daily_ghost-11-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_ghost",id = 6011131,cardId = 1102997,lv = 115,bklv = 15,star = 2,ghost = 38,equip = {[1] = {id = 2107301,lv = 115},[2] = {id = 2107302,lv = 115},[3] = {id = 2107303,lv = 115},[4] = {id = 2107304,lv = 115},[5] = {id = 2107305,lv = 115},[6] = {id = 2107306,lv = 115},[7] = {id = 2107307,lv = 115},[8] = {id = 2107308,lv = 115}},mon = {id = 224,desc = "daily_ghost-11-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60112] = {
		[1] = {
			jlr = {cha = "daily_ghost",id = 6011210,cardId = 1101997,lv = 125,bklv = 16,star = 2,equip = {[1] = {id = 2008301,lv = 125},[2] = {id = 2008302,lv = 125},[3] = {id = 2008303,lv = 125},[4] = {id = 2008304,lv = 125},[5] = {id = 2008305,lv = 125},[6] = {id = 2008306,lv = 125},[7] = {id = 2008307,lv = 125},[8] = {id = 2008308,lv = 125}},mon = {id = 207,desc = "daily_ghost-12-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_ghost",id = 6011211,cardId = 1102997,lv = 125,bklv = 17,star = 2,ghost = 42,equip = {[1] = {id = 2108301,lv = 125},[2] = {id = 2108302,lv = 125},[3] = {id = 2108303,lv = 125},[4] = {id = 2108304,lv = 125},[5] = {id = 2108305,lv = 125},[6] = {id = 2108306,lv = 125},[7] = {id = 2108307,lv = 125},[8] = {id = 2108308,lv = 125}},mon = {id = 230,desc = "daily_ghost-12-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_ghost",id = 6011220,cardId = 1101997,lv = 125,bklv = 16,star = 2,equip = {[1] = {id = 2008301,lv = 125},[2] = {id = 2008302,lv = 125},[3] = {id = 2008303,lv = 125},[4] = {id = 2008304,lv = 125},[5] = {id = 2008305,lv = 125},[6] = {id = 2008306,lv = 125},[7] = {id = 2008307,lv = 125},[8] = {id = 2008308,lv = 125}},mon = {id = 205,desc = "daily_ghost-12-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_ghost",id = 6011221,cardId = 1102996,lv = 125,bklv = 17,star = 1,ghost = 42,equip = {[1] = {id = 2108301,lv = 125},[2] = {id = 2108302,lv = 125},[3] = {id = 2108303,lv = 125},[4] = {id = 2108304,lv = 125},[5] = {id = 2108305,lv = 125},[6] = {id = 2108306,lv = 125},[7] = {id = 2108307,lv = 125},[8] = {id = 2108308,lv = 125}},mon = {id = 219,desc = "daily_ghost-12-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_ghost",id = 6011230,cardId = 1101997,lv = 125,bklv = 16,star = 2,equip = {[1] = {id = 2008301,lv = 125},[2] = {id = 2008302,lv = 125},[3] = {id = 2008303,lv = 125},[4] = {id = 2008304,lv = 125},[5] = {id = 2008305,lv = 125},[6] = {id = 2008306,lv = 125},[7] = {id = 2008307,lv = 125},[8] = {id = 2008308,lv = 125}},mon = {id = 204,desc = "daily_ghost-12-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_ghost",id = 6011231,cardId = 1102997,lv = 125,bklv = 17,star = 2,ghost = 42,equip = {[1] = {id = 2108301,lv = 125},[2] = {id = 2108302,lv = 125},[3] = {id = 2108303,lv = 125},[4] = {id = 2108304,lv = 125},[5] = {id = 2108305,lv = 125},[6] = {id = 2108306,lv = 125},[7] = {id = 2108307,lv = 125},[8] = {id = 2108308,lv = 125}},mon = {id = 224,desc = "daily_ghost-12-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60113] = {
		[1] = {
			jlr = {cha = "daily_ghost",id = 6011310,cardId = 1101997,lv = 135,bklv = 18,star = 2,equip = {[1] = {id = 2009301,lv = 135},[2] = {id = 2009302,lv = 135},[3] = {id = 2009303,lv = 135},[4] = {id = 2009304,lv = 135},[5] = {id = 2009305,lv = 135},[6] = {id = 2009306,lv = 135},[7] = {id = 2009307,lv = 135},[8] = {id = 2009308,lv = 135}},mon = {id = 207,desc = "daily_ghost-13-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_ghost",id = 6011311,cardId = 1102997,lv = 135,bklv = 18,star = 2,ghost = 46,equip = {[1] = {id = 2109301,lv = 135},[2] = {id = 2109302,lv = 135},[3] = {id = 2109303,lv = 135},[4] = {id = 2109304,lv = 135},[5] = {id = 2109305,lv = 135},[6] = {id = 2109306,lv = 135},[7] = {id = 2109307,lv = 135},[8] = {id = 2109308,lv = 135}},mon = {id = 230,desc = "daily_ghost-13-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_ghost",id = 6011320,cardId = 1101997,lv = 135,bklv = 18,star = 1,equip = {[1] = {id = 2009301,lv = 135},[2] = {id = 2009302,lv = 135},[3] = {id = 2009303,lv = 135},[4] = {id = 2009304,lv = 135},[5] = {id = 2009305,lv = 135},[6] = {id = 2009306,lv = 135},[7] = {id = 2009307,lv = 135},[8] = {id = 2009308,lv = 135}},mon = {id = 205,desc = "daily_ghost-13-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_ghost",id = 6011321,cardId = 1102996,lv = 135,bklv = 18,star = 1,ghost = 46,equip = {[1] = {id = 2109301,lv = 135},[2] = {id = 2109302,lv = 135},[3] = {id = 2109303,lv = 135},[4] = {id = 2109304,lv = 135},[5] = {id = 2109305,lv = 135},[6] = {id = 2109306,lv = 135},[7] = {id = 2109307,lv = 135},[8] = {id = 2109308,lv = 135}},mon = {id = 219,desc = "daily_ghost-13-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_ghost",id = 6011330,cardId = 1101997,lv = 135,bklv = 18,star = 2,equip = {[1] = {id = 2009301,lv = 135},[2] = {id = 2009302,lv = 135},[3] = {id = 2009303,lv = 135},[4] = {id = 2009304,lv = 135},[5] = {id = 2009305,lv = 135},[6] = {id = 2009306,lv = 135},[7] = {id = 2009307,lv = 135},[8] = {id = 2009308,lv = 135}},mon = {id = 204,desc = "daily_ghost-13-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_ghost",id = 6011331,cardId = 1102997,lv = 135,bklv = 18,star = 2,ghost = 46,equip = {[1] = {id = 2109301,lv = 135},[2] = {id = 2109302,lv = 135},[3] = {id = 2109303,lv = 135},[4] = {id = 2109304,lv = 135},[5] = {id = 2109305,lv = 135},[6] = {id = 2109306,lv = 135},[7] = {id = 2109307,lv = 135},[8] = {id = 2109308,lv = 135}},mon = {id = 224,desc = "daily_ghost-13-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60201] = {
		[1] = {
			jlr = {cha = "daily_break",id = 6020110,cardId = 1101999,lv = 30,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 30},[2] = {id = 2001302,lv = 30},[3] = {id = 2001303,lv = 30},[4] = {id = 2001304,lv = 30},[5] = {id = 2001305,lv = 30},[6] = {id = 2001306,lv = 30},[7] = {id = 2001307,lv = 30},[8] = {id = 2001308,lv = 30}},mon = {id = 207,desc = "daily_break-1-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_break",id = 6020111,cardId = 1102999,lv = 30,bklv = 3,star = 2,ghost = 6,equip = {[1] = {id = 2101301,lv = 30},[2] = {id = 2101302,lv = 30},[3] = {id = 2101303,lv = 30},[4] = {id = 2101304,lv = 30},[5] = {id = 2101305,lv = 30},[6] = {id = 2101306,lv = 30},[7] = {id = 2101307,lv = 30},[8] = {id = 2101308,lv = 30}},mon = {id = 230,desc = "daily_break-1-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_break",id = 6020120,cardId = 1101998,lv = 30,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 30},[2] = {id = 2001302,lv = 30},[3] = {id = 2001303,lv = 30},[4] = {id = 2001304,lv = 30},[5] = {id = 2001305,lv = 30},[6] = {id = 2001306,lv = 30},[7] = {id = 2001307,lv = 30},[8] = {id = 2001308,lv = 30}},mon = {id = 205,desc = "daily_break-1-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_break",id = 6020121,cardId = 1102998,lv = 30,bklv = 3,star = 1,ghost = 6,equip = {[1] = {id = 2101301,lv = 30},[2] = {id = 2101302,lv = 30},[3] = {id = 2101303,lv = 30},[4] = {id = 2101304,lv = 30},[5] = {id = 2101305,lv = 30},[6] = {id = 2101306,lv = 30},[7] = {id = 2101307,lv = 30},[8] = {id = 2101308,lv = 30}},mon = {id = 219,desc = "daily_break-1-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_break",id = 6020130,cardId = 1101999,lv = 30,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 30},[2] = {id = 2001302,lv = 30},[3] = {id = 2001303,lv = 30},[4] = {id = 2001304,lv = 30},[5] = {id = 2001305,lv = 30},[6] = {id = 2001306,lv = 30},[7] = {id = 2001307,lv = 30},[8] = {id = 2001308,lv = 30}},mon = {id = 204,desc = "daily_break-1-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_break",id = 6020131,cardId = 1102999,lv = 30,bklv = 3,star = 2,ghost = 6,equip = {[1] = {id = 2101301,lv = 30},[2] = {id = 2101302,lv = 30},[3] = {id = 2101303,lv = 30},[4] = {id = 2101304,lv = 30},[5] = {id = 2101305,lv = 30},[6] = {id = 2101306,lv = 30},[7] = {id = 2101307,lv = 30},[8] = {id = 2101308,lv = 30}},mon = {id = 224,desc = "daily_break-1-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60202] = {
		[1] = {
			jlr = {cha = "daily_break",id = 6020210,cardId = 1101999,lv = 40,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 40},[2] = {id = 2001302,lv = 40},[3] = {id = 2001303,lv = 40},[4] = {id = 2001304,lv = 40},[5] = {id = 2001305,lv = 40},[6] = {id = 2001306,lv = 40},[7] = {id = 2001307,lv = 40},[8] = {id = 2001308,lv = 40}},mon = {id = 207,desc = "daily_break-2-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_break",id = 6020211,cardId = 1102999,lv = 40,bklv = 4,star = 2,ghost = 8,equip = {[1] = {id = 2102301,lv = 40},[2] = {id = 2102302,lv = 40},[3] = {id = 2102303,lv = 40},[4] = {id = 2102304,lv = 40},[5] = {id = 2102305,lv = 40},[6] = {id = 2102306,lv = 40},[7] = {id = 2102307,lv = 40},[8] = {id = 2102308,lv = 40}},mon = {id = 230,desc = "daily_break-2-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_break",id = 6020220,cardId = 1101998,lv = 40,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 40},[2] = {id = 2001302,lv = 40},[3] = {id = 2001303,lv = 40},[4] = {id = 2001304,lv = 40},[5] = {id = 2001305,lv = 40},[6] = {id = 2001306,lv = 40},[7] = {id = 2001307,lv = 40},[8] = {id = 2001308,lv = 40}},mon = {id = 205,desc = "daily_break-2-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_break",id = 6020221,cardId = 1102998,lv = 40,bklv = 4,star = 1,ghost = 8,equip = {[1] = {id = 2102301,lv = 40},[2] = {id = 2102302,lv = 40},[3] = {id = 2102303,lv = 40},[4] = {id = 2102304,lv = 40},[5] = {id = 2102305,lv = 40},[6] = {id = 2102306,lv = 40},[7] = {id = 2102307,lv = 40},[8] = {id = 2102308,lv = 40}},mon = {id = 219,desc = "daily_break-2-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_break",id = 6020230,cardId = 1101999,lv = 40,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 40},[2] = {id = 2001302,lv = 40},[3] = {id = 2001303,lv = 40},[4] = {id = 2001304,lv = 40},[5] = {id = 2001305,lv = 40},[6] = {id = 2001306,lv = 40},[7] = {id = 2001307,lv = 40},[8] = {id = 2001308,lv = 40}},mon = {id = 204,desc = "daily_break-2-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_break",id = 6020231,cardId = 1102999,lv = 40,bklv = 4,star = 2,ghost = 8,equip = {[1] = {id = 2102301,lv = 40},[2] = {id = 2102302,lv = 40},[3] = {id = 2102303,lv = 40},[4] = {id = 2102304,lv = 40},[5] = {id = 2102305,lv = 40},[6] = {id = 2102306,lv = 40},[7] = {id = 2102307,lv = 40},[8] = {id = 2102308,lv = 40}},mon = {id = 224,desc = "daily_break-2-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60203] = {
		[1] = {
			jlr = {cha = "daily_break",id = 6020310,cardId = 1101998,lv = 50,bklv = 6,star = 1,equip = {[1] = {id = 2002301,lv = 50},[2] = {id = 2002302,lv = 50},[3] = {id = 2002303,lv = 50},[4] = {id = 2002304,lv = 50},[5] = {id = 2002305,lv = 50},[6] = {id = 2002306,lv = 50},[7] = {id = 2002307,lv = 50},[8] = {id = 2002308,lv = 50}},mon = {id = 207,desc = "daily_break-3-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_break",id = 6020311,cardId = 1102998,lv = 50,bklv = 6,star = 1,ghost = 12,equip = {[1] = {id = 2102301,lv = 50},[2] = {id = 2102302,lv = 50},[3] = {id = 2102303,lv = 50},[4] = {id = 2102304,lv = 50},[5] = {id = 2102305,lv = 50},[6] = {id = 2102306,lv = 50},[7] = {id = 2102307,lv = 50},[8] = {id = 2102308,lv = 50}},mon = {id = 230,desc = "daily_break-3-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_break",id = 6020320,cardId = 1101998,lv = 50,bklv = 6,star = 1,equip = {[1] = {id = 2002301,lv = 50},[2] = {id = 2002302,lv = 50},[3] = {id = 2002303,lv = 50},[4] = {id = 2002304,lv = 50},[5] = {id = 2002305,lv = 50},[6] = {id = 2002306,lv = 50},[7] = {id = 2002307,lv = 50},[8] = {id = 2002308,lv = 50}},mon = {id = 205,desc = "daily_break-3-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_break",id = 6020321,cardId = 1102998,lv = 50,bklv = 6,star = 1,ghost = 12,equip = {[1] = {id = 2102301,lv = 50},[2] = {id = 2102302,lv = 50},[3] = {id = 2102303,lv = 50},[4] = {id = 2102304,lv = 50},[5] = {id = 2102305,lv = 50},[6] = {id = 2102306,lv = 50},[7] = {id = 2102307,lv = 50},[8] = {id = 2102308,lv = 50}},mon = {id = 219,desc = "daily_break-3-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_break",id = 6020330,cardId = 1101998,lv = 50,bklv = 6,star = 1,equip = {[1] = {id = 2002301,lv = 50},[2] = {id = 2002302,lv = 50},[3] = {id = 2002303,lv = 50},[4] = {id = 2002304,lv = 50},[5] = {id = 2002305,lv = 50},[6] = {id = 2002306,lv = 50},[7] = {id = 2002307,lv = 50},[8] = {id = 2002308,lv = 50}},mon = {id = 204,desc = "daily_break-3-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_break",id = 6020331,cardId = 1102998,lv = 50,bklv = 6,star = 1,ghost = 12,equip = {[1] = {id = 2102301,lv = 50},[2] = {id = 2102302,lv = 50},[3] = {id = 2102303,lv = 50},[4] = {id = 2102304,lv = 50},[5] = {id = 2102305,lv = 50},[6] = {id = 2102306,lv = 50},[7] = {id = 2102307,lv = 50},[8] = {id = 2102308,lv = 50}},mon = {id = 224,desc = "daily_break-3-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60204] = {
		[1] = {
			jlr = {cha = "daily_break",id = 6020410,cardId = 1101998,lv = 60,bklv = 7,star = 1,equip = {[1] = {id = 2002301,lv = 60},[2] = {id = 2002302,lv = 60},[3] = {id = 2002303,lv = 60},[4] = {id = 2002304,lv = 60},[5] = {id = 2002305,lv = 60},[6] = {id = 2002306,lv = 60},[7] = {id = 2002307,lv = 60},[8] = {id = 2002308,lv = 60}},mon = {id = 207,desc = "daily_break-4-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_break",id = 6020411,cardId = 1102998,lv = 60,bklv = 8,star = 1,ghost = 16,equip = {[1] = {id = 2103301,lv = 60},[2] = {id = 2103302,lv = 60},[3] = {id = 2103303,lv = 60},[4] = {id = 2103304,lv = 60},[5] = {id = 2103305,lv = 60},[6] = {id = 2103306,lv = 60},[7] = {id = 2103307,lv = 60},[8] = {id = 2103308,lv = 60}},mon = {id = 230,desc = "daily_break-4-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_break",id = 6020420,cardId = 1101998,lv = 60,bklv = 7,star = 1,equip = {[1] = {id = 2002301,lv = 60},[2] = {id = 2002302,lv = 60},[3] = {id = 2002303,lv = 60},[4] = {id = 2002304,lv = 60},[5] = {id = 2002305,lv = 60},[6] = {id = 2002306,lv = 60},[7] = {id = 2002307,lv = 60},[8] = {id = 2002308,lv = 60}},mon = {id = 205,desc = "daily_break-4-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_break",id = 6020421,cardId = 1102998,lv = 60,bklv = 8,star = 2,ghost = 16,equip = {[1] = {id = 2103301,lv = 60},[2] = {id = 2103302,lv = 60},[3] = {id = 2103303,lv = 60},[4] = {id = 2103304,lv = 60},[5] = {id = 2103305,lv = 60},[6] = {id = 2103306,lv = 60},[7] = {id = 2103307,lv = 60},[8] = {id = 2103308,lv = 60}},mon = {id = 219,desc = "daily_break-4-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_break",id = 6020430,cardId = 1101998,lv = 60,bklv = 7,star = 1,equip = {[1] = {id = 2002301,lv = 60},[2] = {id = 2002302,lv = 60},[3] = {id = 2002303,lv = 60},[4] = {id = 2002304,lv = 60},[5] = {id = 2002305,lv = 60},[6] = {id = 2002306,lv = 60},[7] = {id = 2002307,lv = 60},[8] = {id = 2002308,lv = 60}},mon = {id = 204,desc = "daily_break-4-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_break",id = 6020431,cardId = 1102998,lv = 60,bklv = 8,star = 1,ghost = 16,equip = {[1] = {id = 2103301,lv = 60},[2] = {id = 2103302,lv = 60},[3] = {id = 2103303,lv = 60},[4] = {id = 2103304,lv = 60},[5] = {id = 2103305,lv = 60},[6] = {id = 2103306,lv = 60},[7] = {id = 2103307,lv = 60},[8] = {id = 2103308,lv = 60}},mon = {id = 224,desc = "daily_break-4-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60205] = {
		[1] = {
			jlr = {cha = "daily_break",id = 6020510,cardId = 1101998,lv = 70,bklv = 9,star = 1,equip = {[1] = {id = 2003301,lv = 70},[2] = {id = 2003302,lv = 70},[3] = {id = 2003303,lv = 70},[4] = {id = 2003304,lv = 70},[5] = {id = 2003305,lv = 70},[6] = {id = 2003306,lv = 70},[7] = {id = 2003307,lv = 70},[8] = {id = 2003308,lv = 70}},mon = {id = 207,desc = "daily_break-5-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_break",id = 6020511,cardId = 1102998,lv = 70,bklv = 9,star = 2,ghost = 20,equip = {[1] = {id = 2103301,lv = 70},[2] = {id = 2103302,lv = 70},[3] = {id = 2103303,lv = 70},[4] = {id = 2103304,lv = 70},[5] = {id = 2103305,lv = 70},[6] = {id = 2103306,lv = 70},[7] = {id = 2103307,lv = 70},[8] = {id = 2103308,lv = 70}},mon = {id = 230,desc = "daily_break-5-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_break",id = 6020520,cardId = 1101998,lv = 70,bklv = 9,star = 1,equip = {[1] = {id = 2003301,lv = 70},[2] = {id = 2003302,lv = 70},[3] = {id = 2003303,lv = 70},[4] = {id = 2003304,lv = 70},[5] = {id = 2003305,lv = 70},[6] = {id = 2003306,lv = 70},[7] = {id = 2003307,lv = 70},[8] = {id = 2003308,lv = 70}},mon = {id = 205,desc = "daily_break-5-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_break",id = 6020521,cardId = 1102998,lv = 70,bklv = 9,star = 2,ghost = 20,equip = {[1] = {id = 2103301,lv = 70},[2] = {id = 2103302,lv = 70},[3] = {id = 2103303,lv = 70},[4] = {id = 2103304,lv = 70},[5] = {id = 2103305,lv = 70},[6] = {id = 2103306,lv = 70},[7] = {id = 2103307,lv = 70},[8] = {id = 2103308,lv = 70}},mon = {id = 219,desc = "daily_break-5-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_break",id = 6020530,cardId = 1101998,lv = 70,bklv = 9,star = 1,equip = {[1] = {id = 2003301,lv = 70},[2] = {id = 2003302,lv = 70},[3] = {id = 2003303,lv = 70},[4] = {id = 2003304,lv = 70},[5] = {id = 2003305,lv = 70},[6] = {id = 2003306,lv = 70},[7] = {id = 2003307,lv = 70},[8] = {id = 2003308,lv = 70}},mon = {id = 204,desc = "daily_break-5-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_break",id = 6020531,cardId = 1102998,lv = 70,bklv = 9,star = 2,ghost = 20,equip = {[1] = {id = 2103301,lv = 70},[2] = {id = 2103302,lv = 70},[3] = {id = 2103303,lv = 70},[4] = {id = 2103304,lv = 70},[5] = {id = 2103305,lv = 70},[6] = {id = 2103306,lv = 70},[7] = {id = 2103307,lv = 70},[8] = {id = 2103308,lv = 70}},mon = {id = 224,desc = "daily_break-5-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60206] = {
		[1] = {
			jlr = {cha = "daily_break",id = 6020610,cardId = 1101998,lv = 80,bklv = 10,star = 2,equip = {[1] = {id = 2004301,lv = 80},[2] = {id = 2004302,lv = 80},[3] = {id = 2004303,lv = 80},[4] = {id = 2004304,lv = 80},[5] = {id = 2004305,lv = 80},[6] = {id = 2004306,lv = 80},[7] = {id = 2004307,lv = 80},[8] = {id = 2004308,lv = 80}},mon = {id = 207,desc = "daily_break-6-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_break",id = 6020611,cardId = 1102998,lv = 80,bklv = 11,star = 2,ghost = 24,equip = {[1] = {id = 2104301,lv = 80},[2] = {id = 2104302,lv = 80},[3] = {id = 2104303,lv = 80},[4] = {id = 2104304,lv = 80},[5] = {id = 2104305,lv = 80},[6] = {id = 2104306,lv = 80},[7] = {id = 2104307,lv = 80},[8] = {id = 2104308,lv = 80}},mon = {id = 230,desc = "daily_break-6-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_break",id = 6020620,cardId = 1101998,lv = 80,bklv = 10,star = 2,equip = {[1] = {id = 2004301,lv = 80},[2] = {id = 2004302,lv = 80},[3] = {id = 2004303,lv = 80},[4] = {id = 2004304,lv = 80},[5] = {id = 2004305,lv = 80},[6] = {id = 2004306,lv = 80},[7] = {id = 2004307,lv = 80},[8] = {id = 2004308,lv = 80}},mon = {id = 205,desc = "daily_break-6-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_break",id = 6020621,cardId = 1102998,lv = 80,bklv = 11,star = 2,ghost = 24,equip = {[1] = {id = 2104301,lv = 80},[2] = {id = 2104302,lv = 80},[3] = {id = 2104303,lv = 80},[4] = {id = 2104304,lv = 80},[5] = {id = 2104305,lv = 80},[6] = {id = 2104306,lv = 80},[7] = {id = 2104307,lv = 80},[8] = {id = 2104308,lv = 80}},mon = {id = 219,desc = "daily_break-6-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_break",id = 6020630,cardId = 1101998,lv = 80,bklv = 10,star = 2,equip = {[1] = {id = 2004301,lv = 80},[2] = {id = 2004302,lv = 80},[3] = {id = 2004303,lv = 80},[4] = {id = 2004304,lv = 80},[5] = {id = 2004305,lv = 80},[6] = {id = 2004306,lv = 80},[7] = {id = 2004307,lv = 80},[8] = {id = 2004308,lv = 80}},mon = {id = 204,desc = "daily_break-6-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_break",id = 6020631,cardId = 1102998,lv = 80,bklv = 11,star = 2,ghost = 24,equip = {[1] = {id = 2104301,lv = 80},[2] = {id = 2104302,lv = 80},[3] = {id = 2104303,lv = 80},[4] = {id = 2104304,lv = 80},[5] = {id = 2104305,lv = 80},[6] = {id = 2104306,lv = 80},[7] = {id = 2104307,lv = 80},[8] = {id = 2104308,lv = 80}},mon = {id = 224,desc = "daily_break-6-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60207] = {
		[1] = {
			jlr = {cha = "daily_break",id = 6020710,cardId = 1101998,lv = 90,bklv = 12,star = 2,equip = {[1] = {id = 2005301,lv = 90},[2] = {id = 2005302,lv = 90},[3] = {id = 2005303,lv = 90},[4] = {id = 2005304,lv = 90},[5] = {id = 2005305,lv = 90},[6] = {id = 2005306,lv = 90},[7] = {id = 2005307,lv = 90},[8] = {id = 2005308,lv = 90}},mon = {id = 207,desc = "daily_break-7-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_break",id = 6020711,cardId = 1102998,lv = 90,bklv = 12,star = 2,ghost = 28,equip = {[1] = {id = 2105301,lv = 90},[2] = {id = 2105302,lv = 90},[3] = {id = 2105303,lv = 90},[4] = {id = 2105304,lv = 90},[5] = {id = 2105305,lv = 90},[6] = {id = 2105306,lv = 90},[7] = {id = 2105307,lv = 90},[8] = {id = 2105308,lv = 90}},mon = {id = 230,desc = "daily_break-7-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_break",id = 6020720,cardId = 1101998,lv = 90,bklv = 12,star = 2,equip = {[1] = {id = 2005301,lv = 90},[2] = {id = 2005302,lv = 90},[3] = {id = 2005303,lv = 90},[4] = {id = 2005304,lv = 90},[5] = {id = 2005305,lv = 90},[6] = {id = 2005306,lv = 90},[7] = {id = 2005307,lv = 90},[8] = {id = 2005308,lv = 90}},mon = {id = 205,desc = "daily_break-7-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_break",id = 6020721,cardId = 1102997,lv = 90,bklv = 12,star = 1,ghost = 28,equip = {[1] = {id = 2105301,lv = 90},[2] = {id = 2105302,lv = 90},[3] = {id = 2105303,lv = 90},[4] = {id = 2105304,lv = 90},[5] = {id = 2105305,lv = 90},[6] = {id = 2105306,lv = 90},[7] = {id = 2105307,lv = 90},[8] = {id = 2105308,lv = 90}},mon = {id = 219,desc = "daily_break-7-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_break",id = 6020730,cardId = 1101998,lv = 90,bklv = 12,star = 2,equip = {[1] = {id = 2005301,lv = 90},[2] = {id = 2005302,lv = 90},[3] = {id = 2005303,lv = 90},[4] = {id = 2005304,lv = 90},[5] = {id = 2005305,lv = 90},[6] = {id = 2005306,lv = 90},[7] = {id = 2005307,lv = 90},[8] = {id = 2005308,lv = 90}},mon = {id = 204,desc = "daily_break-7-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_break",id = 6020731,cardId = 1102998,lv = 90,bklv = 12,star = 2,ghost = 28,equip = {[1] = {id = 2105301,lv = 90},[2] = {id = 2105302,lv = 90},[3] = {id = 2105303,lv = 90},[4] = {id = 2105304,lv = 90},[5] = {id = 2105305,lv = 90},[6] = {id = 2105306,lv = 90},[7] = {id = 2105307,lv = 90},[8] = {id = 2105308,lv = 90}},mon = {id = 224,desc = "daily_break-7-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60208] = {
		[1] = {
			jlr = {cha = "daily_break",id = 6020810,cardId = 1101997,lv = 100,bklv = 14,star = 1,equip = {[1] = {id = 2006301,lv = 100},[2] = {id = 2006302,lv = 100},[3] = {id = 2006303,lv = 100},[4] = {id = 2006304,lv = 100},[5] = {id = 2006305,lv = 100},[6] = {id = 2006306,lv = 100},[7] = {id = 2006307,lv = 100},[8] = {id = 2006308,lv = 100}},mon = {id = 207,desc = "daily_break-8-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_break",id = 6020811,cardId = 1102997,lv = 100,bklv = 13,star = 1,ghost = 32,equip = {[1] = {id = 2106301,lv = 100},[2] = {id = 2106302,lv = 100},[3] = {id = 2106303,lv = 100},[4] = {id = 2106304,lv = 100},[5] = {id = 2106305,lv = 100},[6] = {id = 2106306,lv = 100},[7] = {id = 2106307,lv = 100},[8] = {id = 2106308,lv = 100}},mon = {id = 230,desc = "daily_break-8-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_break",id = 6020820,cardId = 1101997,lv = 100,bklv = 14,star = 1,equip = {[1] = {id = 2006301,lv = 100},[2] = {id = 2006302,lv = 100},[3] = {id = 2006303,lv = 100},[4] = {id = 2006304,lv = 100},[5] = {id = 2006305,lv = 100},[6] = {id = 2006306,lv = 100},[7] = {id = 2006307,lv = 100},[8] = {id = 2006308,lv = 100}},mon = {id = 205,desc = "daily_break-8-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_break",id = 6020821,cardId = 1102997,lv = 100,bklv = 13,star = 1,ghost = 32,equip = {[1] = {id = 2106301,lv = 100},[2] = {id = 2106302,lv = 100},[3] = {id = 2106303,lv = 100},[4] = {id = 2106304,lv = 100},[5] = {id = 2106305,lv = 100},[6] = {id = 2106306,lv = 100},[7] = {id = 2106307,lv = 100},[8] = {id = 2106308,lv = 100}},mon = {id = 219,desc = "daily_break-8-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_break",id = 6020830,cardId = 1101997,lv = 100,bklv = 14,star = 1,equip = {[1] = {id = 2006301,lv = 100},[2] = {id = 2006302,lv = 100},[3] = {id = 2006303,lv = 100},[4] = {id = 2006304,lv = 100},[5] = {id = 2006305,lv = 100},[6] = {id = 2006306,lv = 100},[7] = {id = 2006307,lv = 100},[8] = {id = 2006308,lv = 100}},mon = {id = 204,desc = "daily_break-8-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_break",id = 6020831,cardId = 1102997,lv = 100,bklv = 13,star = 1,ghost = 32,equip = {[1] = {id = 2106301,lv = 100},[2] = {id = 2106302,lv = 100},[3] = {id = 2106303,lv = 100},[4] = {id = 2106304,lv = 100},[5] = {id = 2106305,lv = 100},[6] = {id = 2106306,lv = 100},[7] = {id = 2106307,lv = 100},[8] = {id = 2106308,lv = 100}},mon = {id = 224,desc = "daily_break-8-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60209] = {
		[1] = {
			jlr = {cha = "daily_break",id = 6020910,cardId = 1101997,lv = 110,bklv = 16,star = 1,equip = {[1] = {id = 2007301,lv = 110},[2] = {id = 2007302,lv = 110},[3] = {id = 2007303,lv = 110},[4] = {id = 2007304,lv = 110},[5] = {id = 2007305,lv = 110},[6] = {id = 2007306,lv = 110},[7] = {id = 2007307,lv = 110},[8] = {id = 2007308,lv = 110}},mon = {id = 207,desc = "daily_break-9-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_break",id = 6020911,cardId = 1102997,lv = 110,bklv = 15,star = 1,ghost = 36,equip = {[1] = {id = 2107301,lv = 110},[2] = {id = 2107302,lv = 110},[3] = {id = 2107303,lv = 110},[4] = {id = 2107304,lv = 110},[5] = {id = 2107305,lv = 110},[6] = {id = 2107306,lv = 110},[7] = {id = 2107307,lv = 110},[8] = {id = 2107308,lv = 110}},mon = {id = 230,desc = "daily_break-9-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_break",id = 6020920,cardId = 1101997,lv = 110,bklv = 16,star = 2,equip = {[1] = {id = 2007301,lv = 110},[2] = {id = 2007302,lv = 110},[3] = {id = 2007303,lv = 110},[4] = {id = 2007304,lv = 110},[5] = {id = 2007305,lv = 110},[6] = {id = 2007306,lv = 110},[7] = {id = 2007307,lv = 110},[8] = {id = 2007308,lv = 110}},mon = {id = 205,desc = "daily_break-9-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_break",id = 6020921,cardId = 1102997,lv = 110,bklv = 15,star = 2,ghost = 36,equip = {[1] = {id = 2107301,lv = 110},[2] = {id = 2107302,lv = 110},[3] = {id = 2107303,lv = 110},[4] = {id = 2107304,lv = 110},[5] = {id = 2107305,lv = 110},[6] = {id = 2107306,lv = 110},[7] = {id = 2107307,lv = 110},[8] = {id = 2107308,lv = 110}},mon = {id = 219,desc = "daily_break-9-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_break",id = 6020930,cardId = 1101997,lv = 110,bklv = 16,star = 1,equip = {[1] = {id = 2007301,lv = 110},[2] = {id = 2007302,lv = 110},[3] = {id = 2007303,lv = 110},[4] = {id = 2007304,lv = 110},[5] = {id = 2007305,lv = 110},[6] = {id = 2007306,lv = 110},[7] = {id = 2007307,lv = 110},[8] = {id = 2007308,lv = 110}},mon = {id = 204,desc = "daily_break-9-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_break",id = 6020931,cardId = 1102997,lv = 110,bklv = 15,star = 1,ghost = 36,equip = {[1] = {id = 2107301,lv = 110},[2] = {id = 2107302,lv = 110},[3] = {id = 2107303,lv = 110},[4] = {id = 2107304,lv = 110},[5] = {id = 2107305,lv = 110},[6] = {id = 2107306,lv = 110},[7] = {id = 2107307,lv = 110},[8] = {id = 2107308,lv = 110}},mon = {id = 224,desc = "daily_break-9-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60210] = {
		[1] = {
			jlr = {cha = "daily_break",id = 6021010,cardId = 1101997,lv = 120,bklv = 17,star = 2,equip = {[1] = {id = 2008301,lv = 120},[2] = {id = 2008302,lv = 120},[3] = {id = 2008303,lv = 120},[4] = {id = 2008304,lv = 120},[5] = {id = 2008305,lv = 120},[6] = {id = 2008306,lv = 120},[7] = {id = 2008307,lv = 120},[8] = {id = 2008308,lv = 120}},mon = {id = 207,desc = "daily_break-10-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_break",id = 6021011,cardId = 1102997,lv = 120,bklv = 16,star = 2,ghost = 40,equip = {[1] = {id = 2108301,lv = 120},[2] = {id = 2108302,lv = 120},[3] = {id = 2108303,lv = 120},[4] = {id = 2108304,lv = 120},[5] = {id = 2108305,lv = 120},[6] = {id = 2108306,lv = 120},[7] = {id = 2108307,lv = 120},[8] = {id = 2108308,lv = 120}},mon = {id = 230,desc = "daily_break-10-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_break",id = 6021020,cardId = 1101997,lv = 120,bklv = 17,star = 2,equip = {[1] = {id = 2008301,lv = 120},[2] = {id = 2008302,lv = 120},[3] = {id = 2008303,lv = 120},[4] = {id = 2008304,lv = 120},[5] = {id = 2008305,lv = 120},[6] = {id = 2008306,lv = 120},[7] = {id = 2008307,lv = 120},[8] = {id = 2008308,lv = 120}},mon = {id = 205,desc = "daily_break-10-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_break",id = 6021021,cardId = 1102997,lv = 120,bklv = 16,star = 2,ghost = 40,equip = {[1] = {id = 2108301,lv = 120},[2] = {id = 2108302,lv = 120},[3] = {id = 2108303,lv = 120},[4] = {id = 2108304,lv = 120},[5] = {id = 2108305,lv = 120},[6] = {id = 2108306,lv = 120},[7] = {id = 2108307,lv = 120},[8] = {id = 2108308,lv = 120}},mon = {id = 219,desc = "daily_break-10-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_break",id = 6021030,cardId = 1101997,lv = 120,bklv = 17,star = 2,equip = {[1] = {id = 2008301,lv = 120},[2] = {id = 2008302,lv = 120},[3] = {id = 2008303,lv = 120},[4] = {id = 2008304,lv = 120},[5] = {id = 2008305,lv = 120},[6] = {id = 2008306,lv = 120},[7] = {id = 2008307,lv = 120},[8] = {id = 2008308,lv = 120}},mon = {id = 204,desc = "daily_break-10-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_break",id = 6021031,cardId = 1102997,lv = 120,bklv = 16,star = 2,ghost = 40,equip = {[1] = {id = 2108301,lv = 120},[2] = {id = 2108302,lv = 120},[3] = {id = 2108303,lv = 120},[4] = {id = 2108304,lv = 120},[5] = {id = 2108305,lv = 120},[6] = {id = 2108306,lv = 120},[7] = {id = 2108307,lv = 120},[8] = {id = 2108308,lv = 120}},mon = {id = 224,desc = "daily_break-10-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60211] = {
		[1] = {
			jlr = {cha = "daily_break",id = 6021110,cardId = 1101997,lv = 130,bklv = 18,star = 2,equip = {[1] = {id = 2009301,lv = 130},[2] = {id = 2009302,lv = 130},[3] = {id = 2009303,lv = 130},[4] = {id = 2009304,lv = 130},[5] = {id = 2009305,lv = 130},[6] = {id = 2009306,lv = 130},[7] = {id = 2009307,lv = 130},[8] = {id = 2009308,lv = 130}},mon = {id = 207,desc = "daily_break-11-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_break",id = 6021111,cardId = 1102997,lv = 130,bklv = 17,star = 2,ghost = 44,equip = {[1] = {id = 2109301,lv = 130},[2] = {id = 2109302,lv = 130},[3] = {id = 2109303,lv = 130},[4] = {id = 2109304,lv = 130},[5] = {id = 2109305,lv = 130},[6] = {id = 2109306,lv = 130},[7] = {id = 2109307,lv = 130},[8] = {id = 2109308,lv = 130}},mon = {id = 230,desc = "daily_break-11-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_break",id = 6021120,cardId = 1101997,lv = 130,bklv = 18,star = 2,equip = {[1] = {id = 2009301,lv = 130},[2] = {id = 2009302,lv = 130},[3] = {id = 2009303,lv = 130},[4] = {id = 2009304,lv = 130},[5] = {id = 2009305,lv = 130},[6] = {id = 2009306,lv = 130},[7] = {id = 2009307,lv = 130},[8] = {id = 2009308,lv = 130}},mon = {id = 205,desc = "daily_break-11-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_break",id = 6021121,cardId = 1102996,lv = 130,bklv = 17,star = 1,ghost = 44,equip = {[1] = {id = 2109301,lv = 130},[2] = {id = 2109302,lv = 130},[3] = {id = 2109303,lv = 130},[4] = {id = 2109304,lv = 130},[5] = {id = 2109305,lv = 130},[6] = {id = 2109306,lv = 130},[7] = {id = 2109307,lv = 130},[8] = {id = 2109308,lv = 130}},mon = {id = 219,desc = "daily_break-11-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_break",id = 6021130,cardId = 1101997,lv = 130,bklv = 18,star = 2,equip = {[1] = {id = 2009301,lv = 130},[2] = {id = 2009302,lv = 130},[3] = {id = 2009303,lv = 130},[4] = {id = 2009304,lv = 130},[5] = {id = 2009305,lv = 130},[6] = {id = 2009306,lv = 130},[7] = {id = 2009307,lv = 130},[8] = {id = 2009308,lv = 130}},mon = {id = 204,desc = "daily_break-11-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_break",id = 6021131,cardId = 1102997,lv = 130,bklv = 17,star = 2,ghost = 44,equip = {[1] = {id = 2109301,lv = 130},[2] = {id = 2109302,lv = 130},[3] = {id = 2109303,lv = 130},[4] = {id = 2109304,lv = 130},[5] = {id = 2109305,lv = 130},[6] = {id = 2109306,lv = 130},[7] = {id = 2109307,lv = 130},[8] = {id = 2109308,lv = 130}},mon = {id = 224,desc = "daily_break-11-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60212] = {
		[1] = {
			jlr = {cha = "daily_break",id = 6021210,cardId = 1101997,lv = 140,bklv = 20,star = 2,equip = {[1] = {id = 2010301,lv = 140},[2] = {id = 2010302,lv = 140},[3] = {id = 2010303,lv = 140},[4] = {id = 2010304,lv = 140},[5] = {id = 2010305,lv = 140},[6] = {id = 2010306,lv = 140},[7] = {id = 2010307,lv = 140},[8] = {id = 2010308,lv = 140}},mon = {id = 207,desc = "daily_break-12-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_break",id = 6021211,cardId = 1102997,lv = 140,bklv = 19,star = 2,ghost = 48,equip = {[1] = {id = 2110301,lv = 140},[2] = {id = 2110302,lv = 140},[3] = {id = 2110303,lv = 140},[4] = {id = 2110304,lv = 140},[5] = {id = 2110305,lv = 140},[6] = {id = 2110306,lv = 140},[7] = {id = 2110307,lv = 140},[8] = {id = 2110308,lv = 140}},mon = {id = 230,desc = "daily_break-12-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_break",id = 6021220,cardId = 1101997,lv = 140,bklv = 20,star = 1,equip = {[1] = {id = 2010301,lv = 140},[2] = {id = 2010302,lv = 140},[3] = {id = 2010303,lv = 140},[4] = {id = 2010304,lv = 140},[5] = {id = 2010305,lv = 140},[6] = {id = 2010306,lv = 140},[7] = {id = 2010307,lv = 140},[8] = {id = 2010308,lv = 140}},mon = {id = 205,desc = "daily_break-12-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_break",id = 6021221,cardId = 1102996,lv = 140,bklv = 19,star = 1,ghost = 48,equip = {[1] = {id = 2110301,lv = 140},[2] = {id = 2110302,lv = 140},[3] = {id = 2110303,lv = 140},[4] = {id = 2110304,lv = 140},[5] = {id = 2110305,lv = 140},[6] = {id = 2110306,lv = 140},[7] = {id = 2110307,lv = 140},[8] = {id = 2110308,lv = 140}},mon = {id = 219,desc = "daily_break-12-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_break",id = 6021230,cardId = 1101997,lv = 140,bklv = 20,star = 2,equip = {[1] = {id = 2010301,lv = 140},[2] = {id = 2010302,lv = 140},[3] = {id = 2010303,lv = 140},[4] = {id = 2010304,lv = 140},[5] = {id = 2010305,lv = 140},[6] = {id = 2010306,lv = 140},[7] = {id = 2010307,lv = 140},[8] = {id = 2010308,lv = 140}},mon = {id = 204,desc = "daily_break-12-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_break",id = 6021231,cardId = 1102997,lv = 140,bklv = 19,star = 2,ghost = 48,equip = {[1] = {id = 2110301,lv = 140},[2] = {id = 2110302,lv = 140},[3] = {id = 2110303,lv = 140},[4] = {id = 2110304,lv = 140},[5] = {id = 2110305,lv = 140},[6] = {id = 2110306,lv = 140},[7] = {id = 2110307,lv = 140},[8] = {id = 2110308,lv = 140}},mon = {id = 224,desc = "daily_break-12-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60301] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6030110,cardId = 1101999,lv = 20,bklv = 3,star = 1,mon = {id = 207,desc = "daily_gold-1-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6030111,cardId = 1102999,lv = 20,bklv = 2,star = 1,ghost = 4,mon = {id = 230,desc = "daily_gold-1-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6030120,cardId = 1101999,lv = 20,bklv = 3,star = 1,mon = {id = 205,desc = "daily_gold-1-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6030121,cardId = 1102999,lv = 20,bklv = 2,star = 1,ghost = 4,mon = {id = 219,desc = "daily_gold-1-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6030130,cardId = 1101999,lv = 20,bklv = 3,star = 1,mon = {id = 204,desc = "daily_gold-1-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6030131,cardId = 1102999,lv = 20,bklv = 2,star = 1,ghost = 4,mon = {id = 224,desc = "daily_gold-1-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60302] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6030210,cardId = 1101999,lv = 20,bklv = 3,star = 2,equip = {[1] = {id = 2001301,lv = 20},[2] = {id = 2001302,lv = 20},[3] = {id = 2001303,lv = 20},[4] = {id = 2001304,lv = 20},[5] = {id = 2001305,lv = 20},[6] = {id = 2001306,lv = 20},[7] = {id = 2001307,lv = 20},[8] = {id = 2001308,lv = 20}},mon = {id = 207,desc = "daily_gold-2-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6030211,cardId = 1102999,lv = 20,bklv = 2,star = 2,ghost = 4,equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 230,desc = "daily_gold-2-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6030220,cardId = 1101998,lv = 20,bklv = 3,star = 1,equip = {[1] = {id = 2001301,lv = 20},[2] = {id = 2001302,lv = 20},[3] = {id = 2001303,lv = 20},[4] = {id = 2001304,lv = 20},[5] = {id = 2001305,lv = 20},[6] = {id = 2001306,lv = 20},[7] = {id = 2001307,lv = 20},[8] = {id = 2001308,lv = 20}},mon = {id = 205,desc = "daily_gold-2-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6030221,cardId = 1102998,lv = 20,bklv = 2,star = 1,ghost = 4,equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 219,desc = "daily_gold-2-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6030230,cardId = 1101999,lv = 20,bklv = 3,star = 2,equip = {[1] = {id = 2001301,lv = 20},[2] = {id = 2001302,lv = 20},[3] = {id = 2001303,lv = 20},[4] = {id = 2001304,lv = 20},[5] = {id = 2001305,lv = 20},[6] = {id = 2001306,lv = 20},[7] = {id = 2001307,lv = 20},[8] = {id = 2001308,lv = 20}},mon = {id = 204,desc = "daily_gold-2-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6030231,cardId = 1102999,lv = 20,bklv = 2,star = 2,ghost = 4,equip = {[1] = {id = 2101301,lv = 20},[2] = {id = 2101302,lv = 20},[3] = {id = 2101303,lv = 20},[4] = {id = 2101304,lv = 20},[5] = {id = 2101305,lv = 20},[6] = {id = 2101306,lv = 20},[7] = {id = 2101307,lv = 20},[8] = {id = 2101308,lv = 20}},mon = {id = 224,desc = "daily_gold-2-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60303] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6030310,cardId = 1101999,lv = 20,bklv = 3,star = 3,equip = {[1] = {id = 2001401,lv = 20},[2] = {id = 2001402,lv = 20},[3] = {id = 2001403,lv = 20},[4] = {id = 2001404,lv = 20},[5] = {id = 2001405,lv = 20},[6] = {id = 2001406,lv = 20},[7] = {id = 2001407,lv = 20},[8] = {id = 2001408,lv = 20}},mon = {id = 207,desc = "daily_gold-3-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6030311,cardId = 1102999,lv = 20,bklv = 2,star = 3,ghost = 4,equip = {[1] = {id = 2101401,lv = 20},[2] = {id = 2101402,lv = 20},[3] = {id = 2101403,lv = 20},[4] = {id = 2101404,lv = 20},[5] = {id = 2101405,lv = 20},[6] = {id = 2101406,lv = 20},[7] = {id = 2101407,lv = 20},[8] = {id = 2101408,lv = 20}},mon = {id = 230,desc = "daily_gold-3-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6030320,cardId = 1101998,lv = 20,bklv = 3,star = 3,equip = {[1] = {id = 2001401,lv = 20},[2] = {id = 2001402,lv = 20},[3] = {id = 2001403,lv = 20},[4] = {id = 2001404,lv = 20},[5] = {id = 2001405,lv = 20},[6] = {id = 2001406,lv = 20},[7] = {id = 2001407,lv = 20},[8] = {id = 2001408,lv = 20}},mon = {id = 205,desc = "daily_gold-3-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6030321,cardId = 1102998,lv = 20,bklv = 2,star = 3,ghost = 4,equip = {[1] = {id = 2101401,lv = 20},[2] = {id = 2101402,lv = 20},[3] = {id = 2101403,lv = 20},[4] = {id = 2101404,lv = 20},[5] = {id = 2101405,lv = 20},[6] = {id = 2101406,lv = 20},[7] = {id = 2101407,lv = 20},[8] = {id = 2101408,lv = 20}},mon = {id = 219,desc = "daily_gold-3-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6030330,cardId = 1101999,lv = 20,bklv = 3,star = 3,equip = {[1] = {id = 2001401,lv = 20},[2] = {id = 2001402,lv = 20},[3] = {id = 2001403,lv = 20},[4] = {id = 2001404,lv = 20},[5] = {id = 2001405,lv = 20},[6] = {id = 2001406,lv = 20},[7] = {id = 2001407,lv = 20},[8] = {id = 2001408,lv = 20}},mon = {id = 204,desc = "daily_gold-3-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6030331,cardId = 1102999,lv = 20,bklv = 2,star = 3,ghost = 4,equip = {[1] = {id = 2101401,lv = 20},[2] = {id = 2101402,lv = 20},[3] = {id = 2101403,lv = 20},[4] = {id = 2101404,lv = 20},[5] = {id = 2101405,lv = 20},[6] = {id = 2101406,lv = 20},[7] = {id = 2101407,lv = 20},[8] = {id = 2101408,lv = 20}},mon = {id = 224,desc = "daily_gold-3-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60304] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6030410,cardId = 1101998,lv = 30,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 30},[2] = {id = 2001302,lv = 30},[3] = {id = 2001303,lv = 30},[4] = {id = 2001304,lv = 30},[5] = {id = 2001305,lv = 30},[6] = {id = 2001306,lv = 30},[7] = {id = 2001307,lv = 30},[8] = {id = 2001308,lv = 30}},mon = {id = 207,desc = "daily_gold-4-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6030411,cardId = 1102998,lv = 30,bklv = 3,star = 1,ghost = 6,equip = {[1] = {id = 2101301,lv = 30},[2] = {id = 2101302,lv = 30},[3] = {id = 2101303,lv = 30},[4] = {id = 2101304,lv = 30},[5] = {id = 2101305,lv = 30},[6] = {id = 2101306,lv = 30},[7] = {id = 2101307,lv = 30},[8] = {id = 2101308,lv = 30}},mon = {id = 230,desc = "daily_gold-4-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6030420,cardId = 1101998,lv = 30,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 30},[2] = {id = 2001302,lv = 30},[3] = {id = 2001303,lv = 30},[4] = {id = 2001304,lv = 30},[5] = {id = 2001305,lv = 30},[6] = {id = 2001306,lv = 30},[7] = {id = 2001307,lv = 30},[8] = {id = 2001308,lv = 30}},mon = {id = 205,desc = "daily_gold-4-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6030421,cardId = 1102998,lv = 30,bklv = 3,star = 1,ghost = 6,equip = {[1] = {id = 2101301,lv = 30},[2] = {id = 2101302,lv = 30},[3] = {id = 2101303,lv = 30},[4] = {id = 2101304,lv = 30},[5] = {id = 2101305,lv = 30},[6] = {id = 2101306,lv = 30},[7] = {id = 2101307,lv = 30},[8] = {id = 2101308,lv = 30}},mon = {id = 219,desc = "daily_gold-4-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6030430,cardId = 1101998,lv = 30,bklv = 4,star = 1,equip = {[1] = {id = 2001301,lv = 30},[2] = {id = 2001302,lv = 30},[3] = {id = 2001303,lv = 30},[4] = {id = 2001304,lv = 30},[5] = {id = 2001305,lv = 30},[6] = {id = 2001306,lv = 30},[7] = {id = 2001307,lv = 30},[8] = {id = 2001308,lv = 30}},mon = {id = 204,desc = "daily_gold-4-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6030431,cardId = 1102998,lv = 30,bklv = 3,star = 1,ghost = 6,equip = {[1] = {id = 2101301,lv = 30},[2] = {id = 2101302,lv = 30},[3] = {id = 2101303,lv = 30},[4] = {id = 2101304,lv = 30},[5] = {id = 2101305,lv = 30},[6] = {id = 2101306,lv = 30},[7] = {id = 2101307,lv = 30},[8] = {id = 2101308,lv = 30}},mon = {id = 224,desc = "daily_gold-4-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60305] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6030510,cardId = 1101998,lv = 30,bklv = 4,star = 2,equip = {[1] = {id = 2001401,lv = 30},[2] = {id = 2001402,lv = 30},[3] = {id = 2001403,lv = 30},[4] = {id = 2001404,lv = 30},[5] = {id = 2001405,lv = 30},[6] = {id = 2001406,lv = 30},[7] = {id = 2001407,lv = 30},[8] = {id = 2001408,lv = 30}},mon = {id = 207,desc = "daily_gold-5-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6030511,cardId = 1102998,lv = 30,bklv = 3,star = 2,ghost = 6,equip = {[1] = {id = 2101401,lv = 30},[2] = {id = 2101402,lv = 30},[3] = {id = 2101403,lv = 30},[4] = {id = 2101404,lv = 30},[5] = {id = 2101405,lv = 30},[6] = {id = 2101406,lv = 30},[7] = {id = 2101407,lv = 30},[8] = {id = 2101408,lv = 30}},mon = {id = 230,desc = "daily_gold-5-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6030520,cardId = 1101997,lv = 30,bklv = 4,star = 1,equip = {[1] = {id = 2001401,lv = 30},[2] = {id = 2001402,lv = 30},[3] = {id = 2001403,lv = 30},[4] = {id = 2001404,lv = 30},[5] = {id = 2001405,lv = 30},[6] = {id = 2001406,lv = 30},[7] = {id = 2001407,lv = 30},[8] = {id = 2001408,lv = 30}},mon = {id = 205,desc = "daily_gold-5-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6030521,cardId = 1102997,lv = 30,bklv = 3,star = 1,ghost = 6,equip = {[1] = {id = 2101401,lv = 30},[2] = {id = 2101402,lv = 30},[3] = {id = 2101403,lv = 30},[4] = {id = 2101404,lv = 30},[5] = {id = 2101405,lv = 30},[6] = {id = 2101406,lv = 30},[7] = {id = 2101407,lv = 30},[8] = {id = 2101408,lv = 30}},mon = {id = 219,desc = "daily_gold-5-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6030530,cardId = 1101998,lv = 30,bklv = 4,star = 2,equip = {[1] = {id = 2001401,lv = 30},[2] = {id = 2001402,lv = 30},[3] = {id = 2001403,lv = 30},[4] = {id = 2001404,lv = 30},[5] = {id = 2001405,lv = 30},[6] = {id = 2001406,lv = 30},[7] = {id = 2001407,lv = 30},[8] = {id = 2001408,lv = 30}},mon = {id = 204,desc = "daily_gold-5-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6030531,cardId = 1102998,lv = 30,bklv = 3,star = 2,ghost = 6,equip = {[1] = {id = 2101401,lv = 30},[2] = {id = 2101402,lv = 30},[3] = {id = 2101403,lv = 30},[4] = {id = 2101404,lv = 30},[5] = {id = 2101405,lv = 30},[6] = {id = 2101406,lv = 30},[7] = {id = 2101407,lv = 30},[8] = {id = 2101408,lv = 30}},mon = {id = 224,desc = "daily_gold-5-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60306] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6030610,cardId = 1101998,lv = 30,bklv = 4,star = 3,equip = {[1] = {id = 2001431,lv = 30},[2] = {id = 2001432,lv = 30},[3] = {id = 2001433,lv = 30},[4] = {id = 2001434,lv = 30},[5] = {id = 2001435,lv = 30},[6] = {id = 2001436,lv = 30},[7] = {id = 2001437,lv = 30},[8] = {id = 2001438,lv = 30}},mon = {id = 207,desc = "daily_gold-6-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6030611,cardId = 1102998,lv = 30,bklv = 3,star = 3,ghost = 6,equip = {[1] = {id = 2101431,lv = 30},[2] = {id = 2101432,lv = 30},[3] = {id = 2101433,lv = 30},[4] = {id = 2101434,lv = 30},[5] = {id = 2101435,lv = 30},[6] = {id = 2101436,lv = 30},[7] = {id = 2101437,lv = 30},[8] = {id = 2101438,lv = 30}},mon = {id = 230,desc = "daily_gold-6-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6030620,cardId = 1101997,lv = 30,bklv = 4,star = 3,equip = {[1] = {id = 2001431,lv = 30},[2] = {id = 2001432,lv = 30},[3] = {id = 2001433,lv = 30},[4] = {id = 2001434,lv = 30},[5] = {id = 2001435,lv = 30},[6] = {id = 2001436,lv = 30},[7] = {id = 2001437,lv = 30},[8] = {id = 2001438,lv = 30}},mon = {id = 205,desc = "daily_gold-6-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6030621,cardId = 1102997,lv = 30,bklv = 3,star = 3,ghost = 6,equip = {[1] = {id = 2101431,lv = 30},[2] = {id = 2101432,lv = 30},[3] = {id = 2101433,lv = 30},[4] = {id = 2101434,lv = 30},[5] = {id = 2101435,lv = 30},[6] = {id = 2101436,lv = 30},[7] = {id = 2101437,lv = 30},[8] = {id = 2101438,lv = 30}},mon = {id = 219,desc = "daily_gold-6-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6030630,cardId = 1101998,lv = 30,bklv = 4,star = 3,equip = {[1] = {id = 2001431,lv = 30},[2] = {id = 2001432,lv = 30},[3] = {id = 2001433,lv = 30},[4] = {id = 2001434,lv = 30},[5] = {id = 2001435,lv = 30},[6] = {id = 2001436,lv = 30},[7] = {id = 2001437,lv = 30},[8] = {id = 2001438,lv = 30}},mon = {id = 204,desc = "daily_gold-6-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6030631,cardId = 1102998,lv = 30,bklv = 3,star = 3,ghost = 6,equip = {[1] = {id = 2101431,lv = 30},[2] = {id = 2101432,lv = 30},[3] = {id = 2101433,lv = 30},[4] = {id = 2101434,lv = 30},[5] = {id = 2101435,lv = 30},[6] = {id = 2101436,lv = 30},[7] = {id = 2101437,lv = 30},[8] = {id = 2101438,lv = 30}},mon = {id = 224,desc = "daily_gold-6-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60307] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6030710,cardId = 1101997,lv = 45,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 40},[2] = {id = 2001302,lv = 40},[3] = {id = 2001303,lv = 40},[4] = {id = 2001304,lv = 40},[5] = {id = 2001305,lv = 40},[6] = {id = 2001306,lv = 40},[7] = {id = 2001307,lv = 40},[8] = {id = 2001308,lv = 40}},mon = {id = 207,desc = "daily_gold-7-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6030711,cardId = 1102997,lv = 45,bklv = 5,star = 1,ghost = 8,equip = {[1] = {id = 2102301,lv = 40},[2] = {id = 2102302,lv = 40},[3] = {id = 2102303,lv = 40},[4] = {id = 2102304,lv = 40},[5] = {id = 2102305,lv = 40},[6] = {id = 2102306,lv = 40},[7] = {id = 2102307,lv = 40},[8] = {id = 2102308,lv = 40}},mon = {id = 230,desc = "daily_gold-7-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6030720,cardId = 1101997,lv = 45,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 40},[2] = {id = 2001302,lv = 40},[3] = {id = 2001303,lv = 40},[4] = {id = 2001304,lv = 40},[5] = {id = 2001305,lv = 40},[6] = {id = 2001306,lv = 40},[7] = {id = 2001307,lv = 40},[8] = {id = 2001308,lv = 40}},mon = {id = 205,desc = "daily_gold-7-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6030721,cardId = 1102997,lv = 45,bklv = 5,star = 1,ghost = 8,equip = {[1] = {id = 2102301,lv = 40},[2] = {id = 2102302,lv = 40},[3] = {id = 2102303,lv = 40},[4] = {id = 2102304,lv = 40},[5] = {id = 2102305,lv = 40},[6] = {id = 2102306,lv = 40},[7] = {id = 2102307,lv = 40},[8] = {id = 2102308,lv = 40}},mon = {id = 219,desc = "daily_gold-7-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6030730,cardId = 1101997,lv = 45,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 40},[2] = {id = 2001302,lv = 40},[3] = {id = 2001303,lv = 40},[4] = {id = 2001304,lv = 40},[5] = {id = 2001305,lv = 40},[6] = {id = 2001306,lv = 40},[7] = {id = 2001307,lv = 40},[8] = {id = 2001308,lv = 40}},mon = {id = 204,desc = "daily_gold-7-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6030731,cardId = 1102997,lv = 45,bklv = 5,star = 1,ghost = 8,equip = {[1] = {id = 2102301,lv = 40},[2] = {id = 2102302,lv = 40},[3] = {id = 2102303,lv = 40},[4] = {id = 2102304,lv = 40},[5] = {id = 2102305,lv = 40},[6] = {id = 2102306,lv = 40},[7] = {id = 2102307,lv = 40},[8] = {id = 2102308,lv = 40}},mon = {id = 224,desc = "daily_gold-7-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60308] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6030810,cardId = 1101997,lv = 45,bklv = 5,star = 2,equip = {[1] = {id = 2001401,lv = 40},[2] = {id = 2001402,lv = 40},[3] = {id = 2001403,lv = 40},[4] = {id = 2001404,lv = 40},[5] = {id = 2001405,lv = 40},[6] = {id = 2001406,lv = 40},[7] = {id = 2001407,lv = 40},[8] = {id = 2001408,lv = 40}},mon = {id = 207,desc = "daily_gold-8-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6030811,cardId = 1102997,lv = 45,bklv = 5,star = 2,ghost = 8,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},mon = {id = 230,desc = "daily_gold-8-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6030820,cardId = 1101997,lv = 45,bklv = 5,star = 1,equip = {[1] = {id = 2001401,lv = 40},[2] = {id = 2001402,lv = 40},[3] = {id = 2001403,lv = 40},[4] = {id = 2001404,lv = 40},[5] = {id = 2001405,lv = 40},[6] = {id = 2001406,lv = 40},[7] = {id = 2001407,lv = 40},[8] = {id = 2001408,lv = 40}},mon = {id = 205,desc = "daily_gold-8-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6030821,cardId = 1102996,lv = 45,bklv = 5,star = 1,ghost = 8,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},mon = {id = 219,desc = "daily_gold-8-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6030830,cardId = 1101997,lv = 45,bklv = 5,star = 2,equip = {[1] = {id = 2001401,lv = 40},[2] = {id = 2001402,lv = 40},[3] = {id = 2001403,lv = 40},[4] = {id = 2001404,lv = 40},[5] = {id = 2001405,lv = 40},[6] = {id = 2001406,lv = 40},[7] = {id = 2001407,lv = 40},[8] = {id = 2001408,lv = 40}},mon = {id = 204,desc = "daily_gold-8-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6030831,cardId = 1102997,lv = 45,bklv = 5,star = 2,ghost = 8,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},mon = {id = 224,desc = "daily_gold-8-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60309] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6030910,cardId = 1101997,lv = 45,bklv = 5,star = 3,equip = {[1] = {id = 2001431,lv = 40},[2] = {id = 2001432,lv = 40},[3] = {id = 2001433,lv = 40},[4] = {id = 2001434,lv = 40},[5] = {id = 2001435,lv = 40},[6] = {id = 2001436,lv = 40},[7] = {id = 2001437,lv = 40},[8] = {id = 2001438,lv = 40}},mon = {id = 207,desc = "daily_gold-9-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6030911,cardId = 1102997,lv = 45,bklv = 5,star = 3,ghost = 8,equip = {[1] = {id = 2102411,lv = 40},[2] = {id = 2102412,lv = 40},[3] = {id = 2102413,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102415,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102417,lv = 40},[8] = {id = 2102418,lv = 40}},mon = {id = 230,desc = "daily_gold-9-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6030920,cardId = 1101997,lv = 45,bklv = 5,star = 3,equip = {[1] = {id = 2001431,lv = 40},[2] = {id = 2001432,lv = 40},[3] = {id = 2001433,lv = 40},[4] = {id = 2001434,lv = 40},[5] = {id = 2001435,lv = 40},[6] = {id = 2001436,lv = 40},[7] = {id = 2001437,lv = 40},[8] = {id = 2001438,lv = 40}},mon = {id = 205,desc = "daily_gold-9-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6030921,cardId = 1102996,lv = 45,bklv = 5,star = 3,ghost = 8,equip = {[1] = {id = 2102411,lv = 40},[2] = {id = 2102412,lv = 40},[3] = {id = 2102413,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102415,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102417,lv = 40},[8] = {id = 2102418,lv = 40}},mon = {id = 219,desc = "daily_gold-9-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6030930,cardId = 1101997,lv = 45,bklv = 5,star = 3,equip = {[1] = {id = 2001431,lv = 40},[2] = {id = 2001432,lv = 40},[3] = {id = 2001433,lv = 40},[4] = {id = 2001434,lv = 40},[5] = {id = 2001435,lv = 40},[6] = {id = 2001436,lv = 40},[7] = {id = 2001437,lv = 40},[8] = {id = 2001438,lv = 40}},mon = {id = 204,desc = "daily_gold-9-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6030931,cardId = 1102997,lv = 45,bklv = 5,star = 3,ghost = 8,equip = {[1] = {id = 2102411,lv = 40},[2] = {id = 2102412,lv = 40},[3] = {id = 2102413,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102415,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102417,lv = 40},[8] = {id = 2102418,lv = 40}},mon = {id = 224,desc = "daily_gold-9-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60310] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6031010,cardId = 1101999,lv = 55,bklv = 6,star = 1,equip = {[1] = {id = 2002301,lv = 55},[2] = {id = 2002302,lv = 55},[3] = {id = 2002303,lv = 55},[4] = {id = 2002304,lv = 55},[5] = {id = 2002305,lv = 55},[6] = {id = 2002306,lv = 55},[7] = {id = 2002307,lv = 55},[8] = {id = 2002308,lv = 55}},mon = {id = 207,desc = "daily_gold-10-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6031011,cardId = 1102999,lv = 55,bklv = 7,star = 1,ghost = 14,equip = {[1] = {id = 2102301,lv = 55},[2] = {id = 2102302,lv = 55},[3] = {id = 2102303,lv = 55},[4] = {id = 2102304,lv = 55},[5] = {id = 2102305,lv = 55},[6] = {id = 2102306,lv = 55},[7] = {id = 2102307,lv = 55},[8] = {id = 2102308,lv = 55}},mon = {id = 230,desc = "daily_gold-10-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6031020,cardId = 1101999,lv = 55,bklv = 6,star = 1,equip = {[1] = {id = 2002301,lv = 55},[2] = {id = 2002302,lv = 55},[3] = {id = 2002303,lv = 55},[4] = {id = 2002304,lv = 55},[5] = {id = 2002305,lv = 55},[6] = {id = 2002306,lv = 55},[7] = {id = 2002307,lv = 55},[8] = {id = 2002308,lv = 55}},mon = {id = 205,desc = "daily_gold-10-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6031021,cardId = 1102999,lv = 55,bklv = 7,star = 2,ghost = 14,equip = {[1] = {id = 2102301,lv = 55},[2] = {id = 2102302,lv = 55},[3] = {id = 2102303,lv = 55},[4] = {id = 2102304,lv = 55},[5] = {id = 2102305,lv = 55},[6] = {id = 2102306,lv = 55},[7] = {id = 2102307,lv = 55},[8] = {id = 2102308,lv = 55}},mon = {id = 219,desc = "daily_gold-10-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6031030,cardId = 1101999,lv = 55,bklv = 6,star = 1,equip = {[1] = {id = 2002301,lv = 55},[2] = {id = 2002302,lv = 55},[3] = {id = 2002303,lv = 55},[4] = {id = 2002304,lv = 55},[5] = {id = 2002305,lv = 55},[6] = {id = 2002306,lv = 55},[7] = {id = 2002307,lv = 55},[8] = {id = 2002308,lv = 55}},mon = {id = 204,desc = "daily_gold-10-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6031031,cardId = 1102999,lv = 55,bklv = 7,star = 1,ghost = 14,equip = {[1] = {id = 2102301,lv = 55},[2] = {id = 2102302,lv = 55},[3] = {id = 2102303,lv = 55},[4] = {id = 2102304,lv = 55},[5] = {id = 2102305,lv = 55},[6] = {id = 2102306,lv = 55},[7] = {id = 2102307,lv = 55},[8] = {id = 2102308,lv = 55}},mon = {id = 224,desc = "daily_gold-10-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60311] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6031110,cardId = 1101999,lv = 55,bklv = 6,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}},mon = {id = 207,desc = "daily_gold-11-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6031111,cardId = 1102999,lv = 55,bklv = 7,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},mon = {id = 230,desc = "daily_gold-11-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6031120,cardId = 1101998,lv = 55,bklv = 6,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}},mon = {id = 205,desc = "daily_gold-11-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6031121,cardId = 1102998,lv = 55,bklv = 7,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},mon = {id = 219,desc = "daily_gold-11-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6031130,cardId = 1101999,lv = 55,bklv = 6,star = 2,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}},mon = {id = 204,desc = "daily_gold-11-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6031131,cardId = 1102999,lv = 55,bklv = 7,star = 2,ghost = 14,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},mon = {id = 224,desc = "daily_gold-11-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60312] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6031210,cardId = 1101999,lv = 55,bklv = 6,star = 3,equip = {[1] = {id = 2002411,lv = 55},[2] = {id = 2002412,lv = 55},[3] = {id = 2002413,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002415,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002417,lv = 55},[8] = {id = 2002418,lv = 55}},mon = {id = 207,desc = "daily_gold-12-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6031211,cardId = 1102999,lv = 55,bklv = 7,star = 3,ghost = 14,equip = {[1] = {id = 2102411,lv = 55},[2] = {id = 2102412,lv = 55},[3] = {id = 2102413,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102415,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102417,lv = 55},[8] = {id = 2102418,lv = 55}},mon = {id = 230,desc = "daily_gold-12-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6031220,cardId = 1101998,lv = 55,bklv = 6,star = 4,equip = {[1] = {id = 2002411,lv = 55},[2] = {id = 2002412,lv = 55},[3] = {id = 2002413,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002415,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002417,lv = 55},[8] = {id = 2002418,lv = 55}},mon = {id = 205,desc = "daily_gold-12-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6031221,cardId = 1102998,lv = 55,bklv = 7,star = 4,ghost = 14,equip = {[1] = {id = 2102411,lv = 55},[2] = {id = 2102412,lv = 55},[3] = {id = 2102413,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102415,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102417,lv = 55},[8] = {id = 2102418,lv = 55}},mon = {id = 219,desc = "daily_gold-12-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6031230,cardId = 1101999,lv = 55,bklv = 6,star = 3,equip = {[1] = {id = 2002411,lv = 55},[2] = {id = 2002412,lv = 55},[3] = {id = 2002413,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002415,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002417,lv = 55},[8] = {id = 2002418,lv = 55}},mon = {id = 204,desc = "daily_gold-12-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6031231,cardId = 1102999,lv = 55,bklv = 7,star = 3,ghost = 14,equip = {[1] = {id = 2102411,lv = 55},[2] = {id = 2102412,lv = 55},[3] = {id = 2102413,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102415,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102417,lv = 55},[8] = {id = 2102418,lv = 55}},mon = {id = 224,desc = "daily_gold-12-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60313] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6031310,cardId = 1101998,lv = 72,bklv = 9,star = 1,equip = {[1] = {id = 2003301,lv = 70},[2] = {id = 2003302,lv = 70},[3] = {id = 2003303,lv = 70},[4] = {id = 2003304,lv = 70},[5] = {id = 2003305,lv = 70},[6] = {id = 2003306,lv = 70},[7] = {id = 2003307,lv = 70},[8] = {id = 2003308,lv = 70}},mon = {id = 207,desc = "daily_gold-13-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6031311,cardId = 1102998,lv = 72,bklv = 9,star = 1,ghost = 20,equip = {[1] = {id = 2103301,lv = 70},[2] = {id = 2103302,lv = 70},[3] = {id = 2103303,lv = 70},[4] = {id = 2103304,lv = 70},[5] = {id = 2103305,lv = 70},[6] = {id = 2103306,lv = 70},[7] = {id = 2103307,lv = 70},[8] = {id = 2103308,lv = 70}},mon = {id = 230,desc = "daily_gold-13-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6031320,cardId = 1101998,lv = 72,bklv = 9,star = 1,equip = {[1] = {id = 2003301,lv = 70},[2] = {id = 2003302,lv = 70},[3] = {id = 2003303,lv = 70},[4] = {id = 2003304,lv = 70},[5] = {id = 2003305,lv = 70},[6] = {id = 2003306,lv = 70},[7] = {id = 2003307,lv = 70},[8] = {id = 2003308,lv = 70}},mon = {id = 205,desc = "daily_gold-13-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6031321,cardId = 1102998,lv = 72,bklv = 9,star = 2,ghost = 20,equip = {[1] = {id = 2103301,lv = 70},[2] = {id = 2103302,lv = 70},[3] = {id = 2103303,lv = 70},[4] = {id = 2103304,lv = 70},[5] = {id = 2103305,lv = 70},[6] = {id = 2103306,lv = 70},[7] = {id = 2103307,lv = 70},[8] = {id = 2103308,lv = 70}},mon = {id = 219,desc = "daily_gold-13-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6031330,cardId = 1101998,lv = 72,bklv = 9,star = 1,equip = {[1] = {id = 2003301,lv = 70},[2] = {id = 2003302,lv = 70},[3] = {id = 2003303,lv = 70},[4] = {id = 2003304,lv = 70},[5] = {id = 2003305,lv = 70},[6] = {id = 2003306,lv = 70},[7] = {id = 2003307,lv = 70},[8] = {id = 2003308,lv = 70}},mon = {id = 204,desc = "daily_gold-13-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6031331,cardId = 1102998,lv = 72,bklv = 9,star = 1,ghost = 20,equip = {[1] = {id = 2103301,lv = 70},[2] = {id = 2103302,lv = 70},[3] = {id = 2103303,lv = 70},[4] = {id = 2103304,lv = 70},[5] = {id = 2103305,lv = 70},[6] = {id = 2103306,lv = 70},[7] = {id = 2103307,lv = 70},[8] = {id = 2103308,lv = 70}},mon = {id = 224,desc = "daily_gold-13-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60314] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6031410,cardId = 1101998,lv = 72,bklv = 9,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}},mon = {id = 207,desc = "daily_gold-14-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6031411,cardId = 1102998,lv = 72,bklv = 9,star = 2,ghost = 20,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},mon = {id = 230,desc = "daily_gold-14-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6031420,cardId = 1101997,lv = 72,bklv = 9,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}},mon = {id = 205,desc = "daily_gold-14-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6031421,cardId = 1102997,lv = 72,bklv = 9,star = 2,ghost = 20,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},mon = {id = 219,desc = "daily_gold-14-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6031430,cardId = 1101998,lv = 72,bklv = 9,star = 2,equip = {[1] = {id = 2003401,lv = 70},[2] = {id = 2003402,lv = 70},[3] = {id = 2003403,lv = 70},[4] = {id = 2003404,lv = 70},[5] = {id = 2003405,lv = 70},[6] = {id = 2003406,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}},mon = {id = 204,desc = "daily_gold-14-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6031431,cardId = 1102998,lv = 72,bklv = 9,star = 2,ghost = 20,equip = {[1] = {id = 2103401,lv = 70},[2] = {id = 2103402,lv = 70},[3] = {id = 2103403,lv = 70},[4] = {id = 2103404,lv = 70},[5] = {id = 2103405,lv = 70},[6] = {id = 2103406,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},mon = {id = 224,desc = "daily_gold-14-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60315] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6031510,cardId = 1101998,lv = 72,bklv = 9,star = 3,equip = {[1] = {id = 2003421,lv = 70},[2] = {id = 2003422,lv = 70},[3] = {id = 2003423,lv = 70},[4] = {id = 2003424,lv = 70},[5] = {id = 2003425,lv = 70},[6] = {id = 2003426,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}},mon = {id = 207,desc = "daily_gold-15-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6031511,cardId = 1102998,lv = 72,bklv = 9,star = 3,ghost = 20,equip = {[1] = {id = 2103421,lv = 70},[2] = {id = 2103422,lv = 70},[3] = {id = 2103423,lv = 70},[4] = {id = 2103424,lv = 70},[5] = {id = 2103425,lv = 70},[6] = {id = 2103426,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},mon = {id = 230,desc = "daily_gold-15-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6031520,cardId = 1101997,lv = 72,bklv = 9,star = 4,equip = {[1] = {id = 2003421,lv = 70},[2] = {id = 2003422,lv = 70},[3] = {id = 2003423,lv = 70},[4] = {id = 2003424,lv = 70},[5] = {id = 2003425,lv = 70},[6] = {id = 2003426,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}},mon = {id = 205,desc = "daily_gold-15-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6031521,cardId = 1102997,lv = 72,bklv = 9,star = 4,ghost = 20,equip = {[1] = {id = 2103421,lv = 70},[2] = {id = 2103422,lv = 70},[3] = {id = 2103423,lv = 70},[4] = {id = 2103424,lv = 70},[5] = {id = 2103425,lv = 70},[6] = {id = 2103426,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},mon = {id = 219,desc = "daily_gold-15-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6031530,cardId = 1101998,lv = 72,bklv = 9,star = 3,equip = {[1] = {id = 2003421,lv = 70},[2] = {id = 2003422,lv = 70},[3] = {id = 2003423,lv = 70},[4] = {id = 2003424,lv = 70},[5] = {id = 2003425,lv = 70},[6] = {id = 2003426,lv = 70},[7] = {id = 2003407,lv = 70},[8] = {id = 2003408,lv = 70}},mon = {id = 204,desc = "daily_gold-15-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6031531,cardId = 1102998,lv = 72,bklv = 9,star = 3,ghost = 20,equip = {[1] = {id = 2103421,lv = 70},[2] = {id = 2103422,lv = 70},[3] = {id = 2103423,lv = 70},[4] = {id = 2103424,lv = 70},[5] = {id = 2103425,lv = 70},[6] = {id = 2103426,lv = 70},[7] = {id = 2103407,lv = 70},[8] = {id = 2103408,lv = 70}},mon = {id = 224,desc = "daily_gold-15-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60316] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6031610,cardId = 1101997,lv = 80,bklv = 10,star = 1,equip = {[1] = {id = 2004301,lv = 80},[2] = {id = 2004302,lv = 80},[3] = {id = 2004303,lv = 80},[4] = {id = 2004304,lv = 80},[5] = {id = 2004305,lv = 80},[6] = {id = 2004306,lv = 80},[7] = {id = 2004307,lv = 80},[8] = {id = 2004308,lv = 80}},mon = {id = 207,desc = "daily_gold-16-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6031611,cardId = 1102997,lv = 80,bklv = 10,star = 1,ghost = 24,equip = {[1] = {id = 2104301,lv = 80},[2] = {id = 2104302,lv = 80},[3] = {id = 2104303,lv = 80},[4] = {id = 2104304,lv = 80},[5] = {id = 2104305,lv = 80},[6] = {id = 2104306,lv = 80},[7] = {id = 2104307,lv = 80},[8] = {id = 2104308,lv = 80}},mon = {id = 230,desc = "daily_gold-16-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6031620,cardId = 1101997,lv = 80,bklv = 10,star = 1,equip = {[1] = {id = 2004301,lv = 80},[2] = {id = 2004302,lv = 80},[3] = {id = 2004303,lv = 80},[4] = {id = 2004304,lv = 80},[5] = {id = 2004305,lv = 80},[6] = {id = 2004306,lv = 80},[7] = {id = 2004307,lv = 80},[8] = {id = 2004308,lv = 80}},mon = {id = 205,desc = "daily_gold-16-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6031621,cardId = 1102997,lv = 80,bklv = 10,star = 2,ghost = 24,equip = {[1] = {id = 2104301,lv = 80},[2] = {id = 2104302,lv = 80},[3] = {id = 2104303,lv = 80},[4] = {id = 2104304,lv = 80},[5] = {id = 2104305,lv = 80},[6] = {id = 2104306,lv = 80},[7] = {id = 2104307,lv = 80},[8] = {id = 2104308,lv = 80}},mon = {id = 219,desc = "daily_gold-16-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6031630,cardId = 1101997,lv = 80,bklv = 10,star = 1,equip = {[1] = {id = 2004301,lv = 80},[2] = {id = 2004302,lv = 80},[3] = {id = 2004303,lv = 80},[4] = {id = 2004304,lv = 80},[5] = {id = 2004305,lv = 80},[6] = {id = 2004306,lv = 80},[7] = {id = 2004307,lv = 80},[8] = {id = 2004308,lv = 80}},mon = {id = 204,desc = "daily_gold-16-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6031631,cardId = 1102997,lv = 80,bklv = 10,star = 1,ghost = 24,equip = {[1] = {id = 2104301,lv = 80},[2] = {id = 2104302,lv = 80},[3] = {id = 2104303,lv = 80},[4] = {id = 2104304,lv = 80},[5] = {id = 2104305,lv = 80},[6] = {id = 2104306,lv = 80},[7] = {id = 2104307,lv = 80},[8] = {id = 2104308,lv = 80}},mon = {id = 224,desc = "daily_gold-16-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60317] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6031710,cardId = 1101997,lv = 80,bklv = 10,star = 2,equip = {[1] = {id = 2004401,lv = 80},[2] = {id = 2004402,lv = 80},[3] = {id = 2004403,lv = 80},[4] = {id = 2004404,lv = 80},[5] = {id = 2004405,lv = 80},[6] = {id = 2004406,lv = 80},[7] = {id = 2004407,lv = 80},[8] = {id = 2004408,lv = 80}},mon = {id = 207,desc = "daily_gold-17-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6031711,cardId = 1102997,lv = 80,bklv = 10,star = 2,ghost = 24,equip = {[1] = {id = 2104401,lv = 80},[2] = {id = 2104402,lv = 80},[3] = {id = 2104403,lv = 80},[4] = {id = 2104404,lv = 80},[5] = {id = 2104405,lv = 80},[6] = {id = 2104406,lv = 80},[7] = {id = 2104407,lv = 80},[8] = {id = 2104408,lv = 80}},mon = {id = 230,desc = "daily_gold-17-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6031720,cardId = 1101997,lv = 80,bklv = 10,star = 2,equip = {[1] = {id = 2004401,lv = 80},[2] = {id = 2004402,lv = 80},[3] = {id = 2004403,lv = 80},[4] = {id = 2004404,lv = 80},[5] = {id = 2004405,lv = 80},[6] = {id = 2004406,lv = 80},[7] = {id = 2004407,lv = 80},[8] = {id = 2004408,lv = 80}},mon = {id = 205,desc = "daily_gold-17-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6031721,cardId = 1102996,lv = 80,bklv = 10,star = 2,ghost = 24,equip = {[1] = {id = 2104401,lv = 80},[2] = {id = 2104402,lv = 80},[3] = {id = 2104403,lv = 80},[4] = {id = 2104404,lv = 80},[5] = {id = 2104405,lv = 80},[6] = {id = 2104406,lv = 80},[7] = {id = 2104407,lv = 80},[8] = {id = 2104408,lv = 80}},mon = {id = 219,desc = "daily_gold-17-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6031730,cardId = 1101997,lv = 80,bklv = 10,star = 2,equip = {[1] = {id = 2004401,lv = 80},[2] = {id = 2004402,lv = 80},[3] = {id = 2004403,lv = 80},[4] = {id = 2004404,lv = 80},[5] = {id = 2004405,lv = 80},[6] = {id = 2004406,lv = 80},[7] = {id = 2004407,lv = 80},[8] = {id = 2004408,lv = 80}},mon = {id = 204,desc = "daily_gold-17-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6031731,cardId = 1102997,lv = 80,bklv = 10,star = 2,ghost = 24,equip = {[1] = {id = 2104401,lv = 80},[2] = {id = 2104402,lv = 80},[3] = {id = 2104403,lv = 80},[4] = {id = 2104404,lv = 80},[5] = {id = 2104405,lv = 80},[6] = {id = 2104406,lv = 80},[7] = {id = 2104407,lv = 80},[8] = {id = 2104408,lv = 80}},mon = {id = 224,desc = "daily_gold-17-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60318] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6031810,cardId = 1101997,lv = 80,bklv = 10,star = 3,equip = {[1] = {id = 2004421,lv = 80},[2] = {id = 2004422,lv = 80},[3] = {id = 2004423,lv = 80},[4] = {id = 2004404,lv = 80},[5] = {id = 2004425,lv = 80},[6] = {id = 2004406,lv = 80},[7] = {id = 2004427,lv = 80},[8] = {id = 2004428,lv = 80}},mon = {id = 207,desc = "daily_gold-18-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6031811,cardId = 1102997,lv = 80,bklv = 10,star = 3,ghost = 24,equip = {[1] = {id = 2104421,lv = 80},[2] = {id = 2104422,lv = 80},[3] = {id = 2104423,lv = 80},[4] = {id = 2104404,lv = 80},[5] = {id = 2104425,lv = 80},[6] = {id = 2104406,lv = 80},[7] = {id = 2104427,lv = 80},[8] = {id = 2104428,lv = 80}},mon = {id = 230,desc = "daily_gold-18-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6031820,cardId = 1101997,lv = 80,bklv = 10,star = 4,equip = {[1] = {id = 2004421,lv = 80},[2] = {id = 2004422,lv = 80},[3] = {id = 2004423,lv = 80},[4] = {id = 2004404,lv = 80},[5] = {id = 2004425,lv = 80},[6] = {id = 2004406,lv = 80},[7] = {id = 2004427,lv = 80},[8] = {id = 2004428,lv = 80}},mon = {id = 205,desc = "daily_gold-18-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6031821,cardId = 1102996,lv = 80,bklv = 10,star = 4,ghost = 24,equip = {[1] = {id = 2104421,lv = 80},[2] = {id = 2104422,lv = 80},[3] = {id = 2104423,lv = 80},[4] = {id = 2104404,lv = 80},[5] = {id = 2104425,lv = 80},[6] = {id = 2104406,lv = 80},[7] = {id = 2104427,lv = 80},[8] = {id = 2104428,lv = 80}},mon = {id = 219,desc = "daily_gold-18-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6031830,cardId = 1101997,lv = 80,bklv = 10,star = 3,equip = {[1] = {id = 2004421,lv = 80},[2] = {id = 2004422,lv = 80},[3] = {id = 2004423,lv = 80},[4] = {id = 2004404,lv = 80},[5] = {id = 2004425,lv = 80},[6] = {id = 2004406,lv = 80},[7] = {id = 2004427,lv = 80},[8] = {id = 2004428,lv = 80}},mon = {id = 204,desc = "daily_gold-18-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6031831,cardId = 1102997,lv = 80,bklv = 10,star = 3,ghost = 24,equip = {[1] = {id = 2104421,lv = 80},[2] = {id = 2104422,lv = 80},[3] = {id = 2104423,lv = 80},[4] = {id = 2104404,lv = 80},[5] = {id = 2104425,lv = 80},[6] = {id = 2104406,lv = 80},[7] = {id = 2104427,lv = 80},[8] = {id = 2104428,lv = 80}},mon = {id = 224,desc = "daily_gold-18-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60319] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6031910,cardId = 1101999,lv = 90,bklv = 12,star = 2,equip = {[1] = {id = 2005301,lv = 90},[2] = {id = 2005302,lv = 90},[3] = {id = 2005303,lv = 90},[4] = {id = 2005304,lv = 90},[5] = {id = 2005305,lv = 90},[6] = {id = 2005306,lv = 90},[7] = {id = 2005307,lv = 90},[8] = {id = 2005308,lv = 90}},mon = {id = 207,desc = "daily_gold-19-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6031911,cardId = 1102999,lv = 90,bklv = 11,star = 2,ghost = 28,equip = {[1] = {id = 2105301,lv = 90},[2] = {id = 2105302,lv = 90},[3] = {id = 2105303,lv = 90},[4] = {id = 2105304,lv = 90},[5] = {id = 2105305,lv = 90},[6] = {id = 2105306,lv = 90},[7] = {id = 2105307,lv = 90},[8] = {id = 2105308,lv = 90}},mon = {id = 230,desc = "daily_gold-19-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6031920,cardId = 1101999,lv = 90,bklv = 12,star = 2,equip = {[1] = {id = 2005301,lv = 90},[2] = {id = 2005302,lv = 90},[3] = {id = 2005303,lv = 90},[4] = {id = 2005304,lv = 90},[5] = {id = 2005305,lv = 90},[6] = {id = 2005306,lv = 90},[7] = {id = 2005307,lv = 90},[8] = {id = 2005308,lv = 90}},mon = {id = 205,desc = "daily_gold-19-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6031921,cardId = 1102999,lv = 90,bklv = 11,star = 2,ghost = 28,equip = {[1] = {id = 2105301,lv = 90},[2] = {id = 2105302,lv = 90},[3] = {id = 2105303,lv = 90},[4] = {id = 2105304,lv = 90},[5] = {id = 2105305,lv = 90},[6] = {id = 2105306,lv = 90},[7] = {id = 2105307,lv = 90},[8] = {id = 2105308,lv = 90}},mon = {id = 219,desc = "daily_gold-19-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6031930,cardId = 1101999,lv = 90,bklv = 12,star = 2,equip = {[1] = {id = 2005301,lv = 90},[2] = {id = 2005302,lv = 90},[3] = {id = 2005303,lv = 90},[4] = {id = 2005304,lv = 90},[5] = {id = 2005305,lv = 90},[6] = {id = 2005306,lv = 90},[7] = {id = 2005307,lv = 90},[8] = {id = 2005308,lv = 90}},mon = {id = 204,desc = "daily_gold-19-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6031931,cardId = 1102999,lv = 90,bklv = 11,star = 2,ghost = 28,equip = {[1] = {id = 2105301,lv = 90},[2] = {id = 2105302,lv = 90},[3] = {id = 2105303,lv = 90},[4] = {id = 2105304,lv = 90},[5] = {id = 2105305,lv = 90},[6] = {id = 2105306,lv = 90},[7] = {id = 2105307,lv = 90},[8] = {id = 2105308,lv = 90}},mon = {id = 224,desc = "daily_gold-19-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60320] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6032010,cardId = 1101999,lv = 90,bklv = 12,star = 2,equip = {[1] = {id = 2005401,lv = 90},[2] = {id = 2005402,lv = 90},[3] = {id = 2005403,lv = 90},[4] = {id = 2005404,lv = 90},[5] = {id = 2005405,lv = 90},[6] = {id = 2005406,lv = 90},[7] = {id = 2005407,lv = 90},[8] = {id = 2005408,lv = 90}},mon = {id = 207,desc = "daily_gold-20-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6032011,cardId = 1102999,lv = 90,bklv = 11,star = 2,ghost = 28,equip = {[1] = {id = 2105401,lv = 90},[2] = {id = 2105402,lv = 90},[3] = {id = 2105403,lv = 90},[4] = {id = 2105404,lv = 90},[5] = {id = 2105405,lv = 90},[6] = {id = 2105406,lv = 90},[7] = {id = 2105407,lv = 90},[8] = {id = 2105408,lv = 90}},mon = {id = 230,desc = "daily_gold-20-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6032020,cardId = 1101998,lv = 90,bklv = 12,star = 2,equip = {[1] = {id = 2005401,lv = 90},[2] = {id = 2005402,lv = 90},[3] = {id = 2005403,lv = 90},[4] = {id = 2005404,lv = 90},[5] = {id = 2005405,lv = 90},[6] = {id = 2005406,lv = 90},[7] = {id = 2005407,lv = 90},[8] = {id = 2005408,lv = 90}},mon = {id = 205,desc = "daily_gold-20-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6032021,cardId = 1102998,lv = 90,bklv = 11,star = 2,ghost = 28,equip = {[1] = {id = 2105401,lv = 90},[2] = {id = 2105402,lv = 90},[3] = {id = 2105403,lv = 90},[4] = {id = 2105404,lv = 90},[5] = {id = 2105405,lv = 90},[6] = {id = 2105406,lv = 90},[7] = {id = 2105407,lv = 90},[8] = {id = 2105408,lv = 90}},mon = {id = 219,desc = "daily_gold-20-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6032030,cardId = 1101999,lv = 90,bklv = 12,star = 2,equip = {[1] = {id = 2005401,lv = 90},[2] = {id = 2005402,lv = 90},[3] = {id = 2005403,lv = 90},[4] = {id = 2005404,lv = 90},[5] = {id = 2005405,lv = 90},[6] = {id = 2005406,lv = 90},[7] = {id = 2005407,lv = 90},[8] = {id = 2005408,lv = 90}},mon = {id = 204,desc = "daily_gold-20-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6032031,cardId = 1102999,lv = 90,bklv = 11,star = 2,ghost = 28,equip = {[1] = {id = 2105401,lv = 90},[2] = {id = 2105402,lv = 90},[3] = {id = 2105403,lv = 90},[4] = {id = 2105404,lv = 90},[5] = {id = 2105405,lv = 90},[6] = {id = 2105406,lv = 90},[7] = {id = 2105407,lv = 90},[8] = {id = 2105408,lv = 90}},mon = {id = 224,desc = "daily_gold-20-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60321] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6032110,cardId = 1101999,lv = 90,bklv = 12,star = 4,equip = {[1] = {id = 2005421,lv = 90},[2] = {id = 2005422,lv = 90},[3] = {id = 2005423,lv = 90},[4] = {id = 2005434,lv = 90},[5] = {id = 2005425,lv = 90},[6] = {id = 2005436,lv = 90},[7] = {id = 2005407,lv = 90},[8] = {id = 2005408,lv = 90}},mon = {id = 207,desc = "daily_gold-21-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6032111,cardId = 1102999,lv = 90,bklv = 11,star = 4,ghost = 28,equip = {[1] = {id = 2105421,lv = 90},[2] = {id = 2105432,lv = 90},[3] = {id = 2105423,lv = 90},[4] = {id = 2105434,lv = 90},[5] = {id = 2105425,lv = 90},[6] = {id = 2105436,lv = 90},[7] = {id = 2105407,lv = 90},[8] = {id = 2105408,lv = 90}},mon = {id = 230,desc = "daily_gold-21-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6032120,cardId = 1101998,lv = 90,bklv = 12,star = 4,equip = {[1] = {id = 2005421,lv = 90},[2] = {id = 2005422,lv = 90},[3] = {id = 2005423,lv = 90},[4] = {id = 2005434,lv = 90},[5] = {id = 2005425,lv = 90},[6] = {id = 2005436,lv = 90},[7] = {id = 2005407,lv = 90},[8] = {id = 2005408,lv = 90}},mon = {id = 205,desc = "daily_gold-21-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6032121,cardId = 1102998,lv = 90,bklv = 11,star = 4,ghost = 28,equip = {[1] = {id = 2105421,lv = 90},[2] = {id = 2105432,lv = 90},[3] = {id = 2105423,lv = 90},[4] = {id = 2105434,lv = 90},[5] = {id = 2105425,lv = 90},[6] = {id = 2105436,lv = 90},[7] = {id = 2105407,lv = 90},[8] = {id = 2105408,lv = 90}},mon = {id = 219,desc = "daily_gold-21-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6032130,cardId = 1101999,lv = 90,bklv = 12,star = 4,equip = {[1] = {id = 2005421,lv = 90},[2] = {id = 2005422,lv = 90},[3] = {id = 2005423,lv = 90},[4] = {id = 2005434,lv = 90},[5] = {id = 2005425,lv = 90},[6] = {id = 2005436,lv = 90},[7] = {id = 2005407,lv = 90},[8] = {id = 2005408,lv = 90}},mon = {id = 204,desc = "daily_gold-21-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6032131,cardId = 1102999,lv = 90,bklv = 11,star = 4,ghost = 28,equip = {[1] = {id = 2105421,lv = 90},[2] = {id = 2105432,lv = 90},[3] = {id = 2105423,lv = 90},[4] = {id = 2105434,lv = 90},[5] = {id = 2105425,lv = 90},[6] = {id = 2105436,lv = 90},[7] = {id = 2105407,lv = 90},[8] = {id = 2105408,lv = 90}},mon = {id = 224,desc = "daily_gold-21-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60322] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6032210,cardId = 1101998,lv = 105,bklv = 14,star = 2,equip = {[1] = {id = 2006301,lv = 105},[2] = {id = 2006302,lv = 105},[3] = {id = 2006303,lv = 105},[4] = {id = 2006304,lv = 105},[5] = {id = 2006305,lv = 105},[6] = {id = 2006306,lv = 105},[7] = {id = 2006307,lv = 105},[8] = {id = 2006308,lv = 105}},mon = {id = 207,desc = "daily_gold-22-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6032211,cardId = 1102998,lv = 105,bklv = 13,star = 2,ghost = 34,equip = {[1] = {id = 2106301,lv = 105},[2] = {id = 2106302,lv = 105},[3] = {id = 2106303,lv = 105},[4] = {id = 2106304,lv = 105},[5] = {id = 2106305,lv = 105},[6] = {id = 2106306,lv = 105},[7] = {id = 2106307,lv = 105},[8] = {id = 2106308,lv = 105}},mon = {id = 230,desc = "daily_gold-22-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6032220,cardId = 1101998,lv = 105,bklv = 14,star = 2,equip = {[1] = {id = 2006301,lv = 105},[2] = {id = 2006302,lv = 105},[3] = {id = 2006303,lv = 105},[4] = {id = 2006304,lv = 105},[5] = {id = 2006305,lv = 105},[6] = {id = 2006306,lv = 105},[7] = {id = 2006307,lv = 105},[8] = {id = 2006308,lv = 105}},mon = {id = 205,desc = "daily_gold-22-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6032221,cardId = 1102998,lv = 105,bklv = 13,star = 2,ghost = 34,equip = {[1] = {id = 2106301,lv = 105},[2] = {id = 2106302,lv = 105},[3] = {id = 2106303,lv = 105},[4] = {id = 2106304,lv = 105},[5] = {id = 2106305,lv = 105},[6] = {id = 2106306,lv = 105},[7] = {id = 2106307,lv = 105},[8] = {id = 2106308,lv = 105}},mon = {id = 219,desc = "daily_gold-22-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6032230,cardId = 1101998,lv = 105,bklv = 14,star = 2,equip = {[1] = {id = 2006301,lv = 105},[2] = {id = 2006302,lv = 105},[3] = {id = 2006303,lv = 105},[4] = {id = 2006304,lv = 105},[5] = {id = 2006305,lv = 105},[6] = {id = 2006306,lv = 105},[7] = {id = 2006307,lv = 105},[8] = {id = 2006308,lv = 105}},mon = {id = 204,desc = "daily_gold-22-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6032231,cardId = 1102998,lv = 105,bklv = 13,star = 2,ghost = 34,equip = {[1] = {id = 2106301,lv = 105},[2] = {id = 2106302,lv = 105},[3] = {id = 2106303,lv = 105},[4] = {id = 2106304,lv = 105},[5] = {id = 2106305,lv = 105},[6] = {id = 2106306,lv = 105},[7] = {id = 2106307,lv = 105},[8] = {id = 2106308,lv = 105}},mon = {id = 224,desc = "daily_gold-22-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60323] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6032310,cardId = 1101998,lv = 105,bklv = 14,star = 2,equip = {[1] = {id = 2006401,lv = 105},[2] = {id = 2006402,lv = 105},[3] = {id = 2006403,lv = 105},[4] = {id = 2006404,lv = 105},[5] = {id = 2006405,lv = 105},[6] = {id = 2006406,lv = 105},[7] = {id = 2006407,lv = 105},[8] = {id = 2006408,lv = 105}},mon = {id = 207,desc = "daily_gold-23-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6032311,cardId = 1102998,lv = 105,bklv = 13,star = 2,ghost = 34,equip = {[1] = {id = 2106401,lv = 105},[2] = {id = 2106402,lv = 105},[3] = {id = 2106403,lv = 105},[4] = {id = 2106404,lv = 105},[5] = {id = 2106405,lv = 105},[6] = {id = 2106406,lv = 105},[7] = {id = 2106407,lv = 105},[8] = {id = 2106408,lv = 105}},mon = {id = 230,desc = "daily_gold-23-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6032320,cardId = 1101997,lv = 105,bklv = 14,star = 2,equip = {[1] = {id = 2006401,lv = 105},[2] = {id = 2006402,lv = 105},[3] = {id = 2006403,lv = 105},[4] = {id = 2006404,lv = 105},[5] = {id = 2006405,lv = 105},[6] = {id = 2006406,lv = 105},[7] = {id = 2006407,lv = 105},[8] = {id = 2006408,lv = 105}},mon = {id = 205,desc = "daily_gold-23-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6032321,cardId = 1102997,lv = 105,bklv = 13,star = 2,ghost = 34,equip = {[1] = {id = 2106401,lv = 105},[2] = {id = 2106402,lv = 105},[3] = {id = 2106403,lv = 105},[4] = {id = 2106404,lv = 105},[5] = {id = 2106405,lv = 105},[6] = {id = 2106406,lv = 105},[7] = {id = 2106407,lv = 105},[8] = {id = 2106408,lv = 105}},mon = {id = 219,desc = "daily_gold-23-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6032330,cardId = 1101998,lv = 105,bklv = 14,star = 2,equip = {[1] = {id = 2006401,lv = 105},[2] = {id = 2006402,lv = 105},[3] = {id = 2006403,lv = 105},[4] = {id = 2006404,lv = 105},[5] = {id = 2006405,lv = 105},[6] = {id = 2006406,lv = 105},[7] = {id = 2006407,lv = 105},[8] = {id = 2006408,lv = 105}},mon = {id = 204,desc = "daily_gold-23-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6032331,cardId = 1102998,lv = 105,bklv = 13,star = 2,ghost = 34,equip = {[1] = {id = 2106401,lv = 105},[2] = {id = 2106402,lv = 105},[3] = {id = 2106403,lv = 105},[4] = {id = 2106404,lv = 105},[5] = {id = 2106405,lv = 105},[6] = {id = 2106406,lv = 105},[7] = {id = 2106407,lv = 105},[8] = {id = 2106408,lv = 105}},mon = {id = 224,desc = "daily_gold-23-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60324] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6032410,cardId = 1101998,lv = 105,bklv = 14,star = 4,equip = {[1] = {id = 2006411,lv = 105},[2] = {id = 2006412,lv = 105},[3] = {id = 2006413,lv = 105},[4] = {id = 2006404,lv = 105},[5] = {id = 2006415,lv = 105},[6] = {id = 2006406,lv = 105},[7] = {id = 2006417,lv = 105},[8] = {id = 2006418,lv = 105}},mon = {id = 207,desc = "daily_gold-24-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6032411,cardId = 1102998,lv = 105,bklv = 13,star = 4,ghost = 34,equip = {[1] = {id = 2106411,lv = 105},[2] = {id = 2106412,lv = 105},[3] = {id = 2106413,lv = 105},[4] = {id = 2106404,lv = 105},[5] = {id = 2106415,lv = 105},[6] = {id = 2106406,lv = 105},[7] = {id = 2106417,lv = 105},[8] = {id = 2106418,lv = 105}},mon = {id = 230,desc = "daily_gold-24-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6032420,cardId = 1101997,lv = 105,bklv = 14,star = 4,equip = {[1] = {id = 2006411,lv = 105},[2] = {id = 2006412,lv = 105},[3] = {id = 2006413,lv = 105},[4] = {id = 2006404,lv = 105},[5] = {id = 2006415,lv = 105},[6] = {id = 2006406,lv = 105},[7] = {id = 2006417,lv = 105},[8] = {id = 2006418,lv = 105}},mon = {id = 205,desc = "daily_gold-24-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6032421,cardId = 1102997,lv = 105,bklv = 13,star = 4,ghost = 34,equip = {[1] = {id = 2106411,lv = 105},[2] = {id = 2106412,lv = 105},[3] = {id = 2106413,lv = 105},[4] = {id = 2106404,lv = 105},[5] = {id = 2106415,lv = 105},[6] = {id = 2106406,lv = 105},[7] = {id = 2106417,lv = 105},[8] = {id = 2106418,lv = 105}},mon = {id = 219,desc = "daily_gold-24-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6032430,cardId = 1101998,lv = 105,bklv = 14,star = 4,equip = {[1] = {id = 2006411,lv = 105},[2] = {id = 2006412,lv = 105},[3] = {id = 2006413,lv = 105},[4] = {id = 2006404,lv = 105},[5] = {id = 2006415,lv = 105},[6] = {id = 2006406,lv = 105},[7] = {id = 2006417,lv = 105},[8] = {id = 2006418,lv = 105}},mon = {id = 204,desc = "daily_gold-24-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6032431,cardId = 1102998,lv = 105,bklv = 13,star = 4,ghost = 34,equip = {[1] = {id = 2106411,lv = 105},[2] = {id = 2106412,lv = 105},[3] = {id = 2106413,lv = 105},[4] = {id = 2106404,lv = 105},[5] = {id = 2106415,lv = 105},[6] = {id = 2106406,lv = 105},[7] = {id = 2106417,lv = 105},[8] = {id = 2106418,lv = 105}},mon = {id = 224,desc = "daily_gold-24-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60325] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6032510,cardId = 1101997,lv = 120,bklv = 17,star = 2,equip = {[1] = {id = 2007301,lv = 120},[2] = {id = 2007302,lv = 120},[3] = {id = 2007303,lv = 120},[4] = {id = 2007304,lv = 120},[5] = {id = 2007305,lv = 120},[6] = {id = 2007306,lv = 120},[7] = {id = 2007307,lv = 120},[8] = {id = 2007308,lv = 120}},mon = {id = 207,desc = "daily_gold-25-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6032511,cardId = 1102997,lv = 120,bklv = 16,star = 2,ghost = 40,equip = {[1] = {id = 2107301,lv = 120},[2] = {id = 2107302,lv = 120},[3] = {id = 2107303,lv = 120},[4] = {id = 2107304,lv = 120},[5] = {id = 2107305,lv = 120},[6] = {id = 2107306,lv = 120},[7] = {id = 2107307,lv = 120},[8] = {id = 2107308,lv = 120}},mon = {id = 230,desc = "daily_gold-25-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6032520,cardId = 1101997,lv = 120,bklv = 17,star = 2,equip = {[1] = {id = 2007301,lv = 120},[2] = {id = 2007302,lv = 120},[3] = {id = 2007303,lv = 120},[4] = {id = 2007304,lv = 120},[5] = {id = 2007305,lv = 120},[6] = {id = 2007306,lv = 120},[7] = {id = 2007307,lv = 120},[8] = {id = 2007308,lv = 120}},mon = {id = 205,desc = "daily_gold-25-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6032521,cardId = 1102997,lv = 120,bklv = 16,star = 2,ghost = 40,equip = {[1] = {id = 2107301,lv = 120},[2] = {id = 2107302,lv = 120},[3] = {id = 2107303,lv = 120},[4] = {id = 2107304,lv = 120},[5] = {id = 2107305,lv = 120},[6] = {id = 2107306,lv = 120},[7] = {id = 2107307,lv = 120},[8] = {id = 2107308,lv = 120}},mon = {id = 219,desc = "daily_gold-25-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6032530,cardId = 1101997,lv = 120,bklv = 17,star = 2,equip = {[1] = {id = 2007301,lv = 120},[2] = {id = 2007302,lv = 120},[3] = {id = 2007303,lv = 120},[4] = {id = 2007304,lv = 120},[5] = {id = 2007305,lv = 120},[6] = {id = 2007306,lv = 120},[7] = {id = 2007307,lv = 120},[8] = {id = 2007308,lv = 120}},mon = {id = 204,desc = "daily_gold-25-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6032531,cardId = 1102997,lv = 120,bklv = 16,star = 2,ghost = 40,equip = {[1] = {id = 2107301,lv = 120},[2] = {id = 2107302,lv = 120},[3] = {id = 2107303,lv = 120},[4] = {id = 2107304,lv = 120},[5] = {id = 2107305,lv = 120},[6] = {id = 2107306,lv = 120},[7] = {id = 2107307,lv = 120},[8] = {id = 2107308,lv = 120}},mon = {id = 224,desc = "daily_gold-25-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60326] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6032610,cardId = 1101997,lv = 120,bklv = 17,star = 2,equip = {[1] = {id = 2007401,lv = 120},[2] = {id = 2007402,lv = 120},[3] = {id = 2007403,lv = 120},[4] = {id = 2007404,lv = 120},[5] = {id = 2007405,lv = 120},[6] = {id = 2007406,lv = 120},[7] = {id = 2007407,lv = 120},[8] = {id = 2007408,lv = 120}},mon = {id = 207,desc = "daily_gold-26-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6032611,cardId = 1102997,lv = 120,bklv = 16,star = 2,ghost = 40,equip = {[1] = {id = 2107401,lv = 120},[2] = {id = 2107402,lv = 120},[3] = {id = 2107403,lv = 120},[4] = {id = 2107404,lv = 120},[5] = {id = 2107405,lv = 120},[6] = {id = 2107406,lv = 120},[7] = {id = 2107407,lv = 120},[8] = {id = 2107408,lv = 120}},mon = {id = 230,desc = "daily_gold-26-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6032620,cardId = 1101997,lv = 120,bklv = 17,star = 2,equip = {[1] = {id = 2007401,lv = 120},[2] = {id = 2007402,lv = 120},[3] = {id = 2007403,lv = 120},[4] = {id = 2007404,lv = 120},[5] = {id = 2007405,lv = 120},[6] = {id = 2007406,lv = 120},[7] = {id = 2007407,lv = 120},[8] = {id = 2007408,lv = 120}},mon = {id = 205,desc = "daily_gold-26-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6032621,cardId = 1102996,lv = 120,bklv = 16,star = 2,ghost = 40,equip = {[1] = {id = 2107401,lv = 120},[2] = {id = 2107402,lv = 120},[3] = {id = 2107403,lv = 120},[4] = {id = 2107404,lv = 120},[5] = {id = 2107405,lv = 120},[6] = {id = 2107406,lv = 120},[7] = {id = 2107407,lv = 120},[8] = {id = 2107408,lv = 120}},mon = {id = 219,desc = "daily_gold-26-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6032630,cardId = 1101997,lv = 120,bklv = 17,star = 2,equip = {[1] = {id = 2007401,lv = 120},[2] = {id = 2007402,lv = 120},[3] = {id = 2007403,lv = 120},[4] = {id = 2007404,lv = 120},[5] = {id = 2007405,lv = 120},[6] = {id = 2007406,lv = 120},[7] = {id = 2007407,lv = 120},[8] = {id = 2007408,lv = 120}},mon = {id = 204,desc = "daily_gold-26-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6032631,cardId = 1102997,lv = 120,bklv = 16,star = 2,ghost = 40,equip = {[1] = {id = 2107401,lv = 120},[2] = {id = 2107402,lv = 120},[3] = {id = 2107403,lv = 120},[4] = {id = 2107404,lv = 120},[5] = {id = 2107405,lv = 120},[6] = {id = 2107406,lv = 120},[7] = {id = 2107407,lv = 120},[8] = {id = 2107408,lv = 120}},mon = {id = 224,desc = "daily_gold-26-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60327] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6032710,cardId = 1101997,lv = 120,bklv = 17,star = 4,equip = {[1] = {id = 2007421,lv = 120},[2] = {id = 2007422,lv = 120},[3] = {id = 2007423,lv = 120},[4] = {id = 2007424,lv = 120},[5] = {id = 2007425,lv = 120},[6] = {id = 2007426,lv = 120},[7] = {id = 2007407,lv = 120},[8] = {id = 2007408,lv = 120}},mon = {id = 207,desc = "daily_gold-27-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6032711,cardId = 1102997,lv = 120,bklv = 16,star = 4,ghost = 40,equip = {[1] = {id = 2107421,lv = 120},[2] = {id = 2107422,lv = 120},[3] = {id = 2107423,lv = 120},[4] = {id = 2107424,lv = 120},[5] = {id = 2107425,lv = 120},[6] = {id = 2107426,lv = 120},[7] = {id = 2107407,lv = 120},[8] = {id = 2107408,lv = 120}},mon = {id = 230,desc = "daily_gold-27-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6032720,cardId = 1101997,lv = 120,bklv = 17,star = 4,equip = {[1] = {id = 2007421,lv = 120},[2] = {id = 2007422,lv = 120},[3] = {id = 2007423,lv = 120},[4] = {id = 2007424,lv = 120},[5] = {id = 2007425,lv = 120},[6] = {id = 2007426,lv = 120},[7] = {id = 2007407,lv = 120},[8] = {id = 2007408,lv = 120}},mon = {id = 205,desc = "daily_gold-27-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6032721,cardId = 1102996,lv = 120,bklv = 16,star = 4,ghost = 40,equip = {[1] = {id = 2107421,lv = 120},[2] = {id = 2107422,lv = 120},[3] = {id = 2107423,lv = 120},[4] = {id = 2107424,lv = 120},[5] = {id = 2107425,lv = 120},[6] = {id = 2107426,lv = 120},[7] = {id = 2107407,lv = 120},[8] = {id = 2107408,lv = 120}},mon = {id = 219,desc = "daily_gold-27-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6032730,cardId = 1101997,lv = 120,bklv = 17,star = 4,equip = {[1] = {id = 2007421,lv = 120},[2] = {id = 2007422,lv = 120},[3] = {id = 2007423,lv = 120},[4] = {id = 2007424,lv = 120},[5] = {id = 2007425,lv = 120},[6] = {id = 2007426,lv = 120},[7] = {id = 2007407,lv = 120},[8] = {id = 2007408,lv = 120}},mon = {id = 204,desc = "daily_gold-27-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6032731,cardId = 1102997,lv = 120,bklv = 16,star = 4,ghost = 40,equip = {[1] = {id = 2107421,lv = 120},[2] = {id = 2107422,lv = 120},[3] = {id = 2107423,lv = 120},[4] = {id = 2107424,lv = 120},[5] = {id = 2107425,lv = 120},[6] = {id = 2107426,lv = 120},[7] = {id = 2107407,lv = 120},[8] = {id = 2107408,lv = 120}},mon = {id = 224,desc = "daily_gold-27-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60328] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6032810,cardId = 1101999,lv = 132,bklv = 18,star = 2,equip = {[1] = {id = 2008301,lv = 130},[2] = {id = 2008302,lv = 130},[3] = {id = 2008303,lv = 130},[4] = {id = 2008304,lv = 130},[5] = {id = 2008305,lv = 130},[6] = {id = 2008306,lv = 130},[7] = {id = 2008307,lv = 130},[8] = {id = 2008308,lv = 130}},mon = {id = 207,desc = "daily_gold-28-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6032811,cardId = 1102999,lv = 132,bklv = 18,star = 2,ghost = 44,equip = {[1] = {id = 2108301,lv = 130},[2] = {id = 2108302,lv = 130},[3] = {id = 2108303,lv = 130},[4] = {id = 2108304,lv = 130},[5] = {id = 2108305,lv = 130},[6] = {id = 2108306,lv = 130},[7] = {id = 2108307,lv = 130},[8] = {id = 2108308,lv = 130}},mon = {id = 230,desc = "daily_gold-28-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6032820,cardId = 1101998,lv = 132,bklv = 18,star = 1,equip = {[1] = {id = 2008301,lv = 130},[2] = {id = 2008302,lv = 130},[3] = {id = 2008303,lv = 130},[4] = {id = 2008304,lv = 130},[5] = {id = 2008305,lv = 130},[6] = {id = 2008306,lv = 130},[7] = {id = 2008307,lv = 130},[8] = {id = 2008308,lv = 130}},mon = {id = 205,desc = "daily_gold-28-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6032821,cardId = 1102998,lv = 132,bklv = 18,star = 1,ghost = 44,equip = {[1] = {id = 2108301,lv = 130},[2] = {id = 2108302,lv = 130},[3] = {id = 2108303,lv = 130},[4] = {id = 2108304,lv = 130},[5] = {id = 2108305,lv = 130},[6] = {id = 2108306,lv = 130},[7] = {id = 2108307,lv = 130},[8] = {id = 2108308,lv = 130}},mon = {id = 219,desc = "daily_gold-28-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6032830,cardId = 1101999,lv = 132,bklv = 18,star = 2,equip = {[1] = {id = 2008301,lv = 130},[2] = {id = 2008302,lv = 130},[3] = {id = 2008303,lv = 130},[4] = {id = 2008304,lv = 130},[5] = {id = 2008305,lv = 130},[6] = {id = 2008306,lv = 130},[7] = {id = 2008307,lv = 130},[8] = {id = 2008308,lv = 130}},mon = {id = 204,desc = "daily_gold-28-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6032831,cardId = 1102999,lv = 132,bklv = 18,star = 2,ghost = 44,equip = {[1] = {id = 2108301,lv = 130},[2] = {id = 2108302,lv = 130},[3] = {id = 2108303,lv = 130},[4] = {id = 2108304,lv = 130},[5] = {id = 2108305,lv = 130},[6] = {id = 2108306,lv = 130},[7] = {id = 2108307,lv = 130},[8] = {id = 2108308,lv = 130}},mon = {id = 224,desc = "daily_gold-28-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60329] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6032910,cardId = 1101999,lv = 132,bklv = 18,star = 3,equip = {[1] = {id = 2008401,lv = 130},[2] = {id = 2008402,lv = 130},[3] = {id = 2008403,lv = 130},[4] = {id = 2008404,lv = 130},[5] = {id = 2008405,lv = 130},[6] = {id = 2008406,lv = 130},[7] = {id = 2008407,lv = 130},[8] = {id = 2008408,lv = 130}},mon = {id = 207,desc = "daily_gold-29-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6032911,cardId = 1102999,lv = 132,bklv = 18,star = 3,ghost = 44,equip = {[1] = {id = 2108401,lv = 130},[2] = {id = 2108402,lv = 130},[3] = {id = 2108403,lv = 130},[4] = {id = 2108404,lv = 130},[5] = {id = 2108405,lv = 130},[6] = {id = 2108406,lv = 130},[7] = {id = 2108407,lv = 130},[8] = {id = 2108408,lv = 130}},mon = {id = 230,desc = "daily_gold-29-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6032920,cardId = 1101998,lv = 132,bklv = 18,star = 2,equip = {[1] = {id = 2008401,lv = 130},[2] = {id = 2008402,lv = 130},[3] = {id = 2008403,lv = 130},[4] = {id = 2008404,lv = 130},[5] = {id = 2008405,lv = 130},[6] = {id = 2008406,lv = 130},[7] = {id = 2008407,lv = 130},[8] = {id = 2008408,lv = 130}},mon = {id = 205,desc = "daily_gold-29-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6032921,cardId = 1102998,lv = 132,bklv = 18,star = 2,ghost = 44,equip = {[1] = {id = 2108401,lv = 130},[2] = {id = 2108402,lv = 130},[3] = {id = 2108403,lv = 130},[4] = {id = 2108404,lv = 130},[5] = {id = 2108405,lv = 130},[6] = {id = 2108406,lv = 130},[7] = {id = 2108407,lv = 130},[8] = {id = 2108408,lv = 130}},mon = {id = 219,desc = "daily_gold-29-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6032930,cardId = 1101999,lv = 132,bklv = 18,star = 3,equip = {[1] = {id = 2008401,lv = 130},[2] = {id = 2008402,lv = 130},[3] = {id = 2008403,lv = 130},[4] = {id = 2008404,lv = 130},[5] = {id = 2008405,lv = 130},[6] = {id = 2008406,lv = 130},[7] = {id = 2008407,lv = 130},[8] = {id = 2008408,lv = 130}},mon = {id = 204,desc = "daily_gold-29-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6032931,cardId = 1102999,lv = 132,bklv = 18,star = 3,ghost = 44,equip = {[1] = {id = 2108401,lv = 130},[2] = {id = 2108402,lv = 130},[3] = {id = 2108403,lv = 130},[4] = {id = 2108404,lv = 130},[5] = {id = 2108405,lv = 130},[6] = {id = 2108406,lv = 130},[7] = {id = 2108407,lv = 130},[8] = {id = 2108408,lv = 130}},mon = {id = 224,desc = "daily_gold-29-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60330] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6033010,cardId = 1101999,lv = 132,bklv = 18,star = 5,equip = {[1] = {id = 2008421,lv = 130},[2] = {id = 2008412,lv = 130},[3] = {id = 2008413,lv = 130},[4] = {id = 2008404,lv = 130},[5] = {id = 2008415,lv = 130},[6] = {id = 2008406,lv = 130},[7] = {id = 2008427,lv = 130},[8] = {id = 2008418,lv = 130}},mon = {id = 207,desc = "daily_gold-30-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6033011,cardId = 1102999,lv = 132,bklv = 18,star = 5,ghost = 44,equip = {[1] = {id = 2108421,lv = 130},[2] = {id = 2108422,lv = 130},[3] = {id = 2108413,lv = 130},[4] = {id = 2108404,lv = 130},[5] = {id = 2108415,lv = 130},[6] = {id = 2108406,lv = 130},[7] = {id = 2108427,lv = 130},[8] = {id = 2108428,lv = 130}},mon = {id = 230,desc = "daily_gold-30-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6033020,cardId = 1101998,lv = 132,bklv = 18,star = 5,equip = {[1] = {id = 2008421,lv = 130},[2] = {id = 2008412,lv = 130},[3] = {id = 2008413,lv = 130},[4] = {id = 2008404,lv = 130},[5] = {id = 2008415,lv = 130},[6] = {id = 2008406,lv = 130},[7] = {id = 2008427,lv = 130},[8] = {id = 2008418,lv = 130}},mon = {id = 205,desc = "daily_gold-30-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6033021,cardId = 1102998,lv = 132,bklv = 18,star = 5,ghost = 44,equip = {[1] = {id = 2108421,lv = 130},[2] = {id = 2108422,lv = 130},[3] = {id = 2108413,lv = 130},[4] = {id = 2108404,lv = 130},[5] = {id = 2108415,lv = 130},[6] = {id = 2108406,lv = 130},[7] = {id = 2108427,lv = 130},[8] = {id = 2108428,lv = 130}},mon = {id = 219,desc = "daily_gold-30-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6033030,cardId = 1101999,lv = 132,bklv = 18,star = 5,equip = {[1] = {id = 2008421,lv = 130},[2] = {id = 2008412,lv = 130},[3] = {id = 2008413,lv = 130},[4] = {id = 2008404,lv = 130},[5] = {id = 2008415,lv = 130},[6] = {id = 2008406,lv = 130},[7] = {id = 2008427,lv = 130},[8] = {id = 2008418,lv = 130}},mon = {id = 204,desc = "daily_gold-30-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6033031,cardId = 1102999,lv = 132,bklv = 18,star = 5,ghost = 44,equip = {[1] = {id = 2108421,lv = 130},[2] = {id = 2108422,lv = 130},[3] = {id = 2108413,lv = 130},[4] = {id = 2108404,lv = 130},[5] = {id = 2108415,lv = 130},[6] = {id = 2108406,lv = 130},[7] = {id = 2108427,lv = 130},[8] = {id = 2108428,lv = 130}},mon = {id = 224,desc = "daily_gold-30-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60331] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6033110,cardId = 1101998,lv = 140,bklv = 19,star = 2,equip = {[1] = {id = 2009301,lv = 140},[2] = {id = 2009302,lv = 140},[3] = {id = 2009303,lv = 140},[4] = {id = 2009304,lv = 140},[5] = {id = 2009305,lv = 140},[6] = {id = 2009306,lv = 140},[7] = {id = 2009307,lv = 140},[8] = {id = 2009308,lv = 140}},mon = {id = 207,desc = "daily_gold-31-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6033111,cardId = 1102998,lv = 140,bklv = 19,star = 2,ghost = 48,equip = {[1] = {id = 2109301,lv = 140},[2] = {id = 2109302,lv = 140},[3] = {id = 2109303,lv = 140},[4] = {id = 2109304,lv = 140},[5] = {id = 2109305,lv = 140},[6] = {id = 2109306,lv = 140},[7] = {id = 2109307,lv = 140},[8] = {id = 2109308,lv = 140}},mon = {id = 230,desc = "daily_gold-31-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6033120,cardId = 1101997,lv = 140,bklv = 19,star = 1,equip = {[1] = {id = 2009301,lv = 140},[2] = {id = 2009302,lv = 140},[3] = {id = 2009303,lv = 140},[4] = {id = 2009304,lv = 140},[5] = {id = 2009305,lv = 140},[6] = {id = 2009306,lv = 140},[7] = {id = 2009307,lv = 140},[8] = {id = 2009308,lv = 140}},mon = {id = 205,desc = "daily_gold-31-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6033121,cardId = 1102997,lv = 140,bklv = 19,star = 1,ghost = 48,equip = {[1] = {id = 2109301,lv = 140},[2] = {id = 2109302,lv = 140},[3] = {id = 2109303,lv = 140},[4] = {id = 2109304,lv = 140},[5] = {id = 2109305,lv = 140},[6] = {id = 2109306,lv = 140},[7] = {id = 2109307,lv = 140},[8] = {id = 2109308,lv = 140}},mon = {id = 219,desc = "daily_gold-31-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6033130,cardId = 1101998,lv = 140,bklv = 19,star = 2,equip = {[1] = {id = 2009301,lv = 140},[2] = {id = 2009302,lv = 140},[3] = {id = 2009303,lv = 140},[4] = {id = 2009304,lv = 140},[5] = {id = 2009305,lv = 140},[6] = {id = 2009306,lv = 140},[7] = {id = 2009307,lv = 140},[8] = {id = 2009308,lv = 140}},mon = {id = 204,desc = "daily_gold-31-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6033131,cardId = 1102998,lv = 140,bklv = 19,star = 2,ghost = 48,equip = {[1] = {id = 2109301,lv = 140},[2] = {id = 2109302,lv = 140},[3] = {id = 2109303,lv = 140},[4] = {id = 2109304,lv = 140},[5] = {id = 2109305,lv = 140},[6] = {id = 2109306,lv = 140},[7] = {id = 2109307,lv = 140},[8] = {id = 2109308,lv = 140}},mon = {id = 224,desc = "daily_gold-31-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60332] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6033210,cardId = 1101998,lv = 140,bklv = 19,star = 3,equip = {[1] = {id = 2009401,lv = 140},[2] = {id = 2009402,lv = 140},[3] = {id = 2009403,lv = 140},[4] = {id = 2009404,lv = 140},[5] = {id = 2009405,lv = 140},[6] = {id = 2009406,lv = 140},[7] = {id = 2009407,lv = 140},[8] = {id = 2009408,lv = 140}},mon = {id = 207,desc = "daily_gold-32-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6033211,cardId = 1102998,lv = 140,bklv = 19,star = 3,ghost = 48,equip = {[1] = {id = 2109401,lv = 140},[2] = {id = 2109402,lv = 140},[3] = {id = 2109403,lv = 140},[4] = {id = 2109404,lv = 140},[5] = {id = 2109405,lv = 140},[6] = {id = 2109406,lv = 140},[7] = {id = 2109407,lv = 140},[8] = {id = 2109408,lv = 140}},mon = {id = 230,desc = "daily_gold-32-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6033220,cardId = 1101997,lv = 140,bklv = 19,star = 2,equip = {[1] = {id = 2009401,lv = 140},[2] = {id = 2009402,lv = 140},[3] = {id = 2009403,lv = 140},[4] = {id = 2009404,lv = 140},[5] = {id = 2009405,lv = 140},[6] = {id = 2009406,lv = 140},[7] = {id = 2009407,lv = 140},[8] = {id = 2009408,lv = 140}},mon = {id = 205,desc = "daily_gold-32-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6033221,cardId = 1102997,lv = 140,bklv = 19,star = 2,ghost = 48,equip = {[1] = {id = 2109401,lv = 140},[2] = {id = 2109402,lv = 140},[3] = {id = 2109403,lv = 140},[4] = {id = 2109404,lv = 140},[5] = {id = 2109405,lv = 140},[6] = {id = 2109406,lv = 140},[7] = {id = 2109407,lv = 140},[8] = {id = 2109408,lv = 140}},mon = {id = 219,desc = "daily_gold-32-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6033230,cardId = 1101998,lv = 140,bklv = 19,star = 3,equip = {[1] = {id = 2009401,lv = 140},[2] = {id = 2009402,lv = 140},[3] = {id = 2009403,lv = 140},[4] = {id = 2009404,lv = 140},[5] = {id = 2009405,lv = 140},[6] = {id = 2009406,lv = 140},[7] = {id = 2009407,lv = 140},[8] = {id = 2009408,lv = 140}},mon = {id = 204,desc = "daily_gold-32-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6033231,cardId = 1102998,lv = 140,bklv = 19,star = 3,ghost = 48,equip = {[1] = {id = 2109401,lv = 140},[2] = {id = 2109402,lv = 140},[3] = {id = 2109403,lv = 140},[4] = {id = 2109404,lv = 140},[5] = {id = 2109405,lv = 140},[6] = {id = 2109406,lv = 140},[7] = {id = 2109407,lv = 140},[8] = {id = 2109408,lv = 140}},mon = {id = 224,desc = "daily_gold-32-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60333] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6033310,cardId = 1101998,lv = 140,bklv = 19,star = 5,equip = {[1] = {id = 2009421,lv = 140},[2] = {id = 2009422,lv = 140},[3] = {id = 2009423,lv = 140},[4] = {id = 2009424,lv = 140},[5] = {id = 2009425,lv = 140},[6] = {id = 2009426,lv = 140},[7] = {id = 2009407,lv = 140},[8] = {id = 2009408,lv = 140}},mon = {id = 207,desc = "daily_gold-33-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6033311,cardId = 1102998,lv = 140,bklv = 19,star = 5,ghost = 48,equip = {[1] = {id = 2109421,lv = 140},[2] = {id = 2109422,lv = 140},[3] = {id = 2109423,lv = 140},[4] = {id = 2109424,lv = 140},[5] = {id = 2109425,lv = 140},[6] = {id = 2109426,lv = 140},[7] = {id = 2109407,lv = 140},[8] = {id = 2109408,lv = 140}},mon = {id = 230,desc = "daily_gold-33-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6033320,cardId = 1101997,lv = 140,bklv = 19,star = 5,equip = {[1] = {id = 2009421,lv = 140},[2] = {id = 2009422,lv = 140},[3] = {id = 2009423,lv = 140},[4] = {id = 2009424,lv = 140},[5] = {id = 2009425,lv = 140},[6] = {id = 2009426,lv = 140},[7] = {id = 2009407,lv = 140},[8] = {id = 2009408,lv = 140}},mon = {id = 205,desc = "daily_gold-33-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6033321,cardId = 1102997,lv = 140,bklv = 19,star = 5,ghost = 48,equip = {[1] = {id = 2109421,lv = 140},[2] = {id = 2109422,lv = 140},[3] = {id = 2109423,lv = 140},[4] = {id = 2109424,lv = 140},[5] = {id = 2109425,lv = 140},[6] = {id = 2109426,lv = 140},[7] = {id = 2109407,lv = 140},[8] = {id = 2109408,lv = 140}},mon = {id = 219,desc = "daily_gold-33-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6033330,cardId = 1101998,lv = 140,bklv = 19,star = 5,equip = {[1] = {id = 2009421,lv = 140},[2] = {id = 2009422,lv = 140},[3] = {id = 2009423,lv = 140},[4] = {id = 2009424,lv = 140},[5] = {id = 2009425,lv = 140},[6] = {id = 2009426,lv = 140},[7] = {id = 2009407,lv = 140},[8] = {id = 2009408,lv = 140}},mon = {id = 204,desc = "daily_gold-33-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6033331,cardId = 1102998,lv = 140,bklv = 19,star = 5,ghost = 48,equip = {[1] = {id = 2109421,lv = 140},[2] = {id = 2109422,lv = 140},[3] = {id = 2109423,lv = 140},[4] = {id = 2109424,lv = 140},[5] = {id = 2109425,lv = 140},[6] = {id = 2109426,lv = 140},[7] = {id = 2109407,lv = 140},[8] = {id = 2109408,lv = 140}},mon = {id = 224,desc = "daily_gold-33-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60334] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6033410,cardId = 1101997,lv = 150,bklv = 20,star = 2,equip = {[1] = {id = 2010301,lv = 150},[2] = {id = 2010302,lv = 150},[3] = {id = 2010303,lv = 150},[4] = {id = 2010304,lv = 150},[5] = {id = 2010305,lv = 150},[6] = {id = 2010306,lv = 150},[7] = {id = 2010307,lv = 150},[8] = {id = 2010308,lv = 150}},mon = {id = 207,desc = "daily_gold-34-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6033411,cardId = 1102997,lv = 150,bklv = 20,star = 2,ghost = 52,equip = {[1] = {id = 2110301,lv = 150},[2] = {id = 2110302,lv = 150},[3] = {id = 2110303,lv = 150},[4] = {id = 2110304,lv = 150},[5] = {id = 2110305,lv = 150},[6] = {id = 2110306,lv = 150},[7] = {id = 2110307,lv = 150},[8] = {id = 2110308,lv = 150}},mon = {id = 230,desc = "daily_gold-34-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6033420,cardId = 1101997,lv = 150,bklv = 20,star = 1,equip = {[1] = {id = 2010301,lv = 150},[2] = {id = 2010302,lv = 150},[3] = {id = 2010303,lv = 150},[4] = {id = 2010304,lv = 150},[5] = {id = 2010305,lv = 150},[6] = {id = 2010306,lv = 150},[7] = {id = 2010307,lv = 150},[8] = {id = 2010308,lv = 150}},mon = {id = 205,desc = "daily_gold-34-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6033421,cardId = 1102996,lv = 150,bklv = 20,star = 1,ghost = 52,equip = {[1] = {id = 2110301,lv = 150},[2] = {id = 2110302,lv = 150},[3] = {id = 2110303,lv = 150},[4] = {id = 2110304,lv = 150},[5] = {id = 2110305,lv = 150},[6] = {id = 2110306,lv = 150},[7] = {id = 2110307,lv = 150},[8] = {id = 2110308,lv = 150}},mon = {id = 219,desc = "daily_gold-34-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6033430,cardId = 1101997,lv = 150,bklv = 20,star = 2,equip = {[1] = {id = 2010301,lv = 150},[2] = {id = 2010302,lv = 150},[3] = {id = 2010303,lv = 150},[4] = {id = 2010304,lv = 150},[5] = {id = 2010305,lv = 150},[6] = {id = 2010306,lv = 150},[7] = {id = 2010307,lv = 150},[8] = {id = 2010308,lv = 150}},mon = {id = 204,desc = "daily_gold-34-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6033431,cardId = 1102997,lv = 150,bklv = 20,star = 2,ghost = 52,equip = {[1] = {id = 2110301,lv = 150},[2] = {id = 2110302,lv = 150},[3] = {id = 2110303,lv = 150},[4] = {id = 2110304,lv = 150},[5] = {id = 2110305,lv = 150},[6] = {id = 2110306,lv = 150},[7] = {id = 2110307,lv = 150},[8] = {id = 2110308,lv = 150}},mon = {id = 224,desc = "daily_gold-34-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60335] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6033510,cardId = 1101997,lv = 150,bklv = 20,star = 3,equip = {[1] = {id = 2010401,lv = 150},[2] = {id = 2010402,lv = 150},[3] = {id = 2010403,lv = 150},[4] = {id = 2010404,lv = 150},[5] = {id = 2010405,lv = 150},[6] = {id = 2010406,lv = 150},[7] = {id = 2010407,lv = 150},[8] = {id = 2010408,lv = 150}},mon = {id = 207,desc = "daily_gold-35-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6033511,cardId = 1102997,lv = 150,bklv = 20,star = 3,ghost = 52,equip = {[1] = {id = 2110401,lv = 150},[2] = {id = 2110402,lv = 150},[3] = {id = 2110403,lv = 150},[4] = {id = 2110404,lv = 150},[5] = {id = 2110405,lv = 150},[6] = {id = 2110406,lv = 150},[7] = {id = 2110407,lv = 150},[8] = {id = 2110408,lv = 150}},mon = {id = 230,desc = "daily_gold-35-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6033520,cardId = 1101997,lv = 150,bklv = 20,star = 2,equip = {[1] = {id = 2010401,lv = 150},[2] = {id = 2010402,lv = 150},[3] = {id = 2010403,lv = 150},[4] = {id = 2010404,lv = 150},[5] = {id = 2010405,lv = 150},[6] = {id = 2010406,lv = 150},[7] = {id = 2010407,lv = 150},[8] = {id = 2010408,lv = 150}},mon = {id = 205,desc = "daily_gold-35-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6033521,cardId = 1102996,lv = 150,bklv = 20,star = 2,ghost = 52,equip = {[1] = {id = 2110401,lv = 150},[2] = {id = 2110402,lv = 150},[3] = {id = 2110403,lv = 150},[4] = {id = 2110404,lv = 150},[5] = {id = 2110405,lv = 150},[6] = {id = 2110406,lv = 150},[7] = {id = 2110407,lv = 150},[8] = {id = 2110408,lv = 150}},mon = {id = 219,desc = "daily_gold-35-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6033530,cardId = 1101997,lv = 150,bklv = 20,star = 3,equip = {[1] = {id = 2010401,lv = 150},[2] = {id = 2010402,lv = 150},[3] = {id = 2010403,lv = 150},[4] = {id = 2010404,lv = 150},[5] = {id = 2010405,lv = 150},[6] = {id = 2010406,lv = 150},[7] = {id = 2010407,lv = 150},[8] = {id = 2010408,lv = 150}},mon = {id = 204,desc = "daily_gold-35-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6033531,cardId = 1102997,lv = 150,bklv = 20,star = 3,ghost = 52,equip = {[1] = {id = 2110401,lv = 150},[2] = {id = 2110402,lv = 150},[3] = {id = 2110403,lv = 150},[4] = {id = 2110404,lv = 150},[5] = {id = 2110405,lv = 150},[6] = {id = 2110406,lv = 150},[7] = {id = 2110407,lv = 150},[8] = {id = 2110408,lv = 150}},mon = {id = 224,desc = "daily_gold-35-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60336] = {
		[1] = {
			jlr = {cha = "daily_gold",id = 6033610,cardId = 1101997,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2010411,lv = 150},[2] = {id = 2010412,lv = 150},[3] = {id = 2010413,lv = 150},[4] = {id = 2010404,lv = 150},[5] = {id = 2010415,lv = 150},[6] = {id = 2010406,lv = 150},[7] = {id = 2010417,lv = 150},[8] = {id = 2010418,lv = 150}},mon = {id = 207,desc = "daily_gold-36-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6033611,cardId = 1102997,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2110411,lv = 150},[2] = {id = 2110412,lv = 150},[3] = {id = 2110413,lv = 150},[4] = {id = 2110404,lv = 150},[5] = {id = 2110415,lv = 150},[6] = {id = 2110406,lv = 150},[7] = {id = 2110417,lv = 150},[8] = {id = 2110418,lv = 150}},mon = {id = 230,desc = "daily_gold-36-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_gold",id = 6033620,cardId = 1101997,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2010411,lv = 150},[2] = {id = 2010412,lv = 150},[3] = {id = 2010413,lv = 150},[4] = {id = 2010404,lv = 150},[5] = {id = 2010415,lv = 150},[6] = {id = 2010406,lv = 150},[7] = {id = 2010417,lv = 150},[8] = {id = 2010418,lv = 150}},mon = {id = 205,desc = "daily_gold-36-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6033621,cardId = 1102996,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2110411,lv = 150},[2] = {id = 2110412,lv = 150},[3] = {id = 2110413,lv = 150},[4] = {id = 2110404,lv = 150},[5] = {id = 2110415,lv = 150},[6] = {id = 2110406,lv = 150},[7] = {id = 2110417,lv = 150},[8] = {id = 2110418,lv = 150}},mon = {id = 219,desc = "daily_gold-36-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_gold",id = 6033630,cardId = 1101997,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2010411,lv = 150},[2] = {id = 2010412,lv = 150},[3] = {id = 2010413,lv = 150},[4] = {id = 2010404,lv = 150},[5] = {id = 2010415,lv = 150},[6] = {id = 2010406,lv = 150},[7] = {id = 2010417,lv = 150},[8] = {id = 2010418,lv = 150}},mon = {id = 204,desc = "daily_gold-36-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_gold",id = 6033631,cardId = 1102997,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2110411,lv = 150},[2] = {id = 2110412,lv = 150},[3] = {id = 2110413,lv = 150},[4] = {id = 2110404,lv = 150},[5] = {id = 2110415,lv = 150},[6] = {id = 2110406,lv = 150},[7] = {id = 2110417,lv = 150},[8] = {id = 2110418,lv = 150}},mon = {id = 224,desc = "daily_gold-36-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60401] = {
		[1] = {
			jlr = {cha = "daily_relic",id = 6040110,cardId = 1101999,lv = 45,bklv = 6,star = 1,equip = {[1] = {id = 2002301,lv = 45},[2] = {id = 2002302,lv = 45},[3] = {id = 2002303,lv = 45},[4] = {id = 2002304,lv = 45},[5] = {id = 2002305,lv = 45},[6] = {id = 2002306,lv = 45},[7] = {id = 2002307,lv = 45},[8] = {id = 2002308,lv = 45}},mon = {id = 207,desc = "daily_relic-1-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6040111,cardId = 1102999,lv = 45,bklv = 7,star = 1,ghost = 11,equip = {[1] = {id = 2102301,lv = 45},[2] = {id = 2102302,lv = 45},[3] = {id = 2102303,lv = 45},[4] = {id = 2102304,lv = 45},[5] = {id = 2102305,lv = 45},[6] = {id = 2102306,lv = 45},[7] = {id = 2102307,lv = 45},[8] = {id = 2102308,lv = 45}},mon = {id = 230,desc = "daily_relic-1-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_relic",id = 6040120,cardId = 1101998,lv = 45,bklv = 6,star = 1,equip = {[1] = {id = 2002301,lv = 45},[2] = {id = 2002302,lv = 45},[3] = {id = 2002303,lv = 45},[4] = {id = 2002304,lv = 45},[5] = {id = 2002305,lv = 45},[6] = {id = 2002306,lv = 45},[7] = {id = 2002307,lv = 45},[8] = {id = 2002308,lv = 45}},mon = {id = 205,desc = "daily_relic-1-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6040121,cardId = 1102998,lv = 45,bklv = 7,star = 1,ghost = 11,equip = {[1] = {id = 2102301,lv = 45},[2] = {id = 2102302,lv = 45},[3] = {id = 2102303,lv = 45},[4] = {id = 2102304,lv = 45},[5] = {id = 2102305,lv = 45},[6] = {id = 2102306,lv = 45},[7] = {id = 2102307,lv = 45},[8] = {id = 2102308,lv = 45}},mon = {id = 219,desc = "daily_relic-1-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_relic",id = 6040130,cardId = 1101999,lv = 45,bklv = 6,star = 1,equip = {[1] = {id = 2002301,lv = 45},[2] = {id = 2002302,lv = 45},[3] = {id = 2002303,lv = 45},[4] = {id = 2002304,lv = 45},[5] = {id = 2002305,lv = 45},[6] = {id = 2002306,lv = 45},[7] = {id = 2002307,lv = 45},[8] = {id = 2002308,lv = 45}},mon = {id = 204,desc = "daily_relic-1-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6040131,cardId = 1102999,lv = 45,bklv = 7,star = 1,ghost = 11,equip = {[1] = {id = 2102301,lv = 45},[2] = {id = 2102302,lv = 45},[3] = {id = 2102303,lv = 45},[4] = {id = 2102304,lv = 45},[5] = {id = 2102305,lv = 45},[6] = {id = 2102306,lv = 45},[7] = {id = 2102307,lv = 45},[8] = {id = 2102308,lv = 45}},mon = {id = 224,desc = "daily_relic-1-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60402] = {
		[1] = {
			jlr = {cha = "daily_relic",id = 6040210,cardId = 1101999,lv = 65,bklv = 9,star = 1,equip = {[1] = {id = 2003301,lv = 65},[2] = {id = 2003302,lv = 65},[3] = {id = 2003303,lv = 65},[4] = {id = 2003304,lv = 65},[5] = {id = 2003305,lv = 65},[6] = {id = 2003306,lv = 65},[7] = {id = 2003307,lv = 65},[8] = {id = 2003308,lv = 65}},mon = {id = 207,desc = "daily_relic-2-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6040211,cardId = 1102999,lv = 65,bklv = 11,star = 1,ghost = 19,equip = {[1] = {id = 2103301,lv = 65},[2] = {id = 2103302,lv = 65},[3] = {id = 2103303,lv = 65},[4] = {id = 2103304,lv = 65},[5] = {id = 2103305,lv = 65},[6] = {id = 2103306,lv = 65},[7] = {id = 2103307,lv = 65},[8] = {id = 2103308,lv = 65}},mon = {id = 230,desc = "daily_relic-2-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_relic",id = 6040220,cardId = 1101998,lv = 65,bklv = 9,star = 1,equip = {[1] = {id = 2003301,lv = 65},[2] = {id = 2003302,lv = 65},[3] = {id = 2003303,lv = 65},[4] = {id = 2003304,lv = 65},[5] = {id = 2003305,lv = 65},[6] = {id = 2003306,lv = 65},[7] = {id = 2003307,lv = 65},[8] = {id = 2003308,lv = 65}},mon = {id = 205,desc = "daily_relic-2-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6040221,cardId = 1102998,lv = 65,bklv = 11,star = 1,ghost = 19,equip = {[1] = {id = 2103301,lv = 65},[2] = {id = 2103302,lv = 65},[3] = {id = 2103303,lv = 65},[4] = {id = 2103304,lv = 65},[5] = {id = 2103305,lv = 65},[6] = {id = 2103306,lv = 65},[7] = {id = 2103307,lv = 65},[8] = {id = 2103308,lv = 65}},mon = {id = 219,desc = "daily_relic-2-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_relic",id = 6040230,cardId = 1101999,lv = 65,bklv = 9,star = 1,equip = {[1] = {id = 2003301,lv = 65},[2] = {id = 2003302,lv = 65},[3] = {id = 2003303,lv = 65},[4] = {id = 2003304,lv = 65},[5] = {id = 2003305,lv = 65},[6] = {id = 2003306,lv = 65},[7] = {id = 2003307,lv = 65},[8] = {id = 2003308,lv = 65}},mon = {id = 204,desc = "daily_relic-2-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6040231,cardId = 1102999,lv = 65,bklv = 11,star = 1,ghost = 19,equip = {[1] = {id = 2103301,lv = 65},[2] = {id = 2103302,lv = 65},[3] = {id = 2103303,lv = 65},[4] = {id = 2103304,lv = 65},[5] = {id = 2103305,lv = 65},[6] = {id = 2103306,lv = 65},[7] = {id = 2103307,lv = 65},[8] = {id = 2103308,lv = 65}},mon = {id = 224,desc = "daily_relic-2-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60403] = {
		[1] = {
			jlr = {cha = "daily_relic",id = 6040310,cardId = 1101998,lv = 65,bklv = 9,star = 1,equip = {[1] = {id = 2003401,lv = 65},[2] = {id = 2003402,lv = 65},[3] = {id = 2003403,lv = 65},[4] = {id = 2003404,lv = 65},[5] = {id = 2003405,lv = 65},[6] = {id = 2003406,lv = 65},[7] = {id = 2003407,lv = 65},[8] = {id = 2003408,lv = 65}},mon = {id = 207,desc = "daily_relic-3-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6040311,cardId = 1102998,lv = 65,bklv = 11,star = 1,ghost = 19,equip = {[1] = {id = 2103401,lv = 65},[2] = {id = 2103402,lv = 65},[3] = {id = 2103403,lv = 65},[4] = {id = 2103404,lv = 65},[5] = {id = 2103405,lv = 65},[6] = {id = 2103406,lv = 65},[7] = {id = 2103407,lv = 65},[8] = {id = 2103408,lv = 65}},mon = {id = 230,desc = "daily_relic-3-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_relic",id = 6040320,cardId = 1101998,lv = 65,bklv = 9,star = 1,equip = {[1] = {id = 2003401,lv = 65},[2] = {id = 2003402,lv = 65},[3] = {id = 2003403,lv = 65},[4] = {id = 2003404,lv = 65},[5] = {id = 2003405,lv = 65},[6] = {id = 2003406,lv = 65},[7] = {id = 2003407,lv = 65},[8] = {id = 2003408,lv = 65}},mon = {id = 205,desc = "daily_relic-3-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6040321,cardId = 1102998,lv = 65,bklv = 11,star = 1,ghost = 19,equip = {[1] = {id = 2103401,lv = 65},[2] = {id = 2103402,lv = 65},[3] = {id = 2103403,lv = 65},[4] = {id = 2103404,lv = 65},[5] = {id = 2103405,lv = 65},[6] = {id = 2103406,lv = 65},[7] = {id = 2103407,lv = 65},[8] = {id = 2103408,lv = 65}},mon = {id = 219,desc = "daily_relic-3-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_relic",id = 6040330,cardId = 1101998,lv = 65,bklv = 9,star = 1,equip = {[1] = {id = 2003401,lv = 65},[2] = {id = 2003402,lv = 65},[3] = {id = 2003403,lv = 65},[4] = {id = 2003404,lv = 65},[5] = {id = 2003405,lv = 65},[6] = {id = 2003406,lv = 65},[7] = {id = 2003407,lv = 65},[8] = {id = 2003408,lv = 65}},mon = {id = 204,desc = "daily_relic-3-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6040331,cardId = 1102998,lv = 65,bklv = 11,star = 1,ghost = 19,equip = {[1] = {id = 2103401,lv = 65},[2] = {id = 2103402,lv = 65},[3] = {id = 2103403,lv = 65},[4] = {id = 2103404,lv = 65},[5] = {id = 2103405,lv = 65},[6] = {id = 2103406,lv = 65},[7] = {id = 2103407,lv = 65},[8] = {id = 2103408,lv = 65}},mon = {id = 224,desc = "daily_relic-3-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60404] = {
		[1] = {
			jlr = {cha = "daily_relic",id = 6040410,cardId = 1101999,lv = 85,bklv = 12,star = 2,equip = {[1] = {id = 2004301,lv = 85},[2] = {id = 2004302,lv = 85},[3] = {id = 2004303,lv = 85},[4] = {id = 2004304,lv = 85},[5] = {id = 2004305,lv = 85},[6] = {id = 2004306,lv = 85},[7] = {id = 2004307,lv = 85},[8] = {id = 2004308,lv = 85}},mon = {id = 207,desc = "daily_relic-4-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6040411,cardId = 1102999,lv = 85,bklv = 13,star = 2,ghost = 27,equip = {[1] = {id = 2104301,lv = 85},[2] = {id = 2104302,lv = 85},[3] = {id = 2104303,lv = 85},[4] = {id = 2104304,lv = 85},[5] = {id = 2104305,lv = 85},[6] = {id = 2104306,lv = 85},[7] = {id = 2104307,lv = 85},[8] = {id = 2104308,lv = 85}},mon = {id = 230,desc = "daily_relic-4-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_relic",id = 6040420,cardId = 1101998,lv = 85,bklv = 12,star = 1,equip = {[1] = {id = 2004301,lv = 85},[2] = {id = 2004302,lv = 85},[3] = {id = 2004303,lv = 85},[4] = {id = 2004304,lv = 85},[5] = {id = 2004305,lv = 85},[6] = {id = 2004306,lv = 85},[7] = {id = 2004307,lv = 85},[8] = {id = 2004308,lv = 85}},mon = {id = 205,desc = "daily_relic-4-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6040421,cardId = 1102998,lv = 85,bklv = 13,star = 1,ghost = 27,equip = {[1] = {id = 2104301,lv = 85},[2] = {id = 2104302,lv = 85},[3] = {id = 2104303,lv = 85},[4] = {id = 2104304,lv = 85},[5] = {id = 2104305,lv = 85},[6] = {id = 2104306,lv = 85},[7] = {id = 2104307,lv = 85},[8] = {id = 2104308,lv = 85}},mon = {id = 219,desc = "daily_relic-4-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_relic",id = 6040430,cardId = 1101999,lv = 85,bklv = 12,star = 2,equip = {[1] = {id = 2004301,lv = 85},[2] = {id = 2004302,lv = 85},[3] = {id = 2004303,lv = 85},[4] = {id = 2004304,lv = 85},[5] = {id = 2004305,lv = 85},[6] = {id = 2004306,lv = 85},[7] = {id = 2004307,lv = 85},[8] = {id = 2004308,lv = 85}},mon = {id = 204,desc = "daily_relic-4-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6040431,cardId = 1102999,lv = 85,bklv = 13,star = 2,ghost = 27,equip = {[1] = {id = 2104301,lv = 85},[2] = {id = 2104302,lv = 85},[3] = {id = 2104303,lv = 85},[4] = {id = 2104304,lv = 85},[5] = {id = 2104305,lv = 85},[6] = {id = 2104306,lv = 85},[7] = {id = 2104307,lv = 85},[8] = {id = 2104308,lv = 85}},mon = {id = 224,desc = "daily_relic-4-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60405] = {
		[1] = {
			jlr = {cha = "daily_relic",id = 6040510,cardId = 1101998,lv = 85,bklv = 12,star = 2,equip = {[1] = {id = 2004401,lv = 85},[2] = {id = 2004402,lv = 85},[3] = {id = 2004403,lv = 85},[4] = {id = 2004404,lv = 85},[5] = {id = 2004405,lv = 85},[6] = {id = 2004406,lv = 85},[7] = {id = 2004407,lv = 85},[8] = {id = 2004408,lv = 85}},mon = {id = 207,desc = "daily_relic-5-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6040511,cardId = 1102998,lv = 85,bklv = 13,star = 2,ghost = 27,equip = {[1] = {id = 2104401,lv = 85},[2] = {id = 2104402,lv = 85},[3] = {id = 2104403,lv = 85},[4] = {id = 2104404,lv = 85},[5] = {id = 2104405,lv = 85},[6] = {id = 2104406,lv = 85},[7] = {id = 2104407,lv = 85},[8] = {id = 2104408,lv = 85}},mon = {id = 230,desc = "daily_relic-5-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_relic",id = 6040520,cardId = 1101997,lv = 85,bklv = 12,star = 1,equip = {[1] = {id = 2004401,lv = 85},[2] = {id = 2004402,lv = 85},[3] = {id = 2004403,lv = 85},[4] = {id = 2004404,lv = 85},[5] = {id = 2004405,lv = 85},[6] = {id = 2004406,lv = 85},[7] = {id = 2004407,lv = 85},[8] = {id = 2004408,lv = 85}},mon = {id = 205,desc = "daily_relic-5-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6040521,cardId = 1102997,lv = 85,bklv = 13,star = 1,ghost = 27,equip = {[1] = {id = 2104401,lv = 85},[2] = {id = 2104402,lv = 85},[3] = {id = 2104403,lv = 85},[4] = {id = 2104404,lv = 85},[5] = {id = 2104405,lv = 85},[6] = {id = 2104406,lv = 85},[7] = {id = 2104407,lv = 85},[8] = {id = 2104408,lv = 85}},mon = {id = 219,desc = "daily_relic-5-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_relic",id = 6040530,cardId = 1101998,lv = 85,bklv = 12,star = 2,equip = {[1] = {id = 2004401,lv = 85},[2] = {id = 2004402,lv = 85},[3] = {id = 2004403,lv = 85},[4] = {id = 2004404,lv = 85},[5] = {id = 2004405,lv = 85},[6] = {id = 2004406,lv = 85},[7] = {id = 2004407,lv = 85},[8] = {id = 2004408,lv = 85}},mon = {id = 204,desc = "daily_relic-5-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6040531,cardId = 1102998,lv = 85,bklv = 13,star = 2,ghost = 27,equip = {[1] = {id = 2104401,lv = 85},[2] = {id = 2104402,lv = 85},[3] = {id = 2104403,lv = 85},[4] = {id = 2104404,lv = 85},[5] = {id = 2104405,lv = 85},[6] = {id = 2104406,lv = 85},[7] = {id = 2104407,lv = 85},[8] = {id = 2104408,lv = 85}},mon = {id = 224,desc = "daily_relic-5-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60406] = {
		[1] = {
			jlr = {cha = "daily_relic",id = 6040610,cardId = 1101997,lv = 85,bklv = 12,star = 2,equip = {[1] = {id = 2004421,lv = 85},[2] = {id = 2004422,lv = 85},[3] = {id = 2004423,lv = 85},[4] = {id = 2004404,lv = 85},[5] = {id = 2004425,lv = 85},[6] = {id = 2004406,lv = 85},[7] = {id = 2004427,lv = 85},[8] = {id = 2004428,lv = 85}},mon = {id = 207,desc = "daily_relic-6-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6040611,cardId = 1102997,lv = 85,bklv = 13,star = 2,ghost = 27,equip = {[1] = {id = 2104421,lv = 85},[2] = {id = 2104422,lv = 85},[3] = {id = 2104423,lv = 85},[4] = {id = 2104404,lv = 85},[5] = {id = 2104425,lv = 85},[6] = {id = 2104406,lv = 85},[7] = {id = 2104427,lv = 85},[8] = {id = 2104428,lv = 85}},mon = {id = 230,desc = "daily_relic-6-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_relic",id = 6040620,cardId = 1101997,lv = 85,bklv = 12,star = 2,equip = {[1] = {id = 2004421,lv = 85},[2] = {id = 2004422,lv = 85},[3] = {id = 2004423,lv = 85},[4] = {id = 2004404,lv = 85},[5] = {id = 2004425,lv = 85},[6] = {id = 2004406,lv = 85},[7] = {id = 2004427,lv = 85},[8] = {id = 2004428,lv = 85}},mon = {id = 205,desc = "daily_relic-6-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6040621,cardId = 1102997,lv = 85,bklv = 13,star = 2,ghost = 27,equip = {[1] = {id = 2104421,lv = 85},[2] = {id = 2104422,lv = 85},[3] = {id = 2104423,lv = 85},[4] = {id = 2104404,lv = 85},[5] = {id = 2104425,lv = 85},[6] = {id = 2104406,lv = 85},[7] = {id = 2104427,lv = 85},[8] = {id = 2104428,lv = 85}},mon = {id = 219,desc = "daily_relic-6-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_relic",id = 6040630,cardId = 1101997,lv = 85,bklv = 12,star = 2,equip = {[1] = {id = 2004421,lv = 85},[2] = {id = 2004422,lv = 85},[3] = {id = 2004423,lv = 85},[4] = {id = 2004404,lv = 85},[5] = {id = 2004425,lv = 85},[6] = {id = 2004406,lv = 85},[7] = {id = 2004427,lv = 85},[8] = {id = 2004428,lv = 85}},mon = {id = 204,desc = "daily_relic-6-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6040631,cardId = 1102997,lv = 85,bklv = 13,star = 2,ghost = 27,equip = {[1] = {id = 2104421,lv = 85},[2] = {id = 2104422,lv = 85},[3] = {id = 2104423,lv = 85},[4] = {id = 2104404,lv = 85},[5] = {id = 2104425,lv = 85},[6] = {id = 2104406,lv = 85},[7] = {id = 2104427,lv = 85},[8] = {id = 2104428,lv = 85}},mon = {id = 224,desc = "daily_relic-6-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60407] = {
		[1] = {
			jlr = {cha = "daily_relic",id = 6040710,cardId = 1101999,lv = 95,bklv = 13,star = 2,equip = {[1] = {id = 2005301,lv = 95},[2] = {id = 2005302,lv = 95},[3] = {id = 2005303,lv = 95},[4] = {id = 2005304,lv = 95},[5] = {id = 2005305,lv = 95},[6] = {id = 2005306,lv = 95},[7] = {id = 2005307,lv = 95},[8] = {id = 2005308,lv = 95}},mon = {id = 207,desc = "daily_relic-7-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6040711,cardId = 1102999,lv = 95,bklv = 15,star = 2,ghost = 31,equip = {[1] = {id = 2105301,lv = 95},[2] = {id = 2105302,lv = 95},[3] = {id = 2105303,lv = 95},[4] = {id = 2105304,lv = 95},[5] = {id = 2105305,lv = 95},[6] = {id = 2105306,lv = 95},[7] = {id = 2105307,lv = 95},[8] = {id = 2105308,lv = 95}},mon = {id = 230,desc = "daily_relic-7-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_relic",id = 6040720,cardId = 1101998,lv = 95,bklv = 13,star = 2,equip = {[1] = {id = 2005301,lv = 95},[2] = {id = 2005302,lv = 95},[3] = {id = 2005303,lv = 95},[4] = {id = 2005304,lv = 95},[5] = {id = 2005305,lv = 95},[6] = {id = 2005306,lv = 95},[7] = {id = 2005307,lv = 95},[8] = {id = 2005308,lv = 95}},mon = {id = 205,desc = "daily_relic-7-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6040721,cardId = 1102998,lv = 95,bklv = 15,star = 2,ghost = 31,equip = {[1] = {id = 2105301,lv = 95},[2] = {id = 2105302,lv = 95},[3] = {id = 2105303,lv = 95},[4] = {id = 2105304,lv = 95},[5] = {id = 2105305,lv = 95},[6] = {id = 2105306,lv = 95},[7] = {id = 2105307,lv = 95},[8] = {id = 2105308,lv = 95}},mon = {id = 219,desc = "daily_relic-7-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_relic",id = 6040730,cardId = 1101999,lv = 95,bklv = 13,star = 2,equip = {[1] = {id = 2005301,lv = 95},[2] = {id = 2005302,lv = 95},[3] = {id = 2005303,lv = 95},[4] = {id = 2005304,lv = 95},[5] = {id = 2005305,lv = 95},[6] = {id = 2005306,lv = 95},[7] = {id = 2005307,lv = 95},[8] = {id = 2005308,lv = 95}},mon = {id = 204,desc = "daily_relic-7-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6040731,cardId = 1102999,lv = 95,bklv = 15,star = 2,ghost = 31,equip = {[1] = {id = 2105301,lv = 95},[2] = {id = 2105302,lv = 95},[3] = {id = 2105303,lv = 95},[4] = {id = 2105304,lv = 95},[5] = {id = 2105305,lv = 95},[6] = {id = 2105306,lv = 95},[7] = {id = 2105307,lv = 95},[8] = {id = 2105308,lv = 95}},mon = {id = 224,desc = "daily_relic-7-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60408] = {
		[1] = {
			jlr = {cha = "daily_relic",id = 6040810,cardId = 1101998,lv = 95,bklv = 13,star = 2,equip = {[1] = {id = 2005401,lv = 95},[2] = {id = 2005402,lv = 95},[3] = {id = 2005403,lv = 95},[4] = {id = 2005404,lv = 95},[5] = {id = 2005405,lv = 95},[6] = {id = 2005406,lv = 95},[7] = {id = 2005407,lv = 95},[8] = {id = 2005408,lv = 95}},mon = {id = 207,desc = "daily_relic-8-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6040811,cardId = 1102998,lv = 95,bklv = 15,star = 2,ghost = 31,equip = {[1] = {id = 2105401,lv = 95},[2] = {id = 2105402,lv = 95},[3] = {id = 2105403,lv = 95},[4] = {id = 2105404,lv = 95},[5] = {id = 2105405,lv = 95},[6] = {id = 2105406,lv = 95},[7] = {id = 2105407,lv = 95},[8] = {id = 2105408,lv = 95}},mon = {id = 230,desc = "daily_relic-8-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_relic",id = 6040820,cardId = 1101997,lv = 95,bklv = 13,star = 2,equip = {[1] = {id = 2005401,lv = 95},[2] = {id = 2005402,lv = 95},[3] = {id = 2005403,lv = 95},[4] = {id = 2005404,lv = 95},[5] = {id = 2005405,lv = 95},[6] = {id = 2005406,lv = 95},[7] = {id = 2005407,lv = 95},[8] = {id = 2005408,lv = 95}},mon = {id = 205,desc = "daily_relic-8-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6040821,cardId = 1102997,lv = 95,bklv = 15,star = 2,ghost = 31,equip = {[1] = {id = 2105401,lv = 95},[2] = {id = 2105402,lv = 95},[3] = {id = 2105403,lv = 95},[4] = {id = 2105404,lv = 95},[5] = {id = 2105405,lv = 95},[6] = {id = 2105406,lv = 95},[7] = {id = 2105407,lv = 95},[8] = {id = 2105408,lv = 95}},mon = {id = 219,desc = "daily_relic-8-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_relic",id = 6040830,cardId = 1101998,lv = 95,bklv = 13,star = 2,equip = {[1] = {id = 2005401,lv = 95},[2] = {id = 2005402,lv = 95},[3] = {id = 2005403,lv = 95},[4] = {id = 2005404,lv = 95},[5] = {id = 2005405,lv = 95},[6] = {id = 2005406,lv = 95},[7] = {id = 2005407,lv = 95},[8] = {id = 2005408,lv = 95}},mon = {id = 204,desc = "daily_relic-8-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6040831,cardId = 1102998,lv = 95,bklv = 15,star = 2,ghost = 31,equip = {[1] = {id = 2105401,lv = 95},[2] = {id = 2105402,lv = 95},[3] = {id = 2105403,lv = 95},[4] = {id = 2105404,lv = 95},[5] = {id = 2105405,lv = 95},[6] = {id = 2105406,lv = 95},[7] = {id = 2105407,lv = 95},[8] = {id = 2105408,lv = 95}},mon = {id = 224,desc = "daily_relic-8-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60409] = {
		[1] = {
			jlr = {cha = "daily_relic",id = 6040910,cardId = 1101997,lv = 95,bklv = 13,star = 2,equip = {[1] = {id = 2005421,lv = 95},[2] = {id = 2005422,lv = 95},[3] = {id = 2005423,lv = 95},[4] = {id = 2005434,lv = 95},[5] = {id = 2005425,lv = 95},[6] = {id = 2005436,lv = 95},[7] = {id = 2005407,lv = 95},[8] = {id = 2005408,lv = 95}},mon = {id = 207,desc = "daily_relic-9-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6040911,cardId = 1102997,lv = 95,bklv = 15,star = 2,ghost = 31,equip = {[1] = {id = 2105421,lv = 95},[2] = {id = 2105432,lv = 95},[3] = {id = 2105423,lv = 95},[4] = {id = 2105434,lv = 95},[5] = {id = 2105425,lv = 95},[6] = {id = 2105436,lv = 95},[7] = {id = 2105407,lv = 95},[8] = {id = 2105408,lv = 95}},mon = {id = 230,desc = "daily_relic-9-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_relic",id = 6040920,cardId = 1101997,lv = 95,bklv = 13,star = 2,equip = {[1] = {id = 2005421,lv = 95},[2] = {id = 2005422,lv = 95},[3] = {id = 2005423,lv = 95},[4] = {id = 2005434,lv = 95},[5] = {id = 2005425,lv = 95},[6] = {id = 2005436,lv = 95},[7] = {id = 2005407,lv = 95},[8] = {id = 2005408,lv = 95}},mon = {id = 205,desc = "daily_relic-9-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6040921,cardId = 1102996,lv = 95,bklv = 15,star = 1,ghost = 31,equip = {[1] = {id = 2105421,lv = 95},[2] = {id = 2105432,lv = 95},[3] = {id = 2105423,lv = 95},[4] = {id = 2105434,lv = 95},[5] = {id = 2105425,lv = 95},[6] = {id = 2105436,lv = 95},[7] = {id = 2105407,lv = 95},[8] = {id = 2105408,lv = 95}},mon = {id = 219,desc = "daily_relic-9-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_relic",id = 6040930,cardId = 1101997,lv = 95,bklv = 13,star = 2,equip = {[1] = {id = 2005421,lv = 95},[2] = {id = 2005422,lv = 95},[3] = {id = 2005423,lv = 95},[4] = {id = 2005434,lv = 95},[5] = {id = 2005425,lv = 95},[6] = {id = 2005436,lv = 95},[7] = {id = 2005407,lv = 95},[8] = {id = 2005408,lv = 95}},mon = {id = 204,desc = "daily_relic-9-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6040931,cardId = 1102997,lv = 95,bklv = 15,star = 2,ghost = 31,equip = {[1] = {id = 2105421,lv = 95},[2] = {id = 2105432,lv = 95},[3] = {id = 2105423,lv = 95},[4] = {id = 2105434,lv = 95},[5] = {id = 2105425,lv = 95},[6] = {id = 2105436,lv = 95},[7] = {id = 2105407,lv = 95},[8] = {id = 2105408,lv = 95}},mon = {id = 224,desc = "daily_relic-9-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60410] = {
		[1] = {
			jlr = {cha = "daily_relic",id = 6041010,cardId = 1101999,lv = 105,bklv = 14,star = 3,equip = {[1] = {id = 2006301,lv = 105},[2] = {id = 2006302,lv = 105},[3] = {id = 2006303,lv = 105},[4] = {id = 2006304,lv = 105},[5] = {id = 2006305,lv = 105},[6] = {id = 2006306,lv = 105},[7] = {id = 2006307,lv = 105},[8] = {id = 2006308,lv = 105}},mon = {id = 207,desc = "daily_relic-10-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6041011,cardId = 1102999,lv = 105,bklv = 16,star = 3,ghost = 35,equip = {[1] = {id = 2106301,lv = 105},[2] = {id = 2106302,lv = 105},[3] = {id = 2106303,lv = 105},[4] = {id = 2106304,lv = 105},[5] = {id = 2106305,lv = 105},[6] = {id = 2106306,lv = 105},[7] = {id = 2106307,lv = 105},[8] = {id = 2106308,lv = 105}},mon = {id = 230,desc = "daily_relic-10-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_relic",id = 6041020,cardId = 1101998,lv = 105,bklv = 14,star = 2,equip = {[1] = {id = 2006301,lv = 105},[2] = {id = 2006302,lv = 105},[3] = {id = 2006303,lv = 105},[4] = {id = 2006304,lv = 105},[5] = {id = 2006305,lv = 105},[6] = {id = 2006306,lv = 105},[7] = {id = 2006307,lv = 105},[8] = {id = 2006308,lv = 105}},mon = {id = 205,desc = "daily_relic-10-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6041021,cardId = 1102998,lv = 105,bklv = 16,star = 2,ghost = 35,equip = {[1] = {id = 2106301,lv = 105},[2] = {id = 2106302,lv = 105},[3] = {id = 2106303,lv = 105},[4] = {id = 2106304,lv = 105},[5] = {id = 2106305,lv = 105},[6] = {id = 2106306,lv = 105},[7] = {id = 2106307,lv = 105},[8] = {id = 2106308,lv = 105}},mon = {id = 219,desc = "daily_relic-10-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_relic",id = 6041030,cardId = 1101999,lv = 105,bklv = 14,star = 3,equip = {[1] = {id = 2006301,lv = 105},[2] = {id = 2006302,lv = 105},[3] = {id = 2006303,lv = 105},[4] = {id = 2006304,lv = 105},[5] = {id = 2006305,lv = 105},[6] = {id = 2006306,lv = 105},[7] = {id = 2006307,lv = 105},[8] = {id = 2006308,lv = 105}},mon = {id = 204,desc = "daily_relic-10-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6041031,cardId = 1102999,lv = 105,bklv = 16,star = 3,ghost = 35,equip = {[1] = {id = 2106301,lv = 105},[2] = {id = 2106302,lv = 105},[3] = {id = 2106303,lv = 105},[4] = {id = 2106304,lv = 105},[5] = {id = 2106305,lv = 105},[6] = {id = 2106306,lv = 105},[7] = {id = 2106307,lv = 105},[8] = {id = 2106308,lv = 105}},mon = {id = 224,desc = "daily_relic-10-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60411] = {
		[1] = {
			jlr = {cha = "daily_relic",id = 6041110,cardId = 1101998,lv = 105,bklv = 14,star = 3,equip = {[1] = {id = 2006401,lv = 105},[2] = {id = 2006402,lv = 105},[3] = {id = 2006403,lv = 105},[4] = {id = 2006404,lv = 105},[5] = {id = 2006405,lv = 105},[6] = {id = 2006406,lv = 105},[7] = {id = 2006407,lv = 105},[8] = {id = 2006408,lv = 105}},mon = {id = 207,desc = "daily_relic-11-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6041111,cardId = 1102998,lv = 105,bklv = 16,star = 3,ghost = 35,equip = {[1] = {id = 2106401,lv = 105},[2] = {id = 2106402,lv = 105},[3] = {id = 2106403,lv = 105},[4] = {id = 2106404,lv = 105},[5] = {id = 2106405,lv = 105},[6] = {id = 2106406,lv = 105},[7] = {id = 2106407,lv = 105},[8] = {id = 2106408,lv = 105}},mon = {id = 230,desc = "daily_relic-11-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_relic",id = 6041120,cardId = 1101997,lv = 105,bklv = 14,star = 2,equip = {[1] = {id = 2006401,lv = 105},[2] = {id = 2006402,lv = 105},[3] = {id = 2006403,lv = 105},[4] = {id = 2006404,lv = 105},[5] = {id = 2006405,lv = 105},[6] = {id = 2006406,lv = 105},[7] = {id = 2006407,lv = 105},[8] = {id = 2006408,lv = 105}},mon = {id = 205,desc = "daily_relic-11-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6041121,cardId = 1102997,lv = 105,bklv = 16,star = 2,ghost = 35,equip = {[1] = {id = 2106401,lv = 105},[2] = {id = 2106402,lv = 105},[3] = {id = 2106403,lv = 105},[4] = {id = 2106404,lv = 105},[5] = {id = 2106405,lv = 105},[6] = {id = 2106406,lv = 105},[7] = {id = 2106407,lv = 105},[8] = {id = 2106408,lv = 105}},mon = {id = 219,desc = "daily_relic-11-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_relic",id = 6041130,cardId = 1101998,lv = 105,bklv = 14,star = 3,equip = {[1] = {id = 2006401,lv = 105},[2] = {id = 2006402,lv = 105},[3] = {id = 2006403,lv = 105},[4] = {id = 2006404,lv = 105},[5] = {id = 2006405,lv = 105},[6] = {id = 2006406,lv = 105},[7] = {id = 2006407,lv = 105},[8] = {id = 2006408,lv = 105}},mon = {id = 204,desc = "daily_relic-11-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6041131,cardId = 1102998,lv = 105,bklv = 16,star = 3,ghost = 35,equip = {[1] = {id = 2106401,lv = 105},[2] = {id = 2106402,lv = 105},[3] = {id = 2106403,lv = 105},[4] = {id = 2106404,lv = 105},[5] = {id = 2106405,lv = 105},[6] = {id = 2106406,lv = 105},[7] = {id = 2106407,lv = 105},[8] = {id = 2106408,lv = 105}},mon = {id = 224,desc = "daily_relic-11-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60412] = {
		[1] = {
			jlr = {cha = "daily_relic",id = 6041210,cardId = 1101997,lv = 105,bklv = 14,star = 3,equip = {[1] = {id = 2006411,lv = 105},[2] = {id = 2006412,lv = 105},[3] = {id = 2006413,lv = 105},[4] = {id = 2006404,lv = 105},[5] = {id = 2006415,lv = 105},[6] = {id = 2006406,lv = 105},[7] = {id = 2006417,lv = 105},[8] = {id = 2006418,lv = 105}},mon = {id = 207,desc = "daily_relic-12-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6041211,cardId = 1102997,lv = 105,bklv = 16,star = 3,ghost = 35,equip = {[1] = {id = 2106411,lv = 105},[2] = {id = 2106412,lv = 105},[3] = {id = 2106413,lv = 105},[4] = {id = 2106404,lv = 105},[5] = {id = 2106415,lv = 105},[6] = {id = 2106406,lv = 105},[7] = {id = 2106417,lv = 105},[8] = {id = 2106418,lv = 105}},mon = {id = 230,desc = "daily_relic-12-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_relic",id = 6041220,cardId = 1101997,lv = 105,bklv = 14,star = 2,equip = {[1] = {id = 2006411,lv = 105},[2] = {id = 2006412,lv = 105},[3] = {id = 2006413,lv = 105},[4] = {id = 2006404,lv = 105},[5] = {id = 2006415,lv = 105},[6] = {id = 2006406,lv = 105},[7] = {id = 2006417,lv = 105},[8] = {id = 2006418,lv = 105}},mon = {id = 205,desc = "daily_relic-12-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6041221,cardId = 1102996,lv = 105,bklv = 16,star = 2,ghost = 35,equip = {[1] = {id = 2106411,lv = 105},[2] = {id = 2106412,lv = 105},[3] = {id = 2106413,lv = 105},[4] = {id = 2106404,lv = 105},[5] = {id = 2106415,lv = 105},[6] = {id = 2106406,lv = 105},[7] = {id = 2106417,lv = 105},[8] = {id = 2106418,lv = 105}},mon = {id = 219,desc = "daily_relic-12-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_relic",id = 6041230,cardId = 1101997,lv = 105,bklv = 14,star = 3,equip = {[1] = {id = 2006411,lv = 105},[2] = {id = 2006412,lv = 105},[3] = {id = 2006413,lv = 105},[4] = {id = 2006404,lv = 105},[5] = {id = 2006415,lv = 105},[6] = {id = 2006406,lv = 105},[7] = {id = 2006417,lv = 105},[8] = {id = 2006418,lv = 105}},mon = {id = 204,desc = "daily_relic-12-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6041231,cardId = 1102997,lv = 105,bklv = 16,star = 3,ghost = 35,equip = {[1] = {id = 2106411,lv = 105},[2] = {id = 2106412,lv = 105},[3] = {id = 2106413,lv = 105},[4] = {id = 2106404,lv = 105},[5] = {id = 2106415,lv = 105},[6] = {id = 2106406,lv = 105},[7] = {id = 2106417,lv = 105},[8] = {id = 2106418,lv = 105}},mon = {id = 224,desc = "daily_relic-12-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60413] = {
		[1] = {
			jlr = {cha = "daily_relic",id = 6041310,cardId = 1101999,lv = 115,bklv = 15,star = 3,equip = {[1] = {id = 2007301,lv = 115},[2] = {id = 2007302,lv = 115},[3] = {id = 2007303,lv = 115},[4] = {id = 2007304,lv = 115},[5] = {id = 2007305,lv = 115},[6] = {id = 2007306,lv = 115},[7] = {id = 2007307,lv = 115},[8] = {id = 2007308,lv = 115}},mon = {id = 207,desc = "daily_relic-13-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6041311,cardId = 1102999,lv = 115,bklv = 17,star = 3,ghost = 39,equip = {[1] = {id = 2107301,lv = 115},[2] = {id = 2107302,lv = 115},[3] = {id = 2107303,lv = 115},[4] = {id = 2107304,lv = 115},[5] = {id = 2107305,lv = 115},[6] = {id = 2107306,lv = 115},[7] = {id = 2107307,lv = 115},[8] = {id = 2107308,lv = 115}},mon = {id = 230,desc = "daily_relic-13-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_relic",id = 6041320,cardId = 1101998,lv = 115,bklv = 15,star = 3,equip = {[1] = {id = 2007301,lv = 115},[2] = {id = 2007302,lv = 115},[3] = {id = 2007303,lv = 115},[4] = {id = 2007304,lv = 115},[5] = {id = 2007305,lv = 115},[6] = {id = 2007306,lv = 115},[7] = {id = 2007307,lv = 115},[8] = {id = 2007308,lv = 115}},mon = {id = 205,desc = "daily_relic-13-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6041321,cardId = 1102998,lv = 115,bklv = 17,star = 3,ghost = 39,equip = {[1] = {id = 2107301,lv = 115},[2] = {id = 2107302,lv = 115},[3] = {id = 2107303,lv = 115},[4] = {id = 2107304,lv = 115},[5] = {id = 2107305,lv = 115},[6] = {id = 2107306,lv = 115},[7] = {id = 2107307,lv = 115},[8] = {id = 2107308,lv = 115}},mon = {id = 219,desc = "daily_relic-13-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_relic",id = 6041330,cardId = 1101999,lv = 115,bklv = 15,star = 3,equip = {[1] = {id = 2007301,lv = 115},[2] = {id = 2007302,lv = 115},[3] = {id = 2007303,lv = 115},[4] = {id = 2007304,lv = 115},[5] = {id = 2007305,lv = 115},[6] = {id = 2007306,lv = 115},[7] = {id = 2007307,lv = 115},[8] = {id = 2007308,lv = 115}},mon = {id = 204,desc = "daily_relic-13-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6041331,cardId = 1102999,lv = 115,bklv = 17,star = 3,ghost = 39,equip = {[1] = {id = 2107301,lv = 115},[2] = {id = 2107302,lv = 115},[3] = {id = 2107303,lv = 115},[4] = {id = 2107304,lv = 115},[5] = {id = 2107305,lv = 115},[6] = {id = 2107306,lv = 115},[7] = {id = 2107307,lv = 115},[8] = {id = 2107308,lv = 115}},mon = {id = 224,desc = "daily_relic-13-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60414] = {
		[1] = {
			jlr = {cha = "daily_relic",id = 6041410,cardId = 1101998,lv = 115,bklv = 15,star = 3,equip = {[1] = {id = 2007401,lv = 115},[2] = {id = 2007402,lv = 115},[3] = {id = 2007403,lv = 115},[4] = {id = 2007404,lv = 115},[5] = {id = 2007405,lv = 115},[6] = {id = 2007406,lv = 115},[7] = {id = 2007407,lv = 115},[8] = {id = 2007408,lv = 115}},mon = {id = 207,desc = "daily_relic-14-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6041411,cardId = 1102998,lv = 115,bklv = 17,star = 3,ghost = 39,equip = {[1] = {id = 2107401,lv = 115},[2] = {id = 2107402,lv = 115},[3] = {id = 2107403,lv = 115},[4] = {id = 2107404,lv = 115},[5] = {id = 2107405,lv = 115},[6] = {id = 2107406,lv = 115},[7] = {id = 2107407,lv = 115},[8] = {id = 2107408,lv = 115}},mon = {id = 230,desc = "daily_relic-14-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_relic",id = 6041420,cardId = 1101997,lv = 115,bklv = 15,star = 3,equip = {[1] = {id = 2007401,lv = 115},[2] = {id = 2007402,lv = 115},[3] = {id = 2007403,lv = 115},[4] = {id = 2007404,lv = 115},[5] = {id = 2007405,lv = 115},[6] = {id = 2007406,lv = 115},[7] = {id = 2007407,lv = 115},[8] = {id = 2007408,lv = 115}},mon = {id = 205,desc = "daily_relic-14-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6041421,cardId = 1102997,lv = 115,bklv = 17,star = 3,ghost = 39,equip = {[1] = {id = 2107401,lv = 115},[2] = {id = 2107402,lv = 115},[3] = {id = 2107403,lv = 115},[4] = {id = 2107404,lv = 115},[5] = {id = 2107405,lv = 115},[6] = {id = 2107406,lv = 115},[7] = {id = 2107407,lv = 115},[8] = {id = 2107408,lv = 115}},mon = {id = 219,desc = "daily_relic-14-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_relic",id = 6041430,cardId = 1101998,lv = 115,bklv = 15,star = 3,equip = {[1] = {id = 2007401,lv = 115},[2] = {id = 2007402,lv = 115},[3] = {id = 2007403,lv = 115},[4] = {id = 2007404,lv = 115},[5] = {id = 2007405,lv = 115},[6] = {id = 2007406,lv = 115},[7] = {id = 2007407,lv = 115},[8] = {id = 2007408,lv = 115}},mon = {id = 204,desc = "daily_relic-14-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6041431,cardId = 1102998,lv = 115,bklv = 17,star = 3,ghost = 39,equip = {[1] = {id = 2107401,lv = 115},[2] = {id = 2107402,lv = 115},[3] = {id = 2107403,lv = 115},[4] = {id = 2107404,lv = 115},[5] = {id = 2107405,lv = 115},[6] = {id = 2107406,lv = 115},[7] = {id = 2107407,lv = 115},[8] = {id = 2107408,lv = 115}},mon = {id = 224,desc = "daily_relic-14-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60415] = {
		[1] = {
			jlr = {cha = "daily_relic",id = 6041510,cardId = 1101997,lv = 115,bklv = 15,star = 3,equip = {[1] = {id = 2007421,lv = 115},[2] = {id = 2007422,lv = 115},[3] = {id = 2007423,lv = 115},[4] = {id = 2007424,lv = 115},[5] = {id = 2007425,lv = 115},[6] = {id = 2007426,lv = 115},[7] = {id = 2007407,lv = 115},[8] = {id = 2007408,lv = 115}},mon = {id = 207,desc = "daily_relic-15-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6041511,cardId = 1102997,lv = 115,bklv = 17,star = 3,ghost = 39,equip = {[1] = {id = 2107421,lv = 115},[2] = {id = 2107422,lv = 115},[3] = {id = 2107423,lv = 115},[4] = {id = 2107424,lv = 115},[5] = {id = 2107425,lv = 115},[6] = {id = 2107426,lv = 115},[7] = {id = 2107407,lv = 115},[8] = {id = 2107408,lv = 115}},mon = {id = 230,desc = "daily_relic-15-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_relic",id = 6041520,cardId = 1101997,lv = 115,bklv = 15,star = 3,equip = {[1] = {id = 2007421,lv = 115},[2] = {id = 2007422,lv = 115},[3] = {id = 2007423,lv = 115},[4] = {id = 2007424,lv = 115},[5] = {id = 2007425,lv = 115},[6] = {id = 2007426,lv = 115},[7] = {id = 2007407,lv = 115},[8] = {id = 2007408,lv = 115}},mon = {id = 205,desc = "daily_relic-15-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6041521,cardId = 1102996,lv = 115,bklv = 17,star = 3,ghost = 39,equip = {[1] = {id = 2107421,lv = 115},[2] = {id = 2107422,lv = 115},[3] = {id = 2107423,lv = 115},[4] = {id = 2107424,lv = 115},[5] = {id = 2107425,lv = 115},[6] = {id = 2107426,lv = 115},[7] = {id = 2107407,lv = 115},[8] = {id = 2107408,lv = 115}},mon = {id = 219,desc = "daily_relic-15-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_relic",id = 6041530,cardId = 1101997,lv = 115,bklv = 15,star = 3,equip = {[1] = {id = 2007421,lv = 115},[2] = {id = 2007422,lv = 115},[3] = {id = 2007423,lv = 115},[4] = {id = 2007424,lv = 115},[5] = {id = 2007425,lv = 115},[6] = {id = 2007426,lv = 115},[7] = {id = 2007407,lv = 115},[8] = {id = 2007408,lv = 115}},mon = {id = 204,desc = "daily_relic-15-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6041531,cardId = 1102997,lv = 115,bklv = 17,star = 3,ghost = 39,equip = {[1] = {id = 2107421,lv = 115},[2] = {id = 2107422,lv = 115},[3] = {id = 2107423,lv = 115},[4] = {id = 2107424,lv = 115},[5] = {id = 2107425,lv = 115},[6] = {id = 2107426,lv = 115},[7] = {id = 2107407,lv = 115},[8] = {id = 2107408,lv = 115}},mon = {id = 224,desc = "daily_relic-15-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60416] = {
		[1] = {
			jlr = {cha = "daily_relic",id = 6041610,cardId = 1101999,lv = 125,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 125},[2] = {id = 2008302,lv = 125},[3] = {id = 2008303,lv = 125},[4] = {id = 2008304,lv = 125},[5] = {id = 2008305,lv = 125},[6] = {id = 2008306,lv = 125},[7] = {id = 2008307,lv = 125},[8] = {id = 2008308,lv = 125}},mon = {id = 207,desc = "daily_relic-16-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6041611,cardId = 1102999,lv = 125,bklv = 19,star = 4,ghost = 43,equip = {[1] = {id = 2108301,lv = 125},[2] = {id = 2108302,lv = 125},[3] = {id = 2108303,lv = 125},[4] = {id = 2108304,lv = 125},[5] = {id = 2108305,lv = 125},[6] = {id = 2108306,lv = 125},[7] = {id = 2108307,lv = 125},[8] = {id = 2108308,lv = 125}},mon = {id = 230,desc = "daily_relic-16-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_relic",id = 6041620,cardId = 1101998,lv = 125,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 125},[2] = {id = 2008302,lv = 125},[3] = {id = 2008303,lv = 125},[4] = {id = 2008304,lv = 125},[5] = {id = 2008305,lv = 125},[6] = {id = 2008306,lv = 125},[7] = {id = 2008307,lv = 125},[8] = {id = 2008308,lv = 125}},mon = {id = 205,desc = "daily_relic-16-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6041621,cardId = 1102998,lv = 125,bklv = 19,star = 4,ghost = 43,equip = {[1] = {id = 2108301,lv = 125},[2] = {id = 2108302,lv = 125},[3] = {id = 2108303,lv = 125},[4] = {id = 2108304,lv = 125},[5] = {id = 2108305,lv = 125},[6] = {id = 2108306,lv = 125},[7] = {id = 2108307,lv = 125},[8] = {id = 2108308,lv = 125}},mon = {id = 219,desc = "daily_relic-16-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_relic",id = 6041630,cardId = 1101999,lv = 125,bklv = 16,star = 4,equip = {[1] = {id = 2008301,lv = 125},[2] = {id = 2008302,lv = 125},[3] = {id = 2008303,lv = 125},[4] = {id = 2008304,lv = 125},[5] = {id = 2008305,lv = 125},[6] = {id = 2008306,lv = 125},[7] = {id = 2008307,lv = 125},[8] = {id = 2008308,lv = 125}},mon = {id = 204,desc = "daily_relic-16-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6041631,cardId = 1102999,lv = 125,bklv = 19,star = 4,ghost = 43,equip = {[1] = {id = 2108301,lv = 125},[2] = {id = 2108302,lv = 125},[3] = {id = 2108303,lv = 125},[4] = {id = 2108304,lv = 125},[5] = {id = 2108305,lv = 125},[6] = {id = 2108306,lv = 125},[7] = {id = 2108307,lv = 125},[8] = {id = 2108308,lv = 125}},mon = {id = 224,desc = "daily_relic-16-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60417] = {
		[1] = {
			jlr = {cha = "daily_relic",id = 6041710,cardId = 1101998,lv = 125,bklv = 16,star = 4,equip = {[1] = {id = 2008401,lv = 125},[2] = {id = 2008402,lv = 125},[3] = {id = 2008403,lv = 125},[4] = {id = 2008404,lv = 125},[5] = {id = 2008405,lv = 125},[6] = {id = 2008406,lv = 125},[7] = {id = 2008407,lv = 125},[8] = {id = 2008408,lv = 125}},mon = {id = 207,desc = "daily_relic-17-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6041711,cardId = 1102998,lv = 125,bklv = 19,star = 4,ghost = 43,equip = {[1] = {id = 2108401,lv = 125},[2] = {id = 2108402,lv = 125},[3] = {id = 2108403,lv = 125},[4] = {id = 2108404,lv = 125},[5] = {id = 2108405,lv = 125},[6] = {id = 2108406,lv = 125},[7] = {id = 2108407,lv = 125},[8] = {id = 2108408,lv = 125}},mon = {id = 230,desc = "daily_relic-17-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_relic",id = 6041720,cardId = 1101997,lv = 125,bklv = 16,star = 4,equip = {[1] = {id = 2008401,lv = 125},[2] = {id = 2008402,lv = 125},[3] = {id = 2008403,lv = 125},[4] = {id = 2008404,lv = 125},[5] = {id = 2008405,lv = 125},[6] = {id = 2008406,lv = 125},[7] = {id = 2008407,lv = 125},[8] = {id = 2008408,lv = 125}},mon = {id = 205,desc = "daily_relic-17-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6041721,cardId = 1102997,lv = 125,bklv = 19,star = 4,ghost = 43,equip = {[1] = {id = 2108401,lv = 125},[2] = {id = 2108402,lv = 125},[3] = {id = 2108403,lv = 125},[4] = {id = 2108404,lv = 125},[5] = {id = 2108405,lv = 125},[6] = {id = 2108406,lv = 125},[7] = {id = 2108407,lv = 125},[8] = {id = 2108408,lv = 125}},mon = {id = 219,desc = "daily_relic-17-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_relic",id = 6041730,cardId = 1101998,lv = 125,bklv = 16,star = 4,equip = {[1] = {id = 2008401,lv = 125},[2] = {id = 2008402,lv = 125},[3] = {id = 2008403,lv = 125},[4] = {id = 2008404,lv = 125},[5] = {id = 2008405,lv = 125},[6] = {id = 2008406,lv = 125},[7] = {id = 2008407,lv = 125},[8] = {id = 2008408,lv = 125}},mon = {id = 204,desc = "daily_relic-17-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6041731,cardId = 1102998,lv = 125,bklv = 19,star = 4,ghost = 43,equip = {[1] = {id = 2108401,lv = 125},[2] = {id = 2108402,lv = 125},[3] = {id = 2108403,lv = 125},[4] = {id = 2108404,lv = 125},[5] = {id = 2108405,lv = 125},[6] = {id = 2108406,lv = 125},[7] = {id = 2108407,lv = 125},[8] = {id = 2108408,lv = 125}},mon = {id = 224,desc = "daily_relic-17-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60418] = {
		[1] = {
			jlr = {cha = "daily_relic",id = 6041810,cardId = 1101997,lv = 125,bklv = 16,star = 4,equip = {[1] = {id = 2008421,lv = 125},[2] = {id = 2008412,lv = 125},[3] = {id = 2008413,lv = 125},[4] = {id = 2008404,lv = 125},[5] = {id = 2008415,lv = 125},[6] = {id = 2008406,lv = 125},[7] = {id = 2008427,lv = 125},[8] = {id = 2008418,lv = 125}},mon = {id = 207,desc = "daily_relic-18-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6041811,cardId = 1102997,lv = 125,bklv = 19,star = 4,ghost = 43,equip = {[1] = {id = 2108421,lv = 125},[2] = {id = 2108422,lv = 125},[3] = {id = 2108413,lv = 125},[4] = {id = 2108404,lv = 125},[5] = {id = 2108415,lv = 125},[6] = {id = 2108406,lv = 125},[7] = {id = 2108427,lv = 125},[8] = {id = 2108428,lv = 125}},mon = {id = 230,desc = "daily_relic-18-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_relic",id = 6041820,cardId = 1101997,lv = 125,bklv = 16,star = 4,equip = {[1] = {id = 2008421,lv = 125},[2] = {id = 2008412,lv = 125},[3] = {id = 2008413,lv = 125},[4] = {id = 2008404,lv = 125},[5] = {id = 2008415,lv = 125},[6] = {id = 2008406,lv = 125},[7] = {id = 2008427,lv = 125},[8] = {id = 2008418,lv = 125}},mon = {id = 205,desc = "daily_relic-18-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6041821,cardId = 1102996,lv = 125,bklv = 19,star = 4,ghost = 43,equip = {[1] = {id = 2108421,lv = 125},[2] = {id = 2108422,lv = 125},[3] = {id = 2108413,lv = 125},[4] = {id = 2108404,lv = 125},[5] = {id = 2108415,lv = 125},[6] = {id = 2108406,lv = 125},[7] = {id = 2108427,lv = 125},[8] = {id = 2108428,lv = 125}},mon = {id = 219,desc = "daily_relic-18-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_relic",id = 6041830,cardId = 1101997,lv = 125,bklv = 16,star = 4,equip = {[1] = {id = 2008421,lv = 125},[2] = {id = 2008412,lv = 125},[3] = {id = 2008413,lv = 125},[4] = {id = 2008404,lv = 125},[5] = {id = 2008415,lv = 125},[6] = {id = 2008406,lv = 125},[7] = {id = 2008427,lv = 125},[8] = {id = 2008418,lv = 125}},mon = {id = 204,desc = "daily_relic-18-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_relic",id = 6041831,cardId = 1102997,lv = 125,bklv = 19,star = 4,ghost = 43,equip = {[1] = {id = 2108421,lv = 125},[2] = {id = 2108422,lv = 125},[3] = {id = 2108413,lv = 125},[4] = {id = 2108404,lv = 125},[5] = {id = 2108415,lv = 125},[6] = {id = 2108406,lv = 125},[7] = {id = 2108427,lv = 125},[8] = {id = 2108428,lv = 125}},mon = {id = 224,desc = "daily_relic-18-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60501] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6050110,cardId = 1101999,lv = 40,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 40},[2] = {id = 2001302,lv = 40},[3] = {id = 2001303,lv = 40},[4] = {id = 2001304,lv = 40},[5] = {id = 2001305,lv = 40},[6] = {id = 2001306,lv = 40},[7] = {id = 2001307,lv = 40},[8] = {id = 2001308,lv = 40}},mon = {id = 207,desc = "daily_exwp-1-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6050111,cardId = 1102999,lv = 40,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2101301,lv = 40},[2] = {id = 2101302,lv = 40},[3] = {id = 2101303,lv = 40},[4] = {id = 2101304,lv = 40},[5] = {id = 2101305,lv = 40},[6] = {id = 2101306,lv = 40},[7] = {id = 2101307,lv = 40},[8] = {id = 2101308,lv = 40}},mon = {id = 230,desc = "daily_exwp-1-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6050120,cardId = 1101999,lv = 40,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 40},[2] = {id = 2001302,lv = 40},[3] = {id = 2001303,lv = 40},[4] = {id = 2001304,lv = 40},[5] = {id = 2001305,lv = 40},[6] = {id = 2001306,lv = 40},[7] = {id = 2001307,lv = 40},[8] = {id = 2001308,lv = 40}},mon = {id = 205,desc = "daily_exwp-1-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6050121,cardId = 1102999,lv = 40,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2101301,lv = 40},[2] = {id = 2101302,lv = 40},[3] = {id = 2101303,lv = 40},[4] = {id = 2101304,lv = 40},[5] = {id = 2101305,lv = 40},[6] = {id = 2101306,lv = 40},[7] = {id = 2101307,lv = 40},[8] = {id = 2101308,lv = 40}},mon = {id = 219,desc = "daily_exwp-1-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6050130,cardId = 1101999,lv = 40,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 40},[2] = {id = 2001302,lv = 40},[3] = {id = 2001303,lv = 40},[4] = {id = 2001304,lv = 40},[5] = {id = 2001305,lv = 40},[6] = {id = 2001306,lv = 40},[7] = {id = 2001307,lv = 40},[8] = {id = 2001308,lv = 40}},mon = {id = 204,desc = "daily_exwp-1-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6050131,cardId = 1102999,lv = 40,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2101301,lv = 40},[2] = {id = 2101302,lv = 40},[3] = {id = 2101303,lv = 40},[4] = {id = 2101304,lv = 40},[5] = {id = 2101305,lv = 40},[6] = {id = 2101306,lv = 40},[7] = {id = 2101307,lv = 40},[8] = {id = 2101308,lv = 40}},mon = {id = 224,desc = "daily_exwp-1-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60502] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6050210,cardId = 1101999,lv = 40,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 40},[2] = {id = 2001302,lv = 40},[3] = {id = 2001303,lv = 40},[4] = {id = 2001304,lv = 40},[5] = {id = 2001305,lv = 40},[6] = {id = 2001306,lv = 40},[7] = {id = 2001307,lv = 40},[8] = {id = 2001308,lv = 40}},mon = {id = 207,desc = "daily_exwp-2-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6050211,cardId = 1102999,lv = 40,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102301,lv = 40},[2] = {id = 2102302,lv = 40},[3] = {id = 2102303,lv = 40},[4] = {id = 2102304,lv = 40},[5] = {id = 2102305,lv = 40},[6] = {id = 2102306,lv = 40},[7] = {id = 2102307,lv = 40},[8] = {id = 2102308,lv = 40}},mon = {id = 230,desc = "daily_exwp-2-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6050220,cardId = 1101998,lv = 40,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 40},[2] = {id = 2001302,lv = 40},[3] = {id = 2001303,lv = 40},[4] = {id = 2001304,lv = 40},[5] = {id = 2001305,lv = 40},[6] = {id = 2001306,lv = 40},[7] = {id = 2001307,lv = 40},[8] = {id = 2001308,lv = 40}},mon = {id = 205,desc = "daily_exwp-2-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6050221,cardId = 1102998,lv = 40,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102301,lv = 40},[2] = {id = 2102302,lv = 40},[3] = {id = 2102303,lv = 40},[4] = {id = 2102304,lv = 40},[5] = {id = 2102305,lv = 40},[6] = {id = 2102306,lv = 40},[7] = {id = 2102307,lv = 40},[8] = {id = 2102308,lv = 40}},mon = {id = 219,desc = "daily_exwp-2-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6050230,cardId = 1101999,lv = 40,bklv = 5,star = 1,equip = {[1] = {id = 2001301,lv = 40},[2] = {id = 2001302,lv = 40},[3] = {id = 2001303,lv = 40},[4] = {id = 2001304,lv = 40},[5] = {id = 2001305,lv = 40},[6] = {id = 2001306,lv = 40},[7] = {id = 2001307,lv = 40},[8] = {id = 2001308,lv = 40}},mon = {id = 204,desc = "daily_exwp-2-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6050231,cardId = 1102999,lv = 40,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102301,lv = 40},[2] = {id = 2102302,lv = 40},[3] = {id = 2102303,lv = 40},[4] = {id = 2102304,lv = 40},[5] = {id = 2102305,lv = 40},[6] = {id = 2102306,lv = 40},[7] = {id = 2102307,lv = 40},[8] = {id = 2102308,lv = 40}},mon = {id = 224,desc = "daily_exwp-2-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60503] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6050310,cardId = 1101998,lv = 40,bklv = 5,star = 1,equip = {[1] = {id = 2001401,lv = 40},[2] = {id = 2001402,lv = 40},[3] = {id = 2001403,lv = 40},[4] = {id = 2001404,lv = 40},[5] = {id = 2001405,lv = 40},[6] = {id = 2001406,lv = 40},[7] = {id = 2001407,lv = 40},[8] = {id = 2001408,lv = 40}},mon = {id = 207,desc = "daily_exwp-3-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6050311,cardId = 1102998,lv = 40,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},mon = {id = 230,desc = "daily_exwp-3-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6050320,cardId = 1101997,lv = 40,bklv = 5,star = 1,equip = {[1] = {id = 2001401,lv = 40},[2] = {id = 2001402,lv = 40},[3] = {id = 2001403,lv = 40},[4] = {id = 2001404,lv = 40},[5] = {id = 2001405,lv = 40},[6] = {id = 2001406,lv = 40},[7] = {id = 2001407,lv = 40},[8] = {id = 2001408,lv = 40}},mon = {id = 205,desc = "daily_exwp-3-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6050321,cardId = 1102997,lv = 40,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},mon = {id = 219,desc = "daily_exwp-3-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6050330,cardId = 1101998,lv = 40,bklv = 5,star = 1,equip = {[1] = {id = 2001401,lv = 40},[2] = {id = 2001402,lv = 40},[3] = {id = 2001403,lv = 40},[4] = {id = 2001404,lv = 40},[5] = {id = 2001405,lv = 40},[6] = {id = 2001406,lv = 40},[7] = {id = 2001407,lv = 40},[8] = {id = 2001408,lv = 40}},mon = {id = 204,desc = "daily_exwp-3-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6050331,cardId = 1102998,lv = 40,bklv = 5,star = 1,ghost = 9,equip = {[1] = {id = 2102401,lv = 40},[2] = {id = 2102402,lv = 40},[3] = {id = 2102403,lv = 40},[4] = {id = 2102404,lv = 40},[5] = {id = 2102405,lv = 40},[6] = {id = 2102406,lv = 40},[7] = {id = 2102407,lv = 40},[8] = {id = 2102408,lv = 40}},mon = {id = 224,desc = "daily_exwp-3-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60504] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6050410,cardId = 1101999,lv = 55,bklv = 7,star = 1,equip = {[1] = {id = 2002301,lv = 55},[2] = {id = 2002302,lv = 55},[3] = {id = 2002303,lv = 55},[4] = {id = 2002304,lv = 55},[5] = {id = 2002305,lv = 55},[6] = {id = 2002306,lv = 55},[7] = {id = 2002307,lv = 55},[8] = {id = 2002308,lv = 55}},mon = {id = 207,desc = "daily_exwp-4-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6050411,cardId = 1102999,lv = 55,bklv = 8,star = 1,ghost = 15,equip = {[1] = {id = 2102301,lv = 55},[2] = {id = 2102302,lv = 55},[3] = {id = 2102303,lv = 55},[4] = {id = 2102304,lv = 55},[5] = {id = 2102305,lv = 55},[6] = {id = 2102306,lv = 55},[7] = {id = 2102307,lv = 55},[8] = {id = 2102308,lv = 55}},mon = {id = 230,desc = "daily_exwp-4-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6050420,cardId = 1101998,lv = 55,bklv = 7,star = 1,equip = {[1] = {id = 2002301,lv = 55},[2] = {id = 2002302,lv = 55},[3] = {id = 2002303,lv = 55},[4] = {id = 2002304,lv = 55},[5] = {id = 2002305,lv = 55},[6] = {id = 2002306,lv = 55},[7] = {id = 2002307,lv = 55},[8] = {id = 2002308,lv = 55}},mon = {id = 205,desc = "daily_exwp-4-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6050421,cardId = 1102998,lv = 55,bklv = 8,star = 1,ghost = 15,equip = {[1] = {id = 2102301,lv = 55},[2] = {id = 2102302,lv = 55},[3] = {id = 2102303,lv = 55},[4] = {id = 2102304,lv = 55},[5] = {id = 2102305,lv = 55},[6] = {id = 2102306,lv = 55},[7] = {id = 2102307,lv = 55},[8] = {id = 2102308,lv = 55}},mon = {id = 219,desc = "daily_exwp-4-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6050430,cardId = 1101999,lv = 55,bklv = 7,star = 1,equip = {[1] = {id = 2002301,lv = 55},[2] = {id = 2002302,lv = 55},[3] = {id = 2002303,lv = 55},[4] = {id = 2002304,lv = 55},[5] = {id = 2002305,lv = 55},[6] = {id = 2002306,lv = 55},[7] = {id = 2002307,lv = 55},[8] = {id = 2002308,lv = 55}},mon = {id = 204,desc = "daily_exwp-4-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6050431,cardId = 1102999,lv = 55,bklv = 8,star = 1,ghost = 15,equip = {[1] = {id = 2102301,lv = 55},[2] = {id = 2102302,lv = 55},[3] = {id = 2102303,lv = 55},[4] = {id = 2102304,lv = 55},[5] = {id = 2102305,lv = 55},[6] = {id = 2102306,lv = 55},[7] = {id = 2102307,lv = 55},[8] = {id = 2102308,lv = 55}},mon = {id = 224,desc = "daily_exwp-4-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60505] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6050510,cardId = 1101998,lv = 55,bklv = 7,star = 1,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}},mon = {id = 207,desc = "daily_exwp-5-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6050511,cardId = 1102998,lv = 55,bklv = 8,star = 1,ghost = 15,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},mon = {id = 230,desc = "daily_exwp-5-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6050520,cardId = 1101997,lv = 55,bklv = 7,star = 1,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}},mon = {id = 205,desc = "daily_exwp-5-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6050521,cardId = 1102997,lv = 55,bklv = 8,star = 1,ghost = 15,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},mon = {id = 219,desc = "daily_exwp-5-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6050530,cardId = 1101998,lv = 55,bklv = 7,star = 1,equip = {[1] = {id = 2002401,lv = 55},[2] = {id = 2002402,lv = 55},[3] = {id = 2002403,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002405,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002407,lv = 55},[8] = {id = 2002408,lv = 55}},mon = {id = 204,desc = "daily_exwp-5-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6050531,cardId = 1102998,lv = 55,bklv = 8,star = 1,ghost = 15,equip = {[1] = {id = 2102401,lv = 55},[2] = {id = 2102402,lv = 55},[3] = {id = 2102403,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102405,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102407,lv = 55},[8] = {id = 2102408,lv = 55}},mon = {id = 224,desc = "daily_exwp-5-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60506] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6050610,cardId = 1101997,lv = 55,bklv = 7,star = 1,equip = {[1] = {id = 2002411,lv = 55},[2] = {id = 2002412,lv = 55},[3] = {id = 2002413,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002415,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002417,lv = 55},[8] = {id = 2002418,lv = 55}},mon = {id = 207,desc = "daily_exwp-6-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6050611,cardId = 1102997,lv = 55,bklv = 8,star = 1,ghost = 15,equip = {[1] = {id = 2102411,lv = 55},[2] = {id = 2102412,lv = 55},[3] = {id = 2102413,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102415,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102417,lv = 55},[8] = {id = 2102418,lv = 55}},mon = {id = 230,desc = "daily_exwp-6-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6050620,cardId = 1101997,lv = 55,bklv = 7,star = 1,equip = {[1] = {id = 2002411,lv = 55},[2] = {id = 2002412,lv = 55},[3] = {id = 2002413,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002415,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002417,lv = 55},[8] = {id = 2002418,lv = 55}},mon = {id = 205,desc = "daily_exwp-6-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6050621,cardId = 1102997,lv = 55,bklv = 8,star = 1,ghost = 15,equip = {[1] = {id = 2102411,lv = 55},[2] = {id = 2102412,lv = 55},[3] = {id = 2102413,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102415,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102417,lv = 55},[8] = {id = 2102418,lv = 55}},mon = {id = 219,desc = "daily_exwp-6-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6050630,cardId = 1101997,lv = 55,bklv = 7,star = 1,equip = {[1] = {id = 2002411,lv = 55},[2] = {id = 2002412,lv = 55},[3] = {id = 2002413,lv = 55},[4] = {id = 2002404,lv = 55},[5] = {id = 2002415,lv = 55},[6] = {id = 2002406,lv = 55},[7] = {id = 2002417,lv = 55},[8] = {id = 2002418,lv = 55}},mon = {id = 204,desc = "daily_exwp-6-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6050631,cardId = 1102997,lv = 55,bklv = 8,star = 1,ghost = 15,equip = {[1] = {id = 2102411,lv = 55},[2] = {id = 2102412,lv = 55},[3] = {id = 2102413,lv = 55},[4] = {id = 2102404,lv = 55},[5] = {id = 2102415,lv = 55},[6] = {id = 2102406,lv = 55},[7] = {id = 2102417,lv = 55},[8] = {id = 2102418,lv = 55}},mon = {id = 224,desc = "daily_exwp-6-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60507] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6050710,cardId = 1101999,lv = 80,bklv = 11,star = 1,equip = {[1] = {id = 2003301,lv = 80},[2] = {id = 2003302,lv = 80},[3] = {id = 2003303,lv = 80},[4] = {id = 2003304,lv = 80},[5] = {id = 2003305,lv = 80},[6] = {id = 2003306,lv = 80},[7] = {id = 2003307,lv = 80},[8] = {id = 2003308,lv = 80}},mon = {id = 207,desc = "daily_exwp-7-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6050711,cardId = 1102999,lv = 80,bklv = 12,star = 1,ghost = 25,equip = {[1] = {id = 2104301,lv = 80},[2] = {id = 2104302,lv = 80},[3] = {id = 2104303,lv = 80},[4] = {id = 2104304,lv = 80},[5] = {id = 2104305,lv = 80},[6] = {id = 2104306,lv = 80},[7] = {id = 2104307,lv = 80},[8] = {id = 2104308,lv = 80}},mon = {id = 230,desc = "daily_exwp-7-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6050720,cardId = 1101998,lv = 80,bklv = 11,star = 1,equip = {[1] = {id = 2003301,lv = 80},[2] = {id = 2003302,lv = 80},[3] = {id = 2003303,lv = 80},[4] = {id = 2003304,lv = 80},[5] = {id = 2003305,lv = 80},[6] = {id = 2003306,lv = 80},[7] = {id = 2003307,lv = 80},[8] = {id = 2003308,lv = 80}},mon = {id = 205,desc = "daily_exwp-7-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6050721,cardId = 1102998,lv = 80,bklv = 12,star = 1,ghost = 25,equip = {[1] = {id = 2104301,lv = 80},[2] = {id = 2104302,lv = 80},[3] = {id = 2104303,lv = 80},[4] = {id = 2104304,lv = 80},[5] = {id = 2104305,lv = 80},[6] = {id = 2104306,lv = 80},[7] = {id = 2104307,lv = 80},[8] = {id = 2104308,lv = 80}},mon = {id = 219,desc = "daily_exwp-7-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6050730,cardId = 1101999,lv = 80,bklv = 11,star = 1,equip = {[1] = {id = 2003301,lv = 80},[2] = {id = 2003302,lv = 80},[3] = {id = 2003303,lv = 80},[4] = {id = 2003304,lv = 80},[5] = {id = 2003305,lv = 80},[6] = {id = 2003306,lv = 80},[7] = {id = 2003307,lv = 80},[8] = {id = 2003308,lv = 80}},mon = {id = 204,desc = "daily_exwp-7-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6050731,cardId = 1102999,lv = 80,bklv = 12,star = 1,ghost = 25,equip = {[1] = {id = 2104301,lv = 80},[2] = {id = 2104302,lv = 80},[3] = {id = 2104303,lv = 80},[4] = {id = 2104304,lv = 80},[5] = {id = 2104305,lv = 80},[6] = {id = 2104306,lv = 80},[7] = {id = 2104307,lv = 80},[8] = {id = 2104308,lv = 80}},mon = {id = 224,desc = "daily_exwp-7-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60508] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6050810,cardId = 1101998,lv = 80,bklv = 11,star = 1,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}},mon = {id = 207,desc = "daily_exwp-8-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6050811,cardId = 1102998,lv = 80,bklv = 12,star = 1,ghost = 25,equip = {[1] = {id = 2104401,lv = 80},[2] = {id = 2104402,lv = 80},[3] = {id = 2104403,lv = 80},[4] = {id = 2104404,lv = 80},[5] = {id = 2104405,lv = 80},[6] = {id = 2104406,lv = 80},[7] = {id = 2104407,lv = 80},[8] = {id = 2104408,lv = 80}},mon = {id = 230,desc = "daily_exwp-8-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6050820,cardId = 1101997,lv = 80,bklv = 11,star = 1,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}},mon = {id = 205,desc = "daily_exwp-8-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6050821,cardId = 1102997,lv = 80,bklv = 12,star = 1,ghost = 25,equip = {[1] = {id = 2104401,lv = 80},[2] = {id = 2104402,lv = 80},[3] = {id = 2104403,lv = 80},[4] = {id = 2104404,lv = 80},[5] = {id = 2104405,lv = 80},[6] = {id = 2104406,lv = 80},[7] = {id = 2104407,lv = 80},[8] = {id = 2104408,lv = 80}},mon = {id = 219,desc = "daily_exwp-8-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6050830,cardId = 1101998,lv = 80,bklv = 11,star = 1,equip = {[1] = {id = 2003401,lv = 80},[2] = {id = 2003402,lv = 80},[3] = {id = 2003403,lv = 80},[4] = {id = 2003404,lv = 80},[5] = {id = 2003405,lv = 80},[6] = {id = 2003406,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}},mon = {id = 204,desc = "daily_exwp-8-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6050831,cardId = 1102998,lv = 80,bklv = 12,star = 1,ghost = 25,equip = {[1] = {id = 2104401,lv = 80},[2] = {id = 2104402,lv = 80},[3] = {id = 2104403,lv = 80},[4] = {id = 2104404,lv = 80},[5] = {id = 2104405,lv = 80},[6] = {id = 2104406,lv = 80},[7] = {id = 2104407,lv = 80},[8] = {id = 2104408,lv = 80}},mon = {id = 224,desc = "daily_exwp-8-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60509] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6050910,cardId = 1101997,lv = 80,bklv = 11,star = 1,equip = {[1] = {id = 2003421,lv = 80},[2] = {id = 2003422,lv = 80},[3] = {id = 2003423,lv = 80},[4] = {id = 2003424,lv = 80},[5] = {id = 2003425,lv = 80},[6] = {id = 2003426,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}},mon = {id = 207,desc = "daily_exwp-9-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6050911,cardId = 1102997,lv = 80,bklv = 12,star = 1,ghost = 25,equip = {[1] = {id = 2104421,lv = 80},[2] = {id = 2104422,lv = 80},[3] = {id = 2104423,lv = 80},[4] = {id = 2104404,lv = 80},[5] = {id = 2104425,lv = 80},[6] = {id = 2104406,lv = 80},[7] = {id = 2104427,lv = 80},[8] = {id = 2104428,lv = 80}},mon = {id = 230,desc = "daily_exwp-9-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6050920,cardId = 1101997,lv = 80,bklv = 11,star = 1,equip = {[1] = {id = 2003421,lv = 80},[2] = {id = 2003422,lv = 80},[3] = {id = 2003423,lv = 80},[4] = {id = 2003424,lv = 80},[5] = {id = 2003425,lv = 80},[6] = {id = 2003426,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}},mon = {id = 205,desc = "daily_exwp-9-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6050921,cardId = 1102996,lv = 80,bklv = 12,star = 1,ghost = 25,equip = {[1] = {id = 2104421,lv = 80},[2] = {id = 2104422,lv = 80},[3] = {id = 2104423,lv = 80},[4] = {id = 2104404,lv = 80},[5] = {id = 2104425,lv = 80},[6] = {id = 2104406,lv = 80},[7] = {id = 2104427,lv = 80},[8] = {id = 2104428,lv = 80}},mon = {id = 219,desc = "daily_exwp-9-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6050930,cardId = 1101997,lv = 80,bklv = 11,star = 1,equip = {[1] = {id = 2003421,lv = 80},[2] = {id = 2003422,lv = 80},[3] = {id = 2003423,lv = 80},[4] = {id = 2003424,lv = 80},[5] = {id = 2003425,lv = 80},[6] = {id = 2003426,lv = 80},[7] = {id = 2003407,lv = 80},[8] = {id = 2003408,lv = 80}},mon = {id = 204,desc = "daily_exwp-9-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6050931,cardId = 1102997,lv = 80,bklv = 12,star = 1,ghost = 25,equip = {[1] = {id = 2104421,lv = 80},[2] = {id = 2104422,lv = 80},[3] = {id = 2104423,lv = 80},[4] = {id = 2104404,lv = 80},[5] = {id = 2104425,lv = 80},[6] = {id = 2104406,lv = 80},[7] = {id = 2104427,lv = 80},[8] = {id = 2104428,lv = 80}},mon = {id = 224,desc = "daily_exwp-9-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60510] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6051010,cardId = 1101999,lv = 100,bklv = 14,star = 2,equip = {[1] = {id = 2005301,lv = 100},[2] = {id = 2005302,lv = 100},[3] = {id = 2005303,lv = 100},[4] = {id = 2005304,lv = 100},[5] = {id = 2005305,lv = 100},[6] = {id = 2005306,lv = 100},[7] = {id = 2005307,lv = 100},[8] = {id = 2005308,lv = 100}},mon = {id = 207,desc = "daily_exwp-10-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6051011,cardId = 1102999,lv = 100,bklv = 14,star = 2,ghost = 33,equip = {[1] = {id = 2106301,lv = 100},[2] = {id = 2106302,lv = 100},[3] = {id = 2106303,lv = 100},[4] = {id = 2106304,lv = 100},[5] = {id = 2106305,lv = 100},[6] = {id = 2106306,lv = 100},[7] = {id = 2106307,lv = 100},[8] = {id = 2106308,lv = 100}},mon = {id = 230,desc = "daily_exwp-10-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6051020,cardId = 1101997,lv = 100,bklv = 14,star = 1,equip = {[1] = {id = 2005301,lv = 100},[2] = {id = 2005302,lv = 100},[3] = {id = 2005303,lv = 100},[4] = {id = 2005304,lv = 100},[5] = {id = 2005305,lv = 100},[6] = {id = 2005306,lv = 100},[7] = {id = 2005307,lv = 100},[8] = {id = 2005308,lv = 100}},mon = {id = 205,desc = "daily_exwp-10-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6051021,cardId = 1102998,lv = 100,bklv = 14,star = 1,ghost = 33,equip = {[1] = {id = 2106301,lv = 100},[2] = {id = 2106302,lv = 100},[3] = {id = 2106303,lv = 100},[4] = {id = 2106304,lv = 100},[5] = {id = 2106305,lv = 100},[6] = {id = 2106306,lv = 100},[7] = {id = 2106307,lv = 100},[8] = {id = 2106308,lv = 100}},mon = {id = 219,desc = "daily_exwp-10-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6051030,cardId = 1101999,lv = 100,bklv = 14,star = 2,equip = {[1] = {id = 2005301,lv = 100},[2] = {id = 2005302,lv = 100},[3] = {id = 2005303,lv = 100},[4] = {id = 2005304,lv = 100},[5] = {id = 2005305,lv = 100},[6] = {id = 2005306,lv = 100},[7] = {id = 2005307,lv = 100},[8] = {id = 2005308,lv = 100}},mon = {id = 204,desc = "daily_exwp-10-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6051031,cardId = 1102999,lv = 100,bklv = 14,star = 2,ghost = 33,equip = {[1] = {id = 2106301,lv = 100},[2] = {id = 2106302,lv = 100},[3] = {id = 2106303,lv = 100},[4] = {id = 2106304,lv = 100},[5] = {id = 2106305,lv = 100},[6] = {id = 2106306,lv = 100},[7] = {id = 2106307,lv = 100},[8] = {id = 2106308,lv = 100}},mon = {id = 224,desc = "daily_exwp-10-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60511] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6051110,cardId = 1101998,lv = 100,bklv = 14,star = 2,equip = {[1] = {id = 2005401,lv = 100},[2] = {id = 2005402,lv = 100},[3] = {id = 2005403,lv = 100},[4] = {id = 2005404,lv = 100},[5] = {id = 2005405,lv = 100},[6] = {id = 2005406,lv = 100},[7] = {id = 2005407,lv = 100},[8] = {id = 2005408,lv = 100}},mon = {id = 207,desc = "daily_exwp-11-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6051111,cardId = 1102998,lv = 100,bklv = 14,star = 2,ghost = 33,equip = {[1] = {id = 2106401,lv = 100},[2] = {id = 2106402,lv = 100},[3] = {id = 2106403,lv = 100},[4] = {id = 2106404,lv = 100},[5] = {id = 2106405,lv = 100},[6] = {id = 2106406,lv = 100},[7] = {id = 2106407,lv = 100},[8] = {id = 2106408,lv = 100}},mon = {id = 230,desc = "daily_exwp-11-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6051120,cardId = 1101997,lv = 100,bklv = 14,star = 1,equip = {[1] = {id = 2005401,lv = 100},[2] = {id = 2005402,lv = 100},[3] = {id = 2005403,lv = 100},[4] = {id = 2005404,lv = 100},[5] = {id = 2005405,lv = 100},[6] = {id = 2005406,lv = 100},[7] = {id = 2005407,lv = 100},[8] = {id = 2005408,lv = 100}},mon = {id = 205,desc = "daily_exwp-11-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6051121,cardId = 1102997,lv = 100,bklv = 14,star = 1,ghost = 33,equip = {[1] = {id = 2106401,lv = 100},[2] = {id = 2106402,lv = 100},[3] = {id = 2106403,lv = 100},[4] = {id = 2106404,lv = 100},[5] = {id = 2106405,lv = 100},[6] = {id = 2106406,lv = 100},[7] = {id = 2106407,lv = 100},[8] = {id = 2106408,lv = 100}},mon = {id = 219,desc = "daily_exwp-11-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6051130,cardId = 1101998,lv = 100,bklv = 14,star = 2,equip = {[1] = {id = 2005401,lv = 100},[2] = {id = 2005402,lv = 100},[3] = {id = 2005403,lv = 100},[4] = {id = 2005404,lv = 100},[5] = {id = 2005405,lv = 100},[6] = {id = 2005406,lv = 100},[7] = {id = 2005407,lv = 100},[8] = {id = 2005408,lv = 100}},mon = {id = 204,desc = "daily_exwp-11-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6051131,cardId = 1102998,lv = 100,bklv = 14,star = 2,ghost = 33,equip = {[1] = {id = 2106401,lv = 100},[2] = {id = 2106402,lv = 100},[3] = {id = 2106403,lv = 100},[4] = {id = 2106404,lv = 100},[5] = {id = 2106405,lv = 100},[6] = {id = 2106406,lv = 100},[7] = {id = 2106407,lv = 100},[8] = {id = 2106408,lv = 100}},mon = {id = 224,desc = "daily_exwp-11-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60512] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6051210,cardId = 1101997,lv = 100,bklv = 14,star = 2,equip = {[1] = {id = 2005421,lv = 100},[2] = {id = 2005422,lv = 100},[3] = {id = 2005423,lv = 100},[4] = {id = 2005434,lv = 100},[5] = {id = 2005425,lv = 100},[6] = {id = 2005436,lv = 100},[7] = {id = 2005407,lv = 100},[8] = {id = 2005408,lv = 100}},mon = {id = 207,desc = "daily_exwp-12-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6051211,cardId = 1102997,lv = 100,bklv = 14,star = 2,ghost = 33,equip = {[1] = {id = 2106411,lv = 100},[2] = {id = 2106412,lv = 100},[3] = {id = 2106413,lv = 100},[4] = {id = 2106404,lv = 100},[5] = {id = 2106415,lv = 100},[6] = {id = 2106406,lv = 100},[7] = {id = 2106417,lv = 100},[8] = {id = 2106418,lv = 100}},mon = {id = 230,desc = "daily_exwp-12-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6051220,cardId = 1101997,lv = 100,bklv = 14,star = 1,equip = {[1] = {id = 2005421,lv = 100},[2] = {id = 2005422,lv = 100},[3] = {id = 2005423,lv = 100},[4] = {id = 2005434,lv = 100},[5] = {id = 2005425,lv = 100},[6] = {id = 2005436,lv = 100},[7] = {id = 2005407,lv = 100},[8] = {id = 2005408,lv = 100}},mon = {id = 205,desc = "daily_exwp-12-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6051221,cardId = 1102996,lv = 100,bklv = 14,star = 1,ghost = 33,equip = {[1] = {id = 2106411,lv = 100},[2] = {id = 2106412,lv = 100},[3] = {id = 2106413,lv = 100},[4] = {id = 2106404,lv = 100},[5] = {id = 2106415,lv = 100},[6] = {id = 2106406,lv = 100},[7] = {id = 2106417,lv = 100},[8] = {id = 2106418,lv = 100}},mon = {id = 219,desc = "daily_exwp-12-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6051230,cardId = 1101997,lv = 100,bklv = 14,star = 2,equip = {[1] = {id = 2005421,lv = 100},[2] = {id = 2005422,lv = 100},[3] = {id = 2005423,lv = 100},[4] = {id = 2005434,lv = 100},[5] = {id = 2005425,lv = 100},[6] = {id = 2005436,lv = 100},[7] = {id = 2005407,lv = 100},[8] = {id = 2005408,lv = 100}},mon = {id = 204,desc = "daily_exwp-12-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6051231,cardId = 1102997,lv = 100,bklv = 14,star = 2,ghost = 33,equip = {[1] = {id = 2106411,lv = 100},[2] = {id = 2106412,lv = 100},[3] = {id = 2106413,lv = 100},[4] = {id = 2106404,lv = 100},[5] = {id = 2106415,lv = 100},[6] = {id = 2106406,lv = 100},[7] = {id = 2106417,lv = 100},[8] = {id = 2106418,lv = 100}},mon = {id = 224,desc = "daily_exwp-12-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60513] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6051310,cardId = 1101999,lv = 110,bklv = 15,star = 2,equip = {[1] = {id = 2006301,lv = 110},[2] = {id = 2006302,lv = 110},[3] = {id = 2006303,lv = 110},[4] = {id = 2006304,lv = 110},[5] = {id = 2006305,lv = 110},[6] = {id = 2006306,lv = 110},[7] = {id = 2006307,lv = 110},[8] = {id = 2006308,lv = 110}},mon = {id = 207,desc = "daily_exwp-13-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6051311,cardId = 1102999,lv = 110,bklv = 16,star = 2,ghost = 37,equip = {[1] = {id = 2107301,lv = 110},[2] = {id = 2107302,lv = 110},[3] = {id = 2107303,lv = 110},[4] = {id = 2107304,lv = 110},[5] = {id = 2107305,lv = 110},[6] = {id = 2107306,lv = 110},[7] = {id = 2107307,lv = 110},[8] = {id = 2107308,lv = 110}},mon = {id = 230,desc = "daily_exwp-13-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6051320,cardId = 1101997,lv = 110,bklv = 15,star = 2,equip = {[1] = {id = 2006301,lv = 110},[2] = {id = 2006302,lv = 110},[3] = {id = 2006303,lv = 110},[4] = {id = 2006304,lv = 110},[5] = {id = 2006305,lv = 110},[6] = {id = 2006306,lv = 110},[7] = {id = 2006307,lv = 110},[8] = {id = 2006308,lv = 110}},mon = {id = 205,desc = "daily_exwp-13-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6051321,cardId = 1102998,lv = 110,bklv = 16,star = 2,ghost = 37,equip = {[1] = {id = 2107301,lv = 110},[2] = {id = 2107302,lv = 110},[3] = {id = 2107303,lv = 110},[4] = {id = 2107304,lv = 110},[5] = {id = 2107305,lv = 110},[6] = {id = 2107306,lv = 110},[7] = {id = 2107307,lv = 110},[8] = {id = 2107308,lv = 110}},mon = {id = 219,desc = "daily_exwp-13-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6051330,cardId = 1101999,lv = 110,bklv = 15,star = 2,equip = {[1] = {id = 2006301,lv = 110},[2] = {id = 2006302,lv = 110},[3] = {id = 2006303,lv = 110},[4] = {id = 2006304,lv = 110},[5] = {id = 2006305,lv = 110},[6] = {id = 2006306,lv = 110},[7] = {id = 2006307,lv = 110},[8] = {id = 2006308,lv = 110}},mon = {id = 204,desc = "daily_exwp-13-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6051331,cardId = 1102999,lv = 110,bklv = 16,star = 2,ghost = 37,equip = {[1] = {id = 2107301,lv = 110},[2] = {id = 2107302,lv = 110},[3] = {id = 2107303,lv = 110},[4] = {id = 2107304,lv = 110},[5] = {id = 2107305,lv = 110},[6] = {id = 2107306,lv = 110},[7] = {id = 2107307,lv = 110},[8] = {id = 2107308,lv = 110}},mon = {id = 224,desc = "daily_exwp-13-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60514] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6051410,cardId = 1101998,lv = 110,bklv = 15,star = 2,equip = {[1] = {id = 2006401,lv = 110},[2] = {id = 2006402,lv = 110},[3] = {id = 2006403,lv = 110},[4] = {id = 2006404,lv = 110},[5] = {id = 2006405,lv = 110},[6] = {id = 2006406,lv = 110},[7] = {id = 2006407,lv = 110},[8] = {id = 2006408,lv = 110}},mon = {id = 207,desc = "daily_exwp-14-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6051411,cardId = 1102998,lv = 110,bklv = 16,star = 2,ghost = 37,equip = {[1] = {id = 2107401,lv = 110},[2] = {id = 2107402,lv = 110},[3] = {id = 2107403,lv = 110},[4] = {id = 2107404,lv = 110},[5] = {id = 2107405,lv = 110},[6] = {id = 2107406,lv = 110},[7] = {id = 2107407,lv = 110},[8] = {id = 2107408,lv = 110}},mon = {id = 230,desc = "daily_exwp-14-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6051420,cardId = 1101997,lv = 110,bklv = 15,star = 2,equip = {[1] = {id = 2006401,lv = 110},[2] = {id = 2006402,lv = 110},[3] = {id = 2006403,lv = 110},[4] = {id = 2006404,lv = 110},[5] = {id = 2006405,lv = 110},[6] = {id = 2006406,lv = 110},[7] = {id = 2006407,lv = 110},[8] = {id = 2006408,lv = 110}},mon = {id = 205,desc = "daily_exwp-14-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6051421,cardId = 1102997,lv = 110,bklv = 16,star = 2,ghost = 37,equip = {[1] = {id = 2107401,lv = 110},[2] = {id = 2107402,lv = 110},[3] = {id = 2107403,lv = 110},[4] = {id = 2107404,lv = 110},[5] = {id = 2107405,lv = 110},[6] = {id = 2107406,lv = 110},[7] = {id = 2107407,lv = 110},[8] = {id = 2107408,lv = 110}},mon = {id = 219,desc = "daily_exwp-14-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6051430,cardId = 1101998,lv = 110,bklv = 15,star = 2,equip = {[1] = {id = 2006401,lv = 110},[2] = {id = 2006402,lv = 110},[3] = {id = 2006403,lv = 110},[4] = {id = 2006404,lv = 110},[5] = {id = 2006405,lv = 110},[6] = {id = 2006406,lv = 110},[7] = {id = 2006407,lv = 110},[8] = {id = 2006408,lv = 110}},mon = {id = 204,desc = "daily_exwp-14-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6051431,cardId = 1102998,lv = 110,bklv = 16,star = 2,ghost = 37,equip = {[1] = {id = 2107401,lv = 110},[2] = {id = 2107402,lv = 110},[3] = {id = 2107403,lv = 110},[4] = {id = 2107404,lv = 110},[5] = {id = 2107405,lv = 110},[6] = {id = 2107406,lv = 110},[7] = {id = 2107407,lv = 110},[8] = {id = 2107408,lv = 110}},mon = {id = 224,desc = "daily_exwp-14-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60515] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6051510,cardId = 1101997,lv = 110,bklv = 15,star = 2,equip = {[1] = {id = 2006411,lv = 110},[2] = {id = 2006412,lv = 110},[3] = {id = 2006413,lv = 110},[4] = {id = 2006404,lv = 110},[5] = {id = 2006415,lv = 110},[6] = {id = 2006406,lv = 110},[7] = {id = 2006417,lv = 110},[8] = {id = 2006418,lv = 110}},mon = {id = 207,desc = "daily_exwp-15-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6051511,cardId = 1102997,lv = 110,bklv = 16,star = 2,ghost = 37,equip = {[1] = {id = 2107421,lv = 110},[2] = {id = 2107422,lv = 110},[3] = {id = 2107423,lv = 110},[4] = {id = 2107424,lv = 110},[5] = {id = 2107425,lv = 110},[6] = {id = 2107426,lv = 110},[7] = {id = 2107407,lv = 110},[8] = {id = 2107408,lv = 110}},mon = {id = 230,desc = "daily_exwp-15-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6051520,cardId = 1101997,lv = 110,bklv = 15,star = 2,equip = {[1] = {id = 2006411,lv = 110},[2] = {id = 2006412,lv = 110},[3] = {id = 2006413,lv = 110},[4] = {id = 2006404,lv = 110},[5] = {id = 2006415,lv = 110},[6] = {id = 2006406,lv = 110},[7] = {id = 2006417,lv = 110},[8] = {id = 2006418,lv = 110}},mon = {id = 205,desc = "daily_exwp-15-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6051521,cardId = 1102996,lv = 110,bklv = 16,star = 2,ghost = 37,equip = {[1] = {id = 2107421,lv = 110},[2] = {id = 2107422,lv = 110},[3] = {id = 2107423,lv = 110},[4] = {id = 2107424,lv = 110},[5] = {id = 2107425,lv = 110},[6] = {id = 2107426,lv = 110},[7] = {id = 2107407,lv = 110},[8] = {id = 2107408,lv = 110}},mon = {id = 219,desc = "daily_exwp-15-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6051530,cardId = 1101997,lv = 110,bklv = 15,star = 2,equip = {[1] = {id = 2006411,lv = 110},[2] = {id = 2006412,lv = 110},[3] = {id = 2006413,lv = 110},[4] = {id = 2006404,lv = 110},[5] = {id = 2006415,lv = 110},[6] = {id = 2006406,lv = 110},[7] = {id = 2006417,lv = 110},[8] = {id = 2006418,lv = 110}},mon = {id = 204,desc = "daily_exwp-15-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6051531,cardId = 1102997,lv = 110,bklv = 16,star = 2,ghost = 37,equip = {[1] = {id = 2107421,lv = 110},[2] = {id = 2107422,lv = 110},[3] = {id = 2107423,lv = 110},[4] = {id = 2107424,lv = 110},[5] = {id = 2107425,lv = 110},[6] = {id = 2107426,lv = 110},[7] = {id = 2107407,lv = 110},[8] = {id = 2107408,lv = 110}},mon = {id = 224,desc = "daily_exwp-15-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60516] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6051610,cardId = 1101999,lv = 120,bklv = 16,star = 3,equip = {[1] = {id = 2007301,lv = 120},[2] = {id = 2007302,lv = 120},[3] = {id = 2007303,lv = 120},[4] = {id = 2007304,lv = 120},[5] = {id = 2007305,lv = 120},[6] = {id = 2007306,lv = 120},[7] = {id = 2007307,lv = 120},[8] = {id = 2007308,lv = 120}},mon = {id = 207,desc = "daily_exwp-16-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6051611,cardId = 1102999,lv = 120,bklv = 17,star = 3,ghost = 41,equip = {[1] = {id = 2108301,lv = 120},[2] = {id = 2108302,lv = 120},[3] = {id = 2108303,lv = 120},[4] = {id = 2108304,lv = 120},[5] = {id = 2108305,lv = 120},[6] = {id = 2108306,lv = 120},[7] = {id = 2108307,lv = 120},[8] = {id = 2108308,lv = 120}},mon = {id = 230,desc = "daily_exwp-16-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6051620,cardId = 1101997,lv = 120,bklv = 16,star = 2,equip = {[1] = {id = 2007301,lv = 120},[2] = {id = 2007302,lv = 120},[3] = {id = 2007303,lv = 120},[4] = {id = 2007304,lv = 120},[5] = {id = 2007305,lv = 120},[6] = {id = 2007306,lv = 120},[7] = {id = 2007307,lv = 120},[8] = {id = 2007308,lv = 120}},mon = {id = 205,desc = "daily_exwp-16-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6051621,cardId = 1102998,lv = 120,bklv = 17,star = 2,ghost = 41,equip = {[1] = {id = 2108301,lv = 120},[2] = {id = 2108302,lv = 120},[3] = {id = 2108303,lv = 120},[4] = {id = 2108304,lv = 120},[5] = {id = 2108305,lv = 120},[6] = {id = 2108306,lv = 120},[7] = {id = 2108307,lv = 120},[8] = {id = 2108308,lv = 120}},mon = {id = 219,desc = "daily_exwp-16-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6051630,cardId = 1101999,lv = 120,bklv = 16,star = 3,equip = {[1] = {id = 2007301,lv = 120},[2] = {id = 2007302,lv = 120},[3] = {id = 2007303,lv = 120},[4] = {id = 2007304,lv = 120},[5] = {id = 2007305,lv = 120},[6] = {id = 2007306,lv = 120},[7] = {id = 2007307,lv = 120},[8] = {id = 2007308,lv = 120}},mon = {id = 204,desc = "daily_exwp-16-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6051631,cardId = 1102999,lv = 120,bklv = 17,star = 3,ghost = 41,equip = {[1] = {id = 2108301,lv = 120},[2] = {id = 2108302,lv = 120},[3] = {id = 2108303,lv = 120},[4] = {id = 2108304,lv = 120},[5] = {id = 2108305,lv = 120},[6] = {id = 2108306,lv = 120},[7] = {id = 2108307,lv = 120},[8] = {id = 2108308,lv = 120}},mon = {id = 224,desc = "daily_exwp-16-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60517] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6051710,cardId = 1101998,lv = 120,bklv = 16,star = 3,equip = {[1] = {id = 2007401,lv = 120},[2] = {id = 2007402,lv = 120},[3] = {id = 2007403,lv = 120},[4] = {id = 2007404,lv = 120},[5] = {id = 2007405,lv = 120},[6] = {id = 2007406,lv = 120},[7] = {id = 2007407,lv = 120},[8] = {id = 2007408,lv = 120}},mon = {id = 207,desc = "daily_exwp-17-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6051711,cardId = 1102998,lv = 120,bklv = 17,star = 3,ghost = 41,equip = {[1] = {id = 2108401,lv = 120},[2] = {id = 2108402,lv = 120},[3] = {id = 2108403,lv = 120},[4] = {id = 2108404,lv = 120},[5] = {id = 2108405,lv = 120},[6] = {id = 2108406,lv = 120},[7] = {id = 2108407,lv = 120},[8] = {id = 2108408,lv = 120}},mon = {id = 230,desc = "daily_exwp-17-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6051720,cardId = 1101997,lv = 120,bklv = 16,star = 2,equip = {[1] = {id = 2007401,lv = 120},[2] = {id = 2007402,lv = 120},[3] = {id = 2007403,lv = 120},[4] = {id = 2007404,lv = 120},[5] = {id = 2007405,lv = 120},[6] = {id = 2007406,lv = 120},[7] = {id = 2007407,lv = 120},[8] = {id = 2007408,lv = 120}},mon = {id = 205,desc = "daily_exwp-17-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6051721,cardId = 1102997,lv = 120,bklv = 17,star = 2,ghost = 41,equip = {[1] = {id = 2108401,lv = 120},[2] = {id = 2108402,lv = 120},[3] = {id = 2108403,lv = 120},[4] = {id = 2108404,lv = 120},[5] = {id = 2108405,lv = 120},[6] = {id = 2108406,lv = 120},[7] = {id = 2108407,lv = 120},[8] = {id = 2108408,lv = 120}},mon = {id = 219,desc = "daily_exwp-17-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6051730,cardId = 1101998,lv = 120,bklv = 16,star = 3,equip = {[1] = {id = 2007401,lv = 120},[2] = {id = 2007402,lv = 120},[3] = {id = 2007403,lv = 120},[4] = {id = 2007404,lv = 120},[5] = {id = 2007405,lv = 120},[6] = {id = 2007406,lv = 120},[7] = {id = 2007407,lv = 120},[8] = {id = 2007408,lv = 120}},mon = {id = 204,desc = "daily_exwp-17-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6051731,cardId = 1102998,lv = 120,bklv = 17,star = 3,ghost = 41,equip = {[1] = {id = 2108401,lv = 120},[2] = {id = 2108402,lv = 120},[3] = {id = 2108403,lv = 120},[4] = {id = 2108404,lv = 120},[5] = {id = 2108405,lv = 120},[6] = {id = 2108406,lv = 120},[7] = {id = 2108407,lv = 120},[8] = {id = 2108408,lv = 120}},mon = {id = 224,desc = "daily_exwp-17-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60518] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6051810,cardId = 1101997,lv = 120,bklv = 16,star = 3,equip = {[1] = {id = 2007421,lv = 120},[2] = {id = 2007422,lv = 120},[3] = {id = 2007423,lv = 120},[4] = {id = 2007424,lv = 120},[5] = {id = 2007425,lv = 120},[6] = {id = 2007426,lv = 120},[7] = {id = 2007407,lv = 120},[8] = {id = 2007408,lv = 120}},mon = {id = 207,desc = "daily_exwp-18-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6051811,cardId = 1102997,lv = 120,bklv = 17,star = 3,ghost = 41,equip = {[1] = {id = 2108421,lv = 120},[2] = {id = 2108422,lv = 120},[3] = {id = 2108413,lv = 120},[4] = {id = 2108404,lv = 120},[5] = {id = 2108415,lv = 120},[6] = {id = 2108406,lv = 120},[7] = {id = 2108427,lv = 120},[8] = {id = 2108428,lv = 120}},mon = {id = 230,desc = "daily_exwp-18-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6051820,cardId = 1101997,lv = 120,bklv = 16,star = 2,equip = {[1] = {id = 2007421,lv = 120},[2] = {id = 2007422,lv = 120},[3] = {id = 2007423,lv = 120},[4] = {id = 2007424,lv = 120},[5] = {id = 2007425,lv = 120},[6] = {id = 2007426,lv = 120},[7] = {id = 2007407,lv = 120},[8] = {id = 2007408,lv = 120}},mon = {id = 205,desc = "daily_exwp-18-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6051821,cardId = 1102996,lv = 120,bklv = 17,star = 2,ghost = 41,equip = {[1] = {id = 2108421,lv = 120},[2] = {id = 2108422,lv = 120},[3] = {id = 2108413,lv = 120},[4] = {id = 2108404,lv = 120},[5] = {id = 2108415,lv = 120},[6] = {id = 2108406,lv = 120},[7] = {id = 2108427,lv = 120},[8] = {id = 2108428,lv = 120}},mon = {id = 219,desc = "daily_exwp-18-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6051830,cardId = 1101997,lv = 120,bklv = 16,star = 3,equip = {[1] = {id = 2007421,lv = 120},[2] = {id = 2007422,lv = 120},[3] = {id = 2007423,lv = 120},[4] = {id = 2007424,lv = 120},[5] = {id = 2007425,lv = 120},[6] = {id = 2007426,lv = 120},[7] = {id = 2007407,lv = 120},[8] = {id = 2007408,lv = 120}},mon = {id = 204,desc = "daily_exwp-18-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6051831,cardId = 1102997,lv = 120,bklv = 17,star = 3,ghost = 41,equip = {[1] = {id = 2108421,lv = 120},[2] = {id = 2108422,lv = 120},[3] = {id = 2108413,lv = 120},[4] = {id = 2108404,lv = 120},[5] = {id = 2108415,lv = 120},[6] = {id = 2108406,lv = 120},[7] = {id = 2108427,lv = 120},[8] = {id = 2108428,lv = 120}},mon = {id = 224,desc = "daily_exwp-18-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60519] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6051910,cardId = 1101999,lv = 130,bklv = 17,star = 3,equip = {[1] = {id = 2008301,lv = 130},[2] = {id = 2008302,lv = 130},[3] = {id = 2008303,lv = 130},[4] = {id = 2008304,lv = 130},[5] = {id = 2008305,lv = 130},[6] = {id = 2008306,lv = 130},[7] = {id = 2008307,lv = 130},[8] = {id = 2008308,lv = 130}},mon = {id = 207,desc = "daily_exwp-19-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6051911,cardId = 1102999,lv = 130,bklv = 18,star = 3,ghost = 45,equip = {[1] = {id = 2109301,lv = 130},[2] = {id = 2109302,lv = 130},[3] = {id = 2109303,lv = 130},[4] = {id = 2109304,lv = 130},[5] = {id = 2109305,lv = 130},[6] = {id = 2109306,lv = 130},[7] = {id = 2109307,lv = 130},[8] = {id = 2109308,lv = 130}},mon = {id = 230,desc = "daily_exwp-19-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6051920,cardId = 1101997,lv = 130,bklv = 17,star = 3,equip = {[1] = {id = 2008301,lv = 130},[2] = {id = 2008302,lv = 130},[3] = {id = 2008303,lv = 130},[4] = {id = 2008304,lv = 130},[5] = {id = 2008305,lv = 130},[6] = {id = 2008306,lv = 130},[7] = {id = 2008307,lv = 130},[8] = {id = 2008308,lv = 130}},mon = {id = 205,desc = "daily_exwp-19-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6051921,cardId = 1102998,lv = 130,bklv = 18,star = 3,ghost = 45,equip = {[1] = {id = 2109301,lv = 130},[2] = {id = 2109302,lv = 130},[3] = {id = 2109303,lv = 130},[4] = {id = 2109304,lv = 130},[5] = {id = 2109305,lv = 130},[6] = {id = 2109306,lv = 130},[7] = {id = 2109307,lv = 130},[8] = {id = 2109308,lv = 130}},mon = {id = 219,desc = "daily_exwp-19-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6051930,cardId = 1101999,lv = 130,bklv = 17,star = 3,equip = {[1] = {id = 2008301,lv = 130},[2] = {id = 2008302,lv = 130},[3] = {id = 2008303,lv = 130},[4] = {id = 2008304,lv = 130},[5] = {id = 2008305,lv = 130},[6] = {id = 2008306,lv = 130},[7] = {id = 2008307,lv = 130},[8] = {id = 2008308,lv = 130}},mon = {id = 204,desc = "daily_exwp-19-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6051931,cardId = 1102999,lv = 130,bklv = 18,star = 3,ghost = 45,equip = {[1] = {id = 2109301,lv = 130},[2] = {id = 2109302,lv = 130},[3] = {id = 2109303,lv = 130},[4] = {id = 2109304,lv = 130},[5] = {id = 2109305,lv = 130},[6] = {id = 2109306,lv = 130},[7] = {id = 2109307,lv = 130},[8] = {id = 2109308,lv = 130}},mon = {id = 224,desc = "daily_exwp-19-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60520] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6052010,cardId = 1101998,lv = 130,bklv = 17,star = 3,equip = {[1] = {id = 2008401,lv = 130},[2] = {id = 2008402,lv = 130},[3] = {id = 2008403,lv = 130},[4] = {id = 2008404,lv = 130},[5] = {id = 2008405,lv = 130},[6] = {id = 2008406,lv = 130},[7] = {id = 2008407,lv = 130},[8] = {id = 2008408,lv = 130}},mon = {id = 207,desc = "daily_exwp-20-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6052011,cardId = 1102998,lv = 130,bklv = 18,star = 3,ghost = 45,equip = {[1] = {id = 2109401,lv = 130},[2] = {id = 2109402,lv = 130},[3] = {id = 2109403,lv = 130},[4] = {id = 2109404,lv = 130},[5] = {id = 2109405,lv = 130},[6] = {id = 2109406,lv = 130},[7] = {id = 2109407,lv = 130},[8] = {id = 2109408,lv = 130}},mon = {id = 230,desc = "daily_exwp-20-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6052020,cardId = 1101997,lv = 130,bklv = 17,star = 3,equip = {[1] = {id = 2008401,lv = 130},[2] = {id = 2008402,lv = 130},[3] = {id = 2008403,lv = 130},[4] = {id = 2008404,lv = 130},[5] = {id = 2008405,lv = 130},[6] = {id = 2008406,lv = 130},[7] = {id = 2008407,lv = 130},[8] = {id = 2008408,lv = 130}},mon = {id = 205,desc = "daily_exwp-20-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6052021,cardId = 1102997,lv = 130,bklv = 18,star = 3,ghost = 45,equip = {[1] = {id = 2109401,lv = 130},[2] = {id = 2109402,lv = 130},[3] = {id = 2109403,lv = 130},[4] = {id = 2109404,lv = 130},[5] = {id = 2109405,lv = 130},[6] = {id = 2109406,lv = 130},[7] = {id = 2109407,lv = 130},[8] = {id = 2109408,lv = 130}},mon = {id = 219,desc = "daily_exwp-20-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6052030,cardId = 1101998,lv = 130,bklv = 17,star = 3,equip = {[1] = {id = 2008401,lv = 130},[2] = {id = 2008402,lv = 130},[3] = {id = 2008403,lv = 130},[4] = {id = 2008404,lv = 130},[5] = {id = 2008405,lv = 130},[6] = {id = 2008406,lv = 130},[7] = {id = 2008407,lv = 130},[8] = {id = 2008408,lv = 130}},mon = {id = 204,desc = "daily_exwp-20-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6052031,cardId = 1102998,lv = 130,bklv = 18,star = 3,ghost = 45,equip = {[1] = {id = 2109401,lv = 130},[2] = {id = 2109402,lv = 130},[3] = {id = 2109403,lv = 130},[4] = {id = 2109404,lv = 130},[5] = {id = 2109405,lv = 130},[6] = {id = 2109406,lv = 130},[7] = {id = 2109407,lv = 130},[8] = {id = 2109408,lv = 130}},mon = {id = 224,desc = "daily_exwp-20-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60521] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6052110,cardId = 1101997,lv = 130,bklv = 17,star = 3,equip = {[1] = {id = 2008421,lv = 130},[2] = {id = 2008412,lv = 130},[3] = {id = 2008413,lv = 130},[4] = {id = 2008404,lv = 130},[5] = {id = 2008415,lv = 130},[6] = {id = 2008406,lv = 130},[7] = {id = 2008427,lv = 130},[8] = {id = 2008418,lv = 130}},mon = {id = 207,desc = "daily_exwp-21-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6052111,cardId = 1102997,lv = 130,bklv = 18,star = 3,ghost = 45,equip = {[1] = {id = 2109421,lv = 130},[2] = {id = 2109422,lv = 130},[3] = {id = 2109423,lv = 130},[4] = {id = 2109424,lv = 130},[5] = {id = 2109425,lv = 130},[6] = {id = 2109426,lv = 130},[7] = {id = 2109407,lv = 130},[8] = {id = 2109408,lv = 130}},mon = {id = 230,desc = "daily_exwp-21-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6052120,cardId = 1101997,lv = 130,bklv = 17,star = 3,equip = {[1] = {id = 2008421,lv = 130},[2] = {id = 2008412,lv = 130},[3] = {id = 2008413,lv = 130},[4] = {id = 2008404,lv = 130},[5] = {id = 2008415,lv = 130},[6] = {id = 2008406,lv = 130},[7] = {id = 2008427,lv = 130},[8] = {id = 2008418,lv = 130}},mon = {id = 205,desc = "daily_exwp-21-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6052121,cardId = 1102996,lv = 130,bklv = 18,star = 3,ghost = 45,equip = {[1] = {id = 2109421,lv = 130},[2] = {id = 2109422,lv = 130},[3] = {id = 2109423,lv = 130},[4] = {id = 2109424,lv = 130},[5] = {id = 2109425,lv = 130},[6] = {id = 2109426,lv = 130},[7] = {id = 2109407,lv = 130},[8] = {id = 2109408,lv = 130}},mon = {id = 219,desc = "daily_exwp-21-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6052130,cardId = 1101997,lv = 130,bklv = 17,star = 3,equip = {[1] = {id = 2008421,lv = 130},[2] = {id = 2008412,lv = 130},[3] = {id = 2008413,lv = 130},[4] = {id = 2008404,lv = 130},[5] = {id = 2008415,lv = 130},[6] = {id = 2008406,lv = 130},[7] = {id = 2008427,lv = 130},[8] = {id = 2008418,lv = 130}},mon = {id = 204,desc = "daily_exwp-21-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6052131,cardId = 1102997,lv = 130,bklv = 18,star = 3,ghost = 45,equip = {[1] = {id = 2109421,lv = 130},[2] = {id = 2109422,lv = 130},[3] = {id = 2109423,lv = 130},[4] = {id = 2109424,lv = 130},[5] = {id = 2109425,lv = 130},[6] = {id = 2109426,lv = 130},[7] = {id = 2109407,lv = 130},[8] = {id = 2109408,lv = 130}},mon = {id = 224,desc = "daily_exwp-21-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60522] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6052210,cardId = 1101999,lv = 140,bklv = 19,star = 4,equip = {[1] = {id = 2009301,lv = 140},[2] = {id = 2009302,lv = 140},[3] = {id = 2009303,lv = 140},[4] = {id = 2009304,lv = 140},[5] = {id = 2009305,lv = 140},[6] = {id = 2009306,lv = 140},[7] = {id = 2009307,lv = 140},[8] = {id = 2009308,lv = 140}},mon = {id = 207,desc = "daily_exwp-22-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6052211,cardId = 1102999,lv = 140,bklv = 20,star = 4,ghost = 49,equip = {[1] = {id = 2110301,lv = 140},[2] = {id = 2110302,lv = 140},[3] = {id = 2110303,lv = 140},[4] = {id = 2110304,lv = 140},[5] = {id = 2110305,lv = 140},[6] = {id = 2110306,lv = 140},[7] = {id = 2110307,lv = 140},[8] = {id = 2110308,lv = 140}},mon = {id = 230,desc = "daily_exwp-22-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6052220,cardId = 1101997,lv = 140,bklv = 19,star = 3,equip = {[1] = {id = 2009301,lv = 140},[2] = {id = 2009302,lv = 140},[3] = {id = 2009303,lv = 140},[4] = {id = 2009304,lv = 140},[5] = {id = 2009305,lv = 140},[6] = {id = 2009306,lv = 140},[7] = {id = 2009307,lv = 140},[8] = {id = 2009308,lv = 140}},mon = {id = 205,desc = "daily_exwp-22-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6052221,cardId = 1102998,lv = 140,bklv = 20,star = 3,ghost = 49,equip = {[1] = {id = 2110301,lv = 140},[2] = {id = 2110302,lv = 140},[3] = {id = 2110303,lv = 140},[4] = {id = 2110304,lv = 140},[5] = {id = 2110305,lv = 140},[6] = {id = 2110306,lv = 140},[7] = {id = 2110307,lv = 140},[8] = {id = 2110308,lv = 140}},mon = {id = 219,desc = "daily_exwp-22-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6052230,cardId = 1101999,lv = 140,bklv = 19,star = 4,equip = {[1] = {id = 2009301,lv = 140},[2] = {id = 2009302,lv = 140},[3] = {id = 2009303,lv = 140},[4] = {id = 2009304,lv = 140},[5] = {id = 2009305,lv = 140},[6] = {id = 2009306,lv = 140},[7] = {id = 2009307,lv = 140},[8] = {id = 2009308,lv = 140}},mon = {id = 204,desc = "daily_exwp-22-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6052231,cardId = 1102999,lv = 140,bklv = 20,star = 4,ghost = 49,equip = {[1] = {id = 2110301,lv = 140},[2] = {id = 2110302,lv = 140},[3] = {id = 2110303,lv = 140},[4] = {id = 2110304,lv = 140},[5] = {id = 2110305,lv = 140},[6] = {id = 2110306,lv = 140},[7] = {id = 2110307,lv = 140},[8] = {id = 2110308,lv = 140}},mon = {id = 224,desc = "daily_exwp-22-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60523] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6052310,cardId = 1101998,lv = 140,bklv = 19,star = 4,equip = {[1] = {id = 2009401,lv = 140},[2] = {id = 2009402,lv = 140},[3] = {id = 2009403,lv = 140},[4] = {id = 2009404,lv = 140},[5] = {id = 2009405,lv = 140},[6] = {id = 2009406,lv = 140},[7] = {id = 2009407,lv = 140},[8] = {id = 2009408,lv = 140}},mon = {id = 207,desc = "daily_exwp-23-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6052311,cardId = 1102998,lv = 140,bklv = 20,star = 4,ghost = 49,equip = {[1] = {id = 2110401,lv = 140},[2] = {id = 2110402,lv = 140},[3] = {id = 2110403,lv = 140},[4] = {id = 2110404,lv = 140},[5] = {id = 2110405,lv = 140},[6] = {id = 2110406,lv = 140},[7] = {id = 2110407,lv = 140},[8] = {id = 2110408,lv = 140}},mon = {id = 230,desc = "daily_exwp-23-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6052320,cardId = 1101997,lv = 140,bklv = 19,star = 3,equip = {[1] = {id = 2009401,lv = 140},[2] = {id = 2009402,lv = 140},[3] = {id = 2009403,lv = 140},[4] = {id = 2009404,lv = 140},[5] = {id = 2009405,lv = 140},[6] = {id = 2009406,lv = 140},[7] = {id = 2009407,lv = 140},[8] = {id = 2009408,lv = 140}},mon = {id = 205,desc = "daily_exwp-23-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6052321,cardId = 1102997,lv = 140,bklv = 20,star = 3,ghost = 49,equip = {[1] = {id = 2110401,lv = 140},[2] = {id = 2110402,lv = 140},[3] = {id = 2110403,lv = 140},[4] = {id = 2110404,lv = 140},[5] = {id = 2110405,lv = 140},[6] = {id = 2110406,lv = 140},[7] = {id = 2110407,lv = 140},[8] = {id = 2110408,lv = 140}},mon = {id = 219,desc = "daily_exwp-23-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6052330,cardId = 1101998,lv = 140,bklv = 19,star = 4,equip = {[1] = {id = 2009401,lv = 140},[2] = {id = 2009402,lv = 140},[3] = {id = 2009403,lv = 140},[4] = {id = 2009404,lv = 140},[5] = {id = 2009405,lv = 140},[6] = {id = 2009406,lv = 140},[7] = {id = 2009407,lv = 140},[8] = {id = 2009408,lv = 140}},mon = {id = 204,desc = "daily_exwp-23-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6052331,cardId = 1102998,lv = 140,bklv = 20,star = 4,ghost = 49,equip = {[1] = {id = 2110401,lv = 140},[2] = {id = 2110402,lv = 140},[3] = {id = 2110403,lv = 140},[4] = {id = 2110404,lv = 140},[5] = {id = 2110405,lv = 140},[6] = {id = 2110406,lv = 140},[7] = {id = 2110407,lv = 140},[8] = {id = 2110408,lv = 140}},mon = {id = 224,desc = "daily_exwp-23-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60524] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6052410,cardId = 1101997,lv = 140,bklv = 19,star = 4,equip = {[1] = {id = 2009421,lv = 140},[2] = {id = 2009422,lv = 140},[3] = {id = 2009423,lv = 140},[4] = {id = 2009424,lv = 140},[5] = {id = 2009425,lv = 140},[6] = {id = 2009426,lv = 140},[7] = {id = 2009407,lv = 140},[8] = {id = 2009408,lv = 140}},mon = {id = 207,desc = "daily_exwp-24-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6052411,cardId = 1102997,lv = 140,bklv = 20,star = 4,ghost = 49,equip = {[1] = {id = 2110411,lv = 140},[2] = {id = 2110412,lv = 140},[3] = {id = 2110413,lv = 140},[4] = {id = 2110404,lv = 140},[5] = {id = 2110415,lv = 140},[6] = {id = 2110406,lv = 140},[7] = {id = 2110417,lv = 140},[8] = {id = 2110418,lv = 140}},mon = {id = 230,desc = "daily_exwp-24-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6052420,cardId = 1101997,lv = 140,bklv = 19,star = 3,equip = {[1] = {id = 2009421,lv = 140},[2] = {id = 2009422,lv = 140},[3] = {id = 2009423,lv = 140},[4] = {id = 2009424,lv = 140},[5] = {id = 2009425,lv = 140},[6] = {id = 2009426,lv = 140},[7] = {id = 2009407,lv = 140},[8] = {id = 2009408,lv = 140}},mon = {id = 205,desc = "daily_exwp-24-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6052421,cardId = 1102996,lv = 140,bklv = 20,star = 3,ghost = 49,equip = {[1] = {id = 2110411,lv = 140},[2] = {id = 2110412,lv = 140},[3] = {id = 2110413,lv = 140},[4] = {id = 2110404,lv = 140},[5] = {id = 2110415,lv = 140},[6] = {id = 2110406,lv = 140},[7] = {id = 2110417,lv = 140},[8] = {id = 2110418,lv = 140}},mon = {id = 219,desc = "daily_exwp-24-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6052430,cardId = 1101997,lv = 140,bklv = 19,star = 4,equip = {[1] = {id = 2009421,lv = 140},[2] = {id = 2009422,lv = 140},[3] = {id = 2009423,lv = 140},[4] = {id = 2009424,lv = 140},[5] = {id = 2009425,lv = 140},[6] = {id = 2009426,lv = 140},[7] = {id = 2009407,lv = 140},[8] = {id = 2009408,lv = 140}},mon = {id = 204,desc = "daily_exwp-24-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6052431,cardId = 1102997,lv = 140,bklv = 20,star = 4,ghost = 49,equip = {[1] = {id = 2110411,lv = 140},[2] = {id = 2110412,lv = 140},[3] = {id = 2110413,lv = 140},[4] = {id = 2110404,lv = 140},[5] = {id = 2110415,lv = 140},[6] = {id = 2110406,lv = 140},[7] = {id = 2110417,lv = 140},[8] = {id = 2110418,lv = 140}},mon = {id = 224,desc = "daily_exwp-24-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60525] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6052510,cardId = 1101999,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2010301,lv = 150},[2] = {id = 2010302,lv = 150},[3] = {id = 2010303,lv = 150},[4] = {id = 2010304,lv = 150},[5] = {id = 2010305,lv = 150},[6] = {id = 2010306,lv = 150},[7] = {id = 2010307,lv = 150},[8] = {id = 2010308,lv = 150}},mon = {id = 207,desc = "daily_exwp-25-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6052511,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111301,lv = 150},[2] = {id = 2111302,lv = 150},[3] = {id = 2111303,lv = 150},[4] = {id = 2111304,lv = 150},[5] = {id = 2111305,lv = 150},[6] = {id = 2111306,lv = 150},[7] = {id = 2111307,lv = 150},[8] = {id = 2111308,lv = 150}},mon = {id = 230,desc = "daily_exwp-25-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6052520,cardId = 1101997,lv = 150,bklv = 20,star = 4,equip = {[1] = {id = 2010301,lv = 150},[2] = {id = 2010302,lv = 150},[3] = {id = 2010303,lv = 150},[4] = {id = 2010304,lv = 150},[5] = {id = 2010305,lv = 150},[6] = {id = 2010306,lv = 150},[7] = {id = 2010307,lv = 150},[8] = {id = 2010308,lv = 150}},mon = {id = 205,desc = "daily_exwp-25-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6052521,cardId = 1102998,lv = 150,bklv = 20,star = 4,ghost = 52,equip = {[1] = {id = 2111301,lv = 150},[2] = {id = 2111302,lv = 150},[3] = {id = 2111303,lv = 150},[4] = {id = 2111304,lv = 150},[5] = {id = 2111305,lv = 150},[6] = {id = 2111306,lv = 150},[7] = {id = 2111307,lv = 150},[8] = {id = 2111308,lv = 150}},mon = {id = 219,desc = "daily_exwp-25-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6052530,cardId = 1101999,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2010301,lv = 150},[2] = {id = 2010302,lv = 150},[3] = {id = 2010303,lv = 150},[4] = {id = 2010304,lv = 150},[5] = {id = 2010305,lv = 150},[6] = {id = 2010306,lv = 150},[7] = {id = 2010307,lv = 150},[8] = {id = 2010308,lv = 150}},mon = {id = 204,desc = "daily_exwp-25-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6052531,cardId = 1102999,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111301,lv = 150},[2] = {id = 2111302,lv = 150},[3] = {id = 2111303,lv = 150},[4] = {id = 2111304,lv = 150},[5] = {id = 2111305,lv = 150},[6] = {id = 2111306,lv = 150},[7] = {id = 2111307,lv = 150},[8] = {id = 2111308,lv = 150}},mon = {id = 224,desc = "daily_exwp-25-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60526] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6052610,cardId = 1101998,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2010401,lv = 150},[2] = {id = 2010402,lv = 150},[3] = {id = 2010403,lv = 150},[4] = {id = 2010404,lv = 150},[5] = {id = 2010405,lv = 150},[6] = {id = 2010406,lv = 150},[7] = {id = 2010407,lv = 150},[8] = {id = 2010408,lv = 150}},mon = {id = 207,desc = "daily_exwp-26-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6052611,cardId = 1102998,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111401,lv = 150},[2] = {id = 2111402,lv = 150},[3] = {id = 2111403,lv = 150},[4] = {id = 2111404,lv = 150},[5] = {id = 2111405,lv = 150},[6] = {id = 2111406,lv = 150},[7] = {id = 2111407,lv = 150},[8] = {id = 2111408,lv = 150}},mon = {id = 230,desc = "daily_exwp-26-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6052620,cardId = 1101997,lv = 150,bklv = 20,star = 4,equip = {[1] = {id = 2010401,lv = 150},[2] = {id = 2010402,lv = 150},[3] = {id = 2010403,lv = 150},[4] = {id = 2010404,lv = 150},[5] = {id = 2010405,lv = 150},[6] = {id = 2010406,lv = 150},[7] = {id = 2010407,lv = 150},[8] = {id = 2010408,lv = 150}},mon = {id = 205,desc = "daily_exwp-26-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6052621,cardId = 1102997,lv = 150,bklv = 20,star = 4,ghost = 52,equip = {[1] = {id = 2111401,lv = 150},[2] = {id = 2111402,lv = 150},[3] = {id = 2111403,lv = 150},[4] = {id = 2111404,lv = 150},[5] = {id = 2111405,lv = 150},[6] = {id = 2111406,lv = 150},[7] = {id = 2111407,lv = 150},[8] = {id = 2111408,lv = 150}},mon = {id = 219,desc = "daily_exwp-26-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6052630,cardId = 1101998,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2010401,lv = 150},[2] = {id = 2010402,lv = 150},[3] = {id = 2010403,lv = 150},[4] = {id = 2010404,lv = 150},[5] = {id = 2010405,lv = 150},[6] = {id = 2010406,lv = 150},[7] = {id = 2010407,lv = 150},[8] = {id = 2010408,lv = 150}},mon = {id = 204,desc = "daily_exwp-26-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6052631,cardId = 1102998,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111401,lv = 150},[2] = {id = 2111402,lv = 150},[3] = {id = 2111403,lv = 150},[4] = {id = 2111404,lv = 150},[5] = {id = 2111405,lv = 150},[6] = {id = 2111406,lv = 150},[7] = {id = 2111407,lv = 150},[8] = {id = 2111408,lv = 150}},mon = {id = 224,desc = "daily_exwp-26-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	},
	[60527] = {
		[1] = {
			jlr = {cha = "daily_exwp",id = 6052710,cardId = 1101997,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2010411,lv = 150},[2] = {id = 2010412,lv = 150},[3] = {id = 2010413,lv = 150},[4] = {id = 2010404,lv = 150},[5] = {id = 2010415,lv = 150},[6] = {id = 2010406,lv = 150},[7] = {id = 2010417,lv = 150},[8] = {id = 2010418,lv = 150}},mon = {id = 207,desc = "daily_exwp-27-loc-1-jlr",srcLoc = 1,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6052711,cardId = 1102997,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111431,lv = 150},[2] = {id = 2111432,lv = 150},[3] = {id = 2111423,lv = 150},[4] = {id = 2111434,lv = 150},[5] = {id = 2111425,lv = 150},[6] = {id = 2111436,lv = 150},[7] = {id = 2111407,lv = 150},[8] = {id = 2111408,lv = 150}},mon = {id = 230,desc = "daily_exwp-27-loc-1-shl",srcLoc = 1,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[2] = {
			jlr = {cha = "daily_exwp",id = 6052720,cardId = 1101997,lv = 150,bklv = 20,star = 4,equip = {[1] = {id = 2010411,lv = 150},[2] = {id = 2010412,lv = 150},[3] = {id = 2010413,lv = 150},[4] = {id = 2010404,lv = 150},[5] = {id = 2010415,lv = 150},[6] = {id = 2010406,lv = 150},[7] = {id = 2010417,lv = 150},[8] = {id = 2010418,lv = 150}},mon = {id = 205,desc = "daily_exwp-27-loc-2-jlr",srcLoc = 2,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6052721,cardId = 1102996,lv = 150,bklv = 20,star = 4,ghost = 52,equip = {[1] = {id = 2111431,lv = 150},[2] = {id = 2111432,lv = 150},[3] = {id = 2111423,lv = 150},[4] = {id = 2111434,lv = 150},[5] = {id = 2111425,lv = 150},[6] = {id = 2111436,lv = 150},[7] = {id = 2111407,lv = 150},[8] = {id = 2111408,lv = 150}},mon = {id = 219,desc = "daily_exwp-27-loc-2-shl",srcLoc = 2,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		},
		[3] = {
			jlr = {cha = "daily_exwp",id = 6052730,cardId = 1101997,lv = 150,bklv = 20,star = 5,equip = {[1] = {id = 2010411,lv = 150},[2] = {id = 2010412,lv = 150},[3] = {id = 2010413,lv = 150},[4] = {id = 2010404,lv = 150},[5] = {id = 2010415,lv = 150},[6] = {id = 2010406,lv = 150},[7] = {id = 2010417,lv = 150},[8] = {id = 2010418,lv = 150}},mon = {id = 204,desc = "daily_exwp-27-loc-3-jlr",srcLoc = 3,srcType = 1,skillLv = 1,exert = 12,suffer = 9}},
			shl = {cha = "daily_exwp",id = 6052731,cardId = 1102997,lv = 150,bklv = 20,star = 5,ghost = 52,equip = {[1] = {id = 2111431,lv = 150},[2] = {id = 2111432,lv = 150},[3] = {id = 2111423,lv = 150},[4] = {id = 2111434,lv = 150},[5] = {id = 2111425,lv = 150},[6] = {id = 2111436,lv = 150},[7] = {id = 2111407,lv = 150},[8] = {id = 2111408,lv = 150}},mon = {id = 224,desc = "daily_exwp-27-loc-3-shl",srcLoc = 3,srcType = 2,skillLv = 1,exert = 13,suffer = 10}}
		}
	}
}
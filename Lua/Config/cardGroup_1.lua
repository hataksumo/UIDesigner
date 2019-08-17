--[[
--note:

colums:
{cha,章节} ,{id,卡牌Id} ,{group,组} ,{loc,位置} ,{type,类型} ,{cardId,卡牌ID} ,{lv,等级} ,{bklv,突破} ,{star,星级} ,{exWeapon.unseal,专属武器解封} ,{exWeapon.lv,专属武器等级} ,{equip[1].id,装备1Id} ,{equip[1].lv,装备1强化} ,{equip[2].id,装备1Id} ,{equip[2].lv,装备1强化} ,{equip[3].id,装备1Id} ,{equip[3].lv,装备1强化} ,{equip[4].id,装备1Id} ,{equip[4].lv,装备1强化} ,{equip[5].id,装备1Id} ,{equip[5].lv,装备1强化} ,{equip[6].id,装备1Id} ,{equip[6].lv,装备1强化} ,{equip[7].id,装备1Id} ,{equip[7].lv,装备1强化} ,{equip[8].id,装备1Id} ,{equip[8].lv,装备1强化} ,{mon.id,怪物模组ID} ,{mon.desc,备注} ,{mon.skillLv,技能等级} ,{mon.exert,施加攻击} ,{mon.suffer,承受攻击}
primary key:
#0 [世界BOSS卡牌组]: group,loc,type
#1 [日常本卡牌组]: group,loc,type
]]
local _T = LangUtil.Language
return{
	[50101] = {
		[1] = {
			jlr = {cha = "ds1",id = 5010110,cardId = 1101007,lv = 25,bklv = 2,star = 1,equip = {[1] = {id = 2013011,lv = 25},[2] = {id = 2013012,lv = 25},[3] = {id = 2013013,lv = 25},[4] = {id = 2013014,lv = 25},[5] = {id = 2013015,lv = 25},[6] = {id = 2013016,lv = 25},[7] = {id = 2013017,lv = 25},[8] = {id = 2013018,lv = 25}},mon = {id = 212,desc = "ds1-1-loc1-jlr",skillLv = 1,exert = 6,suffer = 6}},
			shl = {cha = "ds1",id = 5010111,cardId = 1102002,lv = 25,bklv = 2,star = 1,equip = {[1] = {id = 2013021,lv = 25},[2] = {id = 2013022,lv = 25},[3] = {id = 2013023,lv = 25},[4] = {id = 2013024,lv = 25},[5] = {id = 2013025,lv = 25},[6] = {id = 2013026,lv = 25},[7] = {id = 2013027,lv = 25},[8] = {id = 2013028,lv = 25}},mon = {id = 236,desc = "ds1-1-loc1-shl",skillLv = 1,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "ds1",id = 5010120,cardId = 1101014,lv = 25,bklv = 2,star = 1,equip = {[1] = {id = 2013011,lv = 25},[2] = {id = 2013012,lv = 25},[3] = {id = 2013013,lv = 25},[4] = {id = 2013014,lv = 25},[5] = {id = 2013015,lv = 25},[6] = {id = 2013016,lv = 25},[7] = {id = 2013017,lv = 25},[8] = {id = 2013018,lv = 25}},mon = {id = 208,desc = "ds1-1-loc2-jlr",skillLv = 1,exert = 6,suffer = 6}},
			shl = {cha = "ds1",id = 5010121,cardId = 1102020,lv = 25,bklv = 2,star = 1,equip = {[1] = {id = 2013021,lv = 25},[2] = {id = 2013022,lv = 25},[3] = {id = 2013023,lv = 25},[4] = {id = 2013024,lv = 25},[5] = {id = 2013025,lv = 25},[6] = {id = 2013026,lv = 25},[7] = {id = 2013027,lv = 25},[8] = {id = 2013028,lv = 25}},mon = {id = 231,desc = "ds1-1-loc2-shl",skillLv = 1,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "ds1",id = 5010130,cardId = 1101003,lv = 25,bklv = 2,star = 1,equip = {[1] = {id = 2013011,lv = 25},[2] = {id = 2013012,lv = 25},[3] = {id = 2013013,lv = 25},[4] = {id = 2013014,lv = 25},[5] = {id = 2013015,lv = 25},[6] = {id = 2013016,lv = 25},[7] = {id = 2013017,lv = 25},[8] = {id = 2013018,lv = 25}},mon = {id = 209,desc = "ds1-1-loc3-jlr",skillLv = 1,exert = 6,suffer = 6}},
			shl = {cha = "ds1",id = 5010131,cardId = 1102005,lv = 25,bklv = 2,star = 1,equip = {[1] = {id = 2013021,lv = 25},[2] = {id = 2013022,lv = 25},[3] = {id = 2013023,lv = 25},[4] = {id = 2013024,lv = 25},[5] = {id = 2013025,lv = 25},[6] = {id = 2013026,lv = 25},[7] = {id = 2013027,lv = 25},[8] = {id = 2013028,lv = 25}},mon = {id = 232,desc = "ds1-1-loc3-shl",skillLv = 1,exert = 9,suffer = 9}}
		}
	},
	[50102] = {
		[1] = {
			jlr = {cha = "ds1",id = 5010210,cardId = 1101007,lv = 25,bklv = 2,star = 1,equip = {[1] = {id = 2013011,lv = 25},[2] = {id = 2013012,lv = 25},[3] = {id = 2013013,lv = 25},[4] = {id = 2013014,lv = 25},[5] = {id = 2013015,lv = 25},[6] = {id = 2013016,lv = 25},[7] = {id = 2013017,lv = 25},[8] = {id = 2013018,lv = 25}},mon = {id = 212,desc = "ds1-2-loc1-jlr",skillLv = 1,exert = 6,suffer = 6}},
			shl = {cha = "ds1",id = 5010211,cardId = 1102002,lv = 25,bklv = 2,star = 1,equip = {[1] = {id = 2013021,lv = 25},[2] = {id = 2013022,lv = 25},[3] = {id = 2013023,lv = 25},[4] = {id = 2013024,lv = 25},[5] = {id = 2013025,lv = 25},[6] = {id = 2013026,lv = 25},[7] = {id = 2013027,lv = 25},[8] = {id = 2013028,lv = 25}},mon = {id = 236,desc = "ds1-2-loc1-shl",skillLv = 1,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "ds1",id = 5010220,cardId = 1101014,lv = 25,bklv = 2,star = 1,equip = {[1] = {id = 2013011,lv = 25},[2] = {id = 2013012,lv = 25},[3] = {id = 2013013,lv = 25},[4] = {id = 2013014,lv = 25},[5] = {id = 2013015,lv = 25},[6] = {id = 2013016,lv = 25},[7] = {id = 2013017,lv = 25},[8] = {id = 2013018,lv = 25}},mon = {id = 208,desc = "ds1-2-loc2-jlr",skillLv = 1,exert = 6,suffer = 6}},
			shl = {cha = "ds1",id = 5010221,cardId = 1102020,lv = 25,bklv = 2,star = 1,equip = {[1] = {id = 2013021,lv = 25},[2] = {id = 2013022,lv = 25},[3] = {id = 2013023,lv = 25},[4] = {id = 2013024,lv = 25},[5] = {id = 2013025,lv = 25},[6] = {id = 2013026,lv = 25},[7] = {id = 2013027,lv = 25},[8] = {id = 2013028,lv = 25}},mon = {id = 231,desc = "ds1-2-loc2-shl",skillLv = 1,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "ds1",id = 5010230,cardId = 1101003,lv = 25,bklv = 2,star = 1,equip = {[1] = {id = 2013011,lv = 25},[2] = {id = 2013012,lv = 25},[3] = {id = 2013013,lv = 25},[4] = {id = 2013014,lv = 25},[5] = {id = 2013015,lv = 25},[6] = {id = 2013016,lv = 25},[7] = {id = 2013017,lv = 25},[8] = {id = 2013018,lv = 25}},mon = {id = 209,desc = "ds1-2-loc3-jlr",skillLv = 1,exert = 6,suffer = 6}},
			shl = {cha = "ds1",id = 5010231,cardId = 1102005,lv = 25,bklv = 2,star = 1,equip = {[1] = {id = 2013021,lv = 25},[2] = {id = 2013022,lv = 25},[3] = {id = 2013023,lv = 25},[4] = {id = 2013024,lv = 25},[5] = {id = 2013025,lv = 25},[6] = {id = 2013026,lv = 25},[7] = {id = 2013027,lv = 25},[8] = {id = 2013028,lv = 25}},mon = {id = 232,desc = "ds1-2-loc3-shl",skillLv = 1,exert = 9,suffer = 9}}
		}
	},
	[50103] = {
		[1] = {
			jlr = {cha = "ds1",id = 5010310,cardId = 1101007,lv = 25,bklv = 2,star = 1,equip = {[1] = {id = 2013011,lv = 25},[2] = {id = 2013012,lv = 25},[3] = {id = 2013013,lv = 25},[4] = {id = 2013014,lv = 25},[5] = {id = 2013015,lv = 25},[6] = {id = 2013016,lv = 25},[7] = {id = 2013017,lv = 25},[8] = {id = 2013018,lv = 25}},mon = {id = 212,desc = "ds1-3-loc1-jlr",skillLv = 1,exert = 6,suffer = 6}},
			shl = {cha = "ds1",id = 5010311,cardId = 1102002,lv = 25,bklv = 2,star = 1,equip = {[1] = {id = 2013021,lv = 25},[2] = {id = 2013022,lv = 25},[3] = {id = 2013023,lv = 25},[4] = {id = 2013024,lv = 25},[5] = {id = 2013025,lv = 25},[6] = {id = 2013026,lv = 25},[7] = {id = 2013027,lv = 25},[8] = {id = 2013028,lv = 25}},mon = {id = 236,desc = "ds1-3-loc1-shl",skillLv = 1,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "ds1",id = 5010320,cardId = 1101014,lv = 25,bklv = 2,star = 1,equip = {[1] = {id = 2013011,lv = 25},[2] = {id = 2013012,lv = 25},[3] = {id = 2013013,lv = 25},[4] = {id = 2013014,lv = 25},[5] = {id = 2013015,lv = 25},[6] = {id = 2013016,lv = 25},[7] = {id = 2013017,lv = 25},[8] = {id = 2013018,lv = 25}},mon = {id = 208,desc = "ds1-3-loc2-jlr",skillLv = 1,exert = 6,suffer = 6}},
			shl = {cha = "ds1",id = 5010321,cardId = 1102020,lv = 25,bklv = 2,star = 1,equip = {[1] = {id = 2013021,lv = 25},[2] = {id = 2013022,lv = 25},[3] = {id = 2013023,lv = 25},[4] = {id = 2013024,lv = 25},[5] = {id = 2013025,lv = 25},[6] = {id = 2013026,lv = 25},[7] = {id = 2013027,lv = 25},[8] = {id = 2013028,lv = 25}},mon = {id = 231,desc = "ds1-3-loc2-shl",skillLv = 1,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "ds1",id = 5010330,cardId = 1101003,lv = 25,bklv = 2,star = 1,equip = {[1] = {id = 2013011,lv = 25},[2] = {id = 2013012,lv = 25},[3] = {id = 2013013,lv = 25},[4] = {id = 2013014,lv = 25},[5] = {id = 2013015,lv = 25},[6] = {id = 2013016,lv = 25},[7] = {id = 2013017,lv = 25},[8] = {id = 2013018,lv = 25}},mon = {id = 209,desc = "ds1-3-loc3-jlr",skillLv = 1,exert = 6,suffer = 6}},
			shl = {cha = "ds1",id = 5010331,cardId = 1102005,lv = 25,bklv = 2,star = 1,equip = {[1] = {id = 2013021,lv = 25},[2] = {id = 2013022,lv = 25},[3] = {id = 2013023,lv = 25},[4] = {id = 2013024,lv = 25},[5] = {id = 2013025,lv = 25},[6] = {id = 2013026,lv = 25},[7] = {id = 2013027,lv = 25},[8] = {id = 2013028,lv = 25}},mon = {id = 232,desc = "ds1-3-loc3-shl",skillLv = 1,exert = 9,suffer = 9}}
		}
	},
	[50104] = {
		[1] = {
			jlr = {cha = "ds1",id = 5010410,cardId = 1101007,lv = 25,bklv = 2,star = 1,equip = {[1] = {id = 2013011,lv = 25},[2] = {id = 2013012,lv = 25},[3] = {id = 2013013,lv = 25},[4] = {id = 2013014,lv = 25},[5] = {id = 2013015,lv = 25},[6] = {id = 2013016,lv = 25},[7] = {id = 2013017,lv = 25},[8] = {id = 2013018,lv = 25}},mon = {id = 212,desc = "ds1-4-loc1-jlr",skillLv = 1,exert = 6,suffer = 6}},
			shl = {cha = "ds1",id = 5010411,cardId = 1102002,lv = 25,bklv = 2,star = 1,equip = {[1] = {id = 2013021,lv = 25},[2] = {id = 2013022,lv = 25},[3] = {id = 2013023,lv = 25},[4] = {id = 2013024,lv = 25},[5] = {id = 2013025,lv = 25},[6] = {id = 2013026,lv = 25},[7] = {id = 2013027,lv = 25},[8] = {id = 2013028,lv = 25}},mon = {id = 236,desc = "ds1-4-loc1-shl",skillLv = 1,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "ds1",id = 5010420,cardId = 1101014,lv = 25,bklv = 2,star = 1,equip = {[1] = {id = 2013011,lv = 25},[2] = {id = 2013012,lv = 25},[3] = {id = 2013013,lv = 25},[4] = {id = 2013014,lv = 25},[5] = {id = 2013015,lv = 25},[6] = {id = 2013016,lv = 25},[7] = {id = 2013017,lv = 25},[8] = {id = 2013018,lv = 25}},mon = {id = 208,desc = "ds1-4-loc2-jlr",skillLv = 1,exert = 6,suffer = 6}},
			shl = {cha = "ds1",id = 5010421,cardId = 1102020,lv = 25,bklv = 2,star = 1,equip = {[1] = {id = 2013021,lv = 25},[2] = {id = 2013022,lv = 25},[3] = {id = 2013023,lv = 25},[4] = {id = 2013024,lv = 25},[5] = {id = 2013025,lv = 25},[6] = {id = 2013026,lv = 25},[7] = {id = 2013027,lv = 25},[8] = {id = 2013028,lv = 25}},mon = {id = 231,desc = "ds1-4-loc2-shl",skillLv = 1,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "ds1",id = 5010430,cardId = 1101003,lv = 25,bklv = 2,star = 1,equip = {[1] = {id = 2013011,lv = 25},[2] = {id = 2013012,lv = 25},[3] = {id = 2013013,lv = 25},[4] = {id = 2013014,lv = 25},[5] = {id = 2013015,lv = 25},[6] = {id = 2013016,lv = 25},[7] = {id = 2013017,lv = 25},[8] = {id = 2013018,lv = 25}},mon = {id = 209,desc = "ds1-4-loc3-jlr",skillLv = 1,exert = 6,suffer = 6}},
			shl = {cha = "ds1",id = 5010431,cardId = 1102005,lv = 25,bklv = 2,star = 1,equip = {[1] = {id = 2013021,lv = 25},[2] = {id = 2013022,lv = 25},[3] = {id = 2013023,lv = 25},[4] = {id = 2013024,lv = 25},[5] = {id = 2013025,lv = 25},[6] = {id = 2013026,lv = 25},[7] = {id = 2013027,lv = 25},[8] = {id = 2013028,lv = 25}},mon = {id = 232,desc = "ds1-4-loc3-shl",skillLv = 1,exert = 9,suffer = 9}}
		}
	},
	[50105] = {
		[1] = {
			jlr = {cha = "ds1",id = 5010510,cardId = 1101007,lv = 25,bklv = 2,star = 1,equip = {[1] = {id = 2013011,lv = 25},[2] = {id = 2013012,lv = 25},[3] = {id = 2013013,lv = 25},[4] = {id = 2013014,lv = 25},[5] = {id = 2013015,lv = 25},[6] = {id = 2013016,lv = 25},[7] = {id = 2013017,lv = 25},[8] = {id = 2013018,lv = 25}},mon = {id = 212,desc = "ds1-5-loc1-jlr",skillLv = 1,exert = 6,suffer = 6}},
			shl = {cha = "ds1",id = 5010511,cardId = 1102002,lv = 25,bklv = 2,star = 1,equip = {[1] = {id = 2013021,lv = 25},[2] = {id = 2013022,lv = 25},[3] = {id = 2013023,lv = 25},[4] = {id = 2013024,lv = 25},[5] = {id = 2013025,lv = 25},[6] = {id = 2013026,lv = 25},[7] = {id = 2013027,lv = 25},[8] = {id = 2013028,lv = 25}},mon = {id = 236,desc = "ds1-5-loc1-shl",skillLv = 1,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "ds1",id = 5010520,cardId = 1101014,lv = 25,bklv = 2,star = 1,equip = {[1] = {id = 2013011,lv = 25},[2] = {id = 2013012,lv = 25},[3] = {id = 2013013,lv = 25},[4] = {id = 2013014,lv = 25},[5] = {id = 2013015,lv = 25},[6] = {id = 2013016,lv = 25},[7] = {id = 2013017,lv = 25},[8] = {id = 2013018,lv = 25}},mon = {id = 208,desc = "ds1-5-loc2-jlr",skillLv = 1,exert = 6,suffer = 6}},
			shl = {cha = "ds1",id = 5010521,cardId = 1102020,lv = 25,bklv = 2,star = 1,equip = {[1] = {id = 2013021,lv = 25},[2] = {id = 2013022,lv = 25},[3] = {id = 2013023,lv = 25},[4] = {id = 2013024,lv = 25},[5] = {id = 2013025,lv = 25},[6] = {id = 2013026,lv = 25},[7] = {id = 2013027,lv = 25},[8] = {id = 2013028,lv = 25}},mon = {id = 231,desc = "ds1-5-loc2-shl",skillLv = 1,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "ds1",id = 5010530,cardId = 1101003,lv = 25,bklv = 2,star = 1,equip = {[1] = {id = 2013011,lv = 25},[2] = {id = 2013012,lv = 25},[3] = {id = 2013013,lv = 25},[4] = {id = 2013014,lv = 25},[5] = {id = 2013015,lv = 25},[6] = {id = 2013016,lv = 25},[7] = {id = 2013017,lv = 25},[8] = {id = 2013018,lv = 25}},mon = {id = 209,desc = "ds1-5-loc3-jlr",skillLv = 1,exert = 6,suffer = 6}},
			shl = {cha = "ds1",id = 5010531,cardId = 1102005,lv = 25,bklv = 2,star = 1,equip = {[1] = {id = 2013021,lv = 25},[2] = {id = 2013022,lv = 25},[3] = {id = 2013023,lv = 25},[4] = {id = 2013024,lv = 25},[5] = {id = 2013025,lv = 25},[6] = {id = 2013026,lv = 25},[7] = {id = 2013027,lv = 25},[8] = {id = 2013028,lv = 25}},mon = {id = 232,desc = "ds1-5-loc3-shl",skillLv = 1,exert = 9,suffer = 9}}
		}
	},
	[50201] = {
		[1] = {
			jlr = {cha = "ds2",id = 5020110,cardId = 1101007,lv = 35,bklv = 3,star = 1,equip = {[1] = {id = 2014031,lv = 35},[2] = {id = 2014032,lv = 35},[3] = {id = 2014033,lv = 35},[4] = {id = 2014034,lv = 35},[5] = {id = 2014035,lv = 35},[6] = {id = 2014036,lv = 35},[7] = {id = 2014037,lv = 35},[8] = {id = 2014038,lv = 35}},mon = {id = 212,desc = "ds2-1-loc1-jlr",skillLv = 2,exert = 6,suffer = 6}},
			shl = {cha = "ds2",id = 5020111,cardId = 1102002,lv = 35,bklv = 3,star = 1,equip = {[1] = {id = 2014041,lv = 35},[2] = {id = 2014042,lv = 35},[3] = {id = 2014043,lv = 35},[4] = {id = 2014044,lv = 35},[5] = {id = 2014045,lv = 35},[6] = {id = 2014046,lv = 35},[7] = {id = 2014047,lv = 35},[8] = {id = 2014048,lv = 35}},mon = {id = 236,desc = "ds2-1-loc1-shl",skillLv = 2,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "ds2",id = 5020120,cardId = 1101014,lv = 35,bklv = 3,star = 1,equip = {[1] = {id = 2014031,lv = 35},[2] = {id = 2014032,lv = 35},[3] = {id = 2014033,lv = 35},[4] = {id = 2014034,lv = 35},[5] = {id = 2014035,lv = 35},[6] = {id = 2014036,lv = 35},[7] = {id = 2014037,lv = 35},[8] = {id = 2014038,lv = 35}},mon = {id = 208,desc = "ds2-1-loc2-jlr",skillLv = 2,exert = 6,suffer = 6}},
			shl = {cha = "ds2",id = 5020121,cardId = 1102020,lv = 35,bklv = 3,star = 1,equip = {[1] = {id = 2014041,lv = 35},[2] = {id = 2014042,lv = 35},[3] = {id = 2014043,lv = 35},[4] = {id = 2014044,lv = 35},[5] = {id = 2014045,lv = 35},[6] = {id = 2014046,lv = 35},[7] = {id = 2014047,lv = 35},[8] = {id = 2014048,lv = 35}},mon = {id = 231,desc = "ds2-1-loc2-shl",skillLv = 2,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "ds2",id = 5020130,cardId = 1101003,lv = 35,bklv = 3,star = 1,equip = {[1] = {id = 2014031,lv = 35},[2] = {id = 2014032,lv = 35},[3] = {id = 2014033,lv = 35},[4] = {id = 2014034,lv = 35},[5] = {id = 2014035,lv = 35},[6] = {id = 2014036,lv = 35},[7] = {id = 2014037,lv = 35},[8] = {id = 2014038,lv = 35}},mon = {id = 209,desc = "ds2-1-loc3-jlr",skillLv = 2,exert = 6,suffer = 6}},
			shl = {cha = "ds2",id = 5020131,cardId = 1102005,lv = 35,bklv = 3,star = 1,equip = {[1] = {id = 2014041,lv = 35},[2] = {id = 2014042,lv = 35},[3] = {id = 2014043,lv = 35},[4] = {id = 2014044,lv = 35},[5] = {id = 2014045,lv = 35},[6] = {id = 2014046,lv = 35},[7] = {id = 2014047,lv = 35},[8] = {id = 2014048,lv = 35}},mon = {id = 232,desc = "ds2-1-loc3-shl",skillLv = 2,exert = 9,suffer = 9}}
		}
	},
	[50202] = {
		[1] = {
			jlr = {cha = "ds2",id = 5020210,cardId = 1101007,lv = 35,bklv = 3,star = 1,equip = {[1] = {id = 2014031,lv = 35},[2] = {id = 2014032,lv = 35},[3] = {id = 2014033,lv = 35},[4] = {id = 2014034,lv = 35},[5] = {id = 2014035,lv = 35},[6] = {id = 2014036,lv = 35},[7] = {id = 2014037,lv = 35},[8] = {id = 2014038,lv = 35}},mon = {id = 212,desc = "ds2-2-loc1-jlr",skillLv = 2,exert = 6,suffer = 6}},
			shl = {cha = "ds2",id = 5020211,cardId = 1102002,lv = 35,bklv = 3,star = 1,equip = {[1] = {id = 2014041,lv = 35},[2] = {id = 2014042,lv = 35},[3] = {id = 2014043,lv = 35},[4] = {id = 2014044,lv = 35},[5] = {id = 2014045,lv = 35},[6] = {id = 2014046,lv = 35},[7] = {id = 2014047,lv = 35},[8] = {id = 2014048,lv = 35}},mon = {id = 236,desc = "ds2-2-loc1-shl",skillLv = 2,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "ds2",id = 5020220,cardId = 1101014,lv = 35,bklv = 3,star = 1,equip = {[1] = {id = 2014031,lv = 35},[2] = {id = 2014032,lv = 35},[3] = {id = 2014033,lv = 35},[4] = {id = 2014034,lv = 35},[5] = {id = 2014035,lv = 35},[6] = {id = 2014036,lv = 35},[7] = {id = 2014037,lv = 35},[8] = {id = 2014038,lv = 35}},mon = {id = 208,desc = "ds2-2-loc2-jlr",skillLv = 2,exert = 6,suffer = 6}},
			shl = {cha = "ds2",id = 5020221,cardId = 1102020,lv = 35,bklv = 3,star = 1,equip = {[1] = {id = 2014041,lv = 35},[2] = {id = 2014042,lv = 35},[3] = {id = 2014043,lv = 35},[4] = {id = 2014044,lv = 35},[5] = {id = 2014045,lv = 35},[6] = {id = 2014046,lv = 35},[7] = {id = 2014047,lv = 35},[8] = {id = 2014048,lv = 35}},mon = {id = 231,desc = "ds2-2-loc2-shl",skillLv = 2,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "ds2",id = 5020230,cardId = 1101003,lv = 35,bklv = 3,star = 1,equip = {[1] = {id = 2014031,lv = 35},[2] = {id = 2014032,lv = 35},[3] = {id = 2014033,lv = 35},[4] = {id = 2014034,lv = 35},[5] = {id = 2014035,lv = 35},[6] = {id = 2014036,lv = 35},[7] = {id = 2014037,lv = 35},[8] = {id = 2014038,lv = 35}},mon = {id = 209,desc = "ds2-2-loc3-jlr",skillLv = 2,exert = 6,suffer = 6}},
			shl = {cha = "ds2",id = 5020231,cardId = 1102005,lv = 35,bklv = 3,star = 1,equip = {[1] = {id = 2014041,lv = 35},[2] = {id = 2014042,lv = 35},[3] = {id = 2014043,lv = 35},[4] = {id = 2014044,lv = 35},[5] = {id = 2014045,lv = 35},[6] = {id = 2014046,lv = 35},[7] = {id = 2014047,lv = 35},[8] = {id = 2014048,lv = 35}},mon = {id = 232,desc = "ds2-2-loc3-shl",skillLv = 2,exert = 9,suffer = 9}}
		}
	},
	[50203] = {
		[1] = {
			jlr = {cha = "ds2",id = 5020310,cardId = 1101007,lv = 35,bklv = 3,star = 1,equip = {[1] = {id = 2014031,lv = 35},[2] = {id = 2014032,lv = 35},[3] = {id = 2014033,lv = 35},[4] = {id = 2014034,lv = 35},[5] = {id = 2014035,lv = 35},[6] = {id = 2014036,lv = 35},[7] = {id = 2014037,lv = 35},[8] = {id = 2014038,lv = 35}},mon = {id = 212,desc = "ds2-3-loc1-jlr",skillLv = 2,exert = 6,suffer = 6}},
			shl = {cha = "ds2",id = 5020311,cardId = 1102002,lv = 35,bklv = 3,star = 1,equip = {[1] = {id = 2014041,lv = 35},[2] = {id = 2014042,lv = 35},[3] = {id = 2014043,lv = 35},[4] = {id = 2014044,lv = 35},[5] = {id = 2014045,lv = 35},[6] = {id = 2014046,lv = 35},[7] = {id = 2014047,lv = 35},[8] = {id = 2014048,lv = 35}},mon = {id = 236,desc = "ds2-3-loc1-shl",skillLv = 2,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "ds2",id = 5020320,cardId = 1101014,lv = 35,bklv = 3,star = 1,equip = {[1] = {id = 2014031,lv = 35},[2] = {id = 2014032,lv = 35},[3] = {id = 2014033,lv = 35},[4] = {id = 2014034,lv = 35},[5] = {id = 2014035,lv = 35},[6] = {id = 2014036,lv = 35},[7] = {id = 2014037,lv = 35},[8] = {id = 2014038,lv = 35}},mon = {id = 208,desc = "ds2-3-loc2-jlr",skillLv = 2,exert = 6,suffer = 6}},
			shl = {cha = "ds2",id = 5020321,cardId = 1102020,lv = 35,bklv = 3,star = 1,equip = {[1] = {id = 2014041,lv = 35},[2] = {id = 2014042,lv = 35},[3] = {id = 2014043,lv = 35},[4] = {id = 2014044,lv = 35},[5] = {id = 2014045,lv = 35},[6] = {id = 2014046,lv = 35},[7] = {id = 2014047,lv = 35},[8] = {id = 2014048,lv = 35}},mon = {id = 231,desc = "ds2-3-loc2-shl",skillLv = 2,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "ds2",id = 5020330,cardId = 1101003,lv = 35,bklv = 3,star = 1,equip = {[1] = {id = 2014031,lv = 35},[2] = {id = 2014032,lv = 35},[3] = {id = 2014033,lv = 35},[4] = {id = 2014034,lv = 35},[5] = {id = 2014035,lv = 35},[6] = {id = 2014036,lv = 35},[7] = {id = 2014037,lv = 35},[8] = {id = 2014038,lv = 35}},mon = {id = 209,desc = "ds2-3-loc3-jlr",skillLv = 2,exert = 6,suffer = 6}},
			shl = {cha = "ds2",id = 5020331,cardId = 1102005,lv = 35,bklv = 3,star = 1,equip = {[1] = {id = 2014041,lv = 35},[2] = {id = 2014042,lv = 35},[3] = {id = 2014043,lv = 35},[4] = {id = 2014044,lv = 35},[5] = {id = 2014045,lv = 35},[6] = {id = 2014046,lv = 35},[7] = {id = 2014047,lv = 35},[8] = {id = 2014048,lv = 35}},mon = {id = 232,desc = "ds2-3-loc3-shl",skillLv = 2,exert = 9,suffer = 9}}
		}
	},
	[50204] = {
		[1] = {
			jlr = {cha = "ds2",id = 5020410,cardId = 1101007,lv = 35,bklv = 3,star = 1,equip = {[1] = {id = 2014031,lv = 35},[2] = {id = 2014032,lv = 35},[3] = {id = 2014033,lv = 35},[4] = {id = 2014034,lv = 35},[5] = {id = 2014035,lv = 35},[6] = {id = 2014036,lv = 35},[7] = {id = 2014037,lv = 35},[8] = {id = 2014038,lv = 35}},mon = {id = 212,desc = "ds2-4-loc1-jlr",skillLv = 2,exert = 6,suffer = 6}},
			shl = {cha = "ds2",id = 5020411,cardId = 1102002,lv = 35,bklv = 3,star = 1,equip = {[1] = {id = 2014041,lv = 35},[2] = {id = 2014042,lv = 35},[3] = {id = 2014043,lv = 35},[4] = {id = 2014044,lv = 35},[5] = {id = 2014045,lv = 35},[6] = {id = 2014046,lv = 35},[7] = {id = 2014047,lv = 35},[8] = {id = 2014048,lv = 35}},mon = {id = 236,desc = "ds2-4-loc1-shl",skillLv = 2,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "ds2",id = 5020420,cardId = 1101014,lv = 35,bklv = 3,star = 1,equip = {[1] = {id = 2014031,lv = 35},[2] = {id = 2014032,lv = 35},[3] = {id = 2014033,lv = 35},[4] = {id = 2014034,lv = 35},[5] = {id = 2014035,lv = 35},[6] = {id = 2014036,lv = 35},[7] = {id = 2014037,lv = 35},[8] = {id = 2014038,lv = 35}},mon = {id = 208,desc = "ds2-4-loc2-jlr",skillLv = 2,exert = 6,suffer = 6}},
			shl = {cha = "ds2",id = 5020421,cardId = 1102020,lv = 35,bklv = 3,star = 1,equip = {[1] = {id = 2014041,lv = 35},[2] = {id = 2014042,lv = 35},[3] = {id = 2014043,lv = 35},[4] = {id = 2014044,lv = 35},[5] = {id = 2014045,lv = 35},[6] = {id = 2014046,lv = 35},[7] = {id = 2014047,lv = 35},[8] = {id = 2014048,lv = 35}},mon = {id = 231,desc = "ds2-4-loc2-shl",skillLv = 2,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "ds2",id = 5020430,cardId = 1101003,lv = 35,bklv = 3,star = 1,equip = {[1] = {id = 2014031,lv = 35},[2] = {id = 2014032,lv = 35},[3] = {id = 2014033,lv = 35},[4] = {id = 2014034,lv = 35},[5] = {id = 2014035,lv = 35},[6] = {id = 2014036,lv = 35},[7] = {id = 2014037,lv = 35},[8] = {id = 2014038,lv = 35}},mon = {id = 209,desc = "ds2-4-loc3-jlr",skillLv = 2,exert = 6,suffer = 6}},
			shl = {cha = "ds2",id = 5020431,cardId = 1102005,lv = 35,bklv = 3,star = 1,equip = {[1] = {id = 2014041,lv = 35},[2] = {id = 2014042,lv = 35},[3] = {id = 2014043,lv = 35},[4] = {id = 2014044,lv = 35},[5] = {id = 2014045,lv = 35},[6] = {id = 2014046,lv = 35},[7] = {id = 2014047,lv = 35},[8] = {id = 2014048,lv = 35}},mon = {id = 232,desc = "ds2-4-loc3-shl",skillLv = 2,exert = 9,suffer = 9}}
		}
	},
	[50205] = {
		[1] = {
			jlr = {cha = "ds2",id = 5020510,cardId = 1101007,lv = 35,bklv = 3,star = 1,equip = {[1] = {id = 2014031,lv = 35},[2] = {id = 2014032,lv = 35},[3] = {id = 2014033,lv = 35},[4] = {id = 2014034,lv = 35},[5] = {id = 2014035,lv = 35},[6] = {id = 2014036,lv = 35},[7] = {id = 2014037,lv = 35},[8] = {id = 2014038,lv = 35}},mon = {id = 212,desc = "ds2-5-loc1-jlr",skillLv = 2,exert = 6,suffer = 6}},
			shl = {cha = "ds2",id = 5020511,cardId = 1102002,lv = 35,bklv = 3,star = 1,equip = {[1] = {id = 2014041,lv = 35},[2] = {id = 2014042,lv = 35},[3] = {id = 2014043,lv = 35},[4] = {id = 2014044,lv = 35},[5] = {id = 2014045,lv = 35},[6] = {id = 2014046,lv = 35},[7] = {id = 2014047,lv = 35},[8] = {id = 2014048,lv = 35}},mon = {id = 236,desc = "ds2-5-loc1-shl",skillLv = 2,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "ds2",id = 5020520,cardId = 1101014,lv = 35,bklv = 3,star = 1,equip = {[1] = {id = 2014031,lv = 35},[2] = {id = 2014032,lv = 35},[3] = {id = 2014033,lv = 35},[4] = {id = 2014034,lv = 35},[5] = {id = 2014035,lv = 35},[6] = {id = 2014036,lv = 35},[7] = {id = 2014037,lv = 35},[8] = {id = 2014038,lv = 35}},mon = {id = 208,desc = "ds2-5-loc2-jlr",skillLv = 2,exert = 6,suffer = 6}},
			shl = {cha = "ds2",id = 5020521,cardId = 1102020,lv = 35,bklv = 3,star = 1,equip = {[1] = {id = 2014041,lv = 35},[2] = {id = 2014042,lv = 35},[3] = {id = 2014043,lv = 35},[4] = {id = 2014044,lv = 35},[5] = {id = 2014045,lv = 35},[6] = {id = 2014046,lv = 35},[7] = {id = 2014047,lv = 35},[8] = {id = 2014048,lv = 35}},mon = {id = 231,desc = "ds2-5-loc2-shl",skillLv = 2,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "ds2",id = 5020530,cardId = 1101003,lv = 35,bklv = 3,star = 1,equip = {[1] = {id = 2014031,lv = 35},[2] = {id = 2014032,lv = 35},[3] = {id = 2014033,lv = 35},[4] = {id = 2014034,lv = 35},[5] = {id = 2014035,lv = 35},[6] = {id = 2014036,lv = 35},[7] = {id = 2014037,lv = 35},[8] = {id = 2014038,lv = 35}},mon = {id = 209,desc = "ds2-5-loc3-jlr",skillLv = 2,exert = 6,suffer = 6}},
			shl = {cha = "ds2",id = 5020531,cardId = 1102005,lv = 35,bklv = 3,star = 1,equip = {[1] = {id = 2014041,lv = 35},[2] = {id = 2014042,lv = 35},[3] = {id = 2014043,lv = 35},[4] = {id = 2014044,lv = 35},[5] = {id = 2014045,lv = 35},[6] = {id = 2014046,lv = 35},[7] = {id = 2014047,lv = 35},[8] = {id = 2014048,lv = 35}},mon = {id = 232,desc = "ds2-5-loc3-shl",skillLv = 2,exert = 9,suffer = 9}}
		}
	},
	[50301] = {
		[1] = {
			jlr = {cha = "ds3",id = 5030110,cardId = 1101007,lv = 45,bklv = 4,star = 2,exWeapon = {unseal = 1,lv = 1},equip = {[1] = {id = 2024031,lv = 45},[2] = {id = 2024032,lv = 45},[3] = {id = 2024033,lv = 45},[4] = {id = 2024034,lv = 45},[5] = {id = 2024055,lv = 45},[6] = {id = 2024056,lv = 45},[7] = {id = 2024057,lv = 45},[8] = {id = 2024058,lv = 45}},mon = {id = 212,desc = "ds3-1-loc1-jlr",skillLv = 2,exert = 6,suffer = 6}},
			shl = {cha = "ds3",id = 5030111,cardId = 1102002,lv = 45,bklv = 4,star = 2,exWeapon = {unseal = 1,lv = 1},equip = {[1] = {id = 2024041,lv = 45},[2] = {id = 2024042,lv = 45},[3] = {id = 2024043,lv = 45},[4] = {id = 2024044,lv = 45},[5] = {id = 2024065,lv = 45},[6] = {id = 2024066,lv = 45},[7] = {id = 2024067,lv = 45},[8] = {id = 2024068,lv = 45}},mon = {id = 236,desc = "ds3-1-loc1-shl",skillLv = 2,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "ds3",id = 5030120,cardId = 1101014,lv = 45,bklv = 4,star = 2,exWeapon = {unseal = 1,lv = 1},equip = {[1] = {id = 2024031,lv = 45},[2] = {id = 2024032,lv = 45},[3] = {id = 2024033,lv = 45},[4] = {id = 2024034,lv = 45},[5] = {id = 2024055,lv = 45},[6] = {id = 2024056,lv = 45},[7] = {id = 2024057,lv = 45},[8] = {id = 2024058,lv = 45}},mon = {id = 208,desc = "ds3-1-loc2-jlr",skillLv = 2,exert = 6,suffer = 6}},
			shl = {cha = "ds3",id = 5030121,cardId = 1102020,lv = 45,bklv = 4,star = 2,exWeapon = {unseal = 1,lv = 1},equip = {[1] = {id = 2024041,lv = 45},[2] = {id = 2024042,lv = 45},[3] = {id = 2024043,lv = 45},[4] = {id = 2024044,lv = 45},[5] = {id = 2024065,lv = 45},[6] = {id = 2024066,lv = 45},[7] = {id = 2024067,lv = 45},[8] = {id = 2024068,lv = 45}},mon = {id = 231,desc = "ds3-1-loc2-shl",skillLv = 2,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "ds3",id = 5030130,cardId = 1101003,lv = 45,bklv = 4,star = 2,exWeapon = {unseal = 1,lv = 1},equip = {[1] = {id = 2024031,lv = 45},[2] = {id = 2024032,lv = 45},[3] = {id = 2024033,lv = 45},[4] = {id = 2024034,lv = 45},[5] = {id = 2024055,lv = 45},[6] = {id = 2024056,lv = 45},[7] = {id = 2024057,lv = 45},[8] = {id = 2024058,lv = 45}},mon = {id = 209,desc = "ds3-1-loc3-jlr",skillLv = 2,exert = 6,suffer = 6}},
			shl = {cha = "ds3",id = 5030131,cardId = 1102005,lv = 45,bklv = 4,star = 2,exWeapon = {unseal = 1,lv = 1},equip = {[1] = {id = 2024041,lv = 45},[2] = {id = 2024042,lv = 45},[3] = {id = 2024043,lv = 45},[4] = {id = 2024044,lv = 45},[5] = {id = 2024065,lv = 45},[6] = {id = 2024066,lv = 45},[7] = {id = 2024067,lv = 45},[8] = {id = 2024068,lv = 45}},mon = {id = 232,desc = "ds3-1-loc3-shl",skillLv = 2,exert = 9,suffer = 9}}
		}
	},
	[50302] = {
		[1] = {
			jlr = {cha = "ds3",id = 5030210,cardId = 1101007,lv = 45,bklv = 4,star = 2,exWeapon = {unseal = 1,lv = 1},equip = {[1] = {id = 2024031,lv = 45},[2] = {id = 2024032,lv = 45},[3] = {id = 2024033,lv = 45},[4] = {id = 2024034,lv = 45},[5] = {id = 2024055,lv = 45},[6] = {id = 2024056,lv = 45},[7] = {id = 2024057,lv = 45},[8] = {id = 2024058,lv = 45}},mon = {id = 212,desc = "ds3-2-loc1-jlr",skillLv = 2,exert = 6,suffer = 6}},
			shl = {cha = "ds3",id = 5030211,cardId = 1102002,lv = 45,bklv = 4,star = 2,exWeapon = {unseal = 1,lv = 1},equip = {[1] = {id = 2024041,lv = 45},[2] = {id = 2024042,lv = 45},[3] = {id = 2024043,lv = 45},[4] = {id = 2024044,lv = 45},[5] = {id = 2024065,lv = 45},[6] = {id = 2024066,lv = 45},[7] = {id = 2024067,lv = 45},[8] = {id = 2024068,lv = 45}},mon = {id = 236,desc = "ds3-2-loc1-shl",skillLv = 2,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "ds3",id = 5030220,cardId = 1101014,lv = 45,bklv = 4,star = 2,exWeapon = {unseal = 1,lv = 1},equip = {[1] = {id = 2024031,lv = 45},[2] = {id = 2024032,lv = 45},[3] = {id = 2024033,lv = 45},[4] = {id = 2024034,lv = 45},[5] = {id = 2024055,lv = 45},[6] = {id = 2024056,lv = 45},[7] = {id = 2024057,lv = 45},[8] = {id = 2024058,lv = 45}},mon = {id = 208,desc = "ds3-2-loc2-jlr",skillLv = 2,exert = 6,suffer = 6}},
			shl = {cha = "ds3",id = 5030221,cardId = 1102020,lv = 45,bklv = 4,star = 2,exWeapon = {unseal = 1,lv = 1},equip = {[1] = {id = 2024041,lv = 45},[2] = {id = 2024042,lv = 45},[3] = {id = 2024043,lv = 45},[4] = {id = 2024044,lv = 45},[5] = {id = 2024065,lv = 45},[6] = {id = 2024066,lv = 45},[7] = {id = 2024067,lv = 45},[8] = {id = 2024068,lv = 45}},mon = {id = 231,desc = "ds3-2-loc2-shl",skillLv = 2,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "ds3",id = 5030230,cardId = 1101003,lv = 45,bklv = 4,star = 2,exWeapon = {unseal = 1,lv = 1},equip = {[1] = {id = 2024031,lv = 45},[2] = {id = 2024032,lv = 45},[3] = {id = 2024033,lv = 45},[4] = {id = 2024034,lv = 45},[5] = {id = 2024055,lv = 45},[6] = {id = 2024056,lv = 45},[7] = {id = 2024057,lv = 45},[8] = {id = 2024058,lv = 45}},mon = {id = 209,desc = "ds3-2-loc3-jlr",skillLv = 2,exert = 6,suffer = 6}},
			shl = {cha = "ds3",id = 5030231,cardId = 1102005,lv = 45,bklv = 4,star = 2,exWeapon = {unseal = 1,lv = 1},equip = {[1] = {id = 2024041,lv = 45},[2] = {id = 2024042,lv = 45},[3] = {id = 2024043,lv = 45},[4] = {id = 2024044,lv = 45},[5] = {id = 2024065,lv = 45},[6] = {id = 2024066,lv = 45},[7] = {id = 2024067,lv = 45},[8] = {id = 2024068,lv = 45}},mon = {id = 232,desc = "ds3-2-loc3-shl",skillLv = 2,exert = 9,suffer = 9}}
		}
	},
	[50303] = {
		[1] = {
			jlr = {cha = "ds3",id = 5030310,cardId = 1101007,lv = 45,bklv = 4,star = 2,exWeapon = {unseal = 1,lv = 1},equip = {[1] = {id = 2024031,lv = 45},[2] = {id = 2024032,lv = 45},[3] = {id = 2024033,lv = 45},[4] = {id = 2024034,lv = 45},[5] = {id = 2024055,lv = 45},[6] = {id = 2024056,lv = 45},[7] = {id = 2024057,lv = 45},[8] = {id = 2024058,lv = 45}},mon = {id = 212,desc = "ds3-3-loc1-jlr",skillLv = 2,exert = 6,suffer = 6}},
			shl = {cha = "ds3",id = 5030311,cardId = 1102002,lv = 45,bklv = 4,star = 2,exWeapon = {unseal = 1,lv = 1},equip = {[1] = {id = 2024041,lv = 45},[2] = {id = 2024042,lv = 45},[3] = {id = 2024043,lv = 45},[4] = {id = 2024044,lv = 45},[5] = {id = 2024065,lv = 45},[6] = {id = 2024066,lv = 45},[7] = {id = 2024067,lv = 45},[8] = {id = 2024068,lv = 45}},mon = {id = 236,desc = "ds3-3-loc1-shl",skillLv = 2,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "ds3",id = 5030320,cardId = 1101014,lv = 45,bklv = 4,star = 2,exWeapon = {unseal = 1,lv = 1},equip = {[1] = {id = 2024031,lv = 45},[2] = {id = 2024032,lv = 45},[3] = {id = 2024033,lv = 45},[4] = {id = 2024034,lv = 45},[5] = {id = 2024055,lv = 45},[6] = {id = 2024056,lv = 45},[7] = {id = 2024057,lv = 45},[8] = {id = 2024058,lv = 45}},mon = {id = 208,desc = "ds3-3-loc2-jlr",skillLv = 2,exert = 6,suffer = 6}},
			shl = {cha = "ds3",id = 5030321,cardId = 1102020,lv = 45,bklv = 4,star = 2,exWeapon = {unseal = 1,lv = 1},equip = {[1] = {id = 2024041,lv = 45},[2] = {id = 2024042,lv = 45},[3] = {id = 2024043,lv = 45},[4] = {id = 2024044,lv = 45},[5] = {id = 2024065,lv = 45},[6] = {id = 2024066,lv = 45},[7] = {id = 2024067,lv = 45},[8] = {id = 2024068,lv = 45}},mon = {id = 231,desc = "ds3-3-loc2-shl",skillLv = 2,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "ds3",id = 5030330,cardId = 1101003,lv = 45,bklv = 4,star = 2,exWeapon = {unseal = 1,lv = 1},equip = {[1] = {id = 2024031,lv = 45},[2] = {id = 2024032,lv = 45},[3] = {id = 2024033,lv = 45},[4] = {id = 2024034,lv = 45},[5] = {id = 2024055,lv = 45},[6] = {id = 2024056,lv = 45},[7] = {id = 2024057,lv = 45},[8] = {id = 2024058,lv = 45}},mon = {id = 209,desc = "ds3-3-loc3-jlr",skillLv = 2,exert = 6,suffer = 6}},
			shl = {cha = "ds3",id = 5030331,cardId = 1102005,lv = 45,bklv = 4,star = 2,exWeapon = {unseal = 1,lv = 1},equip = {[1] = {id = 2024041,lv = 45},[2] = {id = 2024042,lv = 45},[3] = {id = 2024043,lv = 45},[4] = {id = 2024044,lv = 45},[5] = {id = 2024065,lv = 45},[6] = {id = 2024066,lv = 45},[7] = {id = 2024067,lv = 45},[8] = {id = 2024068,lv = 45}},mon = {id = 232,desc = "ds3-3-loc3-shl",skillLv = 2,exert = 9,suffer = 9}}
		}
	},
	[50304] = {
		[1] = {
			jlr = {cha = "ds3",id = 5030410,cardId = 1101007,lv = 45,bklv = 4,star = 2,exWeapon = {unseal = 1,lv = 1},equip = {[1] = {id = 2024031,lv = 45},[2] = {id = 2024032,lv = 45},[3] = {id = 2024033,lv = 45},[4] = {id = 2024034,lv = 45},[5] = {id = 2024055,lv = 45},[6] = {id = 2024056,lv = 45},[7] = {id = 2024057,lv = 45},[8] = {id = 2024058,lv = 45}},mon = {id = 212,desc = "ds3-4-loc1-jlr",skillLv = 2,exert = 6,suffer = 6}},
			shl = {cha = "ds3",id = 5030411,cardId = 1102002,lv = 45,bklv = 4,star = 2,exWeapon = {unseal = 1,lv = 1},equip = {[1] = {id = 2024041,lv = 45},[2] = {id = 2024042,lv = 45},[3] = {id = 2024043,lv = 45},[4] = {id = 2024044,lv = 45},[5] = {id = 2024065,lv = 45},[6] = {id = 2024066,lv = 45},[7] = {id = 2024067,lv = 45},[8] = {id = 2024068,lv = 45}},mon = {id = 236,desc = "ds3-4-loc1-shl",skillLv = 2,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "ds3",id = 5030420,cardId = 1101014,lv = 45,bklv = 4,star = 2,exWeapon = {unseal = 1,lv = 1},equip = {[1] = {id = 2024031,lv = 45},[2] = {id = 2024032,lv = 45},[3] = {id = 2024033,lv = 45},[4] = {id = 2024034,lv = 45},[5] = {id = 2024055,lv = 45},[6] = {id = 2024056,lv = 45},[7] = {id = 2024057,lv = 45},[8] = {id = 2024058,lv = 45}},mon = {id = 208,desc = "ds3-4-loc2-jlr",skillLv = 2,exert = 6,suffer = 6}},
			shl = {cha = "ds3",id = 5030421,cardId = 1102020,lv = 45,bklv = 4,star = 2,exWeapon = {unseal = 1,lv = 1},equip = {[1] = {id = 2024041,lv = 45},[2] = {id = 2024042,lv = 45},[3] = {id = 2024043,lv = 45},[4] = {id = 2024044,lv = 45},[5] = {id = 2024065,lv = 45},[6] = {id = 2024066,lv = 45},[7] = {id = 2024067,lv = 45},[8] = {id = 2024068,lv = 45}},mon = {id = 231,desc = "ds3-4-loc2-shl",skillLv = 2,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "ds3",id = 5030430,cardId = 1101003,lv = 45,bklv = 4,star = 2,exWeapon = {unseal = 1,lv = 1},equip = {[1] = {id = 2024031,lv = 45},[2] = {id = 2024032,lv = 45},[3] = {id = 2024033,lv = 45},[4] = {id = 2024034,lv = 45},[5] = {id = 2024055,lv = 45},[6] = {id = 2024056,lv = 45},[7] = {id = 2024057,lv = 45},[8] = {id = 2024058,lv = 45}},mon = {id = 209,desc = "ds3-4-loc3-jlr",skillLv = 2,exert = 6,suffer = 6}},
			shl = {cha = "ds3",id = 5030431,cardId = 1102005,lv = 45,bklv = 4,star = 2,exWeapon = {unseal = 1,lv = 1},equip = {[1] = {id = 2024041,lv = 45},[2] = {id = 2024042,lv = 45},[3] = {id = 2024043,lv = 45},[4] = {id = 2024044,lv = 45},[5] = {id = 2024065,lv = 45},[6] = {id = 2024066,lv = 45},[7] = {id = 2024067,lv = 45},[8] = {id = 2024068,lv = 45}},mon = {id = 232,desc = "ds3-4-loc3-shl",skillLv = 2,exert = 9,suffer = 9}}
		}
	},
	[50305] = {
		[1] = {
			jlr = {cha = "ds3",id = 5030510,cardId = 1101007,lv = 45,bklv = 4,star = 2,exWeapon = {unseal = 1,lv = 1},equip = {[1] = {id = 2024031,lv = 45},[2] = {id = 2024032,lv = 45},[3] = {id = 2024033,lv = 45},[4] = {id = 2024034,lv = 45},[5] = {id = 2024055,lv = 45},[6] = {id = 2024056,lv = 45},[7] = {id = 2024057,lv = 45},[8] = {id = 2024058,lv = 45}},mon = {id = 212,desc = "ds3-5-loc1-jlr",skillLv = 2,exert = 6,suffer = 6}},
			shl = {cha = "ds3",id = 5030511,cardId = 1102002,lv = 45,bklv = 4,star = 2,exWeapon = {unseal = 1,lv = 1},equip = {[1] = {id = 2024041,lv = 45},[2] = {id = 2024042,lv = 45},[3] = {id = 2024043,lv = 45},[4] = {id = 2024044,lv = 45},[5] = {id = 2024065,lv = 45},[6] = {id = 2024066,lv = 45},[7] = {id = 2024067,lv = 45},[8] = {id = 2024068,lv = 45}},mon = {id = 236,desc = "ds3-5-loc1-shl",skillLv = 2,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "ds3",id = 5030520,cardId = 1101014,lv = 45,bklv = 4,star = 2,exWeapon = {unseal = 1,lv = 1},equip = {[1] = {id = 2024031,lv = 45},[2] = {id = 2024032,lv = 45},[3] = {id = 2024033,lv = 45},[4] = {id = 2024034,lv = 45},[5] = {id = 2024055,lv = 45},[6] = {id = 2024056,lv = 45},[7] = {id = 2024057,lv = 45},[8] = {id = 2024058,lv = 45}},mon = {id = 208,desc = "ds3-5-loc2-jlr",skillLv = 2,exert = 6,suffer = 6}},
			shl = {cha = "ds3",id = 5030521,cardId = 1102020,lv = 45,bklv = 4,star = 2,exWeapon = {unseal = 1,lv = 1},equip = {[1] = {id = 2024041,lv = 45},[2] = {id = 2024042,lv = 45},[3] = {id = 2024043,lv = 45},[4] = {id = 2024044,lv = 45},[5] = {id = 2024065,lv = 45},[6] = {id = 2024066,lv = 45},[7] = {id = 2024067,lv = 45},[8] = {id = 2024068,lv = 45}},mon = {id = 231,desc = "ds3-5-loc2-shl",skillLv = 2,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "ds3",id = 5030530,cardId = 1101003,lv = 45,bklv = 4,star = 2,exWeapon = {unseal = 1,lv = 1},equip = {[1] = {id = 2024031,lv = 45},[2] = {id = 2024032,lv = 45},[3] = {id = 2024033,lv = 45},[4] = {id = 2024034,lv = 45},[5] = {id = 2024055,lv = 45},[6] = {id = 2024056,lv = 45},[7] = {id = 2024057,lv = 45},[8] = {id = 2024058,lv = 45}},mon = {id = 209,desc = "ds3-5-loc3-jlr",skillLv = 2,exert = 6,suffer = 6}},
			shl = {cha = "ds3",id = 5030531,cardId = 1102005,lv = 45,bklv = 4,star = 2,exWeapon = {unseal = 1,lv = 1},equip = {[1] = {id = 2024041,lv = 45},[2] = {id = 2024042,lv = 45},[3] = {id = 2024043,lv = 45},[4] = {id = 2024044,lv = 45},[5] = {id = 2024065,lv = 45},[6] = {id = 2024066,lv = 45},[7] = {id = 2024067,lv = 45},[8] = {id = 2024068,lv = 45}},mon = {id = 232,desc = "ds3-5-loc3-shl",skillLv = 2,exert = 9,suffer = 9}}
		}
	},
	[50401] = {
		[1] = {
			jlr = {cha = "ds4",id = 5040110,cardId = 1101007,lv = 60,bklv = 5,star = 2,exWeapon = {unseal = 1,lv = 2},equip = {[1] = {id = 2033011,lv = 60},[2] = {id = 2033012,lv = 60},[3] = {id = 2033013,lv = 60},[4] = {id = 2033014,lv = 60},[5] = {id = 2033015,lv = 60},[6] = {id = 2033016,lv = 60},[7] = {id = 2033017,lv = 60},[8] = {id = 2033018,lv = 60}},mon = {id = 212,desc = "ds4-1-loc1-jlr",skillLv = 3,exert = 6,suffer = 6}},
			shl = {cha = "ds4",id = 5040111,cardId = 1102002,lv = 60,bklv = 5,star = 2,exWeapon = {unseal = 1,lv = 2},equip = {[1] = {id = 2033021,lv = 60},[2] = {id = 2033022,lv = 60},[3] = {id = 2033023,lv = 60},[4] = {id = 2033024,lv = 60},[5] = {id = 2033025,lv = 60},[6] = {id = 2033026,lv = 60},[7] = {id = 2033027,lv = 60},[8] = {id = 2033028,lv = 60}},mon = {id = 236,desc = "ds4-1-loc1-shl",skillLv = 3,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "ds4",id = 5040120,cardId = 1101014,lv = 60,bklv = 5,star = 2,exWeapon = {unseal = 1,lv = 2},equip = {[1] = {id = 2033011,lv = 60},[2] = {id = 2033012,lv = 60},[3] = {id = 2033013,lv = 60},[4] = {id = 2033014,lv = 60},[5] = {id = 2033015,lv = 60},[6] = {id = 2033016,lv = 60},[7] = {id = 2033017,lv = 60},[8] = {id = 2033018,lv = 60}},mon = {id = 208,desc = "ds4-1-loc2-jlr",skillLv = 3,exert = 6,suffer = 6}},
			shl = {cha = "ds4",id = 5040121,cardId = 1102020,lv = 60,bklv = 5,star = 2,exWeapon = {unseal = 1,lv = 2},equip = {[1] = {id = 2033021,lv = 60},[2] = {id = 2033022,lv = 60},[3] = {id = 2033023,lv = 60},[4] = {id = 2033024,lv = 60},[5] = {id = 2033025,lv = 60},[6] = {id = 2033026,lv = 60},[7] = {id = 2033027,lv = 60},[8] = {id = 2033028,lv = 60}},mon = {id = 231,desc = "ds4-1-loc2-shl",skillLv = 3,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "ds4",id = 5040130,cardId = 1101003,lv = 60,bklv = 5,star = 2,exWeapon = {unseal = 1,lv = 2},equip = {[1] = {id = 2033011,lv = 60},[2] = {id = 2033012,lv = 60},[3] = {id = 2033013,lv = 60},[4] = {id = 2033014,lv = 60},[5] = {id = 2033015,lv = 60},[6] = {id = 2033016,lv = 60},[7] = {id = 2033017,lv = 60},[8] = {id = 2033018,lv = 60}},mon = {id = 209,desc = "ds4-1-loc3-jlr",skillLv = 3,exert = 6,suffer = 6}},
			shl = {cha = "ds4",id = 5040131,cardId = 1102005,lv = 60,bklv = 5,star = 2,exWeapon = {unseal = 1,lv = 2},equip = {[1] = {id = 2033021,lv = 60},[2] = {id = 2033022,lv = 60},[3] = {id = 2033023,lv = 60},[4] = {id = 2033024,lv = 60},[5] = {id = 2033025,lv = 60},[6] = {id = 2033026,lv = 60},[7] = {id = 2033027,lv = 60},[8] = {id = 2033028,lv = 60}},mon = {id = 232,desc = "ds4-1-loc3-shl",skillLv = 3,exert = 9,suffer = 9}}
		}
	},
	[50402] = {
		[1] = {
			jlr = {cha = "ds4",id = 5040210,cardId = 1101007,lv = 60,bklv = 5,star = 2,exWeapon = {unseal = 1,lv = 2},equip = {[1] = {id = 2033011,lv = 60},[2] = {id = 2033012,lv = 60},[3] = {id = 2033013,lv = 60},[4] = {id = 2033014,lv = 60},[5] = {id = 2033015,lv = 60},[6] = {id = 2033016,lv = 60},[7] = {id = 2033017,lv = 60},[8] = {id = 2033018,lv = 60}},mon = {id = 212,desc = "ds4-2-loc1-jlr",skillLv = 3,exert = 6,suffer = 6}},
			shl = {cha = "ds4",id = 5040211,cardId = 1102002,lv = 60,bklv = 5,star = 2,exWeapon = {unseal = 1,lv = 2},equip = {[1] = {id = 2033021,lv = 60},[2] = {id = 2033022,lv = 60},[3] = {id = 2033023,lv = 60},[4] = {id = 2033024,lv = 60},[5] = {id = 2033025,lv = 60},[6] = {id = 2033026,lv = 60},[7] = {id = 2033027,lv = 60},[8] = {id = 2033028,lv = 60}},mon = {id = 236,desc = "ds4-2-loc1-shl",skillLv = 3,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "ds4",id = 5040220,cardId = 1101014,lv = 60,bklv = 5,star = 2,exWeapon = {unseal = 1,lv = 2},equip = {[1] = {id = 2033011,lv = 60},[2] = {id = 2033012,lv = 60},[3] = {id = 2033013,lv = 60},[4] = {id = 2033014,lv = 60},[5] = {id = 2033015,lv = 60},[6] = {id = 2033016,lv = 60},[7] = {id = 2033017,lv = 60},[8] = {id = 2033018,lv = 60}},mon = {id = 208,desc = "ds4-2-loc2-jlr",skillLv = 3,exert = 6,suffer = 6}},
			shl = {cha = "ds4",id = 5040221,cardId = 1102020,lv = 60,bklv = 5,star = 2,exWeapon = {unseal = 1,lv = 2},equip = {[1] = {id = 2033021,lv = 60},[2] = {id = 2033022,lv = 60},[3] = {id = 2033023,lv = 60},[4] = {id = 2033024,lv = 60},[5] = {id = 2033025,lv = 60},[6] = {id = 2033026,lv = 60},[7] = {id = 2033027,lv = 60},[8] = {id = 2033028,lv = 60}},mon = {id = 231,desc = "ds4-2-loc2-shl",skillLv = 3,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "ds4",id = 5040230,cardId = 1101003,lv = 60,bklv = 5,star = 2,exWeapon = {unseal = 1,lv = 2},equip = {[1] = {id = 2033011,lv = 60},[2] = {id = 2033012,lv = 60},[3] = {id = 2033013,lv = 60},[4] = {id = 2033014,lv = 60},[5] = {id = 2033015,lv = 60},[6] = {id = 2033016,lv = 60},[7] = {id = 2033017,lv = 60},[8] = {id = 2033018,lv = 60}},mon = {id = 209,desc = "ds4-2-loc3-jlr",skillLv = 3,exert = 6,suffer = 6}},
			shl = {cha = "ds4",id = 5040231,cardId = 1102005,lv = 60,bklv = 5,star = 2,exWeapon = {unseal = 1,lv = 2},equip = {[1] = {id = 2033021,lv = 60},[2] = {id = 2033022,lv = 60},[3] = {id = 2033023,lv = 60},[4] = {id = 2033024,lv = 60},[5] = {id = 2033025,lv = 60},[6] = {id = 2033026,lv = 60},[7] = {id = 2033027,lv = 60},[8] = {id = 2033028,lv = 60}},mon = {id = 232,desc = "ds4-2-loc3-shl",skillLv = 3,exert = 9,suffer = 9}}
		}
	},
	[50403] = {
		[1] = {
			jlr = {cha = "ds4",id = 5040310,cardId = 1101007,lv = 60,bklv = 5,star = 2,exWeapon = {unseal = 1,lv = 2},equip = {[1] = {id = 2033011,lv = 60},[2] = {id = 2033012,lv = 60},[3] = {id = 2033013,lv = 60},[4] = {id = 2033014,lv = 60},[5] = {id = 2033015,lv = 60},[6] = {id = 2033016,lv = 60},[7] = {id = 2033017,lv = 60},[8] = {id = 2033018,lv = 60}},mon = {id = 212,desc = "ds4-3-loc1-jlr",skillLv = 3,exert = 6,suffer = 6}},
			shl = {cha = "ds4",id = 5040311,cardId = 1102002,lv = 60,bklv = 5,star = 2,exWeapon = {unseal = 1,lv = 2},equip = {[1] = {id = 2033021,lv = 60},[2] = {id = 2033022,lv = 60},[3] = {id = 2033023,lv = 60},[4] = {id = 2033024,lv = 60},[5] = {id = 2033025,lv = 60},[6] = {id = 2033026,lv = 60},[7] = {id = 2033027,lv = 60},[8] = {id = 2033028,lv = 60}},mon = {id = 236,desc = "ds4-3-loc1-shl",skillLv = 3,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "ds4",id = 5040320,cardId = 1101014,lv = 60,bklv = 5,star = 2,exWeapon = {unseal = 1,lv = 2},equip = {[1] = {id = 2033011,lv = 60},[2] = {id = 2033012,lv = 60},[3] = {id = 2033013,lv = 60},[4] = {id = 2033014,lv = 60},[5] = {id = 2033015,lv = 60},[6] = {id = 2033016,lv = 60},[7] = {id = 2033017,lv = 60},[8] = {id = 2033018,lv = 60}},mon = {id = 208,desc = "ds4-3-loc2-jlr",skillLv = 3,exert = 6,suffer = 6}},
			shl = {cha = "ds4",id = 5040321,cardId = 1102020,lv = 60,bklv = 5,star = 2,exWeapon = {unseal = 1,lv = 2},equip = {[1] = {id = 2033021,lv = 60},[2] = {id = 2033022,lv = 60},[3] = {id = 2033023,lv = 60},[4] = {id = 2033024,lv = 60},[5] = {id = 2033025,lv = 60},[6] = {id = 2033026,lv = 60},[7] = {id = 2033027,lv = 60},[8] = {id = 2033028,lv = 60}},mon = {id = 231,desc = "ds4-3-loc2-shl",skillLv = 3,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "ds4",id = 5040330,cardId = 1101003,lv = 60,bklv = 5,star = 2,exWeapon = {unseal = 1,lv = 2},equip = {[1] = {id = 2033011,lv = 60},[2] = {id = 2033012,lv = 60},[3] = {id = 2033013,lv = 60},[4] = {id = 2033014,lv = 60},[5] = {id = 2033015,lv = 60},[6] = {id = 2033016,lv = 60},[7] = {id = 2033017,lv = 60},[8] = {id = 2033018,lv = 60}},mon = {id = 209,desc = "ds4-3-loc3-jlr",skillLv = 3,exert = 6,suffer = 6}},
			shl = {cha = "ds4",id = 5040331,cardId = 1102005,lv = 60,bklv = 5,star = 2,exWeapon = {unseal = 1,lv = 2},equip = {[1] = {id = 2033021,lv = 60},[2] = {id = 2033022,lv = 60},[3] = {id = 2033023,lv = 60},[4] = {id = 2033024,lv = 60},[5] = {id = 2033025,lv = 60},[6] = {id = 2033026,lv = 60},[7] = {id = 2033027,lv = 60},[8] = {id = 2033028,lv = 60}},mon = {id = 232,desc = "ds4-3-loc3-shl",skillLv = 3,exert = 9,suffer = 9}}
		}
	},
	[50404] = {
		[1] = {
			jlr = {cha = "ds4",id = 5040410,cardId = 1101007,lv = 60,bklv = 5,star = 2,exWeapon = {unseal = 1,lv = 2},equip = {[1] = {id = 2033011,lv = 60},[2] = {id = 2033012,lv = 60},[3] = {id = 2033013,lv = 60},[4] = {id = 2033014,lv = 60},[5] = {id = 2033015,lv = 60},[6] = {id = 2033016,lv = 60},[7] = {id = 2033017,lv = 60},[8] = {id = 2033018,lv = 60}},mon = {id = 212,desc = "ds4-4-loc1-jlr",skillLv = 3,exert = 6,suffer = 6}},
			shl = {cha = "ds4",id = 5040411,cardId = 1102002,lv = 60,bklv = 5,star = 2,exWeapon = {unseal = 1,lv = 2},equip = {[1] = {id = 2033021,lv = 60},[2] = {id = 2033022,lv = 60},[3] = {id = 2033023,lv = 60},[4] = {id = 2033024,lv = 60},[5] = {id = 2033025,lv = 60},[6] = {id = 2033026,lv = 60},[7] = {id = 2033027,lv = 60},[8] = {id = 2033028,lv = 60}},mon = {id = 236,desc = "ds4-4-loc1-shl",skillLv = 3,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "ds4",id = 5040420,cardId = 1101014,lv = 60,bklv = 5,star = 2,exWeapon = {unseal = 1,lv = 2},equip = {[1] = {id = 2033011,lv = 60},[2] = {id = 2033012,lv = 60},[3] = {id = 2033013,lv = 60},[4] = {id = 2033014,lv = 60},[5] = {id = 2033015,lv = 60},[6] = {id = 2033016,lv = 60},[7] = {id = 2033017,lv = 60},[8] = {id = 2033018,lv = 60}},mon = {id = 208,desc = "ds4-4-loc2-jlr",skillLv = 3,exert = 6,suffer = 6}},
			shl = {cha = "ds4",id = 5040421,cardId = 1102020,lv = 60,bklv = 5,star = 2,exWeapon = {unseal = 1,lv = 2},equip = {[1] = {id = 2033021,lv = 60},[2] = {id = 2033022,lv = 60},[3] = {id = 2033023,lv = 60},[4] = {id = 2033024,lv = 60},[5] = {id = 2033025,lv = 60},[6] = {id = 2033026,lv = 60},[7] = {id = 2033027,lv = 60},[8] = {id = 2033028,lv = 60}},mon = {id = 231,desc = "ds4-4-loc2-shl",skillLv = 3,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "ds4",id = 5040430,cardId = 1101003,lv = 60,bklv = 5,star = 2,exWeapon = {unseal = 1,lv = 2},equip = {[1] = {id = 2033011,lv = 60},[2] = {id = 2033012,lv = 60},[3] = {id = 2033013,lv = 60},[4] = {id = 2033014,lv = 60},[5] = {id = 2033015,lv = 60},[6] = {id = 2033016,lv = 60},[7] = {id = 2033017,lv = 60},[8] = {id = 2033018,lv = 60}},mon = {id = 209,desc = "ds4-4-loc3-jlr",skillLv = 3,exert = 6,suffer = 6}},
			shl = {cha = "ds4",id = 5040431,cardId = 1102005,lv = 60,bklv = 5,star = 2,exWeapon = {unseal = 1,lv = 2},equip = {[1] = {id = 2033021,lv = 60},[2] = {id = 2033022,lv = 60},[3] = {id = 2033023,lv = 60},[4] = {id = 2033024,lv = 60},[5] = {id = 2033025,lv = 60},[6] = {id = 2033026,lv = 60},[7] = {id = 2033027,lv = 60},[8] = {id = 2033028,lv = 60}},mon = {id = 232,desc = "ds4-4-loc3-shl",skillLv = 3,exert = 9,suffer = 9}}
		}
	},
	[50405] = {
		[1] = {
			jlr = {cha = "ds4",id = 5040510,cardId = 1101007,lv = 60,bklv = 5,star = 2,exWeapon = {unseal = 1,lv = 2},equip = {[1] = {id = 2033011,lv = 60},[2] = {id = 2033012,lv = 60},[3] = {id = 2033013,lv = 60},[4] = {id = 2033014,lv = 60},[5] = {id = 2033015,lv = 60},[6] = {id = 2033016,lv = 60},[7] = {id = 2033017,lv = 60},[8] = {id = 2033018,lv = 60}},mon = {id = 212,desc = "ds4-5-loc1-jlr",skillLv = 3,exert = 6,suffer = 6}},
			shl = {cha = "ds4",id = 5040511,cardId = 1102002,lv = 60,bklv = 5,star = 2,exWeapon = {unseal = 1,lv = 2},equip = {[1] = {id = 2033021,lv = 60},[2] = {id = 2033022,lv = 60},[3] = {id = 2033023,lv = 60},[4] = {id = 2033024,lv = 60},[5] = {id = 2033025,lv = 60},[6] = {id = 2033026,lv = 60},[7] = {id = 2033027,lv = 60},[8] = {id = 2033028,lv = 60}},mon = {id = 236,desc = "ds4-5-loc1-shl",skillLv = 3,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "ds4",id = 5040520,cardId = 1101014,lv = 60,bklv = 5,star = 2,exWeapon = {unseal = 1,lv = 2},equip = {[1] = {id = 2033011,lv = 60},[2] = {id = 2033012,lv = 60},[3] = {id = 2033013,lv = 60},[4] = {id = 2033014,lv = 60},[5] = {id = 2033015,lv = 60},[6] = {id = 2033016,lv = 60},[7] = {id = 2033017,lv = 60},[8] = {id = 2033018,lv = 60}},mon = {id = 208,desc = "ds4-5-loc2-jlr",skillLv = 3,exert = 6,suffer = 6}},
			shl = {cha = "ds4",id = 5040521,cardId = 1102020,lv = 60,bklv = 5,star = 2,exWeapon = {unseal = 1,lv = 2},equip = {[1] = {id = 2033021,lv = 60},[2] = {id = 2033022,lv = 60},[3] = {id = 2033023,lv = 60},[4] = {id = 2033024,lv = 60},[5] = {id = 2033025,lv = 60},[6] = {id = 2033026,lv = 60},[7] = {id = 2033027,lv = 60},[8] = {id = 2033028,lv = 60}},mon = {id = 231,desc = "ds4-5-loc2-shl",skillLv = 3,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "ds4",id = 5040530,cardId = 1101003,lv = 60,bklv = 5,star = 2,exWeapon = {unseal = 1,lv = 2},equip = {[1] = {id = 2033011,lv = 60},[2] = {id = 2033012,lv = 60},[3] = {id = 2033013,lv = 60},[4] = {id = 2033014,lv = 60},[5] = {id = 2033015,lv = 60},[6] = {id = 2033016,lv = 60},[7] = {id = 2033017,lv = 60},[8] = {id = 2033018,lv = 60}},mon = {id = 209,desc = "ds4-5-loc3-jlr",skillLv = 3,exert = 6,suffer = 6}},
			shl = {cha = "ds4",id = 5040531,cardId = 1102005,lv = 60,bklv = 5,star = 2,exWeapon = {unseal = 1,lv = 2},equip = {[1] = {id = 2033021,lv = 60},[2] = {id = 2033022,lv = 60},[3] = {id = 2033023,lv = 60},[4] = {id = 2033024,lv = 60},[5] = {id = 2033025,lv = 60},[6] = {id = 2033026,lv = 60},[7] = {id = 2033027,lv = 60},[8] = {id = 2033028,lv = 60}},mon = {id = 232,desc = "ds4-5-loc3-shl",skillLv = 3,exert = 9,suffer = 9}}
		}
	},
	[50501] = {
		[1] = {
			jlr = {cha = "ds5",id = 5050110,cardId = 1101007,lv = 70,bklv = 6,star = 2,exWeapon = {unseal = 1,lv = 3},equip = {[1] = {id = 2034011,lv = 70},[2] = {id = 2034012,lv = 70},[3] = {id = 2034013,lv = 70},[4] = {id = 2034014,lv = 70},[5] = {id = 2034015,lv = 70},[6] = {id = 2034016,lv = 70},[7] = {id = 2034017,lv = 70},[8] = {id = 2034018,lv = 70}},mon = {id = 212,desc = "ds5-1-loc1-jlr",skillLv = 4,exert = 6,suffer = 6}},
			shl = {cha = "ds5",id = 5050111,cardId = 1102002,lv = 70,bklv = 6,star = 2,exWeapon = {unseal = 1,lv = 3},equip = {[1] = {id = 2034021,lv = 70},[2] = {id = 2034022,lv = 70},[3] = {id = 2034023,lv = 70},[4] = {id = 2034024,lv = 70},[5] = {id = 2034025,lv = 70},[6] = {id = 2034026,lv = 70},[7] = {id = 2034027,lv = 70},[8] = {id = 2034028,lv = 70}},mon = {id = 236,desc = "ds5-1-loc1-shl",skillLv = 4,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "ds5",id = 5050120,cardId = 1101014,lv = 70,bklv = 6,star = 2,exWeapon = {unseal = 1,lv = 3},equip = {[1] = {id = 2034011,lv = 70},[2] = {id = 2034012,lv = 70},[3] = {id = 2034013,lv = 70},[4] = {id = 2034014,lv = 70},[5] = {id = 2034015,lv = 70},[6] = {id = 2034016,lv = 70},[7] = {id = 2034017,lv = 70},[8] = {id = 2034018,lv = 70}},mon = {id = 208,desc = "ds5-1-loc2-jlr",skillLv = 4,exert = 6,suffer = 6}},
			shl = {cha = "ds5",id = 5050121,cardId = 1102020,lv = 70,bklv = 6,star = 2,exWeapon = {unseal = 1,lv = 3},equip = {[1] = {id = 2034021,lv = 70},[2] = {id = 2034022,lv = 70},[3] = {id = 2034023,lv = 70},[4] = {id = 2034024,lv = 70},[5] = {id = 2034025,lv = 70},[6] = {id = 2034026,lv = 70},[7] = {id = 2034027,lv = 70},[8] = {id = 2034028,lv = 70}},mon = {id = 231,desc = "ds5-1-loc2-shl",skillLv = 4,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "ds5",id = 5050130,cardId = 1101003,lv = 70,bklv = 6,star = 2,exWeapon = {unseal = 1,lv = 3},equip = {[1] = {id = 2034011,lv = 70},[2] = {id = 2034012,lv = 70},[3] = {id = 2034013,lv = 70},[4] = {id = 2034014,lv = 70},[5] = {id = 2034015,lv = 70},[6] = {id = 2034016,lv = 70},[7] = {id = 2034017,lv = 70},[8] = {id = 2034018,lv = 70}},mon = {id = 209,desc = "ds5-1-loc3-jlr",skillLv = 4,exert = 6,suffer = 6}},
			shl = {cha = "ds5",id = 5050131,cardId = 1102005,lv = 70,bklv = 6,star = 2,exWeapon = {unseal = 1,lv = 3},equip = {[1] = {id = 2034021,lv = 70},[2] = {id = 2034022,lv = 70},[3] = {id = 2034023,lv = 70},[4] = {id = 2034024,lv = 70},[5] = {id = 2034025,lv = 70},[6] = {id = 2034026,lv = 70},[7] = {id = 2034027,lv = 70},[8] = {id = 2034028,lv = 70}},mon = {id = 232,desc = "ds5-1-loc3-shl",skillLv = 4,exert = 9,suffer = 9}}
		}
	},
	[50502] = {
		[1] = {
			jlr = {cha = "ds5",id = 5050210,cardId = 1101007,lv = 70,bklv = 6,star = 2,exWeapon = {unseal = 1,lv = 3},equip = {[1] = {id = 2034011,lv = 70},[2] = {id = 2034012,lv = 70},[3] = {id = 2034013,lv = 70},[4] = {id = 2034014,lv = 70},[5] = {id = 2034015,lv = 70},[6] = {id = 2034016,lv = 70},[7] = {id = 2034017,lv = 70},[8] = {id = 2034018,lv = 70}},mon = {id = 212,desc = "ds5-2-loc1-jlr",skillLv = 4,exert = 6,suffer = 6}},
			shl = {cha = "ds5",id = 5050211,cardId = 1102002,lv = 70,bklv = 6,star = 2,exWeapon = {unseal = 1,lv = 3},equip = {[1] = {id = 2034021,lv = 70},[2] = {id = 2034022,lv = 70},[3] = {id = 2034023,lv = 70},[4] = {id = 2034024,lv = 70},[5] = {id = 2034025,lv = 70},[6] = {id = 2034026,lv = 70},[7] = {id = 2034027,lv = 70},[8] = {id = 2034028,lv = 70}},mon = {id = 236,desc = "ds5-2-loc1-shl",skillLv = 4,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "ds5",id = 5050220,cardId = 1101014,lv = 70,bklv = 6,star = 2,exWeapon = {unseal = 1,lv = 3},equip = {[1] = {id = 2034011,lv = 70},[2] = {id = 2034012,lv = 70},[3] = {id = 2034013,lv = 70},[4] = {id = 2034014,lv = 70},[5] = {id = 2034015,lv = 70},[6] = {id = 2034016,lv = 70},[7] = {id = 2034017,lv = 70},[8] = {id = 2034018,lv = 70}},mon = {id = 208,desc = "ds5-2-loc2-jlr",skillLv = 4,exert = 6,suffer = 6}},
			shl = {cha = "ds5",id = 5050221,cardId = 1102020,lv = 70,bklv = 6,star = 2,exWeapon = {unseal = 1,lv = 3},equip = {[1] = {id = 2034021,lv = 70},[2] = {id = 2034022,lv = 70},[3] = {id = 2034023,lv = 70},[4] = {id = 2034024,lv = 70},[5] = {id = 2034025,lv = 70},[6] = {id = 2034026,lv = 70},[7] = {id = 2034027,lv = 70},[8] = {id = 2034028,lv = 70}},mon = {id = 231,desc = "ds5-2-loc2-shl",skillLv = 4,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "ds5",id = 5050230,cardId = 1101003,lv = 70,bklv = 6,star = 2,exWeapon = {unseal = 1,lv = 3},equip = {[1] = {id = 2034011,lv = 70},[2] = {id = 2034012,lv = 70},[3] = {id = 2034013,lv = 70},[4] = {id = 2034014,lv = 70},[5] = {id = 2034015,lv = 70},[6] = {id = 2034016,lv = 70},[7] = {id = 2034017,lv = 70},[8] = {id = 2034018,lv = 70}},mon = {id = 209,desc = "ds5-2-loc3-jlr",skillLv = 4,exert = 6,suffer = 6}},
			shl = {cha = "ds5",id = 5050231,cardId = 1102005,lv = 70,bklv = 6,star = 2,exWeapon = {unseal = 1,lv = 3},equip = {[1] = {id = 2034021,lv = 70},[2] = {id = 2034022,lv = 70},[3] = {id = 2034023,lv = 70},[4] = {id = 2034024,lv = 70},[5] = {id = 2034025,lv = 70},[6] = {id = 2034026,lv = 70},[7] = {id = 2034027,lv = 70},[8] = {id = 2034028,lv = 70}},mon = {id = 232,desc = "ds5-2-loc3-shl",skillLv = 4,exert = 9,suffer = 9}}
		}
	},
	[50503] = {
		[1] = {
			jlr = {cha = "ds5",id = 5050310,cardId = 1101007,lv = 70,bklv = 6,star = 2,exWeapon = {unseal = 1,lv = 3},equip = {[1] = {id = 2034011,lv = 70},[2] = {id = 2034012,lv = 70},[3] = {id = 2034013,lv = 70},[4] = {id = 2034014,lv = 70},[5] = {id = 2034015,lv = 70},[6] = {id = 2034016,lv = 70},[7] = {id = 2034017,lv = 70},[8] = {id = 2034018,lv = 70}},mon = {id = 212,desc = "ds5-3-loc1-jlr",skillLv = 4,exert = 6,suffer = 6}},
			shl = {cha = "ds5",id = 5050311,cardId = 1102002,lv = 70,bklv = 6,star = 2,exWeapon = {unseal = 1,lv = 3},equip = {[1] = {id = 2034021,lv = 70},[2] = {id = 2034022,lv = 70},[3] = {id = 2034023,lv = 70},[4] = {id = 2034024,lv = 70},[5] = {id = 2034025,lv = 70},[6] = {id = 2034026,lv = 70},[7] = {id = 2034027,lv = 70},[8] = {id = 2034028,lv = 70}},mon = {id = 236,desc = "ds5-3-loc1-shl",skillLv = 4,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "ds5",id = 5050320,cardId = 1101014,lv = 70,bklv = 6,star = 2,exWeapon = {unseal = 1,lv = 3},equip = {[1] = {id = 2034011,lv = 70},[2] = {id = 2034012,lv = 70},[3] = {id = 2034013,lv = 70},[4] = {id = 2034014,lv = 70},[5] = {id = 2034015,lv = 70},[6] = {id = 2034016,lv = 70},[7] = {id = 2034017,lv = 70},[8] = {id = 2034018,lv = 70}},mon = {id = 208,desc = "ds5-3-loc2-jlr",skillLv = 4,exert = 6,suffer = 6}},
			shl = {cha = "ds5",id = 5050321,cardId = 1102020,lv = 70,bklv = 6,star = 2,exWeapon = {unseal = 1,lv = 3},equip = {[1] = {id = 2034021,lv = 70},[2] = {id = 2034022,lv = 70},[3] = {id = 2034023,lv = 70},[4] = {id = 2034024,lv = 70},[5] = {id = 2034025,lv = 70},[6] = {id = 2034026,lv = 70},[7] = {id = 2034027,lv = 70},[8] = {id = 2034028,lv = 70}},mon = {id = 231,desc = "ds5-3-loc2-shl",skillLv = 4,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "ds5",id = 5050330,cardId = 1101003,lv = 70,bklv = 6,star = 2,exWeapon = {unseal = 1,lv = 3},equip = {[1] = {id = 2034011,lv = 70},[2] = {id = 2034012,lv = 70},[3] = {id = 2034013,lv = 70},[4] = {id = 2034014,lv = 70},[5] = {id = 2034015,lv = 70},[6] = {id = 2034016,lv = 70},[7] = {id = 2034017,lv = 70},[8] = {id = 2034018,lv = 70}},mon = {id = 209,desc = "ds5-3-loc3-jlr",skillLv = 4,exert = 6,suffer = 6}},
			shl = {cha = "ds5",id = 5050331,cardId = 1102005,lv = 70,bklv = 6,star = 2,exWeapon = {unseal = 1,lv = 3},equip = {[1] = {id = 2034021,lv = 70},[2] = {id = 2034022,lv = 70},[3] = {id = 2034023,lv = 70},[4] = {id = 2034024,lv = 70},[5] = {id = 2034025,lv = 70},[6] = {id = 2034026,lv = 70},[7] = {id = 2034027,lv = 70},[8] = {id = 2034028,lv = 70}},mon = {id = 232,desc = "ds5-3-loc3-shl",skillLv = 4,exert = 9,suffer = 9}}
		}
	},
	[50504] = {
		[1] = {
			jlr = {cha = "ds5",id = 5050410,cardId = 1101007,lv = 70,bklv = 6,star = 2,exWeapon = {unseal = 1,lv = 3},equip = {[1] = {id = 2034011,lv = 70},[2] = {id = 2034012,lv = 70},[3] = {id = 2034013,lv = 70},[4] = {id = 2034014,lv = 70},[5] = {id = 2034015,lv = 70},[6] = {id = 2034016,lv = 70},[7] = {id = 2034017,lv = 70},[8] = {id = 2034018,lv = 70}},mon = {id = 212,desc = "ds5-4-loc1-jlr",skillLv = 4,exert = 6,suffer = 6}},
			shl = {cha = "ds5",id = 5050411,cardId = 1102002,lv = 70,bklv = 6,star = 2,exWeapon = {unseal = 1,lv = 3},equip = {[1] = {id = 2034021,lv = 70},[2] = {id = 2034022,lv = 70},[3] = {id = 2034023,lv = 70},[4] = {id = 2034024,lv = 70},[5] = {id = 2034025,lv = 70},[6] = {id = 2034026,lv = 70},[7] = {id = 2034027,lv = 70},[8] = {id = 2034028,lv = 70}},mon = {id = 236,desc = "ds5-4-loc1-shl",skillLv = 4,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "ds5",id = 5050420,cardId = 1101014,lv = 70,bklv = 6,star = 2,exWeapon = {unseal = 1,lv = 3},equip = {[1] = {id = 2034011,lv = 70},[2] = {id = 2034012,lv = 70},[3] = {id = 2034013,lv = 70},[4] = {id = 2034014,lv = 70},[5] = {id = 2034015,lv = 70},[6] = {id = 2034016,lv = 70},[7] = {id = 2034017,lv = 70},[8] = {id = 2034018,lv = 70}},mon = {id = 208,desc = "ds5-4-loc2-jlr",skillLv = 4,exert = 6,suffer = 6}},
			shl = {cha = "ds5",id = 5050421,cardId = 1102020,lv = 70,bklv = 6,star = 2,exWeapon = {unseal = 1,lv = 3},equip = {[1] = {id = 2034021,lv = 70},[2] = {id = 2034022,lv = 70},[3] = {id = 2034023,lv = 70},[4] = {id = 2034024,lv = 70},[5] = {id = 2034025,lv = 70},[6] = {id = 2034026,lv = 70},[7] = {id = 2034027,lv = 70},[8] = {id = 2034028,lv = 70}},mon = {id = 231,desc = "ds5-4-loc2-shl",skillLv = 4,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "ds5",id = 5050430,cardId = 1101003,lv = 70,bklv = 6,star = 2,exWeapon = {unseal = 1,lv = 3},equip = {[1] = {id = 2034011,lv = 70},[2] = {id = 2034012,lv = 70},[3] = {id = 2034013,lv = 70},[4] = {id = 2034014,lv = 70},[5] = {id = 2034015,lv = 70},[6] = {id = 2034016,lv = 70},[7] = {id = 2034017,lv = 70},[8] = {id = 2034018,lv = 70}},mon = {id = 209,desc = "ds5-4-loc3-jlr",skillLv = 4,exert = 6,suffer = 6}},
			shl = {cha = "ds5",id = 5050431,cardId = 1102005,lv = 70,bklv = 6,star = 2,exWeapon = {unseal = 1,lv = 3},equip = {[1] = {id = 2034021,lv = 70},[2] = {id = 2034022,lv = 70},[3] = {id = 2034023,lv = 70},[4] = {id = 2034024,lv = 70},[5] = {id = 2034025,lv = 70},[6] = {id = 2034026,lv = 70},[7] = {id = 2034027,lv = 70},[8] = {id = 2034028,lv = 70}},mon = {id = 232,desc = "ds5-4-loc3-shl",skillLv = 4,exert = 9,suffer = 9}}
		}
	},
	[50505] = {
		[1] = {
			jlr = {cha = "ds5",id = 5050510,cardId = 1101007,lv = 70,bklv = 6,star = 2,exWeapon = {unseal = 1,lv = 3},equip = {[1] = {id = 2034011,lv = 70},[2] = {id = 2034012,lv = 70},[3] = {id = 2034013,lv = 70},[4] = {id = 2034014,lv = 70},[5] = {id = 2034015,lv = 70},[6] = {id = 2034016,lv = 70},[7] = {id = 2034017,lv = 70},[8] = {id = 2034018,lv = 70}},mon = {id = 212,desc = "ds5-5-loc1-jlr",skillLv = 4,exert = 6,suffer = 6}},
			shl = {cha = "ds5",id = 5050511,cardId = 1102002,lv = 70,bklv = 6,star = 2,exWeapon = {unseal = 1,lv = 3},equip = {[1] = {id = 2034021,lv = 70},[2] = {id = 2034022,lv = 70},[3] = {id = 2034023,lv = 70},[4] = {id = 2034024,lv = 70},[5] = {id = 2034025,lv = 70},[6] = {id = 2034026,lv = 70},[7] = {id = 2034027,lv = 70},[8] = {id = 2034028,lv = 70}},mon = {id = 236,desc = "ds5-5-loc1-shl",skillLv = 4,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "ds5",id = 5050520,cardId = 1101014,lv = 70,bklv = 6,star = 2,exWeapon = {unseal = 1,lv = 3},equip = {[1] = {id = 2034011,lv = 70},[2] = {id = 2034012,lv = 70},[3] = {id = 2034013,lv = 70},[4] = {id = 2034014,lv = 70},[5] = {id = 2034015,lv = 70},[6] = {id = 2034016,lv = 70},[7] = {id = 2034017,lv = 70},[8] = {id = 2034018,lv = 70}},mon = {id = 208,desc = "ds5-5-loc2-jlr",skillLv = 4,exert = 6,suffer = 6}},
			shl = {cha = "ds5",id = 5050521,cardId = 1102020,lv = 70,bklv = 6,star = 2,exWeapon = {unseal = 1,lv = 3},equip = {[1] = {id = 2034021,lv = 70},[2] = {id = 2034022,lv = 70},[3] = {id = 2034023,lv = 70},[4] = {id = 2034024,lv = 70},[5] = {id = 2034025,lv = 70},[6] = {id = 2034026,lv = 70},[7] = {id = 2034027,lv = 70},[8] = {id = 2034028,lv = 70}},mon = {id = 231,desc = "ds5-5-loc2-shl",skillLv = 4,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "ds5",id = 5050530,cardId = 1101003,lv = 70,bklv = 6,star = 2,exWeapon = {unseal = 1,lv = 3},equip = {[1] = {id = 2034011,lv = 70},[2] = {id = 2034012,lv = 70},[3] = {id = 2034013,lv = 70},[4] = {id = 2034014,lv = 70},[5] = {id = 2034015,lv = 70},[6] = {id = 2034016,lv = 70},[7] = {id = 2034017,lv = 70},[8] = {id = 2034018,lv = 70}},mon = {id = 209,desc = "ds5-5-loc3-jlr",skillLv = 4,exert = 6,suffer = 6}},
			shl = {cha = "ds5",id = 5050531,cardId = 1102005,lv = 70,bklv = 6,star = 2,exWeapon = {unseal = 1,lv = 3},equip = {[1] = {id = 2034021,lv = 70},[2] = {id = 2034022,lv = 70},[3] = {id = 2034023,lv = 70},[4] = {id = 2034024,lv = 70},[5] = {id = 2034025,lv = 70},[6] = {id = 2034026,lv = 70},[7] = {id = 2034027,lv = 70},[8] = {id = 2034028,lv = 70}},mon = {id = 232,desc = "ds5-5-loc3-shl",skillLv = 4,exert = 9,suffer = 9}}
		}
	},
	[50601] = {
		[1] = {
			jlr = {cha = "ds6",id = 5060110,cardId = 1101007,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034051,lv = 80},[2] = {id = 2034032,lv = 80},[3] = {id = 2034033,lv = 80},[4] = {id = 2034054,lv = 80},[5] = {id = 2034035,lv = 80},[6] = {id = 2034036,lv = 80},[7] = {id = 2034057,lv = 80},[8] = {id = 2034058,lv = 80}},mon = {id = 212,desc = "ds6-1-loc1-jlr",skillLv = 5,exert = 6,suffer = 6}},
			shl = {cha = "ds6",id = 5060111,cardId = 1102002,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034061,lv = 80},[2] = {id = 2034042,lv = 80},[3] = {id = 2034043,lv = 80},[4] = {id = 2034064,lv = 80},[5] = {id = 2034045,lv = 80},[6] = {id = 2034046,lv = 80},[7] = {id = 2034067,lv = 80},[8] = {id = 2034068,lv = 80}},mon = {id = 236,desc = "ds6-1-loc1-shl",skillLv = 5,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "ds6",id = 5060120,cardId = 1101014,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034051,lv = 80},[2] = {id = 2034032,lv = 80},[3] = {id = 2034033,lv = 80},[4] = {id = 2034054,lv = 80},[5] = {id = 2034035,lv = 80},[6] = {id = 2034036,lv = 80},[7] = {id = 2034057,lv = 80},[8] = {id = 2034058,lv = 80}},mon = {id = 208,desc = "ds6-1-loc2-jlr",skillLv = 5,exert = 6,suffer = 6}},
			shl = {cha = "ds6",id = 5060121,cardId = 1102020,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034061,lv = 80},[2] = {id = 2034042,lv = 80},[3] = {id = 2034043,lv = 80},[4] = {id = 2034064,lv = 80},[5] = {id = 2034045,lv = 80},[6] = {id = 2034046,lv = 80},[7] = {id = 2034067,lv = 80},[8] = {id = 2034068,lv = 80}},mon = {id = 231,desc = "ds6-1-loc2-shl",skillLv = 5,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "ds6",id = 5060130,cardId = 1101003,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034051,lv = 80},[2] = {id = 2034032,lv = 80},[3] = {id = 2034033,lv = 80},[4] = {id = 2034054,lv = 80},[5] = {id = 2034035,lv = 80},[6] = {id = 2034036,lv = 80},[7] = {id = 2034057,lv = 80},[8] = {id = 2034058,lv = 80}},mon = {id = 209,desc = "ds6-1-loc3-jlr",skillLv = 5,exert = 6,suffer = 6}},
			shl = {cha = "ds6",id = 5060131,cardId = 1102005,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034061,lv = 80},[2] = {id = 2034042,lv = 80},[3] = {id = 2034043,lv = 80},[4] = {id = 2034064,lv = 80},[5] = {id = 2034045,lv = 80},[6] = {id = 2034046,lv = 80},[7] = {id = 2034067,lv = 80},[8] = {id = 2034068,lv = 80}},mon = {id = 232,desc = "ds6-1-loc3-shl",skillLv = 5,exert = 9,suffer = 9}}
		}
	},
	[50602] = {
		[1] = {
			jlr = {cha = "ds6",id = 5060210,cardId = 1101007,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034051,lv = 80},[2] = {id = 2034032,lv = 80},[3] = {id = 2034033,lv = 80},[4] = {id = 2034054,lv = 80},[5] = {id = 2034035,lv = 80},[6] = {id = 2034036,lv = 80},[7] = {id = 2034057,lv = 80},[8] = {id = 2034058,lv = 80}},mon = {id = 212,desc = "ds6-2-loc1-jlr",skillLv = 5,exert = 6,suffer = 6}},
			shl = {cha = "ds6",id = 5060211,cardId = 1102002,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034061,lv = 80},[2] = {id = 2034042,lv = 80},[3] = {id = 2034043,lv = 80},[4] = {id = 2034064,lv = 80},[5] = {id = 2034045,lv = 80},[6] = {id = 2034046,lv = 80},[7] = {id = 2034067,lv = 80},[8] = {id = 2034068,lv = 80}},mon = {id = 236,desc = "ds6-2-loc1-shl",skillLv = 5,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "ds6",id = 5060220,cardId = 1101014,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034051,lv = 80},[2] = {id = 2034032,lv = 80},[3] = {id = 2034033,lv = 80},[4] = {id = 2034054,lv = 80},[5] = {id = 2034035,lv = 80},[6] = {id = 2034036,lv = 80},[7] = {id = 2034057,lv = 80},[8] = {id = 2034058,lv = 80}},mon = {id = 208,desc = "ds6-2-loc2-jlr",skillLv = 5,exert = 6,suffer = 6}},
			shl = {cha = "ds6",id = 5060221,cardId = 1102020,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034061,lv = 80},[2] = {id = 2034042,lv = 80},[3] = {id = 2034043,lv = 80},[4] = {id = 2034064,lv = 80},[5] = {id = 2034045,lv = 80},[6] = {id = 2034046,lv = 80},[7] = {id = 2034067,lv = 80},[8] = {id = 2034068,lv = 80}},mon = {id = 231,desc = "ds6-2-loc2-shl",skillLv = 5,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "ds6",id = 5060230,cardId = 1101003,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034051,lv = 80},[2] = {id = 2034032,lv = 80},[3] = {id = 2034033,lv = 80},[4] = {id = 2034054,lv = 80},[5] = {id = 2034035,lv = 80},[6] = {id = 2034036,lv = 80},[7] = {id = 2034057,lv = 80},[8] = {id = 2034058,lv = 80}},mon = {id = 209,desc = "ds6-2-loc3-jlr",skillLv = 5,exert = 6,suffer = 6}},
			shl = {cha = "ds6",id = 5060231,cardId = 1102005,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034061,lv = 80},[2] = {id = 2034042,lv = 80},[3] = {id = 2034043,lv = 80},[4] = {id = 2034064,lv = 80},[5] = {id = 2034045,lv = 80},[6] = {id = 2034046,lv = 80},[7] = {id = 2034067,lv = 80},[8] = {id = 2034068,lv = 80}},mon = {id = 232,desc = "ds6-2-loc3-shl",skillLv = 5,exert = 9,suffer = 9}}
		}
	},
	[50603] = {
		[1] = {
			jlr = {cha = "ds6",id = 5060310,cardId = 1101007,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034051,lv = 80},[2] = {id = 2034032,lv = 80},[3] = {id = 2034033,lv = 80},[4] = {id = 2034054,lv = 80},[5] = {id = 2034035,lv = 80},[6] = {id = 2034036,lv = 80},[7] = {id = 2034057,lv = 80},[8] = {id = 2034058,lv = 80}},mon = {id = 212,desc = "ds6-3-loc1-jlr",skillLv = 5,exert = 6,suffer = 6}},
			shl = {cha = "ds6",id = 5060311,cardId = 1102002,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034061,lv = 80},[2] = {id = 2034042,lv = 80},[3] = {id = 2034043,lv = 80},[4] = {id = 2034064,lv = 80},[5] = {id = 2034045,lv = 80},[6] = {id = 2034046,lv = 80},[7] = {id = 2034067,lv = 80},[8] = {id = 2034068,lv = 80}},mon = {id = 236,desc = "ds6-3-loc1-shl",skillLv = 5,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "ds6",id = 5060320,cardId = 1101014,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034051,lv = 80},[2] = {id = 2034032,lv = 80},[3] = {id = 2034033,lv = 80},[4] = {id = 2034054,lv = 80},[5] = {id = 2034035,lv = 80},[6] = {id = 2034036,lv = 80},[7] = {id = 2034057,lv = 80},[8] = {id = 2034058,lv = 80}},mon = {id = 208,desc = "ds6-3-loc2-jlr",skillLv = 5,exert = 6,suffer = 6}},
			shl = {cha = "ds6",id = 5060321,cardId = 1102020,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034061,lv = 80},[2] = {id = 2034042,lv = 80},[3] = {id = 2034043,lv = 80},[4] = {id = 2034064,lv = 80},[5] = {id = 2034045,lv = 80},[6] = {id = 2034046,lv = 80},[7] = {id = 2034067,lv = 80},[8] = {id = 2034068,lv = 80}},mon = {id = 231,desc = "ds6-3-loc2-shl",skillLv = 5,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "ds6",id = 5060330,cardId = 1101003,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034051,lv = 80},[2] = {id = 2034032,lv = 80},[3] = {id = 2034033,lv = 80},[4] = {id = 2034054,lv = 80},[5] = {id = 2034035,lv = 80},[6] = {id = 2034036,lv = 80},[7] = {id = 2034057,lv = 80},[8] = {id = 2034058,lv = 80}},mon = {id = 209,desc = "ds6-3-loc3-jlr",skillLv = 5,exert = 6,suffer = 6}},
			shl = {cha = "ds6",id = 5060331,cardId = 1102005,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034061,lv = 80},[2] = {id = 2034042,lv = 80},[3] = {id = 2034043,lv = 80},[4] = {id = 2034064,lv = 80},[5] = {id = 2034045,lv = 80},[6] = {id = 2034046,lv = 80},[7] = {id = 2034067,lv = 80},[8] = {id = 2034068,lv = 80}},mon = {id = 232,desc = "ds6-3-loc3-shl",skillLv = 5,exert = 9,suffer = 9}}
		}
	},
	[50604] = {
		[1] = {
			jlr = {cha = "ds6",id = 5060410,cardId = 1101007,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034051,lv = 80},[2] = {id = 2034032,lv = 80},[3] = {id = 2034033,lv = 80},[4] = {id = 2034054,lv = 80},[5] = {id = 2034035,lv = 80},[6] = {id = 2034036,lv = 80},[7] = {id = 2034057,lv = 80},[8] = {id = 2034058,lv = 80}},mon = {id = 212,desc = "ds6-4-loc1-jlr",skillLv = 5,exert = 6,suffer = 6}},
			shl = {cha = "ds6",id = 5060411,cardId = 1102002,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034061,lv = 80},[2] = {id = 2034042,lv = 80},[3] = {id = 2034043,lv = 80},[4] = {id = 2034064,lv = 80},[5] = {id = 2034045,lv = 80},[6] = {id = 2034046,lv = 80},[7] = {id = 2034067,lv = 80},[8] = {id = 2034068,lv = 80}},mon = {id = 236,desc = "ds6-4-loc1-shl",skillLv = 5,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "ds6",id = 5060420,cardId = 1101014,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034051,lv = 80},[2] = {id = 2034032,lv = 80},[3] = {id = 2034033,lv = 80},[4] = {id = 2034054,lv = 80},[5] = {id = 2034035,lv = 80},[6] = {id = 2034036,lv = 80},[7] = {id = 2034057,lv = 80},[8] = {id = 2034058,lv = 80}},mon = {id = 208,desc = "ds6-4-loc2-jlr",skillLv = 5,exert = 6,suffer = 6}},
			shl = {cha = "ds6",id = 5060421,cardId = 1102020,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034061,lv = 80},[2] = {id = 2034042,lv = 80},[3] = {id = 2034043,lv = 80},[4] = {id = 2034064,lv = 80},[5] = {id = 2034045,lv = 80},[6] = {id = 2034046,lv = 80},[7] = {id = 2034067,lv = 80},[8] = {id = 2034068,lv = 80}},mon = {id = 231,desc = "ds6-4-loc2-shl",skillLv = 5,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "ds6",id = 5060430,cardId = 1101003,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034051,lv = 80},[2] = {id = 2034032,lv = 80},[3] = {id = 2034033,lv = 80},[4] = {id = 2034054,lv = 80},[5] = {id = 2034035,lv = 80},[6] = {id = 2034036,lv = 80},[7] = {id = 2034057,lv = 80},[8] = {id = 2034058,lv = 80}},mon = {id = 209,desc = "ds6-4-loc3-jlr",skillLv = 5,exert = 6,suffer = 6}},
			shl = {cha = "ds6",id = 5060431,cardId = 1102005,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034061,lv = 80},[2] = {id = 2034042,lv = 80},[3] = {id = 2034043,lv = 80},[4] = {id = 2034064,lv = 80},[5] = {id = 2034045,lv = 80},[6] = {id = 2034046,lv = 80},[7] = {id = 2034067,lv = 80},[8] = {id = 2034068,lv = 80}},mon = {id = 232,desc = "ds6-4-loc3-shl",skillLv = 5,exert = 9,suffer = 9}}
		}
	},
	[50605] = {
		[1] = {
			jlr = {cha = "ds6",id = 5060510,cardId = 1101007,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034051,lv = 80},[2] = {id = 2034032,lv = 80},[3] = {id = 2034033,lv = 80},[4] = {id = 2034054,lv = 80},[5] = {id = 2034035,lv = 80},[6] = {id = 2034036,lv = 80},[7] = {id = 2034057,lv = 80},[8] = {id = 2034058,lv = 80}},mon = {id = 212,desc = "ds6-5-loc1-jlr",skillLv = 5,exert = 6,suffer = 6}},
			shl = {cha = "ds6",id = 5060511,cardId = 1102002,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034061,lv = 80},[2] = {id = 2034042,lv = 80},[3] = {id = 2034043,lv = 80},[4] = {id = 2034064,lv = 80},[5] = {id = 2034045,lv = 80},[6] = {id = 2034046,lv = 80},[7] = {id = 2034067,lv = 80},[8] = {id = 2034068,lv = 80}},mon = {id = 236,desc = "ds6-5-loc1-shl",skillLv = 5,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "ds6",id = 5060520,cardId = 1101014,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034051,lv = 80},[2] = {id = 2034032,lv = 80},[3] = {id = 2034033,lv = 80},[4] = {id = 2034054,lv = 80},[5] = {id = 2034035,lv = 80},[6] = {id = 2034036,lv = 80},[7] = {id = 2034057,lv = 80},[8] = {id = 2034058,lv = 80}},mon = {id = 208,desc = "ds6-5-loc2-jlr",skillLv = 5,exert = 6,suffer = 6}},
			shl = {cha = "ds6",id = 5060521,cardId = 1102020,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034061,lv = 80},[2] = {id = 2034042,lv = 80},[3] = {id = 2034043,lv = 80},[4] = {id = 2034064,lv = 80},[5] = {id = 2034045,lv = 80},[6] = {id = 2034046,lv = 80},[7] = {id = 2034067,lv = 80},[8] = {id = 2034068,lv = 80}},mon = {id = 231,desc = "ds6-5-loc2-shl",skillLv = 5,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "ds6",id = 5060530,cardId = 1101003,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034051,lv = 80},[2] = {id = 2034032,lv = 80},[3] = {id = 2034033,lv = 80},[4] = {id = 2034054,lv = 80},[5] = {id = 2034035,lv = 80},[6] = {id = 2034036,lv = 80},[7] = {id = 2034057,lv = 80},[8] = {id = 2034058,lv = 80}},mon = {id = 209,desc = "ds6-5-loc3-jlr",skillLv = 5,exert = 6,suffer = 6}},
			shl = {cha = "ds6",id = 5060531,cardId = 1102005,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034061,lv = 80},[2] = {id = 2034042,lv = 80},[3] = {id = 2034043,lv = 80},[4] = {id = 2034064,lv = 80},[5] = {id = 2034045,lv = 80},[6] = {id = 2034046,lv = 80},[7] = {id = 2034067,lv = 80},[8] = {id = 2034068,lv = 80}},mon = {id = 232,desc = "ds6-5-loc3-shl",skillLv = 5,exert = 9,suffer = 9}}
		}
	},
	[50701] = {
		[1] = {
			jlr = {cha = "ds7",id = 5070110,cardId = 1101007,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034051,lv = 80},[2] = {id = 2034032,lv = 80},[3] = {id = 2034033,lv = 80},[4] = {id = 2034054,lv = 80},[5] = {id = 2034035,lv = 80},[6] = {id = 2034036,lv = 80},[7] = {id = 2034057,lv = 80},[8] = {id = 2034058,lv = 80}},mon = {id = 212,desc = "ds7-1-loc1-jlr",skillLv = 5,exert = 6,suffer = 6}},
			shl = {cha = "ds7",id = 5070111,cardId = 1102002,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034061,lv = 80},[2] = {id = 2034042,lv = 80},[3] = {id = 2034043,lv = 80},[4] = {id = 2034064,lv = 80},[5] = {id = 2034045,lv = 80},[6] = {id = 2034046,lv = 80},[7] = {id = 2034067,lv = 80},[8] = {id = 2034068,lv = 80}},mon = {id = 236,desc = "ds7-1-loc1-shl",skillLv = 5,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "ds7",id = 5070120,cardId = 1101014,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034051,lv = 80},[2] = {id = 2034032,lv = 80},[3] = {id = 2034033,lv = 80},[4] = {id = 2034054,lv = 80},[5] = {id = 2034035,lv = 80},[6] = {id = 2034036,lv = 80},[7] = {id = 2034057,lv = 80},[8] = {id = 2034058,lv = 80}},mon = {id = 208,desc = "ds7-1-loc2-jlr",skillLv = 5,exert = 6,suffer = 6}},
			shl = {cha = "ds7",id = 5070121,cardId = 1102020,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034061,lv = 80},[2] = {id = 2034042,lv = 80},[3] = {id = 2034043,lv = 80},[4] = {id = 2034064,lv = 80},[5] = {id = 2034045,lv = 80},[6] = {id = 2034046,lv = 80},[7] = {id = 2034067,lv = 80},[8] = {id = 2034068,lv = 80}},mon = {id = 231,desc = "ds7-1-loc2-shl",skillLv = 5,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "ds7",id = 5070130,cardId = 1101003,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034051,lv = 80},[2] = {id = 2034032,lv = 80},[3] = {id = 2034033,lv = 80},[4] = {id = 2034054,lv = 80},[5] = {id = 2034035,lv = 80},[6] = {id = 2034036,lv = 80},[7] = {id = 2034057,lv = 80},[8] = {id = 2034058,lv = 80}},mon = {id = 209,desc = "ds7-1-loc3-jlr",skillLv = 5,exert = 6,suffer = 6}},
			shl = {cha = "ds7",id = 5070131,cardId = 1102005,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034061,lv = 80},[2] = {id = 2034042,lv = 80},[3] = {id = 2034043,lv = 80},[4] = {id = 2034064,lv = 80},[5] = {id = 2034045,lv = 80},[6] = {id = 2034046,lv = 80},[7] = {id = 2034067,lv = 80},[8] = {id = 2034068,lv = 80}},mon = {id = 232,desc = "ds7-1-loc3-shl",skillLv = 5,exert = 9,suffer = 9}}
		}
	},
	[50702] = {
		[1] = {
			jlr = {cha = "ds7",id = 5070210,cardId = 1101007,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034051,lv = 80},[2] = {id = 2034032,lv = 80},[3] = {id = 2034033,lv = 80},[4] = {id = 2034054,lv = 80},[5] = {id = 2034035,lv = 80},[6] = {id = 2034036,lv = 80},[7] = {id = 2034057,lv = 80},[8] = {id = 2034058,lv = 80}},mon = {id = 212,desc = "ds7-2-loc1-jlr",skillLv = 5,exert = 6,suffer = 6}},
			shl = {cha = "ds7",id = 5070211,cardId = 1102002,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034061,lv = 80},[2] = {id = 2034042,lv = 80},[3] = {id = 2034043,lv = 80},[4] = {id = 2034064,lv = 80},[5] = {id = 2034045,lv = 80},[6] = {id = 2034046,lv = 80},[7] = {id = 2034067,lv = 80},[8] = {id = 2034068,lv = 80}},mon = {id = 236,desc = "ds7-2-loc1-shl",skillLv = 5,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "ds7",id = 5070220,cardId = 1101014,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034051,lv = 80},[2] = {id = 2034032,lv = 80},[3] = {id = 2034033,lv = 80},[4] = {id = 2034054,lv = 80},[5] = {id = 2034035,lv = 80},[6] = {id = 2034036,lv = 80},[7] = {id = 2034057,lv = 80},[8] = {id = 2034058,lv = 80}},mon = {id = 208,desc = "ds7-2-loc2-jlr",skillLv = 5,exert = 6,suffer = 6}},
			shl = {cha = "ds7",id = 5070221,cardId = 1102020,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034061,lv = 80},[2] = {id = 2034042,lv = 80},[3] = {id = 2034043,lv = 80},[4] = {id = 2034064,lv = 80},[5] = {id = 2034045,lv = 80},[6] = {id = 2034046,lv = 80},[7] = {id = 2034067,lv = 80},[8] = {id = 2034068,lv = 80}},mon = {id = 231,desc = "ds7-2-loc2-shl",skillLv = 5,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "ds7",id = 5070230,cardId = 1101003,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034051,lv = 80},[2] = {id = 2034032,lv = 80},[3] = {id = 2034033,lv = 80},[4] = {id = 2034054,lv = 80},[5] = {id = 2034035,lv = 80},[6] = {id = 2034036,lv = 80},[7] = {id = 2034057,lv = 80},[8] = {id = 2034058,lv = 80}},mon = {id = 209,desc = "ds7-2-loc3-jlr",skillLv = 5,exert = 6,suffer = 6}},
			shl = {cha = "ds7",id = 5070231,cardId = 1102005,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034061,lv = 80},[2] = {id = 2034042,lv = 80},[3] = {id = 2034043,lv = 80},[4] = {id = 2034064,lv = 80},[5] = {id = 2034045,lv = 80},[6] = {id = 2034046,lv = 80},[7] = {id = 2034067,lv = 80},[8] = {id = 2034068,lv = 80}},mon = {id = 232,desc = "ds7-2-loc3-shl",skillLv = 5,exert = 9,suffer = 9}}
		}
	},
	[50703] = {
		[1] = {
			jlr = {cha = "ds7",id = 5070310,cardId = 1101007,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034051,lv = 80},[2] = {id = 2034032,lv = 80},[3] = {id = 2034033,lv = 80},[4] = {id = 2034054,lv = 80},[5] = {id = 2034035,lv = 80},[6] = {id = 2034036,lv = 80},[7] = {id = 2034057,lv = 80},[8] = {id = 2034058,lv = 80}},mon = {id = 212,desc = "ds7-3-loc1-jlr",skillLv = 5,exert = 6,suffer = 6}},
			shl = {cha = "ds7",id = 5070311,cardId = 1102002,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034061,lv = 80},[2] = {id = 2034042,lv = 80},[3] = {id = 2034043,lv = 80},[4] = {id = 2034064,lv = 80},[5] = {id = 2034045,lv = 80},[6] = {id = 2034046,lv = 80},[7] = {id = 2034067,lv = 80},[8] = {id = 2034068,lv = 80}},mon = {id = 236,desc = "ds7-3-loc1-shl",skillLv = 5,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "ds7",id = 5070320,cardId = 1101014,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034051,lv = 80},[2] = {id = 2034032,lv = 80},[3] = {id = 2034033,lv = 80},[4] = {id = 2034054,lv = 80},[5] = {id = 2034035,lv = 80},[6] = {id = 2034036,lv = 80},[7] = {id = 2034057,lv = 80},[8] = {id = 2034058,lv = 80}},mon = {id = 208,desc = "ds7-3-loc2-jlr",skillLv = 5,exert = 6,suffer = 6}},
			shl = {cha = "ds7",id = 5070321,cardId = 1102020,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034061,lv = 80},[2] = {id = 2034042,lv = 80},[3] = {id = 2034043,lv = 80},[4] = {id = 2034064,lv = 80},[5] = {id = 2034045,lv = 80},[6] = {id = 2034046,lv = 80},[7] = {id = 2034067,lv = 80},[8] = {id = 2034068,lv = 80}},mon = {id = 231,desc = "ds7-3-loc2-shl",skillLv = 5,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "ds7",id = 5070330,cardId = 1101003,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034051,lv = 80},[2] = {id = 2034032,lv = 80},[3] = {id = 2034033,lv = 80},[4] = {id = 2034054,lv = 80},[5] = {id = 2034035,lv = 80},[6] = {id = 2034036,lv = 80},[7] = {id = 2034057,lv = 80},[8] = {id = 2034058,lv = 80}},mon = {id = 209,desc = "ds7-3-loc3-jlr",skillLv = 5,exert = 6,suffer = 6}},
			shl = {cha = "ds7",id = 5070331,cardId = 1102005,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034061,lv = 80},[2] = {id = 2034042,lv = 80},[3] = {id = 2034043,lv = 80},[4] = {id = 2034064,lv = 80},[5] = {id = 2034045,lv = 80},[6] = {id = 2034046,lv = 80},[7] = {id = 2034067,lv = 80},[8] = {id = 2034068,lv = 80}},mon = {id = 232,desc = "ds7-3-loc3-shl",skillLv = 5,exert = 9,suffer = 9}}
		}
	},
	[50704] = {
		[1] = {
			jlr = {cha = "ds7",id = 5070410,cardId = 1101007,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034051,lv = 80},[2] = {id = 2034032,lv = 80},[3] = {id = 2034033,lv = 80},[4] = {id = 2034054,lv = 80},[5] = {id = 2034035,lv = 80},[6] = {id = 2034036,lv = 80},[7] = {id = 2034057,lv = 80},[8] = {id = 2034058,lv = 80}},mon = {id = 212,desc = "ds7-4-loc1-jlr",skillLv = 5,exert = 6,suffer = 6}},
			shl = {cha = "ds7",id = 5070411,cardId = 1102002,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034061,lv = 80},[2] = {id = 2034042,lv = 80},[3] = {id = 2034043,lv = 80},[4] = {id = 2034064,lv = 80},[5] = {id = 2034045,lv = 80},[6] = {id = 2034046,lv = 80},[7] = {id = 2034067,lv = 80},[8] = {id = 2034068,lv = 80}},mon = {id = 236,desc = "ds7-4-loc1-shl",skillLv = 5,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "ds7",id = 5070420,cardId = 1101014,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034051,lv = 80},[2] = {id = 2034032,lv = 80},[3] = {id = 2034033,lv = 80},[4] = {id = 2034054,lv = 80},[5] = {id = 2034035,lv = 80},[6] = {id = 2034036,lv = 80},[7] = {id = 2034057,lv = 80},[8] = {id = 2034058,lv = 80}},mon = {id = 208,desc = "ds7-4-loc2-jlr",skillLv = 5,exert = 6,suffer = 6}},
			shl = {cha = "ds7",id = 5070421,cardId = 1102020,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034061,lv = 80},[2] = {id = 2034042,lv = 80},[3] = {id = 2034043,lv = 80},[4] = {id = 2034064,lv = 80},[5] = {id = 2034045,lv = 80},[6] = {id = 2034046,lv = 80},[7] = {id = 2034067,lv = 80},[8] = {id = 2034068,lv = 80}},mon = {id = 231,desc = "ds7-4-loc2-shl",skillLv = 5,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "ds7",id = 5070430,cardId = 1101003,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034051,lv = 80},[2] = {id = 2034032,lv = 80},[3] = {id = 2034033,lv = 80},[4] = {id = 2034054,lv = 80},[5] = {id = 2034035,lv = 80},[6] = {id = 2034036,lv = 80},[7] = {id = 2034057,lv = 80},[8] = {id = 2034058,lv = 80}},mon = {id = 209,desc = "ds7-4-loc3-jlr",skillLv = 5,exert = 6,suffer = 6}},
			shl = {cha = "ds7",id = 5070431,cardId = 1102005,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034061,lv = 80},[2] = {id = 2034042,lv = 80},[3] = {id = 2034043,lv = 80},[4] = {id = 2034064,lv = 80},[5] = {id = 2034045,lv = 80},[6] = {id = 2034046,lv = 80},[7] = {id = 2034067,lv = 80},[8] = {id = 2034068,lv = 80}},mon = {id = 232,desc = "ds7-4-loc3-shl",skillLv = 5,exert = 9,suffer = 9}}
		}
	},
	[50705] = {
		[1] = {
			jlr = {cha = "ds7",id = 5070510,cardId = 1101007,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034051,lv = 80},[2] = {id = 2034032,lv = 80},[3] = {id = 2034033,lv = 80},[4] = {id = 2034054,lv = 80},[5] = {id = 2034035,lv = 80},[6] = {id = 2034036,lv = 80},[7] = {id = 2034057,lv = 80},[8] = {id = 2034058,lv = 80}},mon = {id = 212,desc = "ds7-5-loc1-jlr",skillLv = 5,exert = 6,suffer = 6}},
			shl = {cha = "ds7",id = 5070511,cardId = 1102002,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034061,lv = 80},[2] = {id = 2034042,lv = 80},[3] = {id = 2034043,lv = 80},[4] = {id = 2034064,lv = 80},[5] = {id = 2034045,lv = 80},[6] = {id = 2034046,lv = 80},[7] = {id = 2034067,lv = 80},[8] = {id = 2034068,lv = 80}},mon = {id = 236,desc = "ds7-5-loc1-shl",skillLv = 5,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "ds7",id = 5070520,cardId = 1101014,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034051,lv = 80},[2] = {id = 2034032,lv = 80},[3] = {id = 2034033,lv = 80},[4] = {id = 2034054,lv = 80},[5] = {id = 2034035,lv = 80},[6] = {id = 2034036,lv = 80},[7] = {id = 2034057,lv = 80},[8] = {id = 2034058,lv = 80}},mon = {id = 208,desc = "ds7-5-loc2-jlr",skillLv = 5,exert = 6,suffer = 6}},
			shl = {cha = "ds7",id = 5070521,cardId = 1102020,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034061,lv = 80},[2] = {id = 2034042,lv = 80},[3] = {id = 2034043,lv = 80},[4] = {id = 2034064,lv = 80},[5] = {id = 2034045,lv = 80},[6] = {id = 2034046,lv = 80},[7] = {id = 2034067,lv = 80},[8] = {id = 2034068,lv = 80}},mon = {id = 231,desc = "ds7-5-loc2-shl",skillLv = 5,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "ds7",id = 5070530,cardId = 1101003,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034051,lv = 80},[2] = {id = 2034032,lv = 80},[3] = {id = 2034033,lv = 80},[4] = {id = 2034054,lv = 80},[5] = {id = 2034035,lv = 80},[6] = {id = 2034036,lv = 80},[7] = {id = 2034057,lv = 80},[8] = {id = 2034058,lv = 80}},mon = {id = 209,desc = "ds7-5-loc3-jlr",skillLv = 5,exert = 6,suffer = 6}},
			shl = {cha = "ds7",id = 5070531,cardId = 1102005,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034061,lv = 80},[2] = {id = 2034042,lv = 80},[3] = {id = 2034043,lv = 80},[4] = {id = 2034064,lv = 80},[5] = {id = 2034045,lv = 80},[6] = {id = 2034046,lv = 80},[7] = {id = 2034067,lv = 80},[8] = {id = 2034068,lv = 80}},mon = {id = 232,desc = "ds7-5-loc3-shl",skillLv = 5,exert = 9,suffer = 9}}
		}
	},
	[50801] = {
		[1] = {
			jlr = {cha = "ds8",id = 5080110,cardId = 1101007,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034051,lv = 80},[2] = {id = 2034032,lv = 80},[3] = {id = 2034033,lv = 80},[4] = {id = 2034054,lv = 80},[5] = {id = 2034035,lv = 80},[6] = {id = 2034036,lv = 80},[7] = {id = 2034057,lv = 80},[8] = {id = 2034058,lv = 80}},mon = {id = 212,desc = "ds8-1-loc1-jlr",skillLv = 5,exert = 6,suffer = 6}},
			shl = {cha = "ds8",id = 5080111,cardId = 1102002,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034061,lv = 80},[2] = {id = 2034042,lv = 80},[3] = {id = 2034043,lv = 80},[4] = {id = 2034064,lv = 80},[5] = {id = 2034045,lv = 80},[6] = {id = 2034046,lv = 80},[7] = {id = 2034067,lv = 80},[8] = {id = 2034068,lv = 80}},mon = {id = 236,desc = "ds8-1-loc1-shl",skillLv = 5,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "ds8",id = 5080120,cardId = 1101014,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034051,lv = 80},[2] = {id = 2034032,lv = 80},[3] = {id = 2034033,lv = 80},[4] = {id = 2034054,lv = 80},[5] = {id = 2034035,lv = 80},[6] = {id = 2034036,lv = 80},[7] = {id = 2034057,lv = 80},[8] = {id = 2034058,lv = 80}},mon = {id = 208,desc = "ds8-1-loc2-jlr",skillLv = 5,exert = 6,suffer = 6}},
			shl = {cha = "ds8",id = 5080121,cardId = 1102020,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034061,lv = 80},[2] = {id = 2034042,lv = 80},[3] = {id = 2034043,lv = 80},[4] = {id = 2034064,lv = 80},[5] = {id = 2034045,lv = 80},[6] = {id = 2034046,lv = 80},[7] = {id = 2034067,lv = 80},[8] = {id = 2034068,lv = 80}},mon = {id = 231,desc = "ds8-1-loc2-shl",skillLv = 5,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "ds8",id = 5080130,cardId = 1101003,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034051,lv = 80},[2] = {id = 2034032,lv = 80},[3] = {id = 2034033,lv = 80},[4] = {id = 2034054,lv = 80},[5] = {id = 2034035,lv = 80},[6] = {id = 2034036,lv = 80},[7] = {id = 2034057,lv = 80},[8] = {id = 2034058,lv = 80}},mon = {id = 209,desc = "ds8-1-loc3-jlr",skillLv = 5,exert = 6,suffer = 6}},
			shl = {cha = "ds8",id = 5080131,cardId = 1102005,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034061,lv = 80},[2] = {id = 2034042,lv = 80},[3] = {id = 2034043,lv = 80},[4] = {id = 2034064,lv = 80},[5] = {id = 2034045,lv = 80},[6] = {id = 2034046,lv = 80},[7] = {id = 2034067,lv = 80},[8] = {id = 2034068,lv = 80}},mon = {id = 232,desc = "ds8-1-loc3-shl",skillLv = 5,exert = 9,suffer = 9}}
		}
	},
	[50802] = {
		[1] = {
			jlr = {cha = "ds8",id = 5080210,cardId = 1101007,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034051,lv = 80},[2] = {id = 2034032,lv = 80},[3] = {id = 2034033,lv = 80},[4] = {id = 2034054,lv = 80},[5] = {id = 2034035,lv = 80},[6] = {id = 2034036,lv = 80},[7] = {id = 2034057,lv = 80},[8] = {id = 2034058,lv = 80}},mon = {id = 212,desc = "ds8-2-loc1-jlr",skillLv = 5,exert = 6,suffer = 6}},
			shl = {cha = "ds8",id = 5080211,cardId = 1102002,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034061,lv = 80},[2] = {id = 2034042,lv = 80},[3] = {id = 2034043,lv = 80},[4] = {id = 2034064,lv = 80},[5] = {id = 2034045,lv = 80},[6] = {id = 2034046,lv = 80},[7] = {id = 2034067,lv = 80},[8] = {id = 2034068,lv = 80}},mon = {id = 236,desc = "ds8-2-loc1-shl",skillLv = 5,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "ds8",id = 5080220,cardId = 1101014,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034051,lv = 80},[2] = {id = 2034032,lv = 80},[3] = {id = 2034033,lv = 80},[4] = {id = 2034054,lv = 80},[5] = {id = 2034035,lv = 80},[6] = {id = 2034036,lv = 80},[7] = {id = 2034057,lv = 80},[8] = {id = 2034058,lv = 80}},mon = {id = 208,desc = "ds8-2-loc2-jlr",skillLv = 5,exert = 6,suffer = 6}},
			shl = {cha = "ds8",id = 5080221,cardId = 1102020,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034061,lv = 80},[2] = {id = 2034042,lv = 80},[3] = {id = 2034043,lv = 80},[4] = {id = 2034064,lv = 80},[5] = {id = 2034045,lv = 80},[6] = {id = 2034046,lv = 80},[7] = {id = 2034067,lv = 80},[8] = {id = 2034068,lv = 80}},mon = {id = 231,desc = "ds8-2-loc2-shl",skillLv = 5,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "ds8",id = 5080230,cardId = 1101003,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034051,lv = 80},[2] = {id = 2034032,lv = 80},[3] = {id = 2034033,lv = 80},[4] = {id = 2034054,lv = 80},[5] = {id = 2034035,lv = 80},[6] = {id = 2034036,lv = 80},[7] = {id = 2034057,lv = 80},[8] = {id = 2034058,lv = 80}},mon = {id = 209,desc = "ds8-2-loc3-jlr",skillLv = 5,exert = 6,suffer = 6}},
			shl = {cha = "ds8",id = 5080231,cardId = 1102005,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034061,lv = 80},[2] = {id = 2034042,lv = 80},[3] = {id = 2034043,lv = 80},[4] = {id = 2034064,lv = 80},[5] = {id = 2034045,lv = 80},[6] = {id = 2034046,lv = 80},[7] = {id = 2034067,lv = 80},[8] = {id = 2034068,lv = 80}},mon = {id = 232,desc = "ds8-2-loc3-shl",skillLv = 5,exert = 9,suffer = 9}}
		}
	},
	[50803] = {
		[1] = {
			jlr = {cha = "ds8",id = 5080310,cardId = 1101007,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034051,lv = 80},[2] = {id = 2034032,lv = 80},[3] = {id = 2034033,lv = 80},[4] = {id = 2034054,lv = 80},[5] = {id = 2034035,lv = 80},[6] = {id = 2034036,lv = 80},[7] = {id = 2034057,lv = 80},[8] = {id = 2034058,lv = 80}},mon = {id = 212,desc = "ds8-3-loc1-jlr",skillLv = 5,exert = 6,suffer = 6}},
			shl = {cha = "ds8",id = 5080311,cardId = 1102002,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034061,lv = 80},[2] = {id = 2034042,lv = 80},[3] = {id = 2034043,lv = 80},[4] = {id = 2034064,lv = 80},[5] = {id = 2034045,lv = 80},[6] = {id = 2034046,lv = 80},[7] = {id = 2034067,lv = 80},[8] = {id = 2034068,lv = 80}},mon = {id = 236,desc = "ds8-3-loc1-shl",skillLv = 5,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "ds8",id = 5080320,cardId = 1101014,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034051,lv = 80},[2] = {id = 2034032,lv = 80},[3] = {id = 2034033,lv = 80},[4] = {id = 2034054,lv = 80},[5] = {id = 2034035,lv = 80},[6] = {id = 2034036,lv = 80},[7] = {id = 2034057,lv = 80},[8] = {id = 2034058,lv = 80}},mon = {id = 208,desc = "ds8-3-loc2-jlr",skillLv = 5,exert = 6,suffer = 6}},
			shl = {cha = "ds8",id = 5080321,cardId = 1102020,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034061,lv = 80},[2] = {id = 2034042,lv = 80},[3] = {id = 2034043,lv = 80},[4] = {id = 2034064,lv = 80},[5] = {id = 2034045,lv = 80},[6] = {id = 2034046,lv = 80},[7] = {id = 2034067,lv = 80},[8] = {id = 2034068,lv = 80}},mon = {id = 231,desc = "ds8-3-loc2-shl",skillLv = 5,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "ds8",id = 5080330,cardId = 1101003,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034051,lv = 80},[2] = {id = 2034032,lv = 80},[3] = {id = 2034033,lv = 80},[4] = {id = 2034054,lv = 80},[5] = {id = 2034035,lv = 80},[6] = {id = 2034036,lv = 80},[7] = {id = 2034057,lv = 80},[8] = {id = 2034058,lv = 80}},mon = {id = 209,desc = "ds8-3-loc3-jlr",skillLv = 5,exert = 6,suffer = 6}},
			shl = {cha = "ds8",id = 5080331,cardId = 1102005,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034061,lv = 80},[2] = {id = 2034042,lv = 80},[3] = {id = 2034043,lv = 80},[4] = {id = 2034064,lv = 80},[5] = {id = 2034045,lv = 80},[6] = {id = 2034046,lv = 80},[7] = {id = 2034067,lv = 80},[8] = {id = 2034068,lv = 80}},mon = {id = 232,desc = "ds8-3-loc3-shl",skillLv = 5,exert = 9,suffer = 9}}
		}
	},
	[50804] = {
		[1] = {
			jlr = {cha = "ds8",id = 5080410,cardId = 1101007,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034051,lv = 80},[2] = {id = 2034032,lv = 80},[3] = {id = 2034033,lv = 80},[4] = {id = 2034054,lv = 80},[5] = {id = 2034035,lv = 80},[6] = {id = 2034036,lv = 80},[7] = {id = 2034057,lv = 80},[8] = {id = 2034058,lv = 80}},mon = {id = 212,desc = "ds8-4-loc1-jlr",skillLv = 5,exert = 6,suffer = 6}},
			shl = {cha = "ds8",id = 5080411,cardId = 1102002,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034061,lv = 80},[2] = {id = 2034042,lv = 80},[3] = {id = 2034043,lv = 80},[4] = {id = 2034064,lv = 80},[5] = {id = 2034045,lv = 80},[6] = {id = 2034046,lv = 80},[7] = {id = 2034067,lv = 80},[8] = {id = 2034068,lv = 80}},mon = {id = 236,desc = "ds8-4-loc1-shl",skillLv = 5,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "ds8",id = 5080420,cardId = 1101014,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034051,lv = 80},[2] = {id = 2034032,lv = 80},[3] = {id = 2034033,lv = 80},[4] = {id = 2034054,lv = 80},[5] = {id = 2034035,lv = 80},[6] = {id = 2034036,lv = 80},[7] = {id = 2034057,lv = 80},[8] = {id = 2034058,lv = 80}},mon = {id = 208,desc = "ds8-4-loc2-jlr",skillLv = 5,exert = 6,suffer = 6}},
			shl = {cha = "ds8",id = 5080421,cardId = 1102020,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034061,lv = 80},[2] = {id = 2034042,lv = 80},[3] = {id = 2034043,lv = 80},[4] = {id = 2034064,lv = 80},[5] = {id = 2034045,lv = 80},[6] = {id = 2034046,lv = 80},[7] = {id = 2034067,lv = 80},[8] = {id = 2034068,lv = 80}},mon = {id = 231,desc = "ds8-4-loc2-shl",skillLv = 5,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "ds8",id = 5080430,cardId = 1101003,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034051,lv = 80},[2] = {id = 2034032,lv = 80},[3] = {id = 2034033,lv = 80},[4] = {id = 2034054,lv = 80},[5] = {id = 2034035,lv = 80},[6] = {id = 2034036,lv = 80},[7] = {id = 2034057,lv = 80},[8] = {id = 2034058,lv = 80}},mon = {id = 209,desc = "ds8-4-loc3-jlr",skillLv = 5,exert = 6,suffer = 6}},
			shl = {cha = "ds8",id = 5080431,cardId = 1102005,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034061,lv = 80},[2] = {id = 2034042,lv = 80},[3] = {id = 2034043,lv = 80},[4] = {id = 2034064,lv = 80},[5] = {id = 2034045,lv = 80},[6] = {id = 2034046,lv = 80},[7] = {id = 2034067,lv = 80},[8] = {id = 2034068,lv = 80}},mon = {id = 232,desc = "ds8-4-loc3-shl",skillLv = 5,exert = 9,suffer = 9}}
		}
	},
	[50805] = {
		[1] = {
			jlr = {cha = "ds8",id = 5080510,cardId = 1101007,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034051,lv = 80},[2] = {id = 2034032,lv = 80},[3] = {id = 2034033,lv = 80},[4] = {id = 2034054,lv = 80},[5] = {id = 2034035,lv = 80},[6] = {id = 2034036,lv = 80},[7] = {id = 2034057,lv = 80},[8] = {id = 2034058,lv = 80}},mon = {id = 212,desc = "ds8-5-loc1-jlr",skillLv = 5,exert = 6,suffer = 6}},
			shl = {cha = "ds8",id = 5080511,cardId = 1102002,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034061,lv = 80},[2] = {id = 2034042,lv = 80},[3] = {id = 2034043,lv = 80},[4] = {id = 2034064,lv = 80},[5] = {id = 2034045,lv = 80},[6] = {id = 2034046,lv = 80},[7] = {id = 2034067,lv = 80},[8] = {id = 2034068,lv = 80}},mon = {id = 236,desc = "ds8-5-loc1-shl",skillLv = 5,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "ds8",id = 5080520,cardId = 1101014,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034051,lv = 80},[2] = {id = 2034032,lv = 80},[3] = {id = 2034033,lv = 80},[4] = {id = 2034054,lv = 80},[5] = {id = 2034035,lv = 80},[6] = {id = 2034036,lv = 80},[7] = {id = 2034057,lv = 80},[8] = {id = 2034058,lv = 80}},mon = {id = 208,desc = "ds8-5-loc2-jlr",skillLv = 5,exert = 6,suffer = 6}},
			shl = {cha = "ds8",id = 5080521,cardId = 1102020,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034061,lv = 80},[2] = {id = 2034042,lv = 80},[3] = {id = 2034043,lv = 80},[4] = {id = 2034064,lv = 80},[5] = {id = 2034045,lv = 80},[6] = {id = 2034046,lv = 80},[7] = {id = 2034067,lv = 80},[8] = {id = 2034068,lv = 80}},mon = {id = 231,desc = "ds8-5-loc2-shl",skillLv = 5,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "ds8",id = 5080530,cardId = 1101003,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034051,lv = 80},[2] = {id = 2034032,lv = 80},[3] = {id = 2034033,lv = 80},[4] = {id = 2034054,lv = 80},[5] = {id = 2034035,lv = 80},[6] = {id = 2034036,lv = 80},[7] = {id = 2034057,lv = 80},[8] = {id = 2034058,lv = 80}},mon = {id = 209,desc = "ds8-5-loc3-jlr",skillLv = 5,exert = 6,suffer = 6}},
			shl = {cha = "ds8",id = 5080531,cardId = 1102005,lv = 80,bklv = 7,star = 3,exWeapon = {unseal = 2,lv = 5},equip = {[1] = {id = 2034061,lv = 80},[2] = {id = 2034042,lv = 80},[3] = {id = 2034043,lv = 80},[4] = {id = 2034064,lv = 80},[5] = {id = 2034045,lv = 80},[6] = {id = 2034046,lv = 80},[7] = {id = 2034067,lv = 80},[8] = {id = 2034068,lv = 80}},mon = {id = 232,desc = "ds8-5-loc3-shl",skillLv = 5,exert = 9,suffer = 9}}
		}
	},
	[50901] = {
		[1] = {
			jlr = {cha = "ds9",id = 5090110,cardId = 1101007,lv = 90,bklv = 9,star = 3,exWeapon = {unseal = 2,lv = 8},equip = {[1] = {id = 2044011,lv = 90},[2] = {id = 2044012,lv = 90},[3] = {id = 2044013,lv = 90},[4] = {id = 2044014,lv = 90},[5] = {id = 2044015,lv = 90},[6] = {id = 2044016,lv = 90},[7] = {id = 2044017,lv = 90},[8] = {id = 2044018,lv = 90}},mon = {id = 212,desc = "ds9-1-loc1-jlr",skillLv = 6,exert = 6,suffer = 6}},
			shl = {cha = "ds9",id = 5090111,cardId = 1102002,lv = 90,bklv = 9,star = 3,exWeapon = {unseal = 2,lv = 8},equip = {[1] = {id = 2044021,lv = 90},[2] = {id = 2044022,lv = 90},[3] = {id = 2044023,lv = 90},[4] = {id = 2044024,lv = 90},[5] = {id = 2044025,lv = 90},[6] = {id = 2044026,lv = 90},[7] = {id = 2044027,lv = 90},[8] = {id = 2044028,lv = 90}},mon = {id = 236,desc = "ds9-1-loc1-shl",skillLv = 6,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "ds9",id = 5090120,cardId = 1101014,lv = 90,bklv = 9,star = 3,exWeapon = {unseal = 2,lv = 8},equip = {[1] = {id = 2044011,lv = 90},[2] = {id = 2044012,lv = 90},[3] = {id = 2044013,lv = 90},[4] = {id = 2044014,lv = 90},[5] = {id = 2044015,lv = 90},[6] = {id = 2044016,lv = 90},[7] = {id = 2044017,lv = 90},[8] = {id = 2044018,lv = 90}},mon = {id = 208,desc = "ds9-1-loc2-jlr",skillLv = 6,exert = 6,suffer = 6}},
			shl = {cha = "ds9",id = 5090121,cardId = 1102020,lv = 90,bklv = 9,star = 3,exWeapon = {unseal = 2,lv = 8},equip = {[1] = {id = 2044021,lv = 90},[2] = {id = 2044022,lv = 90},[3] = {id = 2044023,lv = 90},[4] = {id = 2044024,lv = 90},[5] = {id = 2044025,lv = 90},[6] = {id = 2044026,lv = 90},[7] = {id = 2044027,lv = 90},[8] = {id = 2044028,lv = 90}},mon = {id = 231,desc = "ds9-1-loc2-shl",skillLv = 6,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "ds9",id = 5090130,cardId = 1101003,lv = 90,bklv = 9,star = 3,exWeapon = {unseal = 2,lv = 8},equip = {[1] = {id = 2044011,lv = 90},[2] = {id = 2044012,lv = 90},[3] = {id = 2044013,lv = 90},[4] = {id = 2044014,lv = 90},[5] = {id = 2044015,lv = 90},[6] = {id = 2044016,lv = 90},[7] = {id = 2044017,lv = 90},[8] = {id = 2044018,lv = 90}},mon = {id = 209,desc = "ds9-1-loc3-jlr",skillLv = 6,exert = 6,suffer = 6}},
			shl = {cha = "ds9",id = 5090131,cardId = 1102005,lv = 90,bklv = 9,star = 3,exWeapon = {unseal = 2,lv = 8},equip = {[1] = {id = 2044021,lv = 90},[2] = {id = 2044022,lv = 90},[3] = {id = 2044023,lv = 90},[4] = {id = 2044024,lv = 90},[5] = {id = 2044025,lv = 90},[6] = {id = 2044026,lv = 90},[7] = {id = 2044027,lv = 90},[8] = {id = 2044028,lv = 90}},mon = {id = 232,desc = "ds9-1-loc3-shl",skillLv = 6,exert = 9,suffer = 9}}
		}
	},
	[50902] = {
		[1] = {
			jlr = {cha = "ds9",id = 5090210,cardId = 1101007,lv = 90,bklv = 9,star = 3,exWeapon = {unseal = 2,lv = 8},equip = {[1] = {id = 2044011,lv = 90},[2] = {id = 2044012,lv = 90},[3] = {id = 2044013,lv = 90},[4] = {id = 2044014,lv = 90},[5] = {id = 2044015,lv = 90},[6] = {id = 2044016,lv = 90},[7] = {id = 2044017,lv = 90},[8] = {id = 2044018,lv = 90}},mon = {id = 212,desc = "ds9-2-loc1-jlr",skillLv = 6,exert = 6,suffer = 6}},
			shl = {cha = "ds9",id = 5090211,cardId = 1102002,lv = 90,bklv = 9,star = 3,exWeapon = {unseal = 2,lv = 8},equip = {[1] = {id = 2044021,lv = 90},[2] = {id = 2044022,lv = 90},[3] = {id = 2044023,lv = 90},[4] = {id = 2044024,lv = 90},[5] = {id = 2044025,lv = 90},[6] = {id = 2044026,lv = 90},[7] = {id = 2044027,lv = 90},[8] = {id = 2044028,lv = 90}},mon = {id = 236,desc = "ds9-2-loc1-shl",skillLv = 6,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "ds9",id = 5090220,cardId = 1101014,lv = 90,bklv = 9,star = 3,exWeapon = {unseal = 2,lv = 8},equip = {[1] = {id = 2044011,lv = 90},[2] = {id = 2044012,lv = 90},[3] = {id = 2044013,lv = 90},[4] = {id = 2044014,lv = 90},[5] = {id = 2044015,lv = 90},[6] = {id = 2044016,lv = 90},[7] = {id = 2044017,lv = 90},[8] = {id = 2044018,lv = 90}},mon = {id = 208,desc = "ds9-2-loc2-jlr",skillLv = 6,exert = 6,suffer = 6}},
			shl = {cha = "ds9",id = 5090221,cardId = 1102020,lv = 90,bklv = 9,star = 3,exWeapon = {unseal = 2,lv = 8},equip = {[1] = {id = 2044021,lv = 90},[2] = {id = 2044022,lv = 90},[3] = {id = 2044023,lv = 90},[4] = {id = 2044024,lv = 90},[5] = {id = 2044025,lv = 90},[6] = {id = 2044026,lv = 90},[7] = {id = 2044027,lv = 90},[8] = {id = 2044028,lv = 90}},mon = {id = 231,desc = "ds9-2-loc2-shl",skillLv = 6,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "ds9",id = 5090230,cardId = 1101003,lv = 90,bklv = 9,star = 3,exWeapon = {unseal = 2,lv = 8},equip = {[1] = {id = 2044011,lv = 90},[2] = {id = 2044012,lv = 90},[3] = {id = 2044013,lv = 90},[4] = {id = 2044014,lv = 90},[5] = {id = 2044015,lv = 90},[6] = {id = 2044016,lv = 90},[7] = {id = 2044017,lv = 90},[8] = {id = 2044018,lv = 90}},mon = {id = 209,desc = "ds9-2-loc3-jlr",skillLv = 6,exert = 6,suffer = 6}},
			shl = {cha = "ds9",id = 5090231,cardId = 1102005,lv = 90,bklv = 9,star = 3,exWeapon = {unseal = 2,lv = 8},equip = {[1] = {id = 2044021,lv = 90},[2] = {id = 2044022,lv = 90},[3] = {id = 2044023,lv = 90},[4] = {id = 2044024,lv = 90},[5] = {id = 2044025,lv = 90},[6] = {id = 2044026,lv = 90},[7] = {id = 2044027,lv = 90},[8] = {id = 2044028,lv = 90}},mon = {id = 232,desc = "ds9-2-loc3-shl",skillLv = 6,exert = 9,suffer = 9}}
		}
	},
	[50903] = {
		[1] = {
			jlr = {cha = "ds9",id = 5090310,cardId = 1101007,lv = 90,bklv = 9,star = 3,exWeapon = {unseal = 2,lv = 8},equip = {[1] = {id = 2044011,lv = 90},[2] = {id = 2044012,lv = 90},[3] = {id = 2044013,lv = 90},[4] = {id = 2044014,lv = 90},[5] = {id = 2044015,lv = 90},[6] = {id = 2044016,lv = 90},[7] = {id = 2044017,lv = 90},[8] = {id = 2044018,lv = 90}},mon = {id = 212,desc = "ds9-3-loc1-jlr",skillLv = 6,exert = 6,suffer = 6}},
			shl = {cha = "ds9",id = 5090311,cardId = 1102002,lv = 90,bklv = 9,star = 3,exWeapon = {unseal = 2,lv = 8},equip = {[1] = {id = 2044021,lv = 90},[2] = {id = 2044022,lv = 90},[3] = {id = 2044023,lv = 90},[4] = {id = 2044024,lv = 90},[5] = {id = 2044025,lv = 90},[6] = {id = 2044026,lv = 90},[7] = {id = 2044027,lv = 90},[8] = {id = 2044028,lv = 90}},mon = {id = 236,desc = "ds9-3-loc1-shl",skillLv = 6,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "ds9",id = 5090320,cardId = 1101014,lv = 90,bklv = 9,star = 3,exWeapon = {unseal = 2,lv = 8},equip = {[1] = {id = 2044011,lv = 90},[2] = {id = 2044012,lv = 90},[3] = {id = 2044013,lv = 90},[4] = {id = 2044014,lv = 90},[5] = {id = 2044015,lv = 90},[6] = {id = 2044016,lv = 90},[7] = {id = 2044017,lv = 90},[8] = {id = 2044018,lv = 90}},mon = {id = 208,desc = "ds9-3-loc2-jlr",skillLv = 6,exert = 6,suffer = 6}},
			shl = {cha = "ds9",id = 5090321,cardId = 1102020,lv = 90,bklv = 9,star = 3,exWeapon = {unseal = 2,lv = 8},equip = {[1] = {id = 2044021,lv = 90},[2] = {id = 2044022,lv = 90},[3] = {id = 2044023,lv = 90},[4] = {id = 2044024,lv = 90},[5] = {id = 2044025,lv = 90},[6] = {id = 2044026,lv = 90},[7] = {id = 2044027,lv = 90},[8] = {id = 2044028,lv = 90}},mon = {id = 231,desc = "ds9-3-loc2-shl",skillLv = 6,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "ds9",id = 5090330,cardId = 1101003,lv = 90,bklv = 9,star = 3,exWeapon = {unseal = 2,lv = 8},equip = {[1] = {id = 2044011,lv = 90},[2] = {id = 2044012,lv = 90},[3] = {id = 2044013,lv = 90},[4] = {id = 2044014,lv = 90},[5] = {id = 2044015,lv = 90},[6] = {id = 2044016,lv = 90},[7] = {id = 2044017,lv = 90},[8] = {id = 2044018,lv = 90}},mon = {id = 209,desc = "ds9-3-loc3-jlr",skillLv = 6,exert = 6,suffer = 6}},
			shl = {cha = "ds9",id = 5090331,cardId = 1102005,lv = 90,bklv = 9,star = 3,exWeapon = {unseal = 2,lv = 8},equip = {[1] = {id = 2044021,lv = 90},[2] = {id = 2044022,lv = 90},[3] = {id = 2044023,lv = 90},[4] = {id = 2044024,lv = 90},[5] = {id = 2044025,lv = 90},[6] = {id = 2044026,lv = 90},[7] = {id = 2044027,lv = 90},[8] = {id = 2044028,lv = 90}},mon = {id = 232,desc = "ds9-3-loc3-shl",skillLv = 6,exert = 9,suffer = 9}}
		}
	},
	[50904] = {
		[1] = {
			jlr = {cha = "ds9",id = 5090410,cardId = 1101007,lv = 90,bklv = 9,star = 3,exWeapon = {unseal = 2,lv = 8},equip = {[1] = {id = 2044011,lv = 90},[2] = {id = 2044012,lv = 90},[3] = {id = 2044013,lv = 90},[4] = {id = 2044014,lv = 90},[5] = {id = 2044015,lv = 90},[6] = {id = 2044016,lv = 90},[7] = {id = 2044017,lv = 90},[8] = {id = 2044018,lv = 90}},mon = {id = 212,desc = "ds9-4-loc1-jlr",skillLv = 6,exert = 6,suffer = 6}},
			shl = {cha = "ds9",id = 5090411,cardId = 1102002,lv = 90,bklv = 9,star = 3,exWeapon = {unseal = 2,lv = 8},equip = {[1] = {id = 2044021,lv = 90},[2] = {id = 2044022,lv = 90},[3] = {id = 2044023,lv = 90},[4] = {id = 2044024,lv = 90},[5] = {id = 2044025,lv = 90},[6] = {id = 2044026,lv = 90},[7] = {id = 2044027,lv = 90},[8] = {id = 2044028,lv = 90}},mon = {id = 236,desc = "ds9-4-loc1-shl",skillLv = 6,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "ds9",id = 5090420,cardId = 1101014,lv = 90,bklv = 9,star = 3,exWeapon = {unseal = 2,lv = 8},equip = {[1] = {id = 2044011,lv = 90},[2] = {id = 2044012,lv = 90},[3] = {id = 2044013,lv = 90},[4] = {id = 2044014,lv = 90},[5] = {id = 2044015,lv = 90},[6] = {id = 2044016,lv = 90},[7] = {id = 2044017,lv = 90},[8] = {id = 2044018,lv = 90}},mon = {id = 208,desc = "ds9-4-loc2-jlr",skillLv = 6,exert = 6,suffer = 6}},
			shl = {cha = "ds9",id = 5090421,cardId = 1102020,lv = 90,bklv = 9,star = 3,exWeapon = {unseal = 2,lv = 8},equip = {[1] = {id = 2044021,lv = 90},[2] = {id = 2044022,lv = 90},[3] = {id = 2044023,lv = 90},[4] = {id = 2044024,lv = 90},[5] = {id = 2044025,lv = 90},[6] = {id = 2044026,lv = 90},[7] = {id = 2044027,lv = 90},[8] = {id = 2044028,lv = 90}},mon = {id = 231,desc = "ds9-4-loc2-shl",skillLv = 6,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "ds9",id = 5090430,cardId = 1101003,lv = 90,bklv = 9,star = 3,exWeapon = {unseal = 2,lv = 8},equip = {[1] = {id = 2044011,lv = 90},[2] = {id = 2044012,lv = 90},[3] = {id = 2044013,lv = 90},[4] = {id = 2044014,lv = 90},[5] = {id = 2044015,lv = 90},[6] = {id = 2044016,lv = 90},[7] = {id = 2044017,lv = 90},[8] = {id = 2044018,lv = 90}},mon = {id = 209,desc = "ds9-4-loc3-jlr",skillLv = 6,exert = 6,suffer = 6}},
			shl = {cha = "ds9",id = 5090431,cardId = 1102005,lv = 90,bklv = 9,star = 3,exWeapon = {unseal = 2,lv = 8},equip = {[1] = {id = 2044021,lv = 90},[2] = {id = 2044022,lv = 90},[3] = {id = 2044023,lv = 90},[4] = {id = 2044024,lv = 90},[5] = {id = 2044025,lv = 90},[6] = {id = 2044026,lv = 90},[7] = {id = 2044027,lv = 90},[8] = {id = 2044028,lv = 90}},mon = {id = 232,desc = "ds9-4-loc3-shl",skillLv = 6,exert = 9,suffer = 9}}
		}
	},
	[50905] = {
		[1] = {
			jlr = {cha = "ds9",id = 5090510,cardId = 1101007,lv = 90,bklv = 9,star = 3,exWeapon = {unseal = 2,lv = 8},equip = {[1] = {id = 2044011,lv = 90},[2] = {id = 2044012,lv = 90},[3] = {id = 2044013,lv = 90},[4] = {id = 2044014,lv = 90},[5] = {id = 2044015,lv = 90},[6] = {id = 2044016,lv = 90},[7] = {id = 2044017,lv = 90},[8] = {id = 2044018,lv = 90}},mon = {id = 212,desc = "ds9-5-loc1-jlr",skillLv = 6,exert = 6,suffer = 6}},
			shl = {cha = "ds9",id = 5090511,cardId = 1102002,lv = 90,bklv = 9,star = 3,exWeapon = {unseal = 2,lv = 8},equip = {[1] = {id = 2044021,lv = 90},[2] = {id = 2044022,lv = 90},[3] = {id = 2044023,lv = 90},[4] = {id = 2044024,lv = 90},[5] = {id = 2044025,lv = 90},[6] = {id = 2044026,lv = 90},[7] = {id = 2044027,lv = 90},[8] = {id = 2044028,lv = 90}},mon = {id = 236,desc = "ds9-5-loc1-shl",skillLv = 6,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "ds9",id = 5090520,cardId = 1101014,lv = 90,bklv = 9,star = 3,exWeapon = {unseal = 2,lv = 8},equip = {[1] = {id = 2044011,lv = 90},[2] = {id = 2044012,lv = 90},[3] = {id = 2044013,lv = 90},[4] = {id = 2044014,lv = 90},[5] = {id = 2044015,lv = 90},[6] = {id = 2044016,lv = 90},[7] = {id = 2044017,lv = 90},[8] = {id = 2044018,lv = 90}},mon = {id = 208,desc = "ds9-5-loc2-jlr",skillLv = 6,exert = 6,suffer = 6}},
			shl = {cha = "ds9",id = 5090521,cardId = 1102020,lv = 90,bklv = 9,star = 3,exWeapon = {unseal = 2,lv = 8},equip = {[1] = {id = 2044021,lv = 90},[2] = {id = 2044022,lv = 90},[3] = {id = 2044023,lv = 90},[4] = {id = 2044024,lv = 90},[5] = {id = 2044025,lv = 90},[6] = {id = 2044026,lv = 90},[7] = {id = 2044027,lv = 90},[8] = {id = 2044028,lv = 90}},mon = {id = 231,desc = "ds9-5-loc2-shl",skillLv = 6,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "ds9",id = 5090530,cardId = 1101003,lv = 90,bklv = 9,star = 3,exWeapon = {unseal = 2,lv = 8},equip = {[1] = {id = 2044011,lv = 90},[2] = {id = 2044012,lv = 90},[3] = {id = 2044013,lv = 90},[4] = {id = 2044014,lv = 90},[5] = {id = 2044015,lv = 90},[6] = {id = 2044016,lv = 90},[7] = {id = 2044017,lv = 90},[8] = {id = 2044018,lv = 90}},mon = {id = 209,desc = "ds9-5-loc3-jlr",skillLv = 6,exert = 6,suffer = 6}},
			shl = {cha = "ds9",id = 5090531,cardId = 1102005,lv = 90,bklv = 9,star = 3,exWeapon = {unseal = 2,lv = 8},equip = {[1] = {id = 2044021,lv = 90},[2] = {id = 2044022,lv = 90},[3] = {id = 2044023,lv = 90},[4] = {id = 2044024,lv = 90},[5] = {id = 2044025,lv = 90},[6] = {id = 2044026,lv = 90},[7] = {id = 2044027,lv = 90},[8] = {id = 2044028,lv = 90}},mon = {id = 232,desc = "ds9-5-loc3-shl",skillLv = 6,exert = 9,suffer = 9}}
		}
	},
	[51001] = {
		[1] = {
			jlr = {cha = "tg1",id = 5100110,cardId = 1101007,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 10},equip = {[1] = {id = 2044051,lv = 100},[2] = {id = 2044052,lv = 100},[3] = {id = 2044053,lv = 100},[4] = {id = 2044074,lv = 100},[5] = {id = 2044055,lv = 100},[6] = {id = 2044056,lv = 100},[7] = {id = 2044077,lv = 100},[8] = {id = 2044078,lv = 100}},mon = {id = 212,desc = "tg1-1-loc1-jlr",skillLv = 7,exert = 6,suffer = 6}},
			shl = {cha = "tg1",id = 5100111,cardId = 1102002,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 10},equip = {[1] = {id = 2044061,lv = 100},[2] = {id = 2044062,lv = 100},[3] = {id = 2044063,lv = 100},[4] = {id = 2044084,lv = 100},[5] = {id = 2044065,lv = 100},[6] = {id = 2044066,lv = 100},[7] = {id = 2044087,lv = 100},[8] = {id = 2044088,lv = 100}},mon = {id = 236,desc = "tg1-1-loc1-shl",skillLv = 7,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "tg1",id = 5100120,cardId = 1101014,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 10},equip = {[1] = {id = 2044051,lv = 100},[2] = {id = 2044052,lv = 100},[3] = {id = 2044053,lv = 100},[4] = {id = 2044074,lv = 100},[5] = {id = 2044055,lv = 100},[6] = {id = 2044056,lv = 100},[7] = {id = 2044077,lv = 100},[8] = {id = 2044078,lv = 100}},mon = {id = 208,desc = "tg1-1-loc2-jlr",skillLv = 7,exert = 6,suffer = 6}},
			shl = {cha = "tg1",id = 5100121,cardId = 1102020,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 10},equip = {[1] = {id = 2044061,lv = 100},[2] = {id = 2044062,lv = 100},[3] = {id = 2044063,lv = 100},[4] = {id = 2044084,lv = 100},[5] = {id = 2044065,lv = 100},[6] = {id = 2044066,lv = 100},[7] = {id = 2044087,lv = 100},[8] = {id = 2044088,lv = 100}},mon = {id = 231,desc = "tg1-1-loc2-shl",skillLv = 7,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "tg1",id = 5100130,cardId = 1101003,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 10},equip = {[1] = {id = 2044051,lv = 100},[2] = {id = 2044052,lv = 100},[3] = {id = 2044053,lv = 100},[4] = {id = 2044074,lv = 100},[5] = {id = 2044055,lv = 100},[6] = {id = 2044056,lv = 100},[7] = {id = 2044077,lv = 100},[8] = {id = 2044078,lv = 100}},mon = {id = 209,desc = "tg1-1-loc3-jlr",skillLv = 7,exert = 6,suffer = 6}},
			shl = {cha = "tg1",id = 5100131,cardId = 1102005,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 10},equip = {[1] = {id = 2044061,lv = 100},[2] = {id = 2044062,lv = 100},[3] = {id = 2044063,lv = 100},[4] = {id = 2044084,lv = 100},[5] = {id = 2044065,lv = 100},[6] = {id = 2044066,lv = 100},[7] = {id = 2044087,lv = 100},[8] = {id = 2044088,lv = 100}},mon = {id = 232,desc = "tg1-1-loc3-shl",skillLv = 7,exert = 9,suffer = 9}}
		}
	},
	[51002] = {
		[1] = {
			jlr = {cha = "tg1",id = 5100210,cardId = 1101007,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 10},equip = {[1] = {id = 2044051,lv = 100},[2] = {id = 2044052,lv = 100},[3] = {id = 2044053,lv = 100},[4] = {id = 2044074,lv = 100},[5] = {id = 2044055,lv = 100},[6] = {id = 2044056,lv = 100},[7] = {id = 2044077,lv = 100},[8] = {id = 2044078,lv = 100}},mon = {id = 212,desc = "tg1-2-loc1-jlr",skillLv = 7,exert = 6,suffer = 6}},
			shl = {cha = "tg1",id = 5100211,cardId = 1102002,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 10},equip = {[1] = {id = 2044061,lv = 100},[2] = {id = 2044062,lv = 100},[3] = {id = 2044063,lv = 100},[4] = {id = 2044084,lv = 100},[5] = {id = 2044065,lv = 100},[6] = {id = 2044066,lv = 100},[7] = {id = 2044087,lv = 100},[8] = {id = 2044088,lv = 100}},mon = {id = 236,desc = "tg1-2-loc1-shl",skillLv = 7,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "tg1",id = 5100220,cardId = 1101014,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 10},equip = {[1] = {id = 2044051,lv = 100},[2] = {id = 2044052,lv = 100},[3] = {id = 2044053,lv = 100},[4] = {id = 2044074,lv = 100},[5] = {id = 2044055,lv = 100},[6] = {id = 2044056,lv = 100},[7] = {id = 2044077,lv = 100},[8] = {id = 2044078,lv = 100}},mon = {id = 208,desc = "tg1-2-loc2-jlr",skillLv = 7,exert = 6,suffer = 6}},
			shl = {cha = "tg1",id = 5100221,cardId = 1102020,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 10},equip = {[1] = {id = 2044061,lv = 100},[2] = {id = 2044062,lv = 100},[3] = {id = 2044063,lv = 100},[4] = {id = 2044084,lv = 100},[5] = {id = 2044065,lv = 100},[6] = {id = 2044066,lv = 100},[7] = {id = 2044087,lv = 100},[8] = {id = 2044088,lv = 100}},mon = {id = 231,desc = "tg1-2-loc2-shl",skillLv = 7,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "tg1",id = 5100230,cardId = 1101003,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 10},equip = {[1] = {id = 2044051,lv = 100},[2] = {id = 2044052,lv = 100},[3] = {id = 2044053,lv = 100},[4] = {id = 2044074,lv = 100},[5] = {id = 2044055,lv = 100},[6] = {id = 2044056,lv = 100},[7] = {id = 2044077,lv = 100},[8] = {id = 2044078,lv = 100}},mon = {id = 209,desc = "tg1-2-loc3-jlr",skillLv = 7,exert = 6,suffer = 6}},
			shl = {cha = "tg1",id = 5100231,cardId = 1102005,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 10},equip = {[1] = {id = 2044061,lv = 100},[2] = {id = 2044062,lv = 100},[3] = {id = 2044063,lv = 100},[4] = {id = 2044084,lv = 100},[5] = {id = 2044065,lv = 100},[6] = {id = 2044066,lv = 100},[7] = {id = 2044087,lv = 100},[8] = {id = 2044088,lv = 100}},mon = {id = 232,desc = "tg1-2-loc3-shl",skillLv = 7,exert = 9,suffer = 9}}
		}
	},
	[51003] = {
		[1] = {
			jlr = {cha = "tg1",id = 5100310,cardId = 1101007,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 10},equip = {[1] = {id = 2044051,lv = 100},[2] = {id = 2044052,lv = 100},[3] = {id = 2044053,lv = 100},[4] = {id = 2044074,lv = 100},[5] = {id = 2044055,lv = 100},[6] = {id = 2044056,lv = 100},[7] = {id = 2044077,lv = 100},[8] = {id = 2044078,lv = 100}},mon = {id = 212,desc = "tg1-3-loc1-jlr",skillLv = 7,exert = 6,suffer = 6}},
			shl = {cha = "tg1",id = 5100311,cardId = 1102002,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 10},equip = {[1] = {id = 2044061,lv = 100},[2] = {id = 2044062,lv = 100},[3] = {id = 2044063,lv = 100},[4] = {id = 2044084,lv = 100},[5] = {id = 2044065,lv = 100},[6] = {id = 2044066,lv = 100},[7] = {id = 2044087,lv = 100},[8] = {id = 2044088,lv = 100}},mon = {id = 236,desc = "tg1-3-loc1-shl",skillLv = 7,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "tg1",id = 5100320,cardId = 1101014,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 10},equip = {[1] = {id = 2044051,lv = 100},[2] = {id = 2044052,lv = 100},[3] = {id = 2044053,lv = 100},[4] = {id = 2044074,lv = 100},[5] = {id = 2044055,lv = 100},[6] = {id = 2044056,lv = 100},[7] = {id = 2044077,lv = 100},[8] = {id = 2044078,lv = 100}},mon = {id = 208,desc = "tg1-3-loc2-jlr",skillLv = 7,exert = 6,suffer = 6}},
			shl = {cha = "tg1",id = 5100321,cardId = 1102020,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 10},equip = {[1] = {id = 2044061,lv = 100},[2] = {id = 2044062,lv = 100},[3] = {id = 2044063,lv = 100},[4] = {id = 2044084,lv = 100},[5] = {id = 2044065,lv = 100},[6] = {id = 2044066,lv = 100},[7] = {id = 2044087,lv = 100},[8] = {id = 2044088,lv = 100}},mon = {id = 231,desc = "tg1-3-loc2-shl",skillLv = 7,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "tg1",id = 5100330,cardId = 1101003,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 10},equip = {[1] = {id = 2044051,lv = 100},[2] = {id = 2044052,lv = 100},[3] = {id = 2044053,lv = 100},[4] = {id = 2044074,lv = 100},[5] = {id = 2044055,lv = 100},[6] = {id = 2044056,lv = 100},[7] = {id = 2044077,lv = 100},[8] = {id = 2044078,lv = 100}},mon = {id = 209,desc = "tg1-3-loc3-jlr",skillLv = 7,exert = 6,suffer = 6}},
			shl = {cha = "tg1",id = 5100331,cardId = 1102005,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 10},equip = {[1] = {id = 2044061,lv = 100},[2] = {id = 2044062,lv = 100},[3] = {id = 2044063,lv = 100},[4] = {id = 2044084,lv = 100},[5] = {id = 2044065,lv = 100},[6] = {id = 2044066,lv = 100},[7] = {id = 2044087,lv = 100},[8] = {id = 2044088,lv = 100}},mon = {id = 232,desc = "tg1-3-loc3-shl",skillLv = 7,exert = 9,suffer = 9}}
		}
	},
	[51004] = {
		[1] = {
			jlr = {cha = "tg1",id = 5100410,cardId = 1101007,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 10},equip = {[1] = {id = 2044051,lv = 100},[2] = {id = 2044052,lv = 100},[3] = {id = 2044053,lv = 100},[4] = {id = 2044074,lv = 100},[5] = {id = 2044055,lv = 100},[6] = {id = 2044056,lv = 100},[7] = {id = 2044077,lv = 100},[8] = {id = 2044078,lv = 100}},mon = {id = 212,desc = "tg1-4-loc1-jlr",skillLv = 7,exert = 6,suffer = 6}},
			shl = {cha = "tg1",id = 5100411,cardId = 1102002,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 10},equip = {[1] = {id = 2044061,lv = 100},[2] = {id = 2044062,lv = 100},[3] = {id = 2044063,lv = 100},[4] = {id = 2044084,lv = 100},[5] = {id = 2044065,lv = 100},[6] = {id = 2044066,lv = 100},[7] = {id = 2044087,lv = 100},[8] = {id = 2044088,lv = 100}},mon = {id = 236,desc = "tg1-4-loc1-shl",skillLv = 7,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "tg1",id = 5100420,cardId = 1101014,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 10},equip = {[1] = {id = 2044051,lv = 100},[2] = {id = 2044052,lv = 100},[3] = {id = 2044053,lv = 100},[4] = {id = 2044074,lv = 100},[5] = {id = 2044055,lv = 100},[6] = {id = 2044056,lv = 100},[7] = {id = 2044077,lv = 100},[8] = {id = 2044078,lv = 100}},mon = {id = 208,desc = "tg1-4-loc2-jlr",skillLv = 7,exert = 6,suffer = 6}},
			shl = {cha = "tg1",id = 5100421,cardId = 1102020,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 10},equip = {[1] = {id = 2044061,lv = 100},[2] = {id = 2044062,lv = 100},[3] = {id = 2044063,lv = 100},[4] = {id = 2044084,lv = 100},[5] = {id = 2044065,lv = 100},[6] = {id = 2044066,lv = 100},[7] = {id = 2044087,lv = 100},[8] = {id = 2044088,lv = 100}},mon = {id = 231,desc = "tg1-4-loc2-shl",skillLv = 7,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "tg1",id = 5100430,cardId = 1101003,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 10},equip = {[1] = {id = 2044051,lv = 100},[2] = {id = 2044052,lv = 100},[3] = {id = 2044053,lv = 100},[4] = {id = 2044074,lv = 100},[5] = {id = 2044055,lv = 100},[6] = {id = 2044056,lv = 100},[7] = {id = 2044077,lv = 100},[8] = {id = 2044078,lv = 100}},mon = {id = 209,desc = "tg1-4-loc3-jlr",skillLv = 7,exert = 6,suffer = 6}},
			shl = {cha = "tg1",id = 5100431,cardId = 1102005,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 10},equip = {[1] = {id = 2044061,lv = 100},[2] = {id = 2044062,lv = 100},[3] = {id = 2044063,lv = 100},[4] = {id = 2044084,lv = 100},[5] = {id = 2044065,lv = 100},[6] = {id = 2044066,lv = 100},[7] = {id = 2044087,lv = 100},[8] = {id = 2044088,lv = 100}},mon = {id = 232,desc = "tg1-4-loc3-shl",skillLv = 7,exert = 9,suffer = 9}}
		}
	},
	[51005] = {
		[1] = {
			jlr = {cha = "tg1",id = 5100510,cardId = 1101007,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 10},equip = {[1] = {id = 2044051,lv = 100},[2] = {id = 2044052,lv = 100},[3] = {id = 2044053,lv = 100},[4] = {id = 2044074,lv = 100},[5] = {id = 2044055,lv = 100},[6] = {id = 2044056,lv = 100},[7] = {id = 2044077,lv = 100},[8] = {id = 2044078,lv = 100}},mon = {id = 212,desc = "tg1-5-loc1-jlr",skillLv = 7,exert = 6,suffer = 6}},
			shl = {cha = "tg1",id = 5100511,cardId = 1102002,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 10},equip = {[1] = {id = 2044061,lv = 100},[2] = {id = 2044062,lv = 100},[3] = {id = 2044063,lv = 100},[4] = {id = 2044084,lv = 100},[5] = {id = 2044065,lv = 100},[6] = {id = 2044066,lv = 100},[7] = {id = 2044087,lv = 100},[8] = {id = 2044088,lv = 100}},mon = {id = 236,desc = "tg1-5-loc1-shl",skillLv = 7,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "tg1",id = 5100520,cardId = 1101014,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 10},equip = {[1] = {id = 2044051,lv = 100},[2] = {id = 2044052,lv = 100},[3] = {id = 2044053,lv = 100},[4] = {id = 2044074,lv = 100},[5] = {id = 2044055,lv = 100},[6] = {id = 2044056,lv = 100},[7] = {id = 2044077,lv = 100},[8] = {id = 2044078,lv = 100}},mon = {id = 208,desc = "tg1-5-loc2-jlr",skillLv = 7,exert = 6,suffer = 6}},
			shl = {cha = "tg1",id = 5100521,cardId = 1102020,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 10},equip = {[1] = {id = 2044061,lv = 100},[2] = {id = 2044062,lv = 100},[3] = {id = 2044063,lv = 100},[4] = {id = 2044084,lv = 100},[5] = {id = 2044065,lv = 100},[6] = {id = 2044066,lv = 100},[7] = {id = 2044087,lv = 100},[8] = {id = 2044088,lv = 100}},mon = {id = 231,desc = "tg1-5-loc2-shl",skillLv = 7,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "tg1",id = 5100530,cardId = 1101003,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 10},equip = {[1] = {id = 2044051,lv = 100},[2] = {id = 2044052,lv = 100},[3] = {id = 2044053,lv = 100},[4] = {id = 2044074,lv = 100},[5] = {id = 2044055,lv = 100},[6] = {id = 2044056,lv = 100},[7] = {id = 2044077,lv = 100},[8] = {id = 2044078,lv = 100}},mon = {id = 209,desc = "tg1-5-loc3-jlr",skillLv = 7,exert = 6,suffer = 6}},
			shl = {cha = "tg1",id = 5100531,cardId = 1102005,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 10},equip = {[1] = {id = 2044061,lv = 100},[2] = {id = 2044062,lv = 100},[3] = {id = 2044063,lv = 100},[4] = {id = 2044084,lv = 100},[5] = {id = 2044065,lv = 100},[6] = {id = 2044066,lv = 100},[7] = {id = 2044087,lv = 100},[8] = {id = 2044088,lv = 100}},mon = {id = 232,desc = "tg1-5-loc3-shl",skillLv = 7,exert = 9,suffer = 9}}
		}
	},
	[51101] = {
		[1] = {
			jlr = {cha = "tg2",id = 5110110,cardId = 1101007,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 13},equip = {[1] = {id = 2044071,lv = 110},[2] = {id = 2044052,lv = 110},[3] = {id = 2044053,lv = 110},[4] = {id = 2044054,lv = 110},[5] = {id = 2044075,lv = 110},[6] = {id = 2044076,lv = 110},[7] = {id = 2044077,lv = 110},[8] = {id = 2044078,lv = 110}},mon = {id = 212,desc = "tg2-1-loc1-jlr",skillLv = 7,exert = 6,suffer = 6}},
			shl = {cha = "tg2",id = 5110111,cardId = 1102002,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 13},equip = {[1] = {id = 2044081,lv = 110},[2] = {id = 2044062,lv = 110},[3] = {id = 2044063,lv = 110},[4] = {id = 2044064,lv = 110},[5] = {id = 2044085,lv = 110},[6] = {id = 2044086,lv = 110},[7] = {id = 2044087,lv = 110},[8] = {id = 2044088,lv = 110}},mon = {id = 236,desc = "tg2-1-loc1-shl",skillLv = 7,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "tg2",id = 5110120,cardId = 1101014,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 13},equip = {[1] = {id = 2044071,lv = 110},[2] = {id = 2044052,lv = 110},[3] = {id = 2044053,lv = 110},[4] = {id = 2044054,lv = 110},[5] = {id = 2044075,lv = 110},[6] = {id = 2044076,lv = 110},[7] = {id = 2044077,lv = 110},[8] = {id = 2044078,lv = 110}},mon = {id = 208,desc = "tg2-1-loc2-jlr",skillLv = 7,exert = 6,suffer = 6}},
			shl = {cha = "tg2",id = 5110121,cardId = 1102020,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 13},equip = {[1] = {id = 2044081,lv = 110},[2] = {id = 2044062,lv = 110},[3] = {id = 2044063,lv = 110},[4] = {id = 2044064,lv = 110},[5] = {id = 2044085,lv = 110},[6] = {id = 2044086,lv = 110},[7] = {id = 2044087,lv = 110},[8] = {id = 2044088,lv = 110}},mon = {id = 231,desc = "tg2-1-loc2-shl",skillLv = 7,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "tg2",id = 5110130,cardId = 1101003,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 13},equip = {[1] = {id = 2044071,lv = 110},[2] = {id = 2044052,lv = 110},[3] = {id = 2044053,lv = 110},[4] = {id = 2044054,lv = 110},[5] = {id = 2044075,lv = 110},[6] = {id = 2044076,lv = 110},[7] = {id = 2044077,lv = 110},[8] = {id = 2044078,lv = 110}},mon = {id = 209,desc = "tg2-1-loc3-jlr",skillLv = 7,exert = 6,suffer = 6}},
			shl = {cha = "tg2",id = 5110131,cardId = 1102005,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 13},equip = {[1] = {id = 2044081,lv = 110},[2] = {id = 2044062,lv = 110},[3] = {id = 2044063,lv = 110},[4] = {id = 2044064,lv = 110},[5] = {id = 2044085,lv = 110},[6] = {id = 2044086,lv = 110},[7] = {id = 2044087,lv = 110},[8] = {id = 2044088,lv = 110}},mon = {id = 232,desc = "tg2-1-loc3-shl",skillLv = 7,exert = 9,suffer = 9}}
		}
	},
	[51102] = {
		[1] = {
			jlr = {cha = "tg2",id = 5110210,cardId = 1101007,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 13},equip = {[1] = {id = 2044071,lv = 110},[2] = {id = 2044052,lv = 110},[3] = {id = 2044053,lv = 110},[4] = {id = 2044054,lv = 110},[5] = {id = 2044075,lv = 110},[6] = {id = 2044076,lv = 110},[7] = {id = 2044077,lv = 110},[8] = {id = 2044078,lv = 110}},mon = {id = 212,desc = "tg2-2-loc1-jlr",skillLv = 7,exert = 6,suffer = 6}},
			shl = {cha = "tg2",id = 5110211,cardId = 1102002,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 13},equip = {[1] = {id = 2044081,lv = 110},[2] = {id = 2044062,lv = 110},[3] = {id = 2044063,lv = 110},[4] = {id = 2044064,lv = 110},[5] = {id = 2044085,lv = 110},[6] = {id = 2044086,lv = 110},[7] = {id = 2044087,lv = 110},[8] = {id = 2044088,lv = 110}},mon = {id = 236,desc = "tg2-2-loc1-shl",skillLv = 7,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "tg2",id = 5110220,cardId = 1101014,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 13},equip = {[1] = {id = 2044071,lv = 110},[2] = {id = 2044052,lv = 110},[3] = {id = 2044053,lv = 110},[4] = {id = 2044054,lv = 110},[5] = {id = 2044075,lv = 110},[6] = {id = 2044076,lv = 110},[7] = {id = 2044077,lv = 110},[8] = {id = 2044078,lv = 110}},mon = {id = 208,desc = "tg2-2-loc2-jlr",skillLv = 7,exert = 6,suffer = 6}},
			shl = {cha = "tg2",id = 5110221,cardId = 1102020,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 13},equip = {[1] = {id = 2044081,lv = 110},[2] = {id = 2044062,lv = 110},[3] = {id = 2044063,lv = 110},[4] = {id = 2044064,lv = 110},[5] = {id = 2044085,lv = 110},[6] = {id = 2044086,lv = 110},[7] = {id = 2044087,lv = 110},[8] = {id = 2044088,lv = 110}},mon = {id = 231,desc = "tg2-2-loc2-shl",skillLv = 7,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "tg2",id = 5110230,cardId = 1101003,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 13},equip = {[1] = {id = 2044071,lv = 110},[2] = {id = 2044052,lv = 110},[3] = {id = 2044053,lv = 110},[4] = {id = 2044054,lv = 110},[5] = {id = 2044075,lv = 110},[6] = {id = 2044076,lv = 110},[7] = {id = 2044077,lv = 110},[8] = {id = 2044078,lv = 110}},mon = {id = 209,desc = "tg2-2-loc3-jlr",skillLv = 7,exert = 6,suffer = 6}},
			shl = {cha = "tg2",id = 5110231,cardId = 1102005,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 13},equip = {[1] = {id = 2044081,lv = 110},[2] = {id = 2044062,lv = 110},[3] = {id = 2044063,lv = 110},[4] = {id = 2044064,lv = 110},[5] = {id = 2044085,lv = 110},[6] = {id = 2044086,lv = 110},[7] = {id = 2044087,lv = 110},[8] = {id = 2044088,lv = 110}},mon = {id = 232,desc = "tg2-2-loc3-shl",skillLv = 7,exert = 9,suffer = 9}}
		}
	},
	[51103] = {
		[1] = {
			jlr = {cha = "tg2",id = 5110310,cardId = 1101007,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 13},equip = {[1] = {id = 2044071,lv = 110},[2] = {id = 2044052,lv = 110},[3] = {id = 2044053,lv = 110},[4] = {id = 2044054,lv = 110},[5] = {id = 2044075,lv = 110},[6] = {id = 2044076,lv = 110},[7] = {id = 2044077,lv = 110},[8] = {id = 2044078,lv = 110}},mon = {id = 212,desc = "tg2-3-loc1-jlr",skillLv = 7,exert = 6,suffer = 6}},
			shl = {cha = "tg2",id = 5110311,cardId = 1102002,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 13},equip = {[1] = {id = 2044081,lv = 110},[2] = {id = 2044062,lv = 110},[3] = {id = 2044063,lv = 110},[4] = {id = 2044064,lv = 110},[5] = {id = 2044085,lv = 110},[6] = {id = 2044086,lv = 110},[7] = {id = 2044087,lv = 110},[8] = {id = 2044088,lv = 110}},mon = {id = 236,desc = "tg2-3-loc1-shl",skillLv = 7,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "tg2",id = 5110320,cardId = 1101014,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 13},equip = {[1] = {id = 2044071,lv = 110},[2] = {id = 2044052,lv = 110},[3] = {id = 2044053,lv = 110},[4] = {id = 2044054,lv = 110},[5] = {id = 2044075,lv = 110},[6] = {id = 2044076,lv = 110},[7] = {id = 2044077,lv = 110},[8] = {id = 2044078,lv = 110}},mon = {id = 208,desc = "tg2-3-loc2-jlr",skillLv = 7,exert = 6,suffer = 6}},
			shl = {cha = "tg2",id = 5110321,cardId = 1102020,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 13},equip = {[1] = {id = 2044081,lv = 110},[2] = {id = 2044062,lv = 110},[3] = {id = 2044063,lv = 110},[4] = {id = 2044064,lv = 110},[5] = {id = 2044085,lv = 110},[6] = {id = 2044086,lv = 110},[7] = {id = 2044087,lv = 110},[8] = {id = 2044088,lv = 110}},mon = {id = 231,desc = "tg2-3-loc2-shl",skillLv = 7,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "tg2",id = 5110330,cardId = 1101003,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 13},equip = {[1] = {id = 2044071,lv = 110},[2] = {id = 2044052,lv = 110},[3] = {id = 2044053,lv = 110},[4] = {id = 2044054,lv = 110},[5] = {id = 2044075,lv = 110},[6] = {id = 2044076,lv = 110},[7] = {id = 2044077,lv = 110},[8] = {id = 2044078,lv = 110}},mon = {id = 209,desc = "tg2-3-loc3-jlr",skillLv = 7,exert = 6,suffer = 6}},
			shl = {cha = "tg2",id = 5110331,cardId = 1102005,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 13},equip = {[1] = {id = 2044081,lv = 110},[2] = {id = 2044062,lv = 110},[3] = {id = 2044063,lv = 110},[4] = {id = 2044064,lv = 110},[5] = {id = 2044085,lv = 110},[6] = {id = 2044086,lv = 110},[7] = {id = 2044087,lv = 110},[8] = {id = 2044088,lv = 110}},mon = {id = 232,desc = "tg2-3-loc3-shl",skillLv = 7,exert = 9,suffer = 9}}
		}
	},
	[51104] = {
		[1] = {
			jlr = {cha = "tg2",id = 5110410,cardId = 1101007,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 13},equip = {[1] = {id = 2044071,lv = 110},[2] = {id = 2044052,lv = 110},[3] = {id = 2044053,lv = 110},[4] = {id = 2044054,lv = 110},[5] = {id = 2044075,lv = 110},[6] = {id = 2044076,lv = 110},[7] = {id = 2044077,lv = 110},[8] = {id = 2044078,lv = 110}},mon = {id = 212,desc = "tg2-4-loc1-jlr",skillLv = 7,exert = 6,suffer = 6}},
			shl = {cha = "tg2",id = 5110411,cardId = 1102002,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 13},equip = {[1] = {id = 2044081,lv = 110},[2] = {id = 2044062,lv = 110},[3] = {id = 2044063,lv = 110},[4] = {id = 2044064,lv = 110},[5] = {id = 2044085,lv = 110},[6] = {id = 2044086,lv = 110},[7] = {id = 2044087,lv = 110},[8] = {id = 2044088,lv = 110}},mon = {id = 236,desc = "tg2-4-loc1-shl",skillLv = 7,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "tg2",id = 5110420,cardId = 1101014,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 13},equip = {[1] = {id = 2044071,lv = 110},[2] = {id = 2044052,lv = 110},[3] = {id = 2044053,lv = 110},[4] = {id = 2044054,lv = 110},[5] = {id = 2044075,lv = 110},[6] = {id = 2044076,lv = 110},[7] = {id = 2044077,lv = 110},[8] = {id = 2044078,lv = 110}},mon = {id = 208,desc = "tg2-4-loc2-jlr",skillLv = 7,exert = 6,suffer = 6}},
			shl = {cha = "tg2",id = 5110421,cardId = 1102020,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 13},equip = {[1] = {id = 2044081,lv = 110},[2] = {id = 2044062,lv = 110},[3] = {id = 2044063,lv = 110},[4] = {id = 2044064,lv = 110},[5] = {id = 2044085,lv = 110},[6] = {id = 2044086,lv = 110},[7] = {id = 2044087,lv = 110},[8] = {id = 2044088,lv = 110}},mon = {id = 231,desc = "tg2-4-loc2-shl",skillLv = 7,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "tg2",id = 5110430,cardId = 1101003,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 13},equip = {[1] = {id = 2044071,lv = 110},[2] = {id = 2044052,lv = 110},[3] = {id = 2044053,lv = 110},[4] = {id = 2044054,lv = 110},[5] = {id = 2044075,lv = 110},[6] = {id = 2044076,lv = 110},[7] = {id = 2044077,lv = 110},[8] = {id = 2044078,lv = 110}},mon = {id = 209,desc = "tg2-4-loc3-jlr",skillLv = 7,exert = 6,suffer = 6}},
			shl = {cha = "tg2",id = 5110431,cardId = 1102005,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 13},equip = {[1] = {id = 2044081,lv = 110},[2] = {id = 2044062,lv = 110},[3] = {id = 2044063,lv = 110},[4] = {id = 2044064,lv = 110},[5] = {id = 2044085,lv = 110},[6] = {id = 2044086,lv = 110},[7] = {id = 2044087,lv = 110},[8] = {id = 2044088,lv = 110}},mon = {id = 232,desc = "tg2-4-loc3-shl",skillLv = 7,exert = 9,suffer = 9}}
		}
	},
	[51105] = {
		[1] = {
			jlr = {cha = "tg2",id = 5110510,cardId = 1101007,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 13},equip = {[1] = {id = 2044071,lv = 110},[2] = {id = 2044052,lv = 110},[3] = {id = 2044053,lv = 110},[4] = {id = 2044054,lv = 110},[5] = {id = 2044075,lv = 110},[6] = {id = 2044076,lv = 110},[7] = {id = 2044077,lv = 110},[8] = {id = 2044078,lv = 110}},mon = {id = 212,desc = "tg2-5-loc1-jlr",skillLv = 7,exert = 6,suffer = 6}},
			shl = {cha = "tg2",id = 5110511,cardId = 1102002,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 13},equip = {[1] = {id = 2044081,lv = 110},[2] = {id = 2044062,lv = 110},[3] = {id = 2044063,lv = 110},[4] = {id = 2044064,lv = 110},[5] = {id = 2044085,lv = 110},[6] = {id = 2044086,lv = 110},[7] = {id = 2044087,lv = 110},[8] = {id = 2044088,lv = 110}},mon = {id = 236,desc = "tg2-5-loc1-shl",skillLv = 7,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "tg2",id = 5110520,cardId = 1101014,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 13},equip = {[1] = {id = 2044071,lv = 110},[2] = {id = 2044052,lv = 110},[3] = {id = 2044053,lv = 110},[4] = {id = 2044054,lv = 110},[5] = {id = 2044075,lv = 110},[6] = {id = 2044076,lv = 110},[7] = {id = 2044077,lv = 110},[8] = {id = 2044078,lv = 110}},mon = {id = 208,desc = "tg2-5-loc2-jlr",skillLv = 7,exert = 6,suffer = 6}},
			shl = {cha = "tg2",id = 5110521,cardId = 1102020,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 13},equip = {[1] = {id = 2044081,lv = 110},[2] = {id = 2044062,lv = 110},[3] = {id = 2044063,lv = 110},[4] = {id = 2044064,lv = 110},[5] = {id = 2044085,lv = 110},[6] = {id = 2044086,lv = 110},[7] = {id = 2044087,lv = 110},[8] = {id = 2044088,lv = 110}},mon = {id = 231,desc = "tg2-5-loc2-shl",skillLv = 7,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "tg2",id = 5110530,cardId = 1101003,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 13},equip = {[1] = {id = 2044071,lv = 110},[2] = {id = 2044052,lv = 110},[3] = {id = 2044053,lv = 110},[4] = {id = 2044054,lv = 110},[5] = {id = 2044075,lv = 110},[6] = {id = 2044076,lv = 110},[7] = {id = 2044077,lv = 110},[8] = {id = 2044078,lv = 110}},mon = {id = 209,desc = "tg2-5-loc3-jlr",skillLv = 7,exert = 6,suffer = 6}},
			shl = {cha = "tg2",id = 5110531,cardId = 1102005,lv = 100,bklv = 11,star = 4,exWeapon = {unseal = 3,lv = 13},equip = {[1] = {id = 2044081,lv = 110},[2] = {id = 2044062,lv = 110},[3] = {id = 2044063,lv = 110},[4] = {id = 2044064,lv = 110},[5] = {id = 2044085,lv = 110},[6] = {id = 2044086,lv = 110},[7] = {id = 2044087,lv = 110},[8] = {id = 2044088,lv = 110}},mon = {id = 232,desc = "tg2-5-loc3-shl",skillLv = 7,exert = 9,suffer = 9}}
		}
	},
	[51201] = {
		[1] = {
			jlr = {cha = "tg3",id = 5120110,cardId = 1101007,lv = 100,bklv = 11,star = 5,exWeapon = {unseal = 3,lv = 15},equip = {[1] = {id = 2044031,lv = 120},[2] = {id = 2044032,lv = 120},[3] = {id = 2044033,lv = 120},[4] = {id = 2044054,lv = 120},[5] = {id = 2044055,lv = 120},[6] = {id = 2044056,lv = 120},[7] = {id = 2044037,lv = 120},[8] = {id = 2044038,lv = 120}},mon = {id = 212,desc = "tg3-1-loc1-jlr",skillLv = 7,exert = 6,suffer = 6}},
			shl = {cha = "tg3",id = 5120111,cardId = 1102002,lv = 100,bklv = 11,star = 5,exWeapon = {unseal = 3,lv = 15},equip = {[1] = {id = 2044041,lv = 120},[2] = {id = 2044042,lv = 120},[3] = {id = 2044043,lv = 120},[4] = {id = 2044064,lv = 120},[5] = {id = 2044065,lv = 120},[6] = {id = 2044066,lv = 120},[7] = {id = 2044047,lv = 120},[8] = {id = 2044048,lv = 120}},mon = {id = 236,desc = "tg3-1-loc1-shl",skillLv = 7,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "tg3",id = 5120120,cardId = 1101014,lv = 100,bklv = 11,star = 5,exWeapon = {unseal = 3,lv = 15},equip = {[1] = {id = 2044031,lv = 120},[2] = {id = 2044032,lv = 120},[3] = {id = 2044033,lv = 120},[4] = {id = 2044054,lv = 120},[5] = {id = 2044055,lv = 120},[6] = {id = 2044056,lv = 120},[7] = {id = 2044037,lv = 120},[8] = {id = 2044038,lv = 120}},mon = {id = 208,desc = "tg3-1-loc2-jlr",skillLv = 7,exert = 6,suffer = 6}},
			shl = {cha = "tg3",id = 5120121,cardId = 1102020,lv = 100,bklv = 11,star = 5,exWeapon = {unseal = 3,lv = 15},equip = {[1] = {id = 2044041,lv = 120},[2] = {id = 2044042,lv = 120},[3] = {id = 2044043,lv = 120},[4] = {id = 2044064,lv = 120},[5] = {id = 2044065,lv = 120},[6] = {id = 2044066,lv = 120},[7] = {id = 2044047,lv = 120},[8] = {id = 2044048,lv = 120}},mon = {id = 231,desc = "tg3-1-loc2-shl",skillLv = 7,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "tg3",id = 5120130,cardId = 1101003,lv = 100,bklv = 11,star = 5,exWeapon = {unseal = 3,lv = 15},equip = {[1] = {id = 2044031,lv = 120},[2] = {id = 2044032,lv = 120},[3] = {id = 2044033,lv = 120},[4] = {id = 2044054,lv = 120},[5] = {id = 2044055,lv = 120},[6] = {id = 2044056,lv = 120},[7] = {id = 2044037,lv = 120},[8] = {id = 2044038,lv = 120}},mon = {id = 209,desc = "tg3-1-loc3-jlr",skillLv = 7,exert = 6,suffer = 6}},
			shl = {cha = "tg3",id = 5120131,cardId = 1102005,lv = 100,bklv = 11,star = 5,exWeapon = {unseal = 3,lv = 15},equip = {[1] = {id = 2044041,lv = 120},[2] = {id = 2044042,lv = 120},[3] = {id = 2044043,lv = 120},[4] = {id = 2044064,lv = 120},[5] = {id = 2044065,lv = 120},[6] = {id = 2044066,lv = 120},[7] = {id = 2044047,lv = 120},[8] = {id = 2044048,lv = 120}},mon = {id = 232,desc = "tg3-1-loc3-shl",skillLv = 7,exert = 9,suffer = 9}}
		}
	},
	[51202] = {
		[1] = {
			jlr = {cha = "tg3",id = 5120210,cardId = 1101007,lv = 100,bklv = 11,star = 5,exWeapon = {unseal = 3,lv = 15},equip = {[1] = {id = 2044031,lv = 120},[2] = {id = 2044032,lv = 120},[3] = {id = 2044033,lv = 120},[4] = {id = 2044054,lv = 120},[5] = {id = 2044055,lv = 120},[6] = {id = 2044056,lv = 120},[7] = {id = 2044037,lv = 120},[8] = {id = 2044038,lv = 120}},mon = {id = 212,desc = "tg3-2-loc1-jlr",skillLv = 7,exert = 6,suffer = 6}},
			shl = {cha = "tg3",id = 5120211,cardId = 1102002,lv = 100,bklv = 11,star = 5,exWeapon = {unseal = 3,lv = 15},equip = {[1] = {id = 2044041,lv = 120},[2] = {id = 2044042,lv = 120},[3] = {id = 2044043,lv = 120},[4] = {id = 2044064,lv = 120},[5] = {id = 2044065,lv = 120},[6] = {id = 2044066,lv = 120},[7] = {id = 2044047,lv = 120},[8] = {id = 2044048,lv = 120}},mon = {id = 236,desc = "tg3-2-loc1-shl",skillLv = 7,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "tg3",id = 5120220,cardId = 1101014,lv = 100,bklv = 11,star = 5,exWeapon = {unseal = 3,lv = 15},equip = {[1] = {id = 2044031,lv = 120},[2] = {id = 2044032,lv = 120},[3] = {id = 2044033,lv = 120},[4] = {id = 2044054,lv = 120},[5] = {id = 2044055,lv = 120},[6] = {id = 2044056,lv = 120},[7] = {id = 2044037,lv = 120},[8] = {id = 2044038,lv = 120}},mon = {id = 208,desc = "tg3-2-loc2-jlr",skillLv = 7,exert = 6,suffer = 6}},
			shl = {cha = "tg3",id = 5120221,cardId = 1102020,lv = 100,bklv = 11,star = 5,exWeapon = {unseal = 3,lv = 15},equip = {[1] = {id = 2044041,lv = 120},[2] = {id = 2044042,lv = 120},[3] = {id = 2044043,lv = 120},[4] = {id = 2044064,lv = 120},[5] = {id = 2044065,lv = 120},[6] = {id = 2044066,lv = 120},[7] = {id = 2044047,lv = 120},[8] = {id = 2044048,lv = 120}},mon = {id = 231,desc = "tg3-2-loc2-shl",skillLv = 7,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "tg3",id = 5120230,cardId = 1101003,lv = 100,bklv = 11,star = 5,exWeapon = {unseal = 3,lv = 15},equip = {[1] = {id = 2044031,lv = 120},[2] = {id = 2044032,lv = 120},[3] = {id = 2044033,lv = 120},[4] = {id = 2044054,lv = 120},[5] = {id = 2044055,lv = 120},[6] = {id = 2044056,lv = 120},[7] = {id = 2044037,lv = 120},[8] = {id = 2044038,lv = 120}},mon = {id = 209,desc = "tg3-2-loc3-jlr",skillLv = 7,exert = 6,suffer = 6}},
			shl = {cha = "tg3",id = 5120231,cardId = 1102005,lv = 100,bklv = 11,star = 5,exWeapon = {unseal = 3,lv = 15},equip = {[1] = {id = 2044041,lv = 120},[2] = {id = 2044042,lv = 120},[3] = {id = 2044043,lv = 120},[4] = {id = 2044064,lv = 120},[5] = {id = 2044065,lv = 120},[6] = {id = 2044066,lv = 120},[7] = {id = 2044047,lv = 120},[8] = {id = 2044048,lv = 120}},mon = {id = 232,desc = "tg3-2-loc3-shl",skillLv = 7,exert = 9,suffer = 9}}
		}
	},
	[51203] = {
		[1] = {
			jlr = {cha = "tg3",id = 5120310,cardId = 1101007,lv = 100,bklv = 11,star = 5,exWeapon = {unseal = 3,lv = 15},equip = {[1] = {id = 2044031,lv = 120},[2] = {id = 2044032,lv = 120},[3] = {id = 2044033,lv = 120},[4] = {id = 2044054,lv = 120},[5] = {id = 2044055,lv = 120},[6] = {id = 2044056,lv = 120},[7] = {id = 2044037,lv = 120},[8] = {id = 2044038,lv = 120}},mon = {id = 212,desc = "tg3-3-loc1-jlr",skillLv = 7,exert = 6,suffer = 6}},
			shl = {cha = "tg3",id = 5120311,cardId = 1102002,lv = 100,bklv = 11,star = 5,exWeapon = {unseal = 3,lv = 15},equip = {[1] = {id = 2044041,lv = 120},[2] = {id = 2044042,lv = 120},[3] = {id = 2044043,lv = 120},[4] = {id = 2044064,lv = 120},[5] = {id = 2044065,lv = 120},[6] = {id = 2044066,lv = 120},[7] = {id = 2044047,lv = 120},[8] = {id = 2044048,lv = 120}},mon = {id = 236,desc = "tg3-3-loc1-shl",skillLv = 7,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "tg3",id = 5120320,cardId = 1101014,lv = 100,bklv = 11,star = 5,exWeapon = {unseal = 3,lv = 15},equip = {[1] = {id = 2044031,lv = 120},[2] = {id = 2044032,lv = 120},[3] = {id = 2044033,lv = 120},[4] = {id = 2044054,lv = 120},[5] = {id = 2044055,lv = 120},[6] = {id = 2044056,lv = 120},[7] = {id = 2044037,lv = 120},[8] = {id = 2044038,lv = 120}},mon = {id = 208,desc = "tg3-3-loc2-jlr",skillLv = 7,exert = 6,suffer = 6}},
			shl = {cha = "tg3",id = 5120321,cardId = 1102020,lv = 100,bklv = 11,star = 5,exWeapon = {unseal = 3,lv = 15},equip = {[1] = {id = 2044041,lv = 120},[2] = {id = 2044042,lv = 120},[3] = {id = 2044043,lv = 120},[4] = {id = 2044064,lv = 120},[5] = {id = 2044065,lv = 120},[6] = {id = 2044066,lv = 120},[7] = {id = 2044047,lv = 120},[8] = {id = 2044048,lv = 120}},mon = {id = 231,desc = "tg3-3-loc2-shl",skillLv = 7,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "tg3",id = 5120330,cardId = 1101003,lv = 100,bklv = 11,star = 5,exWeapon = {unseal = 3,lv = 15},equip = {[1] = {id = 2044031,lv = 120},[2] = {id = 2044032,lv = 120},[3] = {id = 2044033,lv = 120},[4] = {id = 2044054,lv = 120},[5] = {id = 2044055,lv = 120},[6] = {id = 2044056,lv = 120},[7] = {id = 2044037,lv = 120},[8] = {id = 2044038,lv = 120}},mon = {id = 209,desc = "tg3-3-loc3-jlr",skillLv = 7,exert = 6,suffer = 6}},
			shl = {cha = "tg3",id = 5120331,cardId = 1102005,lv = 100,bklv = 11,star = 5,exWeapon = {unseal = 3,lv = 15},equip = {[1] = {id = 2044041,lv = 120},[2] = {id = 2044042,lv = 120},[3] = {id = 2044043,lv = 120},[4] = {id = 2044064,lv = 120},[5] = {id = 2044065,lv = 120},[6] = {id = 2044066,lv = 120},[7] = {id = 2044047,lv = 120},[8] = {id = 2044048,lv = 120}},mon = {id = 232,desc = "tg3-3-loc3-shl",skillLv = 7,exert = 9,suffer = 9}}
		}
	},
	[51204] = {
		[1] = {
			jlr = {cha = "tg3",id = 5120410,cardId = 1101007,lv = 100,bklv = 11,star = 5,exWeapon = {unseal = 3,lv = 15},equip = {[1] = {id = 2044031,lv = 120},[2] = {id = 2044032,lv = 120},[3] = {id = 2044033,lv = 120},[4] = {id = 2044054,lv = 120},[5] = {id = 2044055,lv = 120},[6] = {id = 2044056,lv = 120},[7] = {id = 2044037,lv = 120},[8] = {id = 2044038,lv = 120}},mon = {id = 212,desc = "tg3-4-loc1-jlr",skillLv = 7,exert = 6,suffer = 6}},
			shl = {cha = "tg3",id = 5120411,cardId = 1102002,lv = 100,bklv = 11,star = 5,exWeapon = {unseal = 3,lv = 15},equip = {[1] = {id = 2044041,lv = 120},[2] = {id = 2044042,lv = 120},[3] = {id = 2044043,lv = 120},[4] = {id = 2044064,lv = 120},[5] = {id = 2044065,lv = 120},[6] = {id = 2044066,lv = 120},[7] = {id = 2044047,lv = 120},[8] = {id = 2044048,lv = 120}},mon = {id = 236,desc = "tg3-4-loc1-shl",skillLv = 7,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "tg3",id = 5120420,cardId = 1101014,lv = 100,bklv = 11,star = 5,exWeapon = {unseal = 3,lv = 15},equip = {[1] = {id = 2044031,lv = 120},[2] = {id = 2044032,lv = 120},[3] = {id = 2044033,lv = 120},[4] = {id = 2044054,lv = 120},[5] = {id = 2044055,lv = 120},[6] = {id = 2044056,lv = 120},[7] = {id = 2044037,lv = 120},[8] = {id = 2044038,lv = 120}},mon = {id = 208,desc = "tg3-4-loc2-jlr",skillLv = 7,exert = 6,suffer = 6}},
			shl = {cha = "tg3",id = 5120421,cardId = 1102020,lv = 100,bklv = 11,star = 5,exWeapon = {unseal = 3,lv = 15},equip = {[1] = {id = 2044041,lv = 120},[2] = {id = 2044042,lv = 120},[3] = {id = 2044043,lv = 120},[4] = {id = 2044064,lv = 120},[5] = {id = 2044065,lv = 120},[6] = {id = 2044066,lv = 120},[7] = {id = 2044047,lv = 120},[8] = {id = 2044048,lv = 120}},mon = {id = 231,desc = "tg3-4-loc2-shl",skillLv = 7,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "tg3",id = 5120430,cardId = 1101003,lv = 100,bklv = 11,star = 5,exWeapon = {unseal = 3,lv = 15},equip = {[1] = {id = 2044031,lv = 120},[2] = {id = 2044032,lv = 120},[3] = {id = 2044033,lv = 120},[4] = {id = 2044054,lv = 120},[5] = {id = 2044055,lv = 120},[6] = {id = 2044056,lv = 120},[7] = {id = 2044037,lv = 120},[8] = {id = 2044038,lv = 120}},mon = {id = 209,desc = "tg3-4-loc3-jlr",skillLv = 7,exert = 6,suffer = 6}},
			shl = {cha = "tg3",id = 5120431,cardId = 1102005,lv = 100,bklv = 11,star = 5,exWeapon = {unseal = 3,lv = 15},equip = {[1] = {id = 2044041,lv = 120},[2] = {id = 2044042,lv = 120},[3] = {id = 2044043,lv = 120},[4] = {id = 2044064,lv = 120},[5] = {id = 2044065,lv = 120},[6] = {id = 2044066,lv = 120},[7] = {id = 2044047,lv = 120},[8] = {id = 2044048,lv = 120}},mon = {id = 232,desc = "tg3-4-loc3-shl",skillLv = 7,exert = 9,suffer = 9}}
		}
	},
	[51205] = {
		[1] = {
			jlr = {cha = "tg3",id = 5120510,cardId = 1101007,lv = 100,bklv = 11,star = 5,exWeapon = {unseal = 3,lv = 15},equip = {[1] = {id = 2044031,lv = 120},[2] = {id = 2044032,lv = 120},[3] = {id = 2044033,lv = 120},[4] = {id = 2044054,lv = 120},[5] = {id = 2044055,lv = 120},[6] = {id = 2044056,lv = 120},[7] = {id = 2044037,lv = 120},[8] = {id = 2044038,lv = 120}},mon = {id = 212,desc = "tg3-5-loc1-jlr",skillLv = 7,exert = 6,suffer = 6}},
			shl = {cha = "tg3",id = 5120511,cardId = 1102002,lv = 100,bklv = 11,star = 5,exWeapon = {unseal = 3,lv = 15},equip = {[1] = {id = 2044041,lv = 120},[2] = {id = 2044042,lv = 120},[3] = {id = 2044043,lv = 120},[4] = {id = 2044064,lv = 120},[5] = {id = 2044065,lv = 120},[6] = {id = 2044066,lv = 120},[7] = {id = 2044047,lv = 120},[8] = {id = 2044048,lv = 120}},mon = {id = 236,desc = "tg3-5-loc1-shl",skillLv = 7,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "tg3",id = 5120520,cardId = 1101014,lv = 100,bklv = 11,star = 5,exWeapon = {unseal = 3,lv = 15},equip = {[1] = {id = 2044031,lv = 120},[2] = {id = 2044032,lv = 120},[3] = {id = 2044033,lv = 120},[4] = {id = 2044054,lv = 120},[5] = {id = 2044055,lv = 120},[6] = {id = 2044056,lv = 120},[7] = {id = 2044037,lv = 120},[8] = {id = 2044038,lv = 120}},mon = {id = 208,desc = "tg3-5-loc2-jlr",skillLv = 7,exert = 6,suffer = 6}},
			shl = {cha = "tg3",id = 5120521,cardId = 1102020,lv = 100,bklv = 11,star = 5,exWeapon = {unseal = 3,lv = 15},equip = {[1] = {id = 2044041,lv = 120},[2] = {id = 2044042,lv = 120},[3] = {id = 2044043,lv = 120},[4] = {id = 2044064,lv = 120},[5] = {id = 2044065,lv = 120},[6] = {id = 2044066,lv = 120},[7] = {id = 2044047,lv = 120},[8] = {id = 2044048,lv = 120}},mon = {id = 231,desc = "tg3-5-loc2-shl",skillLv = 7,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "tg3",id = 5120530,cardId = 1101003,lv = 100,bklv = 11,star = 5,exWeapon = {unseal = 3,lv = 15},equip = {[1] = {id = 2044031,lv = 120},[2] = {id = 2044032,lv = 120},[3] = {id = 2044033,lv = 120},[4] = {id = 2044054,lv = 120},[5] = {id = 2044055,lv = 120},[6] = {id = 2044056,lv = 120},[7] = {id = 2044037,lv = 120},[8] = {id = 2044038,lv = 120}},mon = {id = 209,desc = "tg3-5-loc3-jlr",skillLv = 7,exert = 6,suffer = 6}},
			shl = {cha = "tg3",id = 5120531,cardId = 1102005,lv = 100,bklv = 11,star = 5,exWeapon = {unseal = 3,lv = 15},equip = {[1] = {id = 2044041,lv = 120},[2] = {id = 2044042,lv = 120},[3] = {id = 2044043,lv = 120},[4] = {id = 2044064,lv = 120},[5] = {id = 2044065,lv = 120},[6] = {id = 2044066,lv = 120},[7] = {id = 2044047,lv = 120},[8] = {id = 2044048,lv = 120}},mon = {id = 232,desc = "tg3-5-loc3-shl",skillLv = 7,exert = 9,suffer = 9}}
		}
	},
	[51301] = {
		[1] = {
			jlr = {cha = "tg4",id = 5130110,cardId = 1101007,lv = 110,bklv = 13,star = 5,exWeapon = {unseal = 4,lv = 18},equip = {[1] = {id = 2044031,lv = 120},[2] = {id = 2044032,lv = 120},[3] = {id = 2044033,lv = 120},[4] = {id = 2044054,lv = 120},[5] = {id = 2044055,lv = 120},[6] = {id = 2044056,lv = 120},[7] = {id = 2044037,lv = 120},[8] = {id = 2044038,lv = 120}},mon = {id = 212,desc = "tg4-1-loc1-jlr",skillLv = 8,exert = 6,suffer = 6}},
			shl = {cha = "tg4",id = 5130111,cardId = 1102002,lv = 110,bklv = 13,star = 5,exWeapon = {unseal = 4,lv = 18},equip = {[1] = {id = 2044041,lv = 120},[2] = {id = 2044042,lv = 120},[3] = {id = 2044043,lv = 120},[4] = {id = 2044064,lv = 120},[5] = {id = 2044065,lv = 120},[6] = {id = 2044066,lv = 120},[7] = {id = 2044047,lv = 120},[8] = {id = 2044048,lv = 120}},mon = {id = 236,desc = "tg4-1-loc1-shl",skillLv = 8,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "tg4",id = 5130120,cardId = 1101014,lv = 110,bklv = 13,star = 5,exWeapon = {unseal = 4,lv = 18},equip = {[1] = {id = 2044031,lv = 120},[2] = {id = 2044032,lv = 120},[3] = {id = 2044033,lv = 120},[4] = {id = 2044054,lv = 120},[5] = {id = 2044055,lv = 120},[6] = {id = 2044056,lv = 120},[7] = {id = 2044037,lv = 120},[8] = {id = 2044038,lv = 120}},mon = {id = 208,desc = "tg4-1-loc2-jlr",skillLv = 8,exert = 6,suffer = 6}},
			shl = {cha = "tg4",id = 5130121,cardId = 1102020,lv = 110,bklv = 13,star = 5,exWeapon = {unseal = 4,lv = 18},equip = {[1] = {id = 2044041,lv = 120},[2] = {id = 2044042,lv = 120},[3] = {id = 2044043,lv = 120},[4] = {id = 2044064,lv = 120},[5] = {id = 2044065,lv = 120},[6] = {id = 2044066,lv = 120},[7] = {id = 2044047,lv = 120},[8] = {id = 2044048,lv = 120}},mon = {id = 231,desc = "tg4-1-loc2-shl",skillLv = 8,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "tg4",id = 5130130,cardId = 1101003,lv = 110,bklv = 13,star = 5,exWeapon = {unseal = 4,lv = 18},equip = {[1] = {id = 2044031,lv = 120},[2] = {id = 2044032,lv = 120},[3] = {id = 2044033,lv = 120},[4] = {id = 2044054,lv = 120},[5] = {id = 2044055,lv = 120},[6] = {id = 2044056,lv = 120},[7] = {id = 2044037,lv = 120},[8] = {id = 2044038,lv = 120}},mon = {id = 209,desc = "tg4-1-loc3-jlr",skillLv = 8,exert = 6,suffer = 6}},
			shl = {cha = "tg4",id = 5130131,cardId = 1102005,lv = 110,bklv = 13,star = 5,exWeapon = {unseal = 4,lv = 18},equip = {[1] = {id = 2044041,lv = 120},[2] = {id = 2044042,lv = 120},[3] = {id = 2044043,lv = 120},[4] = {id = 2044064,lv = 120},[5] = {id = 2044065,lv = 120},[6] = {id = 2044066,lv = 120},[7] = {id = 2044047,lv = 120},[8] = {id = 2044048,lv = 120}},mon = {id = 232,desc = "tg4-1-loc3-shl",skillLv = 8,exert = 9,suffer = 9}}
		}
	},
	[51302] = {
		[1] = {
			jlr = {cha = "tg4",id = 5130210,cardId = 1101007,lv = 110,bklv = 13,star = 5,exWeapon = {unseal = 4,lv = 18},equip = {[1] = {id = 2044031,lv = 120},[2] = {id = 2044032,lv = 120},[3] = {id = 2044033,lv = 120},[4] = {id = 2044054,lv = 120},[5] = {id = 2044055,lv = 120},[6] = {id = 2044056,lv = 120},[7] = {id = 2044037,lv = 120},[8] = {id = 2044038,lv = 120}},mon = {id = 212,desc = "tg4-2-loc1-jlr",skillLv = 8,exert = 6,suffer = 6}},
			shl = {cha = "tg4",id = 5130211,cardId = 1102002,lv = 110,bklv = 13,star = 5,exWeapon = {unseal = 4,lv = 18},equip = {[1] = {id = 2044041,lv = 120},[2] = {id = 2044042,lv = 120},[3] = {id = 2044043,lv = 120},[4] = {id = 2044064,lv = 120},[5] = {id = 2044065,lv = 120},[6] = {id = 2044066,lv = 120},[7] = {id = 2044047,lv = 120},[8] = {id = 2044048,lv = 120}},mon = {id = 236,desc = "tg4-2-loc1-shl",skillLv = 8,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "tg4",id = 5130220,cardId = 1101014,lv = 110,bklv = 13,star = 5,exWeapon = {unseal = 4,lv = 18},equip = {[1] = {id = 2044031,lv = 120},[2] = {id = 2044032,lv = 120},[3] = {id = 2044033,lv = 120},[4] = {id = 2044054,lv = 120},[5] = {id = 2044055,lv = 120},[6] = {id = 2044056,lv = 120},[7] = {id = 2044037,lv = 120},[8] = {id = 2044038,lv = 120}},mon = {id = 208,desc = "tg4-2-loc2-jlr",skillLv = 8,exert = 6,suffer = 6}},
			shl = {cha = "tg4",id = 5130221,cardId = 1102020,lv = 110,bklv = 13,star = 5,exWeapon = {unseal = 4,lv = 18},equip = {[1] = {id = 2044041,lv = 120},[2] = {id = 2044042,lv = 120},[3] = {id = 2044043,lv = 120},[4] = {id = 2044064,lv = 120},[5] = {id = 2044065,lv = 120},[6] = {id = 2044066,lv = 120},[7] = {id = 2044047,lv = 120},[8] = {id = 2044048,lv = 120}},mon = {id = 231,desc = "tg4-2-loc2-shl",skillLv = 8,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "tg4",id = 5130230,cardId = 1101003,lv = 110,bklv = 13,star = 5,exWeapon = {unseal = 4,lv = 18},equip = {[1] = {id = 2044031,lv = 120},[2] = {id = 2044032,lv = 120},[3] = {id = 2044033,lv = 120},[4] = {id = 2044054,lv = 120},[5] = {id = 2044055,lv = 120},[6] = {id = 2044056,lv = 120},[7] = {id = 2044037,lv = 120},[8] = {id = 2044038,lv = 120}},mon = {id = 209,desc = "tg4-2-loc3-jlr",skillLv = 8,exert = 6,suffer = 6}},
			shl = {cha = "tg4",id = 5130231,cardId = 1102005,lv = 110,bklv = 13,star = 5,exWeapon = {unseal = 4,lv = 18},equip = {[1] = {id = 2044041,lv = 120},[2] = {id = 2044042,lv = 120},[3] = {id = 2044043,lv = 120},[4] = {id = 2044064,lv = 120},[5] = {id = 2044065,lv = 120},[6] = {id = 2044066,lv = 120},[7] = {id = 2044047,lv = 120},[8] = {id = 2044048,lv = 120}},mon = {id = 232,desc = "tg4-2-loc3-shl",skillLv = 8,exert = 9,suffer = 9}}
		}
	},
	[51303] = {
		[1] = {
			jlr = {cha = "tg4",id = 5130310,cardId = 1101007,lv = 110,bklv = 13,star = 5,exWeapon = {unseal = 4,lv = 18},equip = {[1] = {id = 2044031,lv = 120},[2] = {id = 2044032,lv = 120},[3] = {id = 2044033,lv = 120},[4] = {id = 2044054,lv = 120},[5] = {id = 2044055,lv = 120},[6] = {id = 2044056,lv = 120},[7] = {id = 2044037,lv = 120},[8] = {id = 2044038,lv = 120}},mon = {id = 212,desc = "tg4-3-loc1-jlr",skillLv = 8,exert = 6,suffer = 6}},
			shl = {cha = "tg4",id = 5130311,cardId = 1102002,lv = 110,bklv = 13,star = 5,exWeapon = {unseal = 4,lv = 18},equip = {[1] = {id = 2044041,lv = 120},[2] = {id = 2044042,lv = 120},[3] = {id = 2044043,lv = 120},[4] = {id = 2044064,lv = 120},[5] = {id = 2044065,lv = 120},[6] = {id = 2044066,lv = 120},[7] = {id = 2044047,lv = 120},[8] = {id = 2044048,lv = 120}},mon = {id = 236,desc = "tg4-3-loc1-shl",skillLv = 8,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "tg4",id = 5130320,cardId = 1101014,lv = 110,bklv = 13,star = 5,exWeapon = {unseal = 4,lv = 18},equip = {[1] = {id = 2044031,lv = 120},[2] = {id = 2044032,lv = 120},[3] = {id = 2044033,lv = 120},[4] = {id = 2044054,lv = 120},[5] = {id = 2044055,lv = 120},[6] = {id = 2044056,lv = 120},[7] = {id = 2044037,lv = 120},[8] = {id = 2044038,lv = 120}},mon = {id = 208,desc = "tg4-3-loc2-jlr",skillLv = 8,exert = 6,suffer = 6}},
			shl = {cha = "tg4",id = 5130321,cardId = 1102020,lv = 110,bklv = 13,star = 5,exWeapon = {unseal = 4,lv = 18},equip = {[1] = {id = 2044041,lv = 120},[2] = {id = 2044042,lv = 120},[3] = {id = 2044043,lv = 120},[4] = {id = 2044064,lv = 120},[5] = {id = 2044065,lv = 120},[6] = {id = 2044066,lv = 120},[7] = {id = 2044047,lv = 120},[8] = {id = 2044048,lv = 120}},mon = {id = 231,desc = "tg4-3-loc2-shl",skillLv = 8,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "tg4",id = 5130330,cardId = 1101003,lv = 110,bklv = 13,star = 5,exWeapon = {unseal = 4,lv = 18},equip = {[1] = {id = 2044031,lv = 120},[2] = {id = 2044032,lv = 120},[3] = {id = 2044033,lv = 120},[4] = {id = 2044054,lv = 120},[5] = {id = 2044055,lv = 120},[6] = {id = 2044056,lv = 120},[7] = {id = 2044037,lv = 120},[8] = {id = 2044038,lv = 120}},mon = {id = 209,desc = "tg4-3-loc3-jlr",skillLv = 8,exert = 6,suffer = 6}},
			shl = {cha = "tg4",id = 5130331,cardId = 1102005,lv = 110,bklv = 13,star = 5,exWeapon = {unseal = 4,lv = 18},equip = {[1] = {id = 2044041,lv = 120},[2] = {id = 2044042,lv = 120},[3] = {id = 2044043,lv = 120},[4] = {id = 2044064,lv = 120},[5] = {id = 2044065,lv = 120},[6] = {id = 2044066,lv = 120},[7] = {id = 2044047,lv = 120},[8] = {id = 2044048,lv = 120}},mon = {id = 232,desc = "tg4-3-loc3-shl",skillLv = 8,exert = 9,suffer = 9}}
		}
	},
	[51304] = {
		[1] = {
			jlr = {cha = "tg4",id = 5130410,cardId = 1101007,lv = 110,bklv = 13,star = 5,exWeapon = {unseal = 4,lv = 18},equip = {[1] = {id = 2044031,lv = 120},[2] = {id = 2044032,lv = 120},[3] = {id = 2044033,lv = 120},[4] = {id = 2044054,lv = 120},[5] = {id = 2044055,lv = 120},[6] = {id = 2044056,lv = 120},[7] = {id = 2044037,lv = 120},[8] = {id = 2044038,lv = 120}},mon = {id = 212,desc = "tg4-4-loc1-jlr",skillLv = 8,exert = 6,suffer = 6}},
			shl = {cha = "tg4",id = 5130411,cardId = 1102002,lv = 110,bklv = 13,star = 5,exWeapon = {unseal = 4,lv = 18},equip = {[1] = {id = 2044041,lv = 120},[2] = {id = 2044042,lv = 120},[3] = {id = 2044043,lv = 120},[4] = {id = 2044064,lv = 120},[5] = {id = 2044065,lv = 120},[6] = {id = 2044066,lv = 120},[7] = {id = 2044047,lv = 120},[8] = {id = 2044048,lv = 120}},mon = {id = 236,desc = "tg4-4-loc1-shl",skillLv = 8,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "tg4",id = 5130420,cardId = 1101014,lv = 110,bklv = 13,star = 5,exWeapon = {unseal = 4,lv = 18},equip = {[1] = {id = 2044031,lv = 120},[2] = {id = 2044032,lv = 120},[3] = {id = 2044033,lv = 120},[4] = {id = 2044054,lv = 120},[5] = {id = 2044055,lv = 120},[6] = {id = 2044056,lv = 120},[7] = {id = 2044037,lv = 120},[8] = {id = 2044038,lv = 120}},mon = {id = 208,desc = "tg4-4-loc2-jlr",skillLv = 8,exert = 6,suffer = 6}},
			shl = {cha = "tg4",id = 5130421,cardId = 1102020,lv = 110,bklv = 13,star = 5,exWeapon = {unseal = 4,lv = 18},equip = {[1] = {id = 2044041,lv = 120},[2] = {id = 2044042,lv = 120},[3] = {id = 2044043,lv = 120},[4] = {id = 2044064,lv = 120},[5] = {id = 2044065,lv = 120},[6] = {id = 2044066,lv = 120},[7] = {id = 2044047,lv = 120},[8] = {id = 2044048,lv = 120}},mon = {id = 231,desc = "tg4-4-loc2-shl",skillLv = 8,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "tg4",id = 5130430,cardId = 1101003,lv = 110,bklv = 13,star = 5,exWeapon = {unseal = 4,lv = 18},equip = {[1] = {id = 2044031,lv = 120},[2] = {id = 2044032,lv = 120},[3] = {id = 2044033,lv = 120},[4] = {id = 2044054,lv = 120},[5] = {id = 2044055,lv = 120},[6] = {id = 2044056,lv = 120},[7] = {id = 2044037,lv = 120},[8] = {id = 2044038,lv = 120}},mon = {id = 209,desc = "tg4-4-loc3-jlr",skillLv = 8,exert = 6,suffer = 6}},
			shl = {cha = "tg4",id = 5130431,cardId = 1102005,lv = 110,bklv = 13,star = 5,exWeapon = {unseal = 4,lv = 18},equip = {[1] = {id = 2044041,lv = 120},[2] = {id = 2044042,lv = 120},[3] = {id = 2044043,lv = 120},[4] = {id = 2044064,lv = 120},[5] = {id = 2044065,lv = 120},[6] = {id = 2044066,lv = 120},[7] = {id = 2044047,lv = 120},[8] = {id = 2044048,lv = 120}},mon = {id = 232,desc = "tg4-4-loc3-shl",skillLv = 8,exert = 9,suffer = 9}}
		}
	},
	[51305] = {
		[1] = {
			jlr = {cha = "tg4",id = 5130510,cardId = 1101007,lv = 110,bklv = 13,star = 5,exWeapon = {unseal = 4,lv = 18},equip = {[1] = {id = 2044031,lv = 120},[2] = {id = 2044032,lv = 120},[3] = {id = 2044033,lv = 120},[4] = {id = 2044054,lv = 120},[5] = {id = 2044055,lv = 120},[6] = {id = 2044056,lv = 120},[7] = {id = 2044037,lv = 120},[8] = {id = 2044038,lv = 120}},mon = {id = 212,desc = "tg4-5-loc1-jlr",skillLv = 8,exert = 6,suffer = 6}},
			shl = {cha = "tg4",id = 5130511,cardId = 1102002,lv = 110,bklv = 13,star = 5,exWeapon = {unseal = 4,lv = 18},equip = {[1] = {id = 2044041,lv = 120},[2] = {id = 2044042,lv = 120},[3] = {id = 2044043,lv = 120},[4] = {id = 2044064,lv = 120},[5] = {id = 2044065,lv = 120},[6] = {id = 2044066,lv = 120},[7] = {id = 2044047,lv = 120},[8] = {id = 2044048,lv = 120}},mon = {id = 236,desc = "tg4-5-loc1-shl",skillLv = 8,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "tg4",id = 5130520,cardId = 1101014,lv = 110,bklv = 13,star = 5,exWeapon = {unseal = 4,lv = 18},equip = {[1] = {id = 2044031,lv = 120},[2] = {id = 2044032,lv = 120},[3] = {id = 2044033,lv = 120},[4] = {id = 2044054,lv = 120},[5] = {id = 2044055,lv = 120},[6] = {id = 2044056,lv = 120},[7] = {id = 2044037,lv = 120},[8] = {id = 2044038,lv = 120}},mon = {id = 208,desc = "tg4-5-loc2-jlr",skillLv = 8,exert = 6,suffer = 6}},
			shl = {cha = "tg4",id = 5130521,cardId = 1102020,lv = 110,bklv = 13,star = 5,exWeapon = {unseal = 4,lv = 18},equip = {[1] = {id = 2044041,lv = 120},[2] = {id = 2044042,lv = 120},[3] = {id = 2044043,lv = 120},[4] = {id = 2044064,lv = 120},[5] = {id = 2044065,lv = 120},[6] = {id = 2044066,lv = 120},[7] = {id = 2044047,lv = 120},[8] = {id = 2044048,lv = 120}},mon = {id = 231,desc = "tg4-5-loc2-shl",skillLv = 8,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "tg4",id = 5130530,cardId = 1101003,lv = 110,bklv = 13,star = 5,exWeapon = {unseal = 4,lv = 18},equip = {[1] = {id = 2044031,lv = 120},[2] = {id = 2044032,lv = 120},[3] = {id = 2044033,lv = 120},[4] = {id = 2044054,lv = 120},[5] = {id = 2044055,lv = 120},[6] = {id = 2044056,lv = 120},[7] = {id = 2044037,lv = 120},[8] = {id = 2044038,lv = 120}},mon = {id = 209,desc = "tg4-5-loc3-jlr",skillLv = 8,exert = 6,suffer = 6}},
			shl = {cha = "tg4",id = 5130531,cardId = 1102005,lv = 110,bklv = 13,star = 5,exWeapon = {unseal = 4,lv = 18},equip = {[1] = {id = 2044041,lv = 120},[2] = {id = 2044042,lv = 120},[3] = {id = 2044043,lv = 120},[4] = {id = 2044064,lv = 120},[5] = {id = 2044065,lv = 120},[6] = {id = 2044066,lv = 120},[7] = {id = 2044047,lv = 120},[8] = {id = 2044048,lv = 120}},mon = {id = 232,desc = "tg4-5-loc3-shl",skillLv = 8,exert = 9,suffer = 9}}
		}
	},
	[51401] = {
		[1] = {
			jlr = {cha = "tg5",id = 5140110,cardId = 1101007,lv = 120,bklv = 15,star = 5,exWeapon = {unseal = 5,lv = 20},equip = {[1] = {id = 2044031,lv = 120},[2] = {id = 2044032,lv = 120},[3] = {id = 2044033,lv = 120},[4] = {id = 2044054,lv = 120},[5] = {id = 2044055,lv = 120},[6] = {id = 2044056,lv = 120},[7] = {id = 2044037,lv = 120},[8] = {id = 2044038,lv = 120}},mon = {id = 212,desc = "tg5-1-loc1-jlr",skillLv = 9,exert = 6,suffer = 6}},
			shl = {cha = "tg5",id = 5140111,cardId = 1102002,lv = 120,bklv = 15,star = 5,exWeapon = {unseal = 5,lv = 20},equip = {[1] = {id = 2044041,lv = 120},[2] = {id = 2044042,lv = 120},[3] = {id = 2044043,lv = 120},[4] = {id = 2044064,lv = 120},[5] = {id = 2044065,lv = 120},[6] = {id = 2044066,lv = 120},[7] = {id = 2044047,lv = 120},[8] = {id = 2044048,lv = 120}},mon = {id = 236,desc = "tg5-1-loc1-shl",skillLv = 9,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "tg5",id = 5140120,cardId = 1101014,lv = 120,bklv = 15,star = 5,exWeapon = {unseal = 5,lv = 20},equip = {[1] = {id = 2044031,lv = 120},[2] = {id = 2044032,lv = 120},[3] = {id = 2044033,lv = 120},[4] = {id = 2044054,lv = 120},[5] = {id = 2044055,lv = 120},[6] = {id = 2044056,lv = 120},[7] = {id = 2044037,lv = 120},[8] = {id = 2044038,lv = 120}},mon = {id = 208,desc = "tg5-1-loc2-jlr",skillLv = 9,exert = 6,suffer = 6}},
			shl = {cha = "tg5",id = 5140121,cardId = 1102020,lv = 120,bklv = 15,star = 5,exWeapon = {unseal = 5,lv = 20},equip = {[1] = {id = 2044041,lv = 120},[2] = {id = 2044042,lv = 120},[3] = {id = 2044043,lv = 120},[4] = {id = 2044064,lv = 120},[5] = {id = 2044065,lv = 120},[6] = {id = 2044066,lv = 120},[7] = {id = 2044047,lv = 120},[8] = {id = 2044048,lv = 120}},mon = {id = 231,desc = "tg5-1-loc2-shl",skillLv = 9,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "tg5",id = 5140130,cardId = 1101003,lv = 120,bklv = 15,star = 5,exWeapon = {unseal = 5,lv = 20},equip = {[1] = {id = 2044031,lv = 120},[2] = {id = 2044032,lv = 120},[3] = {id = 2044033,lv = 120},[4] = {id = 2044054,lv = 120},[5] = {id = 2044055,lv = 120},[6] = {id = 2044056,lv = 120},[7] = {id = 2044037,lv = 120},[8] = {id = 2044038,lv = 120}},mon = {id = 209,desc = "tg5-1-loc3-jlr",skillLv = 9,exert = 6,suffer = 6}},
			shl = {cha = "tg5",id = 5140131,cardId = 1102005,lv = 120,bklv = 15,star = 5,exWeapon = {unseal = 5,lv = 20},equip = {[1] = {id = 2044041,lv = 120},[2] = {id = 2044042,lv = 120},[3] = {id = 2044043,lv = 120},[4] = {id = 2044064,lv = 120},[5] = {id = 2044065,lv = 120},[6] = {id = 2044066,lv = 120},[7] = {id = 2044047,lv = 120},[8] = {id = 2044048,lv = 120}},mon = {id = 232,desc = "tg5-1-loc3-shl",skillLv = 9,exert = 9,suffer = 9}}
		}
	},
	[51402] = {
		[1] = {
			jlr = {cha = "tg5",id = 5140210,cardId = 1101007,lv = 120,bklv = 15,star = 5,exWeapon = {unseal = 5,lv = 20},equip = {[1] = {id = 2044031,lv = 120},[2] = {id = 2044032,lv = 120},[3] = {id = 2044033,lv = 120},[4] = {id = 2044054,lv = 120},[5] = {id = 2044055,lv = 120},[6] = {id = 2044056,lv = 120},[7] = {id = 2044037,lv = 120},[8] = {id = 2044038,lv = 120}},mon = {id = 212,desc = "tg5-2-loc1-jlr",skillLv = 9,exert = 6,suffer = 6}},
			shl = {cha = "tg5",id = 5140211,cardId = 1102002,lv = 120,bklv = 15,star = 5,exWeapon = {unseal = 5,lv = 20},equip = {[1] = {id = 2044041,lv = 120},[2] = {id = 2044042,lv = 120},[3] = {id = 2044043,lv = 120},[4] = {id = 2044064,lv = 120},[5] = {id = 2044065,lv = 120},[6] = {id = 2044066,lv = 120},[7] = {id = 2044047,lv = 120},[8] = {id = 2044048,lv = 120}},mon = {id = 236,desc = "tg5-2-loc1-shl",skillLv = 9,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "tg5",id = 5140220,cardId = 1101014,lv = 120,bklv = 15,star = 5,exWeapon = {unseal = 5,lv = 20},equip = {[1] = {id = 2044031,lv = 120},[2] = {id = 2044032,lv = 120},[3] = {id = 2044033,lv = 120},[4] = {id = 2044054,lv = 120},[5] = {id = 2044055,lv = 120},[6] = {id = 2044056,lv = 120},[7] = {id = 2044037,lv = 120},[8] = {id = 2044038,lv = 120}},mon = {id = 208,desc = "tg5-2-loc2-jlr",skillLv = 9,exert = 6,suffer = 6}},
			shl = {cha = "tg5",id = 5140221,cardId = 1102020,lv = 120,bklv = 15,star = 5,exWeapon = {unseal = 5,lv = 20},equip = {[1] = {id = 2044041,lv = 120},[2] = {id = 2044042,lv = 120},[3] = {id = 2044043,lv = 120},[4] = {id = 2044064,lv = 120},[5] = {id = 2044065,lv = 120},[6] = {id = 2044066,lv = 120},[7] = {id = 2044047,lv = 120},[8] = {id = 2044048,lv = 120}},mon = {id = 231,desc = "tg5-2-loc2-shl",skillLv = 9,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "tg5",id = 5140230,cardId = 1101003,lv = 120,bklv = 15,star = 5,exWeapon = {unseal = 5,lv = 20},equip = {[1] = {id = 2044031,lv = 120},[2] = {id = 2044032,lv = 120},[3] = {id = 2044033,lv = 120},[4] = {id = 2044054,lv = 120},[5] = {id = 2044055,lv = 120},[6] = {id = 2044056,lv = 120},[7] = {id = 2044037,lv = 120},[8] = {id = 2044038,lv = 120}},mon = {id = 209,desc = "tg5-2-loc3-jlr",skillLv = 9,exert = 6,suffer = 6}},
			shl = {cha = "tg5",id = 5140231,cardId = 1102005,lv = 120,bklv = 15,star = 5,exWeapon = {unseal = 5,lv = 20},equip = {[1] = {id = 2044041,lv = 120},[2] = {id = 2044042,lv = 120},[3] = {id = 2044043,lv = 120},[4] = {id = 2044064,lv = 120},[5] = {id = 2044065,lv = 120},[6] = {id = 2044066,lv = 120},[7] = {id = 2044047,lv = 120},[8] = {id = 2044048,lv = 120}},mon = {id = 232,desc = "tg5-2-loc3-shl",skillLv = 9,exert = 9,suffer = 9}}
		}
	},
	[51403] = {
		[1] = {
			jlr = {cha = "tg5",id = 5140310,cardId = 1101007,lv = 120,bklv = 15,star = 5,exWeapon = {unseal = 5,lv = 20},equip = {[1] = {id = 2044031,lv = 120},[2] = {id = 2044032,lv = 120},[3] = {id = 2044033,lv = 120},[4] = {id = 2044054,lv = 120},[5] = {id = 2044055,lv = 120},[6] = {id = 2044056,lv = 120},[7] = {id = 2044037,lv = 120},[8] = {id = 2044038,lv = 120}},mon = {id = 212,desc = "tg5-3-loc1-jlr",skillLv = 9,exert = 6,suffer = 6}},
			shl = {cha = "tg5",id = 5140311,cardId = 1102002,lv = 120,bklv = 15,star = 5,exWeapon = {unseal = 5,lv = 20},equip = {[1] = {id = 2044041,lv = 120},[2] = {id = 2044042,lv = 120},[3] = {id = 2044043,lv = 120},[4] = {id = 2044064,lv = 120},[5] = {id = 2044065,lv = 120},[6] = {id = 2044066,lv = 120},[7] = {id = 2044047,lv = 120},[8] = {id = 2044048,lv = 120}},mon = {id = 236,desc = "tg5-3-loc1-shl",skillLv = 9,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "tg5",id = 5140320,cardId = 1101014,lv = 120,bklv = 15,star = 5,exWeapon = {unseal = 5,lv = 20},equip = {[1] = {id = 2044031,lv = 120},[2] = {id = 2044032,lv = 120},[3] = {id = 2044033,lv = 120},[4] = {id = 2044054,lv = 120},[5] = {id = 2044055,lv = 120},[6] = {id = 2044056,lv = 120},[7] = {id = 2044037,lv = 120},[8] = {id = 2044038,lv = 120}},mon = {id = 208,desc = "tg5-3-loc2-jlr",skillLv = 9,exert = 6,suffer = 6}},
			shl = {cha = "tg5",id = 5140321,cardId = 1102020,lv = 120,bklv = 15,star = 5,exWeapon = {unseal = 5,lv = 20},equip = {[1] = {id = 2044041,lv = 120},[2] = {id = 2044042,lv = 120},[3] = {id = 2044043,lv = 120},[4] = {id = 2044064,lv = 120},[5] = {id = 2044065,lv = 120},[6] = {id = 2044066,lv = 120},[7] = {id = 2044047,lv = 120},[8] = {id = 2044048,lv = 120}},mon = {id = 231,desc = "tg5-3-loc2-shl",skillLv = 9,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "tg5",id = 5140330,cardId = 1101003,lv = 120,bklv = 15,star = 5,exWeapon = {unseal = 5,lv = 20},equip = {[1] = {id = 2044031,lv = 120},[2] = {id = 2044032,lv = 120},[3] = {id = 2044033,lv = 120},[4] = {id = 2044054,lv = 120},[5] = {id = 2044055,lv = 120},[6] = {id = 2044056,lv = 120},[7] = {id = 2044037,lv = 120},[8] = {id = 2044038,lv = 120}},mon = {id = 209,desc = "tg5-3-loc3-jlr",skillLv = 9,exert = 6,suffer = 6}},
			shl = {cha = "tg5",id = 5140331,cardId = 1102005,lv = 120,bklv = 15,star = 5,exWeapon = {unseal = 5,lv = 20},equip = {[1] = {id = 2044041,lv = 120},[2] = {id = 2044042,lv = 120},[3] = {id = 2044043,lv = 120},[4] = {id = 2044064,lv = 120},[5] = {id = 2044065,lv = 120},[6] = {id = 2044066,lv = 120},[7] = {id = 2044047,lv = 120},[8] = {id = 2044048,lv = 120}},mon = {id = 232,desc = "tg5-3-loc3-shl",skillLv = 9,exert = 9,suffer = 9}}
		}
	},
	[51404] = {
		[1] = {
			jlr = {cha = "tg5",id = 5140410,cardId = 1101007,lv = 120,bklv = 15,star = 5,exWeapon = {unseal = 5,lv = 20},equip = {[1] = {id = 2044031,lv = 120},[2] = {id = 2044032,lv = 120},[3] = {id = 2044033,lv = 120},[4] = {id = 2044054,lv = 120},[5] = {id = 2044055,lv = 120},[6] = {id = 2044056,lv = 120},[7] = {id = 2044037,lv = 120},[8] = {id = 2044038,lv = 120}},mon = {id = 212,desc = "tg5-4-loc1-jlr",skillLv = 9,exert = 6,suffer = 6}},
			shl = {cha = "tg5",id = 5140411,cardId = 1102002,lv = 120,bklv = 15,star = 5,exWeapon = {unseal = 5,lv = 20},equip = {[1] = {id = 2044041,lv = 120},[2] = {id = 2044042,lv = 120},[3] = {id = 2044043,lv = 120},[4] = {id = 2044064,lv = 120},[5] = {id = 2044065,lv = 120},[6] = {id = 2044066,lv = 120},[7] = {id = 2044047,lv = 120},[8] = {id = 2044048,lv = 120}},mon = {id = 236,desc = "tg5-4-loc1-shl",skillLv = 9,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "tg5",id = 5140420,cardId = 1101014,lv = 120,bklv = 15,star = 5,exWeapon = {unseal = 5,lv = 20},equip = {[1] = {id = 2044031,lv = 120},[2] = {id = 2044032,lv = 120},[3] = {id = 2044033,lv = 120},[4] = {id = 2044054,lv = 120},[5] = {id = 2044055,lv = 120},[6] = {id = 2044056,lv = 120},[7] = {id = 2044037,lv = 120},[8] = {id = 2044038,lv = 120}},mon = {id = 208,desc = "tg5-4-loc2-jlr",skillLv = 9,exert = 6,suffer = 6}},
			shl = {cha = "tg5",id = 5140421,cardId = 1102020,lv = 120,bklv = 15,star = 5,exWeapon = {unseal = 5,lv = 20},equip = {[1] = {id = 2044041,lv = 120},[2] = {id = 2044042,lv = 120},[3] = {id = 2044043,lv = 120},[4] = {id = 2044064,lv = 120},[5] = {id = 2044065,lv = 120},[6] = {id = 2044066,lv = 120},[7] = {id = 2044047,lv = 120},[8] = {id = 2044048,lv = 120}},mon = {id = 231,desc = "tg5-4-loc2-shl",skillLv = 9,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "tg5",id = 5140430,cardId = 1101003,lv = 120,bklv = 15,star = 5,exWeapon = {unseal = 5,lv = 20},equip = {[1] = {id = 2044031,lv = 120},[2] = {id = 2044032,lv = 120},[3] = {id = 2044033,lv = 120},[4] = {id = 2044054,lv = 120},[5] = {id = 2044055,lv = 120},[6] = {id = 2044056,lv = 120},[7] = {id = 2044037,lv = 120},[8] = {id = 2044038,lv = 120}},mon = {id = 209,desc = "tg5-4-loc3-jlr",skillLv = 9,exert = 6,suffer = 6}},
			shl = {cha = "tg5",id = 5140431,cardId = 1102005,lv = 120,bklv = 15,star = 5,exWeapon = {unseal = 5,lv = 20},equip = {[1] = {id = 2044041,lv = 120},[2] = {id = 2044042,lv = 120},[3] = {id = 2044043,lv = 120},[4] = {id = 2044064,lv = 120},[5] = {id = 2044065,lv = 120},[6] = {id = 2044066,lv = 120},[7] = {id = 2044047,lv = 120},[8] = {id = 2044048,lv = 120}},mon = {id = 232,desc = "tg5-4-loc3-shl",skillLv = 9,exert = 9,suffer = 9}}
		}
	},
	[51405] = {
		[1] = {
			jlr = {cha = "tg5",id = 5140510,cardId = 1101007,lv = 120,bklv = 15,star = 5,exWeapon = {unseal = 5,lv = 20},equip = {[1] = {id = 2044031,lv = 120},[2] = {id = 2044032,lv = 120},[3] = {id = 2044033,lv = 120},[4] = {id = 2044054,lv = 120},[5] = {id = 2044055,lv = 120},[6] = {id = 2044056,lv = 120},[7] = {id = 2044037,lv = 120},[8] = {id = 2044038,lv = 120}},mon = {id = 212,desc = "tg5-5-loc1-jlr",skillLv = 9,exert = 6,suffer = 6}},
			shl = {cha = "tg5",id = 5140511,cardId = 1102002,lv = 120,bklv = 15,star = 5,exWeapon = {unseal = 5,lv = 20},equip = {[1] = {id = 2044041,lv = 120},[2] = {id = 2044042,lv = 120},[3] = {id = 2044043,lv = 120},[4] = {id = 2044064,lv = 120},[5] = {id = 2044065,lv = 120},[6] = {id = 2044066,lv = 120},[7] = {id = 2044047,lv = 120},[8] = {id = 2044048,lv = 120}},mon = {id = 236,desc = "tg5-5-loc1-shl",skillLv = 9,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "tg5",id = 5140520,cardId = 1101014,lv = 120,bklv = 15,star = 5,exWeapon = {unseal = 5,lv = 20},equip = {[1] = {id = 2044031,lv = 120},[2] = {id = 2044032,lv = 120},[3] = {id = 2044033,lv = 120},[4] = {id = 2044054,lv = 120},[5] = {id = 2044055,lv = 120},[6] = {id = 2044056,lv = 120},[7] = {id = 2044037,lv = 120},[8] = {id = 2044038,lv = 120}},mon = {id = 208,desc = "tg5-5-loc2-jlr",skillLv = 9,exert = 6,suffer = 6}},
			shl = {cha = "tg5",id = 5140521,cardId = 1102020,lv = 120,bklv = 15,star = 5,exWeapon = {unseal = 5,lv = 20},equip = {[1] = {id = 2044041,lv = 120},[2] = {id = 2044042,lv = 120},[3] = {id = 2044043,lv = 120},[4] = {id = 2044064,lv = 120},[5] = {id = 2044065,lv = 120},[6] = {id = 2044066,lv = 120},[7] = {id = 2044047,lv = 120},[8] = {id = 2044048,lv = 120}},mon = {id = 231,desc = "tg5-5-loc2-shl",skillLv = 9,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "tg5",id = 5140530,cardId = 1101003,lv = 120,bklv = 15,star = 5,exWeapon = {unseal = 5,lv = 20},equip = {[1] = {id = 2044031,lv = 120},[2] = {id = 2044032,lv = 120},[3] = {id = 2044033,lv = 120},[4] = {id = 2044054,lv = 120},[5] = {id = 2044055,lv = 120},[6] = {id = 2044056,lv = 120},[7] = {id = 2044037,lv = 120},[8] = {id = 2044038,lv = 120}},mon = {id = 209,desc = "tg5-5-loc3-jlr",skillLv = 9,exert = 6,suffer = 6}},
			shl = {cha = "tg5",id = 5140531,cardId = 1102005,lv = 120,bklv = 15,star = 5,exWeapon = {unseal = 5,lv = 20},equip = {[1] = {id = 2044041,lv = 120},[2] = {id = 2044042,lv = 120},[3] = {id = 2044043,lv = 120},[4] = {id = 2044064,lv = 120},[5] = {id = 2044065,lv = 120},[6] = {id = 2044066,lv = 120},[7] = {id = 2044047,lv = 120},[8] = {id = 2044048,lv = 120}},mon = {id = 232,desc = "tg5-5-loc3-shl",skillLv = 9,exert = 9,suffer = 9}}
		}
	},
	[51501] = {
		[1] = {
			jlr = {cha = "tg6",id = 5150110,cardId = 1101007,lv = 130,bklv = 17,star = 5,exWeapon = {unseal = 6,lv = 25},equip = {[1] = {id = 2054011,lv = 130},[2] = {id = 2054012,lv = 130},[3] = {id = 2054013,lv = 130},[4] = {id = 2054014,lv = 130},[5] = {id = 2054015,lv = 130},[6] = {id = 2054016,lv = 130},[7] = {id = 2054017,lv = 130},[8] = {id = 2054018,lv = 130}},mon = {id = 212,desc = "tg6-1-loc1-jlr",skillLv = 10,exert = 6,suffer = 6}},
			shl = {cha = "tg6",id = 5150111,cardId = 1102002,lv = 130,bklv = 17,star = 5,exWeapon = {unseal = 6,lv = 25},equip = {[1] = {id = 2054021,lv = 130},[2] = {id = 2054022,lv = 130},[3] = {id = 2054023,lv = 130},[4] = {id = 2054024,lv = 130},[5] = {id = 2054025,lv = 130},[6] = {id = 2054026,lv = 130},[7] = {id = 2054027,lv = 130},[8] = {id = 2054028,lv = 130}},mon = {id = 236,desc = "tg6-1-loc1-shl",skillLv = 10,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "tg6",id = 5150120,cardId = 1101014,lv = 130,bklv = 17,star = 5,exWeapon = {unseal = 6,lv = 25},equip = {[1] = {id = 2054011,lv = 130},[2] = {id = 2054012,lv = 130},[3] = {id = 2054013,lv = 130},[4] = {id = 2054014,lv = 130},[5] = {id = 2054015,lv = 130},[6] = {id = 2054016,lv = 130},[7] = {id = 2054017,lv = 130},[8] = {id = 2054018,lv = 130}},mon = {id = 208,desc = "tg6-1-loc2-jlr",skillLv = 10,exert = 6,suffer = 6}},
			shl = {cha = "tg6",id = 5150121,cardId = 1102020,lv = 130,bklv = 17,star = 5,exWeapon = {unseal = 6,lv = 25},equip = {[1] = {id = 2054021,lv = 130},[2] = {id = 2054022,lv = 130},[3] = {id = 2054023,lv = 130},[4] = {id = 2054024,lv = 130},[5] = {id = 2054025,lv = 130},[6] = {id = 2054026,lv = 130},[7] = {id = 2054027,lv = 130},[8] = {id = 2054028,lv = 130}},mon = {id = 231,desc = "tg6-1-loc2-shl",skillLv = 10,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "tg6",id = 5150130,cardId = 1101003,lv = 130,bklv = 17,star = 5,exWeapon = {unseal = 6,lv = 25},equip = {[1] = {id = 2054011,lv = 130},[2] = {id = 2054012,lv = 130},[3] = {id = 2054013,lv = 130},[4] = {id = 2054014,lv = 130},[5] = {id = 2054015,lv = 130},[6] = {id = 2054016,lv = 130},[7] = {id = 2054017,lv = 130},[8] = {id = 2054018,lv = 130}},mon = {id = 209,desc = "tg6-1-loc3-jlr",skillLv = 10,exert = 6,suffer = 6}},
			shl = {cha = "tg6",id = 5150131,cardId = 1102005,lv = 130,bklv = 17,star = 5,exWeapon = {unseal = 6,lv = 25},equip = {[1] = {id = 2054021,lv = 130},[2] = {id = 2054022,lv = 130},[3] = {id = 2054023,lv = 130},[4] = {id = 2054024,lv = 130},[5] = {id = 2054025,lv = 130},[6] = {id = 2054026,lv = 130},[7] = {id = 2054027,lv = 130},[8] = {id = 2054028,lv = 130}},mon = {id = 232,desc = "tg6-1-loc3-shl",skillLv = 10,exert = 9,suffer = 9}}
		}
	},
	[51502] = {
		[1] = {
			jlr = {cha = "tg6",id = 5150210,cardId = 1101007,lv = 130,bklv = 17,star = 5,exWeapon = {unseal = 6,lv = 25},equip = {[1] = {id = 2054011,lv = 130},[2] = {id = 2054012,lv = 130},[3] = {id = 2054013,lv = 130},[4] = {id = 2054014,lv = 130},[5] = {id = 2054015,lv = 130},[6] = {id = 2054016,lv = 130},[7] = {id = 2054017,lv = 130},[8] = {id = 2054018,lv = 130}},mon = {id = 212,desc = "tg6-2-loc1-jlr",skillLv = 10,exert = 6,suffer = 6}},
			shl = {cha = "tg6",id = 5150211,cardId = 1102002,lv = 130,bklv = 17,star = 5,exWeapon = {unseal = 6,lv = 25},equip = {[1] = {id = 2054021,lv = 130},[2] = {id = 2054022,lv = 130},[3] = {id = 2054023,lv = 130},[4] = {id = 2054024,lv = 130},[5] = {id = 2054025,lv = 130},[6] = {id = 2054026,lv = 130},[7] = {id = 2054027,lv = 130},[8] = {id = 2054028,lv = 130}},mon = {id = 236,desc = "tg6-2-loc1-shl",skillLv = 10,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "tg6",id = 5150220,cardId = 1101014,lv = 130,bklv = 17,star = 5,exWeapon = {unseal = 6,lv = 25},equip = {[1] = {id = 2054011,lv = 130},[2] = {id = 2054012,lv = 130},[3] = {id = 2054013,lv = 130},[4] = {id = 2054014,lv = 130},[5] = {id = 2054015,lv = 130},[6] = {id = 2054016,lv = 130},[7] = {id = 2054017,lv = 130},[8] = {id = 2054018,lv = 130}},mon = {id = 208,desc = "tg6-2-loc2-jlr",skillLv = 10,exert = 6,suffer = 6}},
			shl = {cha = "tg6",id = 5150221,cardId = 1102020,lv = 130,bklv = 17,star = 5,exWeapon = {unseal = 6,lv = 25},equip = {[1] = {id = 2054021,lv = 130},[2] = {id = 2054022,lv = 130},[3] = {id = 2054023,lv = 130},[4] = {id = 2054024,lv = 130},[5] = {id = 2054025,lv = 130},[6] = {id = 2054026,lv = 130},[7] = {id = 2054027,lv = 130},[8] = {id = 2054028,lv = 130}},mon = {id = 231,desc = "tg6-2-loc2-shl",skillLv = 10,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "tg6",id = 5150230,cardId = 1101003,lv = 130,bklv = 17,star = 5,exWeapon = {unseal = 6,lv = 25},equip = {[1] = {id = 2054011,lv = 130},[2] = {id = 2054012,lv = 130},[3] = {id = 2054013,lv = 130},[4] = {id = 2054014,lv = 130},[5] = {id = 2054015,lv = 130},[6] = {id = 2054016,lv = 130},[7] = {id = 2054017,lv = 130},[8] = {id = 2054018,lv = 130}},mon = {id = 209,desc = "tg6-2-loc3-jlr",skillLv = 10,exert = 6,suffer = 6}},
			shl = {cha = "tg6",id = 5150231,cardId = 1102005,lv = 130,bklv = 17,star = 5,exWeapon = {unseal = 6,lv = 25},equip = {[1] = {id = 2054021,lv = 130},[2] = {id = 2054022,lv = 130},[3] = {id = 2054023,lv = 130},[4] = {id = 2054024,lv = 130},[5] = {id = 2054025,lv = 130},[6] = {id = 2054026,lv = 130},[7] = {id = 2054027,lv = 130},[8] = {id = 2054028,lv = 130}},mon = {id = 232,desc = "tg6-2-loc3-shl",skillLv = 10,exert = 9,suffer = 9}}
		}
	},
	[51503] = {
		[1] = {
			jlr = {cha = "tg6",id = 5150310,cardId = 1101007,lv = 130,bklv = 17,star = 5,exWeapon = {unseal = 6,lv = 25},equip = {[1] = {id = 2054011,lv = 130},[2] = {id = 2054012,lv = 130},[3] = {id = 2054013,lv = 130},[4] = {id = 2054014,lv = 130},[5] = {id = 2054015,lv = 130},[6] = {id = 2054016,lv = 130},[7] = {id = 2054017,lv = 130},[8] = {id = 2054018,lv = 130}},mon = {id = 212,desc = "tg6-3-loc1-jlr",skillLv = 10,exert = 6,suffer = 6}},
			shl = {cha = "tg6",id = 5150311,cardId = 1102002,lv = 130,bklv = 17,star = 5,exWeapon = {unseal = 6,lv = 25},equip = {[1] = {id = 2054021,lv = 130},[2] = {id = 2054022,lv = 130},[3] = {id = 2054023,lv = 130},[4] = {id = 2054024,lv = 130},[5] = {id = 2054025,lv = 130},[6] = {id = 2054026,lv = 130},[7] = {id = 2054027,lv = 130},[8] = {id = 2054028,lv = 130}},mon = {id = 236,desc = "tg6-3-loc1-shl",skillLv = 10,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "tg6",id = 5150320,cardId = 1101014,lv = 130,bklv = 17,star = 5,exWeapon = {unseal = 6,lv = 25},equip = {[1] = {id = 2054011,lv = 130},[2] = {id = 2054012,lv = 130},[3] = {id = 2054013,lv = 130},[4] = {id = 2054014,lv = 130},[5] = {id = 2054015,lv = 130},[6] = {id = 2054016,lv = 130},[7] = {id = 2054017,lv = 130},[8] = {id = 2054018,lv = 130}},mon = {id = 208,desc = "tg6-3-loc2-jlr",skillLv = 10,exert = 6,suffer = 6}},
			shl = {cha = "tg6",id = 5150321,cardId = 1102020,lv = 130,bklv = 17,star = 5,exWeapon = {unseal = 6,lv = 25},equip = {[1] = {id = 2054021,lv = 130},[2] = {id = 2054022,lv = 130},[3] = {id = 2054023,lv = 130},[4] = {id = 2054024,lv = 130},[5] = {id = 2054025,lv = 130},[6] = {id = 2054026,lv = 130},[7] = {id = 2054027,lv = 130},[8] = {id = 2054028,lv = 130}},mon = {id = 231,desc = "tg6-3-loc2-shl",skillLv = 10,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "tg6",id = 5150330,cardId = 1101003,lv = 130,bklv = 17,star = 5,exWeapon = {unseal = 6,lv = 25},equip = {[1] = {id = 2054011,lv = 130},[2] = {id = 2054012,lv = 130},[3] = {id = 2054013,lv = 130},[4] = {id = 2054014,lv = 130},[5] = {id = 2054015,lv = 130},[6] = {id = 2054016,lv = 130},[7] = {id = 2054017,lv = 130},[8] = {id = 2054018,lv = 130}},mon = {id = 209,desc = "tg6-3-loc3-jlr",skillLv = 10,exert = 6,suffer = 6}},
			shl = {cha = "tg6",id = 5150331,cardId = 1102005,lv = 130,bklv = 17,star = 5,exWeapon = {unseal = 6,lv = 25},equip = {[1] = {id = 2054021,lv = 130},[2] = {id = 2054022,lv = 130},[3] = {id = 2054023,lv = 130},[4] = {id = 2054024,lv = 130},[5] = {id = 2054025,lv = 130},[6] = {id = 2054026,lv = 130},[7] = {id = 2054027,lv = 130},[8] = {id = 2054028,lv = 130}},mon = {id = 232,desc = "tg6-3-loc3-shl",skillLv = 10,exert = 9,suffer = 9}}
		}
	},
	[51504] = {
		[1] = {
			jlr = {cha = "tg6",id = 5150410,cardId = 1101007,lv = 130,bklv = 17,star = 5,exWeapon = {unseal = 6,lv = 25},equip = {[1] = {id = 2054011,lv = 130},[2] = {id = 2054012,lv = 130},[3] = {id = 2054013,lv = 130},[4] = {id = 2054014,lv = 130},[5] = {id = 2054015,lv = 130},[6] = {id = 2054016,lv = 130},[7] = {id = 2054017,lv = 130},[8] = {id = 2054018,lv = 130}},mon = {id = 212,desc = "tg6-4-loc1-jlr",skillLv = 10,exert = 6,suffer = 6}},
			shl = {cha = "tg6",id = 5150411,cardId = 1102002,lv = 130,bklv = 17,star = 5,exWeapon = {unseal = 6,lv = 25},equip = {[1] = {id = 2054021,lv = 130},[2] = {id = 2054022,lv = 130},[3] = {id = 2054023,lv = 130},[4] = {id = 2054024,lv = 130},[5] = {id = 2054025,lv = 130},[6] = {id = 2054026,lv = 130},[7] = {id = 2054027,lv = 130},[8] = {id = 2054028,lv = 130}},mon = {id = 236,desc = "tg6-4-loc1-shl",skillLv = 10,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "tg6",id = 5150420,cardId = 1101014,lv = 130,bklv = 17,star = 5,exWeapon = {unseal = 6,lv = 25},equip = {[1] = {id = 2054011,lv = 130},[2] = {id = 2054012,lv = 130},[3] = {id = 2054013,lv = 130},[4] = {id = 2054014,lv = 130},[5] = {id = 2054015,lv = 130},[6] = {id = 2054016,lv = 130},[7] = {id = 2054017,lv = 130},[8] = {id = 2054018,lv = 130}},mon = {id = 208,desc = "tg6-4-loc2-jlr",skillLv = 10,exert = 6,suffer = 6}},
			shl = {cha = "tg6",id = 5150421,cardId = 1102020,lv = 130,bklv = 17,star = 5,exWeapon = {unseal = 6,lv = 25},equip = {[1] = {id = 2054021,lv = 130},[2] = {id = 2054022,lv = 130},[3] = {id = 2054023,lv = 130},[4] = {id = 2054024,lv = 130},[5] = {id = 2054025,lv = 130},[6] = {id = 2054026,lv = 130},[7] = {id = 2054027,lv = 130},[8] = {id = 2054028,lv = 130}},mon = {id = 231,desc = "tg6-4-loc2-shl",skillLv = 10,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "tg6",id = 5150430,cardId = 1101003,lv = 130,bklv = 17,star = 5,exWeapon = {unseal = 6,lv = 25},equip = {[1] = {id = 2054011,lv = 130},[2] = {id = 2054012,lv = 130},[3] = {id = 2054013,lv = 130},[4] = {id = 2054014,lv = 130},[5] = {id = 2054015,lv = 130},[6] = {id = 2054016,lv = 130},[7] = {id = 2054017,lv = 130},[8] = {id = 2054018,lv = 130}},mon = {id = 209,desc = "tg6-4-loc3-jlr",skillLv = 10,exert = 6,suffer = 6}},
			shl = {cha = "tg6",id = 5150431,cardId = 1102005,lv = 130,bklv = 17,star = 5,exWeapon = {unseal = 6,lv = 25},equip = {[1] = {id = 2054021,lv = 130},[2] = {id = 2054022,lv = 130},[3] = {id = 2054023,lv = 130},[4] = {id = 2054024,lv = 130},[5] = {id = 2054025,lv = 130},[6] = {id = 2054026,lv = 130},[7] = {id = 2054027,lv = 130},[8] = {id = 2054028,lv = 130}},mon = {id = 232,desc = "tg6-4-loc3-shl",skillLv = 10,exert = 9,suffer = 9}}
		}
	},
	[51505] = {
		[1] = {
			jlr = {cha = "tg6",id = 5150510,cardId = 1101007,lv = 130,bklv = 17,star = 5,exWeapon = {unseal = 6,lv = 25},equip = {[1] = {id = 2054011,lv = 130},[2] = {id = 2054012,lv = 130},[3] = {id = 2054013,lv = 130},[4] = {id = 2054014,lv = 130},[5] = {id = 2054015,lv = 130},[6] = {id = 2054016,lv = 130},[7] = {id = 2054017,lv = 130},[8] = {id = 2054018,lv = 130}},mon = {id = 212,desc = "tg6-5-loc1-jlr",skillLv = 10,exert = 6,suffer = 6}},
			shl = {cha = "tg6",id = 5150511,cardId = 1102002,lv = 130,bklv = 17,star = 5,exWeapon = {unseal = 6,lv = 25},equip = {[1] = {id = 2054021,lv = 130},[2] = {id = 2054022,lv = 130},[3] = {id = 2054023,lv = 130},[4] = {id = 2054024,lv = 130},[5] = {id = 2054025,lv = 130},[6] = {id = 2054026,lv = 130},[7] = {id = 2054027,lv = 130},[8] = {id = 2054028,lv = 130}},mon = {id = 236,desc = "tg6-5-loc1-shl",skillLv = 10,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "tg6",id = 5150520,cardId = 1101014,lv = 130,bklv = 17,star = 5,exWeapon = {unseal = 6,lv = 25},equip = {[1] = {id = 2054011,lv = 130},[2] = {id = 2054012,lv = 130},[3] = {id = 2054013,lv = 130},[4] = {id = 2054014,lv = 130},[5] = {id = 2054015,lv = 130},[6] = {id = 2054016,lv = 130},[7] = {id = 2054017,lv = 130},[8] = {id = 2054018,lv = 130}},mon = {id = 208,desc = "tg6-5-loc2-jlr",skillLv = 10,exert = 6,suffer = 6}},
			shl = {cha = "tg6",id = 5150521,cardId = 1102020,lv = 130,bklv = 17,star = 5,exWeapon = {unseal = 6,lv = 25},equip = {[1] = {id = 2054021,lv = 130},[2] = {id = 2054022,lv = 130},[3] = {id = 2054023,lv = 130},[4] = {id = 2054024,lv = 130},[5] = {id = 2054025,lv = 130},[6] = {id = 2054026,lv = 130},[7] = {id = 2054027,lv = 130},[8] = {id = 2054028,lv = 130}},mon = {id = 231,desc = "tg6-5-loc2-shl",skillLv = 10,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "tg6",id = 5150530,cardId = 1101003,lv = 130,bklv = 17,star = 5,exWeapon = {unseal = 6,lv = 25},equip = {[1] = {id = 2054011,lv = 130},[2] = {id = 2054012,lv = 130},[3] = {id = 2054013,lv = 130},[4] = {id = 2054014,lv = 130},[5] = {id = 2054015,lv = 130},[6] = {id = 2054016,lv = 130},[7] = {id = 2054017,lv = 130},[8] = {id = 2054018,lv = 130}},mon = {id = 209,desc = "tg6-5-loc3-jlr",skillLv = 10,exert = 6,suffer = 6}},
			shl = {cha = "tg6",id = 5150531,cardId = 1102005,lv = 130,bklv = 17,star = 5,exWeapon = {unseal = 6,lv = 25},equip = {[1] = {id = 2054021,lv = 130},[2] = {id = 2054022,lv = 130},[3] = {id = 2054023,lv = 130},[4] = {id = 2054024,lv = 130},[5] = {id = 2054025,lv = 130},[6] = {id = 2054026,lv = 130},[7] = {id = 2054027,lv = 130},[8] = {id = 2054028,lv = 130}},mon = {id = 232,desc = "tg6-5-loc3-shl",skillLv = 10,exert = 9,suffer = 9}}
		}
	},
	[51601] = {
		[1] = {
			jlr = {cha = "xy",id = 5160110,cardId = 1101007,lv = 140,bklv = 19,star = 5,exWeapon = {unseal = 7,lv = 30},equip = {[1] = {id = 2054031,lv = 140},[2] = {id = 2054032,lv = 140},[3] = {id = 2054033,lv = 140},[4] = {id = 2054054,lv = 140},[5] = {id = 2054055,lv = 140},[6] = {id = 2054056,lv = 140},[7] = {id = 2054037,lv = 140},[8] = {id = 2054038,lv = 140}},mon = {id = 212,desc = "xy-1-loc1-jlr",skillLv = 10,exert = 6,suffer = 6}},
			shl = {cha = "xy",id = 5160111,cardId = 1102002,lv = 140,bklv = 19,star = 5,exWeapon = {unseal = 7,lv = 30},equip = {[1] = {id = 2054041,lv = 140},[2] = {id = 2054042,lv = 140},[3] = {id = 2054043,lv = 140},[4] = {id = 2054064,lv = 140},[5] = {id = 2054065,lv = 140},[6] = {id = 2054066,lv = 140},[7] = {id = 2054047,lv = 140},[8] = {id = 2054048,lv = 140}},mon = {id = 236,desc = "xy-1-loc1-shl",skillLv = 10,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "xy",id = 5160120,cardId = 1101014,lv = 140,bklv = 19,star = 5,exWeapon = {unseal = 7,lv = 30},equip = {[1] = {id = 2054031,lv = 140},[2] = {id = 2054032,lv = 140},[3] = {id = 2054033,lv = 140},[4] = {id = 2054054,lv = 140},[5] = {id = 2054055,lv = 140},[6] = {id = 2054056,lv = 140},[7] = {id = 2054037,lv = 140},[8] = {id = 2054038,lv = 140}},mon = {id = 208,desc = "xy-1-loc2-jlr",skillLv = 10,exert = 6,suffer = 6}},
			shl = {cha = "xy",id = 5160121,cardId = 1102020,lv = 140,bklv = 19,star = 5,exWeapon = {unseal = 7,lv = 30},equip = {[1] = {id = 2054041,lv = 140},[2] = {id = 2054042,lv = 140},[3] = {id = 2054043,lv = 140},[4] = {id = 2054064,lv = 140},[5] = {id = 2054065,lv = 140},[6] = {id = 2054066,lv = 140},[7] = {id = 2054047,lv = 140},[8] = {id = 2054048,lv = 140}},mon = {id = 231,desc = "xy-1-loc2-shl",skillLv = 10,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "xy",id = 5160130,cardId = 1101003,lv = 140,bklv = 19,star = 5,exWeapon = {unseal = 7,lv = 30},equip = {[1] = {id = 2054031,lv = 140},[2] = {id = 2054032,lv = 140},[3] = {id = 2054033,lv = 140},[4] = {id = 2054054,lv = 140},[5] = {id = 2054055,lv = 140},[6] = {id = 2054056,lv = 140},[7] = {id = 2054037,lv = 140},[8] = {id = 2054038,lv = 140}},mon = {id = 209,desc = "xy-1-loc3-jlr",skillLv = 10,exert = 6,suffer = 6}},
			shl = {cha = "xy",id = 5160131,cardId = 1102005,lv = 140,bklv = 19,star = 5,exWeapon = {unseal = 7,lv = 30},equip = {[1] = {id = 2054041,lv = 140},[2] = {id = 2054042,lv = 140},[3] = {id = 2054043,lv = 140},[4] = {id = 2054064,lv = 140},[5] = {id = 2054065,lv = 140},[6] = {id = 2054066,lv = 140},[7] = {id = 2054047,lv = 140},[8] = {id = 2054048,lv = 140}},mon = {id = 232,desc = "xy-1-loc3-shl",skillLv = 10,exert = 9,suffer = 9}}
		}
	},
	[51602] = {
		[1] = {
			jlr = {cha = "xy",id = 5160210,cardId = 1101007,lv = 140,bklv = 19,star = 5,exWeapon = {unseal = 7,lv = 30},equip = {[1] = {id = 2054031,lv = 140},[2] = {id = 2054032,lv = 140},[3] = {id = 2054033,lv = 140},[4] = {id = 2054054,lv = 140},[5] = {id = 2054055,lv = 140},[6] = {id = 2054056,lv = 140},[7] = {id = 2054037,lv = 140},[8] = {id = 2054038,lv = 140}},mon = {id = 212,desc = "xy-2-loc1-jlr",skillLv = 10,exert = 6,suffer = 6}},
			shl = {cha = "xy",id = 5160211,cardId = 1102002,lv = 140,bklv = 19,star = 5,exWeapon = {unseal = 7,lv = 30},equip = {[1] = {id = 2054041,lv = 140},[2] = {id = 2054042,lv = 140},[3] = {id = 2054043,lv = 140},[4] = {id = 2054064,lv = 140},[5] = {id = 2054065,lv = 140},[6] = {id = 2054066,lv = 140},[7] = {id = 2054047,lv = 140},[8] = {id = 2054048,lv = 140}},mon = {id = 236,desc = "xy-2-loc1-shl",skillLv = 10,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "xy",id = 5160220,cardId = 1101014,lv = 140,bklv = 19,star = 5,exWeapon = {unseal = 7,lv = 30},equip = {[1] = {id = 2054031,lv = 140},[2] = {id = 2054032,lv = 140},[3] = {id = 2054033,lv = 140},[4] = {id = 2054054,lv = 140},[5] = {id = 2054055,lv = 140},[6] = {id = 2054056,lv = 140},[7] = {id = 2054037,lv = 140},[8] = {id = 2054038,lv = 140}},mon = {id = 208,desc = "xy-2-loc2-jlr",skillLv = 10,exert = 6,suffer = 6}},
			shl = {cha = "xy",id = 5160221,cardId = 1102020,lv = 140,bklv = 19,star = 5,exWeapon = {unseal = 7,lv = 30},equip = {[1] = {id = 2054041,lv = 140},[2] = {id = 2054042,lv = 140},[3] = {id = 2054043,lv = 140},[4] = {id = 2054064,lv = 140},[5] = {id = 2054065,lv = 140},[6] = {id = 2054066,lv = 140},[7] = {id = 2054047,lv = 140},[8] = {id = 2054048,lv = 140}},mon = {id = 231,desc = "xy-2-loc2-shl",skillLv = 10,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "xy",id = 5160230,cardId = 1101003,lv = 140,bklv = 19,star = 5,exWeapon = {unseal = 7,lv = 30},equip = {[1] = {id = 2054031,lv = 140},[2] = {id = 2054032,lv = 140},[3] = {id = 2054033,lv = 140},[4] = {id = 2054054,lv = 140},[5] = {id = 2054055,lv = 140},[6] = {id = 2054056,lv = 140},[7] = {id = 2054037,lv = 140},[8] = {id = 2054038,lv = 140}},mon = {id = 209,desc = "xy-2-loc3-jlr",skillLv = 10,exert = 6,suffer = 6}},
			shl = {cha = "xy",id = 5160231,cardId = 1102005,lv = 140,bklv = 19,star = 5,exWeapon = {unseal = 7,lv = 30},equip = {[1] = {id = 2054041,lv = 140},[2] = {id = 2054042,lv = 140},[3] = {id = 2054043,lv = 140},[4] = {id = 2054064,lv = 140},[5] = {id = 2054065,lv = 140},[6] = {id = 2054066,lv = 140},[7] = {id = 2054047,lv = 140},[8] = {id = 2054048,lv = 140}},mon = {id = 232,desc = "xy-2-loc3-shl",skillLv = 10,exert = 9,suffer = 9}}
		}
	},
	[51603] = {
		[1] = {
			jlr = {cha = "xy",id = 5160310,cardId = 1101007,lv = 140,bklv = 19,star = 5,exWeapon = {unseal = 7,lv = 30},equip = {[1] = {id = 2054031,lv = 140},[2] = {id = 2054032,lv = 140},[3] = {id = 2054033,lv = 140},[4] = {id = 2054054,lv = 140},[5] = {id = 2054055,lv = 140},[6] = {id = 2054056,lv = 140},[7] = {id = 2054037,lv = 140},[8] = {id = 2054038,lv = 140}},mon = {id = 212,desc = "xy-3-loc1-jlr",skillLv = 10,exert = 6,suffer = 6}},
			shl = {cha = "xy",id = 5160311,cardId = 1102002,lv = 140,bklv = 19,star = 5,exWeapon = {unseal = 7,lv = 30},equip = {[1] = {id = 2054041,lv = 140},[2] = {id = 2054042,lv = 140},[3] = {id = 2054043,lv = 140},[4] = {id = 2054064,lv = 140},[5] = {id = 2054065,lv = 140},[6] = {id = 2054066,lv = 140},[7] = {id = 2054047,lv = 140},[8] = {id = 2054048,lv = 140}},mon = {id = 236,desc = "xy-3-loc1-shl",skillLv = 10,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "xy",id = 5160320,cardId = 1101014,lv = 140,bklv = 19,star = 5,exWeapon = {unseal = 7,lv = 30},equip = {[1] = {id = 2054031,lv = 140},[2] = {id = 2054032,lv = 140},[3] = {id = 2054033,lv = 140},[4] = {id = 2054054,lv = 140},[5] = {id = 2054055,lv = 140},[6] = {id = 2054056,lv = 140},[7] = {id = 2054037,lv = 140},[8] = {id = 2054038,lv = 140}},mon = {id = 208,desc = "xy-3-loc2-jlr",skillLv = 10,exert = 6,suffer = 6}},
			shl = {cha = "xy",id = 5160321,cardId = 1102020,lv = 140,bklv = 19,star = 5,exWeapon = {unseal = 7,lv = 30},equip = {[1] = {id = 2054041,lv = 140},[2] = {id = 2054042,lv = 140},[3] = {id = 2054043,lv = 140},[4] = {id = 2054064,lv = 140},[5] = {id = 2054065,lv = 140},[6] = {id = 2054066,lv = 140},[7] = {id = 2054047,lv = 140},[8] = {id = 2054048,lv = 140}},mon = {id = 231,desc = "xy-3-loc2-shl",skillLv = 10,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "xy",id = 5160330,cardId = 1101003,lv = 140,bklv = 19,star = 5,exWeapon = {unseal = 7,lv = 30},equip = {[1] = {id = 2054031,lv = 140},[2] = {id = 2054032,lv = 140},[3] = {id = 2054033,lv = 140},[4] = {id = 2054054,lv = 140},[5] = {id = 2054055,lv = 140},[6] = {id = 2054056,lv = 140},[7] = {id = 2054037,lv = 140},[8] = {id = 2054038,lv = 140}},mon = {id = 209,desc = "xy-3-loc3-jlr",skillLv = 10,exert = 6,suffer = 6}},
			shl = {cha = "xy",id = 5160331,cardId = 1102005,lv = 140,bklv = 19,star = 5,exWeapon = {unseal = 7,lv = 30},equip = {[1] = {id = 2054041,lv = 140},[2] = {id = 2054042,lv = 140},[3] = {id = 2054043,lv = 140},[4] = {id = 2054064,lv = 140},[5] = {id = 2054065,lv = 140},[6] = {id = 2054066,lv = 140},[7] = {id = 2054047,lv = 140},[8] = {id = 2054048,lv = 140}},mon = {id = 232,desc = "xy-3-loc3-shl",skillLv = 10,exert = 9,suffer = 9}}
		}
	},
	[51604] = {
		[1] = {
			jlr = {cha = "xy",id = 5160410,cardId = 1101007,lv = 140,bklv = 19,star = 5,exWeapon = {unseal = 7,lv = 30},equip = {[1] = {id = 2054031,lv = 140},[2] = {id = 2054032,lv = 140},[3] = {id = 2054033,lv = 140},[4] = {id = 2054054,lv = 140},[5] = {id = 2054055,lv = 140},[6] = {id = 2054056,lv = 140},[7] = {id = 2054037,lv = 140},[8] = {id = 2054038,lv = 140}},mon = {id = 212,desc = "xy-4-loc1-jlr",skillLv = 10,exert = 6,suffer = 6}},
			shl = {cha = "xy",id = 5160411,cardId = 1102002,lv = 140,bklv = 19,star = 5,exWeapon = {unseal = 7,lv = 30},equip = {[1] = {id = 2054041,lv = 140},[2] = {id = 2054042,lv = 140},[3] = {id = 2054043,lv = 140},[4] = {id = 2054064,lv = 140},[5] = {id = 2054065,lv = 140},[6] = {id = 2054066,lv = 140},[7] = {id = 2054047,lv = 140},[8] = {id = 2054048,lv = 140}},mon = {id = 236,desc = "xy-4-loc1-shl",skillLv = 10,exert = 9,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "xy",id = 5160420,cardId = 1101014,lv = 140,bklv = 19,star = 5,exWeapon = {unseal = 7,lv = 30},equip = {[1] = {id = 2054031,lv = 140},[2] = {id = 2054032,lv = 140},[3] = {id = 2054033,lv = 140},[4] = {id = 2054054,lv = 140},[5] = {id = 2054055,lv = 140},[6] = {id = 2054056,lv = 140},[7] = {id = 2054037,lv = 140},[8] = {id = 2054038,lv = 140}},mon = {id = 208,desc = "xy-4-loc2-jlr",skillLv = 10,exert = 6,suffer = 6}},
			shl = {cha = "xy",id = 5160421,cardId = 1102020,lv = 140,bklv = 19,star = 5,exWeapon = {unseal = 7,lv = 30},equip = {[1] = {id = 2054041,lv = 140},[2] = {id = 2054042,lv = 140},[3] = {id = 2054043,lv = 140},[4] = {id = 2054064,lv = 140},[5] = {id = 2054065,lv = 140},[6] = {id = 2054066,lv = 140},[7] = {id = 2054047,lv = 140},[8] = {id = 2054048,lv = 140}},mon = {id = 231,desc = "xy-4-loc2-shl",skillLv = 10,exert = 9,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "xy",id = 5160430,cardId = 1101003,lv = 140,bklv = 19,star = 5,exWeapon = {unseal = 7,lv = 30},equip = {[1] = {id = 2054031,lv = 140},[2] = {id = 2054032,lv = 140},[3] = {id = 2054033,lv = 140},[4] = {id = 2054054,lv = 140},[5] = {id = 2054055,lv = 140},[6] = {id = 2054056,lv = 140},[7] = {id = 2054037,lv = 140},[8] = {id = 2054038,lv = 140}},mon = {id = 209,desc = "xy-4-loc3-jlr",skillLv = 10,exert = 6,suffer = 6}},
			shl = {cha = "xy",id = 5160431,cardId = 1102005,lv = 140,bklv = 19,star = 5,exWeapon = {unseal = 7,lv = 30},equip = {[1] = {id = 2054041,lv = 140},[2] = {id = 2054042,lv = 140},[3] = {id = 2054043,lv = 140},[4] = {id = 2054064,lv = 140},[5] = {id = 2054065,lv = 140},[6] = {id = 2054066,lv = 140},[7] = {id = 2054047,lv = 140},[8] = {id = 2054048,lv = 140}},mon = {id = 232,desc = "xy-4-loc3-shl",skillLv = 10,exert = 9,suffer = 9}}
		}
	},
	[60101] = {
		[1] = {
			jlr = {cha = "601",id = 6010110,cardId = 1101007,lv = 20,bklv = 2,star = 1,equip = {[1] = {id = 2013011,lv = 20},[2] = {id = 2013012,lv = 20},[3] = {id = 2013013,lv = 20},[4] = {id = 2013014,lv = 20},[5] = {id = 2013015,lv = 20},[6] = {id = 2013016,lv = 20},[7] = {id = 2013017,lv = 20},[8] = {id = 2013018,lv = 20}},mon = {id = 201,desc = "rcb-tp-1-loc-1-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "601",id = 6010111,cardId = 1102012,lv = 20,bklv = 2,star = 1,equip = {[1] = {id = 2013021,lv = 20},[2] = {id = 2013022,lv = 20},[3] = {id = 2013023,lv = 20},[4] = {id = 2013024,lv = 20},[5] = {id = 2013025,lv = 20},[6] = {id = 2013026,lv = 20},[7] = {id = 2013027,lv = 20},[8] = {id = 2013028,lv = 20}},mon = {id = 254,desc = "rcb-tp-1-loc-1-shl",skillLv = 1,exert = 10,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "601",id = 6010120,cardId = 1101003,lv = 20,bklv = 2,star = 1,equip = {[1] = {id = 2013011,lv = 20},[2] = {id = 2013012,lv = 20},[3] = {id = 2013013,lv = 20},[4] = {id = 2013014,lv = 20},[5] = {id = 2013015,lv = 20},[6] = {id = 2013016,lv = 20},[7] = {id = 2013017,lv = 20},[8] = {id = 2013018,lv = 20}},mon = {id = 202,desc = "rcb-tp-1-loc-2-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "601",id = 6010121,cardId = 1102005,lv = 20,bklv = 2,star = 1,equip = {[1] = {id = 2013021,lv = 20},[2] = {id = 2013022,lv = 20},[3] = {id = 2013023,lv = 20},[4] = {id = 2013024,lv = 20},[5] = {id = 2013025,lv = 20},[6] = {id = 2013026,lv = 20},[7] = {id = 2013027,lv = 20},[8] = {id = 2013028,lv = 20}},mon = {id = 243,desc = "rcb-tp-1-loc-2-shl",skillLv = 1,exert = 10,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "601",id = 6010130,cardId = 1101014,lv = 20,bklv = 2,star = 1,equip = {[1] = {id = 2013011,lv = 20},[2] = {id = 2013012,lv = 20},[3] = {id = 2013013,lv = 20},[4] = {id = 2013014,lv = 20},[5] = {id = 2013015,lv = 20},[6] = {id = 2013016,lv = 20},[7] = {id = 2013017,lv = 20},[8] = {id = 2013018,lv = 20}},mon = {id = 203,desc = "rcb-tp-1-loc-3-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "601",id = 6010131,cardId = 1102020,lv = 20,bklv = 2,star = 1,equip = {[1] = {id = 2013021,lv = 20},[2] = {id = 2013022,lv = 20},[3] = {id = 2013023,lv = 20},[4] = {id = 2013024,lv = 20},[5] = {id = 2013025,lv = 20},[6] = {id = 2013026,lv = 20},[7] = {id = 2013027,lv = 20},[8] = {id = 2013028,lv = 20}},mon = {id = 244,desc = "rcb-tp-1-loc-3-shl",skillLv = 1,exert = 10,suffer = 9}}
		}
	},
	[60102] = {
		[1] = {
			jlr = {cha = "601",id = 6010210,cardId = 1101007,lv = 35,bklv = 3,star = 1,equip = {[1] = {id = 2014011,lv = 35},[2] = {id = 2014012,lv = 35},[3] = {id = 2014013,lv = 35},[4] = {id = 2014014,lv = 35},[5] = {id = 2014015,lv = 35},[6] = {id = 2014016,lv = 35},[7] = {id = 2014017,lv = 35},[8] = {id = 2014018,lv = 35}},mon = {id = 213,desc = "rcb-tp-2-loc-1-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "601",id = 6010211,cardId = 1102012,lv = 35,bklv = 3,star = 1,equip = {[1] = {id = 2014021,lv = 35},[2] = {id = 2014022,lv = 35},[3] = {id = 2014023,lv = 35},[4] = {id = 2014024,lv = 35},[5] = {id = 2014025,lv = 35},[6] = {id = 2014026,lv = 35},[7] = {id = 2014027,lv = 35},[8] = {id = 2014028,lv = 35}},mon = {id = 258,desc = "rcb-tp-2-loc-1-shl",skillLv = 1,exert = 10,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "601",id = 6010220,cardId = 1101003,lv = 35,bklv = 3,star = 1,equip = {[1] = {id = 2014011,lv = 35},[2] = {id = 2014012,lv = 35},[3] = {id = 2014013,lv = 35},[4] = {id = 2014014,lv = 35},[5] = {id = 2014015,lv = 35},[6] = {id = 2014016,lv = 35},[7] = {id = 2014017,lv = 35},[8] = {id = 2014018,lv = 35}},mon = {id = 212,desc = "rcb-tp-2-loc-2-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "601",id = 6010221,cardId = 1102005,lv = 35,bklv = 3,star = 1,equip = {[1] = {id = 2014021,lv = 35},[2] = {id = 2014022,lv = 35},[3] = {id = 2014023,lv = 35},[4] = {id = 2014024,lv = 35},[5] = {id = 2014025,lv = 35},[6] = {id = 2014026,lv = 35},[7] = {id = 2014027,lv = 35},[8] = {id = 2014028,lv = 35}},mon = {id = 257,desc = "rcb-tp-2-loc-2-shl",skillLv = 1,exert = 10,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "601",id = 6010230,cardId = 1101014,lv = 35,bklv = 3,star = 1,equip = {[1] = {id = 2014011,lv = 35},[2] = {id = 2014012,lv = 35},[3] = {id = 2014013,lv = 35},[4] = {id = 2014014,lv = 35},[5] = {id = 2014015,lv = 35},[6] = {id = 2014016,lv = 35},[7] = {id = 2014017,lv = 35},[8] = {id = 2014018,lv = 35}},mon = {id = 208,desc = "rcb-tp-2-loc-3-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "601",id = 6010231,cardId = 1102020,lv = 35,bklv = 3,star = 1,equip = {[1] = {id = 2014021,lv = 35},[2] = {id = 2014022,lv = 35},[3] = {id = 2014023,lv = 35},[4] = {id = 2014024,lv = 35},[5] = {id = 2014025,lv = 35},[6] = {id = 2014026,lv = 35},[7] = {id = 2014027,lv = 35},[8] = {id = 2014028,lv = 35}},mon = {id = 252,desc = "rcb-tp-2-loc-3-shl",skillLv = 1,exert = 10,suffer = 9}}
		}
	},
	[60103] = {
		[1] = {
			jlr = {cha = "601",id = 6010310,cardId = 1101007,lv = 55,bklv = 5,star = 1,equip = {[1] = {id = 2024011,lv = 55},[2] = {id = 2024012,lv = 55},[3] = {id = 2024013,lv = 55},[4] = {id = 2024014,lv = 55},[5] = {id = 2024015,lv = 55},[6] = {id = 2024016,lv = 55},[7] = {id = 2024017,lv = 55},[8] = {id = 2024018,lv = 55}},mon = {id = 207,desc = "rcb-tp-3-loc-1-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "601",id = 6010311,cardId = 1102012,lv = 55,bklv = 5,star = 1,exWeapon = {lv = 2},equip = {[1] = {id = 2024021,lv = 55},[2] = {id = 2024022,lv = 55},[3] = {id = 2024023,lv = 55},[4] = {id = 2024024,lv = 55},[5] = {id = 2024025,lv = 55},[6] = {id = 2024026,lv = 55},[7] = {id = 2024027,lv = 55},[8] = {id = 2024028,lv = 55}},mon = {id = 241,desc = "rcb-tp-3-loc-1-shl",skillLv = 1,exert = 10,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "601",id = 6010320,cardId = 1101003,lv = 55,bklv = 5,star = 1,equip = {[1] = {id = 2024011,lv = 55},[2] = {id = 2024012,lv = 55},[3] = {id = 2024013,lv = 55},[4] = {id = 2024014,lv = 55},[5] = {id = 2024015,lv = 55},[6] = {id = 2024016,lv = 55},[7] = {id = 2024017,lv = 55},[8] = {id = 2024018,lv = 55}},mon = {id = 214,desc = "rcb-tp-3-loc-2-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "601",id = 6010321,cardId = 1102005,lv = 55,bklv = 5,star = 1,exWeapon = {lv = 2},equip = {[1] = {id = 2024021,lv = 55},[2] = {id = 2024022,lv = 55},[3] = {id = 2024023,lv = 55},[4] = {id = 2024024,lv = 55},[5] = {id = 2024025,lv = 55},[6] = {id = 2024026,lv = 55},[7] = {id = 2024027,lv = 55},[8] = {id = 2024028,lv = 55}},mon = {id = 259,desc = "rcb-tp-3-loc-2-shl",skillLv = 1,exert = 10,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "601",id = 6010330,cardId = 1101014,lv = 55,bklv = 5,star = 1,equip = {[1] = {id = 2024011,lv = 55},[2] = {id = 2024012,lv = 55},[3] = {id = 2024013,lv = 55},[4] = {id = 2024014,lv = 55},[5] = {id = 2024015,lv = 55},[6] = {id = 2024016,lv = 55},[7] = {id = 2024017,lv = 55},[8] = {id = 2024018,lv = 55}},mon = {id = 203,desc = "rcb-tp-3-loc-3-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "601",id = 6010331,cardId = 1102020,lv = 55,bklv = 5,star = 1,exWeapon = {lv = 2},equip = {[1] = {id = 2024021,lv = 55},[2] = {id = 2024022,lv = 55},[3] = {id = 2024023,lv = 55},[4] = {id = 2024024,lv = 55},[5] = {id = 2024025,lv = 55},[6] = {id = 2024026,lv = 55},[7] = {id = 2024027,lv = 55},[8] = {id = 2024028,lv = 55}},mon = {id = 244,desc = "rcb-tp-3-loc-3-shl",skillLv = 1,exert = 10,suffer = 9}}
		}
	},
	[60104] = {
		[1] = {
			jlr = {cha = "601",id = 6010410,cardId = 1101007,lv = 75,bklv = 7,star = 1,equip = {[1] = {id = 2024011,lv = 75},[2] = {id = 2024012,lv = 75},[3] = {id = 2024013,lv = 75},[4] = {id = 2024014,lv = 75},[5] = {id = 2024015,lv = 75},[6] = {id = 2024016,lv = 75},[7] = {id = 2024017,lv = 75},[8] = {id = 2024018,lv = 75}},mon = {id = 209,desc = "rcb-tp-4-loc-1-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "601",id = 6010411,cardId = 1102012,lv = 75,bklv = 7,star = 1,exWeapon = {lv = 5},equip = {[1] = {id = 2024021,lv = 75},[2] = {id = 2024022,lv = 75},[3] = {id = 2024023,lv = 75},[4] = {id = 2024024,lv = 75},[5] = {id = 2024025,lv = 75},[6] = {id = 2024026,lv = 75},[7] = {id = 2024027,lv = 75},[8] = {id = 2024028,lv = 75}},mon = {id = 253,desc = "rcb-tp-4-loc-1-shl",skillLv = 1,exert = 10,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "601",id = 6010420,cardId = 1101003,lv = 75,bklv = 7,star = 1,equip = {[1] = {id = 2024011,lv = 75},[2] = {id = 2024012,lv = 75},[3] = {id = 2024013,lv = 75},[4] = {id = 2024014,lv = 75},[5] = {id = 2024015,lv = 75},[6] = {id = 2024016,lv = 75},[7] = {id = 2024017,lv = 75},[8] = {id = 2024018,lv = 75}},mon = {id = 207,desc = "rcb-tp-4-loc-2-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "601",id = 6010421,cardId = 1102005,lv = 75,bklv = 7,star = 1,exWeapon = {lv = 5},equip = {[1] = {id = 2024021,lv = 75},[2] = {id = 2024022,lv = 75},[3] = {id = 2024023,lv = 75},[4] = {id = 2024024,lv = 75},[5] = {id = 2024025,lv = 75},[6] = {id = 2024026,lv = 75},[7] = {id = 2024027,lv = 75},[8] = {id = 2024028,lv = 75}},mon = {id = 242,desc = "rcb-tp-4-loc-2-shl",skillLv = 1,exert = 10,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "601",id = 6010430,cardId = 1101014,lv = 75,bklv = 7,star = 1,equip = {[1] = {id = 2024011,lv = 75},[2] = {id = 2024012,lv = 75},[3] = {id = 2024013,lv = 75},[4] = {id = 2024014,lv = 75},[5] = {id = 2024015,lv = 75},[6] = {id = 2024016,lv = 75},[7] = {id = 2024017,lv = 75},[8] = {id = 2024018,lv = 75}},mon = {id = 211,desc = "rcb-tp-4-loc-3-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "601",id = 6010431,cardId = 1102020,lv = 75,bklv = 7,star = 1,exWeapon = {lv = 5},equip = {[1] = {id = 2024021,lv = 75},[2] = {id = 2024022,lv = 75},[3] = {id = 2024023,lv = 75},[4] = {id = 2024024,lv = 75},[5] = {id = 2024025,lv = 75},[6] = {id = 2024026,lv = 75},[7] = {id = 2024027,lv = 75},[8] = {id = 2024028,lv = 75}},mon = {id = 256,desc = "rcb-tp-4-loc-3-shl",skillLv = 1,exert = 10,suffer = 9}}
		}
	},
	[60105] = {
		[1] = {
			jlr = {cha = "601",id = 6010510,cardId = 1101007,lv = 95,bklv = 9,star = 1,equip = {[1] = {id = 2034011,lv = 95},[2] = {id = 2034012,lv = 95},[3] = {id = 2034013,lv = 95},[4] = {id = 2034014,lv = 95},[5] = {id = 2034015,lv = 95},[6] = {id = 2034016,lv = 95},[7] = {id = 2034017,lv = 95},[8] = {id = 2034018,lv = 95}},mon = {id = 215,desc = "rcb-tp-5-loc-1-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "601",id = 6010511,cardId = 1102012,lv = 95,bklv = 9,star = 1,exWeapon = {lv = 7},equip = {[1] = {id = 2034021,lv = 95},[2] = {id = 2034022,lv = 95},[3] = {id = 2034023,lv = 95},[4] = {id = 2034024,lv = 95},[5] = {id = 2034025,lv = 95},[6] = {id = 2034026,lv = 95},[7] = {id = 2034027,lv = 95},[8] = {id = 2034028,lv = 95}},mon = {id = 260,desc = "rcb-tp-5-loc-1-shl",skillLv = 1,exert = 10,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "601",id = 6010520,cardId = 1101003,lv = 95,bklv = 9,star = 1,equip = {[1] = {id = 2034011,lv = 95},[2] = {id = 2034012,lv = 95},[3] = {id = 2034013,lv = 95},[4] = {id = 2034014,lv = 95},[5] = {id = 2034015,lv = 95},[6] = {id = 2034016,lv = 95},[7] = {id = 2034017,lv = 95},[8] = {id = 2034018,lv = 95}},mon = {id = 207,desc = "rcb-tp-5-loc-2-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "601",id = 6010521,cardId = 1102005,lv = 95,bklv = 9,star = 1,exWeapon = {lv = 7},equip = {[1] = {id = 2034021,lv = 95},[2] = {id = 2034022,lv = 95},[3] = {id = 2034023,lv = 95},[4] = {id = 2034024,lv = 95},[5] = {id = 2034025,lv = 95},[6] = {id = 2034026,lv = 95},[7] = {id = 2034027,lv = 95},[8] = {id = 2034028,lv = 95}},mon = {id = 248,desc = "rcb-tp-5-loc-2-shl",skillLv = 1,exert = 10,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "601",id = 6010530,cardId = 1101014,lv = 95,bklv = 9,star = 1,equip = {[1] = {id = 2034011,lv = 95},[2] = {id = 2034012,lv = 95},[3] = {id = 2034013,lv = 95},[4] = {id = 2034014,lv = 95},[5] = {id = 2034015,lv = 95},[6] = {id = 2034016,lv = 95},[7] = {id = 2034017,lv = 95},[8] = {id = 2034018,lv = 95}},mon = {id = 211,desc = "rcb-tp-5-loc-3-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "601",id = 6010531,cardId = 1102020,lv = 95,bklv = 9,star = 1,exWeapon = {lv = 7},equip = {[1] = {id = 2034021,lv = 95},[2] = {id = 2034022,lv = 95},[3] = {id = 2034023,lv = 95},[4] = {id = 2034024,lv = 95},[5] = {id = 2034025,lv = 95},[6] = {id = 2034026,lv = 95},[7] = {id = 2034027,lv = 95},[8] = {id = 2034028,lv = 95}},mon = {id = 256,desc = "rcb-tp-5-loc-3-shl",skillLv = 1,exert = 10,suffer = 9}}
		}
	},
	[60106] = {
		[1] = {
			jlr = {cha = "601",id = 6010610,cardId = 1101007,lv = 115,bklv = 11,star = 1,equip = {[1] = {id = 2044011,lv = 115},[2] = {id = 2044012,lv = 115},[3] = {id = 2044013,lv = 115},[4] = {id = 2044014,lv = 115},[5] = {id = 2044015,lv = 115},[6] = {id = 2044016,lv = 115},[7] = {id = 2044017,lv = 115},[8] = {id = 2044018,lv = 115}},mon = {id = 206,desc = "rcb-tp-6-loc-1-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "601",id = 6010611,cardId = 1102012,lv = 115,bklv = 11,star = 1,exWeapon = {lv = 9},equip = {[1] = {id = 2044021,lv = 115},[2] = {id = 2044022,lv = 115},[3] = {id = 2044023,lv = 115},[4] = {id = 2044024,lv = 115},[5] = {id = 2044025,lv = 115},[6] = {id = 2044026,lv = 115},[7] = {id = 2044027,lv = 115},[8] = {id = 2044028,lv = 115}},mon = {id = 246,desc = "rcb-tp-6-loc-1-shl",skillLv = 1,exert = 10,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "601",id = 6010620,cardId = 1101003,lv = 115,bklv = 11,star = 1,equip = {[1] = {id = 2044011,lv = 115},[2] = {id = 2044012,lv = 115},[3] = {id = 2044013,lv = 115},[4] = {id = 2044014,lv = 115},[5] = {id = 2044015,lv = 115},[6] = {id = 2044016,lv = 115},[7] = {id = 2044017,lv = 115},[8] = {id = 2044018,lv = 115}},mon = {id = 214,desc = "rcb-tp-6-loc-2-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "601",id = 6010621,cardId = 1102005,lv = 115,bklv = 11,star = 1,exWeapon = {lv = 9},equip = {[1] = {id = 2044021,lv = 115},[2] = {id = 2044022,lv = 115},[3] = {id = 2044023,lv = 115},[4] = {id = 2044024,lv = 115},[5] = {id = 2044025,lv = 115},[6] = {id = 2044026,lv = 115},[7] = {id = 2044027,lv = 115},[8] = {id = 2044028,lv = 115}},mon = {id = 259,desc = "rcb-tp-6-loc-2-shl",skillLv = 1,exert = 10,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "601",id = 6010630,cardId = 1101014,lv = 115,bklv = 11,star = 1,equip = {[1] = {id = 2044011,lv = 115},[2] = {id = 2044012,lv = 115},[3] = {id = 2044013,lv = 115},[4] = {id = 2044014,lv = 115},[5] = {id = 2044015,lv = 115},[6] = {id = 2044016,lv = 115},[7] = {id = 2044017,lv = 115},[8] = {id = 2044018,lv = 115}},mon = {id = 207,desc = "rcb-tp-6-loc-3-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "601",id = 6010631,cardId = 1102020,lv = 115,bklv = 11,star = 1,exWeapon = {lv = 9},equip = {[1] = {id = 2044021,lv = 115},[2] = {id = 2044022,lv = 115},[3] = {id = 2044023,lv = 115},[4] = {id = 2044024,lv = 115},[5] = {id = 2044025,lv = 115},[6] = {id = 2044026,lv = 115},[7] = {id = 2044027,lv = 115},[8] = {id = 2044028,lv = 115}},mon = {id = 249,desc = "rcb-tp-6-loc-3-shl",skillLv = 1,exert = 10,suffer = 9}}
		}
	},
	[60107] = {
		[1] = {
			jlr = {cha = "601",id = 6010710,cardId = 1101007,lv = 135,bklv = 13,star = 1,equip = {[1] = {id = 2044011,lv = 135},[2] = {id = 2044012,lv = 135},[3] = {id = 2044013,lv = 135},[4] = {id = 2044014,lv = 135},[5] = {id = 2044015,lv = 135},[6] = {id = 2044016,lv = 135},[7] = {id = 2044017,lv = 135},[8] = {id = 2044018,lv = 135}},mon = {id = 207,desc = "rcb-tp-7-loc-1-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "601",id = 6010711,cardId = 1102012,lv = 135,bklv = 13,star = 1,exWeapon = {lv = 11},equip = {[1] = {id = 2044021,lv = 135},[2] = {id = 2044022,lv = 135},[3] = {id = 2044023,lv = 135},[4] = {id = 2044024,lv = 135},[5] = {id = 2044025,lv = 135},[6] = {id = 2044026,lv = 135},[7] = {id = 2044027,lv = 135},[8] = {id = 2044028,lv = 135}},mon = {id = 251,desc = "rcb-tp-7-loc-1-shl",skillLv = 1,exert = 10,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "601",id = 6010720,cardId = 1101003,lv = 135,bklv = 13,star = 1,equip = {[1] = {id = 2044011,lv = 135},[2] = {id = 2044012,lv = 135},[3] = {id = 2044013,lv = 135},[4] = {id = 2044014,lv = 135},[5] = {id = 2044015,lv = 135},[6] = {id = 2044016,lv = 135},[7] = {id = 2044017,lv = 135},[8] = {id = 2044018,lv = 135}},mon = {id = 205,desc = "rcb-tp-7-loc-2-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "601",id = 6010721,cardId = 1102005,lv = 135,bklv = 13,star = 1,exWeapon = {lv = 11},equip = {[1] = {id = 2044021,lv = 135},[2] = {id = 2044022,lv = 135},[3] = {id = 2044023,lv = 135},[4] = {id = 2044024,lv = 135},[5] = {id = 2044025,lv = 135},[6] = {id = 2044026,lv = 135},[7] = {id = 2044027,lv = 135},[8] = {id = 2044028,lv = 135}},mon = {id = 250,desc = "rcb-tp-7-loc-2-shl",skillLv = 1,exert = 10,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "601",id = 6010730,cardId = 1101014,lv = 135,bklv = 13,star = 1,equip = {[1] = {id = 2044011,lv = 135},[2] = {id = 2044012,lv = 135},[3] = {id = 2044013,lv = 135},[4] = {id = 2044014,lv = 135},[5] = {id = 2044015,lv = 135},[6] = {id = 2044016,lv = 135},[7] = {id = 2044017,lv = 135},[8] = {id = 2044018,lv = 135}},mon = {id = 210,desc = "rcb-tp-7-loc-3-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "601",id = 6010731,cardId = 1102020,lv = 135,bklv = 13,star = 1,exWeapon = {lv = 11},equip = {[1] = {id = 2044021,lv = 135},[2] = {id = 2044022,lv = 135},[3] = {id = 2044023,lv = 135},[4] = {id = 2044024,lv = 135},[5] = {id = 2044025,lv = 135},[6] = {id = 2044026,lv = 135},[7] = {id = 2044027,lv = 135},[8] = {id = 2044028,lv = 135}},mon = {id = 255,desc = "rcb-tp-7-loc-3-shl",skillLv = 1,exert = 10,suffer = 9}}
		}
	},
	[60108] = {
		[1] = {
			jlr = {cha = "601",id = 6010810,cardId = 1101007,lv = 155,bklv = 15,star = 1,equip = {[1] = {id = 2054011,lv = 155},[2] = {id = 2054012,lv = 155},[3] = {id = 2054013,lv = 155},[4] = {id = 2054014,lv = 155},[5] = {id = 2054015,lv = 155},[6] = {id = 2054016,lv = 155},[7] = {id = 2054017,lv = 155},[8] = {id = 2054018,lv = 155}},mon = {id = 205,desc = "rcb-tp-8-loc-1-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "601",id = 6010811,cardId = 1102012,lv = 155,bklv = 15,star = 1,exWeapon = {lv = 15},equip = {[1] = {id = 2054021,lv = 155},[2] = {id = 2054022,lv = 155},[3] = {id = 2054023,lv = 155},[4] = {id = 2054024,lv = 155},[5] = {id = 2054025,lv = 155},[6] = {id = 2054026,lv = 155},[7] = {id = 2054027,lv = 155},[8] = {id = 2054028,lv = 155}},mon = {id = 240,desc = "rcb-tp-8-loc-1-shl",skillLv = 1,exert = 10,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "601",id = 6010820,cardId = 1101003,lv = 155,bklv = 15,star = 1,equip = {[1] = {id = 2054011,lv = 155},[2] = {id = 2054012,lv = 155},[3] = {id = 2054013,lv = 155},[4] = {id = 2054014,lv = 155},[5] = {id = 2054015,lv = 155},[6] = {id = 2054016,lv = 155},[7] = {id = 2054017,lv = 155},[8] = {id = 2054018,lv = 155}},mon = {id = 207,desc = "rcb-tp-8-loc-2-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "601",id = 6010821,cardId = 1102005,lv = 155,bklv = 15,star = 1,exWeapon = {lv = 15},equip = {[1] = {id = 2054021,lv = 155},[2] = {id = 2054022,lv = 155},[3] = {id = 2054023,lv = 155},[4] = {id = 2054024,lv = 155},[5] = {id = 2054025,lv = 155},[6] = {id = 2054026,lv = 155},[7] = {id = 2054027,lv = 155},[8] = {id = 2054028,lv = 155}},mon = {id = 242,desc = "rcb-tp-8-loc-2-shl",skillLv = 1,exert = 10,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "601",id = 6010830,cardId = 1101014,lv = 155,bklv = 15,star = 1,equip = {[1] = {id = 2054011,lv = 155},[2] = {id = 2054012,lv = 155},[3] = {id = 2054013,lv = 155},[4] = {id = 2054014,lv = 155},[5] = {id = 2054015,lv = 155},[6] = {id = 2054016,lv = 155},[7] = {id = 2054017,lv = 155},[8] = {id = 2054018,lv = 155}},mon = {id = 210,desc = "rcb-tp-8-loc-3-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "601",id = 6010831,cardId = 1102020,lv = 155,bklv = 15,star = 1,exWeapon = {lv = 15},equip = {[1] = {id = 2054021,lv = 155},[2] = {id = 2054022,lv = 155},[3] = {id = 2054023,lv = 155},[4] = {id = 2054024,lv = 155},[5] = {id = 2054025,lv = 155},[6] = {id = 2054026,lv = 155},[7] = {id = 2054027,lv = 155},[8] = {id = 2054028,lv = 155}},mon = {id = 255,desc = "rcb-tp-8-loc-3-shl",skillLv = 1,exert = 10,suffer = 9}}
		}
	},
	[60109] = {
		[1] = {
			jlr = {cha = "601",id = 6010910,cardId = 1101007,lv = 175,bklv = 17,star = 1,equip = {[1] = {id = 2054011,lv = 175},[2] = {id = 2054012,lv = 175},[3] = {id = 2054013,lv = 175},[4] = {id = 2054014,lv = 175},[5] = {id = 2054015,lv = 175},[6] = {id = 2054016,lv = 175},[7] = {id = 2054017,lv = 175},[8] = {id = 2054018,lv = 175}},mon = {id = 205,desc = "rcb-tp-9-loc-1-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "601",id = 6010911,cardId = 1102012,lv = 175,bklv = 17,star = 1,exWeapon = {lv = 18},equip = {[1] = {id = 2054021,lv = 175},[2] = {id = 2054022,lv = 175},[3] = {id = 2054023,lv = 175},[4] = {id = 2054024,lv = 175},[5] = {id = 2054025,lv = 175},[6] = {id = 2054026,lv = 175},[7] = {id = 2054027,lv = 175},[8] = {id = 2054028,lv = 175}},mon = {id = 240,desc = "rcb-tp-9-loc-1-shl",skillLv = 1,exert = 10,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "601",id = 6010920,cardId = 1101003,lv = 175,bklv = 17,star = 1,equip = {[1] = {id = 2054011,lv = 175},[2] = {id = 2054012,lv = 175},[3] = {id = 2054013,lv = 175},[4] = {id = 2054014,lv = 175},[5] = {id = 2054015,lv = 175},[6] = {id = 2054016,lv = 175},[7] = {id = 2054017,lv = 175},[8] = {id = 2054018,lv = 175}},mon = {id = 212,desc = "rcb-tp-9-loc-2-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "601",id = 6010921,cardId = 1102005,lv = 175,bklv = 17,star = 1,exWeapon = {lv = 18},equip = {[1] = {id = 2054021,lv = 175},[2] = {id = 2054022,lv = 175},[3] = {id = 2054023,lv = 175},[4] = {id = 2054024,lv = 175},[5] = {id = 2054025,lv = 175},[6] = {id = 2054026,lv = 175},[7] = {id = 2054027,lv = 175},[8] = {id = 2054028,lv = 175}},mon = {id = 257,desc = "rcb-tp-9-loc-2-shl",skillLv = 1,exert = 10,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "601",id = 6010930,cardId = 1101014,lv = 175,bklv = 17,star = 1,equip = {[1] = {id = 2054011,lv = 175},[2] = {id = 2054012,lv = 175},[3] = {id = 2054013,lv = 175},[4] = {id = 2054014,lv = 175},[5] = {id = 2054015,lv = 175},[6] = {id = 2054016,lv = 175},[7] = {id = 2054017,lv = 175},[8] = {id = 2054018,lv = 175}},mon = {id = 210,desc = "rcb-tp-9-loc-3-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "601",id = 6010931,cardId = 1102020,lv = 175,bklv = 17,star = 1,exWeapon = {lv = 18},equip = {[1] = {id = 2054021,lv = 175},[2] = {id = 2054022,lv = 175},[3] = {id = 2054023,lv = 175},[4] = {id = 2054024,lv = 175},[5] = {id = 2054025,lv = 175},[6] = {id = 2054026,lv = 175},[7] = {id = 2054027,lv = 175},[8] = {id = 2054028,lv = 175}},mon = {id = 255,desc = "rcb-tp-9-loc-3-shl",skillLv = 1,exert = 10,suffer = 9}}
		}
	},
	[60110] = {
		[1] = {
			jlr = {cha = "601",id = 6011010,cardId = 1101007,lv = 195,bklv = 19,star = 1,equip = {[1] = {id = 2064011,lv = 195},[2] = {id = 2064012,lv = 195},[3] = {id = 2064013,lv = 195},[4] = {id = 2064014,lv = 195},[5] = {id = 2064015,lv = 195},[6] = {id = 2064016,lv = 195},[7] = {id = 2064017,lv = 195},[8] = {id = 2064018,lv = 195}},mon = {id = 206,desc = "rcb-tp-10-loc-1-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "601",id = 6011011,cardId = 1102012,lv = 195,bklv = 19,star = 1,exWeapon = {lv = 20},equip = {[1] = {id = 2064021,lv = 195},[2] = {id = 2064022,lv = 195},[3] = {id = 2064023,lv = 195},[4] = {id = 2064024,lv = 195},[5] = {id = 2064025,lv = 195},[6] = {id = 2064026,lv = 195},[7] = {id = 2064027,lv = 195},[8] = {id = 2064028,lv = 195}},mon = {id = 246,desc = "rcb-tp-10-loc-1-shl",skillLv = 1,exert = 10,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "601",id = 6011020,cardId = 1101003,lv = 195,bklv = 19,star = 1,equip = {[1] = {id = 2064011,lv = 195},[2] = {id = 2064012,lv = 195},[3] = {id = 2064013,lv = 195},[4] = {id = 2064014,lv = 195},[5] = {id = 2064015,lv = 195},[6] = {id = 2064016,lv = 195},[7] = {id = 2064017,lv = 195},[8] = {id = 2064018,lv = 195}},mon = {id = 209,desc = "rcb-tp-10-loc-2-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "601",id = 6011021,cardId = 1102005,lv = 195,bklv = 19,star = 1,exWeapon = {lv = 20},equip = {[1] = {id = 2064021,lv = 195},[2] = {id = 2064022,lv = 195},[3] = {id = 2064023,lv = 195},[4] = {id = 2064024,lv = 195},[5] = {id = 2064025,lv = 195},[6] = {id = 2064026,lv = 195},[7] = {id = 2064027,lv = 195},[8] = {id = 2064028,lv = 195}},mon = {id = 253,desc = "rcb-tp-10-loc-2-shl",skillLv = 1,exert = 10,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "601",id = 6011030,cardId = 1101014,lv = 195,bklv = 19,star = 1,equip = {[1] = {id = 2064011,lv = 195},[2] = {id = 2064012,lv = 195},[3] = {id = 2064013,lv = 195},[4] = {id = 2064014,lv = 195},[5] = {id = 2064015,lv = 195},[6] = {id = 2064016,lv = 195},[7] = {id = 2064017,lv = 195},[8] = {id = 2064018,lv = 195}},mon = {id = 212,desc = "rcb-tp-10-loc-3-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "601",id = 6011031,cardId = 1102020,lv = 195,bklv = 19,star = 1,exWeapon = {lv = 20},equip = {[1] = {id = 2064021,lv = 195},[2] = {id = 2064022,lv = 195},[3] = {id = 2064023,lv = 195},[4] = {id = 2064024,lv = 195},[5] = {id = 2064025,lv = 195},[6] = {id = 2064026,lv = 195},[7] = {id = 2064027,lv = 195},[8] = {id = 2064028,lv = 195}},mon = {id = 252,desc = "rcb-tp-10-loc-3-shl",skillLv = 1,exert = 10,suffer = 9}}
		}
	},
	[60201] = {
		[1] = {
			jlr = {cha = "602",id = 6020110,cardId = 1101007,lv = 30,bklv = 3,star = 1,equip = {[1] = {id = 2014011,lv = 30},[2] = {id = 2014012,lv = 30},[3] = {id = 2014013,lv = 30},[4] = {id = 2014014,lv = 30},[5] = {id = 2014015,lv = 30},[6] = {id = 2014016,lv = 30},[7] = {id = 2014017,lv = 30},[8] = {id = 2014018,lv = 30}},mon = {id = 206,desc = "jbb-tp-1-loc-1-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "602",id = 6020111,cardId = 1102012,lv = 30,bklv = 3,star = 1,equip = {[1] = {id = 2014021,lv = 30},[2] = {id = 2014022,lv = 30},[3] = {id = 2014023,lv = 30},[4] = {id = 2014024,lv = 30},[5] = {id = 2014025,lv = 30},[6] = {id = 2014026,lv = 30},[7] = {id = 2014027,lv = 30},[8] = {id = 2014028,lv = 30}},mon = {id = 246,desc = "jbb-tp-1-loc-1-shl",skillLv = 1,exert = 10,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "602",id = 6020120,cardId = 1101003,lv = 30,bklv = 3,star = 1,equip = {[1] = {id = 2014011,lv = 30},[2] = {id = 2014012,lv = 30},[3] = {id = 2014013,lv = 30},[4] = {id = 2014014,lv = 30},[5] = {id = 2014015,lv = 30},[6] = {id = 2014016,lv = 30},[7] = {id = 2014017,lv = 30},[8] = {id = 2014018,lv = 30}},mon = {id = 214,desc = "jbb-tp-1-loc-2-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "602",id = 6020121,cardId = 1102005,lv = 30,bklv = 3,star = 1,equip = {[1] = {id = 2014021,lv = 30},[2] = {id = 2014022,lv = 30},[3] = {id = 2014023,lv = 30},[4] = {id = 2014024,lv = 30},[5] = {id = 2014025,lv = 30},[6] = {id = 2014026,lv = 30},[7] = {id = 2014027,lv = 30},[8] = {id = 2014028,lv = 30}},mon = {id = 259,desc = "jbb-tp-1-loc-2-shl",skillLv = 1,exert = 10,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "602",id = 6020130,cardId = 1101014,lv = 30,bklv = 3,star = 1,equip = {[1] = {id = 2014011,lv = 30},[2] = {id = 2014012,lv = 30},[3] = {id = 2014013,lv = 30},[4] = {id = 2014014,lv = 30},[5] = {id = 2014015,lv = 30},[6] = {id = 2014016,lv = 30},[7] = {id = 2014017,lv = 30},[8] = {id = 2014018,lv = 30}},mon = {id = 210,desc = "jbb-tp-1-loc-3-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "602",id = 6020131,cardId = 1102020,lv = 30,bklv = 3,star = 1,equip = {[1] = {id = 2014021,lv = 30},[2] = {id = 2014022,lv = 30},[3] = {id = 2014023,lv = 30},[4] = {id = 2014024,lv = 30},[5] = {id = 2014025,lv = 30},[6] = {id = 2014026,lv = 30},[7] = {id = 2014027,lv = 30},[8] = {id = 2014028,lv = 30}},mon = {id = 255,desc = "jbb-tp-1-loc-3-shl",skillLv = 1,exert = 10,suffer = 9}}
		}
	},
	[60202] = {
		[1] = {
			jlr = {cha = "602",id = 6020210,cardId = 1101007,lv = 50,bklv = 5,star = 1,equip = {[1] = {id = 2024011,lv = 50},[2] = {id = 2024012,lv = 50},[3] = {id = 2024013,lv = 50},[4] = {id = 2024014,lv = 50},[5] = {id = 2024015,lv = 50},[6] = {id = 2024016,lv = 50},[7] = {id = 2024017,lv = 50},[8] = {id = 2024018,lv = 50}},mon = {id = 215,desc = "jbb-tp-2-loc-1-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "602",id = 6020211,cardId = 1102012,lv = 50,bklv = 5,star = 1,exWeapon = {lv = 2},equip = {[1] = {id = 2024021,lv = 50},[2] = {id = 2024022,lv = 50},[3] = {id = 2024023,lv = 50},[4] = {id = 2024024,lv = 50},[5] = {id = 2024025,lv = 50},[6] = {id = 2024026,lv = 50},[7] = {id = 2024027,lv = 50},[8] = {id = 2024028,lv = 50}},mon = {id = 260,desc = "jbb-tp-2-loc-1-shl",skillLv = 1,exert = 10,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "602",id = 6020220,cardId = 1101003,lv = 50,bklv = 5,star = 1,equip = {[1] = {id = 2024011,lv = 50},[2] = {id = 2024012,lv = 50},[3] = {id = 2024013,lv = 50},[4] = {id = 2024014,lv = 50},[5] = {id = 2024015,lv = 50},[6] = {id = 2024016,lv = 50},[7] = {id = 2024017,lv = 50},[8] = {id = 2024018,lv = 50}},mon = {id = 205,desc = "jbb-tp-2-loc-2-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "602",id = 6020221,cardId = 1102005,lv = 50,bklv = 5,star = 1,exWeapon = {lv = 2},equip = {[1] = {id = 2024021,lv = 50},[2] = {id = 2024022,lv = 50},[3] = {id = 2024023,lv = 50},[4] = {id = 2024024,lv = 50},[5] = {id = 2024025,lv = 50},[6] = {id = 2024026,lv = 50},[7] = {id = 2024027,lv = 50},[8] = {id = 2024028,lv = 50}},mon = {id = 250,desc = "jbb-tp-2-loc-2-shl",skillLv = 1,exert = 10,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "602",id = 6020230,cardId = 1101014,lv = 50,bklv = 5,star = 1,equip = {[1] = {id = 2024011,lv = 50},[2] = {id = 2024012,lv = 50},[3] = {id = 2024013,lv = 50},[4] = {id = 2024014,lv = 50},[5] = {id = 2024015,lv = 50},[6] = {id = 2024016,lv = 50},[7] = {id = 2024017,lv = 50},[8] = {id = 2024018,lv = 50}},mon = {id = 211,desc = "jbb-tp-2-loc-3-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "602",id = 6020231,cardId = 1102020,lv = 50,bklv = 5,star = 1,exWeapon = {lv = 2},equip = {[1] = {id = 2024021,lv = 50},[2] = {id = 2024022,lv = 50},[3] = {id = 2024023,lv = 50},[4] = {id = 2024024,lv = 50},[5] = {id = 2024025,lv = 50},[6] = {id = 2024026,lv = 50},[7] = {id = 2024027,lv = 50},[8] = {id = 2024028,lv = 50}},mon = {id = 256,desc = "jbb-tp-2-loc-3-shl",skillLv = 1,exert = 10,suffer = 9}}
		}
	},
	[60203] = {
		[1] = {
			jlr = {cha = "602",id = 6020310,cardId = 1101007,lv = 70,bklv = 7,star = 1,equip = {[1] = {id = 2034011,lv = 70},[2] = {id = 2034012,lv = 70},[3] = {id = 2034013,lv = 70},[4] = {id = 2034014,lv = 70},[5] = {id = 2034015,lv = 70},[6] = {id = 2034016,lv = 70},[7] = {id = 2034017,lv = 70},[8] = {id = 2034018,lv = 70}},mon = {id = 205,desc = "jbb-tp-3-loc-1-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "602",id = 6020311,cardId = 1102012,lv = 70,bklv = 7,star = 1,exWeapon = {lv = 5},equip = {[1] = {id = 2034021,lv = 70},[2] = {id = 2034022,lv = 70},[3] = {id = 2034023,lv = 70},[4] = {id = 2034024,lv = 70},[5] = {id = 2034025,lv = 70},[6] = {id = 2034026,lv = 70},[7] = {id = 2034027,lv = 70},[8] = {id = 2034028,lv = 70}},mon = {id = 240,desc = "jbb-tp-3-loc-1-shl",skillLv = 1,exert = 10,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "602",id = 6020320,cardId = 1101003,lv = 70,bklv = 7,star = 1,equip = {[1] = {id = 2034011,lv = 70},[2] = {id = 2034012,lv = 70},[3] = {id = 2034013,lv = 70},[4] = {id = 2034014,lv = 70},[5] = {id = 2034015,lv = 70},[6] = {id = 2034016,lv = 70},[7] = {id = 2034017,lv = 70},[8] = {id = 2034018,lv = 70}},mon = {id = 204,desc = "jbb-tp-3-loc-2-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "602",id = 6020321,cardId = 1102005,lv = 70,bklv = 7,star = 1,exWeapon = {lv = 5},equip = {[1] = {id = 2034021,lv = 70},[2] = {id = 2034022,lv = 70},[3] = {id = 2034023,lv = 70},[4] = {id = 2034024,lv = 70},[5] = {id = 2034025,lv = 70},[6] = {id = 2034026,lv = 70},[7] = {id = 2034027,lv = 70},[8] = {id = 2034028,lv = 70}},mon = {id = 245,desc = "jbb-tp-3-loc-2-shl",skillLv = 1,exert = 10,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "602",id = 6020330,cardId = 1101014,lv = 70,bklv = 7,star = 1,equip = {[1] = {id = 2034011,lv = 70},[2] = {id = 2034012,lv = 70},[3] = {id = 2034013,lv = 70},[4] = {id = 2034014,lv = 70},[5] = {id = 2034015,lv = 70},[6] = {id = 2034016,lv = 70},[7] = {id = 2034017,lv = 70},[8] = {id = 2034018,lv = 70}},mon = {id = 207,desc = "jbb-tp-3-loc-3-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "602",id = 6020331,cardId = 1102020,lv = 70,bklv = 7,star = 1,exWeapon = {lv = 5},equip = {[1] = {id = 2034021,lv = 70},[2] = {id = 2034022,lv = 70},[3] = {id = 2034023,lv = 70},[4] = {id = 2034024,lv = 70},[5] = {id = 2034025,lv = 70},[6] = {id = 2034026,lv = 70},[7] = {id = 2034027,lv = 70},[8] = {id = 2034028,lv = 70}},mon = {id = 249,desc = "jbb-tp-3-loc-3-shl",skillLv = 1,exert = 10,suffer = 9}}
		}
	},
	[60204] = {
		[1] = {
			jlr = {cha = "602",id = 6020410,cardId = 1101007,lv = 90,bklv = 9,star = 1,equip = {[1] = {id = 2044011,lv = 90},[2] = {id = 2044012,lv = 90},[3] = {id = 2044013,lv = 90},[4] = {id = 2044014,lv = 90},[5] = {id = 2044015,lv = 90},[6] = {id = 2044016,lv = 90},[7] = {id = 2044017,lv = 90},[8] = {id = 2044018,lv = 90}},mon = {id = 207,desc = "jbb-tp-4-loc-1-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "602",id = 6020411,cardId = 1102012,lv = 90,bklv = 9,star = 1,exWeapon = {lv = 10},equip = {[1] = {id = 2044021,lv = 90},[2] = {id = 2044022,lv = 90},[3] = {id = 2044023,lv = 90},[4] = {id = 2044024,lv = 90},[5] = {id = 2044025,lv = 90},[6] = {id = 2044026,lv = 90},[7] = {id = 2044027,lv = 90},[8] = {id = 2044028,lv = 90}},mon = {id = 254,desc = "jbb-tp-4-loc-1-shl",skillLv = 1,exert = 10,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "602",id = 6020420,cardId = 1101003,lv = 90,bklv = 9,star = 1,equip = {[1] = {id = 2044011,lv = 90},[2] = {id = 2044012,lv = 90},[3] = {id = 2044013,lv = 90},[4] = {id = 2044014,lv = 90},[5] = {id = 2044015,lv = 90},[6] = {id = 2044016,lv = 90},[7] = {id = 2044017,lv = 90},[8] = {id = 2044018,lv = 90}},mon = {id = 204,desc = "jbb-tp-4-loc-2-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "602",id = 6020421,cardId = 1102005,lv = 90,bklv = 9,star = 1,exWeapon = {lv = 10},equip = {[1] = {id = 2044021,lv = 90},[2] = {id = 2044022,lv = 90},[3] = {id = 2044023,lv = 90},[4] = {id = 2044024,lv = 90},[5] = {id = 2044025,lv = 90},[6] = {id = 2044026,lv = 90},[7] = {id = 2044027,lv = 90},[8] = {id = 2044028,lv = 90}},mon = {id = 245,desc = "jbb-tp-4-loc-2-shl",skillLv = 1,exert = 10,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "602",id = 6020430,cardId = 1101014,lv = 90,bklv = 9,star = 1,equip = {[1] = {id = 2044011,lv = 90},[2] = {id = 2044012,lv = 90},[3] = {id = 2044013,lv = 90},[4] = {id = 2044014,lv = 90},[5] = {id = 2044015,lv = 90},[6] = {id = 2044016,lv = 90},[7] = {id = 2044017,lv = 90},[8] = {id = 2044018,lv = 90}},mon = {id = 210,desc = "jbb-tp-4-loc-3-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "602",id = 6020431,cardId = 1102020,lv = 90,bklv = 9,star = 1,exWeapon = {lv = 10},equip = {[1] = {id = 2044021,lv = 90},[2] = {id = 2044022,lv = 90},[3] = {id = 2044023,lv = 90},[4] = {id = 2044024,lv = 90},[5] = {id = 2044025,lv = 90},[6] = {id = 2044026,lv = 90},[7] = {id = 2044027,lv = 90},[8] = {id = 2044028,lv = 90}},mon = {id = 255,desc = "jbb-tp-4-loc-3-shl",skillLv = 1,exert = 10,suffer = 9}}
		}
	},
	[60205] = {
		[1] = {
			jlr = {cha = "602",id = 6020510,cardId = 1101007,lv = 110,bklv = 11,star = 1,equip = {[1] = {id = 2054011,lv = 110},[2] = {id = 2054012,lv = 110},[3] = {id = 2054013,lv = 110},[4] = {id = 2054014,lv = 110},[5] = {id = 2054015,lv = 110},[6] = {id = 2054016,lv = 110},[7] = {id = 2054017,lv = 110},[8] = {id = 2054018,lv = 110}},mon = {id = 201,desc = "jbb-tp-5-loc-1-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "602",id = 6020511,cardId = 1102012,lv = 110,bklv = 11,star = 1,exWeapon = {lv = 15},equip = {[1] = {id = 2054021,lv = 110},[2] = {id = 2054022,lv = 110},[3] = {id = 2054023,lv = 110},[4] = {id = 2054024,lv = 110},[5] = {id = 2054025,lv = 110},[6] = {id = 2054026,lv = 110},[7] = {id = 2054027,lv = 110},[8] = {id = 2054028,lv = 110}},mon = {id = 254,desc = "jbb-tp-5-loc-1-shl",skillLv = 1,exert = 10,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "602",id = 6020520,cardId = 1101003,lv = 110,bklv = 11,star = 1,equip = {[1] = {id = 2054011,lv = 110},[2] = {id = 2054012,lv = 110},[3] = {id = 2054013,lv = 110},[4] = {id = 2054014,lv = 110},[5] = {id = 2054015,lv = 110},[6] = {id = 2054016,lv = 110},[7] = {id = 2054017,lv = 110},[8] = {id = 2054018,lv = 110}},mon = {id = 202,desc = "jbb-tp-5-loc-2-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "602",id = 6020521,cardId = 1102005,lv = 110,bklv = 11,star = 1,exWeapon = {lv = 15},equip = {[1] = {id = 2054021,lv = 110},[2] = {id = 2054022,lv = 110},[3] = {id = 2054023,lv = 110},[4] = {id = 2054024,lv = 110},[5] = {id = 2054025,lv = 110},[6] = {id = 2054026,lv = 110},[7] = {id = 2054027,lv = 110},[8] = {id = 2054028,lv = 110}},mon = {id = 243,desc = "jbb-tp-5-loc-2-shl",skillLv = 1,exert = 10,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "602",id = 6020530,cardId = 1101014,lv = 110,bklv = 11,star = 1,equip = {[1] = {id = 2054011,lv = 110},[2] = {id = 2054012,lv = 110},[3] = {id = 2054013,lv = 110},[4] = {id = 2054014,lv = 110},[5] = {id = 2054015,lv = 110},[6] = {id = 2054016,lv = 110},[7] = {id = 2054017,lv = 110},[8] = {id = 2054018,lv = 110}},mon = {id = 203,desc = "jbb-tp-5-loc-3-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "602",id = 6020531,cardId = 1102020,lv = 110,bklv = 11,star = 1,exWeapon = {lv = 15},equip = {[1] = {id = 2054021,lv = 110},[2] = {id = 2054022,lv = 110},[3] = {id = 2054023,lv = 110},[4] = {id = 2054024,lv = 110},[5] = {id = 2054025,lv = 110},[6] = {id = 2054026,lv = 110},[7] = {id = 2054027,lv = 110},[8] = {id = 2054028,lv = 110}},mon = {id = 244,desc = "jbb-tp-5-loc-3-shl",skillLv = 1,exert = 10,suffer = 9}}
		}
	},
	[60206] = {
		[1] = {
			jlr = {cha = "602",id = 6020610,cardId = 1101007,lv = 130,bklv = 13,star = 1,equip = {[1] = {id = 2064011,lv = 130},[2] = {id = 2064012,lv = 130},[3] = {id = 2064013,lv = 130},[4] = {id = 2064014,lv = 130},[5] = {id = 2064015,lv = 130},[6] = {id = 2064016,lv = 130},[7] = {id = 2064017,lv = 130},[8] = {id = 2064018,lv = 130}},mon = {id = 213,desc = "jbb-tp-6-loc-1-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "602",id = 6020611,cardId = 1102012,lv = 130,bklv = 13,star = 1,exWeapon = {lv = 20},equip = {[1] = {id = 2064021,lv = 130},[2] = {id = 2064022,lv = 130},[3] = {id = 2064023,lv = 130},[4] = {id = 2064024,lv = 130},[5] = {id = 2064025,lv = 130},[6] = {id = 2064026,lv = 130},[7] = {id = 2064027,lv = 130},[8] = {id = 2064028,lv = 130}},mon = {id = 258,desc = "jbb-tp-6-loc-1-shl",skillLv = 1,exert = 10,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "602",id = 6020620,cardId = 1101003,lv = 130,bklv = 13,star = 1,equip = {[1] = {id = 2064011,lv = 130},[2] = {id = 2064012,lv = 130},[3] = {id = 2064013,lv = 130},[4] = {id = 2064014,lv = 130},[5] = {id = 2064015,lv = 130},[6] = {id = 2064016,lv = 130},[7] = {id = 2064017,lv = 130},[8] = {id = 2064018,lv = 130}},mon = {id = 212,desc = "jbb-tp-6-loc-2-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "602",id = 6020621,cardId = 1102005,lv = 130,bklv = 13,star = 1,exWeapon = {lv = 20},equip = {[1] = {id = 2064021,lv = 130},[2] = {id = 2064022,lv = 130},[3] = {id = 2064023,lv = 130},[4] = {id = 2064024,lv = 130},[5] = {id = 2064025,lv = 130},[6] = {id = 2064026,lv = 130},[7] = {id = 2064027,lv = 130},[8] = {id = 2064028,lv = 130}},mon = {id = 257,desc = "jbb-tp-6-loc-2-shl",skillLv = 1,exert = 10,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "602",id = 6020630,cardId = 1101014,lv = 130,bklv = 13,star = 1,equip = {[1] = {id = 2064011,lv = 130},[2] = {id = 2064012,lv = 130},[3] = {id = 2064013,lv = 130},[4] = {id = 2064014,lv = 130},[5] = {id = 2064015,lv = 130},[6] = {id = 2064016,lv = 130},[7] = {id = 2064017,lv = 130},[8] = {id = 2064018,lv = 130}},mon = {id = 208,desc = "jbb-tp-6-loc-3-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "602",id = 6020631,cardId = 1102020,lv = 130,bklv = 13,star = 1,exWeapon = {lv = 20},equip = {[1] = {id = 2064021,lv = 130},[2] = {id = 2064022,lv = 130},[3] = {id = 2064023,lv = 130},[4] = {id = 2064024,lv = 130},[5] = {id = 2064025,lv = 130},[6] = {id = 2064026,lv = 130},[7] = {id = 2064027,lv = 130},[8] = {id = 2064028,lv = 130}},mon = {id = 252,desc = "jbb-tp-6-loc-3-shl",skillLv = 1,exert = 10,suffer = 9}}
		}
	},
	[60301] = {
		[1] = {
			jlr = {cha = "603",id = 6030110,cardId = 1101007,lv = 40,bklv = 4,star = 1,equip = {[1] = {id = 2024011,lv = 40},[2] = {id = 2024012,lv = 40},[3] = {id = 2024013,lv = 40},[4] = {id = 2024014,lv = 40},[5] = {id = 2024015,lv = 40},[6] = {id = 2024016,lv = 40},[7] = {id = 2024017,lv = 40},[8] = {id = 2024018,lv = 40}},mon = {id = 207,desc = "rlb-tp-1-loc-1-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "603",id = 6030111,cardId = 1102012,lv = 40,bklv = 4,star = 1,equip = {[1] = {id = 2024021,lv = 40},[2] = {id = 2024022,lv = 40},[3] = {id = 2024023,lv = 40},[4] = {id = 2024024,lv = 40},[5] = {id = 2024025,lv = 40},[6] = {id = 2024026,lv = 40},[7] = {id = 2024027,lv = 40},[8] = {id = 2024028,lv = 40}},mon = {id = 241,desc = "rlb-tp-1-loc-1-shl",skillLv = 1,exert = 10,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "603",id = 6030120,cardId = 1101003,lv = 40,bklv = 4,star = 1,equip = {[1] = {id = 2024011,lv = 40},[2] = {id = 2024012,lv = 40},[3] = {id = 2024013,lv = 40},[4] = {id = 2024014,lv = 40},[5] = {id = 2024015,lv = 40},[6] = {id = 2024016,lv = 40},[7] = {id = 2024017,lv = 40},[8] = {id = 2024018,lv = 40}},mon = {id = 214,desc = "rlb-tp-1-loc-2-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "603",id = 6030121,cardId = 1102005,lv = 40,bklv = 4,star = 1,equip = {[1] = {id = 2024021,lv = 40},[2] = {id = 2024022,lv = 40},[3] = {id = 2024023,lv = 40},[4] = {id = 2024024,lv = 40},[5] = {id = 2024025,lv = 40},[6] = {id = 2024026,lv = 40},[7] = {id = 2024027,lv = 40},[8] = {id = 2024028,lv = 40}},mon = {id = 259,desc = "rlb-tp-1-loc-2-shl",skillLv = 1,exert = 10,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "603",id = 6030130,cardId = 1101014,lv = 40,bklv = 4,star = 1,equip = {[1] = {id = 2024011,lv = 40},[2] = {id = 2024012,lv = 40},[3] = {id = 2024013,lv = 40},[4] = {id = 2024014,lv = 40},[5] = {id = 2024015,lv = 40},[6] = {id = 2024016,lv = 40},[7] = {id = 2024017,lv = 40},[8] = {id = 2024018,lv = 40}},mon = {id = 203,desc = "rlb-tp-1-loc-3-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "603",id = 6030131,cardId = 1102020,lv = 40,bklv = 4,star = 1,equip = {[1] = {id = 2024021,lv = 40},[2] = {id = 2024022,lv = 40},[3] = {id = 2024023,lv = 40},[4] = {id = 2024024,lv = 40},[5] = {id = 2024025,lv = 40},[6] = {id = 2024026,lv = 40},[7] = {id = 2024027,lv = 40},[8] = {id = 2024028,lv = 40}},mon = {id = 244,desc = "rlb-tp-1-loc-3-shl",skillLv = 1,exert = 10,suffer = 9}}
		}
	},
	[60302] = {
		[1] = {
			jlr = {cha = "603",id = 6030210,cardId = 1101007,lv = 60,bklv = 6,star = 1,equip = {[1] = {id = 2034011,lv = 60},[2] = {id = 2034012,lv = 60},[3] = {id = 2034013,lv = 60},[4] = {id = 2034014,lv = 60},[5] = {id = 2034015,lv = 60},[6] = {id = 2034016,lv = 60},[7] = {id = 2034017,lv = 60},[8] = {id = 2034018,lv = 60}},mon = {id = 209,desc = "rlb-tp-2-loc-1-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "603",id = 6030211,cardId = 1102012,lv = 60,bklv = 6,star = 1,equip = {[1] = {id = 2034021,lv = 60},[2] = {id = 2034022,lv = 60},[3] = {id = 2034023,lv = 60},[4] = {id = 2034024,lv = 60},[5] = {id = 2034025,lv = 60},[6] = {id = 2034026,lv = 60},[7] = {id = 2034027,lv = 60},[8] = {id = 2034028,lv = 60}},mon = {id = 253,desc = "rlb-tp-2-loc-1-shl",skillLv = 1,exert = 10,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "603",id = 6030220,cardId = 1101003,lv = 60,bklv = 6,star = 1,equip = {[1] = {id = 2034011,lv = 60},[2] = {id = 2034012,lv = 60},[3] = {id = 2034013,lv = 60},[4] = {id = 2034014,lv = 60},[5] = {id = 2034015,lv = 60},[6] = {id = 2034016,lv = 60},[7] = {id = 2034017,lv = 60},[8] = {id = 2034018,lv = 60}},mon = {id = 207,desc = "rlb-tp-2-loc-2-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "603",id = 6030221,cardId = 1102005,lv = 60,bklv = 6,star = 1,equip = {[1] = {id = 2034021,lv = 60},[2] = {id = 2034022,lv = 60},[3] = {id = 2034023,lv = 60},[4] = {id = 2034024,lv = 60},[5] = {id = 2034025,lv = 60},[6] = {id = 2034026,lv = 60},[7] = {id = 2034027,lv = 60},[8] = {id = 2034028,lv = 60}},mon = {id = 242,desc = "rlb-tp-2-loc-2-shl",skillLv = 1,exert = 10,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "603",id = 6030230,cardId = 1101014,lv = 60,bklv = 6,star = 1,equip = {[1] = {id = 2034011,lv = 60},[2] = {id = 2034012,lv = 60},[3] = {id = 2034013,lv = 60},[4] = {id = 2034014,lv = 60},[5] = {id = 2034015,lv = 60},[6] = {id = 2034016,lv = 60},[7] = {id = 2034017,lv = 60},[8] = {id = 2034018,lv = 60}},mon = {id = 211,desc = "rlb-tp-2-loc-3-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "603",id = 6030231,cardId = 1102020,lv = 60,bklv = 6,star = 1,equip = {[1] = {id = 2034021,lv = 60},[2] = {id = 2034022,lv = 60},[3] = {id = 2034023,lv = 60},[4] = {id = 2034024,lv = 60},[5] = {id = 2034025,lv = 60},[6] = {id = 2034026,lv = 60},[7] = {id = 2034027,lv = 60},[8] = {id = 2034028,lv = 60}},mon = {id = 256,desc = "rlb-tp-2-loc-3-shl",skillLv = 1,exert = 10,suffer = 9}}
		}
	},
	[60303] = {
		[1] = {
			jlr = {cha = "603",id = 6030310,cardId = 1101007,lv = 80,bklv = 8,star = 1,equip = {[1] = {id = 2044011,lv = 80},[2] = {id = 2044012,lv = 80},[3] = {id = 2044013,lv = 80},[4] = {id = 2044014,lv = 80},[5] = {id = 2044015,lv = 80},[6] = {id = 2044016,lv = 80},[7] = {id = 2044017,lv = 80},[8] = {id = 2044018,lv = 80}},mon = {id = 215,desc = "rlb-tp-3-loc-1-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "603",id = 6030311,cardId = 1102012,lv = 80,bklv = 8,star = 1,equip = {[1] = {id = 2044021,lv = 80},[2] = {id = 2044022,lv = 80},[3] = {id = 2044023,lv = 80},[4] = {id = 2044024,lv = 80},[5] = {id = 2044025,lv = 80},[6] = {id = 2044026,lv = 80},[7] = {id = 2044027,lv = 80},[8] = {id = 2044028,lv = 80}},mon = {id = 260,desc = "rlb-tp-3-loc-1-shl",skillLv = 1,exert = 10,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "603",id = 6030320,cardId = 1101003,lv = 80,bklv = 8,star = 1,equip = {[1] = {id = 2044011,lv = 80},[2] = {id = 2044012,lv = 80},[3] = {id = 2044013,lv = 80},[4] = {id = 2044014,lv = 80},[5] = {id = 2044015,lv = 80},[6] = {id = 2044016,lv = 80},[7] = {id = 2044017,lv = 80},[8] = {id = 2044018,lv = 80}},mon = {id = 207,desc = "rlb-tp-3-loc-2-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "603",id = 6030321,cardId = 1102005,lv = 80,bklv = 8,star = 1,equip = {[1] = {id = 2044021,lv = 80},[2] = {id = 2044022,lv = 80},[3] = {id = 2044023,lv = 80},[4] = {id = 2044024,lv = 80},[5] = {id = 2044025,lv = 80},[6] = {id = 2044026,lv = 80},[7] = {id = 2044027,lv = 80},[8] = {id = 2044028,lv = 80}},mon = {id = 248,desc = "rlb-tp-3-loc-2-shl",skillLv = 1,exert = 10,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "603",id = 6030330,cardId = 1101014,lv = 80,bklv = 8,star = 1,equip = {[1] = {id = 2044011,lv = 80},[2] = {id = 2044012,lv = 80},[3] = {id = 2044013,lv = 80},[4] = {id = 2044014,lv = 80},[5] = {id = 2044015,lv = 80},[6] = {id = 2044016,lv = 80},[7] = {id = 2044017,lv = 80},[8] = {id = 2044018,lv = 80}},mon = {id = 211,desc = "rlb-tp-3-loc-3-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "603",id = 6030331,cardId = 1102020,lv = 80,bklv = 8,star = 1,equip = {[1] = {id = 2044021,lv = 80},[2] = {id = 2044022,lv = 80},[3] = {id = 2044023,lv = 80},[4] = {id = 2044024,lv = 80},[5] = {id = 2044025,lv = 80},[6] = {id = 2044026,lv = 80},[7] = {id = 2044027,lv = 80},[8] = {id = 2044028,lv = 80}},mon = {id = 256,desc = "rlb-tp-3-loc-3-shl",skillLv = 1,exert = 10,suffer = 9}}
		}
	},
	[60304] = {
		[1] = {
			jlr = {cha = "603",id = 6030410,cardId = 1101007,lv = 100,bklv = 10,star = 1,equip = {[1] = {id = 2054011,lv = 100},[2] = {id = 2054012,lv = 100},[3] = {id = 2054013,lv = 100},[4] = {id = 2054014,lv = 100},[5] = {id = 2054015,lv = 100},[6] = {id = 2054016,lv = 100},[7] = {id = 2054017,lv = 100},[8] = {id = 2054018,lv = 100}},mon = {id = 206,desc = "rlb-tp-4-loc-1-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "603",id = 6030411,cardId = 1102012,lv = 100,bklv = 10,star = 1,equip = {[1] = {id = 2054021,lv = 100},[2] = {id = 2054022,lv = 100},[3] = {id = 2054023,lv = 100},[4] = {id = 2054024,lv = 100},[5] = {id = 2054025,lv = 100},[6] = {id = 2054026,lv = 100},[7] = {id = 2054027,lv = 100},[8] = {id = 2054028,lv = 100}},mon = {id = 246,desc = "rlb-tp-4-loc-1-shl",skillLv = 1,exert = 10,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "603",id = 6030420,cardId = 1101003,lv = 100,bklv = 10,star = 1,equip = {[1] = {id = 2054011,lv = 100},[2] = {id = 2054012,lv = 100},[3] = {id = 2054013,lv = 100},[4] = {id = 2054014,lv = 100},[5] = {id = 2054015,lv = 100},[6] = {id = 2054016,lv = 100},[7] = {id = 2054017,lv = 100},[8] = {id = 2054018,lv = 100}},mon = {id = 214,desc = "rlb-tp-4-loc-2-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "603",id = 6030421,cardId = 1102005,lv = 100,bklv = 10,star = 1,equip = {[1] = {id = 2054021,lv = 100},[2] = {id = 2054022,lv = 100},[3] = {id = 2054023,lv = 100},[4] = {id = 2054024,lv = 100},[5] = {id = 2054025,lv = 100},[6] = {id = 2054026,lv = 100},[7] = {id = 2054027,lv = 100},[8] = {id = 2054028,lv = 100}},mon = {id = 259,desc = "rlb-tp-4-loc-2-shl",skillLv = 1,exert = 10,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "603",id = 6030430,cardId = 1101014,lv = 100,bklv = 10,star = 1,equip = {[1] = {id = 2054011,lv = 100},[2] = {id = 2054012,lv = 100},[3] = {id = 2054013,lv = 100},[4] = {id = 2054014,lv = 100},[5] = {id = 2054015,lv = 100},[6] = {id = 2054016,lv = 100},[7] = {id = 2054017,lv = 100},[8] = {id = 2054018,lv = 100}},mon = {id = 207,desc = "rlb-tp-4-loc-3-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "603",id = 6030431,cardId = 1102020,lv = 100,bklv = 10,star = 1,equip = {[1] = {id = 2054021,lv = 100},[2] = {id = 2054022,lv = 100},[3] = {id = 2054023,lv = 100},[4] = {id = 2054024,lv = 100},[5] = {id = 2054025,lv = 100},[6] = {id = 2054026,lv = 100},[7] = {id = 2054027,lv = 100},[8] = {id = 2054028,lv = 100}},mon = {id = 249,desc = "rlb-tp-4-loc-3-shl",skillLv = 1,exert = 10,suffer = 9}}
		}
	},
	[60305] = {
		[1] = {
			jlr = {cha = "603",id = 6030510,cardId = 1101007,lv = 120,bklv = 12,star = 1,equip = {[1] = {id = 2064011,lv = 120},[2] = {id = 2064012,lv = 120},[3] = {id = 2064013,lv = 120},[4] = {id = 2064014,lv = 120},[5] = {id = 2064015,lv = 120},[6] = {id = 2064016,lv = 120},[7] = {id = 2064017,lv = 120},[8] = {id = 2064018,lv = 120}},mon = {id = 207,desc = "rlb-tp-5-loc-1-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "603",id = 6030511,cardId = 1102012,lv = 120,bklv = 12,star = 1,equip = {[1] = {id = 2064021,lv = 120},[2] = {id = 2064022,lv = 120},[3] = {id = 2064023,lv = 120},[4] = {id = 2064024,lv = 120},[5] = {id = 2064025,lv = 120},[6] = {id = 2064026,lv = 120},[7] = {id = 2064027,lv = 120},[8] = {id = 2064028,lv = 120}},mon = {id = 251,desc = "rlb-tp-5-loc-1-shl",skillLv = 1,exert = 10,suffer = 9}}
		},
		[2] = {
			jlr = {cha = "603",id = 6030520,cardId = 1101003,lv = 120,bklv = 12,star = 1,equip = {[1] = {id = 2064011,lv = 120},[2] = {id = 2064012,lv = 120},[3] = {id = 2064013,lv = 120},[4] = {id = 2064014,lv = 120},[5] = {id = 2064015,lv = 120},[6] = {id = 2064016,lv = 120},[7] = {id = 2064017,lv = 120},[8] = {id = 2064018,lv = 120}},mon = {id = 205,desc = "rlb-tp-5-loc-2-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "603",id = 6030521,cardId = 1102005,lv = 120,bklv = 12,star = 1,equip = {[1] = {id = 2064021,lv = 120},[2] = {id = 2064022,lv = 120},[3] = {id = 2064023,lv = 120},[4] = {id = 2064024,lv = 120},[5] = {id = 2064025,lv = 120},[6] = {id = 2064026,lv = 120},[7] = {id = 2064027,lv = 120},[8] = {id = 2064028,lv = 120}},mon = {id = 250,desc = "rlb-tp-5-loc-2-shl",skillLv = 1,exert = 10,suffer = 9}}
		},
		[3] = {
			jlr = {cha = "603",id = 6030530,cardId = 1101014,lv = 120,bklv = 12,star = 1,equip = {[1] = {id = 2064011,lv = 120},[2] = {id = 2064012,lv = 120},[3] = {id = 2064013,lv = 120},[4] = {id = 2064014,lv = 120},[5] = {id = 2064015,lv = 120},[6] = {id = 2064016,lv = 120},[7] = {id = 2064017,lv = 120},[8] = {id = 2064018,lv = 120}},mon = {id = 210,desc = "rlb-tp-5-loc-3-jlr",skillLv = 1,exert = 7,suffer = 6}},
			shl = {cha = "603",id = 6030531,cardId = 1102020,lv = 120,bklv = 12,star = 1,equip = {[1] = {id = 2064021,lv = 120},[2] = {id = 2064022,lv = 120},[3] = {id = 2064023,lv = 120},[4] = {id = 2064024,lv = 120},[5] = {id = 2064025,lv = 120},[6] = {id = 2064026,lv = 120},[7] = {id = 2064027,lv = 120},[8] = {id = 2064028,lv = 120}},mon = {id = 255,desc = "rlb-tp-5-loc-3-shl",skillLv = 1,exert = 10,suffer = 9}}
		}
	}
}
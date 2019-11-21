--[[
output from excel arena.竞技场.xlsx
--note:

colums:
{ID,ID} ,{Score,积分} ,{Award[1].id,道具ID1} ,{Award[1].val,道具数量1} ,{Award[2].id,道具ID2} ,{Award[2].val,道具数量2} ,{Award[3].id,道具ID2} ,{Award[3].val,道具数量2}
primary key:
#0 [竞技场分数]: ID
]]
local _T = LangUtil.Language
return{
	[1] = {ID = 1,Score = 1100,Award = {[1] = {id = 1401008,val = 10}}},
	[2] = {ID = 2,Score = 1200,Award = {[1] = {id = 1401008,val = 20}}},
	[3] = {ID = 3,Score = 1300,Award = {[1] = {id = 1401008,val = 30}}},
	[4] = {ID = 4,Score = 1400,Award = {[1] = {id = 1401008,val = 40}}},
	[5] = {ID = 5,Score = 1500,Award = {[1] = {id = 1401008,val = 50},[2] = {id = 1401010,val = 10}}},
	[6] = {ID = 6,Score = 1550,Award = {[1] = {id = 1401008,val = 55},[2] = {id = 1401010,val = 15}}},
	[7] = {ID = 7,Score = 1600,Award = {[1] = {id = 1401008,val = 60},[2] = {id = 1401010,val = 20}}},
	[8] = {ID = 8,Score = 1650,Award = {[1] = {id = 1401008,val = 65},[2] = {id = 1401010,val = 25}}},
	[9] = {ID = 9,Score = 1700,Award = {[1] = {id = 1401008,val = 70},[2] = {id = 1401010,val = 30}}},
	[10] = {ID = 10,Score = 1750,Award = {[1] = {id = 1401008,val = 75},[2] = {id = 1401010,val = 35}}},
	[11] = {ID = 11,Score = 1800,Award = {[1] = {id = 1401008,val = 80},[2] = {id = 1401010,val = 40}}},
	[12] = {ID = 12,Score = 1850,Award = {[1] = {id = 1401008,val = 85},[2] = {id = 1401010,val = 45}}},
	[13] = {ID = 13,Score = 1900,Award = {[1] = {id = 1401008,val = 90},[2] = {id = 1401010,val = 50}}},
	[14] = {ID = 14,Score = 1950,Award = {[1] = {id = 1401008,val = 95},[2] = {id = 1401010,val = 55}}},
	[15] = {ID = 15,Score = 2000,Award = {[1] = {id = 1401008,val = 100},[2] = {id = 1401010,val = 60},[3] = {id = 1401005,val = 50}}},
	[16] = {ID = 16,Score = 2100,Award = {[1] = {id = 1401008,val = 100},[2] = {id = 1401010,val = 60},[3] = {id = 1401005,val = 60}}},
	[17] = {ID = 17,Score = 2200,Award = {[1] = {id = 1401008,val = 100},[2] = {id = 1401010,val = 60},[3] = {id = 1401005,val = 70}}},
	[18] = {ID = 18,Score = 2300,Award = {[1] = {id = 1401008,val = 100},[2] = {id = 1401010,val = 60},[3] = {id = 1401005,val = 80}}},
	[19] = {ID = 19,Score = 2400,Award = {[1] = {id = 1401008,val = 100},[2] = {id = 1401010,val = 60},[3] = {id = 1401005,val = 90}}},
	[20] = {ID = 20,Score = 2500,Award = {[1] = {id = 1401008,val = 100},[2] = {id = 1401010,val = 60},[3] = {id = 1401005,val = 100}}}
}
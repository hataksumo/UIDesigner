--[[
--note:

colums:
{ID,唯一键} ,{BossId,属于哪个Bossid} ,{HelpCol,辅助列} ,{Loc,位置} ,{Name,关卡名称} ,{DropItem,奖励数据 掉落id#掉落id} ,{DropShow[1][1],显示奖励ID1} ,{DropShow[1][2],显示奖励类型1} ,{DropShow[2][1],显示奖励ID2} ,{DropShow[2][2],显示奖励类型2} ,{DropShow[3][1],显示奖励ID3} ,{DropShow[3][2],显示奖励类型3} ,{DropShow[4][1],显示奖励ID4} ,{DropShow[4][2],显示奖励类型4} ,{LastId,上一关id} ,{SceneName,场景名字} ,{MapPosId,地图坐标ID}
primary key:
#0 [BOSS等级]: ID
]]
return{
	[1401001] = {ID = 1401001,BossId = 1401,Name = "难度1",DropItem = {1011},DropShow = {[1] = {[1] = 1401002,[2] = 14},[2] = {[1] = 1609001,[2] = 16},[3] = {[1] = 1609104,[2] = 16}},LastId = 0,SceneName = "Map_luoshajiedao_1-1",MapPosId = 1},
	[1401002] = {ID = 1401002,BossId = 1401,Name = "难度2",DropItem = {1012},DropShow = {[1] = {[1] = 1401002,[2] = 14},[2] = {[1] = 1609001,[2] = 16},[3] = {[1] = 1609104,[2] = 16}},LastId = 1401001,SceneName = "Map_luoshajiedao_1-1",MapPosId = 2},
	[1401003] = {ID = 1401003,BossId = 1401,Name = "难度3",DropItem = {1013},DropShow = {[1] = {[1] = 1401002,[2] = 14},[2] = {[1] = 1609001,[2] = 16},[3] = {[1] = 1609002,[2] = 16},[4] = {[1] = 1609104,[2] = 16}},LastId = 1401002,SceneName = "Map_luoshajiedao_1-1",MapPosId = 3},
	[1401004] = {ID = 1401004,BossId = 1401,Name = "难度4",DropItem = {1014},DropShow = {[1] = {[1] = 1401002,[2] = 14},[2] = {[1] = 1609002,[2] = 16},[3] = {[1] = 1609003,[2] = 16},[4] = {[1] = 1609104,[2] = 16}},LastId = 1401003,SceneName = "Map_luoshajiedao_1-1",MapPosId = 4},
	[1401005] = {ID = 1401005,BossId = 1401,Name = "难度5",DropItem = {1015},DropShow = {[1] = {[1] = 1401002,[2] = 14},[2] = {[1] = 1609002,[2] = 16},[3] = {[1] = 1609003,[2] = 16},[4] = {[1] = 1609104,[2] = 16}},LastId = 1401004,SceneName = "Map_luoshajiedao_1-1",MapPosId = 5},
	[1402001] = {ID = 1402001,BossId = 1402,Name = "难度1",DropItem = {1016},DropShow = {[1] = {[1] = 1401002,[2] = 14},[2] = {[1] = 1609001,[2] = 16},[3] = {[1] = 1609104,[2] = 16}},LastId = 0,SceneName = "Map_luoshajiedao_1-1",MapPosId = 1},
	[1402002] = {ID = 1402002,BossId = 1402,Name = "难度2",DropItem = {1017},DropShow = {[1] = {[1] = 1401002,[2] = 14},[2] = {[1] = 1609001,[2] = 16},[3] = {[1] = 1609104,[2] = 16}},LastId = 1402001,SceneName = "Map_luoshajiedao_1-1",MapPosId = 2},
	[1402003] = {ID = 1402003,BossId = 1402,Name = "难度3",DropItem = {1018},DropShow = {[1] = {[1] = 1401002,[2] = 14},[2] = {[1] = 1609001,[2] = 16},[3] = {[1] = 1609002,[2] = 16},[4] = {[1] = 1609105,[2] = 16}},LastId = 1402002,SceneName = "Map_luoshajiedao_1-1",MapPosId = 3},
	[1402004] = {ID = 1402004,BossId = 1402,Name = "难度4",DropItem = {1019},DropShow = {[1] = {[1] = 1401002,[2] = 14},[2] = {[1] = 1609002,[2] = 16},[3] = {[1] = 1609003,[2] = 16},[4] = {[1] = 1609105,[2] = 16}},LastId = 1402003,SceneName = "Map_luoshajiedao_1-1",MapPosId = 4},
	[1402005] = {ID = 1402005,BossId = 1402,Name = "难度5",DropItem = {1020},DropShow = {[1] = {[1] = 1401002,[2] = 14},[2] = {[1] = 1609002,[2] = 16},[3] = {[1] = 1609003,[2] = 16},[4] = {[1] = 1609105,[2] = 16}},LastId = 1402004,SceneName = "Map_luoshajiedao_1-1",MapPosId = 5},
	[1403001] = {ID = 1403001,BossId = 1403,Name = "难度1",DropItem = {1021},DropShow = {[1] = {[1] = 1401002,[2] = 14},[2] = {[1] = 1609001,[2] = 16},[3] = {[1] = 1609104,[2] = 16}},LastId = 0,SceneName = "Map_luoshajiedao_1-1",MapPosId = 1},
	[1403002] = {ID = 1403002,BossId = 1403,Name = "难度2",DropItem = {1022},DropShow = {[1] = {[1] = 1401002,[2] = 14},[2] = {[1] = 1609001,[2] = 16},[3] = {[1] = 1609104,[2] = 16}},LastId = 1403001,SceneName = "Map_luoshajiedao_1-1",MapPosId = 2},
	[1403003] = {ID = 1403003,BossId = 1403,Name = "难度3",DropItem = {1023},DropShow = {[1] = {[1] = 1401002,[2] = 14},[2] = {[1] = 1609001,[2] = 16},[3] = {[1] = 1609002,[2] = 16},[4] = {[1] = 1609106,[2] = 16}},LastId = 1403002,SceneName = "Map_luoshajiedao_1-1",MapPosId = 3},
	[1403004] = {ID = 1403004,BossId = 1403,Name = "难度4",DropItem = {1024},DropShow = {[1] = {[1] = 1401002,[2] = 14},[2] = {[1] = 1609002,[2] = 16},[3] = {[1] = 1609003,[2] = 16},[4] = {[1] = 1609106,[2] = 16}},LastId = 1403003,SceneName = "Map_luoshajiedao_1-1",MapPosId = 4},
	[1403005] = {ID = 1403005,BossId = 1403,Name = "难度5",DropItem = {1025},DropShow = {[1] = {[1] = 1401002,[2] = 14},[2] = {[1] = 1609002,[2] = 16},[3] = {[1] = 1609003,[2] = 16},[4] = {[1] = 1609106,[2] = 16}},LastId = 1403004,SceneName = "Map_luoshajiedao_1-1",MapPosId = 5}
}
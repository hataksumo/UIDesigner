--[[
--note:

colums:
{ID,唯一键} ,{LevelId,所属关卡ID} ,{WaveId,波次ID} ,{MonsterIds,怪物ID：包含位置信息，从左到右：1号怪物ID#2号怪物ID#3号怪物ID#4号怪物ID#5号怪物ID（0代表该位置无怪物}
primary key:
#0 [reed_tower_pos]: ID
]]
return{
	[1] = {LevelId = 1501001,MonsterIds = {0,1,2,3,0}},
	[2] = {LevelId = 1501002,MonsterIds = {0,1,2,3,0}},
	[3] = {LevelId = 1501003,MonsterIds = {0,1,2,3,0}},
	[4] = {LevelId = 1502001,MonsterIds = {0,1,2,3,0}},
	[5] = {LevelId = 1502002,MonsterIds = {0,1,2,3,0}},
	[6] = {LevelId = 1502003,MonsterIds = {0,1,2,3,0}},
	[7] = {LevelId = 1502004,MonsterIds = {0,1,2,3,0}},
	[8] = {LevelId = 1503001,MonsterIds = {0,1,2,3,0}},
	[9] = {LevelId = 1503002,MonsterIds = {0,1,2,3,0}}
}
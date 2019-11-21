--[[
--note:

colums:
{BossId,BOSSId} ,{Name,boss名字} ,{BossImg,boss原画} ,{OpenWeekDay,特定开启天}
primary key:
#0 [Boss类型]: BossId
]]
return{
	[1401] = {Name = "日神",BossImg = "draw_gy_1102001",OpenWeekDay = {1,4,7}},
	[1402] = {Name = "月娘",BossImg = "draw_xc_1102002",OpenWeekDay = {2,5,7}},
	[1403] = {Name = "星君",BossImg = "draw_dw_1102003",OpenWeekDay = {3,6,7}}
}
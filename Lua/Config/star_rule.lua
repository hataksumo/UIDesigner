--[[
--note:
客户端星级评分的表
colums:
{Id,ID} ,{Condition,条件} ,{Param[1],参数1} ,{Param[2],参数2} ,{Des,描述} ,{Mul,参数乘数}
primary key:
#0 [星级评分]: Id
]]
local _T = LangUtil.Language
return{
	[1] = {Condition = 101,Param = {[1] = 1},Des = "消灭全部敌方单位",Mul = 1},--消灭全部敌人。参数: 1表示ture
	[2] = {Condition = 102,Param = {[1] = 0.5},Des = "己方剩余血量超过%s%%",Mul = 100},--己方剩余血量百分比。参数: 剩余血量的百分比
	[3] = {Condition = 102,Param = {[1] = 0.35},Des = "己方剩余血量超过%s%%",Mul = 100},--己方剩余血量百分比。参数: 剩余血量的百分比
	[4] = {Condition = 103,Param = {[1] = 7},Des = "战斗不超过%s回合",Mul = 1},--指定回合内消灭全部敌人。参数: 回合数值
	[5] = {Condition = 103,Param = {[1] = 8},Des = "战斗不超过%s回合",Mul = 1},--指定回合内消灭全部敌人。参数: 回合数值
	[6] = {Condition = 104,Param = {[1] = 1},Des = "无红色守护灵上阵",Mul = 1},--限制守护灵颜色。参数: 守护灵的颜色类型id
	[7] = {Condition = 104,Param = {[1] = 2},Des = "无黄色守护灵上阵",Mul = 1},--限制守护灵颜色。参数: 守护灵的颜色类型id
	[8] = {Condition = 104,Param = {[1] = 3},Des = "无蓝色守护灵上阵",Mul = 1},--限制守护灵颜色。参数: 守护灵的颜色类型id
	[9] = {Condition = 103,Param = {[1] = 1},Des = "%s回合过关",Mul = 1},--1回合过关
	[10] = {Condition = 103,Param = {[1] = 3},Des = "%s回合过关",Mul = 1},--3回合过关
	[11] = {Condition = 103,Param = {[1] = 5},Des = "%s回合过关",Mul = 1},--5回合过关
	[12] = {Condition = 106,Param = {[1] = 0},Des = "通关时无任何角色阵亡",Mul = 1},--阵亡人数少于N人过关
	[13] = {Condition = 108,Param = {[1] = 0},Des = "通关时无任何寄灵人阵亡",Mul = 1},--阵亡寄灵人少于N人过关
	[14] = {Condition = 109,Param = {[1] = 0},Des = "通关时无任何守护灵阵亡",Mul = 1},--阵亡守护灵少于N人过关
	[15] = {Condition = 105,Param = {[1] = 2},Des = "己方上阵守护灵不超过%s人",Mul = 1},--己方上阵守护灵最大人数。参数: 限制的人数
	[16] = {Condition = 107,Param = {[1] = 2},Des = "己方上阵寄灵人不超过%s人",Mul = 1}--己方上阵寄灵人最大人数。参数: 限制的人数
}
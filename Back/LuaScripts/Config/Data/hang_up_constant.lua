--[[
output from excel chapter.章节.xlsx
--note:
派遣章节关卡常量表
colums:
{MinePos[1].x,己方1号角色位置(x)} ,{MinePos[1].y,己方1号角色位置(y)} ,{MinePos[1].z,己方1号角色位置(z)} ,{MinePos[2].x,己方2号角色位置(x)} ,{MinePos[2].y,己方2号角色位置(y)} ,{MinePos[2].z,己方2号角色位置(z)} ,{MinePos[3].x,己方3号角色位置(x)} ,{MinePos[3].y,己方3号角色位置(y)} ,{MinePos[3].z,己方3号角色位置(z)} ,{Distance,敌方停留位置相对距离
(米)} ,{Speed,敌方移动速度
(米/秒)} ,{LongRad,掉落范围长半径
(米)} ,{ShortRad,掉落范围短半径
(米)} ,{DropTime,掉落时长
(秒)} ,{DelayTime,回收延迟时长
(秒)} ,{RecoverTime,回收至宝箱时长
(秒)} ,{DropItem1,掉落1图标id} ,{DropNum1,掉落1图标数量} ,{DropItem2,掉落2图标id} ,{DropNum2,掉落2图标数量} ,{DropItem3,掉落3图标id} ,{DropNum3,掉落3图标数量}
primary key:
#0 [挂机派遣常量]: ID
]]
local _T = LangUtil.Language
return{
	[1] = {MinePos = {[1] = {x = -3.9,y = 0,z = 0},[2] = {x = -2.9,y = 0,z = 1.2},[3] = {x = -4.9,y = 0,z = -1.2}},Distance = 8,Speed = 3,LongRad = 2,ShortRad = 1,DropTime = 0.5,DelayTime = 0.5,RecoverTime = 0.5,DropItem1 = "fx_c_crystal_red_down",DropNum1 = 1,DropItem2 = "fx_c_crystal_yellow_down",DropNum2 = 5,DropItem3 = "fx_c_crystal_blue_down",DropNum3 = 5}
}
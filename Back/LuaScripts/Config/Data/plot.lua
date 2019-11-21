--[[
output from excel plot.剧情.xlsx
--note:
客户端的剧情表
colums:
{ID,ID} ,{SceneName,场景名} ,{Shade,是否遮黑0-装配剧情时不遮黑；1-装配剧情时遮黑，关闭场景摄像机；2-装配剧情时遮黑，不关闭场景摄像机
0是纯对话无背景的  1是2D背景或者视频 2是根据需要加} ,{Path,预设名} ,{Pos[1],位置1} ,{Pos[2],位置2} ,{Pos[3],位置3} ,{Rotate[1],旋转1} ,{Rotate[2],旋转2} ,{Rotate[3],旋转3} ,{Param.msgId,参数:消息号} ,{Param.round,参数:当前回合数} ,{Param.posId,参数:站位ID} ,{Param.hp,参数:角色Hp百分比(0~1)}
primary key:
#0 [剧情表]: ID
]]
local _T = LangUtil.Language
return{
	[101] = {SceneName = "Map_luoshajiedao_1-4",Shade = 1,Path = "xsyd_101",Pos = {[1] = 0,[2] = 0,[3] = 0},Rotate = {[1] = 0,[2] = 0,[3] = 0},Param = {msgId = 1}},--登录后视频，玩家租房
	[102] = {SceneName = "Map_luoshajiedao_1-4",Shade = 0,Path = "xsyd_102_3d",Pos = {[1] = 0,[2] = 0,[3] = 0},Rotate = {[1] = 0,[2] = 0,[3] = 0},Param = {msgId = 1}},--新手战斗1前场景剧情
	[103] = {SceneName = "Map_luoshajiedao_1-4",Shade = 2,Path = "xsyd_103_3d",Pos = {[1] = 0,[2] = 0,[3] = 0},Rotate = {[1] = 0,[2] = 0,[3] = 0},Param = {msgId = 1}},--首次战斗后场景剧情，起名前剧情
	[104] = {SceneName = "Map_luoshajiedao_1-4",Shade = 2,Path = "xsyd_104_3d",Pos = {[1] = 0,[2] = 0,[3] = 0},Rotate = {[1] = 0,[2] = 0,[3] = 0},Param = {msgId = 1}},--起名后场景剧情，结束后回到主城
	[105] = {SceneName = "",Shade = 1,Path = "lcjStory01",Pos = {[1] = 0,[2] = 0,[3] = 0},Rotate = {[1] = 0,[2] = 0,[3] = 0},Param = {msgId = 1}},--主城第三场战斗前剧情
	[106] = {SceneName = "",Shade = 1,Path = "xsyd_3_1_1",Pos = {[1] = 0,[2] = 0,[3] = 0},Rotate = {[1] = 0,[2] = 0,[3] = 0},Param = {msgId = 1}},--主城第三场战斗许褚三连击后剧情（特殊打断）
	[107] = {SceneName = "",Shade = 0,Path = "xsyd_108",Pos = {[1] = 0,[2] = 0,[3] = 0},Rotate = {[1] = 0,[2] = 0,[3] = 0},Param = {msgId = 1}},--三场战斗后返回主城剧情
	[108] = {SceneName = "",Shade = 0,Path = "xsyd_105",Pos = {[1] = 0,[2] = 0,[3] = 0},Rotate = {[1] = 0,[2] = 0,[3] = 0},Param = {msgId = 1}},--第一次抽卡前剧情
	[109] = {SceneName = "",Shade = 0,Path = "xsyd_106",Pos = {[1] = 0,[2] = 0,[3] = 0},Rotate = {[1] = 0,[2] = 0,[3] = 0},Param = {msgId = 1}},--第一次抽卡后剧情
	[10103] = {SceneName = "",Shade = 0,Path = "lcj_1_3",Pos = {[1] = 0,[2] = 0,[3] = 0},Rotate = {[1] = 0,[2] = 0,[3] = 0},Param = {msgId = 7}},--1-3后返回关卡对话
	[10105] = {SceneName = "",Shade = 1,Path = "lcjPart1_1",Pos = {[1] = 0,[2] = 0,[3] = 0},Rotate = {[1] = 0,[2] = 0,[3] = 0},Param = {msgId = 1}},--1-5剧情
	[10107] = {SceneName = "",Shade = 1,Path = "lcjPart1_2",Pos = {[1] = 0,[2] = 0,[3] = 0},Rotate = {[1] = 0,[2] = 0,[3] = 0},Param = {msgId = 1}},--1-7战前剧情
	[10110] = {SceneName = "",Shade = 1,Path = "lcjPart1_3",Pos = {[1] = 0,[2] = 0,[3] = 0},Rotate = {[1] = 0,[2] = 0,[3] = 0},Param = {msgId = 7}},--1-10战后返回关卡对话
	[10202] = {SceneName = "",Shade = 1,Path = "lcjPart2_1",Pos = {[1] = 0,[2] = 0,[3] = 0},Rotate = {[1] = 0,[2] = 0,[3] = 0},Param = {msgId = 1}},--2-2剧情
	[10205] = {SceneName = "",Shade = 1,Path = "lcjPart2_2",Pos = {[1] = 0,[2] = 0,[3] = 0},Rotate = {[1] = 0,[2] = 0,[3] = 0},Param = {msgId = 7}},--2-5战斗结束回到关卡界面剧情
	[10210] = {SceneName = "",Shade = 1,Path = "lcjPart2_3",Pos = {[1] = 0,[2] = 0,[3] = 0},Rotate = {[1] = 0,[2] = 0,[3] = 0},Param = {msgId = 1}},--2-10战后剧情
	[10302] = {SceneName = "",Shade = 1,Path = "lcjPart3_1",Pos = {[1] = 0,[2] = 0,[3] = 0},Rotate = {[1] = 0,[2] = 0,[3] = 0},Param = {msgId = 1}},--3-2剧情
	[10303] = {SceneName = "",Shade = 1,Path = "lcjPart3_2",Pos = {[1] = 0,[2] = 0,[3] = 0},Rotate = {[1] = 0,[2] = 0,[3] = 0},Param = {msgId = 7}},--3-3战后剧情
	[10306] = {SceneName = "",Shade = 1,Path = "lcjPart3_3",Pos = {[1] = 0,[2] = 0,[3] = 0},Rotate = {[1] = 0,[2] = 0,[3] = 0},Param = {msgId = 1}},--3-6战前剧情
	[10309] = {SceneName = "",Shade = 1,Path = "lcjPart3_4",Pos = {[1] = 0,[2] = 0,[3] = 0},Rotate = {[1] = 0,[2] = 0,[3] = 0},Param = {msgId = 1}},--3-9剧情
	[10402] = {SceneName = "",Shade = 1,Path = "lcjPart4_1",Pos = {[1] = 0,[2] = 0,[3] = 0},Rotate = {[1] = 0,[2] = 0,[3] = 0},Param = {msgId = 1}},--4-2剧情
	[10404] = {SceneName = "",Shade = 1,Path = "lcjPart4_2",Pos = {[1] = 0,[2] = 0,[3] = 0},Rotate = {[1] = 0,[2] = 0,[3] = 0},Param = {msgId = 1}},--4-4战前剧情
	[10407] = {SceneName = "",Shade = 1,Path = "lcjPart4_3",Pos = {[1] = 0,[2] = 0,[3] = 0},Rotate = {[1] = 0,[2] = 0,[3] = 0},Param = {msgId = 1}},--4-7战前剧情
	[10410] = {SceneName = "",Shade = 1,Path = "lcjPart4_4",Pos = {[1] = 0,[2] = 0,[3] = 0},Rotate = {[1] = 0,[2] = 0,[3] = 0},Param = {msgId = 1}},--4-10战前剧情
	[10502] = {SceneName = "",Shade = 1,Path = "lcjPart5_1",Pos = {[1] = 0,[2] = 0,[3] = 0},Rotate = {[1] = 0,[2] = 0,[3] = 0},Param = {msgId = 1}},--5-2战前剧情
	[10504] = {SceneName = "",Shade = 1,Path = "lcjPart5_2",Pos = {[1] = 0,[2] = 0,[3] = 0},Rotate = {[1] = 0,[2] = 0,[3] = 0},Param = {msgId = 1}},--5-4战前剧情
	[20201] = {SceneName = "",Shade = 0,Path = "training_2_1",Pos = {[1] = 0,[2] = 0,[3] = 0},Rotate = {[1] = 0,[2] = 0,[3] = 0},Param = {msgId = 3,round = 1}},--2-1教学关剧情
	[20301] = {SceneName = "",Shade = 0,Path = "training_3_1",Pos = {[1] = 0,[2] = 0,[3] = 0},Rotate = {[1] = 0,[2] = 0,[3] = 0},Param = {msgId = 3,round = 1}},--3-1教学关剧情
	[20401] = {SceneName = "",Shade = 0,Path = "training_4_1",Pos = {[1] = 0,[2] = 0,[3] = 0},Rotate = {[1] = 0,[2] = 0,[3] = 0},Param = {msgId = 3,round = 1}},--4-1教学关剧情
	[20501] = {SceneName = "",Shade = 0,Path = "training_5_1",Pos = {[1] = 0,[2] = 0,[3] = 0},Rotate = {[1] = 0,[2] = 0,[3] = 0},Param = {msgId = 3,round = 2}}--5-1教学关剧情
}
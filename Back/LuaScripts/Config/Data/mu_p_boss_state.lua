--[[
output from excel MuPBoss.千机黑刹.xlsx
--note:

colums:
{ID,ID} ,{StateName,状态名} ,{OffsetStateID,与该状态相互抵消的状态ID} ,{StateIcon,状态图标} ,{StateAddDes,获得状态的飘字} ,{StateDes,状态描述，状态的文本Tips显示} ,{StateRemoveDes,移除状态的飘字}
primary key:
#0 [千机黑刹状态配置表]: ID
]]
local _T = LangUtil.Language
return{
	[101] = {ID = 101,StateName = _T("泰山压顶"),OffsetStateID = 201,StateIcon = "icon_1305025",StateAddDes = "中了<color=#d178ff>【泰山压顶】</color>",StateDes = "接下来移动的%d个地格，行动力消耗翻倍。会与【身轻如燕】相互抵消。",StateRemoveDes = "<color=#d178ff>【泰山压顶】</color>失效"},--泰山压顶
	[201] = {ID = 201,StateName = _T("身轻如燕"),OffsetStateID = 101,StateIcon = "icon_1305026",StateAddDes = "获得了<color=#5cd882>【身轻如燕】</color>",StateDes = "接下来移动的%d个地格，行动力消耗减半。会与【泰山压顶】相互抵消。",StateRemoveDes = "<color=#5cd882>【身轻如燕】</color>失效"},--身轻如燕
	[301] = {ID = 301,StateName = _T("虚弱诅咒"),OffsetStateID = 401,StateIcon = "icon_1305005",StateAddDes = "中了<color=#d178ff>【虚弱诅咒】</color>",StateDes = "全属性降低%d%，在下一次战斗结束后失效。会与【王者祝福】相互抵消。",StateRemoveDes = "<color=#d178ff>【虚弱诅咒】</color>失效"},--虚弱诅咒
	[302] = {ID = 302,StateName = _T("无力诅咒"),OffsetStateID = 402,StateIcon = "icon_1305006",StateAddDes = "中了<color=#d178ff>【无力诅咒】</color>",StateDes = "攻击降低%d%，在下一次战斗结束后失效。会与【攻击祝福】相互抵消。",StateRemoveDes = "<color=#d178ff>【无力诅咒】</color>失效"},--无力诅咒
	[303] = {ID = 303,StateName = _T("迟钝诅咒"),OffsetStateID = 403,StateIcon = "icon_1305007",StateAddDes = "中了<color=#d178ff>【迟钝诅咒】</color>",StateDes = "防御降低%d%，在下一次战斗结束后失效。会与【防御祝福】相互抵消。",StateRemoveDes = "<color=#d178ff>【迟钝诅咒】</color>失效"},--迟钝诅咒
	[304] = {ID = 304,StateName = _T("衰老诅咒"),OffsetStateID = 404,StateIcon = "icon_1305008",StateAddDes = "中了<color=#d178ff>【衰老诅咒】</color>",StateDes = "生命降低%d%，在下一次战斗结束后失效。会与【生命祝福】相互抵消。",StateRemoveDes = "<color=#d178ff>【衰老诅咒】</color>失效"},--衰老诅咒
	[401] = {ID = 401,StateName = _T("王者祝福"),OffsetStateID = 301,StateIcon = "icon_1305001",StateAddDes = "获得了<color=#5cd882>【王者祝福】</color>",StateDes = "全属性提高%d%，在下一次战斗结束后失效。会与【虚弱诅咒】相互抵消。",StateRemoveDes = "<color=#5cd882>【王者祝福】</color>失效"},--王者祝福
	[402] = {ID = 402,StateName = _T("攻击祝福"),OffsetStateID = 302,StateIcon = "icon_1305002",StateAddDes = "获得了<color=#5cd882>【攻击祝福】</color>",StateDes = "攻击提高%d%，在下一次战斗结束后失效。会与【无力诅咒】相互抵消。",StateRemoveDes = "<color=#5cd882>【攻击祝福】</color>失效"},--攻击祝福
	[403] = {ID = 403,StateName = _T("防御祝福"),OffsetStateID = 303,StateIcon = "icon_1305003",StateAddDes = "获得了<color=#5cd882>【防御祝福】</color>",StateDes = "防御提高%d%，在下一次战斗结束后失效。会与【迟钝诅咒】相互抵消。",StateRemoveDes = "<color=#5cd882>【防御祝福】</color>失效"},--防御祝福
	[404] = {ID = 404,StateName = _T("生命祝福"),OffsetStateID = 304,StateIcon = "icon_1305004",StateAddDes = "获得了<color=#5cd882>【生命祝福】</color>",StateDes = "生命提高%d%，在下一次战斗结束后失效。会与【衰老诅咒】相互抵消。",StateRemoveDes = "<color=#5cd882>【生命祝福】</color>失效"}--生命祝福
}

--[[
-- 控制层
--]]

local UINationNewBattleLogsCtrl = BaseClass("UINationNewBattleLogsCtrl", UIBaseCtrl)
local NationUtil = require "GameLogic.Nation.NationUtil"

local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UINationNewBattleLogs)
end

--城镇跳转
local function TurnCityButtonClick(self,real_index)
	local  itemData=self.model.fightLogList[real_index+1]
	local function callBack1()
		CloseSelf(self)
		NationUtil.TurnToOnePositionByPointData(itemData.targetId,0,0)
	end
	UIManager:GetInstance():OpenTwoButtonTip(DataUtil.GetClientText(200005),string.format(DataUtil.GetClientText(200352),itemData.targetName),DataUtil.GetClientText(200006), DataUtil.GetClientText(200007),callBack1, nil)
end
----查看的状态（自己/同盟）
--local LookState={
--	Self=1,--自己
--	League=2,--同盟
--}
--更改页签只看状态
local function ChangeModelLookState(self,lookState)
	if self.model.myLookState == lookState then -- 状态相同无需切换
		return
	end
	--Logger.LogVars(" 1111111111111111 UINationNewBattleLogsCtrl ChangeModelLookState  lookState: ",lookState)
	if lookState ==  NationDefine.NATION_BATTLE_LOG_LOOK_ST.UNION then -- 查看联盟
		if not self.model.hasUnion then -- 有联盟
			return
		end
		-- need check
		self:__CheckGetUnionData(lookState)
	else
		DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_BATTLE_LOGS_FILTER_LOOK_CHANGE,false,lookState)
	end
end

local function __CheckGetUnionData(self,lookState)
	if self.model.fightUnionLogTable ~= nil then
		-- 直接跳
		DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_BATTLE_LOGS_FILTER_LOOK_CHANGE,false,lookState)
	else -- 拉取数据跳
		local function callFunc(opcode,lookState, msgObj)
			if opcode ~= 0 then
				UISpecial:GetInstance():UITipText(msgObj.msg)
				return
			end

			DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_BATTLE_LOGS_FILTER_LOOK_CHANGE,true,lookState,msgObj)
		end
		NationNetManager:GetInstance():SendMsgBattleLogs(lookState,callFunc)
	end
end

---- 国战战斗日志查看日志状态
--NATION_BATTLE_LOG_LOOK_ST = {
--	SELF = 1, -- 只看自己
--	UNION = 2, -- 只看联盟
--},

----战斗的状态
--local BattleState={
--	All=1,--全部
--	Attack=2,--攻击
--	Defend=3,--防守
--}
--更改页签进攻防守全部状态
local function ChangeModelBattleState(self,battleState)
	if self.model.myBattleState == battleState then
		return
	end
	DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_BATTLE_LOGS_FILTER_CAMP_CHANGE,battleState)
end
--[[
 		self.allSelfLogUnLook = self:__CheckAllLogUnLook() -- 是否有日志未查看过 如果为true可以设置为全部已读  false 不能
        self.myLookState = NationDefine.NATION_BATTLE_LOG_LOOK_ST.SELF -- 默认筛选规则 只看自己和全部
        self.myBattleState = self.BattleState.All
        self.unionId = NationUnionData:GetInstance():GetPlayerNationUnionData()
        self.hasUnion = self.unionId ~= 0  -- 我是否有联盟

]]
-- 设置全部页签已读
local function SetModelAllBattleRead(self)
	if not self.model.allSelfLogUnLook then -- 战报全部已读
		return -- 战报全部已读  不能发送
	end

	local function callBack1(opCode,msg)
		if opCode ~= 0 then
			UISpecial:GetInstance():UITipText(msg)
			return
		end
		--Logger.LogErrorVars(" UINationNewBattleLogsCtrl  SetModelAllBattleRead SendMsgFightLogAllRead 222222")
		-- 成功刷新
		DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_BATTLE_LOGS_ALL_IS_READ)
	end
	--Logger.LogErrorVars(" UINationNewBattleLogsCtrl  SetModelAllBattleRead SendMsgFightLogAllRead 1111111 ")
	NationNetManager:GetInstance():SendMsgFightLogAllRead(callBack1)
end

UINationNewBattleLogsCtrl.CloseSelf = CloseSelf
UINationNewBattleLogsCtrl.TurnCityButtonClick = TurnCityButtonClick
UINationNewBattleLogsCtrl.SetModelAllBattleRead = SetModelAllBattleRead
UINationNewBattleLogsCtrl.ChangeModelBattleState = ChangeModelBattleState
UINationNewBattleLogsCtrl.ChangeModelLookState = ChangeModelLookState
UINationNewBattleLogsCtrl.__CheckGetUnionData = __CheckGetUnionData

return UINationNewBattleLogsCtrl
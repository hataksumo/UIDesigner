
--[[
-- 控制层
--]]

local UIUserHellCtrl = BaseClass("UIUserHellCtrl", UIBaseCtrl)


local function CloseSelf(self)
	LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
	UIManager:GetInstance():CloseWindow(UIWindowNames.UIUserHell)
end
local function OnChat(self)
	LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
	UIManager:GetInstance():OpenWindow(UIWindowNames.UIChat)
end

local function OnJinJie(self)
	LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
	local msgId = MsgIDDefine.PBCARD_HELL_UP_REQUEST
	local msg = (MsgIDMap[msgId])()
	GuideManager:GetInstance():SetGuideServerStep(msg)
	NetManager:GetInstance():SendMessage(MsgIDDefine.PBCARD_HELL_UP_REQUEST,msg,function (msg_obj)
		if msg_obj.OpCode ~= 0 then
			Logger.Log("ERROR PBCARD_HELL_REWARD_REQUEST~~")
			UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
			return
		else
			--成功首先弹出晋阶成功面板
			UIManager:GetInstance():OpenWindow(UIWindowNames.UIUserHellUp, self.model.curLevel,self.model.laterLevel,self.model.openfunction)
			--更新地狱道等级
			UserData:GetInstance():UpdatePlayerHellLevel(msg_obj.Packages.hellLevel)
			--更新奖励
			DataUtil.ParseDropItem(msg_obj.Packages.dropItem)

			--更新卡牌寄灵人等级、
			CardData:GetInstance():UpDateJLRHell(msg_obj.Packages.hellLevel)
			--更新任务数据
			TaskData:GetInstance():OnParserHellTask(msg_obj.Packages.hellMission)

			--更新神器地狱道等级
			--ArtifactsData:GetInstance():UpdateDataHellLv()
			--
		end
	end)
end

---任务领奖
local function SendGetAwardRequest(self,id)
	local reward_info_id = MsgIDDefine.PBCARD_HELL_REWARD_REQUEST
	local reward_info = (MsgIDMap[reward_info_id])()
	reward_info.missionId = id
	GuideManager:GetInstance():SetGuideServerStep(reward_info)
	NetManager:GetInstance():SendMessage(reward_info_id,reward_info,function (msg_obj)
		if msg_obj.OpCode ~= 0 then
			Logger.Log("ERROR PBCARD_HELL_REWARD_REQUEST~~")
			UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
			return
		else
			DataManager:GetInstance():Broadcast("HellGetAwards")
			DataUtil.ParseDropItem(msg_obj.Packages.dropItem)
			if not DataUtil.CheckDropItemIsNull(msg_obj.Packages.dropItem) then
				UIManager:GetInstance():OpenWindow(UIWindowNames.UICommGetRewards, msg_obj.Packages.dropItem,nil,1)
			end

			TaskData:GetInstance():OnHellTaskgetAward(id)
		end
	end)
end
UIUserHellCtrl.CloseSelf = CloseSelf
UIUserHellCtrl.OnChat = OnChat
UIUserHellCtrl.OnJinJie = OnJinJie
UIUserHellCtrl.SendGetAwardRequest = SendGetAwardRequest
return UIUserHellCtrl
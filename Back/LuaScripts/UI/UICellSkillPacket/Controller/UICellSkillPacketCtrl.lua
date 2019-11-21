
--[[
-- 控制层
--]]

local UICellSkillPacketCtrl = BaseClass("UICellSkillPacketCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UICellSkillPacket)
end

local function OpenSkillBreakThroughWindow(self,_skillData)
	LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
	UIManager:GetInstance():OpenWindow(UIWindowNames.UISkillBreakThrough,_skillData,true,"武灵技")
end

local function SendExchangeLevelRequest(self,_data)
	local msd_id = MsgIDDefine.PBCARD_SKILL_EXCHANGE_REQUEST
	local msg = (MsgIDMap[msd_id])()
	msg.skillId = _data.id
	GuideManager:GetInstance():SetGuideServerStep(msg)
	NetManager:GetInstance():SendMessage(msd_id, msg,function(msg_obj)
		if msg_obj.OpCode ~= 0 then
			Logger.Log("PBCARD_SKILL_EXCHANGE_REQUEST ERROR~")
			UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
			return
		end
		--后更新技能数据
		if not msg_obj.Packages.skill._is_null then
			SkillData:GetInstance():ParseSkillListFromServerAlone(msg_obj.Packages.skill)
		end
		--先消耗材料
		BackpackData:GetInstance():UpdateItemData(_data.items[1].heroId, -_data.items[1].heroNeedNum)
		--后更新技能数据
		DataManager:GetInstance():Broadcast(DataMessageNames.ON_CELL_SKILL_ACTIVE_UPDATE,msg_obj.Packages.skill.id,1)

		--UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100068))
		UIManager:GetInstance():OpenWindow(UIWindowNames.UIWuLingJiActive,_data.templateId)
		--测试
		--UIManager:GetInstance():OpenWindow(UIWindowNames.UIShenQiActive,101,1,1)
		--UIManager:GetInstance():OpenWindow(UIWindowNames.UIWeaponUnLock,1102004)
	end)
end


---请求技能升级
local function SendUpLevelRequest(self,skillData)
	local msd_id = MsgIDDefine.PBCARD_SKILL_UP_LEVEL_REQUEST
	local msg = (MsgIDMap[msd_id])()
	if skillData.cardId~=nil and skillData.cardId>0 then
		msg.cardId = skillData.cardId
	else
		msg.cardId=0
	end
	msg.skillId = skillData.id
	msg.skillType = 2
	self.skillData = skillData
	NetManager:GetInstance():SendMessage(msd_id, msg,Bind(self,self.OnRecvUpLevelUp))
	--NetManager:GetInstance():AddListener(MsgIDDefine.PBCARD_SKILL_UP_LEVEL_RESQPNSE, self.OnRecvUpLevel, self)
end
---技能升级回复
local function OnRecvUpLevelUp(self,msg_obj)
	--NetManager:GetInstance():RemoveListener(MsgIDDefine.PBCARD_SKILL_UP_LEVEL_RESQPNSE, self.OnRecvUpLevel)
	if msg_obj.OpCode ~= 0 then
		Logger.Log("技能升级失败"..SkillData:GetInstance().skills[self.skillData.id].name)
		UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
		return
	end
	--先消耗材料
	local skillData = SkillData:GetInstance().skills[self.skillData.id]
	for i = 1, #skillData.costItem do
		BackpackData:GetInstance():UpdateItemData(skillData.costItem[i].Id, -skillData.costItem[i].Val)
	end
	--后更新技能数据
	skillData.level = skillData.level + 1
	SkillData:GetInstance():UpdateSkillDataByLevel(self.skillData.id)
	DataManager:GetInstance():Broadcast(DataMessageNames.ON_CELL_SKILL_ACTIVE_UPDATE,self.skillData.id,2)
	UISpecial:GetInstance():UITipText("技能升级成功！")
end


UICellSkillPacketCtrl.OpenSkillBreakThroughWindow = OpenSkillBreakThroughWindow
UICellSkillPacketCtrl.CloseSelf = CloseSelf
UICellSkillPacketCtrl.SendExchangeLevelRequest = SendExchangeLevelRequest
UICellSkillPacketCtrl.SendUpLevelRequest = SendUpLevelRequest
UICellSkillPacketCtrl.OnRecvUpLevelUp = OnRecvUpLevelUp

return UICellSkillPacketCtrl
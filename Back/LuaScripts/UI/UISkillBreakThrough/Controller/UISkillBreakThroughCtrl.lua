
--[[
-- 控制层
--]]

local UISkillBreakThroughCtrl = BaseClass("UISkillBreakThroughCtrl", UIBaseCtrl)


local function CloseSelf(self)
	LJAudioManger:GetInstance():PlayVoice("UI_Cancel")
	UIManager:GetInstance():CloseWindow(UIWindowNames.UISkillBreakThrough)
end

---发送技能突破协议
local function SendSkillBreakThrough(self,_skillData,_item)
	local mid_id = MsgIDDefine.PBCARD_SKILL_BREAK_REQUEST
	local mis_info = (MsgIDMap[mid_id])()
	mis_info.skillId = _skillData.id
	mis_info.cardId = _skillData.heroId
	mis_info.skillType = _skillData.skillType
	local itemList = {}
	for i, v in pairs(_item) do
		local Item = {}
		Item.itemId = i
		Item.count = v
		table.insert(itemList,Item)
	end
	for _, v in ipairs(itemList) do
		local item =mis_info.items:add()
		item.itemId = v.itemId
		item.count = v.count
	end
	Logger.LogAny(mis_info.items,"信息是",10)
	GuideManager:GetInstance():SetGuideServerStep(mis_info)
	NetManager:GetInstance():SendMessage(mid_id,mis_info,function (msg_obj)
		if msg_obj.OpCode ~= 0 then
			Logger.Log("ERROR PBCARD_SKILL_BREAK_REQUEST~~")
			UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
			return
		else
			if _skillData.cost_exp then
				for i, v in pairs(_item) do
					BackpackData:GetInstance():UpdateItemData(i, -v)
				end
			end
			if _skillData.cost_sp then
				BackpackData:GetInstance():UpdateItemData(_skillData.only_itemList[1].id, -_skillData.only_itemList[1].val)
			end
			DataManager:GetInstance():Broadcast(DataMessageNames.UIGuide_OverEvent)
			DataManager:GetInstance():Broadcast(DataMessageNames.UI_ONLY_CHANGE_SHLBOOL)



			local skillData = {}
			skillData.id = _skillData.id
			skillData.templateId = _skillData.templateId
			skillData.level = _skillData.level
			skillData.cardId = _skillData.heroId
			skillData.breakTimes = _skillData.breakTimes + 1
			SkillData:GetInstance():ParseSkillListFromServerAlone(skillData)

			DataManager:GetInstance():Broadcast(DataMessageNames.ON_SKILL_LV_SUCCEED)
			UIManager:GetInstance():Broadcast(UIMessageNames.UI_SKILL_REFRESH)
			DataManager:GetInstance():Broadcast(DataMessageNames.ON_NEWUICARD_UPDATE_SKILL)
			DataManager:GetInstance():Broadcast(DataMessageNames.ON_CELL_SKILL_ACTIVE_UPDATE,_skillData.id,3)
			UISpecial:GetInstance():UITipText("突破成功！")
			self:CloseSelf()
		end
	end)
end


UISkillBreakThroughCtrl.CloseSelf = CloseSelf
UISkillBreakThroughCtrl.SendSkillBreakThrough = SendSkillBreakThrough

return UISkillBreakThroughCtrl
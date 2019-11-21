
--[[
-- 控制层
--]]

local UILearnSkillCtrl = BaseClass("UILearnSkillCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UILearnSkill)
    --UIManager:GetInstance() :CloseWindow(UIWindowNames.UISkillInfo)
end
local function SendLearnRequest(self,isSlip)
    local msd_id = MsgIDDefine.PBCARD_STUDY_SKILL_BLANK_REQUEST
    local msg = (MsgIDMap[msd_id])()
    msg.cardId = self.model.cardId
    self.isSlip=isSlip
    if isSlip then
        msg.skillId =0
    else
        msg.skillId = self.model.dataId
    end
    msg.position = self.model.blankPosition
    GuideManager:GetInstance():SetGuideServerStep(msg)
    NetManager:GetInstance():SendMessage(msd_id, msg,Bind(self,self.OnRecvStudy))
    CardData:GetInstance():CheckSkillRedByCard()

    --NetManager:GetInstance():AddListener(MsgIDDefine.PBCARD_STUDY_SKILL_BLANK_RESPONSE,self.OnRecvStudy,self)
end

local function OnRecvStudy(self,msg_obj,isSlip)
   -- NetManager:GetInstance():RemoveListener(MsgIDDefine.PBCARD_STUDY_SKILL_BLANK_RESPONSE,self.OnRecvStudy)
    if msg_obj.OpCode ~= 0 then
        Logger.Log("出错了~")
        return
    end

    if self.isSlip then
        --卸下
        --local cardData = CardData:GetInstance().cards[self.model.cardId]
        local  oldSkill = SkillData:GetInstance().skills[self.model.dataId]
        if oldSkill ~=nil then
            ---插槽位已经有技能，卸掉对应技能上的卡牌信
            CardData:GetInstance():DisarmSkill(self.model.cardId,oldSkill.position)
            SkillData:GetInstance():UpdateWearSkill(oldSkill.id, 0, -1)
        end

    else
        --新技能是否已经被别人学习
        local newSkill = SkillData:GetInstance().skills[self.model.dataId]
        if newSkill ~= nil and newSkill.skillType == 2 and newSkill.cardId ~= 0 then
            ---新技能已经被别人学习，卸掉对应卡牌上的技能信息
            CardData:GetInstance():DisarmSkill(newSkill.cardId, newSkill.position)
        end
        --插槽位是否已经有技能
        local cardData = CardData:GetInstance().cards[self.model.cardId]
        local oldSkill = nil
        if cardData ~=nil then
            oldSkill = SkillData:GetInstance().skills[cardData.wearSkills[self.model.blankPosition]]
            if oldSkill ~=nil then
                ---插槽位已经有技能，卸掉对应技能上的卡牌信息
                SkillData:GetInstance():UpdateWearSkill(oldSkill.id, 0, -1)
            end
            ---更新技能上的卡牌信息
            SkillData:GetInstance():UpdateWearSkill(newSkill.id, cardData.id, self.model.blankPosition)
            ---更新卡牌上的技能信息
            CardData:GetInstance():WearSkill( newSkill.cardId, newSkill.position, newSkill.id)
        end
        --UISpecial:GetInstance():UITipText(LangUtil.GetCHNLanguageText(LocalLanguageDefine.LearnSkillSuccessful))
        --
        --UIManager:GetInstance():Broadcast(UIMessageNames.UI_SKILL_REFRESH)
    end
    CardData:GetInstance():CheckSkillRedByCard()
    DataManager:GetInstance():Broadcast(DataMessageNames.ON_SKILL_DATA_CHANGE,self.model.dataId)

    self:CloseSelf()
end

UILearnSkillCtrl.CloseSelf = CloseSelf
UILearnSkillCtrl.SendLearnRequest = SendLearnRequest
UILearnSkillCtrl.OnRecvStudy = OnRecvStudy

return UILearnSkillCtrl
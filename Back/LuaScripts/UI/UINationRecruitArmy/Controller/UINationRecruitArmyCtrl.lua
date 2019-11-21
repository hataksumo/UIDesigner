
--[[
-- 控制层
--]]

local UINationRecruitArmyCtrl = BaseClass("UINationRecruitArmyCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UINationRecruitArmy)
end

local function OnCheckBoxDIUIButtonPressed(self)
    --Logger.LogErrorVars("OnCheckBoxDIUIButtonPressed")
    DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_RECRUIT_MODE_CHANGE)
end

local function OnStopChargeUIButtonPressed(self,view,costTable)
    --Logger.LogErrorVars("OnStopChargeUIButtonPressed")
    if not self.model:IsCardTablesRecruitingStatus() then
        UISpecial:GetInstance():UITipText(self.model.NoTeamCanStop)
        return
    end
    local orginVal = self.model.recruitReturnRate * 100
    local f1,f2 = math.modf(orginVal)
    if f2  ~= 0 then
    else
        orginVal = f1
    end
    local content_text = string.format(self.model.StopRecruitArmyReturnTips,
            string.format("%s%s",orginVal ,"%"))

    local openUIParams = {myCallback =
                          Bind(self,function (self,teamId)
        if not self.model:IsCardTablesRecruitingStatus() then
            UISpecial:GetInstance():UITipText(self.model.NoTeamCanStop)
            return
        end
        --Logger.LogErrorVars(" openUIParams 回调成功")
        NationNetManager:GetInstance():SendNationCardStopRecruitRequest(teamId,nil,
                Bind(self,self.__OnSendNationCardStopRecruitCallback))
    end),
                          teamId = self.model.teamId,
                          content_text = content_text,
                          content_title =  self.model.StopRecruitArmyReturnTipTitle,
                          recruitReturnRes = costTable,
    }

    UIManager:GetInstance():OpenWindow(UIWindowNames.UINationWithResTip,
            NationDefine.NATION_RESOURCE_TIP_WINDOW_TYPE.RECRUIT_RETURN,
            openUIParams)
end



local function __OnSendNationCardStopRecruitCallback(self,opCode,teamId,userDefineData,netDatas)
    if opCode ~= 0 then
        return
    end

    local conscription  = netDatas.conscription
    ------重置征募兵
    --for i, v in ipairs(conscription) do
    --    userDefineData:SetCurrentNeedCropArmyCountWithCardId(v.cardId,0)
    --end
    --Logger.LogErrorVars(" __OnSendNationCardStopRecruitCallback 成功停止   刷新card 兵力   然后反向刷新View")
    NationCardData:GetInstance():UpdateCardArmyByNetData(conscription,true)

    --
    --if conscription ~= nil then
    --	for i = 1, #conscription do
    --		NationCardData:GetInstance():UpdateCardTime(conscription[i].cardId,0,0)
    --		NationCardData:GetInstance():UpdateCardArmy(conscription[i].cardId,conscription[i].count)
    --		--传递  刷新界面
    --	end
    --end
    --UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_CHAGE_DATA)
end


local function OnConfirmChargeUIButtonPressed(self,view,sendList)
    --Logger.LogErrorVars("OnConfirmChargeUIButtonPressed")
    if table.length(sendList) <= 0 then
        UISpecial:GetInstance():UITipText(self.model.NoTeamCanDraft)
        return
    end

    UIManager:GetInstance():OpenTwoButtonTip(self.model.ConfirmBoxRecruitTitle,self.model.ConfirmBoxRecruitContent,self.model.ConfirmBoxRecruitCancelText,self.model.ConfirmBoxRecruitSureText,function ()
        UIManager:GetInstance():CloseTip()
    end ,function ()
        --Logger.LogVars("--发送开始征兵协议")
        NationNetManager:GetInstance():SendNationCardRecruitRequest(self.model.recruitMode,self.model.teamId,self.model.townData.townId,sendList,view,
        Bind(self,self.__OnSendNationCardRecruitCallback))
    end)
end

local function __OnSendNationCardRecruitCallback(self,opCode,recruitMode,teamId,townId,sendList,userDefineData,netDatas)
    if opCode ~= 0 then
        return
    end
    if userDefineData == nil then
        return
    end

    --重置征募兵
    for i, v in pairs(sendList) do
        userDefineData:SetCurrentNeedCropArmyCountWithCardId(v.cardId,0)
    end

    -- 处理征募状态
    if netDatas == nil or netDatas._is_null then

    else
        NationCardData:GetInstance():UpdateNationCardsByNetData(netDatas.nation_card)
    end
    --UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_CHAGE_DATA)
end

UINationRecruitArmyCtrl.__OnSendNationCardRecruitCallback = __OnSendNationCardRecruitCallback
UINationRecruitArmyCtrl.__OnSendNationCardStopRecruitCallback = __OnSendNationCardStopRecruitCallback


UINationRecruitArmyCtrl.CloseSelf = CloseSelf
UINationRecruitArmyCtrl.OnCheckBoxDIUIButtonPressed = OnCheckBoxDIUIButtonPressed
UINationRecruitArmyCtrl.OnStopChargeUIButtonPressed = OnStopChargeUIButtonPressed
UINationRecruitArmyCtrl.OnConfirmChargeUIButtonPressed = OnConfirmChargeUIButtonPressed


return UINationRecruitArmyCtrl
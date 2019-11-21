local UINationScienceInfoCtrl = BaseClass("UINationScienceInfoCtrl", UIBaseCtrl)

local function CloseSelf(self)
    UIManager:GetInstance():CloseWindow(UIWindowNames.UINationScienceInfo)
end

local function __OnSendTechnologyRequestCallback(opCode, techId, buyType,techPayCost, lastTime, startTime)

    if opCode ~= 0 then
        return
    end
    if buyType ==  NationDefine.NATION_TECH_UPGRADE_QUEUE_TYPE.PAY then
        BackpackData:GetInstance():UpdateItemData(CoinDefine.Diamond,- techPayCost)
    end
    NationScienceData:GetInstance():UpdateTechDataByResearch(techId, buyType, lastTime, startTime, true)
    CloseSelf()
end

local function __OnUpgradeQueueTipCallback(self, lastSt, result)
    if not result then
        return
    end
    local nowSt = self:GetUpgradeStatus()
    if nowSt ~= lastSt then
        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200214))
        return
    end
    if BackpackData:GetInstance():GetItemNumById(CoinDefine.Diamond) < NationMapInfoData:GetInstance():GetNationalGlobal().TechPayCost then
        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200342))
        return
    end
    NationNetManager:GetInstance():SendTechResearchRequest(self.model.id, nowSt,NationMapInfoData:GetInstance():GetNationalGlobal().TechPayCost, __OnSendTechnologyRequestCallback)
end

--点击升级按钮
local function upLevelButtonClick(self)
    local st = self:GetUpgradeStatus()
    if st == NationDefine.NATION_TECH_UPGRADE_QUEUE_TYPE.PAY or st == NationDefine.NATION_TECH_UPGRADE_QUEUE_TYPE.FREE then
    else
        -- 最大队列了
        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200215))
        return
    end
    if st == NationDefine.NATION_TECH_UPGRADE_QUEUE_TYPE.PAY then
        UIManager:GetInstance():OpenTwoButtonTip(DataUtil.GetClientText(200005), string.format(DataUtil.GetClientText(200216), NationMapInfoData:GetInstance():GetNationalGlobal().TechPayCost),
                DataUtil.GetClientText(200006), DataUtil.GetClientText(200007), Bind(self, self.__OnUpgradeQueueTipCallback, st, true), Bind(self, self.__OnUpgradeQueueTipCallback, st, false))
    else
        NationNetManager:GetInstance():SendTechResearchRequest(self.model.id, st,NationMapInfoData:GetInstance():GetNationalGlobal().TechPayCost, __OnSendTechnologyRequestCallback)
    end
end

local function GetUpgradeStatus(self)
    local st = 0
    if NationScienceData:GetInstance():GetFreeCurrentQueueCount() < NationScienceData:GetInstance():GetFreeMaxQueueCount() then
        -- 免费
        st = NationDefine.NATION_TECH_UPGRADE_QUEUE_TYPE.FREE
    elseif NationScienceData:GetInstance():GetPayCurrentQueueCount() < NationScienceData:GetInstance():GetPayMaxQueueCount() then
        st = NationDefine.NATION_TECH_UPGRADE_QUEUE_TYPE.PAY
    else
        -- 最大队列了
    end
    return st
end

local function __OnCancelTechRequestCallback(opCode, techId)
    if opCode ~= 0 then
        return
    end
    NationScienceData:GetInstance():UpdateTechDataByCancel(techId, true)
    CloseSelf()
end

--取消升级
local function upLevelCancelButtonClick(self)
    local function callBack1()
        NationNetManager:GetInstance():SendCancelTechReserchRequest(self.model.id, __OnCancelTechRequestCallback)
    end
    UIManager:GetInstance():OpenTwoButtonTip(DataUtil.GetClientText(200005), DataUtil.GetClientText(200217), DataUtil.GetClientText(200006), DataUtil.GetClientText(200007), callBack1, nil)
end

local function __OnFinishTechRequestCallback(opCode, techId,techFinishResumeDiamond)
    if opCode ~= 0 then
        return
    end
    BackpackData:GetInstance():UpdateItemData(CoinDefine.Diamond,- techFinishResumeDiamond)
    NationScienceData:GetInstance():UpdateTechDataByFinish(techId, true)
end

--立即完成
local function rightNowFinishButtonClick(self)
    local function callBack1()
        if BackpackData:GetInstance():GetItemNumById(CoinDefine.Diamond) < self.model.TechFinishResumeDiamond then
            UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200218))
            return
        end
        NationNetManager:GetInstance():SendTechFinishResquest(self.model.id,self.model.TechFinishResumeDiamond, __OnFinishTechRequestCallback)
    end
    UIManager:GetInstance():OpenTwoButtonTip(DataUtil.GetClientText(200005), string.format(DataUtil.GetClientText(200219), self.model.TechFinishResumeDiamond), DataUtil.GetClientText(200006), DataUtil.GetClientText(200007), callBack1, nil)
end

UINationScienceInfoCtrl.__OnUpgradeQueueTipCallback = __OnUpgradeQueueTipCallback
UINationScienceInfoCtrl.GetUpgradeStatus = GetUpgradeStatus
UINationScienceInfoCtrl.CloseSelf = CloseSelf
UINationScienceInfoCtrl.upLevelButtonClick = upLevelButtonClick
UINationScienceInfoCtrl.upLevelCancelButtonClick = upLevelCancelButtonClick
UINationScienceInfoCtrl.rightNowFinishButtonClick = rightNowFinishButtonClick

return UINationScienceInfoCtrl
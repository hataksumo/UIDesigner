local effectData = {
    nameText = "",
    preCount = 0,
    nextCount = 0,
}

local finalEffectData = {
    contentText = "",
    caseText = "",
}

local costData = {
    icon = "",
    countText = "",
}

local UINationScienceInfoModel = BaseClass("UINationScienceInfoModel", UIBaseModel)
local base = UIBaseModel

local effectItem = DataClass("effectItem", effectData)
local finalEffectItem = DataClass("finalEffectItem", finalEffectData)
local costItem = DataClass("costItem", costData)
local ItemInfo = DataUtil.GetData("item")
local techInfo = DataUtil.GetData("national_tech")
local GlobalInfo = DataUtil.GetData("global")

-- 创建
local function OnCreate(self)
    base.OnCreate(self)

    for i, v in pairs(GlobalInfo) do
        if v.Key == "TechFinish" then
            self.TechFinishResumeDiamond = v.valueN
        end
    end
end

-- 打开
local function OnEnable(self, id)
    base.OnEnable(self)
    self.id = id

    local config = techInfo[self.id]
    self.name = config.TechName
    self.des = config.TechDes
    self.icon = config.TechIcon

    self:OnRefresh()
end

-- 刷新全部数据
local function OnRefresh(self)

    self.scienceData = NationScienceData:GetInstance():GetScienceItemById(self.id)
    self.state = NationScienceData:GetInstance():GetScienceState(self.scienceData)

    self.levelText = "LV" .. self.scienceData.level .. "/" .. self.scienceData.techStaticData.LvMax

    self.effectItems = {}
    self.finalEffectItem = {}
    self.costItems = {}

    --当前级别效果
    local currentLvConfig = {}
    --下一级，级别效果
    local nextLvConfig = {}
    if self.scienceData.level == 0 then
        currentLvConfig = nil
        nextLvConfig = self.scienceData.techStaticData.Lv[self.scienceData.level + 1]
    elseif self.scienceData.level >= self.scienceData.techStaticData.LvMax then
        currentLvConfig = self.scienceData.techStaticData.Lv[self.scienceData.level]
        nextLvConfig = self.scienceData.techStaticData.Lv[self.scienceData.level]
    else
        currentLvConfig = self.scienceData.techStaticData.Lv[self.scienceData.level]
        nextLvConfig = self.scienceData.techStaticData.Lv[self.scienceData.level + 1]
    end

    --升级效果
    for k, v in ipairs(nextLvConfig.Effect) do
        local item = effectItem.New()
        item.nameText = nextLvConfig.EffectName[k]
        if currentLvConfig == nil then
            item.preCount = "—"
            --百分比
            if v.Numeric == 1 then
                item.nextCount = (v.Value * 100) .. "%"
            elseif v.Numeric == 2 then
                --数值
                item.nextCount = v.Value .. "" --单位？
            end
        else
            --百分比
            if v.Numeric == 1 then
                item.preCount = (currentLvConfig.Effect[k].Value * 100) .. "%"
                item.nextCount = (v.Value * 100) .. "%"
                --数值
            elseif v.Numeric == 2 then
                item.preCount = currentLvConfig.Effect[k].Value .. ""--单位？
                item.nextCount = v.Value .. ""
            end
            if currentLvConfig.Effect[k].Value == v.Value then
                item.nextCount = "—"
            end
        end
        table.insert(self.effectItems, item)
    end

    --升级消耗的材料
    local costs = nextLvConfig.Cost
    for k, v in ipairs(costs) do
        local item = costItem.New()
        item.icon = ItemInfo[v.Id].Icon
        local haveVale = math.floor(NationPlayerData:GetInstance():GetNationResourceRealNumByItemId(v.Id))
        if v.Val > haveVale then
            item.countText = "<color=#de4c4c>" .. v.Val .. "</color><color=#A48225>/" .. haveVale .. "</color>"
        else
            item.countText = v.Val .. "<color=#A48225>/" .. haveVale .. "</color>"
        end
        table.insert(self.costItems, item)
    end

    --升级大致所需时间
    local addTECH_SPEED = 0
    addTECH_SPEED = addTECH_SPEED + NationScienceData:GetInstance():GetScienceEffectAddByType(NationDefine.NATION_TECH_TYPE.TECH_SPEED)
    --Logger.LogErrorVars("11 addTECH_SPEED ",addTECH_SPEED)
    addTECH_SPEED = addTECH_SPEED + NationCardData:GetInstance():GetAllNationCardTalentEffectAddByType(NationDefine.NATION_CARD_TALENT_TYPE.IN_TECH, NationDefine.NATION_TECH_TYPE.TECH_SPEED)
    --Logger.LogErrorVars("22 addTECH_SPEED ",addTECH_SPEED)
    self.needTime = math.modf(nextLvConfig.Time / (1 + addTECH_SPEED))
    --Logger.LogErrorVars(" self.needTime ",self.needTime)
    --升级条件
    local front = self.scienceData.techStaticData.Front
    self.frontText = DataUtil.GetClientText(200211)
    if front ~= nil then
        for k, v in ipairs(front) do
            local text = techInfo[v.Id].TechName .. "Lv" .. v.Lv
            self.frontText = self.frontText .. " " .. text
        end
    end

    --一定等级下的附加效果
    local finalEffect = self.scienceData.techStaticData.ActivationEffect
    if finalEffect ~= nil then
        local item = finalEffectItem.New()
        --百分比
        if finalEffect.Numeric == 1 then
            if self.scienceData.level >= self.scienceData.techStaticData.LvMax then
                item.contentText = "<color=#3e793f>" .. self.scienceData.techStaticData.ActivationEffectName .. "+" .. (finalEffect.Value * 100) .. "%</color>"
            else
                item.contentText = self.scienceData.techStaticData.ActivationEffectName .. "+" .. (finalEffect.Value * 100) .. "%"
            end
        elseif finalEffect.Numeric == 2 then
            --固定数值
            if self.scienceData.level >= self.scienceData.techStaticData.LvMax then
                item.contentText = "<color=#3e793f>" .. self.scienceData.techStaticData.ActivationEffectName .. "+" .. finalEffect.Value .. "</color>"
            else
                item.contentText = self.scienceData.techStaticData.ActivationEffectName .. "+" .. finalEffect.Value
            end
        end
        if self.scienceData.level >= self.scienceData.techStaticData.LvMax then
            item.caseText = DataUtil.GetClientText(200213)
        else
            item.caseText = DataUtil.GetClientText(200212)
        end
        table.insert(self.finalEffectItem, item)
    end

    self.levelUpTime = {}
    self.levelUpTime.totalTime = math.modf((self.scienceData.lastTime - self.scienceData.startTime) / 1000)
    self.levelUpTime.remindTime = math.modf((self.scienceData.lastTime - TimeSyncManager:GetInstance():GetSimulationJavaMS()) / 1000)
end

local function __OnNationScienceOneFlush(self, techID)
    if techID == self.id then
        self:OnRefresh()
        self:UIBroadcast(UIMessageNames.ON_NATION_SCIENCEINFO_REFRESH)
    end
end

-- 监听
local function OnAddListener(self)
    base.OnAddListener(self)
    --添加监听
    self:AddDataListener(DataMessageNames.ON_NATION_SCIENCE_ONE_FLUSH, __OnNationScienceOneFlush)
    --self:AddDataListener(DataMessageNames.ON_NATION_PLAYER_RES_VALUE_CHANGE, OnRefresh)
    --self:AddDataListener(DataMessageNames.ON_NATION_PLAYER_DATA_FLUSH, OnRefresh)
    --self:AddDataListener(DataMessageNames.ON_NATION_UI_FAME_TIMER_UPDATE, OnRefresh)
    --self:AddDataListener(DataMessageNames.ON_NATION_ALL_RES_AREA_DATA_FLUSH, OnRefresh)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- 移除监听
    self:RemoveDataListener(DataMessageNames.ON_NATION_SCIENCE_ONE_FLUSH, __OnNationScienceOneFlush)
    --self:RemoveDataListener(DataMessageNames.ON_NATION_PLAYER_RES_VALUE_CHANGE, OnRefresh)
    --self:RemoveDataListener(DataMessageNames.ON_NATION_PLAYER_DATA_FLUSH, OnRefresh)
    --self:RemoveDataListener(DataMessageNames.ON_NATION_UI_FAME_TIMER_UPDATE, OnRefresh)
    --self:RemoveDataListener(DataMessageNames.ON_NATION_ALL_RES_AREA_DATA_FLUSH, OnRefresh)
end

-- 关闭
local function OnDisable(self)
    base.OnDisable(self)
    -- 清理成员变量

    self.id = nil
    self.name = nil
    self.des = nil
    self.icon = nil
    self.scienceData = nil
    self.state = nil
    self.levelText = nil
    self.effectItems = {}
    self.finalEffectItem = {}
    self.costItems = {}
    self.levelUpTime = {}
end

-- 销毁
local function OnDestroy(self)
    base.OnDestroy(self)
    -- 清理成员变量

end

UINationScienceInfoModel.OnCreate = OnCreate
UINationScienceInfoModel.OnEnable = OnEnable
UINationScienceInfoModel.OnRefresh = OnRefresh
UINationScienceInfoModel.OnAddListener = OnAddListener
UINationScienceInfoModel.OnRemoveListener = OnRemoveListener
UINationScienceInfoModel.OnDisable = OnDisable
UINationScienceInfoModel.OnDestroy = OnDestroy

return UINationScienceInfoModel
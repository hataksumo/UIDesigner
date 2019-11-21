--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UINationGuardianSoulForceModel = BaseClass("UINationGuardianSoulForceModel", UIBaseModel)
local base = UIBaseModel
local CROPS_LOCK_ST = {
    NEVER_LOCK = 1, --未解锁
    ALREADY_LOCK = 2, --已解锁
}
-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 窗口生命周期内保持的成员变量放这
    self.allItemData = DataUtil.GetData("item")
    self.ArmyGroupConvertResContent = DataUtil.GetClientText(200329)
    self.ArmyGroupConvertResTitle = DataUtil.GetClientText(200331)

    self.TeamNotInStandByContent = DataUtil.GetClientText(200337) -- 队伍处于非待命状态，无法进行转换
    self.TeamInRecruitContent = DataUtil.GetClientText(200338) -- 队伍内存在处于征募中状态的角色，无法进行转换
    self.TeamArmyGroupUnlockMaxCountContent = DataUtil.GetClientText(200339) -- 当前可解锁军团数量已达上限，无法继续解锁
    self.TeamConfirmArmyGroupUnlockContent = DataUtil.GetClientText(200340) -- 是否确定解锁该军团？
    self.TeamConfirmArmyGroupResetContent = DataUtil.GetClientText(200341) -- 是否确定重置该军团？
    self.TeamConfirmArmyGroupResetNotEnoughResContent = DataUtil.GetClientText(200342) -- 消耗货币不足
    self.TeamNotInStandByArmyGroupResetContent = DataUtil.GetClientText(200343) -- 有队伍处于非待命状态，无法进行重置
    self.ItemSubTitle = DataUtil.GetClientText(200344) -- 军团特性
    self.ItemSubBtnUnlock = DataUtil.GetClientText(200345) -- 未解锁
    self.ItemSubBtnInUse = DataUtil.GetClientText(200346) -- 使用中
    self.ItemSubBtnConvert = DataUtil.GetClientText(200347) -- 转换
    self.ItemSubBtnLock = DataUtil.GetClientText(200348) -- 解锁
    self.ItemSubBtnCanNotResetDefault = DataUtil.GetClientText(200349) -- 初始军团无法重置
    self.ItemSubBtnReset = DataUtil.GetClientText(200350) -- 重置

    self.CommonBoxTitle = DataUtil.GetClientText(200029) -- 提<size=40>示</size>
    self.CommonBoxConfirm = DataUtil.GetClientText(200006) -- 确定
    self.CommonBoxCancel = DataUtil.GetClientText(200007) -- 取消


    self.kezhiDesc = "<color=#172435>对被克制军团造成伤害</color> <color=#3C8A3E>%s%%</color>"
    self.beiKeDesc = "<color=#172435>对被克制军团减伤</color> <color=#3C8A3E>%s%%</color>"

    --self.kezhiDesc = string.format("<color=#172435>对被克制军团造成伤害</color> <color=#3C8A3E>%s%%</color>",
    --		math.modf(self.myTeamData.staticCropData.CounterAtk * 100))
    --self.beiKeDesc = string.format("<color=#172435>对被克制军团减伤</color> <color=#3C8A3E>%s%%</color>",
    --		math.modf(self.myTeamData.staticCropData.CounterDef * 100) )

end

local function __ArrayHasSameElement(allCellYList, xPoint)
    for j, v in ipairs(allCellYList) do
        if v == xPoint then
            return true
        end
    end
    return false
end


-- 打开
local function OnEnable(self, openType, teamId)
    base.OnEnable(self)
    -- 窗口关闭时可以清理的成员变量放这
    self.open_type = openType
    self.teamId = teamId
    self:__FlushGuardData(false)
end



-- 存储队伍的军团id
local function SetGuardianData(self, teamId)

    local hasTeamId = true
    if teamId == nil then
        hasTeamId = false
    else
        if teamId <= 0 then
            hasTeamId = false
        end
    end
    local teamData = nil
    if hasTeamId then
        teamData = NationTeamData:GetInstance():GetNationTeamDataById(teamId)
    end

    if teamData == nil then
        hasTeamId = false
    else
        hasTeamId = true
    end

    if hasTeamId then
        self.myTeamData = {}
        self.myTeamData.myTeamId = teamId
        self.myTeamData.armyGroupId = teamData.armyGroupId
        self.myTeamData.staticCropData = NationMapInfoData:GetInstance():GetNationalCropsById(self.myTeamData.armyGroupId)
        self.counterAtk = self.myTeamData.staticCropData.CounterAtk
        if self.counterAtk == nil then
            self.counterAtk = 2
        end
        self.counterAtk = math.modf(self.counterAtk * 100)
        self.counterDef = self.myTeamData.staticCropData.CounterDef
        if self.counterDef == nil then
            self.counterDef = 0.2
        end
        self.counterDef = math.modf(self.counterDef * 100)
    else
        self.myTeamData = nil
        self.counterAtk = 2
        self.counterAtk = math.modf(self.counterAtk * 100)
        self.counterDef = 0.2
        self.counterDef = math.modf(self.counterDef * 100)

        --self.kezhiDesc = string.format("<color=#172435>对被克制军团造成伤害</color> <color=#3C8A3E>%s%%</color>",
        --		math.modf(2 * 100))
        --self.beiKeDesc = string.format("<color=#172435>对被克制军团减伤</color> <color=#3C8A3E>%s%%</color>",
        --		math.modf(0.2 * 100))
    end
    --Logger.LogVars("SetGuardianData : ",self.teamId," self.myTeamData ： ",self.myTeamData)
end

local function __FlushGuardData(self, hasEvent)
    self:SetGuardianData(self.teamId)
    self.unlock_army_group = NationTeamData:GetInstance().unlock_army_group -- 当前已使用的军团
    self.unlock_army_group_number = table.length(self.unlock_army_group) -- 已解锁的军团数量
    self.unlock_army_group_maxnumber = NationTeamData:GetInstance():GetMaxCorpsNum() -- 军团最大数量
    self.InitialCorps = NationTeamData:GetInstance().InitialCorps -- 初始军团id
    local teamGroupData = {}
    local national_crops = NationMapInfoData:GetInstance().national_crops -- 所有军团数据

    for j, v in ipairs(national_crops) do
        local groupItemData = {}
        groupItemData.id = v.Id
        groupItemData.corpsId = v.CorpsId
        groupItemData.name = v.Name
        groupItemData.icon = v.Icon
        groupItemData.bgImage = v.CorpsTypeIcon
        groupItemData.reset = v.Reset
        groupItemData.CorpsEffectDes = v.CorpsEffectDes
        groupItemData.CorpsEffect = v.CorpsEffect
        if v.ReConsume ~= nil then
            --重置消耗
            groupItemData.reConsume = {}
            for _, m in ipairs(v.ReConsume) do
                local item = {}
                item.id = m.Id
                item.num = m.val
                table.insert(groupItemData.reConsume, item)
            end
        end
        --征兵消耗
        groupItemData.consume = {}
        for i, m in ipairs(v.Consume) do
            local conItem = {}
            conItem.id = m.Id
            conItem.num = m.val
            table.insert(groupItemData.consume, conItem)
        end
        --转换消耗
        if v.TurnConsume ~= nil then
            groupItemData.turnConsume = {}
            for i, m in ipairs(v.TurnConsume) do
                local turnItem = {}
                turnItem.id = m.Id
                turnItem.num = m.val
                table.insert(groupItemData.turnConsume, turnItem)
            end
        end
        groupItemData.unlock_st = self.CROPS_LOCK_ST.NEVER_LOCK --1未解锁 2已解锁
        table.insert(teamGroupData, groupItemData)
    end
    for _, m in ipairs(teamGroupData) do
        if self.__ArrayHasSameElement(self.unlock_army_group, m.corpsId) then
            m.unlock_st = self.CROPS_LOCK_ST.ALREADY_LOCK
        end
    end

    self.armyGroupModelDatas = teamGroupData
    table.sort(self.armyGroupModelDatas, function(a, b)
        return a.unlock_st > b.unlock_st
    end)

    if hasEvent then
        UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_GUARDIAN_UPDATE)
    end
end

local function __OnUpdateGuardianData(self)
    self:__FlushGuardData(true)
end

-- 监听
local function OnAddListener(self)
    base.OnAddListener(self)
    --添加监听
    self:AddDataListener(DataMessageNames.ON_NATION_GUARDIAN_UPDATE, self.__OnUpdateGuardianData)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- 移除监听
    self:RemoveDataListener(DataMessageNames.ON_NATION_GUARDIAN_UPDATE, self.__OnUpdateGuardianData)
end

-- 关闭
local function OnDisable(self)
    base.OnDisable(self)
    -- 清理成员变量

end

-- 销毁
local function OnDestroy(self)
    base.OnDestroy(self)
    -- 清理成员变量

end

UINationGuardianSoulForceModel.OnCreate = OnCreate
UINationGuardianSoulForceModel.OnEnable = OnEnable
UINationGuardianSoulForceModel.OnAddListener = OnAddListener
UINationGuardianSoulForceModel.OnRemoveListener = OnRemoveListener
UINationGuardianSoulForceModel.OnDisable = OnDisable
UINationGuardianSoulForceModel.OnDestroy = OnDestroy
UINationGuardianSoulForceModel.CROPS_LOCK_ST = CROPS_LOCK_ST
UINationGuardianSoulForceModel.__ArrayHasSameElement = __ArrayHasSameElement
UINationGuardianSoulForceModel.SetGuardianData = SetGuardianData
UINationGuardianSoulForceModel.__FlushGuardData = __FlushGuardData
UINationGuardianSoulForceModel.__OnUpdateGuardianData = __OnUpdateGuardianData

return UINationGuardianSoulForceModel
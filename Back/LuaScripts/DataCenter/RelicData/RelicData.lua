local RelicModuleData = {
    --神器组件id
    id = 0,
    --神器组件等级
    level = 0,
    name = "",
}

local RelicData = BaseClass("RelicData", Singleton)
local RelicModuleData = DataClass("RelicModuleData", RelicModuleData)
local allRelicModuleData
local allRelicBodyData

-- 解析背包数据
local function ParseRelicModuleListFromServer(self, serverModuleData)

    for _, v in ipairs(serverModuleData) do
        self:UpdateRelicModuleData(v.id, v.level)
    end
    Logger.LogVars("serverModuleData",serverModuleData)
    Logger.LogVars("self.relicModules",self.relicModules)
end

local function __init(self)
    -- 背包物品列表
    self.relicModules = {}

    allRelicModuleData = DataUtil.GetData("relic_module")
    allRelicBodyData = DataUtil.GetData("relic_body")
    --self.caseList = {
    --    [CoinDefine.Diamond] = function()
    --        UIManager:GetInstance():Broadcast(UIMessageNames.ON_DIAMOND_NUM_CHANGE)
    --    end,
    --    [CoinDefine.Gold] = function()
    --        UIManager:GetInstance():Broadcast(UIMessageNames.ON_GOLD_NUM_CHANGE)
    --    end,
    --    [CoinDefine.GuardExp] = function()
    --        UIManager:GetInstance():Broadcast(UIMessageNames.ON_GUARD_EXP_NUM_CHANGE)
    --    end,
    --    [CoinDefine.HostExp] = function()
    --        UIManager:GetInstance():Broadcast(UIMessageNames.ON_HOST_EXP_NUM_CHANGE)
    --    end,
    --    [CoinDefine.SkillExp] = function()
    --        UIManager:GetInstance():Broadcast(UIMessageNames.ON_SKILL_EXP_NUM_CHANGE)
    --    end,
    --    [CoinDefine.Stamina] = function()
    --        UIManager:GetInstance():Broadcast(UIMessageNames.ON_STAMINA_NUM_CHANGE)
    --    end,
    --}
end

--local function NotifyChange(self, itemId)
--    DataManager:GetInstance():Broadcast(DataMessageNames.ON_ITEM_CHANGE)
--    if self.caseList[itemId] then
--        self.caseList[itemId]()
--        UIManager:GetInstance():Broadcast(UIMessageNames.ON_SOME_COIN_NUM_CHANGE)
--    end
--end

local function UpdateRelicModuleData(self, moduleId, level)
    local moduleData = self.relicModules[moduleId]
    if moduleData ~= nil then
        moduleData.level = level
    else
        moduleData = RelicModuleData.New()
        moduleData.id = moduleId
        moduleData.level = level
        local moduleStaticData = allRelicModuleData[moduleData.id]
        if moduleStaticData ~= nil then
            moduleData.name = moduleStaticData.Name
            --item.icon = itemStaticData.Icon
            --item.painting = itemStaticData.Icon
            --item.type = itemStaticData.ItemType
            --item.backPackType = itemStaticData.ShowBagTab
            --item.quality = itemStaticData.Quality
            --item.frame = SpriteDefine:GetItemQualityFrameByType(item.quality)
            --item.shortDes = itemStaticData.ShortDes
            --item.des = itemStaticData.Des
            --item.canOverlap = itemStaticData.CanOverlap
            --item.itemSource = itemStaticData.ItemSource
            --item.canSell = itemStaticData.CanSell
            --item.canUse = itemStaticData.CanUse
            --item.boxDrop = itemStaticData.BoxDrop
            --item.sellGetCoin = itemStaticData.SellGetCoin
            --item.showBag = itemStaticData.ShowBag
        end
        self.relicModules[moduleData.id] = moduleData
    end
    --NotifyChange(self,itemId)
end

--根据物品id获取信息
local function GetRelicModuleDataByRelicModuleId(self, id)
    return self.relicModules[id]
end


RelicData.ParseRelicModuleListFromServer = ParseRelicModuleListFromServer
RelicData.GetRelicModuleDataByRelicModuleId = GetRelicModuleDataByRelicModuleId
RelicData.UpdateRelicModuleData = UpdateRelicModuleData
RelicData.__init = __init

return RelicData
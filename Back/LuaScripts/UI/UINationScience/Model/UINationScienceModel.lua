--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local ScienceShowData = {
    id = "",
    lastTime = 0,
    state = 0,
    name = "", --名字
    des = "", --描述
    icon = "", --图标
    levelText = "", --等级
    level = 0, --等级
    levelMax = 0, --最大等级
    pos = {}, --位置
    next = {}, --下一级联系

}

local UINationScienceModel = BaseClass("UINationScienceModel", UIBaseModel)
local base = UIBaseModel

local ScienceShowItem = DataClass("ScienceItem", ScienceShowData)

--暂时用不到，（升级某个科技后，玩家的全部资源发生变化，所以要刷新全部的数据）
local function OnDataMsgUpdateOneScienceItem(self, teachID)
    local scienceItemData = NationScienceData:GetInstance():GetScienceItemById(teachID)

    self.scienceItems[teachID].lastTime = math.floor((scienceItemData.lastTime - TimeSyncManager:GetInstance():GetSimulationJavaMS()) / 1000)
    self.scienceItems[teachID].level = scienceItemData.level
    if scienceItemData.level == self.scienceItems[teachID].levelMax then
        self.scienceItems[teachID].levelText = DataUtil.GetClientText(200203)
    else
        self.scienceItems[teachID].levelText = scienceItemData.level .. "/" .. self.scienceItems[teachID].levelMax
    end
    self.scienceItems[teachID].state = NationScienceData:GetInstance():GetScienceState(scienceItemData)

    UIManager:GetInstance():Broadcast(UIMessageNames.ON_NATION_SCIENCE_MAIN_ONE_REFRESH, teachID)
end

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 窗口生命周期内保持的成员变量放这

end

-- 打开
local function OnEnable(self)
    base.OnEnable(self)

    self.maxColumnCount = 0
    self:OnRefresh()
end

-- 刷新全部数据
local function OnRefresh(self)
    self.scienceItems = {}
    local items = NationScienceData:GetInstance().scienceItems
    for k, v in ipairs(items) do
        local showItem = ScienceShowItem.New()
        local config = DataUtil.GetData("national_tech")[v.id]
        showItem.id = v.id
        showItem.lastTime = math.floor((v.lastTime - TimeSyncManager:GetInstance():GetSimulationJavaMS()) / 1000)
        showItem.name = config.TechName
        showItem.des = config.TechDes
        showItem.icon = config.TechIcon
        showItem.level = v.level
        showItem.levelMax = config.LvMax
        if v.level == config.LvMax then
            showItem.levelText = DataUtil.GetClientText(200203)
        else
            showItem.levelText = v.level .. "/" .. config.LvMax
        end
        showItem.pos = config.Pos
        if showItem.pos.x >= self.maxColumnCount then
            self.maxColumnCount = showItem.pos.x
        end
        showItem.next = config.Next
        showItem.state = NationScienceData:GetInstance():GetScienceState(v)
        self.scienceItems[showItem.id] = showItem
    end
end

local function GetItemByPos(self, row, column)
    local item = nil
    for k, v in pairs(self.scienceItems) do
        if v.pos.x == row and v.pos.y == column then
            item = v
            break
        end
    end
    return item
end

--刷新所有科技
local function __OnNationScienceAllDataFlush(self)
    self:OnRefresh()
    self:UIBroadcast(UIMessageNames.ON_NATION_SCIENCEMAIN_REFRESH)
end
-- 监听
local function OnAddListener(self)
    base.OnAddListener(self)
    self:AddDataListener(DataMessageNames.ON_NATION_SCIENCE_ONE_FLUSH, __OnNationScienceAllDataFlush)
    self:AddDataListener(DataMessageNames.ON_NATION_SCIENCE_DATA_FLUSH, __OnNationScienceAllDataFlush)
    --玩家资源变化
    self:AddDataListener(DataMessageNames.ON_NATION_PLAYER_DATA_FLUSH, __OnNationScienceAllDataFlush)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    self:RemoveDataListener(DataMessageNames.ON_NATION_SCIENCE_ONE_FLUSH, __OnNationScienceAllDataFlush)
    self:RemoveDataListener(DataMessageNames.ON_NATION_SCIENCE_DATA_FLUSH, __OnNationScienceAllDataFlush)
    --玩家资源变化
    self:RemoveDataListener(DataMessageNames.ON_NATION_PLAYER_DATA_FLUSH, __OnNationScienceAllDataFlush)
end

-- 关闭
local function OnDisable(self)
    base.OnDisable(self)
    -- 清理成员变量
    self.maxColumnCount = nil
end

-- 销毁
local function OnDestroy(self)
    base.OnDestroy(self)
    -- 清理成员变量

end

UINationScienceModel.OnCreate = OnCreate
UINationScienceModel.OnEnable = OnEnable
UINationScienceModel.OnRefresh = OnRefresh
UINationScienceModel.OnAddListener = OnAddListener
UINationScienceModel.OnRemoveListener = OnRemoveListener
UINationScienceModel.OnDisable = OnDisable
UINationScienceModel.OnDestroy = OnDestroy
UINationScienceModel.GetItemByPos = GetItemByPos

return UINationScienceModel
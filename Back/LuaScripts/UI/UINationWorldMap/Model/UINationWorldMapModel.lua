--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UINationWorldMapModel = BaseClass("UINationWorldMapModel", UIBaseModel)
local base = UIBaseModel

local function OnUIMsgClickPointCellID(self, cellID)
    self.curClickPos = cellID
end

local function OnDataMsgGetSearchPath(self, showList, hideList)
    self.targetPathList = showList
    self.hidePathList = hideList
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_WORLD_MAP_REFRESH_ROAD_LINE)
end

local function OnDataMsgActiveCity(self, townID)
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_WORLD_MAP_TOWN_ACTIVE, townID)
end

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 窗口生命周期内保持的成员变量放这
    self.cityTypeList = {
        --ui_dtex_Item_1603001
        [1] = { type = 1, name = DataUtil.GetClientText(200394), icon = "ui_dtex_Nationwar_019" },
        [2] = { type = 2, name = DataUtil.GetClientText(200395), icon = "ui_dtex_Nationwar_020" },
        [3] = { type = 3, name = DataUtil.GetClientText(200396), icon = "ui_dtex_Nationwar_023" },
        [4] = { type = 4, name = DataUtil.GetClientText(200397), icon = "ui_dtex_Nationwar_024" },
        [5] = { type = 5, name = DataUtil.GetClientText(200398), icon = "ui_dtex_Nationwar_021" },
        [6] = { type = 6, name = DataUtil.GetClientText(200399), icon = "ui_dtex_Nationwar_022" },
    }
    self.curClickPos = {}
end

-- 打开
local function OnEnable(self)
    base.OnEnable(self)
    -- 窗口关闭时可以清理的成员变量放这

    self:OnRefresh()
end

-- 刷新全部数据
local function OnRefresh(self)


end

-- 监听
local function OnAddListener(self)
    base.OnAddListener(self)
    --添加监听
    self:AddUIListener(UIMessageNames.UI_NATION_WORLD_MAP_REFRESH_POSITION, OnUIMsgClickPointCellID)
    self:AddDataListener(DataMessageNames.ON_NATION_WORLD_MAP_UPDATE_PATH, OnDataMsgGetSearchPath)
    self:AddDataListener(DataMessageNames.ON_NATION_USER_TOWN_DATA_ACTIVE, OnDataMsgActiveCity)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- 移除监听
    self:RemoveUIListener(UIMessageNames.UI_NATION_WORLD_MAP_REFRESH_POSITION, OnUIMsgClickPointCellID)
    self:RemoveDataListener(DataMessageNames.ON_NATION_WORLD_MAP_UPDATE_PATH, OnDataMsgGetSearchPath)
    self:RemoveDataListener(DataMessageNames.ON_NATION_USER_TOWN_DATA_ACTIVE, OnDataMsgActiveCity)
end

-- 关闭
local function OnDisable(self)
    base.OnDisable(self)
    -- 清理成员变量

    self.targetPathList = {}
    self.hidePathList = {}
end

-- 销毁
local function OnDestroy(self)
    base.OnDestroy(self)
    -- 清理成员变量
    self.cityTypeList = {}
    self.curClickPos = {}
end

UINationWorldMapModel.OnCreate = OnCreate
UINationWorldMapModel.OnEnable = OnEnable
UINationWorldMapModel.OnRefresh = OnRefresh
UINationWorldMapModel.OnAddListener = OnAddListener
UINationWorldMapModel.OnRemoveListener = OnRemoveListener
UINationWorldMapModel.OnDisable = OnDisable
UINationWorldMapModel.OnDestroy = OnDestroy

return UINationWorldMapModel
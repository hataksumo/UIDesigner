--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UINationPositionPanelModel = BaseClass("UINationPositionPanelModel", UIBaseModel)
local base = UIBaseModel

local function OnDataMsgUpdatePosList(self)
    self.posList = NationCollectPosData:GetInstance():GetPosPointList()
    self.count = #self.posList
    UIManager:GetInstance():Broadcast(UIMessageNames.ON_NATION_POS_PANEL_REFRESH)
end

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 窗口生命周期内保持的成员变量放这

end

-- 打开
local function OnEnable(self)
    base.OnEnable(self)
    -- 窗口关闭时可以清理的成员变量放这

    self.posList = NationCollectPosData:GetInstance():GetPosPointList()
    self.count = #self.posList

    self:OnRefresh()
end

-- 刷新全部数据
local function OnRefresh(self)

end

-- 监听
local function OnAddListener(self)
    base.OnAddListener(self)
    --添加监听
    self:AddDataListener(DataMessageNames.ON_NATION_POS_LIST_UPDATE, OnDataMsgUpdatePosList)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- 移除监听
    self:RemoveDataListener(DataMessageNames.ON_NATION_POS_LIST_UPDATE, OnDataMsgUpdatePosList)
end

-- 关闭
local function OnDisable(self)
    base.OnDisable(self)
    -- 清理成员变量

    self.count = nil
    self.posList = {}
end

-- 销毁
local function OnDestroy(self)
    base.OnDestroy(self)
    -- 清理成员变量

end

UINationPositionPanelModel.OnCreate = OnCreate
UINationPositionPanelModel.OnEnable = OnEnable
UINationPositionPanelModel.OnRefresh = OnRefresh
UINationPositionPanelModel.OnAddListener = OnAddListener
UINationPositionPanelModel.OnRemoveListener = OnRemoveListener
UINationPositionPanelModel.OnDisable = OnDisable
UINationPositionPanelModel.OnDestroy = OnDestroy

return UINationPositionPanelModel
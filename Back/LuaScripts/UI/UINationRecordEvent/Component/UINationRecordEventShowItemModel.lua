local UINationRecordEventShowItemModel = BaseClass("UINationRecordEventShowItemModel", UIBaseModel)
local base = UIBaseModel

local function OnCreate(self)
    base.OnCreate(self)

end

local function OnEnable(self, tab)
    base.OnEnable(self)

    self.tab = tab

    self:OnRefresh()
end

local function OnRefresh(self)
    -- 各组件刷新

end

local function OnAddListener(self)
    base.OnAddListener(self)
    -- UI消息注册

end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- UI消息注销

end

local function OnDisable(self)
    base.OnDisable(self)

    self.tab = {}
end

local function OnDestroy(self)
    -- 销毁
    base.OnDestroy(self)
end

UINationRecordEventShowItemModel.OnCreate = OnCreate
UINationRecordEventShowItemModel.OnEnable = OnEnable
UINationRecordEventShowItemModel.OnRefresh = OnRefresh
UINationRecordEventShowItemModel.OnAddListener = OnAddListener
UINationRecordEventShowItemModel.OnRemoveListener = OnRemoveListener
UINationRecordEventShowItemModel.OnDisable = OnDisable
UINationRecordEventShowItemModel.OnDestroy = OnDestroy

return UINationRecordEventShowItemModel

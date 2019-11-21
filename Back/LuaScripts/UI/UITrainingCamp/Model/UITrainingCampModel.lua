--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]
local ItemData = {
    ID = -1,
    Name = "",
    ImageRes = "",
    SortID = -1,
}

local SubItemData = {
    ID = -1,
    TagID = -1,
    Name = "",
    Content = "",
    IconRes = "",
    MapPosId = -1,
    isFinish = false,
    RewardID = {},
}

local UITrainingCampModel = BaseClass("UITrainingCampModel", UIBaseModel)
local base = UIBaseModel
local teachTagInfo = DataUtil.GetData("teach_level_tag")
local teachItemInfo = DataUtil.GetData("teach_level")
local itemInfo = DataUtil.GetData("item")
local ItemDataModel = DataClass("ItemData", ItemData);
local SubItemDataModel = DataClass("SubItemData", SubItemData);

local function OnDataMsgSelectSubItem(self, index)
    self.curSubIndex = index
end

local function OnSelectItem(self, index, id)
    self.curID = id
    self.curIndex = index

    UIManager:GetInstance():Broadcast(UIMessageNames.UITRAININGCAMP_ON_SELECTITEM, index)
end

local function GetCurPassListSubItemData(self)
    return self.passItemList[self.curID]
end

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 窗口生命周期内保持的成员变量放这
    self.curID = 1
    self.curIndex = 0
    self.curSubIndex = 0
end

-- 打开
local function OnEnable(self, isOpen,_curId)
    base.OnEnable(self)
    -- 窗口关闭时可以清理的成员变量放这

    if isOpen then
        self.curID = 1
        self.curIndex = 0
        self.curSubIndex = 0
    end

    self.passTagList = {}
    self.passItemList = {}
    self.hadFinishPassList = TeachPassData:GetInstance().teachPassFinsh

    for _, v in pairs(teachTagInfo) do
        local tempItemData = ItemDataModel.New()
        tempItemData.ID = v.ID
        tempItemData.Name = v.Name
        tempItemData.ImageRes = v.Picture
        tempItemData.SortID = v.SortID
        table.insert(self.passTagList, tempItemData)
    end

    table.sort(self.passTagList, function(a, b)
        return (a.SortID < b.SortID)
    end)

    for index, w in pairs(teachItemInfo) do
        if self.passItemList[w.TagID] == nil then
            self.passItemList[w.TagID] = {}
        end
        local tempSubItemData = SubItemDataModel.New()
        tempSubItemData.ID = index
        tempSubItemData.TagID = w.TagID
        tempSubItemData.Name = w.Name
        tempSubItemData.Content = w.Desc
        tempSubItemData.IconRes = w.BossImg
        tempSubItemData.MapPosId = w.MapPosId
        tempSubItemData.isFinish = false

        if self.hadFinishPassList ~= nil then
            for _, a in pairs(self.hadFinishPassList) do
                if a == tempSubItemData.ID then
                    tempSubItemData.isFinish = true
                    break
                end
            end
        end

        for _, k in pairs(w.Award) do
            local temp1 = itemInfo[k.id]
            local temp = {}
            temp.ID = k.id
            temp.Icon = temp1.Icon
            temp.Quality = temp1.Quality
            temp.Count = k.val
            table.insert(tempSubItemData.RewardID, temp)
        end
        table.insert(self.passItemList[w.TagID], tempSubItemData)
    end
    if _curId ~= nil then
        OnSelectItem(self,_curId -1,_curId)
    end
    self:OnRefresh()
end

-- 刷新全部数据
local function OnRefresh(self)


end

-- 监听
local function OnAddListener(self)
    base.OnAddListener(self)
    --添加监听
    self:AddDataListener(DataMessageNames.ON_TRAININGCAMP_SELECT_ITEM, OnSelectItem)
    self:AddDataListener(DataMessageNames.ON_TRAININGCAMP_SELECT_SUBITEM, OnDataMsgSelectSubItem)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- 移除监听
    self:RemoveDataListener(DataMessageNames.ON_TRAININGCAMP_SELECT_ITEM, OnSelectItem)
    self:RemoveDataListener(DataMessageNames.ON_TRAININGCAMP_SELECT_SUBITEM, OnDataMsgSelectSubItem)
end

-- 关闭
local function OnDisable(self)
    base.OnDisable(self)
    -- 清理成员变量

    self.passTagList = {}
    self.passItemList = {}
    self.hadFinishPassList = {}
end

-- 销毁
local function OnDistroy(self)
    base.OnDistroy(self)
    -- 清理成员变量
    self.curID = nil
    self.curIndex = nil
    self.curSubIndex = nil
end

UITrainingCampModel.OnCreate = OnCreate
UITrainingCampModel.OnEnable = OnEnable
UITrainingCampModel.OnRefresh = OnRefresh
UITrainingCampModel.OnAddListener = OnAddListener
UITrainingCampModel.OnRemoveListener = OnRemoveListener
UITrainingCampModel.OnDisable = OnDisable
UITrainingCampModel.OnDistroy = OnDistroy
UITrainingCampModel.GetCurPassListSubItemData = GetCurPassListSubItemData

return UITrainingCampModel
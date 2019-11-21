local UINationSiegeRankBreakItem = BaseClass("UINationSiegeRankBreakItem", UIWrapComponent)
local base = UIWrapComponent

-- 组件添加了按钮组，则按钮被点击时回调该函数
local function OnItemClick(self)

end

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 组件初始化

    self.rank_text = self:AddComponent(UIText, "breakPItemRankUIText")
    self.name_text = self:AddComponent(UIText, "breakPItemName_UIText")
    self.score_text = self:AddComponent(UIText, "breakPItemScore_UIText")
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self, real_index, check)
    local itemData = self.view.model.logRankBreakList[real_index + 1]
    if itemData == nil then
        return
    end
    self.index = real_index
    self.id = itemData.ID

    self.rank_text:SetText(itemData.rank)
    self.name_text:SetText(itemData.name)
    self.score_text:SetText(itemData.score)
end

UINationSiegeRankBreakItem.OnCreate = OnCreate
UINationSiegeRankBreakItem.OnRefresh = OnRefresh
return UINationSiegeRankBreakItem
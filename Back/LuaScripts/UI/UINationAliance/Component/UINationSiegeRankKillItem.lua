local UINationSiegeRankKillItem = BaseClass("UINationSiegeRankKillItem", UIWrapComponent)
local base = UIWrapComponent

-- 组件添加了按钮组，则按钮被点击时回调该函数
local function OnItemClick(self)

end

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 组件初始化

    self.rank_text = self:AddComponent(UIText, "killPItemRankUIText")
    self.name_text = self:AddComponent(UIText, "killPItemName_UIText")
    self.score_text = self:AddComponent(UIText, "killPItemScore_UIText")
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self, real_index, check)
    local itemData = self.view.model.logRankKillList[real_index + 1]
    if itemData == nil then
        return
    end
    self.index = real_index
    self.id = itemData.ID

    self.rank_text:SetText(itemData.rank)
    self.name_text:SetText(itemData.name)
    self.score_text:SetText(itemData.score)
end

UINationSiegeRankKillItem.OnCreate = OnCreate
UINationSiegeRankKillItem.OnRefresh = OnRefresh
return UINationSiegeRankKillItem
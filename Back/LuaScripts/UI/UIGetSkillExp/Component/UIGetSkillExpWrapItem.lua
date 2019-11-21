--[[
-- added by wsh @ 2017-12-11
-- UIGetSkillExp模块中卡牌列表的可复用Item
--]]

local UIGetSkillExpWrapItem = BaseClass("UIGetSkillExpWrapItem", UIWrapComponent)
local base = UIWrapComponent

local function OnItemClick(self)
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_GET_SKILL_EXP_ON_SELECT_ITEM, self._index, not self.debrisData.selectType)
    self:OnRefresh(self._index)
end



-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 组件初始化
    self._icon_img = self:AddComponent(UIImage, "Image/icon", AtlasConfig.DynamicTex)
    self._btn = self:AddComponent(UIButton, "Image")
    self._num_txt = self:AddComponent(UIText, "Image/num")
    self._selectMask_cmp = self:AddComponent(UIBaseComponent, "Image/selectMask")
    self._frame_Img = self:AddComponent(UIImage, "Image", AtlasConfig.DynamicTex)
    self._btn:SetOnClick(self, OnItemClick)
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self, real_index, check)
    self.debrisData = self.view.showList[real_index + 1]
    if self.debrisData ~= nil then
        self._index = real_index
        self._icon_img:SetSpriteName(self.debrisData.data.icon)
        self._frame_Img:SetSpriteName(SpriteDefine:GetItemQualityFrameByType(self.debrisData.data.quality))
        self._num_txt:SetText(DataUtil.GetDataNumDes(self.debrisData.data.haveNum) )
        self._selectMask_cmp.gameObject:SetActive(self.debrisData.selectType)
    end
end

-- 组件添加了按钮组，则按钮被点击时回调该函数
local function OnClick(self, toggle_btn, real_index, check)

end

UIGetSkillExpWrapItem.OnCreate = OnCreate
UIGetSkillExpWrapItem.OnRefresh = OnRefresh
UIGetSkillExpWrapItem.OnClick = OnClick

return UIGetSkillExpWrapItem
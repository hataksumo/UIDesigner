--[[
-- added by wsh @ 2017-12-11
-- UICardPool模块中卡牌列表的可复用Item
--]]

local UICommGetRewardsWrapItem = BaseClass("UICommGetRewardsWrapItem", UIWrapComponent)
local base = UIWrapComponent

local _icon_img_path = "Image/icon"
local _btn_path = "Image"
local _frame_img_path = "Image"
local _num_txt_path = "Image/num"

local function OnItemClick(self)
    --DataManager:GetInstance():Broadcast(DataMessageNames.ON_UI_CARD_DETAILS_SAVE_INDEX, self._index,self._id)

end



-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 组件初始化
    self._icon_img = self:AddComponent(UIImage, _icon_img_path, AtlasConfig.DynamicTex)
    --self._btn = self:AddComponent(UIButton, _btn_path)
    self._frame_img = self:AddComponent(UIImage, _frame_img_path, AtlasConfig.DynamicTex)
    --self._btn:SetOnClick(self, OnItemClick)
    self._num_txt = self:AddComponent(UIText, _num_txt_path)
    self.info_iconPress=self:AddComponent(UIEventTrigger,"Image")
    self.info_iconPress:SetOnLongPress(function()
        if self.costid then
            UIManager:GetInstance():OpenWindow(UIWindowNames.UIItemTips,self.costid)
        end
    end,(function()
        UIManager:GetInstance():CloseWindow(UIWindowNames.UIItemTips)
    end),true)
    self.info_iconPress:SetOnDrag(self,function (sender,base_event)
        sender.view.reward_scrollRect:OnDrag(base_event);
    end)
    self.info_iconPress:SetOnBeginDrag(self,function (sender,base_event)
        sender.view.reward_scrollRect:OnBeginDrag(base_event);
    end)
    self.info_iconPress:SetOnEndDrag(self,function (sender,base_event)
        sender.view.reward_scrollRect:OnEndDrag(base_event);
    end)
    -- 变量初始化
--[[    self.info_iconPress=self:AddComponent(UIEventTrigger,_icon_img_path)
    self.info_iconPress:SetOnLongPress(function()
        UIManager:GetInstance():OpenWindow(UIWindowNames.UIItemTips,self._id)
    end,(function()
        UIManager:GetInstance():CloseWindow(UIWindowNames.UIItemTips)
    end),true)]]

end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self, real_index, check)
    local itemData = self.view.model.rewards[real_index + 1]
    self.costid=itemData.id
    if itemData ~= nil then
        self._num_txt :SetText(itemData.num >= 1 and tostring(math.floor(itemData.num)) or "")
        self._icon_img:SetSpriteName(itemData.icon)
        if itemData.type == 11 then
            self._frame_img:SetSpriteName(SpriteDefine:GetItemQualityFrameByType(itemData.quality))
        else
            self._frame_img:SetSpriteName(SpriteDefine:GetItemQualityFrameByType(itemData.quality))
        end
        self._index = real_index
        self._id = itemData.id
    end
    --local _angle = (real_index % singleRowNum - (singleRowNum - 1) * 0.5) * topAngle
    --local offsetZ = fixOffsetZ - ((space + minR) * (1 - math.cos(_angle)))
    --self.rectTransform.localPosition = Vector3(self.rectTransform.localPosition.x, self.rectTransform.localPosition.y, offsetZ)
    --self.rectTransform.localEulerAngles = Vector3(0, (real_index % singleRowNum - (singleRowNum - 1) * 0.5) * topAngle * 180 / math.pi, 0)
end

-- 组件添加了按钮组，则按钮被点击时回调该函数
local function OnClick(self, toggle_btn, real_index, check)

end

UICommGetRewardsWrapItem.OnCreate = OnCreate
UICommGetRewardsWrapItem.OnRefresh = OnRefresh
UICommGetRewardsWrapItem.OnClick = OnClick

return UICommGetRewardsWrapItem
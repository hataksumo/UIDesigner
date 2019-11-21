--[[
-- added by wsh @ 2017-12-11
-- 玩家地獄道等級组件
--]]

local UICommTaskIcon = BaseClass("UICommTaskIcon", UIBaseContainer)
local base = UIBaseContainer

local _Icon_img_path = "Icon_UIImage"
local _Status_txt_path = "Status_UIImage/Status_UIImage/Text"
local _Status_path = "Status_UIImage"
local _bgframe_img_path = "gb_UIImage"
-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 组件初始化
    self.frame_img = self:AddComponent(UIImage, _bgframe_img_path, AtlasConfig.DynamicTex)
    self.Icon_img = self:AddComponent(UIImage, _Icon_img_path, AtlasConfig.DynamicTex)
    self.Status_img = self:AddComponent(UIImage, _Status_path)
    self.Status_img.gameObject:SetActive(false)
    self.Status_txt = self:AddComponent(UIText, _Status_txt_path)
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self)
    self.Icon_img:SetSpriteName(self.Icon_Path)

    self.Status_img.gameObject:SetActive(self.Status == 1)
    --self._level_txt:SetText(self.level_text)
    if  self.Status == -1 then -- -1可领取 0未领取 1已领取
        --self._Status_img:SetSpriteName(nil)
    elseif self.Status == 1 then --可领取
        --self._Status_img:SetSpriteName(self.Icon_img)
    else --已领取
        --self._Status_img:SetSpriteName(self.Icon_img)
    end
end
-- 组件被复用时回调该函数，执行组件的刷新
local function SetItemInfo(self, _icon,_txt)
    self.Icon_Path = _icon
    --self.Item_txt = txt
    self:OnRefresh()
end
local function SetItemStatus(self, _status)
    self.Status = _status
    self:OnRefresh()
end
UICommTaskIcon.OnCreate = OnCreate
UICommTaskIcon.OnRefresh = OnRefresh
UICommTaskIcon.SetItemInfo = SetItemInfo
UICommTaskIcon.SetItemStatus = SetItemStatus
return UICommTaskIcon
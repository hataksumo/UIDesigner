--[[
-- added by wsh @ 2017-12-11
-- 玩家地獄道等級组件
--]]

local UICommHellIcon = BaseClass("UICommHellIcon", UIBaseContainer)
local base = UIBaseContainer

local _level_img_path = "parent/level_UIImage"
local _Icon_img_path = "parent/levelIcon_UIImage"
local _bgframe_img_path = "gb_UIImage"
-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    --self.LevelInfo = {}--[1]="ui_t_Mail_001",[1]="ui_t_Mail_001",[1]="ui_t_Mail_001",[1]="ui_t_Mail_001",[1]="ui_t_Mail_001",[1]="ui_t_Mail_001",[1]="ui_t_Mail_001",[1]="ui_t_Mail_001",[9]="ui_t_Mail_001"}
    --for i = 1, 9 do
    --    --table.insert(self.LevelInfo,"ui_t_Mail_00"..i)
    --    table.insert(self.LevelInfo,"ui_t_Gacha_025")
    --end
    -- 组件初始化
    self.gb_img = self:AddComponent(UIImage, _bgframe_img_path, AtlasConfig.DynamicTex)
    self.icon_img = self:AddComponent(UIImage, _Icon_img_path, AtlasConfig.DynamicTex)
    -- 组件初始化
    self.level_img = self:AddComponent(UIImage, _level_img_path, AtlasConfig.Language)
   --self._level_txt = self:AddComponent(UIText, _level_txt_path, AtlasConfig.DynamicTex)
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self)
    self.gb_img:SetSpriteName(self.gb_img_name,true)
    --self.gb_img:SetNativeSize()
    self.icon_img:SetSpriteName(self.icon_img_name,true)
    --self.icon_img:SetNativeSize()
    self.level_img:SetSpriteName(self.level_img_name,true)
    --self.level_img:SetNativeSize()
end
-- 组件被复用时回调该函数，执行组件的刷新
local function SetItemLevel(self, _gb_img_name,_icon_img_name,_level_img_name)
    self.gb_img_name =_gb_img_name
    self.icon_img_name =_icon_img_name
    self.level_img_name =_level_img_name
    self:OnRefresh()
end

UICommHellIcon.OnCreate = OnCreate
UICommHellIcon.OnRefresh = OnRefresh
UICommHellIcon.SetItemLevel = SetItemLevel

return UICommHellIcon
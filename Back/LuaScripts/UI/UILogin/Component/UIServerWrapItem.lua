--[[
-- added by wsh @ 2017-12-11
-- UILogin模块UILoginView窗口中服务器列表的可复用Item
--]]

local UIServerWrapItem = BaseClass("UIServerWrapItem", UIWrapComponent)
local base = UIWrapComponent
--服务器状态图片赋值
local function GetServerStateSpriteName(state)
	-- 服务器状态：0-良好、1-普通、2-爆满、3-未开服
	local sprite_name = "ui_t_c2_223"
	if state == 0 then
		sprite_name = "ui_t_c2_223"
	elseif state == 1 then
		sprite_name = "ui_t_c2_225"
	elseif state == 2 then
		sprite_name = "ui_t_c2_222"
	elseif state == 3 then
		sprite_name = "ui_t_c2_224"
	end
	return sprite_name
end

local function GetServerStateTextColor(state)
    --服务器状态：0-流畅、1-拥挤、2-爆满、3-维护
    local text_color="<color=#71D54F>"..DataUtil.GetClientText(100189).."</color>"
    if state==1 then
        text_color="<color=#EAA351>"..DataUtil.GetClientText(100188).."</color>"
    elseif state==2 then
        text_color="<color=#EB6B60>"..DataUtil.GetClientText(100187).."</color>"
    elseif state==3 then
        text_color="<color=#81AEE9>"..DataUtil.GetClientText(100190).."</color>"
    end
    return text_color
end
-- 创建
local function OnCreate(self)
	base.OnCreate(self)
	-- 组件初始化
	self.server_name_text = self:AddComponent(UIText, "SvrNameText")
	self.server_name_btn=self:AddComponent(UIButton,"SvrBgImg")
	self.server_name_btn:SetOnClick(self,self.OnClick)
	self.server_state_img = self:AddComponent(UIImage, "SvrBgImg/SvrStateImg", AtlasConfig.DynamicTex, GetServerStateSpriteName())
    self.server_state_text=self:AddComponent(UIText,"SvrStateText")
	self.arena_name = self:AddComponent(UIText,"serverNum")
	self.frame = self:AddComponent(UIImage,"frame",AtlasConfig.DynamicTex)
	self.icon = self:AddComponent(UIImage,"frame/icon",AtlasConfig.DynamicTex)
	self.lvText = self:AddComponent(UIText,"frame/lv/Text")
	self.newObj = UIUtil.FindTrans(self.transform,"Image")
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self, real_index)
	self.server = self.view.server_list[real_index + 1]
    self.server_name_text:SetText(self.server.name)
    self.server_state_text:SetText(GetServerStateTextColor(self.server.state))
	self.index=real_index
	self.arena_name:SetText(self.server.area_name)
	self.server_state_img:SetSpriteName(GetServerStateSpriteName(tonumber(self.server.state)))
	self.newObj.gameObject:SetActive(self.server.is_new == 1)
	if self.server.isHavePlayerData then
		self.frame.gameObject:SetActive(true)
		self.lvText:SetText(math.floor(self.server.level))
	else
		self.frame.gameObject:SetActive(false)
	end
end

-- 组件添加了按钮组，则按钮被点击时回调该函数
local function OnClick(self)
	if tonumber(self.server.state) == 4 then
		UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100056))
		return
	end
	LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
	self.view:SetSelectedServer(self.index)
end

UIServerWrapItem.OnCreate = OnCreate
UIServerWrapItem.OnRefresh = OnRefresh
UIServerWrapItem.OnClick = OnClick

return UIServerWrapItem
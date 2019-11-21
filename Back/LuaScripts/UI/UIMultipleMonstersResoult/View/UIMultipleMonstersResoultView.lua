
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIMultipleMonstersResoultView = BaseClass("UIMultipleMonstersResoultView", UIBaseView)
local base = UIBaseView


local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	
	self.closeUIButton = self:AddComponent(UIButton, "namePanel/bg/close_UIButton")
	self.closeUIButton:SetOnClick(function ()
		self.ctrl:CloseSelf()
	end)
	self.nameUIText = self:AddComponent(UIText, "namePanel/bg/name_UIText")
    
	self.room_numberUIText = self:AddComponent(UIText, "namePanel/bg/room_number_UIText")
    
	self.people_numberUIText = self:AddComponent(UIText, "namePanel/bg/people_number_UIText")
    
	self.player_nameUIText = self:AddComponent(UIText, "namePanel/bg/player_name_UIText")
    
	self.team_powerUIText = self:AddComponent(UIText, "namePanel/bg/team_power_UIText")
    
	self.awardUIText = self:AddComponent(UIText, "namePanel/bg/award_UIText")
    
	self.headUIImage = self:AddComponent(UIImage, "namePanel/bg/Head_UIImage",AtlasConfig.DynamicTex)
    
	self.headBgUIImage = self:AddComponent(UIImage, "namePanel/bg/Head_UIImage/HeadBg_UIImage",AtlasConfig.DynamicTex)
    
	self.numUIText = self:AddComponent(UIText, "namePanel/bg/Head_UIImage/Num_UIText")
    self.enterImg = self:AddComponent(UIImage,"namePanel/bg/enter_UIButton")
	self.enterUIButton = self:AddComponent(UIButton, "namePanel/bg/enter_UIButton")
	self.enterUIButton:SetOnClick(function ()
		if self.model.bossInfo.isPassword then
			self.namePanel.gameObject:SetActive(false)
			self.passwordPanel.gameObject:SetActive(true)
		else
			self.ctrl:SendJoinRoom()
		end

	end)
	self.enterUIText = self:AddComponent(UIText, "namePanel/bg/enter_UIButton/enter_UIText")

	self.cancelUIButton = self:AddComponent(UIButton, "namePanel/bg/cancel_UIButton")
	self.cancelUIButton:SetOnClick(function ()
		self.ctrl:CloseSelf()
	end)
	self.gray =self.enterImg:GetMat()

	self.cancelUIText = self:AddComponent(UIText, "namePanel/bg/cancel_UIButton/cancel_UIText")
    self.namePanel = UIUtil.FindTrans(self.transform,"namePanel")
	self.passwordPanel = UIUtil.FindTrans(self.transform,"passwordPanel")
	self.inputText = self:AddComponent(UIInput,"passwordPanel/InputField")
	self.enterBtn = self:AddComponent(UIButton,"passwordPanel/certainBtn")
	self.enterBtn:SetOnClick(function ()
		local str = self.inputText:GetText()
		if str == "" then
			UISpecial:GetInstance():UITipText("密码不能为空")
		else
			self.ctrl:SendJoinRoom(str)
		end
	end)
	self.exitBtn = self:AddComponent(UIButton,"passwordPanel/exitBtn")
	self.exitBtn:SetOnClick(function ()
		self.ctrl:CloseSelf()
	end)
	self.lockObj = UIUtil.FindTrans(self.transform,"namePanel/bg/lockObj")
end

local function OnEnable(self)
	base.OnEnable(self)
	self.namePanel.gameObject:SetActive(true)
	self.passwordPanel.gameObject:SetActive(false)
	self.inputText:SetText("")
	self:OnRefresh()
end

local function OnRefresh(self)
	-- 各组件刷新
		self.room_numberUIText:SetText("房间号："..math.floor(self.model.bossInfo.roomId))
		self.people_numberUIText:SetText("当前人数："..math.floor(self.model.bossInfo.players).."/3")
		self.player_nameUIText:SetText("房主："..self.model.bossInfo.leaderName)
		self.team_powerUIText:SetText("最强队伍战斗力："..math.floor(self.model.bossInfo.leaderPower))
		if self.model.bossInfo.quality == 1 then
			self.awardUIText:SetText("普通奖励")
		elseif self.model.bossInfo.quality == 2 then
			self.awardUIText:SetText("精良奖励")
		elseif self.model.bossInfo.quality == 3 then
			self.awardUIText:SetText("史诗奖励")
		elseif self.model.bossInfo.quality == 4 then
			self.awardUIText:SetText("传说奖励")
		end
		if self.model.bossInfo.isPassword then
			self.lockObj.gameObject:SetActive(true)
			if self.model.bossInfo.players == 3 then
				self.enterImg:SetMat(self.gray)
				self.enterUIButton.enabled = false
				self.enterUIText:SetText("已满")
			else
				self.enterImg:SetMat(nil)
				self.enterUIButton.enabled = true
				self.enterUIText:SetText("加入")
			end
		else
			self.lockObj.gameObject:SetActive(false)
			if self.model.bossInfo.players == 3 then
				self.enterImg:SetMat(self.gray)
				self.enterUIButton.enabled = false
				self.enterUIText:SetText("已满")
			else
				self.enterImg:SetMat(nil)
				self.enterUIButton.enabled = true
				self.enterUIText:SetText("加入")
			end
		end
end

local function OnAddListener(self)
	base.OnAddListener(self)
	-- UI消息注册
	
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- UI消息注销
	
end

local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)
end

UIMultipleMonstersResoultView.OnCreate = OnCreate
UIMultipleMonstersResoultView.OnEnable = OnEnable
UIMultipleMonstersResoultView.OnRefresh = OnRefresh
UIMultipleMonstersResoultView.OnAddListener = OnAddListener
UIMultipleMonstersResoultView.OnRemoveListener = OnRemoveListener
UIMultipleMonstersResoultView.OnDestroy = OnDestroy

return UIMultipleMonstersResoultView

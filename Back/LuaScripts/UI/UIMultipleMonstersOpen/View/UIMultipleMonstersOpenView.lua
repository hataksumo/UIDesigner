
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIMultipleMonstersOpenView = BaseClass("UIMultipleMonstersOpenView", UIBaseView)
local base = UIBaseView


local function RemoveIdList(self,_id)
	for i= #self.qualityList,1,-1 do
		if self.qualityList[i] == _id then
			table.remove(self.qualityList, i)
		end
	end
end

local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.createPanel = UIUtil.FindTrans(self.transform,"createPanel")
	self.joinPanel = UIUtil.FindTrans(self.transform,"joinPanel")
	self.joinPanel.gameObject:SetActive(false)
	self.closeUIButton = self:AddComponent(UIButton, "createPanel/close_UIButton")
	self.closeUIButton:SetOnClick(function ()
		self.ctrl:CloseSelf()
	end)
	self.nameUIText = self:AddComponent(UIText, "createPanel/name_UIText")
    
	self.chooseUIText = self:AddComponent(UIText, "createPanel/choose_UIText")
    
	self.awardUIText = self:AddComponent(UIText, "createPanel/award_UIText")
    
	self.home_all_UIText = self:AddComponent(UIText, "createPanel/home_all_UIText")
    
	self.quality1UIButton = self:AddComponent(UIButton, "createPanel/quality1_UIButton")
	self.quality1UIButton:SetOnClick(function ()
		table.insert(self.qualityList,4)
		self.qu1Btn.gameObject:SetActive(true)
	end)
	self.qu1Btn = self:AddComponent(UIButton,"createPanel/quality1_UIButton/quality1")
	self.qu1Btn:SetOnClick(function ()
		if #self.qualityList <= 1 then
			UISpecial:GetInstance():UITipText("至少需要勾选一个")
			return
		end
		RemoveIdList(self,4)
		self.qu1Btn.gameObject:SetActive(false)
	end)
	self.quality1UIText = self:AddComponent(UIText, "createPanel/quality1_UIButton/quality1_UIText")
    
	self.quality2UIButton = self:AddComponent(UIButton, "createPanel/quality2_UIButton")
	self.quality2UIButton:SetOnClick(function ()
		table.insert(self.qualityList,3)
		self.qu2Btn.gameObject:SetActive(true)
	end)
	self.qu2Btn = self:AddComponent(UIButton,"createPanel/quality2_UIButton/quality2")
	self.qu2Btn:SetOnClick(function ()
		if #self.qualityList <= 1 then
			UISpecial:GetInstance():UITipText("至少需要勾选一个")
			return
		end
		RemoveIdList(self,3)
		self.qu2Btn.gameObject:SetActive(false)
	end)
	self.quality2UIText = self:AddComponent(UIText, "createPanel/quality2_UIButton/quality2_UIText")
    
	self.quality3UIButton = self:AddComponent(UIButton, "createPanel/quality3_UIButton")
	self.quality3UIButton:SetOnClick(function ()
		table.insert(self.qualityList,2)
		self.qu3Btn.gameObject:SetActive(true)
	end)
	self.qu3Btn = self:AddComponent(UIButton,"createPanel/quality3_UIButton/quality3")
	self.qu3Btn:SetOnClick(function ()
		if #self.qualityList <= 1 then
			UISpecial:GetInstance():UITipText("至少需要勾选一个")
			return
		end
		RemoveIdList(self,2)
		self.qu3Btn.gameObject:SetActive(false)
	end)
	self.quality3UIText = self:AddComponent(UIText, "createPanel/quality3_UIButton/quality3_UIText")
    
	self.quality4UIButton = self:AddComponent(UIButton, "createPanel/quality4_UIButton")
	self.quality4UIButton:SetOnClick(function ()
		table.insert(self.qualityList,1)
		self.qu4Btn.gameObject:SetActive(true)
	end)
	self.qu4Btn = self:AddComponent(UIButton,"createPanel/quality4_UIButton/quality4")
	self.qu4Btn:SetOnClick(function ()
		if #self.qualityList <= 1 then
			UISpecial:GetInstance():UITipText("至少需要勾选一个")
			return
		end
		RemoveIdList(self,1)
		self.qu4Btn.gameObject:SetActive(false)
	end)
	self.quality4UIText = self:AddComponent(UIText, "createPanel/quality4_UIButton/quality4_UIText")
    
	self.numUIText = self:AddComponent(UIText, "createPanel/num_UIText")
    self.powerBtn = self:AddComponent(UIButton,"createPanel/num_UIText/Image")
	self.powerBtn:SetOnClick(function ()
		self.powerImgObj.gameObject:SetActive(true)
	end)
	self.attack_allUIText = self:AddComponent(UIText, "createPanel/Image/attack_all_UIText")
    self.inputText = self:AddComponent(UIInput,"createPanel/Image/InputField")
	self.sendUIButton = self:AddComponent(UIButton, "createPanel/Image/InputField/Send_UIButton")
	self.sendUIButton:SetOnClick(function ()
		local str = self.inputText:GetText()
		local num = DataUtil.GetStringLength(str)
		if num ~= nil and num > 0 then
			if num <= 10 then
				self.ctrl:SendSearchMessage(str)
			else
				UISpecial:GetInstance():UITipText("字数超限")
			end
		else
			UISpecial:GetInstance():UITipText("输入不能为空")
		end
	end)
	self.createUIButton = self:AddComponent(UIButton, "createPanel/create_UIButton")
	self.createUIButton:SetOnClick(function ()
		self.ctrl:CreateRoomMessage()
	end)
	self.createUIText = self:AddComponent(UIText, "createPanel/create_UIButton/create_UIText")
    self.machBtn = self:AddComponent(UIButton,"createPanel/joinUIButton")
	self.machBtn:SetOnClick(function ()
		self.ctrl:MachRoomMessage(self.qualityList,self.powerNum,function ()
			self.createPanel.gameObject:SetActive(false)
			self.joinPanel.gameObject:SetActive(true)
		end)
	end)
	self.joinUIText = self:AddComponent(UIText, "createPanel/joinUIButton/join_UIText")
    
	self.powerImgObj = UIUtil.FindTrans(self.transform,"createPanel/powerImg")
	self.powerGridObj=self:AddComponent(UIBaseContainer,"createPanel/powerImg/grid")
	self.powerList={}
	local count=self.powerGridObj.transform.childCount
	for i = 0, count-1 do
		local tempItem = self.powerGridObj:AddComponent(UIBaseContainer,i)
		local num = tempItem:AddComponent(UIText,"Text")
		local btn = tempItem:AddComponent(UIButton,"")
		table.insert(self.powerList,{obj=tempItem,numText = num, button = btn})
	end
	self.powerImgObj.gameObject:SetActive(false)

	--------------------------------------------------------------------------------------------------
	self.joinPanelCloseBtn = self:AddComponent(UIButton,"joinPanel/bg/close_joinPanelUIButton")
	self.joinPanelCloseBtn:SetOnClick(function ()
		self.joinPanel.gameObject:SetActive(false)
		self.createPanel.gameObject:SetActive(true)
	end)
	self.joinPanelCancelBtn = self:AddComponent(UIButton,"joinPanel/bg/cancel_joinPanelUIButton")
	self.joinPanelCancelBtn:SetOnClick(function ()
		self.joinPanel.gameObject:SetActive(false)
		self.createPanel.gameObject:SetActive(true)
	end)
	self.joinPanelCreateBtn = self:AddComponent(UIButton,"joinPanel/bg/enter_joinPanelUIButton")
	self.joinPanelCreateBtn:SetOnClick(function ()
		self.ctrl:CreateRoomMessage()
	end)
end

local function OnEnable(self)
	base.OnEnable(self)
	self.inputText:SetText("")
	self.qualityList = {}
	self.joinPanel.gameObject:SetActive(false)
	self.createPanel.gameObject:SetActive(true)
	for i = 1, 4 do
		table.insert(self.qualityList,i)
	end
	Logger.Log(#self.qualityList)
	self:OnRefresh()
	self.powerNum = 10000
	self.numUIText:SetText(self.powerNum)
end

local function OnRefresh(self)
	-- 各组件刷新
	local powerData = self.model.powerList
	if powerData ~= nil then
		for i, v in ipairs(self.powerList) do
			if powerData[i] == nil then
				v.obj.transform.gameObject:SetActive(false)
			else
				v.obj.transform.gameObject:SetActive(true)
				v.numText:SetText(powerData[i])
				v.button:SetOnClick(function ()
					self.powerNum = powerData[i]
					self.numUIText:SetText(self.powerNum)
					self.powerImgObj.gameObject:SetActive(false)
				end)
			end
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

UIMultipleMonstersOpenView.OnCreate = OnCreate
UIMultipleMonstersOpenView.OnEnable = OnEnable
UIMultipleMonstersOpenView.OnRefresh = OnRefresh
UIMultipleMonstersOpenView.OnAddListener = OnAddListener
UIMultipleMonstersOpenView.OnRemoveListener = OnRemoveListener
UIMultipleMonstersOpenView.OnDestroy = OnDestroy

return UIMultipleMonstersOpenView

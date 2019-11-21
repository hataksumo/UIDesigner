
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIItemJumpTipView = BaseClass("UIItemJumpTipView", UIBaseView)
local base = UIBaseView


local function OnCreate(self)
	base.OnCreate(self)
	self.itemJumpPanle=UIUtil.FindTrans(self.transform,"UIImgPanel");
	self.expEnoughPanel=UIUtil.FindTrans(self.transform,"ExpEnoughPanel");
    self.mask=self:AddComponent(UIButton,"mask");
    self.mask:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        self.ctrl:CloseSelf();
    end)
	self.waitBtn=self:AddComponent(UIButton,"ExpEnoughPanel/certainBtn");
	self.waitBtn:SetOnClick(function()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.ctrl:CloseSelf();
	end)
	self.goToUpLvBtn=self:AddComponent(UIButton,"ExpEnoughPanel/cancelBtn");
	self.goToUpLvBtn:SetOnClick(function()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.ctrl:CloseSelf();
		local state ,type,des= UnlockData:GetInstance():GetLockDataState(205)
		if not state then
			UISpecial:GetInstance():UITipText(des)
			return
		end
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		local master_hell_data = DataUtil.GetData("master_hell")
		if UserData:GetInstance().hellLevel > #master_hell_data then
			UISpecial:GetInstance():UITipText("已到最大等级")
		else
			UIManager:GetInstance():OpenWindow(UIWindowNames.UIUserHell)
		end
	end)
	self.expCloseBtn=self:AddComponent(UIButton,"ExpEnoughPanel/exitBtn");
	self.expCloseBtn:SetOnClick(function()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.ctrl:CloseSelf();
	end)
	-- 初始化各个组件
	self.titleUIText = self:AddComponent(UIText,"UIImgPanel/baoxiangText")
	self.closeUIButton = self:AddComponent(UIButton, "UIImgPanel/close_UIButton")
	self.closeUIButton:SetOnClick(function ()
		self.ctrl:CloseSelf()
	end)
	self.itemFrameImg = self:AddComponent(UIImage,"UIImgPanel/itemName/frameImg",AtlasConfig.DynamicTex)
	self.itemIconImg = self:AddComponent(UIImage,"UIImgPanel/itemName/iconImg",AtlasConfig.DynamicTex)
	self.chipImg = UIUtil.FindTrans(self.transform,"UIImgPanel/itemName/chipImg")
	self.itemNameText = self:AddComponent(UIText,"UIImgPanel/itemName/nameText")
	self.itemNumText = self:AddComponent(UIText,"UIImgPanel/itemName/countText")

	self.itemGridObj=self:AddComponent(UIBaseContainer,"UIImgPanel/ScrollRect/Grid")
	self.itemList={}
	local count=self.itemGridObj.transform.childCount
	for i = 0, count-1 do
		local tempItem = self.itemGridObj:AddComponent(UIBaseContainer,i)
		local jump = tempItem:AddComponent(UIButton,"jumpBtn")
		local title = tempItem:AddComponent(UIText,"nameText")
		local des = tempItem:AddComponent(UIText,"numText")
		local mask = UIUtil.FindTrans(tempItem.transform,"maskObj")
		table.insert(self.itemList,{obj=tempItem,jumpBtn = jump,titleText = title,desText=des,maskObj = mask})
	end
end

local function OnEnable(self)
	base.OnEnable(self)
	self:OnRefresh()
end

local function OnRefresh(self)
	-- 各组件刷新
	self.itemJumpPanle.transform.gameObject:SetActive(not self.model.showExpPanel);
	self.expEnoughPanel.transform.gameObject:SetActive(self.model.showExpPanel);

	self.itemData = self.model.itemData
	if self.itemData.itemInfo == nil then
		return
	end
	self.titleUIText:SetText(self.itemData.itemInfo.titleName)
	self.itemFrameImg:SetSpriteName(self.itemData.itemInfo.frame)
	self.itemIconImg:SetSpriteName(self.itemData.itemInfo.icon)
	self.chipImg.gameObject:SetActive(self.itemData.itemInfo.isChip)
	self.itemNameText:SetText(self.itemData.itemInfo.name)
	self.itemNumText:SetText(self.itemData.itemInfo.haveNum)
	self.winName = self.model.winName
	local data = self.itemData.itemList
	if data ~= nil then
		for i, v in ipairs(self.itemList) do
			if data[i] == nil then
				v.obj.transform.gameObject:SetActive(false)
			else
				if self.winName == "UILevelMainNew" then
					if data[i].title == "冒险" then
						v.obj.transform.gameObject:SetActive(false)
					else
						v.obj.transform.gameObject:SetActive(true)
					end
				elseif self.winName == "UIExploreMain" or self.winName == "UIExploreSetTeamList" then
					if data[i].title == "探险" then
						v.obj.transform.gameObject:SetActive(false)
					else
						v.obj.transform.gameObject:SetActive(true)
					end
				else
					v.obj.transform.gameObject:SetActive(true)
				end
				v.jumpBtn.gameObject:SetActive(data[i].isShow == 1)
				--v.jumpBtn:RemoveOnClick()
				v.jumpBtn:SetOnClick(function()
					self.ctrl:CloseSelf()
					UIJumpManager.JumpByTypeAndParam(data[i].jump.To,data[i].jump.Param)
				end )
				v.titleText:SetText(data[i].title)
				v.desText:SetText(data[i].des)
				v.maskObj.gameObject:SetActive(false)
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

UIItemJumpTipView.OnCreate = OnCreate
UIItemJumpTipView.OnEnable = OnEnable
UIItemJumpTipView.OnRefresh = OnRefresh
UIItemJumpTipView.OnAddListener = OnAddListener
UIItemJumpTipView.OnRemoveListener = OnRemoveListener
UIItemJumpTipView.OnDestroy = OnDestroy

return UIItemJumpTipView

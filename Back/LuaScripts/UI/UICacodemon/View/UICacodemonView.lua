
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UICacodemonView = BaseClass("UICacodemonView", UIBaseView)
local base = UIBaseView
local UIUserhellTaskListWrapItem = require "UI.UICacodemon.Component.UICacodemonGroupListWrapItem"
local UICacodemonListWrapItem = require "UI.UICacodemon.Component.UICacodemonListWrapItem"



local function OnCreate(self)
	base.OnCreate(self)
	self.title_UIText = self:AddComponent(UIText,"LeftUp/title_UIText")
	self.title_UIText:SetText("恶灵入侵")
	--怪物組
	self.grouplistwrap_group = self:AddComponent(UIWrapGroup3D,"LeftScroll/ScrollRect1/Content1",UIUserhellTaskListWrapItem)
	--怪物列表
	self.monbosslistwrap_group = self:AddComponent(UIWrapGroup3D,"RightScroll/ScrollRect2/Content2",UICacodemonListWrapItem)
	--組獎勵列表
	self.openfunc_parent = self:AddComponent(UIBaseContainer,"RightScroll/AwardPanel/OpenFunc")
	self.itemList={}
	local count=self.openfunc_parent.transform.childCount
	for i = 0, count-1 do
		local tempItem=self.openfunc_parent:AddComponent(UIBaseContainer,i)
		local tempIconImg=tempItem:AddComponent(UIImage,"itemIcon",AtlasConfig.DynamicTex)
		local tempNumText=tempItem:AddComponent(UIText,"Text")
		local tempFrameImg=tempItem:AddComponent(UIImage,"",AtlasConfig.DynamicTex)
		local iconPress=tempItem:AddComponent(UIEventTrigger,"itemIcon")
		iconPress:SetOnLongPress(function()
			local costid=self.itemData[i+1].Id
			if costid then
				UIManager:GetInstance():OpenWindow(UIWindowNames.UIItemTips,costid)
			end
		end,(function()
			UIManager:GetInstance():CloseWindow(UIWindowNames.UIItemTips)
		end),true)
		table.insert(self.itemList,{iconImg=tempIconImg,numText=tempNumText,frameImg=tempFrameImg})
	end
	--快速参战
	self.btnQuickFight = self:AddComponent(UIButton,"RightScroll/AwardPanel/QuickBtn_UIButton")
	self.btnQuickFightBg = self:AddComponent(UIImage,"RightScroll/AwardPanel/QuickBtn_UIButton")
	self.gray = self.btnQuickFightBg:GetMat()
	self.btnQuickFight:SetOnClick(function ()
		local monSelcetList = self.model:GetCurSelctList()
		for _, v in ipairs(monSelcetList) do
			if v.Lock then
				UISpecial:GetInstance():UITipText("暂未开启~")
				break
			else
				if v.State == 0 then
					local id = self.model:GetGroupListId()
					self.ctrl:QuickFight(id,v.Id)
					break
				end
			end
		end
	end)
	self.btnhelp = self:AddComponent(UIButton,"LeftUp/help_UIButton")
	self.btnhelp:SetOnClick(function ()
		self.ctrl:OnHelp()
	end)
	self.btnBackMain = self:AddComponent(UIButton,"LeftUp/BackMain_UIButton/Image1")
	self.btnBackMain:SetOnClick(function ()
		self.ctrl:BackMainCtiy()
	end)
	self.btnQuickFight = self:AddComponent(UIButton,"LeftUp/Back_UIButton/Image")
	self.btnQuickFight:SetOnClick(function ()
		self.ctrl:CloseSelf()
	end)
	self.lable2_UIText = self:AddComponent(UIText,"RightScroll/AwardPanel/lable2_UIText")
	self.lable1_UIText = self:AddComponent(UIText,"RightScroll/AwardPanel/lable1_UIText")
	self.Quicktbn_UIText = self:AddComponent(UIText,"RightScroll/AwardPanel/QuickBtn_UIButton/Quicktbn_UIText")
	self.selectObj = UIUtil.FindTrans(self.transform,"LeftScroll/selectImg")
	self.selectObj.gameObject:SetActive(false)
	self.resourceBarParent=UIUtil.FindTrans(self.transform,"RightUp")
	ResourceBarComponentManager:GetInstance():CreatResourceBarComponent(self.resourceBarParent,UIWindowNames.UICacodemon,ResourceBarType.SOLO_BOSS,self);
end


local function OnUpdateGroupList(self)
	-- 各组件刷新
	local num = self.model:GetHaveAttackList()
	if num <= 0 then
		self.btnQuickFightBg:SetMat(self.gray)
		self.btnQuickFight.enabled = false
	else
		self.btnQuickFightBg:SetMat(nil)
		self.btnQuickFight.enabled = true
	end
	self.grouplistwrap_group:WrapContent(true)
	local monSelcetList = self.model:GetCurSelctList()
	if monSelcetList ~= nil then
		self.monbosslistwrap_group:SetLength(#monSelcetList)
		self.monbosslistwrap_group:SetGridPositionByIndex(0)
	else
		self.monbosslistwrap_group:SetLength(0)
	end
	local monSelectGroupAwardlist = self.model:GetCurSelctGroupAward()
	self.itemData = monSelectGroupAwardlist
	if monSelectGroupAwardlist ~= nil then
		for i, v in ipairs(self.itemList) do
			if monSelectGroupAwardlist[i]~=nil then
				v.frameImg.gameObject:SetActive(true)
				v.numText:SetText(monSelectGroupAwardlist[i].Desc)
				v.frameImg:SetSpriteName(SpriteDefine:GetItemQualityFrameByType(monSelectGroupAwardlist[i].Quality))
				v.iconImg:SetSpriteName(monSelectGroupAwardlist[i].Icon)

			else
				v.frameImg.gameObject:SetActive(false)
			end
		end
	end
	local name = self.model:GetGroupListName()
	if name ~= nil then
		self.lable1_UIText:SetText(name.."可能掉落")
		self.lable2_UIText:SetText(CacodemonData:GetInstance().lable2_UIText)
	end
end
local function OnEnable(self)
	base.OnEnable(self)
	local monGroupList = self.model:GetGroupList()
	if monGroupList ~= nil then
		self.grouplistwrap_group:SetLength(#monGroupList)
		self.grouplistwrap_group:SetGridPositionByIndex(0)
	else
		self.grouplistwrap_group:SetLength(0)
	end
	OnUpdateGroupList(self)
	self:OnRefresh()
end

local function SendAttackRequest(self,_id)
	local id = self.model:GetGroupListId()
	self.ctrl:QuickFight(id,_id)
end

local function OnRefresh(self)
	-- 各组件刷新
end

local function OnDisable(self)
	base.OnDisable(self)
end

local function OnAddListener(self)
	base.OnAddListener(self)
	-- UI消息注册
	--self:AddUIListener(UIMessageNames.UI_CACODEMON_REFRESH_GROUP,OnUpdateGroup)
	self:AddUIListener(UIMessageNames.UI_CACODEMON_REFRESH_GROUPLIST,OnUpdateGroupList)

end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- UI消息注销
	--self:RemoveUIListener(UIMessageNames.UI_CACODEMON_REFRESH_GROUP,OnUpdateGroup)
	self:RemoveUIListener(UIMessageNames.UI_CACODEMON_REFRESH_GROUPLIST,OnUpdateGroupList)

end

local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)
	ResourceBarComponentManager:GetInstance():DestroyResourceBar(UIWindowNames.UICacodemon)
end

UICacodemonView.SendAttackRequest = SendAttackRequest
UICacodemonView.OnCreate = OnCreate
UICacodemonView.OnEnable = OnEnable
UICacodemonView.OnRefresh = OnRefresh
UICacodemonView.OnAddListener = OnAddListener
UICacodemonView.OnRemoveListener = OnRemoveListener
UICacodemonView.OnDestroy = OnDestroy
UICacodemonView.OnUpdateGroupList = OnUpdateGroupList
return UICacodemonView

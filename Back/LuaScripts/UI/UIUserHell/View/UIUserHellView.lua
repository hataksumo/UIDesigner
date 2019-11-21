
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIUserHellView = BaseClass("UIUserHellView", UIBaseView)
local base = UIBaseView
local UIMatButton = require "UI.UIComm.Component.UIMatButton"
local UICommHellIcon = require "UI.UIComm.Component.UICommHellIcon"
local UIUserhellTaskListWrapItem = require "UI.UIUserHell.Component.UIUserhellTaskListWrapItem"
local BattleAwardData = require "UI.UIBattle.Component.BattleAwardData"
local ResourceBarComponentManager=require("UI.UIResourceBar.ResourceBarComponentManager");
local isUpdate = false
local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件

	self.TitleBar=UIUtil.FindTrans(self.transform,"TopLeft")

	UIUtil.CreatCloseBtnComponent(self,self.TitleBar.transform,function(go) self.closeComponent=go end,function()
		self.ctrl:CloseSelf()
	end,function ()
		self.backMainCityAnim:Play("ef_ui_UI Generic board back")
		TimerManager:GetInstance():SimpleTimerArgs(0.5,function()
			UIUtil.BackHomeMain()
		end,nil,true)
	end ,DataUtil.GetClientText(100085),true,8,true)

	self.resourceBarParent=UIUtil.FindTrans(self.transform,"RightUp")
	ResourceBarComponentManager:GetInstance():CreatResourceBarComponent(self.resourceBarParent,UIWindowNames.UIUserHell,ResourceBarType.MAIN_CITY,self)
	self.backMainCityAnim = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.Animator),"")
	--背景图
--[[	self.bgImage = self:AddComponent(UIImage, "BG")]]
	--[[按钮
	self.chatUIButton = self:AddComponent(UIButton, "RightUp/Chat_UIButton")
	self.chatUIButton:SetOnClick(function ()
		self.ctrl:OnChat()
	end)
--]]

    self.jnjieUIButton = UIMatButton.New(self,"left panel/include l/OperatePanel/JinjieBtn")
	self.jiejieUIText = self:AddComponent(UIText,"left panel/include l/OperatePanel/JinjieBtn/name")
    self.jnjieUIButton:OnCreate()
	self.jinjie_Anim = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.Animator),"left panel/include l/OperatePanel/JinjieBtn/name")
	self.jinjie_Anim.enabled = false

	self.lableTitle1 = self:AddComponent(UIText,"left panel/include l/OperatePanel/maintitle/Text")
    self.title_panel = UIUtil.FindTrans(self.transform,"left panel/include l/OperatePanel/Title")
	self.lableTitle2 = self:AddComponent(UIText,"left panel/include l/OperatePanel/Title/title2/ljinjieopen_UIText")
	self.lableTitle3 = self:AddComponent(UIText,"right panel/include r/RightScroll/Title/title/listText")

	--当前地狱道
	self.curhell = self:AddComponent(UIBaseContainer,"left panel/include l/OperatePanel/CurHell")
	self.curHell_Title = self.curhell:AddComponent(UIText,"Title_UIText")
	self.curHell_Icon = self.curhell:AddComponent(UICommHellIcon,"UICommonHell")
	self.curHell_SubLevel = self.curhell:AddComponent(UIText,"value_UIText")
	--之后地狱道
	self.laterhell = self:AddComponent(UIBaseContainer,"left panel/include l/OperatePanel/LaterHell")
	self.laterHell_Title = self.laterhell:AddComponent(UIText,"Title_UIText")
	self.laterHell_Icon = self.laterhell:AddComponent(UICommHellIcon,"UICommonHell")
	self.laterHell_SubLevel = self.laterhell:AddComponent(UIText,"value_UIText")
    --满级
    self.fill_panel = self:AddComponent(UIBaseContainer,"fill panel")
    self.fillHell_SubLevel = self.fill_panel:AddComponent(UIText,"fillvalue_UIText")
    self.fillHell_Icon = self.fill_panel:AddComponent(UICommHellIcon,"UICommonHell")


	--self.lable1_openfuc = self:AddComponent(UIText,"left panel/include l/OperatePanel/Title/title2/ljinjieopen_UIText")
	self.lable2_jinjietip = self:AddComponent(UIText,"left panel/include l/OperatePanel/lable2_UIText")
	--进阶条件
	self.lable3_jinjiename = self:AddComponent(UIText, "right panel/include r/RightScroll/LableC_UIText")
	--进阶按钮名称
	--self.jinjiebtn_Text = self:AddComponent(UIText,"left panel/include l/OperatePanel/jinjie_UIButton/btnText")

	self.openfunc_parent = self:AddComponent(UIBaseContainer,"left panel/include l/OperatePanel/OpenFunction/OpenFunc")

    --进阶效果描述
    self.effectDes_panel = UIUtil.FindTrans(self.transform, "left panel/include l/OperatePanel/EffectDes")
    self.effectTextItems = {}
    self.rewardItems = {}
    for i = 1, 4 do
        self.rewardItems[i] = BattleAwardData.New(self, "left panel/include l/OperatePanel/OpenFunction/OpenFunc/RewardIcon"..i)
        self.rewardItems[i]:OnCreate(self)
        self.effectTextItems[i] = self:AddComponent(UIText, "left panel/include l/OperatePanel/EffectDes/des_UIText"..i)
    end

	self.scoreUISlider = self:AddComponent(UISlider, "right panel/include r/RightScroll/LableC_UIText/score_UISlider")
	self.scoreUISliderText = self:AddComponent(UIText, "right panel/include r/RightScroll/LableC_UIText/score_UISlider/Image/star_UIText")
	--初始化章列表
    self.taskScroll = UIUtil.FindTrans(self.transform,"right panel/include r/RightScroll/ScrollRect")
	self.tasklistwrap_group = self:AddComponent(UIWrapGroup3D,"right panel/include r/RightScroll/ScrollRect/Content",UIUserhellTaskListWrapItem)


end

local function OnEnable(self)
	base.OnEnable(self)
	TimerManager:GetInstance():SimpleTimerArgs(1.5,function()
		DataManager:GetInstance():Broadcast(DataMessageNames.UI_Guide_NeedEvent)
	end,nil,true)

    LJAudioManger:GetInstance():PlayVoice("UI_Brush_04")
	local tasklist = self.model:GetCurList()
	if tasklist ~= nil then
		self.tasklistwrap_group:SetLength(#tasklist)
		self.tasklistwrap_group:ResetToBeginning();
	else
		self.tasklistwrap_group:SetLength(0)
	end
	self:OnRefresh()
end

local function OnJinJieClick(self)

    self.ctrl:OnJinJie()
end

local function LoadEffectObj(self)
	if self.TemptalentTitle_eff~=nil then
		self.TemptalentTitle_eff.effect.gameObject:SetActive(true)
	else
		self.TemptalentTitle_eff = self:AddComponent(UIEffect, "left panel/include l/OperatePanel/JinjieBtn/name", 1, EffectConfig.UIComLvUpShow)
	end
end

local function OnRefresh(self)
	-- 各组件刷新
	self.lableTitle1:SetText(DataUtil.GetClientText(100086))
	self.lableTitle2:SetText(DataUtil.GetClientText(100087))
	self.lableTitle3:SetText(DataUtil.GetClientText(100088))

    self.fill_panel.gameObject:SetActive(self.model.laterLevel == nil)
    self.title_panel.gameObject:SetActive(self.model.laterLevel ~= nil)
    self.curhell.gameObject:SetActive(self.model.laterLevel ~= nil)
    self.laterhell.gameObject:SetActive(self.model.laterLevel ~= nil)
    self.lable2_jinjietip.gameObject:SetActive(self.model.laterLevel ~= nil)
    self.lable3_jinjiename.gameObject:SetActive(self.model.laterLevel ~= nil)
    self.jnjieUIButton.gameObject:SetActive(self.model.laterLevel ~= nil)
    self.effectDes_panel.gameObject:SetActive(self.model.laterLevel ~= nil)
    self.taskScroll.gameObject:SetActive(self.model.laterLevel ~= nil)
    self.openfunc_parent.gameObject:SetActive(self.model.laterLevel ~= nil)
    if self.model.laterLevel == nil then
        if self.model.curLevel.subLevel > 0 then
            self.fillHell_SubLevel:SetText("+"..self.model.curLevel.subLevel)
        else
            self.fillHell_SubLevel:SetText("")
        end
        self.fillHell_Icon:SetItemLevel(self.model.curLevel.Bg,self.model.curLevel.Icon,self.model.curLevel.Name)
        return
    end

	--状态
	self.curHell_Title:SetText(DataUtil.GetClientText(100090))
	if self.model.curLevel.subLevel > 0 then
		self.curHell_SubLevel:SetText("+"..self.model.curLevel.subLevel)
	else
		self.curHell_SubLevel:SetText("")
	end

	self.curHell_Icon:SetItemLevel(self.model.curLevel.Bg,self.model.curLevel.Icon,self.model.curLevel.Name)

	self.laterHell_Title:SetText(DataUtil.GetClientText(100091))
	if self.model.laterLevel.subLevel > 0 then
		self.laterHell_SubLevel:SetText("+"..self.model.laterLevel.subLevel)
	else
		self.laterHell_SubLevel:SetText("")
	end
	self.laterHell_Icon:SetItemLevel(self.model.laterLevel.Bg,self.model.laterLevel.Icon,self.model.laterLevel.Name)

	--开启功能
	--self.lable3_jinjiename:SetText(self.model.lable3_jinjiename)
	--self.lable1_openfuc:SetText(self.model.lable1_openfuc)
	self.lable2_jinjietip:SetText(DataUtil.GetClientText(100089))
	--self.jinjiebtn_Text:SetText(DataUtil.GetClientText(100092))
    for i = 1, 4 do
        if i <= #self.model.laterLevel.Desc then
            self.effectTextItems[i]:SetText(self.model.laterLevel.Desc[i])
            self.effectTextItems[i].gameObject:SetActive(true)
        else
            self.effectTextItems[i].gameObject:SetActive(false)
        end
    end

	--self.jnjieUIButton:SetInteractable(self.model.jnjieUIButtonEnable)
    self.jnjieUIButton:OnInitBtn(DataUtil.GetClientText(100092),Bind(self,OnJinJieClick))
    self.jnjieUIButton:UpdateCurrency()

    if self.model.jnjieUIButtonEnable then
		self.jinjie_Anim.enabled = true
		LoadEffectObj(self)
        self.jnjieUIButton:UpdateButtonState(1,"")
    else
		self.jinjie_Anim.enabled = false
		if self.TemptalentTitle_eff ~= nil then
			self.TemptalentTitle_eff.effect.gameObject:SetActive(false)
		end
		self.jiejieUIText:SetText("晋阶",false,50)
        self.jnjieUIButton:UpdateButtonState(0,"")
    end


    --self.jnjieUIButton:SetInteractable(true)
	self.scoreUISlider:SetValue(self.model.slider)
	self.scoreUISliderText:SetText(self.model.sliderText)
	if isUpdate then
		isUpdate = false
		self.tasklistwrap_group:ResetToBeginning()
	end

	--if self.openfunctionItemList ~= nil then
	--	UIUtil.RecyleComItem(self.openfunctionItemList)
	--end
	--self.openfunctionItemList = nil
	--UIUtil.CreatCommonFunctionItem(self,self.model.openfunction,function(itemList) self.openfunctionItemList=itemList end,self.openfunc_parent.transform);
    for i = 1, 4 do
        if i <= #self.model.openfunction then
            self.rewardItems[i]:Refresh({
                id = self.model.openfunction[i].Id,
                num = self.model.openfunction[i].Num,
                icon = self.model.openfunction[i].Icon,
                quality = self.model.openfunction[i].Quality
            })
            self.rewardItems[i].gameObject:SetActive(true)
        else
            self.rewardItems[i].gameObject:SetActive(false)
        end
    end

end
-- 关闭：窗口隐藏
local function OnDisable(self)
	base.OnDisable(self)
	--if self.openfunctionItemList ~= nil then
	--	UIUtil.RecyleComItem(self.openfunctionItemList)
	--end
	--self.openfunctionItemList = nil
end
local function OnUpdateUIData(self)
	isUpdate = true
	self:OnRefresh()
end
local function OnAddListener(self)
	base.OnAddListener(self)
	-- UI消息注册
	self:AddUIListener(UIMessageNames.UI_USERHELL_REFRESH,OnUpdateUIData)
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- UI消息注销
	self:RemoveUIListener(UIMessageNames.UI_USERHELL_REFRESH,OnUpdateUIData)
end

local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)
	ResourceBarComponentManager:GetInstance():DestroyResourceBar(UIWindowNames.UIUserHell)
	if self.closeComponent~=nil or not IsNull(self.closeComponent) then
		self.closeComponent:RecyleSelf();
	end
end

UIUserHellView.OnCreate = OnCreate
UIUserHellView.OnEnable = OnEnable
UIUserHellView.OnRefresh = OnRefresh
UIUserHellView.OnAddListener = OnAddListener
UIUserHellView.OnRemoveListener = OnRemoveListener
UIUserHellView.OnDestroy = OnDestroy
UIUserHellView.OnDisable = OnDisable
return UIUserHellView


--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIUserHellUpView = BaseClass("UIUserHellUpView", UIBaseView)
local base = UIBaseView
local UICommHellIcon = require "UI.UIComm.Component.UICommHellIcon"

local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	
	--self.titleUIText1 = self:AddComponent(UIText, "boardAni/texAni/titletext1")
	--self.titleUIText2= self:AddComponent(UIText, "boardAni/texAni/titletext2")

	--local rectTrans=UIUtil.FindComponent(CS.UnityEngine.GameObject.Find("UIRoot/NormalLayer").transform,typeof(CS.UnityEngine.RectTransform))
	--self.sceen_width =rectTrans.sizeDelta.x


	self.bg_img=self:AddComponent(UIImage,"boardAni/bg/BgImage")
	self.bg_img.rectTransform.anchoredPosition=Vector3.zero
	self.bg_img.rectTransform.sizeDelta=Vector2.New(2340,600)
	self.ani=UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.Animator),"boardAni/bg")
	self.eff=UIUtil.FindTrans(self.transform,"boardAni/bg/UICommGetRewards_Efc")
	self.curhell = self:AddComponent(UIBaseContainer,"boardAni/Parent/CurHell")
	--self.curHell_Title = self.curhell:AddComponent(UIText,"Title_UIText")
	self.curHell_Icon = self.curhell:AddComponent(UICommHellIcon,"UICommonHell")
	self.curHell_SubLevel = self.curhell:AddComponent(UIText,"value_UIText")
	--之后地狱道
	self.laterhell = self:AddComponent(UIBaseContainer,"boardAni/Parent/LaterHell")
	--self.laterHell_Title = self.laterhell:AddComponent(UIText,"Title_UIText")
	self.laterHell_Icon = self.laterhell:AddComponent(UICommHellIcon,"UICommonHell")
	self.laterHell_SubLevel = self.laterhell:AddComponent(UIText,"value_UIText")

	--self.lable1_UIText = self:AddComponent(UIText, "boardAni/Parent/title2/lable1_UIText")
	self.lable2_UIText = self:AddComponent(UIText, "boardAni/CloseTextTip")
    self.effectDesItems = {}
    for i = 1, 4 do
        self.effectDesItems[i] = self:AddComponent(UIText, "boardAni/Parent/EffectDes/des_UIText"..i)
    end

	self.gridObj=self:AddComponent(UIBaseContainer,"boardAni/Parent/OpenFunction/OpenFunc")
	self.rewardList={}
	local count=self.gridObj.transform.childCount
	for i = 0, count-1 do
		local tempItem=self.gridObj:AddComponent(UIBaseContainer,i)
		local tempFrame=tempItem:AddComponent(UIImage,"FrameImage",AtlasConfig.DynamicTex)
		local tempIcon=tempItem:AddComponent(UIImage,"icon",AtlasConfig.DynamicTex)
		local tempText=tempItem:AddComponent(UIText,"num")
		local nameText=tempItem:AddComponent(UIText,"name_UIText")
		local typeName = tempItem:AddComponent(UIText,"typeimage/Text")
		table.insert(self.rewardList,{obj=tempItem,frame=tempFrame,icon=tempIcon,numText=tempText,nameText = nameText,typeName = typeName})
	end

	self.oKUIButton = self:AddComponent(UIButton, "")
	self.oKUIButton:SetOnClick(function ()
		if self.can_back then
			LJAudioManger:GetInstance():PlayVoice("UI_Cancel")
			self.ctrl:CloseSelf()
		else
			self.can_back=true
			self.eff.gameObject:SetActive(false)
			self.ani:Play("FX_UICommGetRewards_bg_stand")
		end
	end)
end

local function OnEnable(self)
	base.OnEnable(self)
    LJAudioManger:GetInstance():PlayVoice("UI_LevelUp_02")
	self.can_back=false
	self.eff.gameObject:SetActive(true)
	TimerManager:GetInstance():SimpleTimerArgs(1.5,function()
		self.can_back=true
	end,nil,true)
	self:OnRefresh()
end

local function OnRefresh(self)
	-- 各组件刷新
	--self.titleUIText1:SetText(DataUtil.GetClientText(100091))
	--self.titleUIText2:SetText(DataUtil.GetClientText(100097))

	--self.lable1_UIText:SetText(DataUtil.GetClientText(100087))
	self.lable2_UIText:SetText(DataUtil.GetClientText(100098))

    for i = 1, 4 do
        if i <= #self.model.laterLevel.Desc then
            self.effectDesItems[i]:SetText(self.model.laterLevel.Desc[i])
            self.effectDesItems[i].gameObject:SetActive(true)
        else
            self.effectDesItems[i].gameObject:SetActive(false)
        end
    end

	--self.curHell_Title:SetText(DataUtil.GetClientText(100090))
	if self.model.curLevel.subLevel > 0 then
		self.curHell_SubLevel:SetText("+"..self.model.curLevel.subLevel)
	else
		self.curHell_SubLevel:SetText("")
	end

	self.curHell_Icon:SetItemLevel(self.model.curLevel.Bg,self.model.curLevel.Icon,self.model.curLevel.Name)

	--self.laterHell_Title:SetText(DataUtil.GetClientText(100091))
	if self.model.laterLevel.subLevel > 0 then
		self.laterHell_SubLevel:SetText("+"..self.model.laterLevel.subLevel)
	else
		self.laterHell_SubLevel:SetText("")
	end
	self.laterHell_Icon:SetItemLevel(self.model.laterLevel.Bg,self.model.laterLevel.Icon,self.model.laterLevel.Name)

--[[	--创建奖励
	if self.openfunctionItemList ~= nil then
		UIUtil.RecyleComItem(self.openfunctionItemList)
	end
	self.openfunctionItemList = nil
	UIUtil.CreatCommonFunctionItem(self,self.model.curGetAward,function(itemList) self.openfunctionItemList=itemList end,self.openfunc_parent.transform);]]
	if self.model.curGetAward ~= nil then
		for i, v in ipairs(self.rewardList) do
			v.obj.transform.gameObject:SetActive(false)
		end
		coroutine.start(function ()
			for i, v in ipairs(self.rewardList) do
				if self.model.curGetAward[i]~=nil then
					v.obj.transform.gameObject:SetActive(true)
					v.icon:SetSpriteName(self.model.curGetAward[i].Icon)
					v.frame:SetSpriteName(self.model.curGetAward[i].Frame)
                    v.numText:SetActive(self.model.curGetAward[i].Num > 0)
					v.numText:SetText(math.floor(self.model.curGetAward[i].Num))
					v.nameText:SetText(self.model.curGetAward[i].Des)
					v.typeName:SetText(self.model.curGetAward[i].TypeName)
					coroutine.waitforseconds(0.3)
				end
			end
			coroutine.yieldbreak();
		end)
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

UIUserHellUpView.OnCreate = OnCreate
UIUserHellUpView.OnEnable = OnEnable
UIUserHellUpView.OnRefresh = OnRefresh
UIUserHellUpView.OnAddListener = OnAddListener
UIUserHellUpView.OnRemoveListener = OnRemoveListener
UIUserHellUpView.OnDestroy = OnDestroy

return UIUserHellUpView

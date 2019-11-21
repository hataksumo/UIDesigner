
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UILevelUnlockTipView = BaseClass("UILevelUnlockTipView", UIBaseView)
local base = UIBaseView

local before_lv_path="ParentLayout/LevelTitleText/beforeLv";
local cur_lv_path="ParentLayout/LevelTitleText/curLv";
local item_parent_path="ParentLayout/itemList";
local bg_btn_path="BgBtn";
local empty_path="ParentLayout/Empty";

local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	--local rectTrans=UIUtil.FindComponent(CS.UnityEngine.GameObject.Find("UIRoot/NormalLayer").transform,typeof(CS.UnityEngine.RectTransform))
	--self.sceen_width =rectTrans.sizeDelta.x
	--self.bg_img=self:AddComponent(UIImage,"ParentLayout/bg/BgImage")
	--self.bg_img.rectTransform.anchoredPosition=Vector3.zero
	--self.bg_img.rectTransform.sizeDelta=Vector2.New(2340,680)
	self.ani=UIUtil.FindComponent( self.transform,typeof(CS.UnityEngine.Animator),"ParentLayout")
	self.eff_obj=UIUtil.FindTrans(self.transform,"ParentLayout/bg/UILevelUnlockTip_Efc")
	self.emptyObj=UIUtil.FindTrans(self.transform,empty_path);
	self.bgBtn=self:AddComponent(UIButton,bg_btn_path);
	self.bgBtn:SetOnClick(function()
		if self.can_back then
			LJAudioManger:GetInstance():PlayVoice("UI_Cancel")
			self.ctrl:CloseSelf();
			if GuideGroup:GetInstance().Runing  then
				DataManager:GetInstance():Broadcast(DataMessageNames.UIGuide_TXOverEvent)
			end

			--检测是否有新功能开启
			if UnlockData:GetInstance().funOpenState > 0 and UnlockData:GetInstance().funOpenState~=3  then
				if  UnlockData:GetInstance().newOpenFunList[1].id~=313  then--不等于装备
					UIManager:GetInstance():OpenWindow(UIWindowNames.UINewFunOpen);
				end
			else
				GuideCheckManager:UnlockToGuide()
				DataManager:GetInstance():Broadcast(DataMessageNames.UI_Guide_NeedEvent)
			end
		else
			self.can_back=true
			self.ani:Play("ef_ui_UILevelUnlockTip_stand")
		end
 	end);
	self.beforeLvText=self:AddComponent(UIText,before_lv_path);
	self.curLvText=self:AddComponent(UIText,cur_lv_path);
	self.itemParent=self:AddComponent(UIBaseContainer,item_parent_path);
	self.itemList={};
	local count=self.itemParent.transform.childCount;
	for i = 0, count-1 do
		local tempItem=self.itemParent:AddComponent(UIBaseContainer,i);
		local tempItem_icon=self.itemParent:AddComponent(UIImage,i);
		local tempIcon=tempItem:AddComponent(UIImage,"icon",AtlasConfig.Language);
		local tempText=tempItem:AddComponent(UIText,"nameText");
		local tempOpenText=tempItem:AddComponent(UIText,"openText");
		table.insert(self.itemList,{item=tempItem,item_icon=tempItem_icon,item_icon_gray=tempItem_icon:GetMat(),icon=tempIcon,icon_gray=tempIcon:GetMat(),name=tempText,openText=tempOpenText});
	end
end

local function OnEnable(self)
	base.OnEnable(self)
    LJAudioManger:GetInstance():PlayVoice("UI_LevelUp_02")
	UIUtil.SetEffectLayer(self.eff_obj,self.base_order)
	self.can_back=false
	TimerManager:GetInstance():SimpleTimerArgs(1.5,function()
		self.can_back=true
	end,nil,true)
	self.beforeLvText:SetText(string.format("%s",self.model.oldLv));
	self.curLvText:SetText(string.format("%s",self.model.curLv));
	self.itemParent.transform.gameObject:SetActive(self.model.dataBeginIndex~=0);
	self.emptyObj.transform.gameObject:SetActive(self.model.dataBeginIndex==0);

	for i, v in ipairs(self.itemList) do
		local dataIndex=self.model.dataBeginIndex+i-1;
		local data=self.model.dataList[dataIndex];
		--v.item.transform.gameObject:SetActive(data~=nil);
		v.item.transform.gameObject:SetActive(false);
		if data~=nil then
			local atlasConfig=data.iconPathType==1 and AtlasConfig.Language or AtlasConfig.DynamicTex
			v.icon:SetSpriteName(data.icon,false,atlasConfig);
			v.name:SetText(data.title);
			local infoStr
			if self.model.curLv==data.lv then
				infoStr="<color=#F8E83E>新功能开启</color>"
				v.icon:SetMat(nil)
				v.item_icon:SetMat(nil)
			else
				infoStr=string.format("<color=#959595>%s级开启</color>",data.lv)
				v.icon:SetMat(v.item_icon_gray)
				v.item_icon:SetMat(v.icon_gray)
			end
			v.openText:SetText(infoStr)
		end
	end
	self.downTimer= TimerManager:GetInstance():SimpleTimerArgs(0.7,function()
		coroutine.start(function ()
				for i, v in ipairs(self.itemList) do
					local dataIndex=self.model.dataBeginIndex+i-1;
					local data=self.model.dataList[dataIndex];
					if data~=nil then
						v.item.transform.gameObject:SetActive(true);
						LuaTweener.UIScaleTo(v.item.transform.gameObject.transform,Vector3.New(1.8,1.8,1.8),Vector3.New(1,1,1),0.1,EaseFormula.InOutSine,function()
						end)
						if not self.can_back then
							coroutine.waitforseconds(0.2);
						end
					end
				end
			coroutine.yieldbreak();
		end)
	end,nil,true)
end

local function OnRefresh(self)
	-- 各组件刷新
	
end

local function OnAddListener(self)
	base.OnAddListener(self)
	-- UI消息注册
	
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- UI消息注销
	
end
local function OnDisable(self)
	base.OnDisable(self)
	if self.downTimer~=nil then
		TimerManager:GetInstance():SimpleTimerStop(self.downTimer);
	end
end
local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)

end
UILevelUnlockTipView.OnDisable = OnDisable
UILevelUnlockTipView.OnCreate = OnCreate
UILevelUnlockTipView.OnEnable = OnEnable
UILevelUnlockTipView.OnRefresh = OnRefresh
UILevelUnlockTipView.OnAddListener = OnAddListener
UILevelUnlockTipView.OnRemoveListener = OnRemoveListener
UILevelUnlockTipView.OnDestroy = OnDestroy

return UILevelUnlockTipView

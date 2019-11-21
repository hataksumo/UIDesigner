
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIStoryJumpView = BaseClass("UIStoryJumpView", UIBaseView)
local base = UIBaseView
local DMItem=require("UI.UIStoryJump.Component.DanMuItem")
local top_bg_path="Parent/topBg";
local bottom_bg_path="Parent/bottomBg";
local jump_btn_path="Parent/Text/Skip";

--播放动画
local function PlayAnim(self,animList)
	for i, v in ipairs(animList) do
		v.transform.position=v.p2;
		if v.tweener~=nil then
			LuaTweener.StopTweener(v.tweener)
			v.tweener = nil
		end
		v.tweener = LuaTweener.TransMoveTo(v.transform,v.p2,v.p1,1,EaseFormula.Linear,function()
			v.tweener = nil
			self.jumpBtn.transform.gameObject:SetActive(true);
		end)
	end
end
local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.topBg=UIUtil.FindTrans(self.transform,top_bg_path);
	self.bottomBg=UIUtil.FindTrans(self.transform,bottom_bg_path);
	self.jumpBtn=self:AddComponent(UIButton,jump_btn_path);
	self.jumpBtn.transform.gameObject:SetActive(false);
	self.parentGame = UIUtil.FindTrans(self.transform,"Parent").gameObject
	self.bgImg = self:AddComponent(UIImage,"")
	self.jumpBtn:SetOnClick(function()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		--跳过时unpause背景音乐
		LJAudioManger:GetInstance():UnPauseAll()
		self.parentGame:SetActive(false)
		self.jumpBtn.gameObject:SetActive(false)
		if SceneManager:GetInstance().curSceneName == "LoginScene" then
			StoryManager:GetInstance():JumpToEnd()
		else
			StoryManager:GetInstance():Skip(1)
			LuaTweener.UIFadeTo(self.bgImg,0,1,0.5,EaseFormula.Linear,function()
				StoryManager:GetInstance():Skip(2)
			end)
		end
		--UIManager:GetInstance():CloseWindow(UIWindowNames.UIStoryJump)
	end);
	local anim_offset = 100
	self.bgAnims={};
	self.bgAnims[1]={};
	self.bgAnims[1].transform=self.topBg;
	self.bgAnims[1].p1=self.topBg.position;
	self.bgAnims[1].p2=self.topBg.position+Vector3.New(0,anim_offset,0);
	self.bgAnims[2]={};
	self.bgAnims[2].transform=self.bottomBg;
	self.bgAnims[2].p1=self.bottomBg.position;
	self.bgAnims[2].p2=self.bottomBg.position+Vector3.New(0,-anim_offset,0);
	self.danMuPanel = UIUtil.FindTrans(self.transform,"Parent/DanMuPanel")
	self.danMuPanel.gameObject:SetActive(false)
	self.danMuParent = UIUtil.FindTrans(self.transform,"Parent/DanMuPanel/DanMuObj")
	self.danmuPre={}
end
local function LoadPre(self,callback)
	local danPath = "UI/Prefabs/View/UIDanMuText.prefab"
	GameObjectPool:GetInstance():GetGameObjectAsync(danPath,function (go)
		if not IsNull(go) then
			go.transform:SetParent(self.danMuParent)
			go.transform.localPosition=Vector3.New(1500,0,0)
			go.transform.localScale=Vector3.New(1,1,1)
			go.transform.localEulerAngles=Vector3.New(0,0,0)
			local name_index=#self.danmuPre
			go.name= tostring(name_index+1)
			 local  pre_scr=DMItem.New(self,go)
			pre_scr:OnCreate(self)
			table.insert(self.danmuPre,pre_scr)
			if #self.danmuPre == 3 then
				--开始刷新
				self:LuanchFun()
			end
			if callback~=nil then
				callback(go)
			end
		end

	end)
end
local function LuanchFun(self)
	if #self.danmuList>=3 then
		self:SetItem(1)
		self:SetItem(2)
		self:SetItem(3)
	end
end
local function SetItem(self,line)
	if #self.danmuList<=0 or not self.goon then
		return
	end
	local num=#self.danmuPre
	for i = 1, num do
		if self.danmuPre[i].can_set_data  then
			--可设置~~
			self.danmuPre[i]:OnRefresh(self.danmuList[1],line)
			break
		end
	end
	table.remove(self.danmuList,1)
end

--trans.localPosition=Vector3.New(trans.localPosition.x - speed,-175,0)
--[[
local function Update(self)
    if self.textPrbList ~= nil and #self.textPrbList > 0 then
        for i, v in ipairs(self.textPrbList) do
            if i%3 == 1 then
                v.gameObj.transform.localPosition=Vector3.New(v.gameObj.transform.localPosition.x - self.textPrbList[i].speed,-105,0)
            elseif i%3 == 2 then
                v.gameObj.transform.localPosition=Vector3.New(v.gameObj.transform.localPosition.x - self.textPrbList[i].speed,-175,0)
            elseif i%3 == 0 then
                v.gameObj.transform.localPosition=Vector3.New(v.gameObj.transform.localPosition.x - self.textPrbList[i].speed,-245,0)
            end
        end
    end
end
--]]
local function OnSetActiveDanMu(self,isStart,_num)
	local danmuData = DataUtil.GetData("danmaku")
	if danmuData == nil or #danmuData <=0 then
		return
	end
	if isStart then
		self.goon=true
		self.danMuPanel.gameObject:SetActive(isStart)
		self.danmuList = {}
		for i, v in ipairs(danmuData) do
			if v.PlotId == _num then
				local danmuData = {}
				danmuData.id = i
				danmuData.speed = v.Speed
				danmuData.info = v.Content
				table.insert(self.danmuList,danmuData)
			end
		end
		table.sort(self.danmuList,function (a,b) return a.id<b.id end)
		local danmu_num=#self.danmuList
		if  danmu_num<=#self.danmuPre then
			--开始跑起来
			self:LuanchFun()
		else
			if #self.danmuPre>=3 then
				--开始跑起来
				self:LuanchFun()
			end
			for i = 1, danmu_num-#self.danmuPre do
				if self.danmuList[i] ~= nil then
					LoadPre(self)
				end
			end
		end
	else
		self.goon=false
	end
end
local function OnEnable(self)
	base.OnEnable(self)
	self.canvas:SetOrder(9)
    self.textPrbList={}
	self:OnRefresh()
	self.parentGame:SetActive(true)
	self.jumpBtn.gameObject:SetActive(false);
	self.bgImg:SetAlphaVal(0)
	PlayAnim(self,self.bgAnims);
end

local function OnRefresh(self)
	-- 各组件刷新
	
end

local function OnAddListener(self)
	base.OnAddListener(self)
	-- UI消息注册
	self:AddUIListener(UIMessageNames.UI_DAN_MU_EVENT, OnSetActiveDanMu)
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- UI消息注销
	self:RemoveUIListener(UIMessageNames.UI_DAN_MU_EVENT, OnSetActiveDanMu)
end

local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)
end
local function OnDisable(self)
	base.OnDisable(self)
	local pre_num=#self.danmuPre
	for i = 1, pre_num do
		self.danmuPre[i]:OnDisable()
	end
end
UIStoryJumpView.OnDisable=OnDisable
--UIStoryJumpView.Update = Update
UIStoryJumpView.OnSetActiveDanMu = OnSetActiveDanMu
UIStoryJumpView.OnCreate = OnCreate
UIStoryJumpView.OnEnable = OnEnable
UIStoryJumpView.OnRefresh = OnRefresh
UIStoryJumpView.OnAddListener = OnAddListener
UIStoryJumpView.OnRemoveListener = OnRemoveListener
UIStoryJumpView.OnDestroy = OnDestroy
UIStoryJumpView.SetItem = SetItem
UIStoryJumpView.LuanchFun =  LuanchFun
return UIStoryJumpView

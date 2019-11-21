
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIFriendView = BaseClass("UIFriendView", UIBaseView)
local base = UIBaseView

local UIFriendCon = require "UI.UIFriend.Component.UIFriendCon"
local UIFriendAddCon = require "UI.UIFriend.Component.UIFriendAddCon"

local function SwitchWindow(self,index,force_voice)
	if not force_voice then
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
	end
	if self.select_index == index then
		return
	end
	self.select_index = index
	for i, v in ipairs(self.friend_container) do
		if i == index then
			v.con.gameObject:SetActive(true)
			v.con:OnInit()
			v.img:SetSpriteName("ui_t_c2_012")
			v.text:SetColor32(239,234,222,255)
			v.outLine:SetColor32(5,5,5,255)
		else
			v.con.gameObject:SetActive(false)
			v.img:SetSpriteName("ui_t_c2_013")
			v.text:SetColor32(21,24,30,255)
			v.outLine:SetColor32(38,74,89,255)
		end
	end
end

local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
    self.friend_container = {{img = false,con = false,text=false,outLine=false},{img = false,con = false,text=false,outLine=false}}
	self.friend_container[1].img = self:AddComponent(UIImage,"CompontRoot/FriendBtn",AtlasConfig.DynamicTex)
	self.friend_container[1].text = self:AddComponent(UIText,"CompontRoot/FriendBtn/AllText")
	self.friend_container[1].outLine = self:AddComponent(UIOutlineEx,"CompontRoot/FriendBtn/AllText")
	self.friend_container[1].con = UIFriendCon.New(self,"FriendWin")
	self.friend_container[1].con:OnCreate()
	local btn = self:AddComponent(UIButton,"CompontRoot/FriendBtn")
	btn:SetOnClick(self,SwitchWindow,1)

	self.friend_container[2].img = self:AddComponent(UIImage,"CompontRoot/AddBtn",AtlasConfig.DynamicTex)
	self.friend_container[2].text = self:AddComponent(UIText,"CompontRoot/AddBtn/AllText1")
	self.friend_container[2].outLine = self:AddComponent(UIOutlineEx,"CompontRoot/AddBtn/AllText1")
	self.friend_container[2].con = UIFriendAddCon.New(self,"AddWin")
	self.friend_container[2].con:OnCreate()
	btn = self:AddComponent(UIButton,"CompontRoot/AddBtn")
	btn:SetOnClick(self,SwitchWindow,2)


--TODO:关闭窗口按钮发生了更改
	--btn = self:AddComponent(UIButton,"CompontRoot/CloseBtn")
	--btn:SetOnClick(function()
	--	LJAudioManger:GetInstance():PlayVoice("UI_Cancel")
	--	UIManager:GetInstance():CloseWindow(UIWindowNames.UIFriend)
	--end)

	self.add_con_game = UIUtil.FindTrans(self.transform,"AddFriendWindow").gameObject
	self.add_con_game:SetActive(false)

	self.add_friend_input = self:AddComponent(UIInput,"AddFriendWindow/Bg/AddFriendInput")
	btn = self:AddComponent(UIButton,"AddFriendWindow/Bg/Confirm")
	btn:SetOnClick(function()
		local str = self.add_friend_input:GetText()
		--ChatData:GetInstance():AddNewChat(str)
		str=string.isNilOrEmpty(str) and "少年骨骼清奇，不如加个好友？" or str;
		FriendData:GetInstance():DealFriend(1,self.add_player_id,str)
		self.add_friend_input:SetText("")
		self.add_con_game:SetActive(false)

	end)
	btn = self:AddComponent(UIButton,"AddFriendWindow/Bg/CloseAdd")
	btn:SetOnClick(function()
		LJAudioManger:GetInstance():PlayVoice("UI_Cancel")
		self.add_con_game:SetActive(false)
	end)

	--添加返回按钮组件
	self.TitleBar=UIUtil.FindTrans(self.transform,"CloseBtn")
	UIUtil.CreatCloseBtnComponent(self,self.TitleBar.transform,function(go) self.closeComponent=go end,
			function()
				self.ctrl:CloseSelf()
			end,
			function()
				self.backMainCityAnim:Play("ef_ui_UI Generic board back")
				TimerManager:GetInstance():SimpleTimerArgs(0.5,
						function() UIUtil.BackHomeMain() end, nil,true)
			end,
			"好友",false,0,false)
	self.backMainCityAnim = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.Animator),"")
	--TODO:添加金币等组件(需要进行填表，暂时使用背包的数据)
	self.resourceBarParent=UIUtil.FindTrans(self.transform,"resourceBarParent");
	ResourceBarComponentManager:GetInstance():CreatResourceBarComponent(self.resourceBarParent,UIWindowNames.UIFriend,ResourceBarType.BAGPACK,self)
--TODO:红点发生更改
	self.friend_red_game = UIUtil.FindTrans(self.transform,"CompontRoot/FriendBtn/redpoint").gameObject
	self.add_red_game = UIUtil.FindTrans(self.transform,"CompontRoot/AddBtn/redpoint").gameObject
end

--TODO:刷新红点，发生更改
local function RefreshRedInfo(self)
	self.friend_red_game:SetActive(RedPointData:GetInstance():GetRedState("friend_friend"))
	self.add_red_game:SetActive(RedPointData:GetInstance():GetRedState("friend_add"))
end

local function OpenApplyWindow(self,id)
	self.add_friend_input:SetText("")
	self.add_con_game:SetActive(true)
	self.add_player_id = id
end

local function OnEnable(self)
	base.OnEnable(self)
	UIUtil.SetChatImgStatus(false)
	self.open_chat_id = self.model.send_id
	SwitchWindow(self,1,true)
	RefreshRedInfo(self)
end


local function UpdateNewChat(self,id)
	if self.select_index == 1 then
		self.friend_container[1].con:UpdateChat(id)
	end
	RefreshRedInfo(self)
end

local function ListRefrsh(self)
	if self.select_index == 2 then
		self.friend_container[2].con:UpdateList()
	else
		self.friend_container[1].con:OnInit()
	end
	RefreshRedInfo(self)
end

local function SerchFriend(self,data)
	if self.select_index == 2 then
		self.friend_container[2].con:SerchFriend(data)
	end
end

local function OpenFriendChat(self,id)
	self.open_chat_id = id
	if self.select_index == 2 then
		SwitchWindow(self,1,true)
	end
	self.friend_container[1].con:OpenChat(id)
end


local function RedRefresh(self)
	RefreshRedInfo(self)
	if self.select_index == 1 then
		self.friend_container[1].con:RefreshRedPoint()
	end
end


local function OnAddListener(self)
	base.OnAddListener(self)
	-- UI消息注册
	self:AddUIListener(UIMessageNames.ON_RED_POINT_CHANGE, RedRefresh)
	self:AddUIListener(UIMessageNames.ON_FRIEND_LIST_REFRESH, ListRefrsh)
	self:AddUIListener(UIMessageNames.ONCHAT_UPDATE, UpdateNewChat)
	self:AddUIListener(UIMessageNames.ON_SERCH_FRIEND_INFO, SerchFriend)
	self:AddUIListener(UIMessageNames.ON_OPEN_FRIEND_CHAT, OpenFriendChat)
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- UI消息注销
	self:RemoveUIListener(UIMessageNames.ON_RED_POINT_CHANGE, RedRefresh)
	self:RemoveUIListener(UIMessageNames.ON_FRIEND_LIST_REFRESH, ListRefrsh)
	self:RemoveUIListener(UIMessageNames.ONCHAT_UPDATE, UpdateNewChat)
	self:RemoveUIListener(UIMessageNames.ON_SERCH_FRIEND_INFO, SerchFriend)
	self:RemoveUIListener(UIMessageNames.ON_OPEN_FRIEND_CHAT, OpenFriendChat)
end
local function OnDisable(self)
	base.OnDisable(self)
	UIUtil.SetChatImgStatus(true)
end
local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)
	ResourceBarComponentManager:GetInstance():DestroyResourceBar(UIWindowNames.UIFriend);
end
UIFriendView.OpenApplyWindow = OpenApplyWindow
UIFriendView.OnCreate = OnCreate
UIFriendView.OnEnable = OnEnable
UIFriendView.OnDisable = OnDisable
UIFriendView.OnAddListener = OnAddListener
UIFriendView.OnRemoveListener = OnRemoveListener
UIFriendView.OnDestroy = OnDestroy
return UIFriendView


--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UILYZTChatView = BaseClass("UILYZTChatView", UIBaseView)
local base = UIBaseView

local LyztChatWrapGroup=require "UI.UILYZTChat.Component.LyztChatWrapGroup";
local UILyztChatWrapItem=require "UI.UILYZTChat.Component.UILyztChatWrapItem";
local grid_path="ParentLayout/BG/Scroll View/grid_UIWrapGroup3D";
local unity_text_path="ParentLayout/BG/contentText";
local close_btn_path="ParentLayout/RightPanel/closeBtn";
local input_btn_path="ParentLayout/BG/inputBtn";
local input_text_path="ParentLayout/BG/inputBtn/Text";
local player_dialog_panel_path="ParentLayout/BG/playerDialogPanel";


--单个玩家对话的点击
local function OnSinglePlayerDialogClick(self,_index)
	self.inputCanClick=false;
	self.playerDialogPanel.transform.gameObject:SetActive(false);
	local dialogData=self.model.finalDialog[1];
	table.insert(self.world_list,{content=dialogData.content[_index],id=dialogData.id[_index],isNpac=dialogData.isNpac,icon=dialogData.icon});
	self:UpdateNewChat();
	LTData:GetInstance():ChatWithNpc(self.model.npcId,dialogData.id[_index],dialogData.isNpac==1);
end

local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.closeBtn=self:AddComponent(UIButton,close_btn_path);
	self.closeBtn:SetOnClick(function()
		self.ctrl:CloseSelf();
		UIManager:GetInstance():OpenWindow(UIWindowNames.UILYZTMessageList)
	end)
	self.unity_text=UIUtil.FindText(self.transform, unity_text_path);
	self.wrap_group = self:AddComponent(LyztChatWrapGroup, grid_path, UILyztChatWrapItem, Vector2.New(808.8, 180))
	self.inputBtn=self:AddComponent(UIButton,input_btn_path);
	self.inputBtn:SetOnClick(function()
		if self.pointAnim~=nil then
			TimerManager:GetInstance():SimpleTimerStop(self.pointAnim);
		end
		if self.inputCanClick then
			self.inputText:SetText("......");
			self:ShowPlayerDialogPanel(self.model.finalDialog[1]);
		end

	end)
	self.inputText=self:AddComponent(UIText,input_text_path);
	self.playerDialogPanel=self:AddComponent(UIBaseContainer,player_dialog_panel_path);
	local count=self.playerDialogPanel.transform.childCount;
	self.playerDialogPrbList={};
	for i = 0, count-1 do
		local tempObj=self.playerDialogPanel:AddComponent(UIBaseContainer,i);
		local tempText=tempObj:AddComponent(UIText,"dialogText");
		local tempBtn=tempObj:AddComponent(UIButton,"");
		tempBtn:SetOnClick(function()
			OnSinglePlayerDialogClick(self,i+1);
		end)
		table.insert(self.playerDialogPrbList,{obj=tempObj,infoText=tempText});
	end
end

local function OnEnable(self)
	base.OnEnable(self)
	self:OnRefresh()
end

local function UpdateChatPos(self, v, pos)
	local finc = DataUtil.ChatOutputContent(v.content)
	local width = UIUtil.GetTextWidth(self.unity_text, finc)
	local height = UIUtil.GetTextHeight(self.unity_text, finc)
	v.pos = pos

	--为什么不会按预设这个self.unity_text的width为最大算？
	if width > 530 then
		width = 530
	end

	if height > 70 then
		v.y = 180 + height - 70 + 20
	else
		--146.2
		v.y = 180
	end
	--文本背景大小用
	v.size = Vector2.New(width + 50, height + 25)
	return pos + v.y
end


--显示更新的聊天
local function UpdateNewChat(self)
	--世界消息
	if self.last_chat_num ~= nil then
		local pos = 0
		if self.last_chat_num > 0 then
			pos = self.world_list[self.last_chat_num].pos + self.world_list[self.last_chat_num].y
		end
		for i = self.last_chat_num + 1, #self.world_list do
			pos = UpdateChatPos(self, self.world_list[i], pos)
		end
	end
	if self.world_list ~= nil and #self.world_list > 0 then
		local is_last = self.wrap_group:UpdateLength(#self.world_list, self.world_list)
		--self.interver_num = self.interver_num + #self.world_list - self.last_chat_num
		--self.next_btn.gameObject:SetActive(true)
		--self.next_num:SetText("未读消息" .. self.interver_num .. "条")
		self.last_chat_num = #self.world_list
	else
		self.wrap_group:SetLength(0)
	end
end

--显示玩家的对话选择窗口
local function ShowPlayerDialogPanel(self,_data)
	self.playerDialogPanel.transform.gameObject:SetActive(true);
	for i, v in ipairs(self.playerDialogPrbList) do
		v.obj.transform.gameObject:SetActive(_data.content[i]~=nil);
		if _data.content[i]~=nil then
			v.infoText:SetText(_data.content[i]);
		end
	end
end

--显示玩家的对话的......动画
local function ShowPlayerDialogPointAnim(self)
	local animIndex=0;
	local showStr="";
	self.pointAnim=TimerManager:GetInstance():SimpleTimerArgs(0.2,function()
		animIndex=animIndex+1;
		showStr=showStr..".";
		self.inputText:SetText(showStr);
		showStr=animIndex%6==0 and "" or showStr;
		if animIndex>=18 then
			TimerManager:GetInstance():SimpleTimerStop(self.pointAnim);
			self:ShowPlayerDialogPanel(self.model.finalDialog[1]);
		end
	end,nil,false,false);
end

--显示最后一条聊天内容
local function ShowLastChatContent(self,_isFirst)
	if self.model.finalDialog~=nil then
		local dialogData=self.model.finalDialog[1];
		if dialogData.isNpac==1 then--1=玩家 2=npc
			--玩家手动点击选择选项说话
			self.inputCanClick=true;
			ShowPlayerDialogPointAnim(self)
			--ShowPlayerDialogPanel(self,dialogData);
			print("没错，你就是凶手，快为自己辩护")
		else
			--npc自动说话
			local delay=_isFirst and 0 or 2;
			self.npcNextDialTimer=TimerManager:GetInstance():SimpleTimerArgs(delay,function()
				table.insert(self.world_list,{content=dialogData.content[1],id=dialogData.id[1],isNpac=dialogData.isNpac,icon=dialogData.icon});
				UpdateNewChat(self);
				LTData:GetInstance():ChatWithNpc(self.model.npcId,dialogData.id[1],dialogData.isNpac==1);
			end,nil,true,false);
		end
	end
end


local function OnRefresh(self)
	-- 各组件刷新
	--第一步检测是否是本次对话的最后一句对话
	if self.model.isEnd==1 then
		--如果是最后一次对话
		self.playerDialogPanel.transform.gameObject:SetActive(false);
		self.inputText:SetText("");
	else

	end

	self.playerDialogPanel.transform.gameObject:SetActive(false);
	--显示历史聊天记录
	self.world_list=self.model.dialogList;
	self.inputCanClick=false;--是否可以点击下面弹窗按钮
	local pos = 0
	for i, v in ipairs(self.world_list) do
		--计算位置
		pos = UpdateChatPos(self, v, pos)
	end
	self.last_chat_num = #self.world_list
	if self.world_list ~= nil and #self.world_list > 0 then
		self.wrap_group:SetLength(#self.world_list, self.world_list)
		self.wrap_group:ResetToBeginning()
	else
		self.wrap_group:SetLength(0, self.world_list)
	end

	--显示最新的聊天记录，如果是自己，显示选项，如果是npc，显示npc的对话。
	ShowLastChatContent(self,true);
end





local function OnAddListener(self)
	base.OnAddListener(self)
	-- UI消息注册
	self:AddUIListener(UIMessageNames.UI_LT_REFRESH_NEXT_DIALOG,ShowLastChatContent)
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- UI消息注销
	self:RemoveUIListener(UIMessageNames.UI_LT_REFRESH_NEXT_DIALOG,ShowLastChatContent)
end

local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)
end


UILYZTChatView.ShowPlayerDialogPanel=ShowPlayerDialogPanel;
UILYZTChatView.UpdateNewChat=UpdateNewChat;
UILYZTChatView.OnCreate = OnCreate
UILYZTChatView.OnEnable = OnEnable
UILYZTChatView.OnRefresh = OnRefresh
UILYZTChatView.OnAddListener = OnAddListener
UILYZTChatView.OnRemoveListener = OnRemoveListener
UILYZTChatView.OnDestroy = OnDestroy

return UILYZTChatView

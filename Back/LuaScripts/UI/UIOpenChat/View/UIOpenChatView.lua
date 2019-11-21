
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIOpenChatView = BaseClass("UIOpenChatView", UIBaseView)
local base = UIBaseView
local Input = CS.UnityEngine.Input;
local Screen = CS.UnityEngine.Screen
local EventTriggerType = CS.UnityEngine.EventSystems.EventTriggerType;
local EventTrigger = CS.UnityEngine.EventSystems.EventTrigger;


--按下
local function OnItemDown(self, base_event)
	self.initMousePos = Input.mousePosition;
	self.initTime = Time.realtimeSinceStartup;
	self.isDrag = true;
end
--抬起
local function OnUp(self, base_event)
	self.isDrag = false;
	if Time.realtimeSinceStartup-self.initTime <0.15 then
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		UIManager:GetInstance():OpenWindow(UIWindowNames.UIChat)
	end

end
--拖拽
local function OnDrag(self, base_event)
	if self.isDrag and Time.realtimeSinceStartup-self.initTime>=0.15 then
		if Mathf.Abs(Input.mousePosition.x - self.initMousePos.x) > 20 or Mathf.Abs(Input.mousePosition.y - self.initMousePos.y) > 20 then
			--Logger.Log("拖拽~~~~~~~~")
			--self.chatBtn.gameObject:SetActive(false)
			self.btn.transform.localPosition =  Vector2.New((Input.mousePosition.x / Screen.width - 0.5) * self.canvasScreen.x,
					(Input.mousePosition.y / Screen.height - 0.5) * self.canvasScreen.y,0)
		end
	end
end
--开始拖拽
local function OnBeginDrag(self, base_event)

end
--結束拖拽
local function OnEndDrag(self, base_event)
	self.isDrag = false

	if not self.isDrag then
		--self.chatBtn.gameObject:SetActive(true)
		local posX = self.btn.transform.localPosition.x
		local posY = self.btn.transform.localPosition.y
		local test_x=posX
		local test_y=posY
		if posX>self.canvasScreen.x/2-50 or posX<-self.canvasScreen.x/2+50 then
			test_x=posX>0 and self.canvasScreen.x/2-50 or  -self.canvasScreen.x/2+50
		end
		if posY>self.canvasScreen.y/2-70 or posY<-self.canvasScreen.y/2+70 then
			test_y=posY>0 and self.canvasScreen.y/2-70 or  -self.canvasScreen.y/2+70
		end
		self.btn.transform.localPosition = Vector3.New(test_x,test_y,0)
	end

end

local function OnPointClick(self, base_event)

end
--注册事件
local function RegesterAction(self, eventId, fun)
	local eventEntry = EventTrigger.Entry();
	eventEntry.eventID = eventId;
	eventEntry.callback:AddListener(Bind(self, fun));
	self.trigger.triggers:Add(eventEntry);
end



local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	local layer = UIManager:GetInstance():GetLayer(UILayers.InfoLayer.Name)
	self.canvasScreen = UIUtil.FindComponent(layer.transform, typeof(CS.UnityEngine.RectTransform)).sizeDelta
	self.btn = UIUtil.FindTrans(self.transform, "freeChatBtn");
	self.trigger = self.btn.gameObject:AddComponent(typeof(EventTrigger));
	RegesterAction(self, EventTriggerType.PointerDown, OnItemDown);
	RegesterAction(self, EventTriggerType.PointerUp, OnUp);
	RegesterAction(self, EventTriggerType.Drag, OnDrag);
	RegesterAction(self, EventTriggerType.BeginDrag, OnBeginDrag);
	RegesterAction(self, EventTriggerType.EndDrag, OnEndDrag);
	RegesterAction(self, EventTriggerType.PointerClick, OnPointClick);
--[[	self.chatBtn = self:AddComponent(UIButton,"freeChatBtn/Image")
	self.chatBtn:SetOnClick(function ()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		UIManager:GetInstance():OpenWindow(UIWindowNames.UIChat)
	end)]]
end

local function OnEnable(self)
	base.OnEnable(self)
	if  GuideGroup:GetInstance().Runing or GuideWeakGroup:GetInstance().Runing then
		self:SetBtnActive(false)
	end
	self:OnRefresh()
end

local function OnRefresh(self)
	-- 各组件刷新
	
end
local function SetBtnActive(self,_isActive)
	self.btn.gameObject:SetActive(_isActive)
end


local function OnAddListener(self)
	base.OnAddListener(self)
	-- UI消息注册
	self:AddUIListener(UIMessageNames.UI_CHAT_SHOW_ACTIVE, SetBtnActive)
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- UI消息注销
	self:RemoveUIListener(UIMessageNames.UI_CHAT_SHOW_ACTIVE, SetBtnActive)
end

local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)
end

UIOpenChatView.OnCreate = OnCreate
UIOpenChatView.OnEnable = OnEnable
UIOpenChatView.OnRefresh = OnRefresh
UIOpenChatView.OnAddListener = OnAddListener
UIOpenChatView.OnRemoveListener = OnRemoveListener
UIOpenChatView.OnDestroy = OnDestroy
UIOpenChatView.SetBtnActive=SetBtnActive
return UIOpenChatView

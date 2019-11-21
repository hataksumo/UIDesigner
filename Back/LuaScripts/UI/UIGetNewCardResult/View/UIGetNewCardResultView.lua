
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIGetNewCardResultView = BaseClass("UIGetNewCardResultView", UIBaseView)
local base = UIBaseView
local GetNewCardResultItem = require "UI.UIGetNewCardResult.Component.GetNewCardResultItem"
local prefabPath = "UI/Prefabs/Other/ka.prefab"
local getNewCardType = 0
local showCardNum = 0


--获取是否可以抽卡
local function GetCanDrawCard(self,type)
	local curPoolXlsxData=DataUtil.GetData("card_draw_option");
	for i, v in ipairs(curPoolXlsxData) do
		if v.ID==self.model.poolId then
			local costItem=v.Cost;
			local costItemId=costItem.ID;
			local coefficient=type==1 and 1 or 10;
			local costItemNum=costItem.Val*coefficient;
			local haveNum=BackpackData:GetInstance():GetItemNumById(costItemId);
			if haveNum>=costItemNum then
				return true
			else
				--新手抽卡没有代币购买操作，直接不能点击
				if self.model.poolId==4 then

				else
					UIManager:GetInstance():OpenWindow(UIWindowNames.UIGetNewCardBuyItemTip,self.model.poolId,type);
				end
			end
		end
	end
end


local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.oneTimesPanel = UIUtil.FindTrans(self.transform,"OneTimesLayout")
	self.tenTimesPanel = UIUtil.FindTrans(self.transform,"TenTimesLayout")
	self.btnObj = UIUtil.FindTrans(self.transform,"ParentLayout")
	self.ticketObj=UIUtil.FindTrans(self.transform,"ParentLayout/TicketObj");
	self.ticketIcon = self:AddComponent(UIImage,"ParentLayout/TicketObj/TicketImg",AtlasConfig.DynamicTex)
	self.ticketNum = self:AddComponent(UIText,"ParentLayout/TicketObj/TicketNumText")
	self.closeBtn = self:AddComponent(UIButton,"ParentLayout/BtnExit")
	self.closeBtn:SetOnClick(function ()
		UIManager:GetInstance():Broadcast(UIMessageNames.UI_RESET_GET_NEW_CARD_STATE)
		DataManager:GetInstance():Broadcast(DataMessageNames.ON_CARD_COST_ITEM_UPDATE_ClOSE)
		self.ctrl:CloseSelf()
	end)
	self.againImage=self:AddComponent(UIImage,"ParentLayout/AgainBtn")
	self.gray=self.againImage:GetMat()
	self.againBtn = self:AddComponent(UIButton,"ParentLayout/AgainBtn")
	self.againBtn:SetOnClick(function ()
		if GetCanDrawCard(self,getNewCardType) then
			UIManager:GetInstance():Broadcast(UIMessageNames.UI_RESET_GET_NEW_CARD_STATE)
			UIManager:GetInstance():Broadcast(UIMessageNames.UI_AGAIN_GET_NEW_CARD,getNewCardType)
			self.ctrl:CloseSelf()
		end
	end)
	self.againText = self:AddComponent(UIText,"ParentLayout/AgainBtn/AgainText")
	self.enterBtn = self:AddComponent(UIButton,"ParentLayout/CertainBtn")
	self.enterBtn:SetOnClick(function ()
		UIManager:GetInstance():Broadcast(UIMessageNames.UI_RESET_GET_NEW_CARD_STATE)
		DataManager:GetInstance():Broadcast(DataMessageNames.ON_CARD_COST_ITEM_UPDATE_ClOSE)
		self.ctrl:CloseSelf()
	end)
	self.shareBtn = self:AddComponent(UIButton,"ParentLayout/shareBtn")
	self.shareBtn:SetOnClick(function ()

	end)
	self.tipText = self:AddComponent(UIText,"ParentLayout/tipText")
	self.tipText:SetText("")
	self.tipClickText= self:AddComponent(UIText,"tipClickText")
	self.tipClickText:SetText("")
	local oneCardTrans = UIUtil.FindTrans(self.transform,"OneTimesLayout/Card")
	self.oneCardObj = GetNewCardResultItem.New(self,oneCardTrans.gameObject)
	self.oneCardObj:OnCreate()
	self.tenCardList={}
	self.cardLayout=self:AddComponent(UIBaseContainer,"TenTimesLayout/CardLayout")
	local cardCount=self.cardLayout.transform.childCount
	for i = 0, cardCount-1 do
		local singleCardTrans=self.cardLayout.transform:GetChild(i)
		local singleCard=GetNewCardResultItem.New(self,singleCardTrans.gameObject)
		singleCard:OnCreate()
		table.insert(self.tenCardList,singleCard)
	end
	self.TitleBar=UIUtil.FindTrans(self.transform,"ParentLayout/TopLeft")
	UIUtil.CreatCloseBtnComponent(self,self.TitleBar.transform,function(go) self.closeComponent=go end,function()
		DataManager:GetInstance():Broadcast(DataMessageNames.ON_CARD_COST_ITEM_UPDATE_ClOSE)
		UIManager:GetInstance():Broadcast(UIMessageNames.UI_RESET_GET_NEW_CARD_STATE)
		self.ctrl:CloseSelf()
	end,function ()
		TimerManager:GetInstance():SimpleTimerArgs(0.5,function()
			UIManager:GetInstance():Broadcast(UIMessageNames.UI_RESET_GET_NEW_CARD_STATE)
			UIManager:GetInstance():Broadcast(UIMessageNames.UI_BACK_MAIN_GET_NEW_CARD_STATE)
			UIUtil.BackHomeMain()
		end,nil,true)
	end ,"",false,0,true)

	self.jumpAnimImg = UIUtil.FindTrans(self.transform,"ParentLayout/jumpAnim/jumpAnimImg")
	self.jumpAnimBtn = self:AddComponent(UIButton,"ParentLayout/jumpAnim")
    self.jumpAnimText = self:AddComponent(UIText,"ParentLayout/jumpAnim/jumpAnimText")
    self.jumpAnimText:SetText(DataUtil.GetClientText(100208))
	self.jumpAnimBtn:SetOnClick(function ()
		self.isJumpId = CS.UnityEngine.PlayerPrefs.GetInt(ClientData:GetInstance().user_id.."jump")
		if self.isJumpId ~= nil and self.isJumpId == 1 then
			CS.UnityEngine.PlayerPrefs.SetInt(ClientData:GetInstance().user_id.."jump", 0)
			self.jumpAnimImg.gameObject:SetActive(false)
		else
			CS.UnityEngine.PlayerPrefs.SetInt(ClientData:GetInstance().user_id.."jump", 1)
			self.jumpAnimImg.gameObject:SetActive(true)
		end
		UIManager:GetInstance():Broadcast(UIMessageNames.UI_GET_NEW_CARD_IMG_STATE)
	end)
	self.jumpRotationImg = UIUtil.FindTrans(self.transform,"ParentLayout/jumpRotation/jumpRotationImg")
	self.jumpRotationBtn = self:AddComponent(UIButton,"ParentLayout/jumpRotation")
    self.jumpRotationText = self:AddComponent(UIText,"ParentLayout/jumpRotation/jumpRotationText")
    self.jumpRotationText:SetText(DataUtil.GetClientText(100209))
	self.jumpRotationBtn:SetOnClick(function ()
		self.isRotation = CS.UnityEngine.PlayerPrefs.GetInt(ClientData:GetInstance().user_id.."rotate")
		if self.isRotation ~= nil and self.isRotation == 1 then
			CS.UnityEngine.PlayerPrefs.SetInt(ClientData:GetInstance().user_id.."rotate", 0)
			self.jumpRotationImg.gameObject:SetActive(false)
		else
			CS.UnityEngine.PlayerPrefs.SetInt(ClientData:GetInstance().user_id.."rotate", 1)
			self.jumpRotationImg.gameObject:SetActive(true)
		end
		UIManager:GetInstance():Broadcast(UIMessageNames.UI_GET_NEW_CARD_IMG_STATE)
	end)
end

--回收物体
local function RecyleObj(self)
	if self.cardCam~=nil and not IsNull(self.cardCam.gameObject)  then
		CS.UnityEngine.Object.Destroy(self.cardCam.gameObject);
	end
	self.cardCam=nil
	if self.cardPrbList~=nil then
		for _, v in ipairs(self.cardPrbList) do
			if not IsNull(v.gameObj) then
				GameObjectPool:GetInstance():RecycleGameObject(v.pathName,v.gameObj)
			end
		end
	end
	self.cardPrbList=nil

end


--创建一个单独渲染卡牌的相机
local function CreatCardCamera(self)
	local GameObject= CS.UnityEngine.GameObject
	local uiCamObj= CS.UnityEngine.GameObject.Find("UICamera")
	if uiCamObj~=nil then
		local uiCam=uiCamObj:GetComponent(typeof(CS.UnityEngine.Camera))
		local camObj=GameObject("cardCam", typeof(CS.UnityEngine.Camera))
		self.cardCam = camObj:GetComponent(typeof(CS.UnityEngine.Camera))
		self.cardCam:CopyFrom(uiCam)
		self.cardCam.cullingMask=1<<4
		self.cardCam.depth=self.cardCam.depth + 1
	end
end

--设置卡牌相机的显示和隐藏
local function SetCardCamActive(self,boo)
	if  self.cardCam and not IsNull(self.cardCam.gameObject)  then
		self.cardCam.gameObject:SetActive(boo)
	end
end


--一抽界面显示
local function RefreshOneTimesGacha(self)
	getNewCardType = 1
	--self.ticketText:SetText(1);
	self.againText:SetText(DataUtil.GetClientText(100210))
	self.oneCardObj:Refresh(self.model.cardList[1],1)
end
--十抽界面显示
local function RefreshTenTimesGacha(self)
	getNewCardType = 2
	self.againText:SetText(DataUtil.GetClientText(100211))
	self.max_card_num = 0
	for i, v in ipairs(self.tenCardList) do
		if self.model.cardList[i]~=nil then
			v:Refresh(self.model.cardList[i],2)
			self.max_card_num = self.max_card_num + 1
		end
	end
end


local function OnRefreshLayout(self)
	self.btnObj.gameObject:SetActive(false)
	self.oneTimesPanel.gameObject:SetActive(table.length(self.model.cardList)==1)
	self.tenTimesPanel.gameObject:SetActive(table.length(self.model.cardList)~=1)
	if table.length(self.model.cardList)==1 then
		RefreshOneTimesGacha(self)
	else
		RefreshTenTimesGacha(self)
	end

end


local function OnEnable(self)
	self.isJumpId = CS.UnityEngine.PlayerPrefs.GetInt(ClientData:GetInstance().user_id.."jump")
	if self.isJumpId ~= nil and self.isJumpId == 1 then
		self.jumpAnimImg.gameObject:SetActive(true)
	else
		self.jumpAnimImg.gameObject:SetActive(false)
	end
	self.isRotation = CS.UnityEngine.PlayerPrefs.GetInt(ClientData:GetInstance().user_id.."rotate")
	if self.isRotation ~= nil and self.isRotation == 1 then
		self.jumpRotationImg.gameObject:SetActive(true)
	else
		self.jumpRotationImg.gameObject:SetActive(false)
	end
	CreatCardCamera(self)
	self.cardPrbList={}
	self:OnRefresh()
	self.getNewCardType = 0
	showCardNum = 0
	base.OnEnable(self)
	ResourceBarComponentManager:GetInstance():CreatResourceBarComponent(self.btnObj,UIWindowNames.UIGetNewCardResult,self.model.resourceId,self);
end

local function OnRefresh(self)
	-- 各组件刷新
	self.ticketIcon:SetSpriteName(self.model.ticketIcon)
	local haveNum=BackpackData:GetInstance():GetItemNumById(self.model.costItemId);
	self.ticketObj.transform.gameObject:SetActive(self.model.isShowAgainBtn);
	self.againBtn.transform.gameObject:SetActive(self.model.isShowAgainBtn);
	if haveNum>=self.model.costNum then
		self.ticketNum:SetText("<color=#FFFFFF>"..self.model.costNum.."</color>")
		self.againImage:SetMat(nil)
		--self.againBtn:SetInteractable(true)
	else
		self.ticketNum:SetText("<color=#FF0600>"..self.model.costNum.."</color>")
		self.againImage:SetMat(nil)
		--self.againBtn:SetInteractable(false)
	end
	OnRefreshLayout(self)
end

local function SetBtnShow(self)
	showCardNum = showCardNum + 1
	if getNewCardType == 1 then
		if showCardNum == 1 then
			if GuideGroup:GetInstance().Runing then
				self.btnObj.gameObject:SetActive(false)
			else
				self.btnObj.gameObject:SetActive(true)
			end

		else
			self.btnObj.gameObject:SetActive(false)
		end
	else
		if showCardNum == self.max_card_num then
			self.btnObj.gameObject:SetActive(true)
		else
			self.btnObj.gameObject:SetActive(false)
		end
	end
	--新手事件
	if GuideGroup:GetInstance().Runing or GuideWeakGroup:GetInstance().Runing  then
		DataManager:GetInstance():Broadcast(DataMessageNames.UI_Guide_NeedEvent)
	end
end

local function OpenShowCardWind(self,_cardId)
	self.openCardId = _cardId
	SetBtnShow(self)
	if UIManager:GetInstance():GetWindow(UIWindowNames.UICardShow,true,true) == nil then
		UIManager:GetInstance():OpenWindow(UIWindowNames.UICardShow,_cardId)
		UIManager:GetInstance():Broadcast(UIMessageNames.UIGACHA_SET_NIUDAN_CAM_ACTIVE,false)
	end

end

local function OnAddListener(self)
	base.OnAddListener(self)
	-- UI消息注册
	self:AddUIListener(UIMessageNames.UIGACHA_SET_NIUDAN_CAM_ACTIVE,SetCardCamActive)
	self:AddUIListener(UIMessageNames.UI_SHOW_CARD_RESULT_STATE,SetBtnShow)
	self:AddUIListener(UIMessageNames.UI_GET_NEW_CARD_SHOW_WIN,OpenShowCardWind)
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- UI消息注销
	self:RemoveUIListener(UIMessageNames.UIGACHA_SET_NIUDAN_CAM_ACTIVE,SetCardCamActive)
	self:RemoveUIListener(UIMessageNames.UI_SHOW_CARD_RESULT_STATE,SetBtnShow)
	self:RemoveUIListener(UIMessageNames.UI_GET_NEW_CARD_SHOW_WIN,OpenShowCardWind)
end


local function CreatCardObj(self,parentTrans,_type,callback)
	local danPath = prefabPath--string.format("%s%s.prefab",dan_path,self.niuDanPrbNameList[quality]);
	GameObjectPool:GetInstance():GetGameObjectAsync(danPath,function (go)
		if not IsNull(go) then
			table.insert(self.cardPrbList,{gameObj=go,pathName=danPath});
			go.transform:SetParent(parentTrans);
			go.transform.localPosition=Vector3.New(0,-130,40)
			if _type == 1 then
				go.transform.localScale=Vector3.New(3000,3000,3000)
			else
				go.transform.localScale=Vector3.New(2000,2000,2000)
			end
			go.transform.localEulerAngles=Vector3.New(0,0,0)
			if callback~=nil then
				callback(go);
			end
		end
	end)
end

local function OnDisable(self)
	base.OnDisable(self)
	RecyleObj(self)
	showCardNum = 0
	if self.oneCardObj~=nil then
		self.oneCardObj:OnDisable();
	end
	if self.tenCardList~=nil and #self.tenCardList>0 then
		for i, v in ipairs(self.tenCardList) do
			v:OnDisable();
		end
	end
	ResourceBarComponentManager:GetInstance():DestroyResourceBar(UIWindowNames.UIGetNewCardResult)
	--打开聊条聊天
	UIUtil.SetChatImgStatus(true)
end

local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)
	RecyleObj(self)
	showCardNum = 0
	if self.oneCardObj~=nil then
		self.oneCardObj:OnDestroy();
	end
	if self.tenCardList~=nil and #self.tenCardList>0 then
		for _, v in ipairs(self.tenCardList) do
			v:OnDestroy();
		end
	end
end

UIGetNewCardResultView.OnDisable = OnDisable
UIGetNewCardResultView.OnCreate = OnCreate
UIGetNewCardResultView.OnEnable = OnEnable
UIGetNewCardResultView.OnRefresh = OnRefresh
UIGetNewCardResultView.OnAddListener = OnAddListener
UIGetNewCardResultView.OnRemoveListener = OnRemoveListener
UIGetNewCardResultView.OnDestroy = OnDestroy
UIGetNewCardResultView.CreatCardObj = CreatCardObj

return UIGetNewCardResultView

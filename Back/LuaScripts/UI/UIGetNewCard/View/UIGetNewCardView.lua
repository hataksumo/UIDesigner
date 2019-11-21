
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIGetNewCardView = BaseClass("UIGetNewCardView", UIBaseView)
local base = UIBaseView
local ResourceBarComponentManager=require("UI.UIResourceBar.ResourceBarComponentManager");
local UIGetNewCardWrapItem = require "UI.UIGetNewCard.Component.UIGetNewCardWrapItem"

---关闭界面返回主城
local function CloseBtnClick(self)
	if SceneManager:GetInstance():DoseSceneIsSceneConfig(SceneConfig.HomeScene) then
		LJAudioManger:GetInstance():PlayMusic(LJAudioManger.MAIN_CITY_BG_MUSIC)
		self.slyBoxObj.gameObject:SetActive(false)
		self.cinemachine.Priority = 10
	end

	local mainSceneName=SceneManager:GetInstance():GetCurrentScene().scene_name
	if not string.isNilOrEmpty(mainSceneName) then
		SceneLoadManager:GetInstance():ConfigLitAndShadow(mainSceneName,Vector3.zero,Vector3.zero)
	end

	if SceneManager:GetInstance():DoseSceneIsSceneConfig(SceneConfig.NationScene) then
		local nationProxy = NationCtrlManager:GetInstance():GetCurrentNationProxy()
		if nationProxy ~= nil then
			nationProxy:ReCalcFogDistanceWithDefaultDistance()
		else
		end
		local windowComponent = NationSceneUIManager:GetInstance():GetUIWindowComponent(UIWindowNames.UINationMarchMain, true)
		if windowComponent ~= nil then
			windowComponent:BugFixModel3DWalk()
		end
	else
	end
end
--获取单个卡池数据
local function GetSinglePoolData(self,_id)
	for i, v in ipairs(self.model.cardPool) do
		if v.xlsxData.ID==_id then
			return v;
		end
	end
	return nil;
end
--获取是否可以抽卡
local function GetCanDrawCard(self,type)
	local costItem=GetSinglePoolData(self,self.model.curSelectPoolId).xlsxData.Cost;
	local costItemId=costItem.ID;
	local coefficient=type==1 and 1 or 10;
	local costItemNum=costItem.Val*coefficient;
	local haveNum=BackpackData:GetInstance():GetItemNumById(costItemId);

	if haveNum>=costItemNum then
		return true
	else
		--新手抽卡没有代币购买操作，直接不能点击
		if self.model.curSelectPoolId==4 then

		else
			UIManager:GetInstance():OpenWindow(UIWindowNames.UIGetNewCardBuyItemTip,self.model.curSelectPoolId,type);
		end

	end
end

local function OnPosBtnClick(self)
	local curPos=self.bgObj.anchoredPosition3D
	local targetPos=self.btnState==1 and  Vector3.New(curPos.x - (self.bgObj.sizeDelta.x),curPos.y,curPos.z) or  Vector3.New(curPos.x +  (self.bgObj.sizeDelta.x),curPos.y,curPos.z);
	if self.anim == nil then
		self.anim = LuaTweener.UIMoveTo(self.bgObj,curPos,targetPos,self.intervalTime,EaseFormula.OutQuad,function ()
			self.anim = nil
			if self.btnState==1 then
				self.posBtn.transform.rotation= Vector3.New(0,0,180)
			else
				self.posBtn.transform.rotation= Vector3.New(0,0,0)
			end
		end)
	else
		self.anim = nil
	end
	self.btnState=1-self.btnState
end

local function SendLottery(self)
	self.isJumpId = CS.UnityEngine.PlayerPrefs.GetInt(ClientData:GetInstance().user_id.."jump")
	if self.isJumpId == nil or self.isJumpId ~= 1 then
		self:SetAllEffectAndAnim(true)
	end
	self.concentObj.gameObject:SetActive(false)
end


local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.normalTipText=self:AddComponent(UIText,"concent/tipObj/tipText");
	self.TitleBar=UIUtil.FindTrans(self.transform,"concent/TopLeft")
	UIUtil.CreatCloseBtnComponent(self,self.TitleBar.transform,function(go) self.closeComponent=go
		if self.model.cardPool~=nil then
			self.closeComponent:SetTitleData(GetSinglePoolData(self,self.model.curSelectPoolId).xlsxData.DrawName);
		end
		end,function()
		CloseBtnClick(self)
		self.ctrl:CloseSelf()
	end,function ()
		TimerManager:GetInstance():SimpleTimerArgs(0.5,function()
			CloseBtnClick(self)
			UIUtil.BackHomeMain()
		end,nil,true)
	end ,DataUtil.GetClientText(100205),true,3,true);

	self.wrap_group = self:AddComponent(UIWrapGroup3D,"concent/centerPanel/parentObj/scrollRectObj/gridObj",UIGetNewCardWrapItem)
	self.onceBtn = self:AddComponent(UIButton,"concent/onceBtn")
	self.onceBtn:SetOnClick(function ()
		if(GetCanDrawCard(self,1)) then
			self.ctrl:BeginDrawCard(self.model.curSelectPoolId,1,function ()
				SendLottery(self)
			end)
		else
			--UIManager:GetInstance():OpenWindow(UIWindowNames.UIShopBuyItem,self.model.gem_id);
		end
	end)
	self.onceText = self:AddComponent(UIText,"concent/onceBtn/name1")
	self.onceText:SetText(DataUtil.GetClientText(100206))
	self.onceNumText = self:AddComponent(UIText,"concent/onceBtn/costparent/oncecostNum")
	self.onceIconImg = self:AddComponent(UIImage,"concent/onceBtn/costparent/oncecostIcon",AtlasConfig.DynamicTex)
	self.tenBtn = self:AddComponent(UIButton,"concent/tenBtn")
	self.tenBtn:SetOnClick(function ()
		if(GetCanDrawCard(self,2)) then
			self.ctrl:BeginDrawCard(self.model.curSelectPoolId,2,function ()
				SendLottery(self)
			end)
		else
			--UIManager:GetInstance():OpenWindow(UIWindowNames.UIShopBuyItem,self.model.gem_id);
		end
	end)
	self.tenNumText = self:AddComponent(UIText,"concent/tenBtn/costparent/tencostNum")
	self.tenText = self:AddComponent(UIText,"concent/tenBtn/name2")
	self.tenText:SetText(DataUtil.GetClientText(100207))
	self.tenIconImg = self:AddComponent(UIImage,"concent/tenBtn/costparent/tencostIcon",AtlasConfig.DynamicTex)
	self.grayImg1 = self:AddComponent(UIImage,"concent/onceBtn")
	self.grayImg2 = self:AddComponent(UIImage,"concent/tenBtn")
	self.gray = self.grayImg1:GetMat()
	self.concentObj = UIUtil.FindTrans(self.transform,"concent")

	self.bgObj = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.RectTransform),"concent/centerPanel/parentObj")
	self.btnState = 1
	self.intervalTime=0.5
	self.posBtn=self:AddComponent(UIButton,"concent/centerPanel/parentObj/psoBtn")
	self.posBtn:SetOnClick(Bind(self,OnPosBtnClick))
	---资源条、
	self.resourceBarParent=UIUtil.FindTrans(self.transform,"concent/resourceBarParent")
	ResourceBarComponentManager:GetInstance():CreatResourceBarComponent(self.resourceBarParent,UIWindowNames.UIGetNewCard,ResourceBarType.MAIN_CITY,self);
	self.jumpAnimImg = UIUtil.FindTrans(self.transform,"concent/jumpAnim/jumpAnimImg")
	self.jumpAnimText = self:AddComponent(UIText,"concent/jumpAnim/jumpAnimText")
	self.jumpAnimText:SetText(DataUtil.GetClientText(100208))
	self.jumpAnimBtn = self:AddComponent(UIButton,"concent/jumpAnim")
	self.jumpAnimBtn:SetOnClick(function ()
		self.isJumpId = CS.UnityEngine.PlayerPrefs.GetInt(ClientData:GetInstance().user_id.."jump")
		if self.isJumpId ~= nil and self.isJumpId == 1 then
			CS.UnityEngine.PlayerPrefs.SetInt(ClientData:GetInstance().user_id.."jump", 0)
			self.jumpAnimImg.gameObject:SetActive(false)
		else
			CS.UnityEngine.PlayerPrefs.SetInt(ClientData:GetInstance().user_id.."jump", 1)
			self.jumpAnimImg.gameObject:SetActive(true)
		end
	end)
	self.jumpRotationImg = UIUtil.FindTrans(self.transform,"concent/jumpRotation/jumpRotationImg")
	self.jumpRotationText = self:AddComponent(UIText,"concent/jumpRotation/jumpRotationText")
	self.jumpRotationText:SetText(DataUtil.GetClientText(100209))
	self.jumpRotationBtn = self:AddComponent(UIButton,"concent/jumpRotation")
	self.jumpRotationBtn:SetOnClick(function ()
		self.isRotation = CS.UnityEngine.PlayerPrefs.GetInt(ClientData:GetInstance().user_id.."rotate")
		if self.isRotation ~= nil and self.isRotation == 1 then
			CS.UnityEngine.PlayerPrefs.SetInt(ClientData:GetInstance().user_id.."rotate", 0)
			self.jumpRotationImg.gameObject:SetActive(false)
		else
			CS.UnityEngine.PlayerPrefs.SetInt(ClientData:GetInstance().user_id.."rotate", 1)
			self.jumpRotationImg.gameObject:SetActive(true)
		end
	end)
end



local function SetCost(self)
	if self.closeComponent~=nil then
		self.closeComponent:SetTitleData(GetSinglePoolData(self,self.model.curSelectPoolId).xlsxData.DrawName);
	end
	local limitPoint=GetSinglePoolData(self,self.model.curSelectPoolId).xlsxData.LuckyPointLimit;
	local curPoint=GetSinglePoolData(self,self.model.curSelectPoolId).val;
	if limitPoint-10<=curPoint then
		self.normalTipText:SetText(GetSinglePoolData(self,self.model.curSelectPoolId).xlsxData.LuckyPointFullDesc);
	else
		self.normalTipText:SetText(GetSinglePoolData(self,self.model.curSelectPoolId).xlsxData.LuckyPointDesc);
	end

	local resrourceId= GetSinglePoolData(self,self.model.curSelectPoolId).xlsxData.ResBarId1;
	ResourceBarComponentManager:GetInstance():RebindResourceBar(UIWindowNames.UIGetNewCard,resrourceId,self);
	if tonumber(self.model.gem) >= tonumber(self.model.takeOnceNum) then
		self.grayImg1:SetMat(nil)
		self.onceBtn.enabled = true
		self.onceNumText:SetText("<color=#FFFFFF>"..math.floor(self.model.takeOnceNum).."</color>")
	else
		if self.model.curSelectPoolId~=4 then
			self.grayImg1:SetMat(nil)
		else
			self.grayImg1:SetMat(self.gray)
		end
		self.onceBtn.enabled = false
		self.onceNumText:SetText("<color=#FF0600>"..math.floor(self.model.takeOnceNum).."</color>")
	end
	if tonumber(self.model.gem) >= tonumber(self.model.takeTenNum) then
		self.grayImg2:SetMat(nil)
		self.tenBtn.enabled = true
		self.tenNumText:SetText("<color=#FFFFFF>"..math.floor(self.model.takeTenNum).."</color>")
	else
		if self.model.curSelectPoolId~=4 then
			self.grayImg2:SetMat(nil)
		else
			self.grayImg2:SetMat(self.gray)
		end
		self.tenBtn.enabled = false
		self.tenNumText:SetText("<color=#FF0600>"..math.floor(self.model.takeTenNum).."</color>")
	end
	self.onceIconImg:SetSpriteName(self.model.takeOnceIcon)
	self.tenIconImg:SetSpriteName(self.model.takeTenIcon)
end

local function SetData(self)
	if self.model.cardPool~=nil then
		SetCost(self)
		self.cardList = self.model.cardPool
		self.wrap_group:SetLength(table.count(self.cardList))
		self.wrap_group:ResetToBeginning()
	end
end

local function GetImgShowState(self)
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
end

local function OnEnable(self)
	base.OnEnable(self)
	GetImgShowState(self)
	self.concentObj.gameObject:SetActive(false)
	SetData(self)
	if self.slyBoxObj ~= nil then
		self.slyBoxObj.gameObject:SetActive(true)
	end
	self:OnRefresh()
end



---設置場景的動畫和特效
local function SetAllEffectAndAnim(self,isOpen)
	self.beginEffectObj.gameObject:SetActive(isOpen)
	if isOpen then
		self.mapTimeLine:Stop()
		self.mapTimeLine:Play()
		self.beginTimeLine:Stop()
		self.beginTimeLine:Play()
	end
end


--加载场景
local function CoLoadScene(self)
	if
		string.isNilOrEmpty(self.sceneDataPath)
		or SceneLoadManager:GetInstance():GetSceneIndex(self.sceneDataPath) < 0
	then
		self.sceneDataPath="Art/Scenes/scene_Map_SendTheSpirit/scene_Map_SendTheSpirit/Map_SendTheSpirit_sceneData.asset";
		local function ProgressCallback(co, progress)
			return coroutine.yieldcallback(co,  progress )
		end
		SceneLoadManager:GetInstance():CoGenerateScene(self.sceneDataPath,ProgressCallback,true)
		if IsNull(self.camObj) then
			self.camObj=CS.UnityEngine.GameObject("luckCam",typeof(CS.Cinemachine.CinemachineVirtualCamera))
			local rootObj= SceneLoadManager:GetInstance():FindSceneRoot(self.sceneDataPath);
			if not IsNull(rootObj) then
				self.camParent=UIUtil.FindTrans(rootObj.transform,"Environment");
				self.camObj.transform:SetParent(self.camParent);
				self.cinemachine=UIUtil.FindComponent(self.camObj,typeof(CS.Cinemachine.CinemachineVirtualCamera),"")
				self.cinemachine.Priority = 60
				self.concentObj.gameObject:SetActive(true)
				SceneLoadManager:GetInstance():ConfigBattleCam(self.cinemachine,Vector3.New(0,-0.27,-8.37),Vector3.New(-16.315,0,0),60,Vector3.New(0,0,0));
				SceneLoadManager:GetInstance():ConfigLitAndShadow(self.sceneDataPath)
				self.camInitPos=self.camObj.transform.position;
				self.mapObj = UIUtil.FindTrans(rootObj.transform,"Environment/Map_SendTheSpirit")
				self.beginObj = UIUtil.FindTrans(rootObj.transform,"Environment/BeginningTheShow/FX_Scene_Extract_timeline")
				self.treeObj = UIUtil.FindTrans(rootObj.transform,"Environment/Map_SendTheSpirit/Map_SendTheSpirit_tree")
				self.mapTimeLine =self.mapObj:GetComponent(typeof(CS.UnityEngine.Playables.PlayableDirector))
				self.mapTimeLine.playOnAwake = false
				self.mapTimeLine:Stop()
				self.beginTimeLine = self.beginObj:GetComponent(typeof(CS.UnityEngine.Playables.PlayableDirector))
				self.beginTimeLine.playOnAwake = false
				self.beginTimeLine:Stop()
				self.beginEffectObj =UIUtil.FindTrans(rootObj.transform,"Environment/BeginningTheShow")
				self.slyBoxObj = UIUtil.FindTrans(rootObj.transform,"Environment/Map_SendTheSpirit/Map_STS_sky_cc")
				self.slyBoxObj.gameObject:SetActive(true)
				self.groundObj = UIUtil.FindTrans(rootObj.transform,"Environment/Map_SendTheSpirit/Map_SendTheSpirit_caodi/dimian")
				---綁定主相機
				local cam_game = CS.UnityEngine.Camera.main.gameObject
				self.cam_brain = cam_game:GetComponent(typeof(CS.Cinemachine.CinemachineBrain))
				CS.LJ_TimelineExtension.PlayableDirectorBindingHelper.BindingGacCamera(self.beginTimeLine,self.cam_brain)
				self:SetAllEffectAndAnim(false)
			end
		end
	end
	return coroutine.yieldbreak();
end

local function OnRefresh(self)
	-- 各组件刷新
	if not IsNull(self.camObj) then
		self.cinemachine.Priority = 60
		self.concentObj.gameObject:SetActive(true)
		SceneLoadManager:GetInstance():ConfigBattleCam(self.cinemachine,Vector3.New(0,-0.27,-8.37),Vector3.New(-16.315,0,0),60,Vector3.New(0,0,0));
		SceneLoadManager:GetInstance():ConfigLitAndShadow(self.sceneDataPath)
	else
		coroutine.start(CoLoadScene,self);
	end
end

local function UpdateSelect(self,_resetBegin)
	self.cardList = self.model.cardPool
	self.wrap_group:SetLength(table.count(self.cardList))
	if _resetBegin then
		self.wrap_group:ResetToBeginning()
	end
	self.wrap_group:WrapContent(true)
	SetCost(self)
end

local function ResetTimeLines(self)
	self.mapTimeLine:Stop()
	self.beginTimeLine:Stop()
    self.slyBoxObj.gameObject:SetActive(false)
    self.slyBoxObj.gameObject:SetActive(true)
	self.groundObj.gameObject:SetActive(true)
	self.concentObj.gameObject:SetActive(true)
	self.beginEffectObj.gameObject:SetActive(false)
	self.treeObj.gameObject:SetActive(false)
	self.treeObj.gameObject:SetActive(true)

end

--1单抽 2十抽
local function SendAgainGetNewCard(self,_type,isJumpCheck)
	if isJumpCheck then
		self.ctrl:BeginDrawCard(self.model.curSelectPoolId,_type,function ()
			SendLottery(self)
		end)
	else
		if(GetCanDrawCard(self,_type)) then
			self.ctrl:BeginDrawCard(self.model.curSelectPoolId,_type,function ()
				SendLottery(self)
			end)
		end
	end
end

--刷新抽卡列表
local function RefreshDrawList(self)
	UpdateSelect(self);
end

local function OnAddListener(self)
	base.OnAddListener(self)
	-- UI消息注册
	self:AddUIListener(UIMessageNames.UI_CARD_POOL_SELECT_CARD_POOL, UpdateSelect)
	self:AddUIListener(UIMessageNames.UI_RESET_GET_NEW_CARD_STATE, ResetTimeLines)
	self:AddUIListener(UIMessageNames.UI_AGAIN_GET_NEW_CARD,SendAgainGetNewCard)
	self:AddUIListener(UIMessageNames.UI_BACK_MAIN_GET_NEW_CARD_STATE,CloseBtnClick)
	self:AddUIListener(UIMessageNames.UI_GET_NEW_CARD_IMG_STATE,GetImgShowState)
	self:AddUIListener(UIMessageNames.UI_GET_NEW_CARD_REFRESH,RefreshDrawList)
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- UI消息注销
	self:RemoveUIListener(UIMessageNames.UI_CARD_POOL_SELECT_CARD_POOL, UpdateSelect)
	self:RemoveUIListener(UIMessageNames.UI_RESET_GET_NEW_CARD_STATE, ResetTimeLines)
	self:RemoveUIListener(UIMessageNames.UI_AGAIN_GET_NEW_CARD,SendAgainGetNewCard)
	self:RemoveUIListener(UIMessageNames.UI_BACK_MAIN_GET_NEW_CARD_STATE,CloseBtnClick)
	self:RemoveUIListener(UIMessageNames.UI_GET_NEW_CARD_IMG_STATE,GetImgShowState)
	self:RemoveUIListener(UIMessageNames.UI_GET_NEW_CARD_REFRESH,RefreshDrawList)
end

local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)
	ResourceBarComponentManager:GetInstance():DestroyResourceBar(UIWindowNames.UIGetNewCard)
	if self.closeComponent~=nil or not IsNull(self.closeComponent) then
		self.closeComponent:RecyleSelf()
	end
end

UIGetNewCardView.OnCreate = OnCreate
UIGetNewCardView.OnEnable = OnEnable
UIGetNewCardView.OnRefresh = OnRefresh
UIGetNewCardView.OnAddListener = OnAddListener
UIGetNewCardView.OnRemoveListener = OnRemoveListener
UIGetNewCardView.OnDestroy = OnDestroy
UIGetNewCardView.SetAllEffectAndAnim = SetAllEffectAndAnim

return UIGetNewCardView

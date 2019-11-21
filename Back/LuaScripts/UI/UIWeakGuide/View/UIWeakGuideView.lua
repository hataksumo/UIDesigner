
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIWeakGuideView = BaseClass("UIWeakGuideView", UIBaseView)
local base = UIBaseView
--提示对话框
local BattleDialogTip = "UI/Prefabs/Other/BattleDialogTip.prefab"
local UIBattleDialogTip = require "UI.UIBattle.Component.UIBattleDialogTip"
local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	local rectTrans=UIUtil.FindComponent(CS.UnityEngine.GameObject.Find("UIRoot/TipLayer").transform,typeof(CS.UnityEngine.RectTransform))
	self.sceen_width =rectTrans.sizeDelta.x
	self.sceen_height = rectTrans.sizeDelta.y

	self.talk_bg =UIUtil.FindTrans(self.transform,"Image")
	self.contentUIText1 = self:AddComponent(UIText, "Image/Content_UIText1")
	self.talk_spr=self:AddComponent(UIImage,"Image/HeadFrame/Head",AtlasConfig.DynamicTex)
	self.left_btn=self:AddComponent(UIButton,"Image/leftbtn")
	self.right_btn=self:AddComponent(UIButton,"Image/rightbtn")
	self.center_btn=self:AddComponent(UIButton,"Image/centerbtn")
	self.click_bg=UIUtil.FindTrans(self.transform,"ImageGuide").gameObject
	self.click_bg_img=self:AddComponent(UIImage,"ImageGuide")
	self.BgBtn={self.TopBgBtn,self.LeftBgBtn,self.ButtoBgBtn,self.RightBtn}
	self.shadow_bg=UIUtil.FindTrans(self.transform,"BG").gameObject
	self.TopBgBtn=self:AddComponent(UIButton,"BG/TopImg")
	self.LeftBgBtn=self:AddComponent(UIButton,"BG/LeftImg")
	self.ButtoBgBtn=self:AddComponent(UIButton,"BG/ButtoImg")
	self.RightBtn=self:AddComponent(UIButton,"BG/RightImg")
	self.BgBtn={self.TopBgBtn,self.LeftBgBtn,self.ButtoBgBtn,self.RightBtn}
	for i = 1, #self.BgBtn do
		self.BgBtn[i]:SetOnClick(function ()
			for i = 1, #self.BgBtn do
				if self.CanBlack then
					self.FadeBG={}
					self.FadeBG[i] = LuaTweener.UIFadeTo(self.BgImg[i],0,0.8,0.5,EaseFormula.OutQuad,function ()
						self.FadeBG[i]=nil
					end)
				end
			end
			self.CanBlack=false
		end)
	end
	self.TopBgImg=self:AddComponent(UIImage,"BG/TopImg")
	self.LeftBgImg=self:AddComponent(UIImage,"BG/LeftImg")
	self.ButtoBgImg=self:AddComponent(UIImage,"BG/ButtoImg")
	self.RightImg=self:AddComponent(UIImage,"BG/RightImg")
	self.BgImg={self.TopBgImg,self.ButtoBgImg,self.LeftBgImg,self.RightImg}

	self.click_figerRect=UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.RectTransform),"ef_ui_start_Yindao");

	self.tip_ani=UIUtil.FindTrans(self.transform,"TipsObj")
	self.tx=UIUtil.FindTrans(self.transform,"ef_ui_start_Yindao")
	self.txhand=UIUtil.FindTrans(self.transform,"ef_ui_start_Yindao/hand")
	self.tx1=UIUtil.FindTrans(self.transform,"ef_ui_start_Yindao/ring").gameObject;
	self.tx2=UIUtil.FindTrans(self.transform,"ef_ui_start_Yindao/glow").gameObject;
	self.txAni= self.txhand:GetComponent(typeof(CS.UnityEngine.Animator))
	self.click_boxRect=UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.RectTransform),"Box");
	self.pre=UIUtil.FindTrans(self.transform,"pre_clone")
	self.click_box =  self:AddComponent(UIButton,"Box")

	self.click_box :SetOnClick(function ()
		--下一步？ 点击事件触发
		if self.GuideDataItem.ClickTag==1 then
			local pointer=CS.UnityEngine.EventSystems.PointerEventData(CS.UnityEngine.EventSystems.EventSystem.current)
			local IPointerClickHandler=CS.UnityEngine.EventSystems.IPointerClickHandler;

			self.clickHandler = UIUtil.FindComponent(self.mTarget.transform,typeof(IPointerClickHandler))
			if self.clickHandler ~= nil then
				if not self.GuideDataItem.OverEvent and not self.GuideDataItem.ClickNotNext  then
						self:NextStep ()
				end
				self.clickHandler:OnPointerClick(pointer);


				self.clickHandler:OnPointerDown(pointer);
				self.clickHandler:OnPointerUp(pointer);

			else
				Logger.LogError("点击事件Is Nil")
			end
		elseif self.GuideDataItem.ClickTag==2 then
			--事件写这里
			--主城事件
			UIManager:GetInstance():Broadcast(UIMessageNames.ON_3DOBJ_CLICK_FUN,self.GuideDataItem.ClickEvent,self.GuideDataItem.ClickEventParas);
		else

		end
	end)
	self.CurLayer=600
end
local function FigerAniRepeat(self)
	self.tx1.gameObject:SetActive(true);
	self.tx2.gameObject:SetActive(true);
	self.txAni.enabled=true
end
local function Update(self)
	if  not self.GuideDataItem.SetSon and self.GuideDataItem.HandleType<100 and  CS.UnityEngine.Input.GetMouseButtonDown(0) then
		GuideWeakGroup:GetInstance():SetGuideOver()
		--[[
		local point=CS.UnityEngine.EventSystems.PointerEventData(CS.UnityEngine.EventSystems.EventSystem.current)
		point.position=CS.UnityEngine.Input.mousePostion
		local results={}
		CS.UnityEngine.EventSystems.current.RaycastAll(point,results)
		local res_num=#results
		for i = 1, res_num do
		end
		-]]
		--如果有点击直接关闭界面 还是通知检查放别检查了？
	end
end
--获得点击目标
local function GetObj(self,path)
	local objpath
	if path then
		objpath=path
	else
		if self.GuideDataItem.ClickIsSkill then
			objpath=self:GetWeakSkillClickPath( tonumber(self.GuideDataItem.TargetPath))
		else
			if self.GuideDataItem.TargetId ~= nil then
				local cardView = UIManager:GetInstance():GetWindow(self.GuideDataItem.TargetView).View
				local index = cardView:GetGuidePosById(self.GuideDataItem.TargetId)
				objpath = string.format(self.GuideDataItem.TargetPath,index)
			else
				objpath= self.GuideDataItem.TargetPath
			end
		end
	end

	local targetGame = CS.UnityEngine.GameObject.Find(objpath)
	if targetGame == nil then
		Logger.LogError("路径问题".."--"..objpath)
		GuideManager:GetInstance():SetGuideOver()
		return
	end
	self.mTarget = targetGame.gameObject
	if not self.mTarget.gameObject.activeInHierarchy then
		Logger.Log("目标关闭".."--"..objpath)
	end
	--只要路径不是空的就有点击Box
	if self.GuideDataItem.HandleType == 100 then
		if self.GuideDataItem.TargetPath==nil or #self.GuideDataItem.TargetPath==0 then
		 self.tx.gameObject:SetActive(false)
		 self.click_box.gameObject:SetActive(false)
		else
		 self.click_box.gameObject:SetActive(true)
		end
	end

end
local function OnEnable(self)
	base.OnEnable(self)
	self:SetGuide()
	self:OnRefresh()
end
local function SetFourBG(self,pos,size)
	--设置后边4个梦黑
	self.shadow_bg:SetActive(true)
	self.BgImg[1].rectTransform.anchoredPosition=Vector3.zero
	self.BgImg[2].rectTransform.anchoredPosition=Vector3.zero
	self.BgImg[3].rectTransform.anchoredPosition=Vector3.New(0,pos.y,0)
	self.BgImg[4].rectTransform.anchoredPosition=Vector3.New(0,pos.y,0)
	self.BgImg[1].rectTransform.sizeDelta=Vector2.New(self.sceen_width,self.sceen_height/2-pos.y-size.y/2)
	self.BgImg[2].rectTransform.sizeDelta=Vector2.New(self.sceen_width,self.sceen_height/2+pos.y-size.y/2)
	self.BgImg[3].rectTransform.sizeDelta=Vector2.New(self.sceen_width/2+pos.x-size.x/2,size.y)
	self.BgImg[4].rectTransform.sizeDelta=Vector2.New(self.sceen_width/2-pos.x-size.x/2,size.y)

end
local function GetUIPos(self,pos,Name)
	local layer =  UIManager:GetInstance():GetLayer(UILayers.TipLayer.Name)
	if Name then
		layer = UIManager:GetInstance():GetLayer(Name)
	end
	self.size_delta =  UIUtil.FindComponent(layer.transform,typeof(CS.UnityEngine.RectTransform)).sizeDelta
	if IsNull(self.cam) then
		self.cam=  CS.UnityEngine.Camera.main
		if IsNull(self.cam) then
			local cam_game  = CS.UnityEngine.GameObject.FindGameObjectWithTag("GameMain")
			self.cam=cam_game:GetComponent(typeof(CS.UnityEngine.Camera))
		end
	end
	local lpos = nil
	if not IsNull(self.cam) then
		lpos = self.cam:WorldToViewportPoint(pos)
		lpos = Vector3.New((lpos.x - 0.5)*self.size_delta[0], (lpos.y - 0.5)*self.size_delta[1], 0)

	else
		lpos = Vector3.New(0,0,0)
	end
	return lpos
end
--获得UI之间的比例参数
local function GetBaseUIPID(self)
	local coe =0
	local NeedLayer=0
	if self.GuideDataItem.Layer==nil or #self.GuideDataItem.Layer==0 then
		Logger.LogError("点击事件没有Layer")
	else
		NeedLayer= UIManager:GetInstance():GetLayer(self.GuideDataItem.Layer).PlaneDistance
		if self.GuideDataItem.Layer=="BackgroudLayer" then
			NeedLayer=900
		elseif self.GuideDataItem.Layer=="NormalLayer" then
			NeedLayer=800
		elseif self.GuideDataItem.Layer=="InfoLayer" then
			NeedLayer=700
		elseif self.GuideDataItem.Layer=="TipLayer" then
			NeedLayer=600
		elseif self.GuideDataItem.Layer=="TopLayer" then
			NeedLayer=500
		else
			Logger.LogError("Layer 类型没有"..self.GuideDataItem.Layer)
		end
	end
	local coe=self.CurLayer/NeedLayer
	return coe
end
local function SetClick(self)
	--点击 设置点击区域
	--local boxsize= self.mTarget:GetComponent(typeof(CS.UnityEngine.UI.Button))
	local box=self.mTarget.transform.sizeDelta
	if not box then
		Logger.LogError("Bug 选中Box Nil")
	end
	if self.GuideDataItem.BoxSizeX~=-1 and self.GuideDataItem.BoxSizeY~=-1 then
		box=Vector2.New(self.GuideDataItem.BoxSizeX,self.GuideDataItem.BoxSizeY)
	end
	if box ~= nil then
		self.click_box.gameObject:SetActive(false)
		self.click_box.gameObject.transform.eulerAngles = Vector3.zero
		self.click_box.gameObject.transform.localScale = self.mTarget.transform.localScale;
		-- 位移 触发
		local coe =GetBaseUIPID(self)
		self.click_box.transform.position =Vector3.New(self.mTarget.transform.position.x*coe,self.mTarget.transform.position.y*coe,self.mTarget.transform.position.z*coe)
		if self.GuideDataItem.MoveX~=-1 and self.GuideDataItem.MoveY~=-1 then
			self.click_box.transform.localPosition=Vector3.New(self.click_box.transform.localPosition.x+self.GuideDataItem.MoveX,self.click_box.transform.localPosition.y+self.GuideDataItem.MoveY,0)
		end

		local size = box
		if box.x>0 then
			self.click_boxRect.sizeDelta=size
		else
			size=Vector2.New(self.sceen_width,self.sceen_height)
			self.click_boxRect.sizeDelta=size
		end
		if self.GuideDataItem.HandleType==100 then
			--强引导
			local pos=self.click_box.transform.anchoredPosition
			SetFourBG(self,pos,size)
		end

	end
end
local function SetObjClick(self)
	--点击3D 物品
	local box=Vector2.New(self.GuideDataItem.BoxSizeX,self.GuideDataItem.BoxSizeY)
	--3D 转2D  转成屏幕  再用UICamera 专程UI
	self.click_box.gameObject.transform.eulerAngles = Vector3.zero
	self.click_box.gameObject.transform.localScale = Vector3.one;
	local pos= GetUIPos(self,self.mTarget.transform.position)
	pos=Vector3.New(pos.x+self.GuideDataItem.MoveX,pos.y+self.GuideDataItem.MoveY,0)
	self.click_boxRect.sizeDelta=box
	self.click_boxRect.anchoredPosition3D=pos
	return pos
end
local function GetTalkPos(self)
	if self.GuideDataItem.TalkX~= nil and self.GuideDataItem.TalkY  ~= nil and self.GuideDataItem.Desc then
		self.talk_bg.gameObject.transform.localPosition=Vector3.New(x,y,0)
		self.talk_bg.gameObject:SetActive(true)
		self.contentUIText1:SetText(self.GuideDataItem.Desc)
		self.talk_spr:SetSpriteName(self.GuideDataItem.TalkIcon)
		self.left_btn.gameObject:SetActive(false)
		self.right_btn:SetActive(false)
		self.center_btn:SetActive(false)
		return
	end
	self.talkwidth=0
	self.talkheigth=0
end

local function DragAndClickFun(self,canDrag,objpath,begin_index)
		if canDrag then
			local targetGame = CS.UnityEngine.GameObject.Find(objpath)
			if targetGame == nil then
				Logger.LogError("路径问题".."--"..objpath)
				GuideManager:GetInstance():SetGuideOver()
				return
			end
			self.mTarget = targetGame.gameObject
			local coe =GetBaseUIPID(self)
			self.tx.gameObject.transform.position =Vector3.New(self.mTarget.transform.position.x*coe,self.mTarget.transform.position.y*coe,self.mTarget.transform.position.z*coe)
			local pos=Vector3.New(self.tx.gameObject.transform.localPosition.x,self.tx.gameObject.transform.localPosition.y,0)
			local function GetArrayTargetPos(type)
				if type == 1 then
					return Vector3.New(-572,-452,0)
				elseif type == 2 then
					return Vector3.New(-436,-452,0)
				else
					return Vector3.New(-294,-452,0)
				end
			end
			local tarPos= GetArrayTargetPos(begin_index)
			self:ShowFigerAniRepeat(tarPos,pos)
			--self:GetTalkPos(self:GetTalkByTypeTow(canDrag,begin_index))
		else
			GetObj(self,objpath)
			if self.GuideDataItem.ClickTag ==1 then
				self:SetClick()
			elseif self.GuideDataItem.ClickTag == 2 then
				self:SetObjClick()
			else
				self:SetClick()
			end
			if self.GuideDataItem.ShowFiger then
				--self.click_box:SetInteractable(false)
				self.figer_pos= Vector3.New(self.click_box.transform.localPosition.x+self.click_figerRect.sizeDelta.x/2,self.click_box.transform.localPosition.y-self.click_figerRect.sizeDelta.y/2,0)
				--if self.click_boxRect.sizeDelta.x>=self.sceen_width and self.click_boxRect.sizeDelta.y>=self.sceen_height then
				--	self.figer_pos=Vector3.zero
				--end
				if self.GuideDataItem.ShowBeginPos then
					self.figer_beginpos=Vector3.zero
				else
					self.figer_beginpos=self.tx.gameObject.transform.localPosition
				end
				--self.figer_pos=Vector3.New(self.click_box.transform.localPosition.x,self.click_box.transform.localPosition.y,0)
				self.figer_ani = LuaTweener.UIMoveTo(self.tx.gameObject.transform,self.figer_beginpos,self.figer_pos,0.5,EaseFormula.OutQuad,function ()
					self.tx.gameObject.transform.localPosition = self.figer_pos
					self:FigerAniRepeat()
					--self:GetTalkPos(self:GetTalkByTypeTow(canDrag,begin_index))
					if self.figer_ani~=nil then
						LuaTweener.StopTweener(self.figer_ani)
						self.figer_ani=nil
					end
				end)
			end
		end
end
local function NextStep(self)
	if self.desObj then
		CS.UnityEngine.GameObject.Destroy(self.desObj)
		self.desObj=nil
	end
	GuideWeakGroup:GetInstance():NextStep()
end

local function SetGuideCurFun(self)
	self.CanBlack=true
	for i = 1, #self.BgImg do
		self.BgImg[i]:SetColor32(255,255,255,1)
	end
	self.click_bg:SetActive(false)
	self.shadow_bg:SetActive(false)
	self.talk_bg.gameObject:SetActive(false)
	self.tip_ani.gameObject:SetActive(false)
	self.click_box.gameObject:SetActive(false)
	self.tx.gameObject:SetActive(false)
end
local function SetSonFun(self,parent,click,index)
	local targetbegin = CS.UnityEngine.GameObject.Find(parent)
	if targetbegin == nil then
		Logger.LogError("路径问题".."--"..parent)
		GuideManager:GetInstance():SetGuideOver()
		return
	end
	if not targetbegin.gameObject.activeInHierarchy then
		Logger.Log("目标关闭".."--"..parent)
	end
	local preobj
	if self.GuideDataItem.SetGuide then
		if self.GuideDataItem.ClickBtn and self.GuideDataItem.ClickBtn>1 then
			if index==1 then
				preobj=CS.UnityEngine.GameObject.Find("UIRoot/TipLayer/UIWeakGuide".."/pre1")
			elseif index==2 then
				preobj=CS.UnityEngine.GameObject.Find("UIRoot/TipLayer/UIWeakGuide".."/pre2")
			end
		else
			preobj=CS.UnityEngine.GameObject.Find("UIRoot/TipLayer/UIWeakGuide".."/pre")
		end
	else
		preobj=CS.UnityEngine.GameObject.Find(parent.."/pre")
	end

	if preobj~=nil then
		Logger.Log("已经存在")
		return
	end
	local desObj
	if self.GuideDataItem.SetGuide then
		 desObj = CS.UnityEngine.GameObject.Instantiate(self.pre.gameObject, self.transform)
		if self.GuideDataItem.ClickBtn and self.GuideDataItem.ClickBtn>1 then
			if index==1 then
				desObj.name = "pre1"
			elseif index==2 then
				desObj.name = "pre2"
			end
		else
			desObj.name = "pre"
		end
	else
		desObj = CS.UnityEngine.GameObject.Instantiate(self.pre.gameObject, targetbegin.transform)
		desObj.name = "pre"
	end
	local box_rect= UIUtil.FindComponent(desObj.transform,typeof(CS.UnityEngine.RectTransform))
	desObj.transform.localScale=Vector3.one
	local box_button=UIUtil.FindButton(desObj.transform, "")
	local figer_obj=desObj.transform:GetChild(2).gameObject
	figer_obj.transform.anchoredPosition3D=Vector3.New(self.GuideDataItem.FigerX,self.GuideDataItem.FigerY,0)
	if self.GuideDataItem.SetGuide and self.GuideDataItem.ClickBtn and self.GuideDataItem.ClickBtn == 2 then
		if index==1 then
			box_rect.anchoredPosition3D=Vector3.New(self.GuideDataItem.MoveX1,self.GuideDataItem.MoveY1,0)
		elseif index==2 then
			box_rect.anchoredPosition3D=Vector3.New(self.GuideDataItem.MoveX2,self.GuideDataItem.MoveY2,0)
		end
	else
		box_rect.anchoredPosition3D=Vector3.New(self.GuideDataItem.MoveX,self.GuideDataItem.MoveY,0)
	end

	box_rect.sizeDelta=Vector2.New(self.GuideDataItem.BoxSizeX,self.GuideDataItem.BoxSizeY)
	desObj.gameObject:SetActive(true)
	box_button.onClick:AddListener(function ()
		if self.GuideDataItem.ClickTag==1 then
			local btn_obj = CS.UnityEngine.GameObject.Find(click)
			local pointer=CS.UnityEngine.EventSystems.PointerEventData(CS.UnityEngine.EventSystems.EventSystem.current)
			local IPointerClickHandler=CS.UnityEngine.EventSystems.IPointerClickHandler;
			self.clickHandler = UIUtil.FindComponent(btn_obj.transform,typeof(IPointerClickHandler))
			if self.clickHandler ~= nil then
				if not self.GuideDataItem.OverEvent and  not self.GuideDataItem.ClickNotNext then
					self:NextStep ()
					if self.GuideDataItem.Notice then
						--通知服务器
						GuideWeakCheckManager:GetInstance():GuideWeakGroupOver(self.GuideDataItem.group)
					end

				end
				self.clickHandler:OnPointerClick(pointer);
				self.clickHandler:OnPointerDown(pointer);
				self.clickHandler:OnPointerUp(pointer);
			else
				Logger.Log("点击事件is_nil")
			end
		elseif self.GuideDataItem.ClickTag==2 then
			self:NextStep ()
			UIManager:GetInstance():Broadcast(UIMessageNames.ON_3DOBJ_CLICK_FUN,self.GuideDataItem.ClickEvent);
		end
		CS.UnityEngine.GameObject.Destroy(desObj)
		desObj=nil
	end)
	return desObj
end
local function SetGuide(self)
	SetGuideCurFun(self)
	if GuideWeakGroup:GetInstance().Runing then
		self.GuideDataItem = GuideWeakGroup:GetInstance().CurGuideItem
	end
	local EveType=self.GuideDataItem.HandleType
	if self.GuideDataItem.JumpParm then
		Logger.LogError("跳过参数是啥？"..self.GuideDataItem.JumpParm)
	end
	if self.GuideDataItem.SetSon then
		--检查路径下是否有 这个物体   如果或没有 创建   可点击 点击 就下一步
		self.desObj=SetSonFun(self,self.GuideDataItem.TargetParent,self.GuideDataItem.TargetPath)
	else
		if EveType==1 then
			--点击UI
			GetObj(self)
			self.tx.gameObject:SetActive(true)
			self:FingerMover()
		elseif EveType==2 then
			--  布阵 界面推拽和点击上阵
			self.tx.gameObject:SetActive(true)
			local cardView = UIManager:GetInstance():GetWindow(UIWindowNames.UIEmBattle2D).View
			local  canguide, canDrag,objpath,begin_index= cardView:GetWeakParme()
			if canguide then
				self:DragAndClickFun(canDrag,objpath,begin_index)
			else
				GuideWeakGroup:GetInstance():SetGuideOver()
			end
		elseif EveType==3 then
			-- 关卡界面 提示
			self.tx.gameObject:SetActive(false)
		elseif EveType==4 then
			--  布阵界面  没有守护灵的时候点击
			self.tx.gameObject:SetActive(false)
			local cardView = UIManager:GetInstance():GetWindow(UIWindowNames.UIEmBattle2D).View
			GetObj(self)
			self:SetClick()
			local coe =GetBaseUIPID(self)
			self.tip_ani.position =Vector3.New(self.mTarget.transform.position.x*coe,self.mTarget.transform.position.y*coe,self.mTarget.transform.position.z*coe)
			self.tip_ani.localPosition=Vector3.New(self.click_box.transform.localPosition.x,self.click_box.transform.localPosition.y+150,0)
			self.tip_ani.gameObject:SetActive(true)
		elseif EveType==5 then
			--提示拖拽 中间不放英雄
			self.tx.gameObject:SetActive(true)
			local cardView = UIManager:GetInstance():GetWindow(UIWindowNames.UIEmBattle2D).View
			local  canguide,_type,canDrag,objpath,begin_index= cardView:GetWeakParmeByMidHaveMen()
			if canguide then
				if _type==1 then
					--1 横向拖拽
					local targetbegin = CS.UnityEngine.GameObject.Find(canDrag)
					if targetbegin == nil then
						Logger.LogError("路径问题".."--"..canDrag)
						GuideManager:GetInstance():SetGuideOver()
						return
					end
					local coe =GetBaseUIPID(self)
					self.tx.gameObject.transform.position =Vector3.New(targetbegin.gameObject.transform.position.x*coe,targetbegin.gameObject.transform.position.y*coe,targetbegin.gameObject.transform.position.z*coe)
					local posbegin=Vector3.New(self.tx.gameObject.transform.localPosition.x,self.tx.gameObject.transform.localPosition.y,0)

					local targetover = CS.UnityEngine.GameObject.Find(objpath)
					if targetover == nil then
						Logger.LogError("路径问题".."--"..objpath)
						GuideManager:GetInstance():SetGuideOver()
						return
					end
					self.tx.gameObject.transform.position =Vector3.New(targetover.gameObject.transform.position.x*coe,targetover.gameObject.transform.position.y*coe,targetover.gameObject.transform.position.z*coe)
					local posover=Vector3.New(self.tx.gameObject.transform.localPosition.x,self.tx.gameObject.transform.localPosition.y,0)
					self:ShowFigerAniRepeat(posbegin,posover)
				else
					--2 类型2
					self:DragAndClickFun(canDrag,objpath,begin_index)
				end
			else
				GuideWeakGroup:GetInstance():SetGuideOver()
			end
		elseif EveType==6 then
			self.tx.gameObject:SetActive(true)
			local pos=Vector3.New(self.GuideDataItem.MoveX,self.GuideDataItem.MoveY,0)
			self.figer_ani = LuaTweener.UIMoveTo(self.tx.gameObject.transform,Vector3.zero,pos,0.5,EaseFormula.OutQuad,function ()
				self.tx.gameObject.transform.localPosition = pos
				self:FigerAniRepeat()
				--self:GetTalkPos(self.GuideDataItem.TalkX,self.GuideDataItem.TalkY)
				if self.figer_ani~=nil then
					LuaTweener.StopTweener(self.figer_ani)
					self.figer_ani=nil
				end
			end)
		elseif EveType == 100 then
			--强引导
			self.click_bg.gameObject:SetActive(true)
			GetObj(self, self.GuideDataItem.TargetPath)
			self:SetClick()
			self.click_box.gameObject:SetActive(true)
			if self.GuideDataItem.ShowFiger then
				self.click_box:SetInteractable(false)
				self.figer_pos= Vector3.New(self.click_box.transform.localPosition.x+self.click_figerRect.sizeDelta.x/2,self.click_box.transform.localPosition.y-self.click_figerRect.sizeDelta.y/2,0)
				if self.click_boxRect.sizeDelta.x>=self.sceen_width and self.click_boxRect.sizeDelta.y>=self.sceen_height then
					self.figer_pos=Vector3.zero
				end
				if self.GuideDataItem.ShowBeginPos then
					self.figer_beginpos=Vector3.zero
				else
					self.figer_beginpos=self.tx.gameObject.transform.localPosition
				end
				self.tx.gameObject.transform.localPosition=self.figer_beginpos
				self.tx.gameObject:SetActive(true)
				self.rightAnim = LuaTweener.UIMoveTo(self.tx.gameObject.transform,self.figer_beginpos,self.figer_pos,0.5,EaseFormula.OutQuad,function ()
					self.tx.gameObject.transform.localPosition = self.figer_pos
					self:FigerAniRepeat()
					self:GetTalkPos()
					self.click_box:SetInteractable(true)
					self.rightAnim = nil
					if self.GuideDataItem.Desc then
						GameObjectPool:GetInstance():GetGameObjectAsync(BattleDialogTip,function(go)
							if not IsNull(go) then
								self.tip_1=go
								go.transform:SetParent(self.transform)
								local tipText = UIUtil.FindText(go.transform,"Tip")
								tipText.text =self.GuideDataItem.Desc
								self.tip_1.transform.localScale=Vector3.one
								self.tip_1.transform.localPosition=Vector3.New(self.GuideDataItem.Tip1_X,self.GuideDataItem.Tip1_Y)
							end
						end)
					end
				end)
			end
		end
	end
end
local function FingerMover(self)
	if self.GuideDataItem.ClickTag ==1 then
		self:SetClick()
	elseif self.GuideDataItem.ClickTag == 2 then
		 self:SetObjClick()
	else
		self:SetClick()
	end
	--显示手指动画  一般是点击事件
	self.click_box.gameObject:SetActive(false)
	if self.GuideDataItem.ShowFiger then
		--self.click_box:SetInteractable(false)
		self.figer_pos= Vector3.New(self.click_box.transform.localPosition.x+self.click_figerRect.sizeDelta.x/2,self.click_box.transform.localPosition.y-self.click_figerRect.sizeDelta.y/2,0)
		--if self.click_boxRect.sizeDelta.x>=self.sceen_width and self.click_boxRect.sizeDelta.y>=self.sceen_height then
		--	self.figer_pos=Vector3.zero
		--end
		if self.GuideDataItem.ShowBeginPos then
			self.figer_beginpos=Vector3.zero
		else
			self.figer_beginpos=self.tx.gameObject.transform.localPosition
		end
		--self.figer_pos=Vector3.New(self.click_box.transform.localPosition.x,self.click_box.transform.localPosition.y,0)
		self.figer_ani = LuaTweener.UIMoveTo(self.tx.gameObject.transform,self.figer_beginpos,self.figer_pos,0.5,EaseFormula.OutQuad,function ()
			self.tx.gameObject.transform.localPosition = self.figer_pos
			self:FigerAniRepeat()
			--self:GetTalkPos(self.GuideDataItem.TalkX,self.GuideDataItem.TalkY)
			if self.figer_ani~=nil then
				LuaTweener.StopTweener(self.figer_ani)
				self.figer_ani=nil
			end
		end)
	end
end

local function ShowFigerAniRepeat(self,pos_begin,pos_over)
	self.rightAnim = LuaTweener.UIMoveTo(self.tx.gameObject.transform,pos_begin,pos_over,1,EaseFormula.OutQuad,function ()
		self.tx.gameObject.transform.localPosition = pos_over
		if self.rightAnim~=nil then
			LuaTweener.StopTweener(self.rightAnim)
			self.rightAnim=nil
		end
		self:ShowFigerAniRepeat(pos_begin,pos_over)
	end)
end
local function OnRefresh(self)
	-- 各组件刷新
	
end
local function GoOnGuide(self)
	self:SetGuide()
end
local function OnAddListener(self)
	base.OnAddListener(self)
	-- UI消息注册
	self:AddUIListener(UIMessageNames.ON_WEAKGUIDE_FUN, self.GoOnGuide)
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- UI消息注销
	self:RemoveUIListener(UIMessageNames.ON_WEAKGUIDE_FUN,self.GoOnGuide)
end

local function OnDestroy(self)
	-- 销毁
	if self.rightAnim~=nil then
		LuaTweener.StopTweener(self.rightAnim)
		self.rightAnim=nil
	end
	base.OnDestroy(self)
end
local function OnDisable(self)
	base.OnDisable(self)
	if GuideWeakCheckManager:GetInstance().UIAddEventBool then
		GuideWeakCheckManager:GetInstance():RemoveEventListener()
	end
	if self.rightAnim~=nil then
		LuaTweener.StopTweener(self.rightAnim)
		self.rightAnim=nil
	end
end
UIWeakGuideView.OnCreate = OnCreate
UIWeakGuideView.OnEnable = OnEnable
UIWeakGuideView.OnRefresh = OnRefresh
UIWeakGuideView.OnAddListener = OnAddListener
UIWeakGuideView.OnRemoveListener = OnRemoveListener
UIWeakGuideView.OnDestroy = OnDestroy
UIWeakGuideView.SetGuide = SetGuide
UIWeakGuideView.Update=Update
UIWeakGuideView.SetClick = SetClick
UIWeakGuideView.FigerAniRepeat = FigerAniRepeat
UIWeakGuideView.GetTalkPos=GetTalkPos
UIWeakGuideView.ShowFigerAniRepeat = ShowFigerAniRepeat
UIWeakGuideView.OnDisable = OnDisable
UIWeakGuideView.FingerMover = FingerMover
UIWeakGuideView.SetObjClick = SetObjClick
UIWeakGuideView.DragAndClickFun=DragAndClickFun
UIWeakGuideView.NextStep = NextStep
UIWeakGuideView.GoOnGuide = GoOnGuide
return UIWeakGuideView

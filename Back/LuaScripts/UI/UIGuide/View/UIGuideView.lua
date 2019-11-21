
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIGuideView = BaseClass("UIGuideView", UIBaseView)
local base = UIBaseView
--点击到黑色遮罩
local function ClickMask(self)
	if not self.error_tip.gameObject.activeSelf then
		self.error_tip.gameObject:SetActive(true)
		UIUtil.CreateUIFadeAnim(self.error_tip)
	end
	self.error_tip_two.localPosition = self.click_boxRect.transform.localPosition
	self.error_tip_two.gameObject:SetActive(false)
	self.error_tip_two.gameObject:SetActive(true)
end
local function ClickEvent(self)
		--下一步？ 点击事件触发
	self.error_tip.gameObject:SetActive(false)
	if self.GuideDataItem.HandleType ==2 then
		--不让点
		return
	elseif  self.GuideDataItem.HandleType == 12 then
		if not self.ClickBGNext then
			return
		end
	end
	self.CanBlack=true
	self:NextStepCurrenSet()
	if self.GuideDataItem.ClickTag==1 then
		local pointer=CS.UnityEngine.EventSystems.PointerEventData(CS.UnityEngine.EventSystems.EventSystem.current)
		local IPointerClickHandler=CS.UnityEngine.EventSystems.IPointerClickHandler;

		self.clickHandler = UIUtil.FindComponent(self.mTarget.transform,typeof(IPointerClickHandler))
		if self.clickHandler ~= nil then
			if not self.GuideDataItem.OverEvent then
				self:NextStep ()
			end
			self.clickHandler:OnPointerClick(pointer);


			self.clickHandler:OnPointerDown(pointer);
			self.clickHandler:OnPointerUp(pointer);
		else
			--判斷父節點有沒有
			if self.mTarget.transform.parent ~= nil then
				self.clickHandler = UIUtil.FindComponent(self.mTarget.transform.parent,typeof(IPointerClickHandler))
				if self.clickHandler ~= nil then
					if not self.GuideDataItem.OverEvent then
						self:NextStep ()
					end
					self.clickHandler:OnPointerClick(pointer);
					self.clickHandler:OnPointerDown(pointer);
					self.clickHandler:OnPointerUp(pointer);
				else
					Logger.LogError("点击事件Is Nil")
				end
			else
				Logger.LogError("点击事件Is Nil")
			end

		end
	elseif self.GuideDataItem.ClickTag==2 then
		--发事件
		if not self.GuideDataItem.OverEvent then
			self:NextStep ()
		end
		--事件写这里
		--主城事件
		UIManager:GetInstance():Broadcast(UIMessageNames.ON_3DOBJ_CLICK_FUN,self.GuideDataItem.ClickEvent,self.GuideDataItem.ClickEventParas);
	elseif self.GuideDataItem.ClickTag==3 then
		local msdId = MsgIDDefine.PBUSER_GUIDE_REWARD_REQUEST
		local msdObj = MsgIDMap[msdId]()
		msdObj.id = self.GuideDataItem.AwardId
		GuideManager:GetInstance():SetGuideServerStep(msdObj)
		NetManager:GetInstance():SendMessage(msdId, msdObj, function(msg_obj)
			if not self.GuideDataItem.OverEvent then
				self:NextStep ()
			end
			if msg_obj.OpCode ~= 0 then
				Logger.Log("OnRecvPveStart出错了~")
				UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
				return
			end
			self.guidebg:SetActive(false)
			local dropItem = msg_obj.Packages.dropItem
			DataUtil.ParseDropItem(dropItem)
			if not DataUtil.CheckDropItemIsNull(dropItem) then
				UIManager:GetInstance():OpenWindow(UIWindowNames.UICommGetRewards,dropItem)
			end
			--更新给界面
			UIManager:GetInstance():Broadcast(UIMessageNames.UI_Guide_UpdateUIEvent)
		end)
	else
		if not self.GuideDataItem.OverEvent then
			self:NextStep ()
		end
	end
end

local function BgClick(self)
	if self.ClickBGNext  then
		--比如结算的时候  点击背景也算是走下一步
		if self.GuideDataItem.ClickTag > 0 and self.GuideDataItem.HandleType ~= 3 then
			ClickEvent(self)
		else
			self:NextStepCurrenSet()
			self:NextStep ();
		end
		return
	else
		ClickMask(self)
	end

end

local function ClearLoadGame(self)
	if not IsNull(self.load_game) then
		GameObjectPool:GetInstance():RecycleGameObject(self.load_path,self.load_game)
		self.load_game = nil
		self.load_path = nil
	end
	if not IsNull(self.clone_game1) then
		CS.UnityEngine.GameObject.Destroy(self.clone_game1)
		self.clone_game1=nil
	end
end

local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件

	self.error_tip_two = UIUtil.FindTrans(self.transform,"fx_ui_guide_circletip")
	self.error_tip = self:AddComponent(UIText,"ErrorTip")

	local rectTrans=UIUtil.FindComponent(CS.UnityEngine.GameObject.Find("UIRoot/InfoLayer").transform,typeof(CS.UnityEngine.RectTransform))
	self.sceen_width =rectTrans.sizeDelta.x
	self.sceen_height = rectTrans.sizeDelta.y
	self.uiParent = CS.UnityEngine.GameObject.Find("UIRoot")
	self.canvasSizeDelta = self.uiParent:GetComponent(typeof(CS.UnityEngine.RectTransform)).sizeDelta;
	self.contentUIText1 = self:AddComponent(UIText, "Image/Content_UIText1")
	self.contentUIText2 = self:AddComponent(UIText, "Image/Content_UIText2")
	self.talk_spr = UIUtil.FindComponent(self.transform, typeof(CS.UnityEngine.RectTransform),"Image")
	self.talk_head = self:AddComponent(UIImage, "Image/HeadFrame/Head",AtlasConfig.DynamicTex)
	self.talk_head_game = UIUtil.FindTrans(self.transform,"Image/HeadFrame").gameObject
	self.talk_dir = UIUtil.FindTrans(self.transform,"Image/Dir").gameObject
	self.talk_dir_child = { UIUtil.FindTrans(self.transform,"Image/Dir/RightDown").gameObject, UIUtil.FindTrans(self.transform,"Image/Dir/LeftDown").gameObject,
							UIUtil.FindTrans(self.transform,"Image/Dir/LeftUp").gameObject, UIUtil.FindTrans(self.transform,"Image/Dir/RightUp").gameObject}
	self.unity_text = UIUtil.FindText(self.transform, "Image/Content_UIText1")
	self.ClickBgTip = UIUtil.FindTrans(self.transform,"ClickBGTip").gameObject
	self.TopBgBtn=self:AddComponent(UIButton,"BG/TopImg")
	self.LeftBgBtn=self:AddComponent(UIButton,"BG/LeftImg")
	self.ButtoBgBtn=self:AddComponent(UIButton,"BG/ButtoImg")
	self.RightBtn=self:AddComponent(UIButton,"BG/RightImg")
	self.BgBtn={self.TopBgBtn,self.LeftBgBtn,self.ButtoBgBtn,self.RightBtn}
	self.TopBgImg=self:AddComponent(UIImage,"BG/TopImg")
	self.LeftBgImg=self:AddComponent(UIImage,"BG/LeftImg")
	self.ButtoBgImg=self:AddComponent(UIImage,"BG/ButtoImg")
	self.RightImg=self:AddComponent(UIImage,"BG/RightImg")
	self.BgImg={self.TopBgImg,self.ButtoBgImg,self.LeftBgImg,self.RightImg}
	--self.bg = self:AddComponent(UIButton,"BG")
	self.bgImg = self:AddComponent(UIImage,"BG")
	self.click_boxRect=UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.RectTransform),"Box");
	self.click_figerRect=UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.RectTransform),"ef_ui_start_Yindao");
	self.guidebg =UIUtil.FindTrans(self.transform,"ImageGuide").gameObject;
	self.click_box =  self:AddComponent(UIButton,"Box")
	self.click_boxImg = self:AddComponent(UIImage,"Box")
	self.tx=UIUtil.FindTrans(self.transform,"ef_ui_start_Yindao")
	self.txhand=UIUtil.FindTrans(self.transform,"ef_ui_start_Yindao/hand")
	self.tx1=UIUtil.FindTrans(self.transform,"ef_ui_start_Yindao/ring").gameObject;
	self.tx2=UIUtil.FindTrans(self.transform,"ef_ui_start_Yindao/glow").gameObject;
	self.txAni= self.txhand:GetComponent(typeof(CS.UnityEngine.Animator))
	for i = 1, #self.BgBtn do
		self.BgBtn[i]:SetOnClick(self,self.BgClick)
	end

	self.click_box :SetOnClick(self,ClickEvent)
	self.CurLayer=700
	self.OffLocal = Vector3.New(-10,45,1)

	self.CurrenMoveX=150
    --self.ClickSpr = self:AddComponent(UIImage,"ClickSpr")
end
local function NextStepCurrenSet(self)
	for i = 1, #self.BgImg do
		self.BgImg[i].gameObject :SetActive(false)
	end
	self.click_box.gameObject:SetActive(false)
	self.tx.gameObject:SetActive(false)
	self.talk_spr.gameObject:SetActive(false)
	if self.GuideDataItem.GuideBG then
		self.guidebg:SetActive(true)
	else
		self.guidebg:SetActive(false)
	end
	self.ClickBgTip:SetActive(false)
end
local function NextStep(self)
	self.error_tip.gameObject:SetActive(false)
	if self.GuideDataItem.MidEventType ~= 0then
		self:GuideClickEvent()
	end
	if self.GuideDataItem.MidEvent~=nil then
		DataManager:GetInstance():RemoveListener(DataMessageNames.UI_Guide_MidEvent, self.easyfunc[1])
	end

	--self.blank=true

	if GuideGroup:GetInstance().Runing then
		GuideGroup:GetInstance():NextStep()
	elseif GuideWeakGroup:GetInstance().Runing then
		--Group 会检查 步骤   如果打开的界面是这一组的 会继续  否则 会关闭界面

		GuideWeakGroup:GetInstance():NextStep()
	else
		Logger.LogError("下一步不是强也不是弱")
	end
	ClearLoadGame(self)
end
local function SetFourBG(self,pos,size)
	--设置后边4个梦黑

	self.BgImg[1].rectTransform.anchoredPosition=Vector3.zero
	self.BgImg[2].rectTransform.anchoredPosition=Vector3.zero
	self.BgImg[3].rectTransform.anchoredPosition=Vector3.New(0,pos.y,0)
	self.BgImg[4].rectTransform.anchoredPosition=Vector3.New(0,pos.y,0)
	self.BgImg[1].rectTransform.sizeDelta=Vector2.New(self.sceen_width,self.sceen_height/2-pos.y-size.y/2)
	self.BgImg[2].rectTransform.sizeDelta=Vector2.New(self.sceen_width,self.sceen_height/2+pos.y-size.y/2)
	self.BgImg[3].rectTransform.sizeDelta=Vector2.New(self.sceen_width/2+pos.x-size.x/2,size.y)
	self.BgImg[4].rectTransform.sizeDelta=Vector2.New(self.sceen_width/2-pos.x-size.x/2,size.y)
end
local function SetAllBlack(self)
	self.BgImg[1].rectTransform.anchoredPosition=Vector3.zero
	self.BgImg[2].rectTransform.anchoredPosition=Vector3.zero
	self.BgImg[3].rectTransform.anchoredPosition=Vector3.zero
	self.BgImg[4].rectTransform.anchoredPosition=Vector3.zero
	self.BgImg[1].rectTransform.sizeDelta=Vector2.New(self.sceen_width,self.sceen_height)
	self.BgImg[2].rectTransform.sizeDelta=Vector2.zero
	self.BgImg[3].rectTransform.sizeDelta=Vector2.zero
	self.BgImg[4].rectTransform.sizeDelta=Vector2.zero
end
--3D 转 UI
local function GetUIPos(self,pos,Name)
	local layer =  UIManager:GetInstance():GetLayer(UILayers.InfoLayer.Name)
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
	self.click_box.gameObject:SetActive(true)
	--self.click_boxRect.anchoredPosition3D=Vector3.New(self.click_boxRect.anchoredPosition3D.x+self.GuideDataItem.MoveX,self.click_boxRect.anchoredPosition3D.y+self.GuideDataItem.MoveY,0)
	--self.click_box.transform.localPosition=Vector3.New(self.click_box.transform.localPosition.x+self.GuideDataItem.MoveX,self.click_box.transform.localPosition.y+self.GuideDataItem.MoveY,0)
	--local pos=self.click_box.transform.anchoredPosition
	local size = box

	SetFourBG(self,pos,size)
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
	if self.GuideDataItem.BoxSizeX~=0 or self.GuideDataItem.BoxSizeY~=0 then
		box=Vector2.New(self.GuideDataItem.BoxSizeX,self.GuideDataItem.BoxSizeY)
	end
	if box ~= nil then
		self.click_box.gameObject:SetActive(true)
		self.click_box.gameObject.transform.eulerAngles = Vector3.zero
		self.click_box.gameObject.transform.localScale = self.mTarget.transform.localScale;
		-- 位移 触发
		local coe =GetBaseUIPID(self)
		self.click_box.transform.position =Vector3.New(self.mTarget.transform.position.x*coe,self.mTarget.transform.position.y*coe,self.mTarget.transform.position.z*coe)
		if self.GuideDataItem.MoveX~=0 or self.GuideDataItem.MoveY~=0 then
			self.click_box.transform.localPosition=Vector3.New(self.click_box.transform.localPosition.x+self.GuideDataItem.MoveX,self.click_box.transform.localPosition.y+self.GuideDataItem.MoveY,0)
		end

		local size = box
		if box.x>0 then
			self.click_boxRect.sizeDelta=size
		else
			size=Vector2.New(self.sceen_width,self.sceen_height)
			self.click_boxRect.sizeDelta=size
		end
		local pos=self.click_box.transform.anchoredPosition
		SetFourBG(self,pos,size)
	end
end
local function SetCurrenBG(self)
	--黑背景
	for i = 1, #self.BgImg do
		self.BgImg[i].gameObject:SetActive(true)
		self.BgImg[i]:SetColor32(255,255,255,200)
	end
end
local function GetWeakSkillClickPath(self,index)
	--获得教学关卡 技能对应点击位置
	local Str="UIRoot/NormalLayer/UIBattleIn/ReadyPage/RoleInfoModule/"
	if index<=3 then
		if index==1 then
			return Str.."Role1/Role1_Hero/Role1_Hero_Icon"
		else
			local num=index-1
			return Str.."Role1/Role1_Btn"..num.."/Role1_Btn"..num.."_Icon"
		end
	elseif index>3 and index<=6 then
		if index==4 then
			return Str.."Role2/Role2_Hero/Role2_Hero_Icon"
		else
			local num=index-4
			return Str.."Role2/Role2_Btn"..num.."/Role2_Btn"..num.."_Icon"
		end
	else
		if index==7 then
			return Str.."Role3/Role3_Hero/Role3_Hero_Icon"
		else
			local num=index-7
			return Str.."Role3/Role3_Btn"..num.."/Role3_Btn"..num.."_Icon"
		end
	end
end
--获得点击目标
local function GetObj(self)
	local objpath

	if self.GuideDataItem.ClickIsSkill then
		objpath=self:GetWeakSkillClickPath( tonumber(self.GuideDataItem.TargetPath))
	else
		if self.GuideDataItem.TargetId ~= nil and self.GuideDataItem.TargetView ~= nil then
			local cardView = UIManager:GetInstance():GetWindow(self.GuideDataItem.TargetView).View
			local index,paras = cardView:GetGuidePosById(self.GuideDataItem.TargetId,self.GuideDataItem.TargetType)
			objpath = string.format(self.GuideDataItem.TargetPath,index)
			if paras == -1 then
				self:NextStepCurrenSet()
				self:NextStep ()
				return false
			end
			GuideGroup:GetInstance().array_empty = paras
		else
			objpath= self.GuideDataItem.TargetPath
		end
	end
	local targetGame = CS.UnityEngine.GameObject.Find(objpath)
	if targetGame == nil then
		Logger.LogError("路径问题".."--"..objpath.."--group-"..GuideGroup:GetInstance().CurGuideItem.group)
		--直接跳过这一步self.GuideDataItem.Layer
		GuideManager.SetGuideRecode(self.GuideDataItem.group)
		GuideManager:GetInstance():GuideGroupOver(self.GuideDataItem.group)
		GuideGroup:GetInstance():GuideOverCheck()
		return
	end
	self.mTarget = targetGame.gameObject
	if not self.mTarget.gameObject.activeInHierarchy then
		Logger.Log("目标关闭".."--"..objpath)
	end
	--只要路径不是空的就有点击Box
	if self.GuideDataItem.TargetPath==nil or #self.GuideDataItem.TargetPath==0 then
		self.tx.gameObject:SetActive(false)
		self.click_box.gameObject:SetActive(false)
	else
		self.click_box.gameObject:SetActive(true)
	end
	return true
end

local function GetTalkPos(self,x,y)
	if self.talkType <=0 then
		return
	end
	self.talk_spr.gameObject:SetActive(true)
	if x ~= nil and y ~= nil then
		self.talk_spr.localPosition=Vector3.New(x,y,0)
		return
	end
	local owx=self.click_box.transform.localPosition.x+self.click_boxRect.sizeDelta.x/2
	local owy=self.click_box.transform.localPosition.y+self.click_boxRect.sizeDelta.y/2
	--判断TALK位置
	local talkX=owx
	local talkY=owy
	local xType = 1
	local yType = 1
	if owx+self.talkwidth/2 +166 >self.sceen_width/2  then
		--X方向改
		talkX=owx-self.click_boxRect.sizeDelta.x-166
		xType = 2
	else
		talkX=owx+166
	end

	if owy+self.talkheigth+86>self.sceen_height/2 then
		talkY=owy-self.talkheigth-self.click_boxRect.sizeDelta.y-86
		yType = 2
	else
		talkY = owy+self.talkheigth/2+86
	end
	self.talk_spr.localPosition=Vector3.New(talkX,talkY,0)
	if self.talkType==1 then
		local dirIndex = 2
		if xType == 2 and yType == 1 then
			dirIndex = 1
		elseif xType == 1 and yType == 2 then
			dirIndex = 3
		elseif xType == 2 and yType == 2 then
			dirIndex = 4
		end
		for i, v in ipairs(self.talk_dir_child) do
			if i == dirIndex then
				v:SetActive(true)
			else
				v:SetActive(false)
			end
		end
	end

end

local function ClickBoxFadeAni(self)
    if self.fadebool  then
        local num1,num2=math.modf(self.fadeNum/2)
        local oldalpha=0
        local Newalpha=0
        if num2==0 then
            oldalpha=0
            Newalpha=1
        else
            oldalpha=1
            Newalpha=0

        end
        self.fadeimage= LuaTweener.UIFadeTo(self.click_boxImg,oldalpha,Newalpha,1,EaseFormula.OutQuad,function ()
            self.fadeNum=self.fadeNum+1
            self.fadeimage=nil
            self:ClickBoxFadeAni()
        end ,true)
    else
        self.click_boxImg:SetAlphaVal(0)
        self.fadeimage=nil
    end

end


local function FigerAniRepeat(self)
	self.tx1.gameObject:SetActive(true);
	self.tx2.gameObject:SetActive(true);
	self.txAni.enabled=true
end

--local function ShowFigerAniRepeat(self,pos,tarPos)
--	self.rightAnim = LuaTweener.UIMoveTo(self.tx.gameObject.transform,pos,tarPos,1,EaseFormula.OutQuad,function ()
--		self.tx.gameObject.transform.localPosition = tarPos
--		self.rightAnim = nil
--		self.repeatTime=self.repeatTime+1
--		if self.repeatTime==2 then
--			self:ShowFigerAniRepeat(pos,tarPos)
--			local emView = UIManager:GetInstance():GetWindow(UIWindowNames.UIEmBattle2D).View
--			emView:BattleCheckDrag(emView.jlrlist[1],0)
--			emView:BeginDrag()
--			self.carditemAni=LuaTweener.UIMoveTo(emView.dragJLRCardItem.transform,pos,tarPos,0.9,EaseFormula.OutQuad,function ()
--				self.carditemAni = nil
--				emView:BattleCheckDrag(nil,0)
--				self.repeatTime=0
--				self:NextStepCurrenSet()
--				self:NextStep ()
--			end)
--		elseif self.repeatTime<2 then
--			self:ShowFigerAniRepeat(pos,tarPos)
--		else
--
--		end
--
--	end)
--end
--物体移动
local function PosGroupMove(self,trans,move_group,index,times,is_ui)

	local function NextMove()
		self.pos_move_tweener = nil
		index = index+1
		if index+1 <= #move_group then
			PosGroupMove(self,trans,move_group,index,times,is_ui)
		else
			if times == -1 then
				PosGroupMove(self,trans,move_group,1,times,is_ui)
			else
				times = times - 1
				if times > 0 then
					PosGroupMove(self,trans,move_group,1,times,is_ui)
				else
					trans.gameObject:SetActive(false)
					self:OpeNextBtn()
				end
			end
		end
	end
	if is_ui then
		self.pos_move_tweener = LuaTweener.UIMoveTo(trans,move_group[index],move_group[index+1],1,EaseFormula.OutQuad,NextMove)
	else
		self.pos_move_tweener =LuaTweener.TransMoveTo(trans,move_group[index],move_group[index+1],1,EaseFormula.OutQuad,NextMove)
	end

end
local function SetGuide(self)
	-- 设置当前引导
	--1 类型  普通引导类型
	--2 类型战斗 推拽引导类型
	--3 黑化 两秒后可点击
	--4  弱弱引导
	--5 ruo引导组
	--self.blank=false
	--UIUtil.SetEffectLayer(self.txhand,self.base_order)
	self.click_boxImg:SetAlphaVal(0)
	if self.fadeimage~=nil then
		LuaTweener.StopTweener(self.fadeimage)
		self.fadeimage=nil
	end
	self.ClickBGNext=false
	self.ClickBgTip:SetActive(false)
	self.fadeNum=0
    self.fadebool =false
	if self.RuningTimer ~= nil then
		self.RuningTimer:Stop()
		self.RuningTimer = nil
	end
	--[[
	if self.error_timer ~= nil then
		TimerManager:GetInstance():SimpleTimerStop(self.error_timer)
		self.error_timer = nil
	end
	--]]
	self.error_tip_two.gameObject:SetActive(false)
	self.error_tip.gameObject:SetActive(false)
	self.tx1.gameObject:SetActive(false);
	self.tx2.gameObject:SetActive(false);
	self.txAni.enabled=false
	self.fadeimage=nil
	--self.click_box.gameObject:SetActive(true)
	if self.rightAnim~=nil then
		LuaTweener.StopTweener(self.rightAnim)
	end
	if self.FadeBG~=nil then
		for i = 1, #self.FadeBG do
			if self.FadeBG[i]~=nil then
				LuaTweener.StopTweener(self.FadeBG[i])
				self.FadeBG[i]=nil
			end
		end
	end
	--点击背景 变黑
	self.CanBlack=false
	if GuideGroup:GetInstance().Runing then
		self.GuideDataItem = GuideGroup:GetInstance().CurGuideItem
	elseif GuideWeakGroup:GetInstance().Runing then
		self.GuideDataItem = GuideWeakGroup:GetInstance().CurGuideItem
	else
		Logger.LogError("不是强也不是弱")
	end
	if self.GuideDataItem.ShowFiger then
		self.tx.gameObject:SetActive(true)
	else
		self.tx.gameObject:SetActive(false)
	end
	--添加协议
	if self.GuideDataItem.MidEvent~=nil then
		DataManager:GetInstance():AddListener(DataMessageNames.UI_Guide_MidEvent, self.easyfunc[1])
	end
	self.click_box.gameObject:SetActive(true)
	if self.GuideDataItem.Desc~=nil  then
		local width = UIUtil.GetTextWidth(self.unity_text, self.GuideDataItem.Desc)
		if self.GuideDataItem.TalkIcon ~= nil then
			self.talk_head_game:SetActive(true)
			self.talk_head:SetSpriteName(self.GuideDataItem.TalkIcon)
			self.contentUIText2.gameObject:SetActive(true)
			self.contentUIText1.gameObject:SetActive(false)
			self.talk_dir:SetActive(false)
			self.talkwidth = 693
			if width + 142 < 693 then
				self.talkheigth = 176
			else
				local height = UIUtil.GetTextHeight(self.unity_text, self.GuideDataItem.Desc)
				if height + 50 > 176 then
					self.talkheigth = height + 50
				else
					self.talkheigth = 176
				end
			end
			self.contentUIText2:SetText(self.GuideDataItem.Desc)
			self.talkType = 2
		else
			self.talk_head_game:SetActive(false)
			self.contentUIText2.gameObject:SetActive(false)
			self.contentUIText1.gameObject:SetActive(true)
			self.talk_dir:SetActive(self.GuideDataItem.HandleType~=-1)
			self.talkwidth = 447
			if width + 87 < 447 then
				self.talkheigth = 134
			else
				local height = UIUtil.GetTextHeight(self.unity_text, self.GuideDataItem.Desc)
				if height + 50 > 134 then
					self.talkheigth = height + 50
				else
					self.talkheigth = 134
				end
			end
			self.contentUIText1:SetText(self.GuideDataItem.Desc)
			self.talkType = 1
		end
		self.talk_spr.sizeDelta=Vector2.New(self.talkwidth,self.talkheigth)
		--self.talk_spr.gameObject:SetActive(true)
	else
		self.talkType = -1
		self.talk_spr.gameObject:SetActive(false)
	end
	self.mTarget=nil
	self:SetCurrenBG()
	if self.GuideDataItem.LoadRes then
		local targetbegin = CS.UnityEngine.GameObject.Find(self.GuideDataItem.LoadRes)
		--local pos=GetUIPos(self,targetbegin.transform.position)
		self.clone_game1 = CS.UnityEngine.GameObject.Instantiate(targetbegin.gameObject, self.transform)
		--print(pos.x.."//"..pos.y.."//"..pos.z)
		--pos=Vector3.New(pos.x,pos.y,0)

		local clone_game1_boxRect=UIUtil.FindComponent(self.clone_game1.transform,typeof(CS.UnityEngine.RectTransform),"");
		clone_game1_boxRect.anchorMin = Vector2.New(0,0.5);
		clone_game1_boxRect.anchorMax = Vector2.New(0,0.5);
		clone_game1_boxRect.pivot = Vector2.New(1,1);
		clone_game1_boxRect.anchoredPosition3D=Vector3.New(500,378)
		self.clone_game1.transform.localScale=Vector3.one
	end
	local EveType=self.GuideDataItem.HandleType
	if EveType==1 then
		--点击UI
		GetObj(self)
		local function FingerMover(self)
			if self.GuideDataItem.ClickTag ==1 then
				self:SetClick()
			elseif self.GuideDataItem.ClickTag == 2 then
				self:SetObjClick()
			else
				self:SetClick()
			end
			--显示手指动画  一般是点击事件
			if self.GuideDataItem.ShowFiger then
				self.click_box:SetInteractable(false)
				if self.GuideDataItem.FigerX and self.GuideDataItem.FigerY then
					self.figer_pos= Vector3.New(self.GuideDataItem.FigerX,self.GuideDataItem.FigerY,0)
				else
					self.figer_pos= Vector3.New(self.click_box.transform.localPosition.x+self.click_figerRect.sizeDelta.x/2,self.click_box.transform.localPosition.y-self.click_figerRect.sizeDelta.y/2,0)
					if self.click_boxRect.sizeDelta.x>=self.sceen_width and self.click_boxRect.sizeDelta.y>=self.sceen_height then
						self.figer_pos=Vector3.zero
					end
				end


				if self.GuideDataItem.ShowBeginPos then
					self.figer_beginpos=Vector3.zero
				else
					self.figer_beginpos=self.tx.gameObject.transform.localPosition
				end
				--self.figer_pos=Vector3.New(self.click_box.transform.localPosition.x,self.click_box.transform.localPosition.y,0)
				self.rightAnim = LuaTweener.UIMoveTo(self.tx.gameObject.transform,self.figer_beginpos,self.figer_pos,0.5,EaseFormula.OutQuad,function ()
					self.tx.gameObject.transform.localPosition = self.figer_pos
					self:FigerAniRepeat()
					self:GetTalkPos(self.GuideDataItem.TalkX,self.GuideDataItem.TalkY)
					self.click_box:SetInteractable(true)
					--if not self.blank then
					--	self.talk_spr.gameObject:SetActive(true)
					--end
					self.rightAnim = nil
				end)
			end
		end
		if self.GuideDataItem.TargetWait ~= nil then
			self.tx.gameObject:SetActive(false)
			TimerManager:GetInstance():SimpleTimerArgs(self.GuideDataItem.TargetWait,function()
				self.tx.gameObject:SetActive(true)
				FingerMover(self)
			end,nil,true)
		else
			FingerMover(self)
		end

	elseif EveType==2 then
		--战斗 推拽
		local find = GetObj(self)
		if not find then
			return
		end
		local function FingerMover(self)
			local coe =GetBaseUIPID(self)
			self.tx.gameObject.transform.position =Vector3.New(self.mTarget.transform.position.x*coe,self.mTarget.transform.position.y*coe,self.mTarget.transform.position.z*coe)
			self.click_box.transform.position = self.tx.gameObject.transform.position
			self.click_boxRect.sizeDelta = self.mTarget.transform.sizeDelta
			self.click_box.gameObject:SetActive(false)
			local pos=Vector3.New(self.tx.gameObject.transform.localPosition.x,self.tx.gameObject.transform.localPosition.y,0)
			local function GetArrayTargetPos(type)
				if type == 1 then
					return Vector3.New(-582.8949,-70.6,0)
				elseif type == 2 then
					return Vector3.New(-99.895,-70.6,0)
				else
					return Vector3.New(337.1,-70.6,0)
				end
			end
			--查找空位

			local tarPos= GetArrayTargetPos(GuideGroup:GetInstance().array_empty)
			self.repeatTime=0
			--self:ShowFigerAniRepeat(pos,tarPos)
			self.talk_spr.gameObject:SetActive(true)
			self:GetTalkPos(self.GuideDataItem.TalkX,self.GuideDataItem.TalkY)
			PosGroupMove(self,self.tx.gameObject.transform,{pos,tarPos},1,-1,true)
			--SetFourBG(self,Vector2.zero,Vector3.zero)
			self.BgImg[1].rectTransform.sizeDelta=Vector2.zero
			self.BgImg[2].rectTransform.sizeDelta=Vector2.zero
			self.BgImg[3].rectTransform.sizeDelta=Vector2.zero
			self.BgImg[4].rectTransform.sizeDelta=Vector2.zero
			self.guidebg:SetActive(false)
		end
		if self.GuideDataItem.TargetWait ~= nil then
			self.tx.gameObject:SetActive(false)
			TimerManager:GetInstance():SimpleTimerArgs(self.GuideDataItem.TargetWait,function()
				self.tx.gameObject:SetActive(true)
				FingerMover(self)
			end,nil,true)
		else
			FingerMover(self)
		end
		--self:SetClick()

	elseif EveType==3 then
		--全屏变黑 显示特效 多长时间后出现提示并点击背景
        self.fadeNum=0
        self.fadebool =true
		GetObj(self)
		self:SetClick()
		self:BgClick()
		self:GetTalkPos(self.GuideDataItem.TalkX,self.GuideDataItem.TalkY)
		--self.talk_spr.gameObject:SetActive(true)
		if self.GuideDataItem.ShowFiger then
			self.figer_pos= Vector3.New(self.click_box.transform.localPosition.x+self.click_figerRect.sizeDelta.x/2,self.click_box.transform.localPosition.y-self.click_figerRect.sizeDelta.y/2,0)
			self.tx.gameObject.transform.localPosition = self.figer_pos
		end
		if self.GuideDataItem.RearTime > 0 then
			self.RuningTimer = TimerManager:GetInstance():GetTimer(self.GuideDataItem.RearTime, self.OpeNextBtn , self,true)
			self.RuningTimer:Start()
		else
			self:OpeNextBtn()
		end
        self:ClickBoxFadeAni()
	elseif EveType==4  then
		--指引换位置
		self.click_box.gameObject:SetActive(false)
		local function GetArrayTargetPos(type)
			if type == 1 then
				return Vector3.New(-582.8949,-70.6,0)
			elseif type == 2 then
				return Vector3.New(-99.895,-70.6,0)
			else
				return Vector3.New(337.1,-70.6,0)
			end
		end
		--查找空位
		local tarPos= GetArrayTargetPos(self.GuideDataItem.TargetPos)
		local pos=GetArrayTargetPos(GuideGroup:GetInstance().array_empty)
		self.repeatTime=0
		PosGroupMove(self,self.tx.gameObject.transform,{pos,tarPos},1,-1,true)
		--SetFourBG(self,Vector2.zero,Vector3.zero)
		self.BgImg[1].rectTransform.sizeDelta=Vector2.zero
		self.BgImg[2].rectTransform.sizeDelta=Vector2.zero
		self.BgImg[3].rectTransform.sizeDelta=Vector2.zero
		self.BgImg[4].rectTransform.sizeDelta=Vector2.zero
		self.guidebg:SetActive(false)
	elseif EveType==5 then
		--纯对话引导
		self:GetTalkPos(self.GuideDataItem.TalkX,self.GuideDataItem.TalkY)
		self.click_box.gameObject:SetActive(false)
		self.ClickBGNext=true
		SetFourBG(self,Vector2.New(0,0),Vector2.New(0,0))

		if self.GuideDataItem.Load ~= nil then
			GameObjectPool:GetInstance():GetGameObjectAsync(self.GuideDataItem.Load,
					function(go,path)
						if not IsNull(go) then
							if self.GuideDataItem.Load == path then
								UIUtil.SetUIParent(go.transform,self.transform)
								go.transform:SetAsFirstSibling()
								self.load_game = go
								self.load_path = path
							else
								GameObjectPool:GetInstance():RecycleGameObject(path,go)
							end
						end
					end,self.GuideDataItem.Load)
		end
	elseif EveType==8 then
		if self.GuideDataItem.ClickTag > 0 then
			GetObj(self)
			self.click_box.gameObject:SetActive(false)
		end
		self.ClickBGNext=true
		SetFourBG(self,Vector2.New(0,0),Vector2.New(0,0))
	elseif EveType == 12 then
		self.fadeNum=0
		self.fadebool =true
		GetObj(self)
		self:SetClick()
		self:BgClick()
		--self.click_box.gameObject:SetActive(false)
		self:GetTalkPos(self.GuideDataItem.TalkX,self.GuideDataItem.TalkY)
		self.talk_spr.gameObject:SetActive(true)
		--获取子节点位置
		local child_count = self.mTarget.transform.childCount
		local offset = GetBaseUIPID(self)
		local pos_group = {}
		for i = 0, child_count - 1 do
			local child = self.mTarget.transform:GetChild(i)
			local pos = child.position
			table.insert(pos_group, Vector3.New((pos.x+70)*offset,(pos.y-70)*offset,pos.z*offset))
		end

		PosGroupMove(self,self.tx.gameObject.transform,pos_group,1,3)
		self.click_boxImg:SetAlphaVal(0)
	elseif EveType ==-1 then
		-- 就显示一句  全黑
		SetAllBlack(self)
		self.ClickBGNext=true
		self.click_box.gameObject:SetActive(false)
		self.talk_spr.gameObject:SetActive(true)
		self.tx.gameObject:SetActive(false)
		self.talk_spr.transform.localPosition=Vector3.zero
	end
	if self.GuideDataItem.Voice~=nil then
	--音效框架 需要单独列出来引导音效队列
	--AudioManager.Instance.PlayAudio (AudioType.GuideAudio, mCurGuideItem.Voice);
	end
end

local function OnEnable(self)
	base.OnEnable(self)

	self.click_box.gameObject:SetActive(false)
	self.easyfunc={}
	self.easyfunc[1] = Bind(self,self.GuideMidEvent)

	self:SetGuide()
	self:OnRefresh()
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
	self:AddUIListener(UIMessageNames.ON_GUIDE_FUN, self.GoOnGuide)
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- UI消息注销
	self:RemoveUIListener(UIMessageNames.ON_GUIDE_FUN,self.GoOnGuide)
end
local function OnDisable(self)
	base.OnDisable(self)
	if self.pos_move_tweener ~= nil then
		LuaTweener.StopTweener(self.pos_move_tweener)
		self.pos_move_tweener = nil
	end
	if self.RuningTimer ~= nil then
		self.RuningTimer:Stop()
		self.RuningTimer = nil
	end
	self.fadeimage=nil
	--self.click_box.gameObject:SetActive(true)
	if self.rightAnim~=nil then
		LuaTweener.StopTweener(self.rightAnim)
		self.rightAnim=nil
	end
	if self.FadeBG~=nil then
		for i = 1, #self.FadeBG do
			if self.FadeBG[i]~=nil then
				LuaTweener.StopTweener(self.FadeBG[i])
				self.FadeBG[i]=nil
			end
		end
	end
	ClearLoadGame(self)
end
local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)
end
local function OpeNextBtn(self)
	self.ClickBGNext=true
	self.ClickBgTip:SetActive(true)
end
local function GuideMidEvent (self)
	if self.GuideDataItem.MidEventType ==1 then
		Time.timeScale=0
		self.ClickBGNext=true
		--if self.fadebool then
		--	self.click_boxImg:SetAlphaVal(1)
		--end
	elseif self.GuideDataItem.MidEventType ==2 then
		if self.pos_move_tweener ~= nil then
			LuaTweener.StopTweener(self.pos_move_tweener)
			self.pos_move_tweener = nil
		end
		self:NextStep()
	else

	end
end

local function GuideClickEvent (self)
	if self.GuideDataItem.MidEventType ==1then
		Time.timeScale=1
		self.fadeimage=nil
	elseif self.GuideDataItem.MidEventType ==-1 then
		Logger.LogError("self.GuideDataItem.MidEventType ==-1")
	else


	end
end
UIGuideView.OnCreate = OnCreate
UIGuideView.OnEnable = OnEnable
UIGuideView.OnRefresh = OnRefresh
UIGuideView.OnDisable = OnDisable
UIGuideView.OnAddListener = OnAddListener
UIGuideView.OnRemoveListener = OnRemoveListener
UIGuideView.OnDestroy = OnDestroy
UIGuideView.NextStep = NextStep
UIGuideView.SetGuide = SetGuide
UIGuideView.SetClick = SetClick
UIGuideView.BgClick = BgClick
UIGuideView.GoOnGuide = GoOnGuide
UIGuideView.SetObjClick = SetObjClick
UIGuideView.SetCurrenBG = SetCurrenBG
UIGuideView.OpeNextBtn = OpeNextBtn
UIGuideView.NextStepCurrenSet = NextStepCurrenSet
UIGuideView.GetTalkPos = GetTalkPos
UIGuideView.GuideMidEvent = GuideMidEvent
UIGuideView.GuideClickEvent = GuideClickEvent
UIGuideView.ClickBoxFadeAni = ClickBoxFadeAni
UIGuideView.FigerAniRepeat = FigerAniRepeat
UIGuideView.GetWeakSkillClickPath= GetWeakSkillClickPath
return UIGuideView

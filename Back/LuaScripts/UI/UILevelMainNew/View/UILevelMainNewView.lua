
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UILevelMainNewView = BaseClass("UILevelMainNewView", UIBaseView)
local base = UIBaseView
local UIChapterWrapItem=require("UI.UILevelMainNew.Component.UIChapterWrapItem");
local EasyTouch = CS.HedgehogTeam.EasyTouch.EasyTouch
local CinemachineBlendDefinition = CS.Cinemachine.CinemachineBlendDefinition

local simple_btn_path="ParentLayout/simpleBtn";
local difficult_btn_path="ParentLayout/difficultBtn";
local left_btn_path="ParentLayout/LeftBtn";
local right_btn_path="ParentLayout/RightBtn";
local slider_img_path="ParentLayout/RewardList/score_UISlider/Handle";
local reward_list_path="ParentLayout/RewardList/BoxList";
local star_total_txt_path="ParentLayout/RewardList/totalStar/star_UIText";
local chapter_group_path="ParentLayout/ChapterList";
local select_btn_obj_path="ParentLayout/selectBtn";
local select_pass_obj_path="ParentLayout/passSelectObj";
local level_name_layout_path="LevelNameLayout";
local parent_layout_path="ParentLayout";
local door_btn_path="ParentLayout/doorBtn";
local box_reward_path="LevelBoxRewardLyouat";

local mask_img_path="maskImg";

local chapter_prb_path="Art/Scenes/scene_Chapters01/Pefabs/Chapters0"
--曹焱兵预设
local TargetObjet = "Art/Scenes/scene_Map_loading02/Pefabs/ZHUCHENG_CYB+MTC.prefab"
--提示对话框
local BattleDialogTip = "UI/Prefabs/Other/LevelDialogTip.prefab"
local StaticGlobalData = DataUtil.GetData("global")

--设置父物体
local function SetChildParent(_child,_parent,_index)
	_child.transform:SetParent(_parent.transform);
	_child.transform.localScale=Vector3.New(1,1,1);
	_child.transform.localPosition=Vector3.New(0,0,0);
	_child.transform:SetSiblingIndex(_index);
	_child.transform.gameObject:SetActive(true);
end

local function GetUIPos(self,pos)
	local layer =  UIManager:GetInstance():GetLayer(UILayers.BackgroudLayer.Name)
	self.size_delta =  UIUtil.FindComponent(layer.transform,typeof(CS.UnityEngine.RectTransform)).sizeDelta
	if IsNull(self.cam) then
		local cam_game=nil;
		cam_game= CS.UnityEngine.GameObject.FindGameObjectWithTag("MainCamera")
		if not IsNull(cam_game) and cam_game then
			self.cam = cam_game:GetComponent(typeof(CS.UnityEngine.Camera));
		end
	end
	local lpos = nil
	if not IsNull(self.cam) then
		lpos = self.cam:WorldToViewportPoint(pos)
		lpos = Vector3.New((lpos.x - 0.5)*self.size_delta[0], (lpos.y - 0.5)*self.size_delta[1], 0)

	else
		--Logger.Log("飘字差不多主相机")
		lpos = Vector3.New(0,0,0)
	end
	return lpos
end

local function RecyleCYB(self)
	if self.targetObject ~= nil then
		GameObjectPool:GetInstance():RecycleGameObject(TargetObjet,self.targetObject );
		self.targetObject = nil
	end
	if self.dialogTip ~= nil then
		GameObjectPool:GetInstance():RecycleGameObject(BattleDialogTip, self.dialogTip)
		self.dialogTip = nil
	end
	if self.dialogTipTimer ~= nil then
		self.dialogTipTimer:Stop()
		self.dialogTipTimer = nil
	end
end

local function Recyle(self)

	if self.levelPrbList~=nil and #self.levelPrbList>0 then
		for i, v in ipairs(self.levelPrbList) do
			GameObjectPool:GetInstance():RecycleGameObject(v.path,v.go );
		end
		self.levelPrbList={};
	else
		self.levelPrbList={};
	end
	RecyleCYB(self)
end

--显示章节宝箱信息
local function ShowBoxInfo(self)
	self.boxDataList={};
	local boxIndex=1;
	for i, v in pairs(self.curChapterData.boxData) do
		if boxIndex<= #self.rewardList then
			self.rewardList[boxIndex].starTxt:SetText(v._id);
			local _lingqu = 0;
			self.rewardList[boxIndex].effectObj.gameObject:SetActive(false);
			if v._state == 0 then --未领取
				self.rewardList[boxIndex].icon:SetMat(nil)
				if self.curChapterData.curStar >= v._id then
					_lingqu = 1
					self.rewardList[boxIndex].icon:SetSpriteName("ui_t_c2_150")
					self.rewardList[boxIndex].effectObj.gameObject:SetActive(true);
					self.rewardList[boxIndex].anim.enabled=true;
                    self.rewardList[boxIndex].anim:Play("fx_ui_c_RewardList_frame_UIImage");
				else
					self.rewardList[boxIndex].icon:SetSpriteName("ui_t_c2_150")
                    self.rewardList[boxIndex].anim:Rebind();
					self.rewardList[boxIndex].anim.enabled=false;
				end
			else
				self.rewardList[boxIndex].icon:SetSpriteName("ui_t_c2_192")

                self.rewardList[boxIndex].anim:Rebind();
				self.rewardList[boxIndex].anim.enabled=false;
				--self.rewardList[boxIndex].icon:SetMat(self.grayMat);
				_lingqu=2;--已领取
			end
			table.insert(self.boxDataList,{chapterId=v._chapterid,id=v._id,lingqu=_lingqu});
		end

		boxIndex=boxIndex+1;
	end
end

--切换章节显示
local function SwitchChapterShow(self)
	for i, v in ipairs(self.chapterList) do
		local dataBeginIndex= self.chapterShowIndex*5+i;
		v:OnRefresh(dataBeginIndex,self.model.curChapterListData[dataBeginIndex]);
	end
	local maxIndex=math.ceil(#self.model.curChapterListData/5)-1;
	self.leftBtn.transform.gameObject:SetActive(self.chapterShowIndex>0);
	self.rightBtn.transform.gameObject:SetActive(self.chapterShowIndex<maxIndex);
end



--显示章节数据
local function ShowChapterInfo(self,_boo)
	--暂时按策划的要求改为false
	self.doorBtn.gameObject:SetActive(false);

	--self.doorBtn.gameObject:SetActive(self.model.curChapterListData[self.model.curSelectChapterIndex].trilPortal and self.model.curChapterListData[self.model.curSelectChapterIndex].trilPortal>0);
	SwitchChapterShow(self);
	self.curChapterData=self.model.curChapterListData[self.model.curSelectChapterIndex];

	if self.curChapterData~=nil then
		self.sliderImg:SetFillVal(self.curChapterData.curStar/self.curChapterData.totalStar);
		self.totalStarText:SetText(string.format("%s/%s",self.curChapterData.curStar,self.curChapterData.totalStar));

		ShowBoxInfo(self)
	end

end

--普通，困难按钮点击
local function TypeBtnSelect(self,_child,_parent,_slibingIndex,_type)
	SetChildParent(_child,_parent,_slibingIndex);
	UIManager:GetInstance():Broadcast(UIMessageNames.UI_LEVEL_SET_SELECT_TYPE,_type,true);
end
--关闭按钮点击
local function CloseBtnClick(self)
	LJAudioManger:GetInstance():PlayMusic(LJAudioManger.MAIN_CITY_BG_MUSIC);

	self.cinemachine.Priority = 10;
	--local mainAsset=SceneManager:GetInstance().scenes[SceneConfig.HomeScene.Name].scene_asset;
	--if not IsNull(mainAsset)  then
	--	CS.SceneDataUtilities.ConfigLitAndShadow(mainAsset,Vector3.New(0,0,0),Vector3.New(0,0,0))
	--end
	local mainSceneName=SceneManager:GetInstance().scenes[SceneConfig.HomeScene.Name].scene_name;
	if not string.isNilOrEmpty(mainSceneName) then
		SceneLoadManager:GetInstance():ConfigLitAndShadow(mainSceneName,Vector3.zero,Vector3.zero)
	end
	if not IsNull(self.singleChapterPrb ) then
		self.singleChapterPrb:SetActive(false);
	end
end

--点击领奖
local function OnTargetBtnClick(self)
	if self.isGetAward then
		self.ctrl:TargetAwardRequest(self.model.targetData)
	else
		--todo 打开海报
		UIManager:GetInstance():OpenWindow(UIWindowNames.UITargetAward,self.model.targetData)
	end
end


--获取领取宝箱的状态
local function GetBoxTakeState(_levelId)
	local state=0;
	local rewardIdList={};
	local pass = MapData:GetInstance():CheckPassLevel(_levelId)
	if pass then
		state=1;
		if MapData:GetInstance().levelRewards~=nil then
			for i, v in ipairs(MapData:GetInstance().levelRewards) do
				rewardIdList[v]=i;
			end
		end
		if rewardIdList[_levelId] then
			state=2;
		end
	end
	return state;
end
--关卡宝箱点击
local function OnPassBoxLvClick(self,_boxList,_boxId,_state,_levelId)
	local state=GetBoxTakeState(_levelId);
	if state==0 then--不可领取
		self.ctrl:ShowPassBoxTips(_boxList,_boxId,state,_levelId);
	elseif state==1 then--可领取
		self.ctrl:LevelChestRequest(_levelId);
	elseif state==2 then--已领取
		self.ctrl:ShowPassBoxTips(_boxList,_boxId,state,_levelId);
	end
end

local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.maksObj=UIUtil.FindTrans(self.transform,mask_img_path);
	self.maksObj.transform.gameObject:SetActive(false);
	self.doorBtn=self:AddComponent(UIButton,door_btn_path);
	self.doorBtn:SetOnClick(function()
		self.ctrl:StartTraining(self.model.curChapterListData[self.model.curSelectChapterIndex].trilPortal);
	end)
	self.tip_obj=UIUtil.FindTrans(self.transform,"TipsObj")
	self.tip_obj.gameObject:SetActive(false)
	self:AddComponent(UICanvas,"TipsObj",3)
	--[[
	self.unity_canvas = UIUtil.FindComponent(self.tip_obj.transform, typeof(CS.UnityEngine.Canvas))
	if IsNull(self.unity_canvas) then
	   self.unity_canvas =self.tip_obj.gameObject:AddComponent(typeof(CS.UnityEngine.Canvas))
	end
	self.unity_canvas.overrideSorting = true
--]]
	self.parentLayout=UIUtil.FindTrans(self.transform,parent_layout_path);
	self.parentLayout.transform.gameObject:SetActive(false);
	self.isPlay=false;
	self.resourceBarParent=UIUtil.FindTrans(self.transform,"ParentLayout");
	ResourceBarComponentManager:GetInstance():CreatResourceBarComponent(self.resourceBarParent,UIWindowNames.UILevelMainNew,ResourceBarType.PASS,self);
	UIUtil.CreatCloseBtnComponent(self,self.resourceBarParent,function(go) self.closeComponent=go end,function()
		if self.model.isBattleReturn then
			UIUtil.BackHomeMain();
		else
			CloseBtnClick(self);
			--UIManager:GetInstance():Broadcast(UIMessageNames.UIMAINCITY_BACK_SCENE,"UILevelMain")
			UIManager:GetInstance():CloseWindow(UIWindowNames.UILevelMainNew);
		end
	end,function()
		UIManager:GetInstance():Broadcast(UIMessageNames.UIMAINCITY_BACK_SCENE,"UILevelMain")
		CloseBtnClick(self);
	end ,DataUtil.GetClientText(100129),false,2);


	local bgImg =self:AddComponent(UIImage,"ParentLayout",AtlasConfig.DynamicTex);
	self.grayMat=bgImg:GetMat()
	self.selectBtnObj=UIUtil.FindTrans(self.transform,select_btn_obj_path);
	self.passSelectObj=UIUtil.FindTrans(self.transform,select_pass_obj_path);
	self.chapterWrapGroup=self:AddComponent(UIBaseContainer,chapter_group_path);
	self.chapterList={};
	local chapterCount=self.chapterWrapGroup.transform.childCount;
	for i = 0,chapterCount-1 do
		local tempTrans=self.chapterWrapGroup.transform:GetChild(i);
		local chapterItem=UIChapterWrapItem.New(self,tempTrans.gameObject);
		chapterItem:OnCreate();
		table.insert(self.chapterList,chapterItem);
	end

	self.levelNameLayout=self:AddComponent(UIBaseContainer,level_name_layout_path);
	self.levelNames={};
	local count=self.levelNameLayout.transform.childCount;
	for i = 0, count-1 do
		local tempItem=self.levelNameLayout:AddComponent(UIBaseContainer,i);
		local nameText=tempItem:AddComponent(UIText,"levelText");
		table.insert(self.levelNames,{obj=tempItem,nameTxt=nameText});
	end

	self.simpleBtn=self:AddComponent(UIButton,simple_btn_path);
	self.simpleBtn:SetOnClick(function()
		if self.model.curSelectType~=1 then
			TypeBtnSelect(self,self.selectBtnObj,self.simpleBtn,0,1);
		end

	end)
	self.difficultBtn=self:AddComponent(UIButton,difficult_btn_path);
	self.difficultBtn:SetOnClick(function()
		if self.model.curSelectType~=2 then
			TypeBtnSelect(self,self.selectBtnObj,self.difficultBtn,0,2);
		end

	end)
	self.leftBtn=self:AddComponent(UIButton,left_btn_path);
	self.leftBtn:SetOnClick(function()
		self.chapterShowIndex=self.chapterShowIndex-1<0 and 0 or self.chapterShowIndex-1;
		SwitchChapterShow(self);
	end)
	self.rightBtn=self:AddComponent(UIButton,right_btn_path);
	self.rightBtn:SetOnClick(function()
		local maxIndex=math.ceil(#self.model.curChapterListData/5)-1;
		self.chapterShowIndex=self.chapterShowIndex+1>maxIndex and maxIndex or self.chapterShowIndex+1;
		SwitchChapterShow(self);

	end)
	self.sliderImg=self:AddComponent(UIImage,slider_img_path,"",AtlasConfig.DynamicTex);
	self.rewardLayout=self:AddComponent(UIBaseContainer,reward_list_path);
	count=self.rewardLayout.transform.childCount;
	self.rewardList={};
	for i = 0, count-1 do
		local tempItem=self.rewardLayout:AddComponent(UIBaseContainer,i);
		local tempIcon=tempItem:AddComponent(UIImage,"award_UIImage",AtlasConfig.DynamicTex);
		local starText=tempItem:AddComponent(UIText,"star_UIText");
		local tempBtn=tempItem:AddComponent(UIButton,"");
		local tempEffect=UIUtil.FindTrans(tempItem.transform,"FX_ui_c_frame_UIImage");
        local tempAnim=UIUtil.FindComponent(tempItem.transform,typeof(CS.UnityEngine.Animator),"");

		tempBtn:SetOnClick(function()
			local boxData=self.boxDataList[i+1];
			if boxData.lingqu==1 then --可领取
				self.ctrl:SendGetChapterChestRequest(boxData.chapterId,boxData.id);
			elseif boxData.lingqu==0 then --不可领取
				self.ctrl:ShowBoxTips(boxData.chapterId,boxData.id);
			elseif boxData.lingqu==2 then--已领取
				if GuideGroup:GetInstance().Runing then
					GuideManager:GetInstance():SetGuideRecode(GuideGroup:GetInstance().CurType)
					GuideGroup:GetInstance():NextStep()
					UIUtil.BackHomeMain()
				else
					self.ctrl:ShowBoxTips(boxData.chapterId,boxData.id,2);
				end
				--UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100130));
			end
		end)
		table.insert(self.rewardList,{icon=tempIcon,starTxt=starText,effectObj=tempEffect,anim=tempAnim});
	end
	self.totalStarText=self:AddComponent(UIText,star_total_txt_path);

	----目标奖励
	self.targetRewardPanel = UIUtil.FindTrans(self.transform,"ParentLayout/TargetRewardPanel")
	--self.HandleImg = self:AddComponent(UIImage,"ParentLayout/TargetRewardPanel/targetUISlider/targetHandle",AtlasConfig.DynamicTex)
	self.targetIcon = self:AddComponent(UIImage,"ParentLayout/TargetRewardPanel/targetIcon",AtlasConfig.DynamicTex)
	self.targetFrame = self:AddComponent(UIImage,"ParentLayout/TargetRewardPanel/targetFrameBtn",AtlasConfig.DynamicTex)
	--self.targetEffect=UIUtil.FindTrans(self.transform,"ParentLayout/TargetRewardPanel/FX_ui_newcard_getSSR_stand_suipian");
	self.targetQualityImg=self:AddComponent(UIImage,"ParentLayout/TargetRewardPanel/QualityImg",AtlasConfig.DynamicTex);
	self.targetBtn = self:AddComponent(UIButton,"ParentLayout/TargetRewardPanel/targetFrameBtn")
	self.targetBtn:SetOnClick(function ()
		LJAudioManger:GetInstance():PlayOtherVoice("UI_CommonClick")
		OnTargetBtnClick(self)
	end)
	self.targetSlider = self:AddComponent(UISlider,"ParentLayout/TargetRewardPanel/targetUISlider")
	self.targetScore = self:AddComponent(UIText,"ParentLayout/TargetRewardPanel/targetScore")
	self.targetInfo = self:AddComponent(UIText,"ParentLayout/TargetRewardPanel/Image/targetInfo")
	self.targetSkillIcon = self:AddComponent(UIImage,"ParentLayout/TargetRewardPanel/targetFrameBtn/targetSkillIcon",AtlasConfig.DynamicTex)
	self.anim = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.Animator),"ParentLayout/TargetRewardPanel/Image")
	self.effectActive = UIUtil.FindTrans(self.transform,"ParentLayout/TargetRewardPanel/targetFrameBtn/fx_ui_TargetRewardPanel_frameBtn")

    self.boxRewardList={};
    local boxRewardParent=self:AddComponent(UIBaseContainer,box_reward_path);
    local count=boxRewardParent.transform.childCount;
    for i = 0, count-1 do
        local tempObj=boxRewardParent:AddComponent(UIBaseContainer,i);
        local tempIcon=tempObj:AddComponent(UIImage,"award_UIImage",AtlasConfig.DynamicTex);
        local tempBtn=tempObj:AddComponent(UIButton,"");
		local tempEffect=UIUtil.FindTrans(tempObj.transform,"FX_ui_c_frame_UIImage");
		local tempAnim=UIUtil.FindComponent(tempObj.transform,typeof(CS.UnityEngine.Animator),"");
		local index=i+1;
        tempBtn:SetOnClick(function()
			OnPassBoxLvClick(self,self.curChapterData.extrBox,self.curChapterData.levelData[index]._data.LvBoxId,0,self.curChapterData.levelData[index]._id);
        end)
		table.insert(self.boxRewardList,{obj=tempObj,icon=tempIcon,effectObj=tempEffect,anim=tempAnim});
    end
end

--获取当前章节预设名字
local function GetChapterLoadSceneName(self)
	return self.model.curChapterListData[self.selectChapterIndex].sceneName;
end


--显示宝箱奖励
local function ShowLvBoxReward(self)
	for i, v in ipairs(self.boxRewardList) do
		v.obj.transform.gameObject:SetActive(self.curChapterData.levelData[i]~=nil);
		if self.curChapterData.levelData[i]~=nil then
			v.obj.transform.gameObject:SetActive(self.curChapterData.levelData[i]._data.LvBoxId~=nil and self.curChapterData.levelData[i]._data.LvBoxId>0);
			if self.curChapterData.levelData[i]._data.LvBoxId then
				local levelId=self.curChapterData.levelData[i]._id;
				local state=GetBoxTakeState(levelId);
				if state==0 then--不可领取
					self.boxRewardList[i].icon:SetSpriteName("ui_t_c2_686")
					self.boxRewardList[i].anim:Rebind();
					self.boxRewardList[i].anim.enabled=false;
					self.boxRewardList[i].effectObj.gameObject:SetActive(false);
				elseif state==1 then--可领取
					self.boxRewardList[i].icon:SetSpriteName("ui_t_c2_686")
					self.boxRewardList[i].effectObj.gameObject:SetActive(true);
					self.boxRewardList[i].anim.enabled=true;
					self.boxRewardList[i].anim:Play("fx_ui_c_RewardList_frame_UIImage");
				elseif state==2 then--已领取
					self.boxRewardList[i].icon:SetSpriteName("ui_t_c2_687")
					self.boxRewardList[i].anim:Rebind();
					self.boxRewardList[i].anim.enabled=false;
					self.boxRewardList[i].effectObj.gameObject:SetActive(false);
					--self.rewardList[boxIndex].icon:SetMat(self.grayMat);
				end
			end
		end
	end
end

--设置单个关卡的显示
local function ShowSingleLevelInfo(self)
	self.can_tip=false
	self.tip_obj.gameObject:SetActive(false)
	ShowLvBoxReward(self);
	for i, v in ipairs(self.levelNames) do
		self.levelNames[i].obj:SetActive(self.curChapterData.levelData[i]~=nil);
		--self.levelPrbList[i].onObj.gameObject:SetActive(self.curChapterData.levelData[i]~=nil);
		--v.offObj.gameObject:SetActive(self.curChapterData.levelData[i]~=nil);
		if self.curChapterData.levelData[i]~=nil and self.levelPrbList ~= nil and self.levelPrbList[i] ~= nil then
			local singleLvData=self.curChapterData.levelData[i];
			local open = MapData:GetInstance():CheckOpenLevel(singleLvData._id);
			local levelName=open and string.format("<color=#white>%s-%s</color>",self.selectChapterIndex,i) or
					string.format("<color=#878787>%s-%s</color>",self.selectChapterIndex,i)
			v.nameTxt:SetText(levelName);
			---当前关卡为奖励关卡则放曹焱兵预设
			local targetData = self.model.targetData  --and 10109 > self.model.curTypeMaxLevelId
			if false and targetData ~= nil and targetData.lvId == 10109 and 10109 == singleLvData._id and self.model.curTypeMaxLevelId >= 10102 and self.targetObject == nil then
				GameObjectPool:GetInstance():GetGameObjectAsync(TargetObjet,function (go)
					if not IsNull(go) then
						if self.targetObject ~= nil then
							GameObjectPool:GetInstance():RecycleGameObject(TargetObjet, go);
							return
						end
						go.name = "CYB"
						go.transform:SetParent(self.levelPrbList[i].go.transform.parent);
						go.transform.localPosition=Vector3.New(6,0,0);
						local colider=UIUtil.FindComponent(go.transform,typeof(CS.UnityEngine.BoxCollider));
						if colider==nil or IsNull(colider) then
							colider= go.transform.gameObject:AddComponent(typeof(CS.UnityEngine.BoxCollider));
							colider.center=Vector3.New(0,1.5,3);
							colider.size=Vector3.New(5.5,5.6,5);
						end
						self.targetObject = go;
						GameObjectPool:GetInstance():GetGameObjectAsync(BattleDialogTip,function(go)
							if not IsNull(go) then
								local layer =  UIManager:GetInstance():GetLayer(UILayers.BackgroudLayer.Name)
								go.transform:SetParent(layer.transform)
								local tipText = UIUtil.FindText(go.transform,"Tip")
								local levelList = StaticGlobalData[165].valueNA
								for i = #levelList, 1, -1 do
									if self.model.curTypeMaxLevelId >= levelList[i] then
										tipText.text = StaticGlobalData[166].valueSA[i]
										break
									end
								end
								self.dialogTip = go
								self.dialogTip.transform.localScale = Vector3.New(1,1,1)
								self.dialogTip:SetActive(false)
								local pos = self.targetObject.transform.position;
								local tagShowPos = GetUIPos(self, pos)
								self.dialogTip.transform.localPosition = Vector3.New(tagShowPos.x, tagShowPos.y + 100, 0)
								self.timeRepeat = function(self)
									self.dialogTip:SetActive(not self.dialogTip.activeInHierarchy)
									self.dialogTipTimer:Stop()
									self.dialogTipTimer = nil
									if self.dialogTip.activeInHierarchy then
										self.dialogTipTimer = TimerManager:GetInstance():GetTimer(10,self.timeRepeat,self)
										self.dialogTipTimer:Start()
									end
								end
								self.dialogTipTimer = TimerManager:GetInstance():GetTimer(2,self.timeRepeat,self)
								self.dialogTipTimer:Start()
							end
						end)
					end
				end)
			end

			--local pass = MapData:GetInstance():CheckPassLevel(singleLvData._id);
			self.levelPrbList[i].onObj.gameObject:SetActive(open);
			self.levelPrbList[i].closeObj.gameObject:SetActive(not open);
			for a, b in ipairs(self.levelPrbList[i].openStarList) do
				b.gameObject:SetActive(a<=singleLvData._star);
			end
			if singleLvData._star>0 then
				for a, b in ipairs(self.levelPrbList[i].offStarList) do
					b.gameObject:SetActive(a>singleLvData._star);
				end
			else
				for a, b in ipairs(self.levelPrbList[i].offStarList) do
					b.gameObject:SetActive(false);
				end
			end

			if (singleLvData._star<=0 and (i==1 or self.curChapterData.levelData[i-1]._star>0) ) and open and not GuideGroup:GetInstance().Runing then
				self.can_tip=true
				self.tip_obj:SetParent(self.levelNames[i].obj.transform)
				self.tip_obj.localPosition=Vector3.New(0,140,0)
				self.tip_obj.gameObject:SetActive(true)
			end
		end
	end

end

--设置关卡名字位置
local function SetLevelNamePos(self)
	for i, v in ipairs(self.levelPrbList) do
		local pos=v.onObj.transform.position;
		local uiPos=GetUIPos(self,pos);
		if self.levelNames[i]~=nil then
			self.levelNames[i].obj.transform.localPosition=uiPos;
		end
	end
	if self.dialogTip ~= nil and self.targetObject ~= nil then
		local pos = self.targetObject.transform.position;
		local tagShowPos = GetUIPos(self, pos)
		self.dialogTip.transform.localPosition = Vector3.New(tagShowPos.x, tagShowPos.y + 100, 0)
	end
end

--设置宝箱奖励位置
local function SetBoxRewardPos(self)
	for i, v in ipairs(self.boxRewardList) do
		if self.levelPrbList[i]~=nil  then
			if self.curChapterData.levelData[i]._data.LvBoxId~=nil and self.curChapterData.levelData[i]._data.LvBoxId>0 then
				local offPos= self.curChapterData.extrBox[self.curChapterData.levelData[i]._data.LvBoxId].Off;
				local pos=self.levelPrbList[i].onObj.transform.position;
				local uiPos=GetUIPos(self,pos);
				uiPos.x= uiPos.x+offPos.X;
				uiPos.y=uiPos.y+offPos.Y;
				v.obj.transform.localPosition=uiPos;
			end
		end
	end
end


local function Update(self)
	if self.isPlay then
		if Time.realtimeSinceStartup-self.curTime>self.animTime then
			self.isPlay=false;
			self.lineAnim.speed = 0;
			self.lineAnim:Play(string.format("%s_line_cc",GetChapterLoadSceneName(self)),0,self.animTime);
		end
	end
	if self.levelPrbList~=nil then
		SetLevelNamePos(self);
	end
	if self.levelPrbList~=nil then
		SetBoxRewardPos(self);
	end
end

--获取当前关卡在本章的索引
local function GetLvIdAtCurChapterIndex(self,_id)
	local index=0;
	for i, v in ipairs(self.curChapterData.levelData) do
		if v._id==_id then
			index=i;
			break;
		end
	end
	return index;
end

--获取当前路线动画播放的最终索引
local function GetCurLineAnimEndId(self)
	local animIndex=0;
	if MapData:GetInstance():CheckPassChapter(self.curChapterData.id) then
		local length=#self.curChapterData.levelData
		animIndex=self.curChapterData.levelData[length]._data.Pos;
	else
		animIndex=self.model.curTypeMaxLevelId==-1 and 1 or self.curChapterData.levelData[GetLvIdAtCurChapterIndex(self,self.model.curTypeMaxLevelId)+1]._data.Pos;
	end
	return animIndex;
end


--播放路线动画
local function PlayLineAnim(self)
	self.lineAnim:Rebind();
	self.lineAnim.speed = 0;
	if self.lineTimer~=nil then
		TimerManager:GetInstance():SimpleTimerStop(self.lineTimer);
	end
	self.lineTimer= TimerManager:GetInstance():SimpleTimerArgs(0.5,function ()
		self.lineTimer=nil;
		local endAnimIndex= GetCurLineAnimEndId(self);
		self.curTime=Time.realtimeSinceStartup;
		self.animTime=(endAnimIndex * 2) / 30;
		local animClips=self.lineAnim.runtimeAnimatorController.animationClips
		local animName=string.format("%s_line_cc",GetChapterLoadSceneName(self));
		for i = 0, animClips.Length-1 do
			if animClips[i].name==animName then
			self.animTime=self.animTime*(1/animClips[i].length);
			end
		end
		if endAnimIndex==1 then
			self.lineAnim.speed =0;
			self.lineAnim:Play(animName,0,0);
		else
			if self.model.lineAnimType==1 then
				self.lineAnim:Play(animName,0,0);
				self.lineAnim.speed = 1;
			end
		end
		self.isPlay=true;
	end,nil,true)
end

--加载关卡节点
local function  LoadNodeList(self)
	Recyle(self)
	for i, v in ipairs(self.curChapterData.levelData) do
		local _data=v._data;
		local nodePath=string.format("Art/Scenes/scene_Chapters01/Pefabs/%s.prefab",_data.Modle);
		GameObjectPool:GetInstance():GetGameObjectAsync(nodePath,function (go)
			if not IsNull(go) then
				go.transform:SetParent(self.nodeParentList[_data.Pos]);
				go.transform.localPosition=Vector3.New(0,0,0);
				go.transform.localScale=Vector3.New(1,1,1);
				local tempOn=UIUtil.FindTrans(go.transform,string.format("%s_on",_data.Modle));
				local tempOff=UIUtil.FindTrans(go.transform,string.format("%s_off",_data.Modle));
				local tempClose=UIUtil.FindTrans(go.transform,string.format("%s_off/%s_cc",_data.Modle,_data.Modle));
				local offStar=UIUtil.FindTrans(go.transform,string.format("%s_off/Chapters_xing01_cc",_data.Modle));
				tempClose.parent.gameObject:SetActive(true);
				local offStarList={};
				local starCount=offStar.transform.childCount;
				for k = 0, starCount-1 do
					table.insert(offStarList,offStar.transform:GetChild(k));
				end

				local starList={};
				local starParent=UIUtil.FindTrans(tempOn.transform,"Chapters_xing01_cc");
				local starCount=starParent.transform.childCount;
				for k = 0, starCount-1 do
					table.insert(starList,starParent.transform:GetChild(k));
				end
				table.insert(self.levelPrbList,{go=go,path=nodePath,onObj=tempOn,closeObj=tempClose,openStarList=starList,offObj=tempOff,index=v._id,offStarList=offStarList});
				if #self.levelPrbList==#self.curChapterData.levelData then
					table.sort(self.levelPrbList,function(a,b) return a.index<b.index  end)
					ShowSingleLevelInfo(self);
				end
			end
		end)
	end
end

--加载关卡预设
local function LoadChapterPrb(self)
	self.chapterPrbPath=string.format("Art/Scenes/scene_Chapters01/Pefabs/%s.prefab",GetChapterLoadSceneName(self))
	GameObjectPool:GetInstance():GetGameObjectAsync(self.chapterPrbPath,function (go)
		if not IsNull(go) and not IsNull(self.camParent) then
			self.singleChapterPrb=go;
			go.transform:SetParent(self.camParent);
			go.transform.localPosition=Vector3.New(0,0,0);
			go.transform.localScale=Vector3.New(1,1,1);
			--CS.SceneDataUtilities.ConfigLitAndShadow(self.asset,Vector3.New(0,0,0), Vector3.New(0,0,0))
			self.lineAnim=UIUtil.FindComponent(go.transform,typeof(CS.UnityEngine.Animator),string.format("%s_line_cc",GetChapterLoadSceneName(self)));
			PlayLineAnim(self,1);
			local levelParentNode=UIUtil.FindTrans(go.transform,string.format("%s_zuobiao01_cc",GetChapterLoadSceneName(self)));
			if not IsNull(levelParentNode) then
				local count=levelParentNode.transform.childCount;
				self.nodeParentList={};
				for i = 0, count-1 do
					local tempLevel=levelParentNode.transform:GetChild(i);
					local colider=UIUtil.FindComponent(tempLevel.transform,typeof(CS.UnityEngine.BoxCollider));
					if colider==nil or IsNull(colider) then
						colider= tempLevel.transform.gameObject:AddComponent(typeof(CS.UnityEngine.BoxCollider));
						colider.center=Vector3.New(0,2.3,0);
						colider.size=Vector3.New(3,5.6,1);
					end
					table.insert(self.nodeParentList,tempLevel);
				end
				LoadNodeList(self);
			end
			if not self.model._isHide then
				if GuideGroup:GetInstance().Runing then
					DataManager:GetInstance():Broadcast(DataMessageNames.UI_Guide_NeedEvent)
				end
			end

		end
	end)
end


--加载场景
local function CoLoadScene(self)

	--if IsNull( self.asset) or CS.SceneDataUtilities.GetSceneIndex(self.asset.name)< 0 then
	if
		string.isNilOrEmpty(self.sceneDataPath)
		or SceneLoadManager:GetInstance():GetSceneIndex(self.sceneDataPath) < 0
	then
		self.sceneDataPath="Art/Scenes/scene_Chapters01/scene_Chapters01/Chapters01_sceneData.asset";
		local function ProgressCallback(co, progress)
			--assert(progress <= 1.0, "What's the fuck!!!")
			return coroutine.yieldcallback(co,  progress )
		end
		--self.asset = ResourcesManager:GetInstance():CoLoadSceneAsync(sceneDataPath, typeof(CS.SceneDataAsset), ProgressCallback)
		--local v1 = CS.SceneDataUtilities.GeneratScene(self.asset,true)
		--coroutine.waitwhile(function ()
		--	return	v1:MoveNext()
		--end)
		SceneLoadManager:GetInstance():CoGenerateScene(self.sceneDataPath,ProgressCallback,true)

		if IsNull(self.camObj) then
			self.camObj=CS.UnityEngine.GameObject("chapterCam",typeof(CS.Cinemachine.CinemachineVirtualCamera));

			--local rootObj=CS.SceneDataUtilities.FindSceneRoot(self.asset);
			local rootObj=SceneLoadManager:GetInstance():FindSceneRoot(self.sceneDataPath)
			if not IsNull(rootObj) then
				self.camParent=UIUtil.FindTrans(rootObj.transform,"Environment");
				self.camObj.transform:SetParent(self.camParent);
				self.cinemachine=UIUtil.FindComponent(self.camObj,typeof(CS.Cinemachine.CinemachineVirtualCamera),"");
				--CS.SceneDataUtilities.ConfigBattleCam(self.cinemachine,Vector3.New(-2,38,-69),Vector3.New(45,0,0),60,Vector3.New(0,0,0));
				SceneLoadManager:GetInstance():ConfigBattleCam(self.cinemachine,Vector3.New(-8,38,-70),Vector3.New(45,0,0),60,Vector3.New(0,0,0))
				self.cinemachine.Priority = 60;
				self.camInitPos=self.camObj.transform.position;
				LoadChapterPrb(self);
                --CS.SceneDataUtilities.ConfigLitAndShadow(self.asset,Vector3.New(0,0,0), Vector3.New(0,0,0))
				SceneLoadManager:GetInstance():ConfigLitAndShadow(self.sceneDataPath,Vector3.zero,Vector3.zero)
                --SetMainCamPos(self);
			end
		end

	end
	return coroutine.yieldbreak();
end
local function EasyTouchSwipe(self,gesture)
	if not IsNull(self.camObj) then
		local camPos=self.camObj.transform.localPosition;
		local finalPosX=camPos.x-gesture.deltaPosition.x*0.1;
		local finalPosZ=camPos.z-gesture.deltaPosition.y*0.1;
		finalPosX=finalPosX>25 and 25 or finalPosX;
		finalPosX=finalPosX<-30 and -30 or finalPosX;
		finalPosZ=finalPosZ>-45 and -45 or finalPosZ;
		finalPosZ=finalPosZ<-80 and -80 or finalPosZ;
		self.camObj.transform.localPosition=Vector3.New(finalPosX,camPos.y,finalPosZ);
	end
end

local function GettipsInfo(self,_levelData)
	local con_str = "";
	local LastIds = _levelData._data.LastId
	for _,v in ipairs(LastIds) do
		local chapter = self.model.GetLevelName(v)
		if string.len(con_str) >0 then
			con_str = con_str.."、"..chapter
		else
			con_str = chapter
		end
		con_str = string.format("通关剧情<color=#FEC200>%s</color>开启",con_str)
	end
	return con_str
end

--相机移动
local function CamMove(self,_initPos,_tarPos,levelData,_type,_clickIndex)
	if self.tweener~=nil then
		LuaTweener.StopTweener(self.tweener)
		self.tweener = nil
	end
	--摄像机移动的时候关闭
	if self.tip_obj.gameObject.activeInHierarchy then
		self.tip_obj.gameObject:SetActive(false)
	end
	if UIManager:GetInstance():GetWindow(UIWindowNames.UIWeakGuide,true,true) ~= nil then
		--已经打开
		GuideWeakGroup:GetInstance():SetGuideOver()
	end
	self.tweener = LuaTweener.TransMoveTo(self.camObj.transform,_initPos,_tarPos,0.5,EaseFormula.OutQuad,function()
		if _type==1 then
			UIManager:GetInstance():OpenWindow(UIWindowNames.UILevelNewDetail,levelData,self.model.isBattleReturn)
			for i, v in ipairs(self.curChapterData.levelData) do
				self.levelNames[i].obj.transform.gameObject:SetActive(i==_clickIndex);
			end

			self.resourceBarParent.gameObject:SetActive(false);
		else
			if not self.tip_obj.gameObject.activeInHierarchy and self.can_tip then
				self.tip_obj.gameObject:SetActive(true)
			end

			for i, v in ipairs(self.curChapterData.levelData) do
				self.levelNames[i].obj.transform.gameObject:SetActive(true);
			end
			self.resourceBarParent.gameObject:SetActive(true);
		end

		self.tweener = nil
	end)
end

--获取点击的关卡索引
local function GetClickLvIndex(self,_clickIndex)
	for i, v in ipairs(self.curChapterData.levelData) do
		if v._data.Pos==_clickIndex then
			return i;
		end
	end
	return 0;
end
--单个关卡点击
local function SingleLevelClick(self,_name)
	LJAudioManger:GetInstance():PlayOtherVoice("UI_CommonClick")
	if _name == "CYB" then
		OnTargetBtnClick(self)
		return
	end

	local clickIndex=tonumber(_name);
	clickIndex=GetClickLvIndex(self,clickIndex);

	if clickIndex==0 then
		return;
	end
	local levelData=self.model.curChapterListData[self.model.curSelectChapterIndex].levelData[clickIndex];
	if levelData==nil then
		return;
	end
	local open = MapData:GetInstance():CheckOpenLevel(levelData._id)
	if not open  then
		UISpecial:GetInstance():UITipText(GettipsInfo(self,levelData));
		return
	end
	local pass = MapData:GetInstance():CheckPassLevel(levelData._id)

	if levelData._data.Type == 0  and pass then
		UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100065))
		return
	end
	self.playLv=UserData:GetInstance().pLevel
	if self.playLv<levelData._data.NeedLv then
		UIManager:GetInstance():OpenWindow(UIWindowNames.UIItemJumpTip,1401014,nil,UIWindowNames.UILevelMainNew)
		--UISpecial:GetInstance():UITipText(string.format("需要等级达到%s开启",levelData._data.NeedLv));
		return;
	end
	local targetPos=self.levelPrbList[clickIndex].onObj.transform.position+Vector3.New(16,29,-26);--11,20-20;
	CamMove(self,self.camInitPos,targetPos,levelData,1,clickIndex);

end

local function EasyTouchSimpleTap(self,gesture)
	if not IsNull(gesture.pickedObject) then
		SingleLevelClick(self,gesture.pickedObject.name)
	end
end
local function AddEasyTouchListener(self)
	--EasyTouch.On_Swipe =  EasyTouchSwipe
	self.easyfunc = {false}
	self.easyfunc[1] = Bind(self,EasyTouchSwipe)
	self.easyfunc[2] = Bind(self,EasyTouchSimpleTap)
	EasyTouch.On_Swipe("+",self.easyfunc[1])
	EasyTouch.On_SimpleTap("+",self.easyfunc[2])
end

local function RemoveEasyTouchListener(self)
	EasyTouch.On_Swipe("-",self.easyfunc[1])
	EasyTouch.On_SimpleTap("-",self.easyfunc[2])
	self.easyfunc = nil

end

--更换章节预设通过章节索引
local function ChangeChapterByIndex(self,_boo)
	--判断是否是相同的章节预设
	self.isPlay=false;
	self.lineAnim:Rebind();
	self.lineAnim.speed = 0;
	if _boo then
		if not IsNull(self.singleChapterPrb ) then
			GameObjectPool:GetInstance():RecycleGameObject(self.chapterPrbPath,self.singleChapterPrb );
			LoadChapterPrb(self);
		end
	else
		if not IsNull(self.singleChapterPrb ) then
			self.singleChapterPrb:SetActive(true);
			PlayLineAnim(self,1);
			ShowSingleLevelInfo(self);
			LoadNodeList(self);
		end
	end
end

--绑定相机到easytouch
local function BindEasyTouch(self)
	local cam_game= CS.UnityEngine.GameObject.FindGameObjectWithTag("MainCamera")
	if not IsNull(cam_game) then
		self.cam_brain = cam_game:GetComponent(typeof(CS.Cinemachine.CinemachineBrain))
		self.cam_brain.m_DefaultBlend =CinemachineBlendDefinition(CinemachineBlendDefinition.Style.Cut,0)
	end

	if not IsNull(cam_game) then
		local mCam = cam_game:GetComponent(typeof(CS.UnityEngine.Camera))
		--主相机不渲染ui层
		mCam.cullingMask = mCam.cullingMask & ~(1 << 5)
		EasyTouch.AddCamera(mCam)
	end

end

local function OnEnable(self)
	base.OnEnable(self)
	--显示遮罩
	self.maksObj.transform.gameObject:SetActive(self.model.isShowMask);
	if self.model.isShowMask then
		TimerManager:GetInstance():SimpleTimerArgs(1,function()
			self.maksObj.transform.gameObject:SetActive(false);
		end ,nil,true,false);
	end
	BindEasyTouch(self);
	for i = 1,#self.rewardList do
		UIUtil.SetEffectLayer(self.rewardList[i].effectObj,self.base_order)
	end
	self.parentLayout.transform.gameObject:SetActive(not self.model._isHide);
	self.levelNameLayout.transform.gameObject:SetActive(not self.model._isHide);
	LJAudioManger:GetInstance():PlayMusic("BGM_Level_01")
	--检测是否需要加载新章节模型
	local isLoadNewChapter=self.selectChapterIndex==self.model.curSelectChapterIndex and false or true;
	self.isPlay=false;
	self.selectChapterIndex=self.model.curSelectChapterIndex;
	self.chapterShowIndex=math.ceil(self.selectChapterIndex/5)-1;
	if self.model.curSelectType==1 then
		SetChildParent(self.selectBtnObj,self.simpleBtn);--设置为普通难度
	else
		SetChildParent(self.selectBtnObj,self.difficultBtn);--设置为普通难度
	end
	local state ,type,des= UnlockData:GetInstance():GetLockDataState(10102)
	self.difficultBtn.gameObject:SetActive(state)
	--显示章节信息
	ShowChapterInfo(self,true);
	--先加载场景
	--if not IsNull( self.asset) and not IsNull(self.camObj) then
	if not string.isNilOrEmpty( self.sceneDataPath) and not IsNull(self.camObj) then
		self.cinemachine.Priority = 60;
		--CS.SceneDataUtilities.ConfigBattleCam(self.cinemachine,Vector3.New(-2,38,-69),Vector3.New(45,0,0),60,Vector3.New(0,0,0));
		--CS.SceneDataUtilities.ConfigLitAndShadow(self.asset,Vector3.New(0,0,0), Vector3.New(0,0,0))
		SceneLoadManager:GetInstance():ConfigBattleCam(self.cinemachine,Vector3.New(-8,38,-70),Vector3.New(45,0,0),60,Vector3.New(0,0,0))
		SceneLoadManager:GetInstance():ConfigLitAndShadow(self.sceneDataPath,Vector3.zero,Vector3.zero)
		ChangeChapterByIndex(self,isLoadNewChapter);
        --SetMainCamPos(self);
	else
		coroutine.start(CoLoadScene,self);
	end

	AddEasyTouchListener(self);
	self:SetTargetAwardData()
end

--难度切换显示
local function OnDifficultyShow(self)
	--检测是否需要加载新章节模型
	self:SetTargetAwardData()
	local isLoadNewChapter=true;
--[[	if self.selectChapterIndex~=self.model.curSelectChapterIndex then
		local isLoadNewChapter=true;
	end]]
	self.selectChapterIndex=self.model.curSelectChapterIndex;
	self.chapterShowIndex=math.ceil(self.selectChapterIndex/5)-1;
	ShowChapterInfo(self);
	ChangeChapterByIndex(self,isLoadNewChapter);
end
--章节切换
local function OnChapterSelectShow(self)
	--检测是否需要加载新章节模型
	local isLoadNewChapter=true;
--[[	if self.selectChapterIndex~=self.model.curSelectChapterIndex then
		local isLoadNewChapter=true;
	end]]
	self.selectChapterIndex=self.model.curSelectChapterIndex;
	ShowChapterInfo(self);
	ChangeChapterByIndex(self,isLoadNewChapter);
end
--章节界面显示
local function ShowLevelActive(self)
	self.resourceBarParent.gameObject:SetActive(true);
	local initPos=self.camObj.transform.position;
	self.camObj.transform.position=self.camInitPos;
	CamMove(self,initPos,self.camInitPos,nil,2);
end

--显示界面
local function ShowPanel(self)
	self.parentLayout.transform.gameObject:SetActive(true);
	self.levelNameLayout.transform.gameObject:SetActive(true);
	if self.model._isHide then
		if GuideGroup:GetInstance().Runing then
			DataManager:GetInstance():Broadcast(DataMessageNames.UI_Guide_NeedEvent)
		end
	end
end

local function GuideClickObj(self,type,paras)
	if type == 5 then
		if paras == nil then
			paras = 1
		end
		SingleLevelClick(self,paras)
	end
end

---设置目标奖励
local function SetTargetAwardData(self)
	self.isGetAward = false
	local targetData = self.model.targetData
	if targetData == nil or self.model.curSelectType==2 then
		self.targetRewardPanel.gameObject:SetActive(false)
		return
	end
	--暂时按策划的要求改为false,需要显示改为true就行
	self.targetRewardPanel.gameObject:SetActive(false)
	self.targetFrame:SetSpriteName(targetData.award[1].frame)
	self.targetIcon.gameObject:SetActive(targetData.award[1].type == 11)
	self.targetSkillIcon.gameObject:SetActive(targetData.award[1].type == 13)
	self.targetQualityImg:SetSpriteName(SpriteDefine:GetQuaIconByType(targetData.award[1].quality))
	self.targetQualityImg.transform.gameObject:SetActive(targetData.award[1].type == 11)
	if targetData.award[1].type == 11 then
		self.targetIcon:SetSpriteName(targetData.award[1].icon)
	elseif targetData.award[1].type == 13 then
		self.targetSkillIcon:SetSpriteName(targetData.award[1].icon)
	end
	if self.model.targetMaxLevelId == -1 then
		self.targetSlider:SetValue(0)
		self.targetScore:SetText(0 .."%")
		local val = targetData.lvId - targetData.nowId * 100
		local chapterIndex=(math.floor(targetData.lvId/100))%100;
		local passIndex=(math.floor(targetData.lvId%100));
		self.anim.enabled = false
		self.effectActive.gameObject:SetActive(false)
		self.targetInfo:SetText("通关<color=#F0B208>"..math.floor(chapterIndex).."-"..math.floor(passIndex).."</color>".."领奖")
		--self.HandleImg:SetSpriteName("ui_dtex_Other_018")
	else
		local num = self.model.targetMaxLevelId - targetData.nowId * 100
		local val = targetData.lvId - targetData.nowId * 100
		if num < 0 then
			num = 0
		end
		if num >= val then
			num = val
		end
		self.targetSlider:SetValue(num/val)
		local chapterIndex=(math.floor(targetData.lvId/100))%100;
		local passIndex=(math.floor(targetData.lvId%100));
		self.anim.enabled = false
		self.effectActive.gameObject:SetActive(false)
		self.targetInfo:SetText("通关<color=#F0B208>"..math.floor(chapterIndex).."-"..math.floor(passIndex).."</color>".."领奖")
		self.targetScore:SetText(math.floor(num/val * 100) .."%")

		--if num/val <= 0.2 then
		--	self.HandleImg:SetSpriteName("ui_dtex_Other_018")
		--elseif num/val > 0.2 and num/val <= 0.4 then
		--	self.HandleImg:SetSpriteName("ui_dtex_Other_016")
		--elseif num/val > 0.4 and num/val <= 0.6 then
		--	self.HandleImg:SetSpriteName("ui_dtex_Other_019")
		--elseif num/val > 0.6 and num/val <= 0.8 then
		--	self.HandleImg:SetSpriteName("ui_dtex_Other_020")
		--else
		--	self.HandleImg:SetSpriteName("ui_dtex_Other_017")
		--end
		if targetData.lvId <= self.model.targetMaxLevelId then
			--todo 可以领奖
			if true then
				self.anim.enabled = true
				self.effectActive.gameObject:SetActive(true)
				self.targetInfo:SetText("<color=#F0B208>点击领奖</color>")
			end
			self.isGetAward = true
		else
			self.isGetAward = false
		end
	end
	--self.targetEffect.transform.gameObject:SetActive(false);
	if self.targetObject ~= nil and targetData.lvId ~= 10109 then
		RecyleCYB(self)
	end
	if self.isGetAward and  UIUtil.FindTrans(self.transform,"ParentLayout/TargetRewardPanel/pre")==nil then
		GuideWeakCheckManager:GetInstance().canWeakGuide=true
		GuideWeakCheckManager:GetInstance():EnterGameCheck(70)
	end
end

--刷新节宝箱状态
local function RefreshLvBoxState(self)
	ShowChapterInfo(self);
	ShowLvBoxReward(self);
end

local function OnAddListener(self)
	base.OnAddListener(self)
	-- UI消息注册
	self:AddUIListener(UIMessageNames.UI_LEVEL_REFRESH,OnDifficultyShow);
	self:AddUIListener(UIMessageNames.UI_CHAPTER_SELECT_REFRESH,OnChapterSelectShow);
	self:AddUIListener(UIMessageNames.UI_CHAPTER_GET_BOX_REFRESH,ShowChapterInfo);
	self:AddUIListener(UIMessageNames.UI_SHOW_LEVEL_MAIN,ShowLevelActive);
	self:AddUIListener(UIMessageNames.UI_EXPLORE_CHANGE_TEAM_REFRESH,ShowPanel);
	self:AddUIListener(UIMessageNames.UILEVELMAIN_BACK_MIANCITY,CloseBtnClick);
	self:AddUIListener(UIMessageNames.ON_3DOBJ_CLICK_FUN,GuideClickObj);
	self:AddUIListener(UIMessageNames.UI_TARGET_AWARD_UPDATE,SetTargetAwardData)
	self:AddUIListener(UIMessageNames.UI_LEVEL_BOX_REFRESH,RefreshLvBoxState);
end


local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- UI消息注销
	self:RemoveUIListener(UIMessageNames.UI_LEVEL_REFRESH,OnDifficultyShow);
	self:RemoveUIListener(UIMessageNames.UI_CHAPTER_SELECT_REFRESH,OnChapterSelectShow);
	self:RemoveUIListener(UIMessageNames.UI_CHAPTER_GET_BOX_REFRESH,ShowChapterInfo);
	self:RemoveUIListener(UIMessageNames.UI_SHOW_LEVEL_MAIN,ShowLevelActive);
	self:RemoveUIListener(UIMessageNames.UI_EXPLORE_CHANGE_TEAM_REFRESH,ShowPanel);
	self:RemoveUIListener(UIMessageNames.UILEVELMAIN_BACK_MIANCITY,CloseBtnClick);
	self:RemoveUIListener(UIMessageNames.ON_3DOBJ_CLICK_FUN,GuideClickObj);
	self:RemoveUIListener(UIMessageNames.UI_TARGET_AWARD_UPDATE,SetTargetAwardData)
	self:RemoveUIListener(UIMessageNames.UI_LEVEL_BOX_REFRESH,RefreshLvBoxState);

end


local function OnDestroy(self)
	-- 销毁
	--if self.asset ~= nil then
	--	CS.SceneDataUtilities.CleanSceneNode(self.asset)
	--end
	self.cinemachine.Priority = 10;
	if not string.isNilOrEmpty(self.sceneDataPath) then
		SceneLoadManager:GetInstance():CleanSceneNode(self.sceneDataPath)
	end
	base.OnDestroy(self);
	Recyle(self);
	ResourceBarComponentManager:GetInstance():DestroyResourceBar(UIWindowNames.UILevelMainNew);
end
local function OnDisable(self)
	base.OnDisable(self)
	self.cinemachine.Priority = 10;
	Recyle(self);
	RemoveEasyTouchListener(self);
	if self.lineTimer~=nil then
		TimerManager:GetInstance():SimpleTimerStop(self.lineTimer);
		self.lineTimer = nil
	end
end

UILevelMainNewView.OnCreate = OnCreate
UILevelMainNewView.OnEnable = OnEnable
UILevelMainNewView.OnAddListener = OnAddListener
UILevelMainNewView.OnRemoveListener = OnRemoveListener
UILevelMainNewView.OnDestroy = OnDestroy
UILevelMainNewView.SetChildParent=SetChildParent
UILevelMainNewView.OnDisable = OnDisable
UILevelMainNewView.SetTargetAwardData = SetTargetAwardData
UILevelMainNewView.Update=Update
return UILevelMainNewView


--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIExploreMainView = BaseClass("UIExploreMainView", UIBaseView)
local base = UIBaseView

local team_btn_path="ParentLayout/TeamBtn";
local go_haed_btn_path="ParentLayout/GoHeadBtn";
local map_btn_path="ParentLayout/MapBtn";
local resource_parent_path="ParentLayout/resourceParent";
local right_btn_path="ParentLayout/RightBtn";
local left_btn_path="ParentLayout/LeftBtn";
local point_parent_path="ParentLayout/PointLayout/PointList";
local line_parent_path="ParentLayout/PointLayout/LineListLight";
local line_di_parent_path="ParentLayout/PointLayout/LineList";
local add_speed_btn_path="ParentLayout/AddSpeedBtn";
local box_btn_path="ParentLayout/takeBtn/box";
local box_img_path="ParentLayout/takeBtn/box/award_UIImage";
local gray_mat_path="ParentLayout";
local boxEffect_path="ParentLayout/takeBtn/box/FX_ui_c_frame_UIImage";
local moto_img_path="ParentLayout/moto";
local state_obj_path="ParentLayout/GoHeadBtn/stateObj";
local state_text_path="ParentLayout/GoHeadBtn/stateText";
local progress_img_path="ParentLayout/GoHeadBtn/fildImage";
local ResourceBarComponentManager = require("UI.UIResourceBar.ResourceBarComponentManager");
local open_condition_panel_path="ParentLayout/openConditionPanel/panel/Grid";
local open_condition_panel_pos_path="ParentLayout/openConditionPanel/panel"
local condition_panel_close_btn_path="ParentLayout/openConditionPanel";
local show_reward_path="ParentLayout/RewardShow";
local reward_up_panel_path="ParentLayout/hangUpPanle/upGrid";

local function CloseBtnClick(self)
	LJAudioManger:GetInstance():PlayMusic(LJAudioManger.MAIN_CITY_BG_MUSIC);
	local cam_game = CS.UnityEngine.Camera.main.gameObject
	local cam_brain= cam_game:GetComponent(typeof(CS.Cinemachine.CinemachineBrain))
	cam_brain.m_DefaultBlend =CS.Cinemachine.CinemachineBlendDefinition(CS.Cinemachine.CinemachineBlendDefinition.Style.Cut,0)
	self.cinemachine.Priority = 10;
	local mainSceneName=SceneManager:GetInstance().scenes[SceneConfig.HomeScene.Name].scene_name;
	if not string.isNilOrEmpty(mainSceneName) then
		SceneLoadManager:GetInstance():ConfigLitAndShadow(mainSceneName,Vector3.zero,Vector3.zero)
	end
	UIManager:GetInstance():Broadcast(UIMessageNames.UIMAINCITY_BACK_SCENE,"UILevelMain");
end

--检测关卡开启
local function CheckLevelOpen(_isOpen,_curId,_maxId)
	local state=0;--冒险章节未开，1--探险章节没开 2--开启
	if _isOpen then
		state=_curId<=_maxId and 2 or 1;
	end
	return state;
end

--显示页面按钮
local function ShowPageBtn(self)
	local lvNum=#self.model.curChapterData;
	local maxPage=math.floor(lvNum/5);
	maxPage=maxPage+(lvNum%5>0 and 1 or 0);
	self.rightBtn.transform.gameObject:SetActive(self.curPage<maxPage-1);
	self.leftBtn.transform.gameObject:SetActive(self.curPage>0);
end

--显示当前页签关卡
local function ShowCurPageLevel(self)
	ShowPageBtn(self);
	self.motoImg.transform.gameObject:SetActive(false);
	for i, v in ipairs(self.pointList) do
		local index=self.curPage*5+i;
		v.obj.transform.gameObject:SetActive(self.model.curChapterData[index]~=nil);
		if self.model.curChapterData[index]~=nil then
			local state=CheckLevelOpen(self.model.chapterOpen,self.model.curChapterData[index].id,self.model.curMaxLevel);
			v.chapterText:SetText(self.model.curSelectChapter);
			v.passText:SetText(index);
			if state==2 then
				v.img:SetMat(nil);
			else
				v.img:SetMat(self.grayMat);
			end
			if i>1 then
				self.lienDiList[i-1].transform.gameObject:SetActive(true);
				self.lineList[i-1].transform.gameObject:SetActive(state==2);
				self.lineList[i-1]:SetFillVal(1);
			end
			if self.model.curChapterData[index].id==self.model.levelId then
				self.motoImg.transform.gameObject:SetActive(true);
				self.motoImg.transform:SetParent(v.obj.transform);
				self.motoImg.transform.localPosition=Vector3.New(0,20,0);
				self.motoImg.transform.localScale=Vector3.New(1,1,1);
			end
		else
			if i>1 then
				self.lienDiList[i-1].transform.gameObject:SetActive(false);
				self.lineList[i-1].transform.gameObject:SetActive(false);
			end

		end
	end
end

--获取关卡的开启条件
local function ShowOpenConditionPanel(self,_index,_pointIndex)
	self.conditionCloseBtn.transform.gameObject:SetActive(true);
	local pos=self.conditionPosPanel.transform.position;
	local pointPosx=self.pointList[_pointIndex].obj.transform.position.x;
	pos.x=pointPosx;
	self.conditionPosPanel.transform.position=pos;
	local haveHangTime=self.model.haveHangTime;
	local lastLvId=ExploreData:GetInstance():GetLastLevelId(self.model.curChapterData[_index].id);
	local hang_up_lv=DataUtil.GetData("hang_up_level");
	local needHangTime=hang_up_lv[lastLvId].HangTime;
	local needPower=self.model.curChapterData[_index].xlsxData.LimitPower;
	local historyPower=self.model.exploreData.historyForce;
	local condition1Str="";
	if haveHangTime>=needHangTime and lastLvId==self.model.exploreData.maxLevelId then
		condition1Str=string.format("<color=#15181E>上一挂机点探险进度完成</color>")
	else
		condition1Str=string.format("<color=#E04C4C>上一挂机点探险进度完成</color>")
	end

	local condition2str=historyPower>=needPower and string.format("<color=#15181E>队伍战力需达到%s</color>",needPower) or
			string.format("<color=#E04C4C>队伍战力需达到%s</color>",needPower);
	local conditionShow={};
	table.insert(conditionShow,condition1Str);
	table.insert(conditionShow,condition2str);
	for i, v in ipairs(self.conditionList) do
		v.obj.transform.gameObject:SetActive(conditionShow[i]);
		if conditionShow[i] then
			v.conditionText:SetText(conditionShow[i]);
		end

	end
end

--显示无法前进的弹窗提示
local function ShowGoHeadTip(self)

end

local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.progressImg=self:AddComponent(UIImage,progress_img_path,AtlasConfig.DynamicTex);
	self.motoImg=UIUtil.FindTrans(self.transform,moto_img_path);
	self.teamBtn=self:AddComponent(UIButton,team_btn_path);
	self.teamBtn:SetOnClick(function()
		UIManager:GetInstance():OpenWindow(UIWindowNames.UIExploreSetTeamList);
	end)
	self.goHeadBtn=self:AddComponent(UIButton,go_haed_btn_path)
	self.goHeadBtn:SetOnClick(function()
		if self.model.levelId>0 then
			local levelId,nextLevelData=ExploreData:GetInstance():GetNexLevelId(self.model.levelId);
			local nextLevelChapterIndex=ExploreData:GetInstance(): GetChapterIndexByLevelId(levelId);
			local needPlotLevel=ExploreData:GetInstance().chapterList[nextLevelChapterIndex].needPlotLevel;
			local isOpen=MapData:GetInstance():CheckPassLevel(needPlotLevel);
			local state= CheckLevelOpen(isOpen,levelId,self.model.curMaxLevel);
			if state~=0 then
				if self.isDownTime==false then
					if self.model.exploreData.historyForce<self.model.nextNeedForce then
						--UISpecial:GetInstance():UITipText("队伍战力不足，无法前进");
						local str=string.format("<color=#E04C4C>探险队伍战斗力达到%s</color>\n\r(当前历史最高战力：%s)",math.floor(self.model.nextNeedForce),math.floor(self.model.exploreData.historyForce));
						UIManager:GetInstance():OpenOneButtonTip("提示",str,"确定");
					else
						self.ctrl:SetOnHookTeamRequest(self.model.nextLevelId);
					end
				end
			else
				local chaIndex=ExploreData:GetInstance():GetChapterIndexByLevelId(levelId);
				local needLvId=ExploreData:GetInstance().chapterList[chaIndex].needPlotLevel;
				chaIndex=math.floor(math.floor(needLvId/100)%100);
				local passIndex=math.floor(needLvId%100);
				UISpecial:GetInstance():UITipText(string.format("通关冒险%s-%s开启",chaIndex,passIndex));
			end

		else
			UISpecial:GetInstance():UITipText("该队伍还未探险，无法前进");
		end

	end)
	self.addSpeedBtn=self:AddComponent(UIButton,add_speed_btn_path);
	self.addSpeedBtn:SetOnClick(function()
		if self.model.exploreData.speedUpTimes>=self.model.limitAddSpeedTimes then
			UISpecial:GetInstance():UITipText("今日加速次数已用完");
		else
			UIManager:GetInstance():OpenWindow(UIWindowNames.UIExploreAddSpeed);
		end

	end)
	self.mapBtn=self:AddComponent(UIButton,map_btn_path);
	self.mapBtn:SetOnClick(function()
		UIManager:GetInstance():OpenWindow(UIWindowNames.UIExploreChapterList,self.model.levelId);
	end)
	self.resourceParent=UIUtil.FindTrans(self.transform,resource_parent_path);
	self.rightBtn=self:AddComponent(UIButton,right_btn_path);
	self.rightBtn:SetOnClick(function()
		local maxPage=math.floor(#self.model.curChapterData/5);
		if self.curPage+1<=maxPage then
			self.curPage=self.curPage+1>maxPage and maxPage or self.curPage+1;
			ShowCurPageLevel(self);
		end
	end)
	self.leftBtn=self:AddComponent(UIButton,left_btn_path);
	self.leftBtn:SetOnClick(function()
		if self.curPage-1>=0 then
			self.curPage=self.curPage-1<0 and 0 or self.curPage-1;
			ShowCurPageLevel(self);
		end
	end)
	self.pointParent=self:AddComponent(UIBaseContainer,point_parent_path);
	self.pointList={};
	local count=self.pointParent.transform.childCount;
	for i = 0, count-1 do
		local tempObj=self.pointParent:AddComponent(UIBaseContainer,i);
		local tempImg=tempObj:AddComponent(UIImage,"",AtlasConfig.DynamicTex);
		local tempChapText=tempObj:AddComponent(UIText,"chapterText");
		local tempPassText=tempObj:AddComponent(UIText,"passText");
		local tempBtn=tempObj:AddComponent(UIButton,"");
		local index=i+1;
		tempBtn:SetOnClick(function()
			local index=self.curPage*5+index;
			local state=CheckLevelOpen(self.model.chapterOpen,self.model.curChapterData[index].id,self.model.curMaxLevel);
			if state==1 then
				ShowOpenConditionPanel(self,index,i+1);
			else
				UIManager:GetInstance():OpenWindow(UIWindowNames.UIExploreSinglePointInfo,self.model.curChapterData[index].id);
			end

		end)
		table.insert(self.pointList,{obj=tempObj,img=tempImg,chapterText=tempChapText,passText=tempPassText});
	end
	self.lineParent=self:AddComponent(UIBaseContainer,line_parent_path);
	self.lineList={};
	local count=self.lineParent.transform.childCount;
	for i = 0, count-1 do
		local lineImg=self.lineParent:AddComponent(UIImage,i);
		table.insert(self.lineList,lineImg);
	end
	self.lineDiParent=self:AddComponent(UIBaseContainer,line_di_parent_path);
	self.lienDiList={};
	local count=self.lineDiParent.transform.childCount;
	for i = 0, count-1 do
		table.insert(self.lienDiList,self.lineDiParent.transform:GetChild(i));
	end

	ResourceBarComponentManager:GetInstance():CreatResourceBarComponent(self.resourceParent,UIWindowNames.UIExploreMain,ResourceBarType.PATROL,self);

	UIUtil.CreatCloseBtnComponent(self,self.resourceParent,function(go) self.closeComponent=go end,function()
		CloseBtnClick(self);
		self.ctrl:CloseSelf();
		--UIUtil.BackHomeMain();
	end,function()
		CloseBtnClick(self);
	end ,"探险",true,11);

	self.boxBtn=self:AddComponent(UIButton,box_btn_path);
	self.boxBtn:SetOnClick(function()
		local haveHangTime =math.floor((TimeSyncManager:GetInstance():GetSimulationJavaMS() - tonumber(self.model.exploreData.begin_time))/1000)
		if haveHangTime>self.model.rewardInteval then--当前挂机的时长大于最小获得奖励时长
			self.ctrl:GetOnHookRewardRequest(self.model.teamId);
		else
			UISpecial:GetInstance():UITipText("探险时间过短，还没有战利品");
		end
	end)
	self.boxImg=self:AddComponent(UIImage,box_img_path,AtlasConfig.DynamicTex);
	self.boxEffect=UIUtil.FindTrans(self.transform,boxEffect_path);
	self.boxAnim=UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.Animator),box_btn_path);
	self.grayMat=self:AddComponent(UIImage,gray_mat_path,AtlasConfig.DynamicTex):GetMat();
	self.goHeadStateObj=UIUtil.FindTrans(self.transform,state_obj_path);
	self.stateText=self:AddComponent(UIText,state_text_path);

	--条件开启面板

	self.openConditionPanel=self:AddComponent(UIBaseContainer,open_condition_panel_path);
	self.conditionCloseBtn=self:AddComponent(UIButton,condition_panel_close_btn_path);
	self.conditionPosPanel=UIUtil.FindTrans(self.transform,open_condition_panel_pos_path);
	self.conditionCloseBtn.transform.gameObject:SetActive(false);
	self.conditionCloseBtn:SetOnClick(function()
		self.conditionCloseBtn.transform.gameObject:SetActive(false);
	end)
	self.conditionList={};
	local count=self.openConditionPanel.transform.childCount;
	for i = 0, count-1 do
		local tempObj=self.openConditionPanel:AddComponent(UIBaseContainer,i);
		local tempText=tempObj:AddComponent(UIText,"");
		table.insert(self.conditionList,{obj=tempObj,conditionText=tempText});
	end

	--右上奖励显示
	self.rewardShowPanel=self:AddComponent(UIBaseContainer,show_reward_path);
	self.rewardShowList={};
	count=self.rewardShowPanel.transform.childCount;
	for i = 0, count-1 do
		local tempObj=self.rewardShowPanel:AddComponent(UIBaseContainer,i);
		local tempIcon=tempObj:AddComponent(UIImage,"icon",AtlasConfig.DynamicTex);
		local tempText=tempObj:AddComponent(UIText,"Text");
		table.insert(self.rewardShowList,{obj=tempObj,icon=tempIcon,infoText=tempText});
	end

	--最新关卡奖励提升显示
	self.rewardUpPanel=self:AddComponent(UIBaseContainer,reward_up_panel_path);
	self.rewardUpShowList={};
	count=self.rewardUpPanel.transform.childCount;
	self.rewardUpPanel.transform.parent.gameObject:SetActive(false);
	for i = 0, count-1 do
		local tempObj=self.rewardUpPanel:AddComponent(UIBaseContainer,i);
		local tempIcon=tempObj:AddComponent(UIImage,"icon",AtlasConfig.DynamicTex);
		local tempCurValueText=tempObj:AddComponent(UIText,"beforeText");
		local tempNextValueText=tempObj:AddComponent(UIText,"nextText");
		table.insert(self.rewardUpShowList,{obj=tempObj,icon=tempIcon,curValue=tempCurValueText,nextValue=tempNextValueText});
	end
	local commBtnParent=UIUtil.FindTrans(self.transform,"ParentLayout/commBtnParent");
	MainCityCommonBtnManager:GetInstance():CreatMainCityCommonBtn(commBtnParent,UIWindowNames.UIExploreMain,self,nil,nil,1);
end

--显示宝箱图标显示
local function ShowBoxImg(self,_time)
	local str={[1]="ui_t_c2_397",[2]="ui_t_c2_395",[3]="ui_t_c2_396"};
	local index=0;
	if math.floor(_time/3600)<1 then
		index=1
	elseif math.floor(_time/3600)>=5 then
		index=3;
	elseif math.floor(_time/3600)>=1 then
		index=2;
	end
	self.boxImg:SetSpriteName(str[index]);
end

local function OnEnable(self)
	base.OnEnable(self)
	self.rewardUpPanel.transform.parent.gameObject:SetActive(false);
	local cam_game = CS.UnityEngine.Camera.main.gameObject
	local cam_brain = cam_game:GetComponent(typeof(CS.Cinemachine.CinemachineBrain))
	cam_brain.m_DefaultBlend =CS.Cinemachine.CinemachineBlendDefinition(CS.Cinemachine.CinemachineBlendDefinition.Style.Cut,0)
	self.initTime=Time.time;
	self:OnRefresh()
end
--加载场景
local function CoLoadScene(self)

	--if IsNull( self.asset) or CS.SceneDataUtilities.GetSceneIndex(self.asset.name)< 0 then
	if
		string.isNilOrEmpty(self.sceneDataPath)
		or SceneLoadManager:GetInstance():GetSceneIndex(self.sceneDataPath) < 0
	then
		self.sceneDataPath="Art/Scenes/scene_Map_Appoint01/scene_Map_Appoint01/Map_Appoint01_sceneData.asset";
		local function ProgressCallback(co, progress)
			return coroutine.yieldcallback(co,  progress )
		end
		self.scene_name = SceneLoadManager.GenSceneAssetFullPath("Map_zhucheng_001")
		SceneLoadManager:GetInstance():CoGenerateScene(self.sceneDataPath,ProgressCallback,true);

		if IsNull(self.camObj) then
			self.camObj=CS.UnityEngine.GameObject("exploreCam",typeof(CS.Cinemachine.CinemachineVirtualCamera));
			local rootObj=SceneLoadManager:GetInstance():FindSceneRoot(self.sceneDataPath);
			if not IsNull(rootObj) then
				self.camParent=UIUtil.FindTrans(rootObj.transform,"Environment");
				self.roleRoot=UIUtil.FindTrans(rootObj.transform,"Environment/[Dynamic]")
				self.camObj.transform:SetParent(self.camParent);
				self.cinemachine=UIUtil.FindComponent(self.camObj,typeof(CS.Cinemachine.CinemachineVirtualCamera),"");
				SceneLoadManager:GetInstance():ConfigBattleCam(self.cinemachine,Vector3.New(0	,6.74,-12.98),Vector3.New(30,0,0),30,Vector3.New(0,0,0));
				self.cinemachine.Priority = 60;
				self.camInitPos=self.camObj.transform.position;
			end
		end
		SceneLoadManager:GetInstance():ConfigLitAndShadow(self.sceneDataPath,Vector3.New(0,0,0), Vector3.New(0,0,0))
		if self.roleRoot~=nil then
			ExploreBattleManager:GetInstance{}:StarOneBattle(self.roleRoot,self.model.fightTeamIdList);
		end
	end
	return coroutine.yieldbreak();
end

--宝箱刷新
local function TakeRewardRefresh(self)
--[[	self.curTime =math.floor((TimeSyncManager:GetInstance():GetSimulationJavaMS() - tonumber(self.model.exploreData.begin_time))/1000);
	ShowBoxImg(self,self.curTime);]]
	self.isDownBoxTime=false;
	if self.model.exploreData.level_id~=0 and tonumber(self.model.exploreData.begin_time)>0  then--代表有在挂机
		self.isDownBoxTime=true;
	end
end

--显示按钮状态
local function ShowBtnState(self)
	if self.isDownTime then
		self.stateText:SetText(UIUtil.GetFinialTime(self.curHangTime));
	else
		self.stateText:SetText("前 进");
	end
end
--获取当前显示的页签索引
local function GetCurShowPage(self)
	local page=0;
	local curHangLvChapterIndex=ExploreData:GetInstance():GetChapterIndexByLevelId(self.model.levelId);
	if curHangLvChapterIndex==self.model.curSelectChapter then
		local lvIndex=(self.model.levelId%100);
		page=math.floor(lvIndex/5)-1+(lvIndex%5>0 and 1 or 0);
	end
	return page;
end
--显示奖励获得
local function ShowRewardList(self)
	for i, v in ipairs(self.rewardShowList) do
		v.obj.transform.gameObject:SetActive(self.model.rewardShow[i]);
		if self.model.rewardShow[i] then
			v.icon:SetSpriteName(self.model.rewardShow[i].icon);
			v.infoText:SetText(self.model.rewardShow[i].desc);
		end
	end
end
--最大关卡刷新
local function MaxLvRefresh(self)
	self.curPage=GetCurShowPage(self);
	self.curHangTime=self.model.needDownTime-self.model.haveHangTime>=0 and self.model.needDownTime-self.model.haveHangTime or 0;
	self.isDownTime=false;
	local fillNum=self.curHangTime>0 and 1-(self.curHangTime/self.model.needDownTime) or 0;

	self.initTime=Time.time;
	if self.model.haveHangTime<self.model.needDownTime and self.model.curMaxLevel==self.model.levelId then
		self.progressImg:SetFillVal(fillNum);
		self.isDownTime=true;
	else
		self.progressImg:SetFillVal(0);
	end
	ShowRewardList(self);
	ShowBtnState(self);
	ShowCurPageLevel(self);
end



local function OnRefresh(self)
	-- 各组件刷新
	if not string.isNilOrEmpty(self.sceneDataPath) and not IsNull(self.camObj) then
		self.cinemachine.Priority = 60;
		SceneLoadManager:GetInstance():ConfigBattleCam(self.cinemachine,Vector3.New(0,6.74,-12.98),Vector3.New(30,0,0),30,Vector3.New(0,0,0));
		SceneLoadManager:GetInstance():ConfigLitAndShadow(self.sceneDataPath,Vector3.New(0,0,0), Vector3.New(0,0,0))
		if self.roleRoot~=nil then
			ExploreBattleManager:GetInstance():EndBattle();
			ExploreBattleManager:GetInstance():StarOneBattle(self.roleRoot,self.model.fightTeamIdList);
		end
	else
		coroutine.start(CoLoadScene,self);
	end

	TakeRewardRefresh(self);
	MaxLvRefresh(self)

end

--获取时间字符串
local function GetTimeStr(num)
	if num >= 10 then
		return tostring(num)
	elseif num > 0 then
		return string.format("0%s", num)
	else
		return "00"
	end
end

--转化时间格式（00:00:00）（时分秒）
local function GetFinialTime(num)
	if num <= 0 then
		return "00:00"
	end
	local tempMin = num % 3600
	local min = math.floor(tempMin / 60)
	local seconds = math.floor(tempMin % 60)
	return GetTimeStr(min) .. ":" .. GetTimeStr(seconds)
end

local function Update(self)
	if self.isDownTime then
		local curTime=self.curHangTime-(Time.time-self.initTime);
		self.progressImg:SetFillVal(1-((self.model.needDownTime-curTime)/self.model.needDownTime));
		self.stateText:SetText(GetFinialTime(curTime));
		if curTime<=0 then
			self.curHangTime=0;
			self.isDownTime=false;
			self.stateText:SetText("前 进");
			self.ctrl:OpenOnHookNextChapterRequest(self.model.needDownTime);
		end
	end
	if self.downBoxTime then
		if Time.time-self.downBoxInitTime>=self.model.rewardInteval then
			self.downBoxTime=false;
			self.boxEffect.transform.gameObject:SetActive(true);
			self.boxAnim.enabled=true;
		end
	end
	if self.isDownBoxTime then
		local haveHangTime =math.floor((TimeSyncManager:GetInstance():GetSimulationJavaMS() - tonumber(self.model.exploreData.begin_time))/1000);
		if haveHangTime>self.model.rewardInteval then
			self.boxEffect.transform.gameObject:SetActive(true);
			self.boxAnim.enabled=true;
		else
			self.boxEffect.transform.gameObject:SetActive(false);
			self.boxAnim:Rebind();
			self.boxAnim.enabled=false;
		end
		ShowBoxImg(self,haveHangTime)
	end
end

--切换章节
local function ChangeChapter(self)
	self.curPage=GetCurShowPage(self);
	ShowCurPageLevel(self);
end

--显示奖励提升界面
local function ShowRewardUpPanel(self,_lastId,_curId)
    self.rewardUpPanel.transform.parent.gameObject:SetActive(true);
    local hang_up_lv=DataUtil.GetData("hang_up_level");
    local lastData=hang_up_lv[_lastId].DropShow;
    local curData=hang_up_lv[_curId].DropShow;
    for i, v in ipairs(self.rewardUpShowList) do
        v.obj.transform.gameObject:SetActive(lastData[i])
        if lastData[i] then
            local itemData=DataUtil.GetDataByIdAndType(lastData[i].Id);
            v.icon:SetSpriteName(itemData.icon);
            v.curValue:SetText("+"..lastData[i].Desc);
			local str=lastData[i].Desc==curData[i].Desc and string.format("<color=#EFEADE>+%s</color>",curData[i].Desc)
				or string.format("<color=#3F793F>+%s</color>",curData[i].Desc)
            v.nextValue:SetText(str);
        end
    end
    self.timer= TimerManager:GetInstance():SimpleTimerArgs(2,function()
        self.rewardUpPanel.transform.parent.gameObject:SetActive(false);
        self.timer=nil;
    end,nil,true)
end

local function OnAddListener(self)
	base.OnAddListener(self)
	-- UI消息注册
	self:AddUIListener(UIMessageNames.UI_EXPLORE_TAKE_REWARD_MAIN_REFRESH,TakeRewardRefresh);
	self:AddUIListener(UIMessageNames.UI_EXPLORE_MAX_LV_REFRESH,MaxLvRefresh);
	self:AddUIListener(UIMessageNames.UI_EXPLORE_CHANGE_CHAPTER,ChangeChapter);
	self:AddUIListener(UIMessageNames.UI_EXPLORE_CHANGE_TEAM_REFRESH,OnRefresh);
	self:AddUIListener(UIMessageNames.UI_EXPLORE_RETURN_MAIN,CloseBtnClick);
    self:AddUIListener(UIMessageNames.UI_EXPLORE_REWARD_UP,ShowRewardUpPanel);
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- UI消息注销
	self:RemoveUIListener(UIMessageNames.UI_EXPLORE_TAKE_REWARD_MAIN_REFRESH,TakeRewardRefresh)
	self:RemoveUIListener(UIMessageNames.UI_EXPLORE_MAX_LV_REFRESH,MaxLvRefresh)
	self:RemoveUIListener(UIMessageNames.UI_EXPLORE_CHANGE_CHAPTER,ChangeChapter)
	self:RemoveUIListener(UIMessageNames.UI_EXPLORE_CHANGE_TEAM_REFRESH,OnRefresh)
	self:RemoveUIListener(UIMessageNames.UI_EXPLORE_RETURN_MAIN,CloseBtnClick)
    self:RemoveUIListener(UIMessageNames.UI_EXPLORE_REWARD_UP,ShowRewardUpPanel);
end

local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)
	ResourceBarComponentManager:GetInstance():DestroyResourceBar(UIWindowNames.UIExploreMain);
	MainCityCommonBtnManager:GetInstance():DestroyMaincityBtn(UIWindowNames.UIExploreMain);
	self.closeComponent:RecyleSelf();
end

local function OnDisable(self)
	base.OnDisable(self);
	ExploreBattleManager:GetInstance():EndBattle();
	self.isDownTime=false;
    if self.timer then
        TimerManager:GetInstance():SimpleTimerStop(self.timer)
        self.timer=nil;
    end
end

local function CheckOpenWeak(self)
	if self.curHangTime<=0  then
		if self.model.levelId>0 then
			if self.model.levelId~=self.model.curMaxLevel then
				if self.model.teamPower>=self.model.nextNeedForce then
					GuideWeakCheckManager:GetInstance():EnterGameCheck(30)
				end
			end
		end
	end
	--]]
end
UIExploreMainView.OnCreate = OnCreate
UIExploreMainView.OnEnable = OnEnable
UIExploreMainView.OnDisable = OnDisable
UIExploreMainView.OnRefresh = OnRefresh
UIExploreMainView.OnAddListener = OnAddListener
UIExploreMainView.OnRemoveListener = OnRemoveListener
UIExploreMainView.OnDestroy = OnDestroy
UIExploreMainView.Update=Update;
UIExploreMainView.CheckOpenWeak = CheckOpenWeak

return UIExploreMainView

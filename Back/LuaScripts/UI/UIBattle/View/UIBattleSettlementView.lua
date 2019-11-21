
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIBattleSettlementView = BaseClass("UIBattleSettlementView", UIBaseView)
local base = UIBaseView
local BattleFieldManager = require "GameLogic.BattleNew.Logic.Manager.BattleFieldManager"
local BattleAwardData = require "UI.UIBattle.Component.BattleAwardData"
local rule_des = {}

local lhgl_panel_path="StaticCanvas/lhglPanel";
local relx_btn_path="relxBtn";
local fight_btn_path="fightBtn";
local camp_text_path="campText";
local pass_text_path="passText";
local reward_grid_path="ScrollView/content";
local camp_bg_path="campBg";
local camp_effect="Bg/ef_particals"
local function OnReturnBtnClick()
    LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
	UIManager:GetInstance():CloseWindow(UIWindowNames.UIBattleSettlement)
	if(BattleFieldManager:GetInstance().battleType==BattleEnum.BattleType.NORMAL  or BattleFieldManager:GetInstance().battleType == BattleEnum.BattleType.GUIDE ) then
		UIManager:GetInstance():Broadcast(UIMessageNames.UIBATTLE_PLAY_STORY,7,-1,function()
			--SceneManager:GetInstance():SwitchScene(SceneConfig.HomeScene)
            local Type = math.floor(BattleFieldManager:GetInstance().fightId / 10000)
            if Type == 10 then
				UIUtil.BackHomeMain()
               -- SceneManager:GetInstance():SwitchScene(SceneConfig.HomeScene)
            else
				local state=UnlockData:GetInstance():CheckNewOpenFunList(true,true);
				if state==0  then--没有开启新功能
					UIUtil.ReturnMapScene();
				elseif state==1 then--升级开启新功能
					UIUtil.BackHomeMain();
				elseif state==2 then--通关开启新功能
					UIUtil.BackHomeMain();
				elseif state==3 then--通关开启新功能
					UIUtil.BackHomeMain();
				end
            end
		end)
	elseif BattleFieldManager:GetInstance().battleType==BattleEnum.BattleType.LUHUAGULOU then
		local state=UnlockData:GetInstance():CheckNewOpenFunList(true,true);
		if state==0  then--没有开启新功能
			SceneManager:GetInstance():SwitchScene(SceneConfig.HomeScene)
		elseif state==1 then--升级开启新功能
			UIUtil.BackHomeMain();
		elseif state==2 then--通关开启新功能
			UIUtil.BackHomeMain();
		elseif state==3 then--通关开启新功能
			UIUtil.BackHomeMain();
		end
		--SceneManager:GetInstance():SwitchScene(SceneConfig.HomeScene)
	elseif BattleFieldManager:GetInstance().battleType == BattleEnum.BattleType.SOLO_BOSS then
		SoloBossData:GetInstance():OnPassFight()
		SceneManager:GetInstance():SwitchScene(SceneConfig.HomeScene)
	elseif BattleFieldManager:GetInstance().battleType == BattleEnum.BattleType.SOLO_ARENA then
		SceneManager:GetInstance():SwitchScene(SceneConfig.HomeScene)
		for _, v in pairs(ArenaData:GetInstance().pk_player_data) do
			if v.uid == ArenaData:GetInstance().pk_player_uid then
				v.challenge_state = 1
			end
		end
		UIManager:GetInstance():Broadcast(UIMessageNames.UPDATE_ARENA_CHALLENGE_PEO_DATA,false)
	elseif BattleFieldManager:GetInstance().battleType == BattleEnum.BattleType.TEACHING then
		SceneManager:GetInstance():SwitchScene(SceneConfig.HomeScene)
	elseif BattleFieldManager:GetInstance().battleType == BattleEnum.BattleType.CACODEMON then
		SceneManager:GetInstance():SwitchScene(SceneConfig.HomeScene)
	elseif BattleFieldManager:GetInstance().battleType == BattleEnum.BattleType.STORY then
		UIManager:GetInstance():Broadcast(UIMessageNames.UIBATTLE_RESET_ENTER)
	else
		SceneManager:GetInstance():SwitchScene(SceneConfig.HomeScene)
	end
end

local function EnterFightResponse(msg_obj)
	Logger.Log("收到进入战斗回复")
	--NetManager:GetInstance():RemoveListener(MsgIDDefine.PBFIGHT_ENTER_REED_FIGHT_RESPONSE,EnterFightResponse)
	if msg_obj.OpCode==0 then
		BattleFieldManager:GetInstance().battlePackages=msg_obj.Packages.enterFight;
		SceneManager:GetInstance():SwitchScene(SceneConfig.BattleScene)
	else
		UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
	end
end

--发送开始战斗请求
local function SendEnterFightRequest(id,map_pos,_campIndex,_passIndex)
	local msd_id = MsgIDDefine.PBFIGHT_ENTER_REED_FIGHT_REQUEST;
	local msg = (MsgIDMap[msd_id])()
	msg.fightId=id;
	BattleFieldManager:GetInstance().fightId=id
	LuHuaGuLouData:GetInstance():SetCurFightId(id,_campIndex,_passIndex);
	BattleFieldManager:GetInstance().battleType=BattleEnum.BattleType.LUHUAGULOU
	BattleFieldManager:GetInstance().sceneConfigId=map_pos
	Logger.Log("进入战斗数据".."战斗id"..id)
	NetManager:GetInstance():SendMessage(msd_id, msg,EnterFightResponse)
	--NetManager:GetInstance():AddListener(MsgIDDefine.PBFIGHT_ENTER_REED_FIGHT_RESPONSE,EnterFightResponse,self)
end

--初始化芦花鼓楼界面
local function InitLhglPanel(self)
	self.lhglPanel=self:AddComponent(UIBaseContainer,lhgl_panel_path);
	self.campBg=self.lhglPanel:AddComponent(UIImage,camp_bg_path,AtlasConfig.DynamicTex);
	self.relxBtn=self.lhglPanel:AddComponent(UIButton,relx_btn_path);
	self.relxBtn:SetOnClick(function()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		UIManager:GetInstance():CloseWindow(UIWindowNames.UIBattleSettlement);
		SceneManager:GetInstance():SwitchScene(SceneConfig.HomeScene)
	end)
	local fightBtnCanvas= self.lhglPanel:AddComponent(UICanvas,"");
	fightBtnCanvas:SetOrder(5);
	self.fightBtn=self.lhglPanel:AddComponent(UIButton,fight_btn_path);
	self.fightBtn:SetOnClick(function()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		--SendEnterFightRequest()
		UIManager:GetInstance():CloseWindow(UIWindowNames.UIBattleSettlement);
		UIManager:GetInstance():Broadcast(UIMessageNames.UIBATTLE_RESET_ENTER,self.nextPassData.Id,self.nextPassData.MapPosId,LuHuaGuLouData:GetInstance().campIndex,LuHuaGuLouData:GetInstance().passIndex+1);
	end)
	self.lhglRewardCanvas=self.lhglPanel:AddComponent(UICanvas,"ScrollView");
	self.lhglRewardCanvas:SetOrder(5);
	self.lhglRewardGrid=self.lhglPanel:AddComponent(UIBaseContainer,reward_grid_path);
	self.campText=self.lhglPanel:AddComponent(UIText,camp_text_path);
	self.passText=self.lhglPanel:AddComponent(UIText,pass_text_path);
	self.lghlRewarList={};
	local count=self.lhglRewardGrid.transform.childCount;
	for i = 0, count-1 do
		local tempItem=self.lhglRewardGrid:AddComponent(UIBaseContainer,i);
		local tempIcon=tempItem:AddComponent(UIImage,"IconImg",AtlasConfig.DynamicTex);
		local tempFrame=tempItem:AddComponent(UIImage,"",AtlasConfig.DynamicTex);
		local tempNumText=tempItem:AddComponent(UIText,"numText");
		local info_iconPress=tempItem:AddComponent(UIEventTrigger,"IconImg");
		info_iconPress:SetOnLongPress(function()
			UIManager:GetInstance():OpenWindow(UIWindowNames.UIItemTips,self.model.drop_item_list[i+1].id)
		end,(function()
			UIManager:GetInstance():CloseWindow(UIWindowNames.UIItemTips)
		end),true)
		table.insert(self.lghlRewarList,{itemObj=tempItem,icon=tempIcon,frame=tempFrame,numText=tempNumText});
	end
end

--设置芦花鼓楼数据
local function SetLhglData(self)
	local campIndex=LuHuaGuLouData:GetInstance().campIndex;
	local passIndex=LuHuaGuLouData:GetInstance().passIndex;
	local reed_tower =  DataUtil.GetData("reed_tower");
	local campData=reed_tower[campIndex];
	self.nextPassData=campData.Lvs[passIndex+1];
	self.fightBtn.transform.gameObject:SetActive(self.nextPassData~=nil);
	self.campText:SetText(campData.Name);
	self.passText:SetText(string.format("%s关通关奖励",passIndex));
	local campBgList={[1]="ui_t_c2_195",[2]="ui_t_c2_197",[3]="ui_t_c2_194",[4]="ui_t_c2_196"};
	self.campBg:SetSpriteName(campBgList[campIndex]);
	local awardList = self.model.drop_item_list
	for i, v in ipairs(self.lghlRewarList) do
		v.itemObj:SetActive(awardList[i]~=nil);
		if awardList[i]~=nil then
			v.icon:SetSpriteName(awardList[i].icon);
			v.frame:SetSpriteName(SpriteDefine:GetItemQualityFrameByType(awardList[i].quality));
			v.numText:SetText(awardList[i].num);
		end
	end
end

local function OnCreate(self)
	base.OnCreate(self)
	InitLhglPanel(self);
	-- 初始化各个组件
	self.effect_obj=UIUtil.FindTrans(self.transform,camp_effect).gameObject
	self.maskCanvas=self:AddComponent(UICanvas,"StaticCanvas/Mask");
	self.maskCanvas:SetOrder(6);
	self.maskCanvas.transform.gameObject:SetActive(false);
	self.Suc_Img=self:AddComponent(UIImage,"Bg/Win (1)",AtlasConfig.Language)
	self.Suc_Img:SetSpriteName("ui_t_Jiesuan_005")
    self.conventional_panel = UIUtil.FindTrans(self.transform,"StaticCanvas/ConventionalBattlePanel")
    self.arena_panel = UIUtil.FindTrans(self.transform,"StaticCanvas/ArenaBattlePanel")
    self.scoreText = self:AddComponent(UIText,"StaticCanvas/ArenaBattlePanel/scoreNumText")
    self.winNumText = self:AddComponent(UIText,"StaticCanvas/ArenaBattlePanel/winNumText")
	self.back_btn = self:AddComponent(UIButton,"Back")
	self.back_btn:SetOnClick(OnReturnBtnClick)
	self.star1_img = self:AddComponent(UIImage,"StaticCanvas/ConventionalBattlePanel/1")
	self.star2_img = self:AddComponent(UIImage,"StaticCanvas/ConventionalBattlePanel/2")
	self.star3_img = self:AddComponent(UIImage,"StaticCanvas/ConventionalBattlePanel/3")
	self.des1_text = self:AddComponent(UIText,"StaticCanvas/ConventionalBattlePanel/1/Content1")
	self.des2_text = self:AddComponent(UIText,"StaticCanvas/ConventionalBattlePanel/2/Content2")
	self.des3_text = self:AddComponent(UIText,"StaticCanvas/ConventionalBattlePanel/3/Content3")
	self.gray=self.star1_img:GetMat();
	self.starImgList={[1]=self.star1_img,[2]=self.star2_img,[3]=self.star3_img};
	self.grid1 = self:AddComponent(UIBaseContainer,"StaticCanvas/showZone/Grid1")
	local itemCount = self.grid1.transform.childCount
	self.awardPrbList1 = {}
	for i = 0, itemCount - 1 do
		local singleTrans = self.grid1.transform:GetChild(i)
		local pass = BattleAwardData.New(self,singleTrans.gameObject)
		pass:OnCreate()
		table.insert(self.awardPrbList1,pass)
	end

	self.grid2 = self:AddComponent(UIBaseContainer,"StaticCanvas/showZone/Grid2")
	local itemCount = self.grid2.transform.childCount
	self.awardPrbList2 = {}
	for i = 0, itemCount - 1 do
		local singleTrans = self.grid2.transform:GetChild(i)
		local pass = BattleAwardData.New(self,singleTrans.gameObject)
		pass:OnCreate()
		table.insert(self.awardPrbList2,pass)
	end
	--播放战斗背景音乐
	LJAudioManger:GetInstance():PlayMusic("BGM_Battle_Win")
end

local function SetData(self)
	self.awardList = self.model.drop_item_list
	if #self.awardList > 4 then
		self.grid2.gameObject:SetActive(true)
		for i, v in ipairs(self.awardPrbList1) do
			if self.awardList[i]~=nil then
				v.gameObject:SetActive(true)
				v:Refresh(self.awardList[i])
			else
				v.gameObject:SetActive(false)
			end
		end
		for i, v in ipairs(self.awardPrbList2) do
			if self.awardList[i+4]~=nil then
				v.gameObject:SetActive(true)
				v:Refresh(self.awardList[i+4])
			else
				v.gameObject:SetActive(false)
			end
		end
	else
		self.grid2.gameObject:SetActive(false)
		for i, v in ipairs(self.awardPrbList1) do
			if self.awardList[i]~=nil then
				v.gameObject:SetActive(true)
				v:Refresh(self.awardList[i])
			else
				v.gameObject:SetActive(false)
			end
		end
	end
	self.lhglPanel.transform.gameObject:SetActive(BattleFieldManager:GetInstance().battleType==BattleEnum.BattleType.LUHUAGULOU);
	if(BattleFieldManager:GetInstance().battleType==BattleEnum.BattleType.NORMAL or BattleFieldManager:GetInstance().battleType == BattleEnum.BattleType.GUIDE) then
		--困难 普通
		local Type = math.floor(BattleFieldManager:GetInstance().fightId / 10000)
		--章节索引
		if Type == 10 then
			self.conventional_panel.gameObject:SetActive(false)
			self.arena_panel.gameObject:SetActive(false)
		else
			self.conventional_panel.gameObject:SetActive(true)
			self.arena_panel.gameObject:SetActive(false)
			local levelData= DataUtil.GetData("level")
			local levelIndex = math.floor(BattleFieldManager:GetInstance().fightId/100)
			local data = levelData[Type][levelIndex].Levels[BattleFieldManager:GetInstance().fightId].StarRating
			if data == nil then
				return
			end
			local ruleData = DataUtil.GetData("star_rule")
			local starList={};
			for i, v in ipairs(self.model.star_list) do
				starList[math.floor(v)]=0;
			end
			for i, v in ipairs(data) do
				if ruleData[v] ~= nil then
					--table.insert(rule_des, string.format( ruleData[v].Des, math.floor(ruleData[v].Mul * ruleData[v].Param[1])))
					local value1,value2 =math.modf(ruleData[v].Mul*ruleData[v].Param[1])
					local index = string.find(ruleData[v].Des,"%s",1,true)
					if index ~= nil and index > 0 then
						table.insert(rule_des, string.format( ruleData[v].Des, value1))
					else
						table.insert(rule_des, ruleData[v].Des)
					end
					--table.insert(rule_des, string.format( ruleData[v].Des, ruleData[v].Mul))
				end
				if starList[v]~=nil then
					self.starImgList[i]:SetMat(nil)
				else
					self.starImgList[i]:SetMat(self.gray)
				end
			end
		end

		--local starCount = self.model.star_list
--[[		if #starCount == 1 then
			self.star1_img:SetSpriteName("ui_t_Stage_013")
			self.star2_img:SetSpriteName("ui_t_Stage_014")
			self.star3_img:SetSpriteName("ui_t_Stage_014")
		elseif #starCount == 2 then
			self.star1_img:SetSpriteName("ui_t_Stage_013")
			self.star2_img:SetSpriteName("ui_t_Stage_013")
			self.star3_img:SetSpriteName("ui_t_Stage_014")
		elseif #starCount == 3 then
			self.star1_img:SetSpriteName("ui_t_Stage_013")
			self.star2_img:SetSpriteName("ui_t_Stage_013")
			self.star3_img:SetSpriteName("ui_t_Stage_013")
		end]]

		self.des1_text:SetText(rule_des[1]) self.des2_text:SetText(rule_des[2]) self.des3_text:SetText(rule_des[3])
	elseif BattleFieldManager:GetInstance().battleType==BattleEnum.BattleType.LUHUAGULOU then
		SetLhglData(self);
		self.conventional_panel.gameObject:SetActive(false)
		self.arena_panel.gameObject:SetActive(false)
		self.grid1.transform.gameObject:SetActive(false);
		self.grid2.transform.gameObject:SetActive(false);
	elseif BattleFieldManager:GetInstance().battleType == BattleEnum.BattleType.SOLO_BOSS then
		self.conventional_panel.gameObject:SetActive(true)
		self.arena_panel.gameObject:SetActive(false)
	elseif BattleFieldManager:GetInstance().battleType == BattleEnum.BattleType.SOLO_ARENA then
		self.scoreText:SetText(self.model.arena_score_num)
		self.winNumText:SetText(self.model.arena_win_num)
		self.conventional_panel.gameObject:SetActive(false)
		self.arena_panel.gameObject:SetActive(true)
	elseif BattleFieldManager:GetInstance().battleType == BattleEnum.BattleType.TEACHING  then
		self.conventional_panel.gameObject:SetActive(true)
		self.arena_panel.gameObject:SetActive(false)
	elseif BattleFieldManager:GetInstance().battleType == BattleEnum.BattleType.CACODEMON  then
		self.conventional_panel.gameObject:SetActive(false)
		self.arena_panel.gameObject:SetActive(false)
	else
		self.conventional_panel.gameObject:SetActive(false)
		self.arena_panel.gameObject:SetActive(false)
	end
end

local function OnEnable(self)
	base.OnEnable(self)
	UIUtil.SetEffectLayer(self.effect_obj,self.base_order)
	self:OnRefresh()
	SetData(self)
	--战斗胜利打点
	--if BattleFieldManager:GetInstance().fightId ~= nil and BattleFieldManager:GetInstance().fightId ~= 0 then
	--	SdkManager:GetInstance().DataReport:MissionCompleted("关卡"..BattleFieldManager:GetInstance().fightId)
	--end


end

local function OnRefresh(self)
	-- 各组件刷新
	
end

local function OnAddListener(self)
	base.OnAddListener(self)
	-- UI消息注册
	
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- UI消息注销
	
end

local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)
end

UIBattleSettlementView.OnCreate = OnCreate
UIBattleSettlementView.OnEnable = OnEnable
UIBattleSettlementView.OnRefresh = OnRefresh
UIBattleSettlementView.OnAddListener = OnAddListener
UIBattleSettlementView.OnRemoveListener = OnRemoveListener
UIBattleSettlementView.OnDestroy = OnDestroy

return UIBattleSettlementView

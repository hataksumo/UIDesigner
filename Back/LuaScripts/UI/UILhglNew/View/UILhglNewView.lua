
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local close_btn_path="ParentLayout/closeParent";
local reward_btn_path="ParentLayout/leftRight/rewardBtn";
local shop_btn_path="ParentLayout/leftRight/shopBtn";
local rank_btn_path="ParentLayout/leftRight/rankBtn";
local card_range_btn_path="ParentLayout/rightLayout/TopLayout/cardRangeBtn";
local fight_btn_path="ParentLayout/rightLayout/BottomLayout/FightBtn";
local camp_layout_path="ParentLayout/leftRight/leftRight";
local reward_list_path="ParentLayout/rightLayout/BottomLayout/ItemGrid";
local select_img_path="ParentLayout/SelectImg";
local resource_bar_path="ParentLayout/resourceBarParent";

local user_card_range_group_path="ParentLayout/CardRangeScrollView";
local card_group_btn_path="ParentLayout/CardRangeScrollView/BgBtn"
local card_range_title_text="ParentLayout/CardRangeScrollView/ScrollViewBg/CardRangeText";
local card_group_path="ParentLayout/CardRangeScrollView/ScrollView/content";
local jlr_btn_path="ParentLayout/CardRangeScrollView/ScrollViewBg/jlrBtn";
local shl_btn_path="ParentLayout/CardRangeScrollView/ScrollViewBg/shlBtn";
local card_type_select_path="ParentLayout/CardRangeScrollView/selectBtn";
local card_type_select_text_path="ParentLayout/CardRangeScrollView/selectBtn/SelectText";
local card_range_close_btn_path="ParentLayout/CardRangeScrollView/RangeCloseBtn";

local slider_img_path="ParentLayout/rightLayout/TopLayout/slider/sliderImg";
local point_layout_path="ParentLayout/rightLayout/TopLayout/pointObj";
local gray_mat_path="ParentLayout";
local pass_group_layout_path="ParentLayout/rightLayout/TopLayout/passGroup";
local reward_pass_num_path="ParentLayout/rightLayout/BottomLayout/passRewardText";

--每日积累奖励
local day_reward_panel_path="ParentLayout/RewardPanel";
local day_reard_close_path="closeBtn";
local day_reard_grid_path="ScrollView/content";
local day_reward_bg_close_path="BgBtn";

--标题文本
local title_text_path="ParentLayout/rightLayout/TopLayout/Title/TitleText";

local LuglItem = require "UI.UILhglNew.Component.LuglItemNew";

local UILhglNewView = BaseClass("UILhglNewView", UIBaseView)
local base = UIBaseView

--静态文本
local reward_text_path="ParentLayout/leftRight/rewardBtn/rewardText";
local shop_text_path="ParentLayout/leftRight/shopBtn/shopText";
local rank_text_path="ParentLayout/leftRight/rankBtn/rankText";
local card_range_text_path="ParentLayout/rightLayout/TopLayout/cardRangeBtn/rangeText";
local fight_btn_text_path="ParentLayout/rightLayout/BottomLayout/FightBtn/FightBtnText";
local di_text_path="ParentLayout/rightLayout/TopLayout/Title/diText";
local guan_text_path="ParentLayout/rightLayout/TopLayout/Title/guanText";
local static_jlr_btn_text_path="ParentLayout/CardRangeScrollView/ScrollViewBg/jlrBtn/jlrText";
local static_shl_btn_text_path="ParentLayout/CardRangeScrollView/ScrollViewBg/shlBtn/shlText";
local static_day_reward_title_path="ParentLayout/RewardPanel/ScrollViewBg/dayRewardText"
local static_day_reward_tip_path="ParentLayout/RewardPanel/dayRewardtipText";

local function StaticTextShow(self)
	local staticRewardText=self:AddComponent(UIText,reward_text_path);
	staticRewardText:SetText(DataUtil.GetClientText(100117));
	local staticShopText=self:AddComponent(UIText,shop_text_path);
	staticShopText:SetText(DataUtil.GetClientText(100118));
	local staticRankText=self:AddComponent(UIText,rank_text_path);
	staticRankText:SetText(DataUtil.GetClientText(100119));
	local cardRangeText=self:AddComponent(UIText,card_range_text_path);
	cardRangeText:SetText(DataUtil.GetClientText(100120));
	local staticBtnText=self:AddComponent(UIText,fight_btn_text_path);
	staticBtnText:SetText(DataUtil.GetClientText(100121));
	local diText=self:AddComponent(UIText,di_text_path);
	diText:SetText(DataUtil.GetClientText(100122));
	local guanText=self:AddComponent(UIText,guan_text_path);
	guanText:SetText(DataUtil.GetClientText(100123));
	local staticJlrText=self:AddComponent(UIText,static_jlr_btn_text_path);
	staticJlrText:SetText(DataUtil.GetClientText(100115));
	local staticShlText=self:AddComponent(UIText,static_shl_btn_text_path);
	staticShlText:SetText(DataUtil.GetClientText(100116));
	local staticDayRewardTitle=self:AddComponent(UIText,static_day_reward_title_path);
	staticDayRewardTitle:SetText(DataUtil.GetClientText(100126));
	local staticDayRewardTip=self:AddComponent(UIText,static_day_reward_tip_path);
	staticDayRewardTip:SetText(DataUtil.GetClientText(1001267));
end


--设置风花雪月选中状态
local function SetCampActive(self,index)
	self.selectImg.transform:SetParent(self.campList[index].itemObj.transform);
	self.selectImg.transform:SetAsFirstSibling();
	self.selectImg.transform.localScale=Vector3.New(1,1,1);
	self.selectImg.transform.localPosition=Vector3.New(0,0,0);
	self.selectImg.transform.gameObject:SetActive(true);
end


--初始化奖励显示
local function InitRewardShow(self)
	local singleCampData=self.model.chapterList[self.curCamp];
	for i, v in ipairs(self.rewardList) do
		v.rewardObj.transform.gameObject:SetActive(singleCampData.curPassData.reward[i]~=nil);
		if singleCampData.curPassData.reward[i]~=nil then
			local singleRewardData=singleCampData.curPassData.reward[i];
			local itemXlsxData= DataUtil.GetDataByIdAndType(singleRewardData.id);
			v.frame:SetSpriteName(SpriteDefine:GetItemQualityFrameByType(itemXlsxData.quality));
			v.icon:SetSpriteName(itemXlsxData.icon);
			v.numText:SetText(singleRewardData.val);
		end
	end
end
--显示用卡范围
local function ShowCardRange(self)
	local jlrCardRangeData=self.cardType==1 and self.singlePassData.jlrCardRange or self.singlePassData.shlcardRange;
	self.cardRangeTitleText:SetText(string.format(DataUtil.GetClientText(100124),self.model.chapterList[self.curCamp].name));
	self.cardGroup:SetLength(table.length(jlrCardRangeData));
	self.cardGroup:ResetToBeginning();
end

--单个关卡的显示
local function SinglePassShow(self)
	for i, v in ipairs(self.passList) do
		if self.campData.passShowList[i]~=nil then
			local singleShowData=self.campData.passShowList[i];
			if i==1 and singleShowData.isNull==true then
				v.itemObj.transform.gameObject:SetActive(false);
				self.pointList[i].transform.gameObject:SetActive(false);
			else
				v.itemObj.transform.gameObject:SetActive(true);
				v.frameObj.transform.gameObject:SetActive(true);
				self.pointList[i].transform.gameObject:SetActive(true);
			end
			if i==3 and singleShowData.isNull==true then
				v.passText:SetText(DataUtil.GetClientText(100111));
				v.frameObj.transform.gameObject:SetActive(false);
			end
			if(not singleShowData.isNull) then
				v.passText:SetText(string.format(DataUtil.GetClientText(100112),singleShowData.curStage));
				v.icon:SetSpriteName(singleShowData.reedTowerXlsx.HeadIcon);
				v.mask.gameObject:SetActive(i==1);
			end

		end
--[[		v:SetMat(self.grayMat);
		v:SetMat(nil);]]
	end
end

--每日积累奖励展示面板
local function ShowDayRewardPanel(self)
	if table.length(self.model.dayRewardListFinal)>0 then
		for i, v in ipairs(self.dayRewardList) do
			v.itemObj.transform.gameObject:SetActive(self.model.dayRewardListFinal[i]~=nil);
			if self.model.dayRewardListFinal[i]~=nil then
				local itemId=self.model.dayRewardListFinal[i].id;
				local num=self.model.dayRewardListFinal[i].num;
				local itemXlsxData= DataUtil.GetDataByIdAndType(itemId);
				v.frame:SetSpriteName(SpriteDefine:GetItemQualityFrameByType(itemXlsxData.quality));
				v.icon:SetSpriteName(itemXlsxData.icon);
				v.numText:SetText(num);
			end
		end
	end
end

--显示标题文本
local function ShowTitleText(self,num)
	self.titleText:SetText(num);
end

local function ShowCampInfo(self)
	for i, v in ipairs(self.campList) do
		if self.model.chapterList[i]~=nil then
			local singleCampData=self.model.chapterList[i];
			v.nameText:SetText(singleCampData.name);
			v.passText:SetText(string.format("%s:<color=#5F9325>%s</color>",DataUtil.GetClientText(100113),singleCampData.curPassData.curStage-1));
		end
	end
	self.campData=self.model.chapterList[self.curCamp];
	self.singlePassData=self.campData.curPassData;
	local str=self.singlePassData.isPass and "敬请期待" or string.format(DataUtil.GetClientText(100114),self.singlePassData.curStage)
	self.rewardPassText:SetText(str);
	local curStage=self.singlePassData.isPass and self.singlePassData.maxLv or self.singlePassData.curStage;
	ShowTitleText(self,self.singlePassData.curStage);
	InitRewardShow(self);
	ShowCardRange(self);
	SinglePassShow(self);
	ShowDayRewardPanel(self);
end

--单个章节按钮点击
local function OnSingleCampBtnClick(self,index)
	LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
	if self.curCamp~=index+1 then
		if not self.AllState[index+1].state then
			UISpecial:GetInstance():UITipText(self.AllState[index+1].des);
			return
		end
		self.curCamp=index+1;
		SetCampActive(self,self.curCamp);
		ShowCampInfo(self);
		UIManager:GetInstance():Broadcast(UIMessageNames.UIMAINCITY_STAMINA_UPDATE,self.curCamp)
	end
end
local function SetUIParent(child,parent)
	child:SetParent(parent)
	child.transform.localScale = Vector3.one
	child.transform.localPosition = Vector3.zero
end

local function OnCreate(self)
	base.OnCreate(self)
	StaticTextShow(self);
	-- 初始化各个组件
	self.closeParent=UIUtil.FindTrans(self.transform,close_btn_path);
	UIUtil.CreatCloseBtnComponent(self,self.closeParent,function(go) self.closeComponent=go end,function()
		UIManager:GetInstance():CloseWindow(UIWindowNames.UILhglNew);
	end,function()
		UIManager:GetInstance():Broadcast(UIMessageNames.UIMAINCITY_BACK_SCENE,"UIChallengeEntrance")
	end ,DataUtil.GetClientText(100108),true,2);

	self.grayMat=self:AddComponent(UIImage,gray_mat_path,AtlasConfig.DynamicTex):GetMat();
	self.rewardBtn=self:AddComponent(UIButton,reward_btn_path);
	self.shopBtn=self:AddComponent(UIButton,shop_btn_path);
	self.rankBtn=self:AddComponent(UIButton,rank_btn_path);
	self.rankBtn.transform.gameObject:SetActive(false);
	self.cardRangeBtn=self:AddComponent(UIButton,card_range_btn_path);
	self.fightBtn=self:AddComponent(UIButton,fight_btn_path);
	self.campLayout=self:AddComponent(UIBaseContainer,camp_layout_path);
	self.rewardListParent=self:AddComponent(UIBaseContainer,reward_list_path);

	self.rewardBtn:SetOnClick(function()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		if table.length(self.model.dayRewardListFinal)>0 then
			self.dayRewardPanel.transform.gameObject:SetActive(true);
		else
			UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100109))
		end

	end);
	self.shopBtn:SetOnClick(function()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		UIManager:GetInstance():OpenWindow(UIWindowNames.UIWindowShopMain,3,5);
	end);
	self.rankBtn:SetOnClick(function()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100110))
	end);
	self.cardRangeBtn:SetOnClick(function()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.userCardRangeGroup.transform.gameObject:SetActive(true);
	end);
	self.fightBtn:SetOnClick(function()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		if self.singlePassData.isPass then
			UISpecial:GetInstance():UITipText("已通关，敬请期待");
		else
			self.ctrl:SendEnterFightRequest(self.singlePassData.reedTowerXlsx.Id,self.singlePassData.reedTowerXlsx.MapPosId,self.curCamp,self.singlePassData.curStage);
		end

	end);
	self.campList={};
	local count=self.campLayout.transform.childCount;
	for i = 0, count-1 do
		local tempItem=self.campLayout:AddComponent(UIBaseContainer,i);
		local campNameText=tempItem:AddComponent(UIText,"tagName");
		local campImg=tempItem:AddComponent(UIImage,"bg",AtlasConfig.DynamicTex);
		local tempBtn=tempItem:AddComponent(UIButton,"");
		local tempPassText=tempItem:AddComponent(UIText,"PassObj/passText");
		tempBtn:SetOnClick(self,OnSingleCampBtnClick,i);
		table.insert(self.campList,{itemObj=tempItem,nameText=campNameText,passText=tempPassText,Img=campImg});
	end
	self.selectImg=UIUtil.FindTrans(self.transform,select_img_path);

	self.rewardList={};
	count=self.rewardListParent.transform.childCount;
	for i = 0, count-1 do
		local tempItem=self.rewardListParent:AddComponent(UIBaseContainer,i);
		local tempFrame=tempItem:AddComponent(UIImage,"",AtlasConfig.DynamicTex);
		local tempIcon=tempItem:AddComponent(UIImage,"icon",AtlasConfig.DynamicTex);
		local tempNumText=tempItem:AddComponent(UIText,"num");
		local info_iconPress=tempItem:AddComponent(UIEventTrigger,"icon");
		info_iconPress:SetOnLongPress(function()
			UIManager:GetInstance():OpenWindow(UIWindowNames.UIItemTips,self.model.chapterList[self.curCamp].curPassData.reward[i+1].id)
		end,(function()
			UIManager:GetInstance():CloseWindow(UIWindowNames.UIItemTips)
		end),true)
		table.insert(self.rewardList,{rewardObj=tempItem,frame=tempFrame,icon=tempIcon,numText=tempNumText,btn=tempBtn});
	end
	self.cardRangeClose=self:AddComponent(UIButton,card_range_close_btn_path);
	self.cardRangeClose:SetOnClick(function()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.userCardRangeGroup.transform.gameObject:SetActive(false);
	end)
	self.cardGroup=self:AddComponent(UIWrapGroup3D,card_group_path,LuglItem);
	self.userCardRangeGroup=UIUtil.FindTrans(self.transform,user_card_range_group_path);
	self.userCardRangeGroup.transform.gameObject:SetActive(false);
	self.cardTypeSelect=UIUtil.FindTrans(self.transform,card_type_select_path);
	self.cardSelectText=self:AddComponent(UIText,card_type_select_text_path);
	self.cardGroupBtn=self:AddComponent(UIButton,card_group_btn_path);
	self.cardGroupBtn:SetOnClick(function()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.userCardRangeGroup.transform.gameObject:SetActive(false);
	end)
	self.jlrBtn=self:AddComponent(UIButton,jlr_btn_path);
	self.shlBtn=self:AddComponent(UIButton,shl_btn_path);
	self.jlrBtn:SetOnClick(function()
		if self.cardType~=1 then
			self.cardType=1
			ShowCardRange(self)
			SetUIParent(self.cardTypeSelect.transform,self.jlrBtn.transform);
			self.cardSelectText:SetText(DataUtil.GetClientText(100115));
		end
	end);
	self.shlBtn:SetOnClick(function()
		if self.cardType~=2 then
			self.cardType=2
			ShowCardRange(self)
			SetUIParent(self.cardTypeSelect.transform,self.shlBtn.transform);
			self.cardSelectText:SetText(DataUtil.GetClientText(100116));
		end
	end)

	self.cardRangeTitleText=self:AddComponent(UIText,card_range_title_text);

	self.sliderImg=self:AddComponent(UIImage,slider_img_path,AtlasConfig.DynamicTex);
	self.pointLayout=self:AddComponent(UIBaseContainer,point_layout_path);
	self.pointList={};
	count=self.pointLayout.transform.childCount;
	for i = 0, count-1 do
		local pointObj=self.pointLayout:AddComponent(UIBaseContainer,i);
		local pointImg=pointObj:AddComponent(UIImage,"",AtlasConfig.DynamicTex);
		if i<2 then
			pointImg:SetSpriteName("ui_t_c2_207");
		end
		table.insert(self.pointList,pointImg);
	end

	--每日累积奖励
	self.dayRewardPanel=self:AddComponent(UIBaseContainer,day_reward_panel_path);
	self.dayRewardPanel.transform.gameObject:SetActive(false);
	self.dayRewardCloseBtn=self.dayRewardPanel:AddComponent(UIButton,day_reard_close_path);
	self.dayRewardCloseBtn:SetOnClick(function()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.dayRewardPanel.transform.gameObject:SetActive(false);
	end)
	self.dayBgCloseBtn=self.dayRewardPanel:AddComponent(UIButton,day_reward_bg_close_path);
	self.dayBgCloseBtn:SetOnClick(function()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.dayRewardPanel.transform.gameObject:SetActive(false);
	end)
	self.dayRewardList={};
	self.dayRewardGrid=self.dayRewardPanel:AddComponent(UIBaseContainer,day_reard_grid_path);
	count=self.dayRewardGrid.transform.childCount;

	for i = 0, count-1 do
		local tempItem=self.dayRewardGrid:AddComponent(UIBaseContainer,i);
		local tempFrame=tempItem:AddComponent(UIImage,"",AtlasConfig.DynamicTex);
		local tempIcon=tempItem:AddComponent(UIImage,"IconImg",AtlasConfig.DynamicTex);
		local tempNumText=tempItem:AddComponent(UIText,"numText");
		local info_iconPress=tempItem:AddComponent(UIEventTrigger,"IconImg");
		info_iconPress:SetOnLongPress(function()
			UIManager:GetInstance():OpenWindow(UIWindowNames.UIItemTips,self.model.dayRewardListFinal[i+1].id)
		end,(function()
			UIManager:GetInstance():CloseWindow(UIWindowNames.UIItemTips)
		end),true)
		table.insert(self.dayRewardList,{itemObj=tempItem,frame=tempFrame,icon=tempIcon,numText=tempNumText});
	end
	--关卡显示
	self.passLayout=self:AddComponent(UIBaseContainer,pass_group_layout_path);
	count=self.passLayout.transform.childCount;
	self.passList={};
	for i = 0, count-1 do
		local tempItem=self.passLayout:AddComponent(UIBaseContainer,i);
		local tempText=tempItem:AddComponent(UIText,"PassText");
		local frame=UIUtil.FindTrans(tempItem.transform,"frame");
		local tempIcon=tempItem:AddComponent(UIImage,"frame/icon",AtlasConfig.DynamicTex);
		local tempMask=UIUtil.FindTrans(tempItem.transform,"frame/passObj");
		local finishText=tempItem:AddComponent(UIText,"frame/passObj/finishText")
		finishText:SetText(DataUtil.GetClientText(100128));
		table.insert(self.passList,{itemObj=tempItem,passText=tempText,icon=tempIcon,mask=tempMask,frameObj=frame});
	end
	self.rewardPassText=self:AddComponent(UIText,reward_pass_num_path);

	--标题文本
	self.titleText=self:AddComponent(UIText,title_text_path);
	self.resourceBarParent=UIUtil.FindTrans(self.transform,resource_bar_path);
	ResourceBarComponentManager:GetInstance():CreatResourceBarComponent(self.resourceBarParent,UIWindowNames.UILhglNew,ResourceBarType.LHGL_MAIN,self);
end


--初始化界面
local function InitUIShow(self)
	self.curCamp=self.model.curCamp;
	SetCampActive(self,self.curCamp);
	ShowCampInfo(self);
end
local function CheckLockData(self)
	self.AllState={}
	table.insert(self.AllState,{state=true,type=0,des=""})
	for i = 10202, 10204 do
		local fstate ,ftype,fdes=UnlockData:GetInstance():GetLockDataState(i)
		if fstate then
			self.campList[i-10200].Img:SetMat(nil)
		else
			self.campList[i-10200].Img:SetMat(self.grayMat)
		end
		table.insert(self.AllState,{state=fstate,type=ftype,des=fdes})
	end
end

local function OnEnable(self)
	base.OnEnable(self)
	self:OnRefresh()
	if LuHuaGuLouData:GetInstance().campList~=nil then
		self:CheckLockData()
	end

	self.cardType=1;
	SetUIParent(self.cardTypeSelect.transform,self.jlrBtn.transform);
	self.cardSelectText:SetText(DataUtil.GetClientText(100115));
	if not self.model.isFirstRequest then
		InitUIShow(self);
	else
		-- SetCampActive(self,1);
	end
end


local function OnRefresh(self)
	-- 各组件刷新
	
end

local function OnAddListener(self)
	base.OnAddListener(self)
	-- UI消息注册
	self:AddUIListener(UIMessageNames.UILHGL_INIT_UI_SHOW,InitUIShow);
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- UI消息注销
	self:RemoveUIListener(UIMessageNames.UILHGL_INIT_UI_SHOW, InitUIShow)
end

local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)
	ResourceBarComponentManager:GetInstance():DestroyResourceBar(UIWindowNames.UILhglNew);
	self.closeComponent:RecyleSelf();
end

UILhglNewView.OnCreate = OnCreate
UILhglNewView.OnEnable = OnEnable
UILhglNewView.OnRefresh = OnRefresh
UILhglNewView.OnAddListener = OnAddListener
UILhglNewView.OnRemoveListener = OnRemoveListener
UILhglNewView.OnDestroy = OnDestroy
UILhglNewView.CheckLockData = CheckLockData
return UILhglNewView

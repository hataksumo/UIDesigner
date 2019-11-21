
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIExploreSetTeamListView = BaseClass("UIExploreSetTeamListView", UIBaseView)
local base = UIBaseView
local ExploreCardItem=require("UI.UIExploreSetTeamList.Component.ExploreCardItem")
local ResourceBarComponentManager = require("UI.UIResourceBar.ResourceBarComponentManager");
local parent_layout_path="ParentLayout";
local force_text_path="ParentLayout/TopLayout/forceItem/forceNumText";
local save_team_btn_path="ParentLayout/TopLayout/saveTeam";
local card_grid_path="ParentLayout/TopLayout/ScrollRect/CardGrid";
local card_list_path="ParentLayout/BottomLayout/ScrollRect/Grid";


--显示单个选中的英雄数据
local function SetSingleHeroItem(self,_item,_data,_realIndex,_force)
	_item.addImg.transform.gameObject:SetActive(_data==nil);
	_item.otherObj.gameObject:SetActive(_data~=nil);
	_item.icon.transform.gameObject:SetActive(_data~=nil);
	_item.frame:SetSpriteName(SpriteDefine:GetCardTopFrameByQuality(3));
	if _data~=nil then
		_item.icon:SetSpriteName(_data.icon);
		_item.frame:SetSpriteName(SpriteDefine:GetCardTopFrameByQuality(_data.quality));
		_item.qualityImg:SetSpriteName(SpriteDefine:GetQuaIconByType(_data.quality));
		_item.lvText:SetText(string.format("Lv.%s",math.floor(_data.level)));
		_item.crystalBg.transform.gameObject:SetActive(_data.type==2)
		_item.crystalBg:SetSpriteName(SpriteDefine:GetCrystalIconByType(_data.crystalType));
		_item.crystalNum:SetText(_data.callCost);
		_item.cardId=_data.id;
		_item.realIndex=_realIndex;
		UIUtil.SetHeroStar(_data.starlv,_item.starList);
		self.curForce=self.curForce+_data.power;
		self.forceText:SetText(math.floor(self.curForce));
	else
		if _force~=nil then
			self.curForce=self.curForce-_force;
			self.forceText:SetText(math.floor(self.curForce));
		end
	end
end

--获取最终上阵的英雄
local function GetFinalTeamList(self)
	local cardList={};
	for i, v in ipairs(self.curSelectList) do
		if v~=0 then
			table.insert(cardList,v.cardId);
		end
	end
	return cardList;
end

--获取关卡的开启等级
local function GetLockOpenLvTip(_index)
	local team_level=DataUtil.GetData("team_level")
	for i, v in ipairs(team_level) do
		if v.HangUpTeamNum>=_index then
			return v.level
		end
	end
	return 0
end

local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.parentLayout=UIUtil.FindTrans(self.transform,parent_layout_path);
	self.forceText=self:AddComponent(UIText,force_text_path);
	self.saveBtn=self:AddComponent(UIButton,save_team_btn_path);
	self.saveBtn:SetOnClick(function()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		local finalList=GetFinalTeamList(self);
		if finalList~=nil and #finalList>0 then
			self.ctrl:SaveOnHookTeamRequest(finalList,self.model.hangUpId<=0,self.model.firstHangUpId);
		else
			UISpecial:GetInstance():UITipText("没有可以保存的队伍");
		end
	end)

	self.cardGrid=self:AddComponent(UIBaseContainer,card_grid_path);
	self.teamList={};
	local count=self.cardGrid.transform.childCount;
	for i = 0, count-1 do
		local tempCard=self.cardGrid:AddComponent(UIBaseContainer,i);
		local tempFrame=tempCard:AddComponent(UIImage,"CardHead/Frame",AtlasConfig.DynamicTex);
		local tempIcon=tempCard:AddComponent(UIImage,"CardHead/IconImg",AtlasConfig.DynamicTex);
		local tempQuality=tempCard:AddComponent(UIImage,"CardHead/other/QualityImg",AtlasConfig.DynamicTex);
		local tempCrystal=tempCard:AddComponent(UIImage,"CardHead/other/Crystal",AtlasConfig.DynamicTex);
		local tempCrystalNum=tempCard:AddComponent(UIText,"CardHead/other/Crystal/CrystalNum");
		local tempLvText=tempCard:AddComponent(UIText,"CardHead/other/LevelText");
		local tempOther=UIUtil.FindTrans(tempCard.transform,"CardHead/other");
		local tempAdd=UIUtil.FindTrans(tempCard.transform,"CardHead/add");
		local tempLock=UIUtil.FindTrans(tempCard.transform,"CardHead/lock");
		local starGroup=tempCard:AddComponent(UIBaseContainer,"CardHead/other/Star");
		local btn=tempCard:AddComponent(UIButton,"CardHead");
		local tempStarList={};
		local starCount=starGroup.transform.childCount;
		for i = 0, starCount-1 do
			local singleStarImg=starGroup:AddComponent(UIImage,i,AtlasConfig.DynamicTex);
			table.insert(tempStarList,singleStarImg);
		end
		table.insert(self.teamList,{cardObj=tempCard,icon=tempIcon,frame=tempFrame,
		   qualityImg=tempQuality,crystalBg=tempCrystal,crystalNum=tempCrystalNum,starList=tempStarList,lvText=tempLvText,
				otherObj=tempOther,addImg=tempAdd,lockImg=tempLock});

		local index=i+1;
		btn:SetOnClick(function()
			--下阵
			if self.curSelectList[index]~=0 then
				local dataRealIndex=self.curSelectList[index].realIndex;
				SetSingleHeroItem(self,self.teamList[index],nil,dataRealIndex,self.cardList[dataRealIndex].cardData.power);
				self.cardList[dataRealIndex].isSelect=false;
				self.curSelectList[index]=0;
				self.card_wrap_group:WrapContent(true);
			elseif index>self.model.hangUpTeamNum then
				UIManager:GetInstance():OpenWindow(UIWindowNames.UIItemJumpTip,1401014,GetLockOpenLvTip(index),UIWindowNames.UIExploreSetTeamList)
			end

		end);
	end

	self.card_wrap_group=self:AddComponent(UIWrapGroup3D,card_list_path,ExploreCardItem);
	ResourceBarComponentManager:GetInstance():CreatResourceBarComponent(self.parentLayout,UIWindowNames.UIExploreSetTeamList,ResourceBarType.PATROL_UI,self);
	UIUtil.CreatCloseBtnComponent(self,self.parentLayout,function(go) self.closeComponent=go end,function()
		self.ctrl:CloseSelf()
	end,function()
	end ,"探险阵容",true,11);
end

--获取当前选中列表长度
local function GetCurSelectHeroCount(self)
	local length=0;
	for i, v in ipairs(self.curSelectList) do
		if v~=0 then
			length=length+1;
		end
	end
	return length;
end



--设置选中的英雄
local function SetSelectHeroItem(self)
	for i, v in ipairs(self.teamList) do
		local data=self.model.haveSelectList[i];
		v.addImg.transform.gameObject:SetActive(i<=self.model.hangUpTeamNum and data==nil);
		v.lockImg.transform.gameObject:SetActive(i>self.model.hangUpTeamNum);
		v.otherObj.gameObject:SetActive(data~=nil and i<=self.model.hangUpTeamNum);
		v.icon.transform.gameObject:SetActive(data~=nil and i<=self.model.hangUpTeamNum);
		v.frame:SetSpriteName(SpriteDefine:GetCardTopFrameByQuality(3));
		if data~=nil then
			local cardData=data.cardData;
			SetSingleHeroItem(self,v,cardData,data.index);
			self.curSelectList[i]=v;
		else
			self.curSelectList[i]=0;
		end
	end
end


--点击左侧显示右侧列表选中和取消
local function SetHeroUpOrDown(self,_upOrDown,_data,_realIndex)
	if _upOrDown==1 then--上阵
		if GetCurSelectHeroCount(self)<self.model.hangUpTeamNum then
			for i, v in ipairs(self.curSelectList) do
				if v==0 then
					SetSingleHeroItem(self,self.teamList[i],_data,_realIndex);
					self.curSelectList[i]=self.teamList[i];
					break;
				end
			end
		end
	else
		for i, v in ipairs(self.curSelectList) do
			if v~=0 and  v.cardId==_data.id then
				SetSingleHeroItem(self,v,nil,_realIndex,_data.power);
				self.curSelectList[i]=0;
				break;
			end
		end
	end
end

local function OnEnable(self)
	base.OnEnable(self)
	self.curForce=0;
	self.cardList=self.model.cardList;
	self.curSelectList={};
	self:OnRefresh()
end



local function OnRefresh(self)
	-- 各组件刷新
	self.card_wrap_group:SetLength(table.length(self.cardList));
	self.card_wrap_group:ResetToBeginning();
	SetSelectHeroItem(self);
	self.forceText:SetText(math.floor(self.curForce));
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
	ResourceBarComponentManager:GetInstance():DestroyResourceBar(UIWindowNames.UIExploreSetTeamList);
	self.closeComponent:RecyleSelf();
end


UIExploreSetTeamListView.GetCurSelectHeroCount=GetCurSelectHeroCount;
UIExploreSetTeamListView.SetHeroUpOrDown=SetHeroUpOrDown;
UIExploreSetTeamListView.OnCreate = OnCreate
UIExploreSetTeamListView.OnEnable = OnEnable
UIExploreSetTeamListView.OnRefresh = OnRefresh
UIExploreSetTeamListView.OnAddListener = OnAddListener
UIExploreSetTeamListView.OnRemoveListener = OnRemoveListener
UIExploreSetTeamListView.OnDestroy = OnDestroy

return UIExploreSetTeamListView

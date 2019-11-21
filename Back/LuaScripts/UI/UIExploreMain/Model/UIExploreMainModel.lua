
--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UIExploreMainModel = BaseClass("UIExploreMainModel", UIBaseModel)
local base = UIBaseModel

-- 创建
local function OnCreate(self)
	base.OnCreate(self)
	-- 窗口生命周期内保持的成员变量放这

end

--获取当前队伍的战斗力
local function GetCurTeamForce(self,_teamList)
	local finalPower=0;
	for i, v in ipairs(_teamList) do
		local tempCardData=CardData:GetInstance():GetCardDataById(v);
		if tempCardData~=nil then
			finalPower=finalPower+tempCardData.power;
		end
	end
	return finalPower
end

--获取战斗表现用队伍
local function GetFightShowTeam(_teamList)
	local teamList={};
	for i, v in ipairs(_teamList) do
		local tempCardData=CardData:GetInstance():GetCardDataById(v);
		if tempCardData~=nil then
			table.insert(teamList,tempCardData);
		end
	end
	table.sort(teamList,function(a,b) return a.power>b.power  end);
	local teamIdList={};
	for i = 1, 3 do
		if teamList[i]~=nil then
			table.insert(teamIdList,math.floor(teamList[i].id));
		end
	end
	return teamIdList;
end

--探险最大关卡刷新
local function OnExploreMaxLvRefresh(self,_notsend)
	local exploreData=ExploreData:GetInstance().teamData;
	self.exploreData=exploreData;
	self.teamPower=GetCurTeamForce(self,exploreData.team);
	self.fightTeamIdList=GetFightShowTeam(exploreData.team);
	if exploreData.level_id>0 then
		self.curSelectChapter=ExploreData:GetInstance():GetChapterIndexByLevelId(exploreData.level_id);
	end
	local needPlotLevel=ExploreData:GetInstance().chapterList[self.curSelectChapter].needPlotLevel;
	self.chapterOpen=MapData:GetInstance():CheckPassLevel(needPlotLevel)
	self.curChapterData=ExploreData:GetInstance().chapterList[self.curSelectChapter].passList;
	self.levelId=exploreData.level_id;
	self.curMaxLevel=exploreData.maxLevelId;
	self.haveHangTime=exploreData.haveHangTime;
	local hang_up_data = DataUtil.GetData("hang_up_level");
	self.needDownTime=0;
	if self.curMaxLevel>0 then
		local nextMaxLvId=ExploreData:GetInstance():GetNexLevelId(self.curMaxLevel);
		self.needDownTime=hang_up_data[nextMaxLvId].HangTime;
	end
	if self.levelId>0 then
		self.nextLevelId=ExploreData:GetInstance():GetNexLevelId(self.levelId);
		self.nextNeedForce=hang_up_data[self.nextLevelId].LimitPower;
		self.rewardShow={};
		if hang_up_data[self.exploreData.haveHangMaxId] then
			local rewardStr=hang_up_data[self.exploreData.haveHangMaxId].DropShow;
			for i, v in ipairs(rewardStr) do
				local itemIcon=DataUtil.GetDataByIdAndType(v.Id).icon;
				local str=v.Desc;
				table.insert(self.rewardShow,{icon=itemIcon,desc=str});
			end
		end

	end

	if not _notsend then
		UIManager:GetInstance():Broadcast(UIMessageNames.UI_EXPLORE_MAX_LV_REFRESH);
	end
end

-- 打开
local function OnEnable(self,_teamindex)
	base.OnEnable(self)
	-- 窗口关闭时可以清理的成员变量放这
	self.curSelectChapter=1;
	self.teamIndex=_teamindex;
	OnExploreMaxLvRefresh(self,true);
	self.addspeedSpendId=DataUtil.GetData("global")[153].valueN;
	self.rewardInteval=DataUtil.GetData("global")[155].valueN;
	local speedList=DataUtil.GetData("global")[170].valueNA;
	self.limitAddSpeedTimes=DataUtil.GetData("global")[169].valueN;
end

-- 刷新全部数据
local function OnRefresh(self)


end

--领取奖励刷新
local function OnExploreTakeRewardRefresh(self)
	local exploreData=ExploreData:GetInstance().teamData;
	self.exploreData=exploreData;
	UIManager:GetInstance():Broadcast(UIMessageNames.UI_EXPLORE_TAKE_REWARD_MAIN_REFRESH);
end

--章节切换
local function OnChapterChange(self,_index)
	self.curSelectChapter=_index;
	self.curChapterData=ExploreData:GetInstance().chapterList[self.curSelectChapter].passList;
	UIManager:GetInstance():Broadcast(UIMessageNames.UI_EXPLORE_CHANGE_CHAPTER);
end

--切换队伍
local function ChangeTeam(self,_teamindex)
	self.curSelectChapter=1;
	self.teamIndex=_teamindex;
	OnExploreMaxLvRefresh(self,true);
	UIManager:GetInstance():Broadcast(UIMessageNames.UI_EXPLORE_CHANGE_TEAM_REFRESH);
end

--队伍刷新
local function OnTeamListRefresh(self,_teamId,_cardList)
	if self.teamId==_teamId then
		self.teamPower=GetCurTeamForce(self,ExploreData:GetInstance().teamList[self.teamIndex].team);
	end
end

-- 监听
local function OnAddListener(self)
	base.OnAddListener(self)
	--添加监听
	self:AddDataListener(DataMessageNames.ON_EXPLORE_TAKE_REWARD_REFRESH, OnExploreTakeRewardRefresh)
	self:AddDataListener(DataMessageNames.ON_EXPLORE_MAX_LV_REFRESH, OnExploreMaxLvRefresh)
	self:AddUIListener(UIMessageNames.UI_MODEL_EXPLORE_CHANGE_CHAPTER,OnChapterChange);
	self:AddUIListener(UIMessageNames.UI_EXPLORE_MAIN_CHANGE_TEAM,ChangeTeam);
	self:AddDataListener(DataMessageNames.ON_EXPLORE_TEAM_REFRESH, OnTeamListRefresh)
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- 移除监听
	self:RemoveDataListener(DataMessageNames.ON_EXPLORE_TAKE_REWARD_REFRESH, OnExploreTakeRewardRefresh)
	self:RemoveDataListener(DataMessageNames.ON_EXPLORE_MAX_LV_REFRESH, OnExploreMaxLvRefresh)
	self:RemoveUIListener(UIMessageNames.UI_MODEL_EXPLORE_CHANGE_CHAPTER,OnChapterChange);
	self:RemoveUIListener(UIMessageNames.UI_EXPLORE_MAIN_CHANGE_TEAM,ChangeTeam);
	self:AddDataListener(DataMessageNames.ON_EXPLORE_TEAM_REFRESH, OnTeamListRefresh)
end

-- 关闭
local function OnDisable(self)
	base.OnDisable(self)
	-- 清理成员变量
	
end

-- 销毁
local function OnDestroy(self)
	base.OnDestroy(self)
	-- 清理成员变量

end

UIExploreMainModel.OnCreate = OnCreate
UIExploreMainModel.OnEnable = OnEnable
UIExploreMainModel.OnRefresh = OnRefresh
UIExploreMainModel.OnAddListener = OnAddListener
UIExploreMainModel.OnRemoveListener = OnRemoveListener
UIExploreMainModel.OnDisable = OnDisable
UIExploreMainModel.OnDestroy = OnDestroy

return UIExploreMainModel
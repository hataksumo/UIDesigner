
--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UIExploreSetTeamListModel = BaseClass("UIExploreSetTeamListModel", UIBaseModel)
local base = UIBaseModel
local TeamLevel=DataUtil.GetData("team_level");
-- 创建
local function OnCreate(self)
	base.OnCreate(self)
	-- 窗口生命周期内保持的成员变量放这

end

-- 打开
local function OnEnable(self)
	base.OnEnable(self)
	-- 窗口关闭时可以清理的成员变量放这
	local shlDataList=CardData:GetInstance().SHLData;
	local exploreData=ExploreData:GetInstance().teamData;
	local pLevel=UserData:GetInstance().pLevel;
	self.hangUpTeamNum=TeamLevel[pLevel].HangUpTeamNum;
	if exploreData==nil then
		return;
	end
	self.firstHangUpId=ExploreData:GetInstance().allLevel[1].id;
	self.hangUpId=exploreData.level_id;
	self.cardList={};
	local allSelectDic={};
	if exploreData.team~=nil then
		for a, b in ipairs(exploreData.team) do
			allSelectDic[b]=a;
		end
	end
	for i, v in pairs(shlDataList) do
		local tempCardData=CardData:GetInstance():GetCardDataById(v);
		local select=allSelectDic[v]~=nil;
		table.insert(self.cardList,{cardData=tempCardData,isSelect=select})
	end
	table.sort(self.cardList,function(a,b)
		if a.cardData.power==b.cardData.power then
			return a.cardData.id<b.cardData.id;
		else
			return a.cardData.power>b.cardData.power;
		end
	end)
	self.haveSelectList={};
	for i, v in pairs(self.cardList) do
		if allSelectDic[v.cardData.id]~=nil then
			table.insert(self.haveSelectList,{cardData=v.cardData,index=i});
		end
	end
end

-- 刷新全部数据
local function OnRefresh(self)


end

-- 监听
local function OnAddListener(self)
	base.OnAddListener(self)
	--添加监听

end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- 移除监听

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

UIExploreSetTeamListModel.OnCreate = OnCreate
UIExploreSetTeamListModel.OnEnable = OnEnable
UIExploreSetTeamListModel.OnRefresh = OnRefresh
UIExploreSetTeamListModel.OnAddListener = OnAddListener
UIExploreSetTeamListModel.OnRemoveListener = OnRemoveListener
UIExploreSetTeamListModel.OnDisable = OnDisable
UIExploreSetTeamListModel.OnDestroy = OnDestroy

return UIExploreSetTeamListModel
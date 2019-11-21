
--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UILhglNewModel = BaseClass("UILhglNewModel", UIBaseModel)
local base = UIBaseModel


local SingleCampData={
	curPassData={},
	passShowList={},
	name="",
}
local SinglePassData=
{
	curStage = 0;
	reedTowerXlsx=0,--表数据
	isPass=false,--是否通关
	shlcardRange={},--守护灵卡牌范围
	jlrCardRange={},--寄灵人卡牌范围
	expNum = 0,
	reward={},--奖励
	isNull=false,--是否为空
	maxLv=0;--最大关卡数量
}
local SinglePassModel = DataClass("SinglePassData",SinglePassData);
local SingleCampModel = DataClass("SingleCampData",SingleCampData);
local global_data = DataUtil.GetData("global")
local all_item_data =  DataUtil.GetData("item")
-- 创建
local function OnCreate(self)
	base.OnCreate(self)
	-- 窗口生命周期内保持的成员变量放这

end
local function SortCardList(cardList)
	table.sort(cardList,function(a,b)
		local r;
		if a.isHave==b.isHave then
			r=a.sort<b.sort;
		else
			r=a.isHave>b.isHave;
		end
		return r;
	end)
end

--获取该关卡可用卡牌限制
local function GetCardRangList(self,cardRangleList)
	local cardXlsx =  DataUtil.GetData("card");
	local shlList={};
	local jlrList={};
	for i, v in pairs(cardRangleList) do
		local singleCard={};
		singleCard.icon=cardXlsx[i].Icon;
		singleCard.frame=SpriteDefine:GetCardTopFrameByQuality(cardXlsx[i].Quality);
		singleCard.qualityImg=SpriteDefine:GetQuaIconByType(cardXlsx[i].Quality);
		singleCard.crystalNum=cardXlsx[i].CallCost;
		singleCard.crystalType=cardXlsx[i].CrystalType;
		singleCard.cardType=cardXlsx[i].Type;
		singleCard.lv=1;
		if CardData:GetInstance().cards[i]~=nil then
			singleCard.isHave=1;
			singleCard.lv=CardData:GetInstance().cards[i].level;
		else
			singleCard.isHave=0;
		end
		singleCard.sort = v.Order
		if cardXlsx[i].Type==1 then
			table.insert(jlrList,singleCard);
		else
			table.insert(shlList,singleCard);
		end
	end
	SortCardList(jlrList);
	SortCardList(shlList);
	return jlrList,shlList;
end

--添加日常积累奖励
local function AddDayRewardList(_initList,_addList)
	for i, v in ipairs(_addList) do
		if _initList[v.id]~=nil then
			_initList[v.id]=_initList[v.id]+v.val;
		else
			_initList[v.id]=v.val;
		end
	end
end
--初始化芦花鼓楼数据
local function InitLuglData(self)

	local lhglData=LuHuaGuLouData:GetInstance();
	local reed_tower =  DataUtil.GetData("reed_tower");
	self.chapterList={};
	local dayRewardList={};
	for i = 1, 4 do
		local singleCampModel=SingleCampModel.New();
		local curCamp=i;
		for k, v in ipairs(lhglData.campList) do
			if(v.camp==curCamp) then
				--当前关卡数据
				singleCampModel.name=reed_tower[curCamp].Name;

				local curPassId=math.floor(v.id);--当前关卡id
				curPassId=curPassId>=#reed_tower[curCamp].Lvs and  #reed_tower[curCamp].Lvs or curPassId;
				singleCampModel.passShowList={};
				for a = 1, 3 do
					local passData=SinglePassModel.New();
					if a==1 and curPassId==1 or a==3 and curPassId>=#reed_tower[curCamp].Lvs then
						passData.isNull=true;
					else
						passData.isNull=false;
						local passId=curPassId-(2-a);
						passData.reedTowerXlsx=reed_tower[curCamp].Lvs[passId];
						passData.curStage=passId;
					end
					table.insert(singleCampModel.passShowList,passData);
				end

				singleCampModel.curPassData=SinglePassModel.New();
				singleCampModel.curPassData.reedTowerXlsx=reed_tower[curCamp].Lvs[v.id];
				if reed_tower[curCamp].Lvs[v.id-1]~=nil then
					local edAwardList=reed_tower[curCamp].Lvs[v.id-1].EdAward;
					AddDayRewardList(dayRewardList,edAwardList);
				end

				singleCampModel.curPassData.curStage= math.floor(v.id)
				singleCampModel.curPassData.isPass=curPassId>=#reed_tower[curCamp].Lvs;
				singleCampModel.curPassData.maxLv=#reed_tower[curCamp].Lvs;
				singleCampModel.curPassData.reward={};
				if reed_tower[curCamp].Lvs[v.id] then
					for i, v in ipairs(reed_tower[curCamp].Lvs[v.id].FirstDrop) do
						table.insert(singleCampModel.curPassData.reward,{id=v.id,val=v.val});
					end
					local exp =  reed_tower[curCamp].Lvs[v.id].Exp
					if exp ~= nil and exp > 0 then
						local expId = global_data[147].valueN
						if all_item_data[expId] ~= nil then
							local award = {}
							award.id = expId
							award.val = exp
							table.insert(singleCampModel.curPassData.reward,award)
						end
					end
				end

				singleCampModel.curPassData.jlrCardRange,singleCampModel.curPassData.shlcardRange=GetCardRangList(self,reed_tower[curCamp].LimitCards);

				table.insert(self.chapterList,singleCampModel);
				--break;
			end
		end
	end
	self.dayRewardListFinal={};
	for i, v in pairs(dayRewardList) do
		table.insert(self.dayRewardListFinal,{id=i,num=v});
	end
	if self.isFirstRequest==true then
		self:UIBroadcast(UIMessageNames.UILHGL_INIT_UI_SHOW);
	end
	
end

-- 打开
local function OnEnable(self,defaultCamp)
	base.OnEnable(self)

	-- 窗口关闭时可以清理的成员变量放这
	local lhglData=LuHuaGuLouData:GetInstance();
	self.curCamp=lhglData.campIndex;
	local isFirstRequest=lhglData:GetIsFirstRequestData();
	self.isFirstRequest=isFirstRequest;
	if isFirstRequest==false then
		InitLuglData(self);
	else
		lhglData:SendGetReedTowerRequest();
		self.xlsxDic=lhglData.xlsxDic;
	end
	if defaultCamp~=nil then
		self.curCamp=defaultCamp;
	else
		self.curCamp=1;
	end
end

-- 刷新全部数据
local function OnRefresh(self)


end


--设置当前副本
local function SetCurCamp(self,camp)
	self.curCamp=camp;
end
-- 监听
local function OnAddListener(self)
	base.OnAddListener(self)
	--添加监听
	self:AddDataListener(DataMessageNames.ON_GET_REED_TOWER_DATA, InitLuglData)
	self:AddUIListener(UIMessageNames.UIMAINCITY_STAMINA_UPDATE, SetCurCamp)
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- 移除监听
	self:RemoveDataListener(DataMessageNames.ON_GET_REED_TOWER_DATA, InitLuglData)
	self:RemoveUIListener(UIMessageNames.UIMAINCITY_STAMINA_UPDATE, SetCurCamp)
end

-- 关闭
local function OnDisable(self)
	base.OnDisable(self)
	-- 清理成员变量
	
end

-- 销毁
local function OnDistroy(self)
	base.OnDistroy(self)
	-- 清理成员变量

end

UILhglNewModel.OnCreate = OnCreate
UILhglNewModel.OnEnable = OnEnable
UILhglNewModel.OnRefresh = OnRefresh
UILhglNewModel.OnAddListener = OnAddListener
UILhglNewModel.OnRemoveListener = OnRemoveListener
UILhglNewModel.OnDisable = OnDisable
UILhglNewModel.OnDistroy = OnDistroy

return UILhglNewModel
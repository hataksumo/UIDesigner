


--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UIGetNewCardResultModel = BaseClass("UIGetNewCardResultModel", UIBaseModel)
local base = UIBaseModel

--获取卡牌的品质框
local function GetCardFrameByQuality(quality)
	local bottomBgTable={"ui_dtex_Quality_014","ui_dtex_Quality_015","ui_dtex_Quality_016","ui_dtex_Quality_017"};
	local topBgTable={"ui_dtex_Quality_018","ui_dtex_Quality_019","ui_dtex_Quality_020","ui_dtex_Quality_021"};
	local qualityIconTable={"ui_dtex_Quality_010","ui_dtex_Quality_011","ui_dtex_Quality_012","ui_dtex_Quality_013"};
	local diBgTable={"ui_t_Gacha_003","ui_t_Gacha_004","ui_t_Gacha_005","ui_t_Gacha_006"};
	local topBg,bottomBg,qualityIcon,gachaBg="";
	if bottomBgTable[quality]~=nil then
		bottomBg=bottomBgTable[quality];
	else
		bottomBg=bottomBgTable[1];
	end
	if topBgTable[quality]~=nil then
		topBg=topBgTable[quality];
	else
		topBg=topBgTable[1];
	end
	if qualityIconTable[quality]~=nil then
		qualityIcon=qualityIconTable[quality];
	else
		qualityIcon=qualityIconTable[1];
	end
	if diBgTable[quality]~=nil then
		gachaBg=diBgTable[quality];
	else
		gachaBg=diBgTable[1];
	end
	return bottomBg,topBg,qualityIcon,gachaBg;
end

-- 创建
local function OnCreate(self)
	base.OnCreate(self)
	-- 窗口生命周期内保持的成员变量放这

end

--创建抽卡结算界面数据
local function CreatGachaResultData(self,cardIds,cardsNewList)
	self.cardList={};
	BackpackData:GetInstance().getNewCardData = {}
	local cardXlsx = DataUtil.GetData("card")
	for i, v in ipairs(cardIds) do
		if cardXlsx ~= nil then
			local singleDataModel= {}
			singleDataModel.id=v
			local singleXlsxData=cardXlsx[singleDataModel.id]
			if singleXlsxData ~= nil then
				singleDataModel.cardName=singleXlsxData.Name
				singleDataModel.cardPicture=singleXlsxData.Painting
				singleDataModel.cardface=singleXlsxData.CardFace
				singleDataModel.cardType=singleXlsxData.Type
				singleDataModel.initLevel=singleXlsxData.InitLevel
				singleDataModel.quality=singleXlsxData.Quality
				singleDataModel.diBg,singleDataModel.topBg,singleDataModel.qualityImg,singleDataModel.gachaBg
				=GetCardFrameByQuality(singleXlsxData.Quality);
				singleDataModel.suipianNum=singleXlsxData.RpCvt[1].Val;
				singleDataModel.suipianIcon=singleXlsxData.Icon;
				singleDataModel.isNew=true;
				singleDataModel.crystalNum=singleXlsxData.CallCost;
				singleDataModel.crystalType=singleXlsxData.CrystalType;
				if cardsNewList[i]~=nil then
					singleDataModel.isNew=cardsNewList[i];
					if singleDataModel.quality > 2 and singleDataModel.isNew then
						table.insert(BackpackData:GetInstance().getNewCardData,singleDataModel.id)
					end
				end
				table.insert(self.cardList,singleDataModel);
			end
		end
	end
end

--抽卡结算刷新
local function OnRefreshGachaResult(self,cardIds,poolId,cardsNewList,_type)
	CreatGachaResultData(self,cardIds,cardsNewList);
	self.poolId=poolId;
	local cardPoolData = DataUtil.GetData("card_draw_option");
	self.resourceId=0;
	self.isShowAgainBtn=true;
	if poolId==4 and UserData:GetInstance().drawList[poolId].count>=20 then
		self.isShowAgainBtn=false;
	end

	if cardPoolData~=nil then
		for i, v in ipairs(cardPoolData) do
			if v.ID==self.poolId then
				self.costItemId=v.Cost.ID;
				self.costNum=_type==1 and 1 or 10;;
				local itemData= DataUtil.GetDataByIdAndType(self.costItemId);
				if itemData~=nil then
					self.ticketIcon=itemData.icon;
				end
				self.resourceId=v.ResBarId;
			end
		end
	end
end

-- 打开
local function OnEnable(self,cardIds,poolId,cardsNewList,_type)
	base.OnEnable(self)
	OnRefreshGachaResult(self,cardIds,poolId,cardsNewList,_type);
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

UIGetNewCardResultModel.OnCreate = OnCreate
UIGetNewCardResultModel.OnEnable = OnEnable
UIGetNewCardResultModel.OnRefresh = OnRefresh
UIGetNewCardResultModel.OnAddListener = OnAddListener
UIGetNewCardResultModel.OnRemoveListener = OnRemoveListener
UIGetNewCardResultModel.OnDisable = OnDisable
UIGetNewCardResultModel.OnDestroy = OnDestroy

return UIGetNewCardResultModel
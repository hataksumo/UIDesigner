
--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UINationCardDetailModel = BaseClass("UINationCardDetailModel", UIBaseModel)
local base = UIBaseModel

-- 创建
local function OnCreate(self)
	base.OnCreate(self)
	-- 窗口生命周期内保持的成员变量放这

end
local function UpdateID(self,_indexID)
	self.showDataId=_indexID
	self:OnRefresh()
	--抛事件
	self:UIBroadcast(UIMessageNames.UI_CARD_HERO_CHANGE_SON)
end

-- 打开
local function OnEnable(self,_id)
	base.OnEnable(self)
	-- 窗口关闭时可以清理的成员变量放这
	self.showDataId = _id
	--if(NationCtrlManager:GetInstance():GetLoginNationStatus()~=NationDefine.LOGIN_NATION_ST.DATA_OK) then
	--	NationCtrlManager:GetInstance():GetNationLoginData(false,function() self:OnRefresh(); self:UIBroadcast(UIMessageNames.NATION_CARD_REQUEST_DATA_SUCCESS)  end);
	--else
	--	self:OnRefresh()
	--	--self:UIBroadcast(UIMessageNames.NATION_CARD_REQUEST_DATA_SUCCESS)
	--end
	self:OnRefresh()
end

-- 刷新全部数据
local function OnRefresh(self)
	Logger.Log(self.showDataId.."展示的id")



	local allNationCards = NationCardData:GetInstance().nationCards
	if allNationCards==nil then
		return;
	end
	local nationCard = allNationCards[self.showDataId]
	local cardData = CardData:GetInstance():GetCardDataById(self.showDataId)

	self.dominanceLevel="Lv."..math.floor(nationCard.dominanceLevel)
	self.dominanceMaxExp=nationCard.dominanceMaxExp;
	self.dominanceExp=math.floor(nationCard.dominanceExp)
	self.army=math.floor(nationCard.calcArmy);
	self.armyMax=math.floor(NationCardData:GetInstance():GetCardNationArmyMax(self.showDataId))
	self.ap=math.floor(nationCard.calcAP)
	self.apMax=math.floor(NationCardData:GetInstance():GetNationCardApMax(self.showDataId))


	--主属性
	self.topAttr={};
	self.topAttr[1]={name="生命",value=tostring(math.floor(cardData.finalProperty.hp)),addValue=tostring(math.floor(NationCardData:GetInstance():GetCardNationHp(self.showDataId)))};
	self.topAttr[2]={name="攻击",value=tostring(math.floor(cardData.finalProperty.atk)),addValue=tostring(math.floor(NationCardData:GetInstance():GetCardNationAtk(self.showDataId)))};
	self.topAttr[3]={name="防御",value=tostring(math.floor(cardData.finalProperty.def)),addValue=0};
	self.topAttr[4]={name="攻城值",value=tostring(math.floor(nationCard.siegeValue)),addValue=0};
	--附属性
	self.bottomAttr={};
	self.bottomAttr[1]={name="暴击率",value=tostring(math.floor(cardData.finalProperty.crit * 100)).."%"};
	self.bottomAttr[2]={name="暴击伤害",value=tostring(math.floor(cardData.finalProperty.critRate * 100)).."%"};
	self.bottomAttr[3]={name="效果命中",value=tostring(math.floor(cardData.finalProperty.effectHit * 100)).."%"};
	self.bottomAttr[4]={name="效果抵抗",value=tostring(math.floor(cardData.finalProperty.effectResist * 100)).. "%"}
	self.bottomAttr[5]={name="格挡",value=tostring(math.floor(cardData.finalProperty.block * 100)).. "%"}
	self.bottomAttr[6]={name="穿透",value=tostring(math.floor(cardData.finalProperty.defignor * 100)).. "%"}

	self.skill_data=nationCard.selfTalents
	self.talentLevels=nationCard.talentLevels;
	self.talentUnlockLevel=nationCard.talentUnlockLevel;
	--self.power=CardData:GetInstance().nationCards[self.showDataId].power
	--TODO 国战战斗力还没有
	self.power= 0
end

-- 监听
local function OnAddListener(self)
	base.OnAddListener(self)
	--添加监听
	self:AddUIListener(UIMessageNames.UI_CARD_HERO_CHANGE, self.UpdateID)

end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	self:RemoveUIListener(UIMessageNames.UI_CARD_HERO_CHANGE, self.UpdateID)
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

UINationCardDetailModel.OnCreate = OnCreate
UINationCardDetailModel.OnEnable = OnEnable
UINationCardDetailModel.OnRefresh = OnRefresh
UINationCardDetailModel.OnAddListener = OnAddListener
UINationCardDetailModel.OnRemoveListener = OnRemoveListener
UINationCardDetailModel.OnDisable = OnDisable
UINationCardDetailModel.OnDestroy = OnDestroy
UINationCardDetailModel.UpdateID=UpdateID
return UINationCardDetailModel
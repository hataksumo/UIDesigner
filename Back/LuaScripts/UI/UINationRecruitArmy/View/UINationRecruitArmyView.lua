
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UINationRecruitArmyView = BaseClass("UINationRecruitArmyView", UIBaseView)
local base = UIBaseView

local UINationRecruitItem = require "UI.UINationRecruitArmy.Component.UINationRecruitItem"
local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件

	self.maskUIButton = self:AddComponent(UIButton, "mask")
	self.maskUIButton:SetOnClick(function()
		self.ctrl:CloseSelf()
	end)

	self.exitUIButton = self:AddComponent(UIButton, "Root/bgGroup/bglayer/exit_UIButton")
	-- 关闭页面按钮
	self.exitUIButton:SetOnClick(function()
		self.ctrl:CloseSelf()
	end)

	self.viewTitleLeftUIText = self:AddComponent(UIText, "Root/bgTitleGroup/viewTitleLeft_UIText")
	self.viewTitleLeftUIText:SetText(DataUtil.GetClientText(200313)) -- "征募"
	self.viewTitleRightUIText = self:AddComponent(UIText, "Root/bgTitleGroup/viewTitleLeft_UIText/viewTitleRight_UIText")
	self.viewTitleRightUIText:SetText(DataUtil.GetClientText(200314)) -- "列表"
	self.costChargeDescUIText = self:AddComponent(UIText, "Root/bottomGroup/costDi_UIImage/costChargeDesc_UIText")
	self.costChargeDescUIText:SetText(DataUtil.GetClientText(200315) ) -- "征募消耗"

	--self.cost_IconsUIImage = self:AddComponent(UIImage, "bottomGroup/cost_Icons_UIImage")

	self.resCostGroup = {}
	for i, v in ipairs(self.model.RES_ID) do
		self.resCostGroup[v] = {}
	end
	self.resCostGroup[NationDefine.ITEM_WOOD_ID].valText = self:AddComponent(UIText,
			"Root/bottomGroup/cost_Icons_UIImage/right/WoodGroup/WoodValue_UIText")
	self.resCostGroup[NationDefine.ITEM_IRON_ID].valText = self:AddComponent(UIText,
			"Root/bottomGroup/cost_Icons_UIImage/right/IronGroup/IronValue_UIText")
	self.resCostGroup[NationDefine.ITEM_STONE_ID].valText = self:AddComponent(UIText,
			"Root/bottomGroup/cost_Icons_UIImage/right/StoneGroup/StoneValue_UIText")
	self.resCostGroup[NationDefine.ITEM_FOOD_ID].valText = self:AddComponent(UIText,
			"Root/bottomGroup/cost_Icons_UIImage/right/FoodGroup/FoodValue_UIText")

	self.resCostGroup[NationDefine.ITEM_WOOD_ID].group =
	UIUtil.FindTrans(self.transform,"Root/bottomGroup/cost_Icons_UIImage/right/WoodGroup").gameObject
	self.resCostGroup[NationDefine.ITEM_IRON_ID].group =
	UIUtil.FindTrans(self.transform,"Root/bottomGroup/cost_Icons_UIImage/right/IronGroup").gameObject
	self.resCostGroup[NationDefine.ITEM_STONE_ID].group =
	UIUtil.FindTrans(self.transform,"Root/bottomGroup/cost_Icons_UIImage/right/StoneGroup").gameObject
	self.resCostGroup[NationDefine.ITEM_FOOD_ID].group =
	UIUtil.FindTrans(self.transform,"Root/bottomGroup/cost_Icons_UIImage/right/FoodGroup").gameObject


	self.checkBoxDIUIButton = self:AddComponent(UIButton, "Root/bottomGroup/checkBoxDI")
	self.checkBoxDIUIButton:SetOnClick(function()
		self.ctrl:OnCheckBoxDIUIButtonPressed()
	end)
	self.checkBoxIconUIImage = self:AddComponent(UIImage, "Root/bottomGroup/checkBoxDI/checkBoxIcon_UIButton",AtlasConfig.DynamicTex)
	self.checkBoxBtnUIText = self:AddComponent(UIText, "Root/bottomGroup/checkBoxDI/checkBoxBtn_UIText")
	self.checkBoxBtnUIText:SetText(DataUtil.GetClientText(200316)) -- "立即征募"

	self.townStoreArmyDescUIText = self:AddComponent(UIText, "Root/bottomGroup/checkBoxDI/TownStoreArmyDesc_UIText")
	self.townStoreArmyDescUIText:SetText(DataUtil.GetClientText(200317)) -- "储备军力"
	self.townStoreArmyValUIText = self:AddComponent(UIText, "Root/bottomGroup/checkBoxDI/TownStoreArmyDesc_UIText/TownStoreArmyVal_UIText")

	self.maxNumUIButton = self:AddComponent(UIButton, "Root/bottomGroup/maxNum_UIButton")
	self.maxNumUIButton:SetOnClick(function()
		self:__OnMaxNumUIButtonPressed()
	end)
	self.maxNumUIText = self:AddComponent(UIText, "Root/bottomGroup/maxNum_UIButton/maxNum_UIText")
	self.maxNumUIText:SetText(DataUtil.GetClientText(200318)) -- "最大数量"

	self.stopChargeUIButton = self:AddComponent(UIButton, "Root/bottomGroup/stopCharge_UIButton")
	self.stopChargeUIButtonImage = self:AddComponent(UIImage, "Root/bottomGroup/stopCharge_UIButton")
	self.uiGreyMat = self.stopChargeUIButtonImage:GetMat()
	self.stopChargeUIButtonImage:SetMat(nil)
	self.stopChargeUIButton:SetOnClick(function()
		local resTables = self:__GetStopRecruitReturnResTable()
		self.ctrl:OnStopChargeUIButtonPressed(self,resTables)
	end)

	self.stopChargeUIText = self:AddComponent(UIText, "Root/bottomGroup/stopCharge_UIButton/stopCharge_UIText")

	self.stopChargeUIText:SetText(DataUtil.GetClientText(200319)) --"停止征募"
	self.confirmChargeUIButton = self:AddComponent(UIButton, "Root/bottomGroup/confirmCharge_UIButton")
	self.confirmChargeUIButtonImage = self:AddComponent(UIImage, "Root/bottomGroup/confirmCharge_UIButton")
	self.confirmChargeUIButtonImage:SetMat(nil)
	self.confirmChargeUIButton:SetOnClick(function()
		local sendList={}
		for k, v in pairs(self.viewCardDatas) do
			if v.needCropArmy > 0 then
				local item = { cardId = v.cardId,count=v.needCropArmy}
				table.insert(sendList,item)
			end
		end
		self.ctrl:OnConfirmChargeUIButtonPressed(self,sendList)
	end)
	self.confirmChargeUIText = self:AddComponent(UIText, "Root/bottomGroup/confirmCharge_UIButton/confirmCharge_UIText")
	self.confirmChargeUIText:SetText(DataUtil.GetClientText(200320)) -- "确认征募"

	self.recruitItemList = {}
	for i = 1, 6 do
		local item = UINationRecruitItem.New(self, "Root/ScrollRect/grid/Item" .. i)
		item:OnCreate(i)
		item.gameObject:SetActive(true)
		self.recruitItemList[i] = item
	end

	self.viewCardDatas = nil
end

local function OnEnable(self)
	base.OnEnable(self)
	self:__FirstInit()
end

--打开界面首次初始化
local function __FirstInit(self)
	self.viewCardDatas = {} -- 用于存储卡牌的数据
	for k, v in pairs(self.model.nationCardTables) do
		local viewCardData = {}
		viewCardData.index = k
		viewCardData.cardId = v.id
		viewCardData.needCropArmy = 0 -- 选择征兵数量
		--viewCardData.cropsConsume = {} -- 消耗的资源缓存
		self.viewCardDatas[k] = viewCardData
	end
	--self.viewData = {} -- 用于存储界面数据
	self:OnRefresh()
end

--获取当前征兵的数量 不包含卡牌
local function GetCurrentNeedCropArmyCountExceptCardId(self,cardId)
	local val = 0
	for k, v in pairs(self.viewCardDatas) do
		if cardId == nil then
			val = val + v.needCropArmy
		else
			if cardId == v.cardId then -- 相同卡牌
			else
				val = val + v.needCropArmy
			end
		end
	end
	--Logger.LogErrorVars(" GetCurrentNeedCropArmyCountExceptCardId val : ",val)
	return val
end

--根据卡牌获取当前征兵的数量
local function GetCurrentNeedCropArmyCountWithCardId(self,cardId)
	if cardId == nil then
		return 0
	end

	for k, v in pairs(self.viewCardDatas) do
		if cardId == v.cardId then -- 相同卡牌
			return v.needCropArmy
		end
	end
	return 0
end


--根据卡牌设置当前征兵的数量
local function SetCurrentNeedCropArmyCountWithCardId(self,cardId,val)
	if cardId == nil then
		return false
	end

	for k, v in pairs(self.viewCardDatas) do
		if cardId == v.cardId then -- 相同卡牌
			v.needCropArmy = val
			return true
		end
	end
	return false
end

-- 获取停止征兵资源返还数量
local function __GetStopRecruitReturnResTable(self)
	local tab = {}
	for i, v in ipairs(self.model.RES_ID) do
		tab[v] = 0
	end
	local currentTime = TimeSyncManager:GetInstance():GetSimulationJavaMS()
	for k, v in pairs(self.model.nationCardTables) do
		local res = nil
		local recruitStatus = self.model:GetCardRecruitStatus(v)
		if recruitStatus == self.model.CARD_ARMY_STATUS.RECRUITING then -- OK
			local recruitingArmyNow,recruitingArmyMax = self.__GetRecruitingArmyNowAndMax(v,currentTime)
			local remindRecruitingArmy = recruitingArmyMax - recruitingArmyNow
			if remindRecruitingArmy > 0 then
				res = self:GetCurrentNeedCropArmyResourceByCardData(v,remindRecruitingArmy)
			end
		end

		if res ~= nil then
			for itemId, resCost in pairs(res) do
				if tab[itemId] == nil then
					tab[itemId] = 0
				end
				tab[itemId] = tab[itemId] + resCost
			end
		end
	end

	for k, v in pairs(tab) do
		tab[k] = math.modf(v * self.model.recruitReturnRate)
	end
	return tab
end


-- 获取所有卡牌的资源消耗
local function GetAllCardCurrentNeedCropArmyResource(self,cardId)
	local tab = {}
	for i, v in ipairs(self.model.RES_ID) do
		tab[v] = 0
	end
	for k, v in pairs(self.model.nationCardTables) do
		local item = self.viewCardDatas[k]
		local res = nil
		if cardId == nil then
			res = self:GetCurrentNeedCropArmyResourceByCardData(v,item.needCropArmy)
		else
			if cardId == item.cardId then -- 相同卡牌
			else
				res = self:GetCurrentNeedCropArmyResourceByCardData(v,item.needCropArmy)
			end
		end
		if res ~= nil then
			for itemId, resCost in pairs(res) do
				if tab[itemId] == nil then
					tab[itemId] = 0
				end
				tab[itemId] = tab[itemId] + resCost
			end
		end
	end
	return tab
end

-- 获取一个卡牌的资源消耗
local function GetCurrentNeedCropArmyResourceByCardData(self,copyCardData, needCropArmyCount)
	if copyCardData == nil then
		return nil
	end

	local tab = {}
	for k, v in pairs(copyCardData.cropsConsumeRes) do
		tab[k] = v * needCropArmyCount
	end
	return tab
end


-- 征兵状态
local function FlushWithRecruitMode(self)
	if self.model.recruitMode == self.model.RECRUIT_MODE.NORMAL then -- 普通征兵
		--Logger.LogErrorVars(" FlushWithRecruitMode  NORMAL ")
		self.checkBoxIconUIImage:SetSpriteName("ui_t_c2_067")
		self.townStoreArmyValUIText:SetText(string.format("%s/%s",0,self.model.townData.calcArmyReserve))
	else
		--Logger.LogErrorVars(" FlushWithRecruitMode  REDIF ")
		local needCropArmyCount = self:GetCurrentNeedCropArmyCountExceptCardId()
		self.checkBoxIconUIImage:SetSpriteName("ui_t_c2_062") -- 快速征兵
		self.townStoreArmyValUIText:SetText(string.format("%s/%s",needCropArmyCount,self.model.townData.calcArmyReserve))
	end
end

local function OnRefresh(self)
	-- 各组件刷新 全部刷新

	local needCropArmyCount = self:GetCurrentNeedCropArmyCountExceptCardId()
	self:FlushWithRecruitMode()

	if self.model:IsCardTablesRecruitingStatus() then
		self.stopChargeUIButtonImage:SetMat(nil)
	else
		self.stopChargeUIButtonImage:SetMat(self.uiGreyMat)
	end

	if needCropArmyCount > 0 then
		self.confirmChargeUIButtonImage:SetMat(nil)
	else
		self.confirmChargeUIButtonImage:SetMat(self.uiGreyMat)
	end

	-- 刷新每个招募项
	for i, v in ipairs(self.recruitItemList) do
		v:OnRefresh()
	end

	local resConsumeTab = self:GetAllCardCurrentNeedCropArmyResource()
	--Logger.LogErrorVars(" resConsumeTab : ",resConsumeTab," self.model.currentResData :",self.model.currentResData)
	for k, v in pairs(self.resCostGroup) do
		v.valText:SetText(string.format("%s/%s",resConsumeTab[k],self.model.currentResData[k]))
	end

end
-- 最大数量按钮
local function __OnMaxNumUIButtonPressed(self)
	--for k, v in pairs(self.viewCardDatas) do
	--	v.needCropArmy = 0 -- 重置选择征兵数量
	--end

	for i, v in ipairs(self.model.CARD_ORDER_INDEX) do
		local copyCardData = self.model.nationCardTables[v]
		local recruitStatus = self.model:GetCardRecruitStatus(copyCardData)
		if recruitStatus == self.model.CARD_ARMY_STATUS.NORMAL_ARMY then -- OK
			self.viewCardDatas[v].needCropArmy  = self:GetCouldRecruitArmyCount(copyCardData,self.model.recruitMode)
		end
	end

	self:OnRefresh()
end


-- 获取最大征兵数量
local function GetCouldRecruitArmyCount(self,copyCardData,recruitMode)
	-- 可征兵数量
	local couldRecruitArmyCount = copyCardData.armyMax - copyCardData.copyArmy
	--Logger.LogErrorVars(" armyMax : ",copyCardData.armyMax," copyArmy : ",copyCardData.copyArmy)
	local resCostTable = self:GetAllCardCurrentNeedCropArmyResource(copyCardData.id)
	local remindResTable = self.__GetRemindCouldRecruitResTable(self.model.currentResData,resCostTable) -- 剩余资源
	local resRecruitArmy = self.__GetResTableCouldRecruitNum(remindResTable,copyCardData.cropsConsumeRes)
	--Logger.LogErrorVars(" resRecruitArmy : ",resRecruitArmy," couldRecruitArmyCount : ",couldRecruitArmyCount)
	if recruitMode == self.model.RECRUIT_MODE.NORMAL then
		couldRecruitArmyCount = math.min(resRecruitArmy,couldRecruitArmyCount)
	else -- 储备军力限制  资源限制

		local needCropArmyCount = self:GetCurrentNeedCropArmyCountExceptCardId(copyCardData.id)
		-- 当前占有储备军力
		local  remindCalcArmyReserve  =  self.model.townData.calcArmyReserve - needCropArmyCount -- 剩余储备军力
		couldRecruitArmyCount = math.min(remindCalcArmyReserve,couldRecruitArmyCount)
		-- 资源检测 -- 获取剩余资源可招募兵力数
		couldRecruitArmyCount = math.min(couldRecruitArmyCount,resRecruitArmy)
	end
	return couldRecruitArmyCount
end

-- 获取剩余资源数
local function __GetRemindCouldRecruitResTable(currentResData,resCostTable)
	local tab = {}
	for k, v in pairs(currentResData) do
		if resCostTable[k] == nil then
			tab[k] = v
		else
			tab[k] = v - resCostTable[k]
		end
	end
	return tab
end


-- 获取资源可征募兵力数量
local function __GetResTableCouldRecruitNum(resCostTable,cropsConsumeRes)
	local result = -1
	local index = 1
	for k, v in pairs(cropsConsumeRes) do
		local  recruitCount  = math.modf(resCostTable[k] / v)
		if index == 1 then
			result = recruitCount
			index = index + 1
		else
			result = math.min(result,recruitCount)
		end
	end
	return result
end

local function __GetRecruitingArmyNowAndMax(copyCardData,currentTime)
	if currentTime == nil then
		currentTime = TimeSyncManager:GetInstance():GetSimulationJavaMS()
	end
	local spdMS = copyCardData.cropsConsumeMS -- 整一个兵耗时
	local maxTime = copyCardData.endArmyTime - copyCardData.startArmyTime
	local armyMax = math.modf( maxTime / spdMS) -- 现在增加了多少兵
	local passTime
	if currentTime >= copyCardData.endArmyTime then
		passTime = maxTime --经过时间
	else
		passTime = currentTime - copyCardData.startArmyTime --经过时间
	end
	local armyNow = math.modf(passTime / spdMS) -- 现在增加了多少兵
	return armyNow,armyMax
end

local function __OnUINationRecruitModeChange(self)
	for k, v in pairs(self.viewCardDatas) do
		v.needCropArmy = 0 -- 重置选择征兵数量
	end
	--Logger.LogErrorVars("~~~~ __OnUINationRecruitModeChange")
	-- 刷新每个招募项
	self:OnRefresh()
end

local function __OnUINationRecruitCardChange(self)
	--Logger.LogErrorVars("~~~~ __OnUINationRecruitCardChange")
	self:OnRefresh()
end

local function OnAddListener(self)
	base.OnAddListener(self)
	-- UI消息注册
	self:AddUIListener(UIMessageNames.UI_NATION_RECRUIT_MODE_CHANGE, self.__OnUINationRecruitModeChange)
	self:AddUIListener(UIMessageNames.UI_NATION_RECRUIT_CARD_CHANGE, self.__OnUINationRecruitCardChange)

end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- UI消息注销
	self:RemoveUIListener(UIMessageNames.UI_NATION_RECRUIT_MODE_CHANGE, self.__OnUINationRecruitModeChange)
	self:RemoveUIListener(UIMessageNames.UI_NATION_RECRUIT_CARD_CHANGE, self.__OnUINationRecruitCardChange)
end

local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)
end

UINationRecruitArmyView.OnCreate = OnCreate
UINationRecruitArmyView.OnEnable = OnEnable
UINationRecruitArmyView.OnRefresh = OnRefresh
UINationRecruitArmyView.OnAddListener = OnAddListener
UINationRecruitArmyView.OnRemoveListener = OnRemoveListener
UINationRecruitArmyView.OnDestroy = OnDestroy
UINationRecruitArmyView.__FirstInit = __FirstInit
UINationRecruitArmyView.GetCurrentNeedCropArmyResourceByCardData = GetCurrentNeedCropArmyResourceByCardData
UINationRecruitArmyView.GetAllCardCurrentNeedCropArmyResource = GetAllCardCurrentNeedCropArmyResource
UINationRecruitArmyView.GetCurrentNeedCropArmyCountExceptCardId = GetCurrentNeedCropArmyCountExceptCardId
UINationRecruitArmyView.GetCurrentNeedCropArmyCountWithCardId = GetCurrentNeedCropArmyCountWithCardId
UINationRecruitArmyView.SetCurrentNeedCropArmyCountWithCardId = SetCurrentNeedCropArmyCountWithCardId
UINationRecruitArmyView.FlushWithRecruitMode = FlushWithRecruitMode
UINationRecruitArmyView.__OnUINationRecruitModeChange = __OnUINationRecruitModeChange
UINationRecruitArmyView.__OnUINationRecruitCardChange = __OnUINationRecruitCardChange

UINationRecruitArmyView.__GetResTableCouldRecruitNum = __GetResTableCouldRecruitNum
UINationRecruitArmyView.GetCouldRecruitArmyCount = GetCouldRecruitArmyCount
UINationRecruitArmyView.__GetRemindCouldRecruitResTable = __GetRemindCouldRecruitResTable
UINationRecruitArmyView.__OnMaxNumUIButtonPressed = __OnMaxNumUIButtonPressed
UINationRecruitArmyView.__GetStopRecruitReturnResTable = __GetStopRecruitReturnResTable
UINationRecruitArmyView.__GetRecruitingArmyNowAndMax = __GetRecruitingArmyNowAndMax


return UINationRecruitArmyView

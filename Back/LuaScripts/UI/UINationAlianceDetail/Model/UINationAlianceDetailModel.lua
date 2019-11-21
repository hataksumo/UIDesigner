
--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]


local UINationAlianceDetailModel = BaseClass("UINationAlianceDetailModel", UIBaseModel)
local base = UIBaseModel
-- 创建
local function OnCreate(self)
	base.OnCreate(self)
	-- 窗口生命周期内保持的成员变量放这

end

-- 打开
local function OnEnable(self,nation)
	base.OnEnable(self)
	-- 窗口关闭时可以清理的成员变量放这


	self.alianceData = NationUnionData:GetInstance().UtilCreateNationUnionData(nation)

	if self.alianceData.nextNationalUnionLevelData ~= nil then
		self.alianceData.maxExp = self.alianceData.nextNationalUnionLevelData.Exp
	else
		self.alianceData.maxExp = self.alianceData.currentNationalUnionLevelData.Exp
	end

	--if self.alianceData.isApply then
	--	-- 取消申请
	--	self.alianceData.conditionStrOne = ""
	--	self.alianceData.conditionStrTwo = ""
	--else
		if self.alianceData.apply == NationDefine.NATION_UNION_APPLY_SETTING.CLOSE_APPLY then
			-- 关闭申请
			self.alianceData.conditionStrOne = string.format("申请条件 : %s","已关闭申请")
			self.alianceData.conditionStrTwo = ""
		elseif self.alianceData.apply == NationDefine.NATION_UNION_APPLY_SETTING.ANY_PERSON  then
			-- 立即申请加入
			self.alianceData.conditionStrOne = string.format("申请条件 : %s","无")
			self.alianceData.conditionStrTwo = ""

		else
			-- 条件申请
			self.alianceData.conditionStrOne = string.format("申请条件 : %s","需要审批才能加入")
			--self.alianceData.conditionStrTwo = ""
			self.alianceData.conditionStrTwo = string.format("声望等级 : %d级 ，势力值%d以上",self.alianceData.applyNeedLevel,self.alianceData.applyNeedForce)
			--self.alianceData.conditionStrTwo = ""

			--self.alianceData.conditionStrOne = string.format("申请条件 : %s","无")
			--self.alianceData.conditionStrTwo = string.format("声望等级 : %d级 ，势力值%d以上",self.alianceData.applyNeedLevel,self.alianceData.applyNeedForce)

		end
	--end

end

local function __OnNationUserUnionDataFlush (self)
	local unionId,dataMyNation = NationUnionData:GetInstance():GetPlayerNationUnionData()
	UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_UNION_DETAIL_USER_UNION_FLUSH,unionId)
end


-- 刷新全部数据
local function OnRefresh(self)


end

-- 监听
local function OnAddListener(self)
	base.OnAddListener(self)
	--添加监听
	self:AddDataListener(DataMessageNames.ON_NATION_USER_UNION_DATA_FLUSH,self.__OnNationUserUnionDataFlush)
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- 移除监听
	self:RemoveDataListener(DataMessageNames.ON_NATION_USER_UNION_DATA_FLUSH,self.__OnNationUserUnionDataFlush)
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

UINationAlianceDetailModel.__OnNationUserUnionDataFlush = __OnNationUserUnionDataFlush
UINationAlianceDetailModel.OnCreate = OnCreate
UINationAlianceDetailModel.OnEnable = OnEnable
UINationAlianceDetailModel.OnRefresh = OnRefresh
UINationAlianceDetailModel.OnAddListener = OnAddListener
UINationAlianceDetailModel.OnRemoveListener = OnRemoveListener
UINationAlianceDetailModel.OnDisable = OnDisable
UINationAlianceDetailModel.OnDestroy = OnDestroy

return UINationAlianceDetailModel

--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UIGetNewCardModel = BaseClass("UIGetNewCardModel", UIBaseModel)
local base = UIBaseModel
local itemData = DataUtil.GetData("item")

-- 创建
local function OnCreate(self)
	base.OnCreate(self)
	-- 窗口生命周期内保持的成员变量放这

end


--卡池选中
local function OnCardPoolSelect(self,_poolId)
	self.curSelectPoolId=_poolId;
	for i, v in ipairs(self.cardPool) do
		v.isSelect=false
		if v.xlsxData.ID==_poolId then
			v.isSelect=true
			local xlsxData=v.xlsxData;
			self.curSelectBg=xlsxData.Bg
			self.takeOnceIcon =itemData[xlsxData.Cost.ID].Icon
			self.takeOnceNum =xlsxData.Cost.Val;
			self.takeTenIcon =self.takeOnceIcon
			self.takeTenNum =self.takeOnceNum*10;
			self.gem_cost_id=xlsxData.Cost.ID
			self.gem = BackpackData:GetInstance():GetItemNumById(self.gem_cost_id)
		end
	end
	self:OnRefresh()
end

--初始化数据
local function DataInitial(self)

	local cardPoolData=DataUtil.GetData("card_draw_option")
		self.cardPool = {}
		for i, v in ipairs(cardPoolData) do
			local can_insert=true
			if v.OpenType==105011 and UserData:GetInstance().pLevel<v.OpenParams[1] then
				can_insert=false
			elseif v.OpenType==5010101 and UserData:GetInstance().hellLevel<v.OpenParams[1] then
				can_insert=false
			end
			if can_insert then
				local ganLingVal=UserData:GetInstance().drawList[v.ID].num;
				local ganLingCount=UserData:GetInstance().drawList[v.ID].count;
				if v.ID~=4 then--新手感灵
					table.insert(self.cardPool,{xlsxData=v,isSelect=false,val=ganLingVal});
				elseif v.ID==4 then
					if ganLingCount<20  then
						table.insert(self.cardPool,{xlsxData=v,isSelect=false,val=ganLingVal});
					else
						self.curSelectPoolId=self.curSelectPoolId==4 and 1 or self.curSelectPoolId;
					end
				end
			end
		end
		table.sort(self.cardPool,function(a,b) return a.xlsxData.SortingParam<b.xlsxData.SortingParam  end)
		OnCardPoolSelect(self,self.curSelectPoolId)
end

local function RequestDrawList(self)
	--关门聊条聊天
	local msdId = MsgIDDefine.PBCARD_DRAW_LIST_REQUEST
	NetManager:GetInstance():SendMessage(msdId,nil,function (msg_obj)
		if msg_obj.OpCode ~= 0 then
			UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
			return
		end
		UserData:GetInstance():SetDrawList(msg_obj.Packages.draw);
		DataInitial(self,true);
		self:OnRefresh(true);
	end)
end

local function UpdateItemNum(self)
	self.gem = BackpackData:GetInstance():GetItemNumById(self.gem_cost_id)
	self:OnRefresh()
end

--设置选中的卡池
local function SetSelectPoolId(self,_poolId)
	local cardPoolData=DataUtil.GetData("card_draw_option")
	for i, v in ipairs(cardPoolData) do
		if v.ID==_poolId then
			self.curSelectPoolId=_poolId;
			break;
		end
	end
end

-- 打开
local function OnEnable(self,_id)
	base.OnEnable(self)
	-- 窗口关闭时可以清理的成员变量放这
	self.curSelectPoolId=1;
	SetSelectPoolId(self,_id);
	if UserData:GetInstance().drawList~=nil and table.count(UserData:GetInstance().drawList)>0 then
		DataInitial(self,true);
	else
		RequestDrawList(self);
	end

end

-- 刷新全部数据
local function OnRefresh(self,_resetBegin)
	self:UIBroadcast(UIMessageNames.UI_CARD_POOL_SELECT_CARD_POOL,_resetBegin)
end

local function UpdateStamina(self)
	self:UIBroadcast(UIMessageNames.UIMAINCITY_STAMINA_UPDATE)
end

--刷新数据
local function RefershData(self)
	DataInitial(self);
	UIManager:GetInstance():Broadcast(UIMessageNames.UI_GET_NEW_CARD_REFRESH);
end

-- 监听
local function OnAddListener(self)
	base.OnAddListener(self)
	--添加监听
	self:AddDataListener(DataMessageNames.ON_ITEM_CHANGE, UpdateStamina)
	self:AddDataListener(DataMessageNames.ON_CARD_POOL_SELECT, OnCardPoolSelect)
	self:AddDataListener(DataMessageNames.ON_CARD_COST_ITEM_UPDATE,UpdateItemNum)
	self:AddDataListener(DataMessageNames.ON_CARD_COST_ITEM_UPDATE_ClOSE,UpdateItemNum)
	self:AddDataListener(DataMessageNames.ON_GET_NEW_CARD_REFRESH,RefershData)
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- 移除监听
	self:RemoveDataListener(DataMessageNames.ON_ITEM_CHANGE, UpdateStamina)
	self:RemoveDataListener(DataMessageNames.ON_CARD_POOL_SELECT, OnCardPoolSelect)
	self:RemoveDataListener(DataMessageNames.ON_CARD_COST_ITEM_UPDATE,UpdateItemNum)
	self:RemoveDataListener(DataMessageNames.ON_CARD_COST_ITEM_UPDATE_ClOSE,UpdateItemNum)
	self:RemoveDataListener(DataMessageNames.ON_GET_NEW_CARD_REFRESH,RefershData)
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

UIGetNewCardModel.OnCreate = OnCreate
UIGetNewCardModel.OnEnable = OnEnable
UIGetNewCardModel.OnRefresh = OnRefresh
UIGetNewCardModel.OnAddListener = OnAddListener
UIGetNewCardModel.OnRemoveListener = OnRemoveListener
UIGetNewCardModel.OnDisable = OnDisable
UIGetNewCardModel.OnDestroy = OnDestroy

return UIGetNewCardModel

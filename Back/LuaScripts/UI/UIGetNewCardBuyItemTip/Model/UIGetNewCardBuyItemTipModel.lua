
--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UIGetNewCardBuyItemTipModel = BaseClass("UIGetNewCardBuyItemTipModel", UIBaseModel)
local base = UIBaseModel

-- 创建
local function OnCreate(self)
	base.OnCreate(self)
	-- 窗口生命周期内保持的成员变量放这

end

--获取单个卡池数据
local function GetDrawCardData(self,_id)
	local cardDrawData=DataUtil.GetData("card_draw_option");
	for i, v in ipairs(cardDrawData) do
		if v.ID==_id then
			return v;
		end
	end
	return nil;
end


--------------
-----_type=1 单抽，_type=2十抽------------
--------------
-- 打开
local function OnEnable(self,_cardPoold,_type)
	base.OnEnable(self)
	-- 窗口关闭时可以清理的成员变量放这
	self.drawCardType=_type;
	local xlsxData=GetDrawCardData(self,_cardPoold);
	if xlsxData then
		self.itemList={};
		local id=xlsxData.Cost.ID;
		local itemData=DataUtil.GetDataByIdAndType(id);
		local haveNum=BackpackData:GetInstance():GetItemNumById(id);
		table.insert(self.itemList,{id=id,val=haveNum,icon=itemData.icon,isShow=_type==2,name=itemData.name})
		local subCostId=xlsxData.SubCost.ID;
		local needTimes=_type==2 and 10-haveNum or 1;
		local needNum=xlsxData.SubCost.Val*needTimes;
		local subItemData=DataUtil.GetDataByIdAndType(subCostId);
		self.subItemHaveNum=BackpackData:GetInstance():GetItemNumById(subCostId);
		table.insert(self.itemList,{id=subCostId,val=needNum,icon=subItemData.icon,isShow=true,name=subItemData.name})
		self:OnRefresh()
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

UIGetNewCardBuyItemTipModel.OnCreate = OnCreate
UIGetNewCardBuyItemTipModel.OnEnable = OnEnable
UIGetNewCardBuyItemTipModel.OnRefresh = OnRefresh
UIGetNewCardBuyItemTipModel.OnAddListener = OnAddListener
UIGetNewCardBuyItemTipModel.OnRemoveListener = OnRemoveListener
UIGetNewCardBuyItemTipModel.OnDisable = OnDisable
UIGetNewCardBuyItemTipModel.OnDestroy = OnDestroy

return UIGetNewCardBuyItemTipModel
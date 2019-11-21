
--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UITongLinModel = BaseClass("UITongLinModel", UIBaseModel)
local base = UIBaseModel
--需求配置表

--卡片ID表
local tongling_cardInfo_data=DataUtil.GetData("card")

--通过ID拿到卡片的数据
local function ByIDGetCardInfo(StrID)
	return tongling_cardInfo_data[StrID]
end
--拿到表 按照要求排序
--	按完成状态，可领取的通灵组在前，未完成的在后
--	同状态的，按品质从高到低排序
--	同品质的，按奖励卡牌的ID排序（数字正序）

local function TongLingSort(self)
	self.alreadyOwned={}--已拥有
	self.noHave={}  --未拥有
	self.tonglingList = {}
	self.tongling_group_data = DataUtil.GetData("card_channeling")
	--先便利判断
	--获得长度？
	for  value,data in pairs(self.tongling_group_data) do
		--判断ID有没有
		--local tongling_need_info=self.tongling_group_data[value]
		local NoThisCard=true
		for n = 1, #self.have_card_list do
			if data.ID==self.have_card_list[n] then
				NoThisCard=false
				break
			end
		end
		if data~=nil and NoThisCard then
			local cansethave=true
			if data.NeedCardIds~=nil then
				--判断有没有   有的话看条件
				for j = 1, #data.NeedCardIds do
					local CardDataInfo =CardData:GetInstance():GetCardDataById(data.NeedCardIds[j])
					if CardDataInfo~=nil then
						for m = 1, #data.CardCondition[j] do
							if data.CardCondition[j][m].Con==1 then
								--判断物品等级
								if  CardDataInfo.level<data.CardCondition[j][m].Param then
									--不满足条件
									cansethave=false
									break
								end
							elseif data.CardCondition[j][m].Con==2 then
								--判断物品星
								if  CardDataInfo.starlv<data.CardCondition[j][m].Param  then
									--不满足条件
									cansethave=false
									break
								end
							end
						end
					else
						cansethave=false
						break
					end
				end
			end
			if cansethave then
				--满足条件
					table.insert(self.alreadyOwned,data)
			else
				--未拥有
					table.insert(self.noHave,data)
			end
		end
	end
	if #self.alreadyOwned>1 then
		table.sort(self.alreadyOwned,function (a,b)
			return a.ID<b.ID
		end)
	end
	if #self.noHave>1 then
		table.sort(self.noHave,function (a,b)
			return a.ID<b.ID
		end)
	end

	for i = 1, #self.alreadyOwned do
		table.insert(self.tonglingList,self.alreadyOwned[i])
	end
	for i = 1, #self.noHave do
		table.insert(self.tonglingList,self.noHave[i])
	end
	return self.tonglingList
end

-- 创建
local function OnCreate(self)
	base.OnCreate(self)
	-- 窗口生命周期内保持的成员变量放这

end



--self.data_state = 0  -- 0-为请求 1-请求中  2-请求结束
-- 打开
local function OnEnable(self)
	base.OnEnable(self)
	-- 窗口关闭时可以清理的成员变量放这
	self.have_card_list=TongLingData:GetInstance().have_card_list
	self:OnRefresh()
end

-- 刷新全部数据
local function OnRefresh(self)
	TongLingSort(self)
	--刷新后 通知V刷新
end
local function UpdateData(self,add_data)
	--判断成功失败
	-- 如果失败Tips   成功如下  弹界面  刷数据
	TongLingData:GetInstance():UpdateTongLingData(add_data)
	self.have_card_list=TongLingData:GetInstance().have_card_list
	self:OnRefresh()
	self:UIBroadcast(UIMessageNames.UI_TONGLING_DATA_UPDATA)
end
-- 监听
local function OnAddListener(self)
	base.OnAddListener(self)
	self:AddDataListener(DataMessageNames.ON_GET_RESULT_TONGLING, UpdateData)
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)

	self:RemoveDataListener(DataMessageNames.ON_GET_RESULT_TONGLING, UpdateData)
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
UITongLinModel.UpdateData = UpdateData
UITongLinModel.OnCreate = OnCreate
UITongLinModel.OnEnable = OnEnable
UITongLinModel.OnRefresh = OnRefresh
UITongLinModel.OnAddListener = OnAddListener
UITongLinModel.OnRemoveListener = OnRemoveListener
UITongLinModel.OnDisable = OnDisable
UITongLinModel.OnDistroy = OnDistroy
--UITongLinModel.TongLingSort = TongLingSort
return UITongLinModel
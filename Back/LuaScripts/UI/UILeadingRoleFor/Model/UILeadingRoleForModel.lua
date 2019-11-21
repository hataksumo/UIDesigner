
--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UILeadingRoleForModel = BaseClass("UILeadingRoleForModel", UIBaseModel)
local base = UIBaseModel

-- 创建
local function OnCreate(self)
	base.OnCreate(self)
	-- 窗口生命周期内保持的成员变量放这

end

--主角征集开启请求
local function LdRewardRequest(self)
	local msdId = MsgIDDefine.PBUSER_LD_OPEN_REQUEST
	NetManager:GetInstance():SendMessage(msdId,nil,function(msg_obj)
		if msg_obj.OpCode ~= 0 then
			Logger.Log("PBUSER_LD_OPEN_REQUEST出错了~")
			UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
			return
		else
			self.downTime=24*3600
			UserData:GetInstance().ldRewardTime=self.downTime;
			UIManager:GetInstance():Broadcast(UIMessageNames.UI_LD_REWARD_REFRESH,self.downTime);
		end
	end)
end

-- 打开
local function OnEnable(self)
	base.OnEnable(self)
	-- 窗口关闭时可以清理的成员变量放这
	--主角征集倒计时，-1代表没开始
	self.downTime=24*3600;
	self.isTakeReward=UserData:GetInstance().ldReward;
	if UserData:GetInstance().ldRewardTime==-1 then
		LdRewardRequest(self);
	else
		self.downTime=UserData:GetInstance().ldRewardTime;
	end

end

-- 刷新全部数据
local function OnRefresh(self)
	self.isTakeReward=UserData:GetInstance().ldReward;
	UIManager:GetInstance():Broadcast(UIMessageNames.UI_LD_TAKE_REWARD_REFRESH);
end

-- 监听
local function OnAddListener(self)
	base.OnAddListener(self)
	--添加监听
	self:AddDataListener(DataMessageNames.ON_LD_TAKE_REWARD_REFRESH,OnRefresh);
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- 移除监听
	self:RemoveDataListener(DataMessageNames.ON_LD_TAKE_REWARD_REFRESH,OnRefresh);
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

UILeadingRoleForModel.OnCreate = OnCreate
UILeadingRoleForModel.OnEnable = OnEnable
UILeadingRoleForModel.OnRefresh = OnRefresh
UILeadingRoleForModel.OnAddListener = OnAddListener
UILeadingRoleForModel.OnRemoveListener = OnRemoveListener
UILeadingRoleForModel.OnDisable = OnDisable
UILeadingRoleForModel.OnDestroy = OnDestroy

return UILeadingRoleForModel
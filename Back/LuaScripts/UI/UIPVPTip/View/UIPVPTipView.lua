
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIPVPTipView = BaseClass("UIPVPTipView", UIBaseView)
local base = UIBaseView


local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.startTime = self:AddComponent(UIText,"bg/startTime")
	self.timeInfo = self:AddComponent(UIText,"bg/timeInfo")
	self.cancelBtn = self:AddComponent(UIButton,"bg/cancelBtn")
	self.cancelBtnText = self:AddComponent(UIText,"bg/cancelBtn/Text")
	self.cancelBtnText:SetText(DataUtil.GetClientText(100253))
	self.titleName = self:AddComponent(UIText,"titleName")
	self.titleName:SetText(DataUtil.GetClientText(100254))
	self.cancelBtn:SetOnClick(function ()
		local msd_id = MsgIDDefine.PBPVP_MATCH_REQUEST
		local msd_ob = MsgIDMap[msd_id]()
		msd_ob.type = self.model.match_type == 1
		msd_ob.isMatch = false
		NetManager:GetInstance():SendMessage(msd_id, msd_ob,function(msg_obj)
			UIManager:GetInstance():CloseWindow(UIWindowNames.UIPVPTip)
			if msg_obj.OpCode ~= 0 then
				Logger.Log("PBPVP_MATCH_REQUEST出错了~")
				UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
				return
			end
		end)
	end)
end

local function CreatCountDown(self)
	self.curTime = self.curTime + 1
	local formatTime = os.date("%M %S",self.curTime)
	self.timeInfo:SetText(formatTime)
	if self.curTime > 0 then
		self.timer = TimerManager:GetInstance():SimpleTimerArgs(1, self.CreatCountDown,self,true)
	end
end

local function OnEnable(self)
	base.OnEnable(self)
	self:OnRefresh()
	self.curTime = 0
	self.timeInfo:SetText("00 00")
end

local function SendChallengeRequest(self)
	local msd_id = MsgIDDefine.PBPVP_MATCH_REQUEST
	local msd_ob = MsgIDMap[msd_id]()
	msd_ob.type = self.model.match_type == 1
	msd_ob.isMatch = true
	NetManager:GetInstance():SendMessage(msd_id, msd_ob,function(msg_obj)
		if msg_obj.OpCode ~= 0 then
			Logger.Log("PBPVP_MATCH_REQUEST出错了~")
			UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
			UIManager:GetInstance():CloseWindow(UIWindowNames.UIPVPTip)
			return
		end
		Logger.Log("UIPVPTipView------------->  "..tostring(msg_obj.Packages.isReset))
		if msg_obj.Packages.isReset then
			UIManager:GetInstance():CloseWindow(UIWindowNames.UIPVPTip)
			local BattleFieldManager=require "GameLogic.BattleNew.Logic.Manager.BattleFieldManager"
			BattleFieldManager:GetInstance().middleEnterBattle = true
			BattleFieldManager:GetInstance().battleType = BattleEnum.BattleType.PVP
			SceneManager:GetInstance():SwitchScene(SceneConfig.PVPBattleScene)
		end

	end)
end

local function OnRefresh(self)
	-- 各组件刷新
	--发送请求
	SendChallengeRequest(self)
	self.startTime:SetText(self.model.match_type == 1 and "预计时间 04:55" or "预计时间 00:25")
	self.timer = TimerManager:GetInstance():SimpleTimerArgs(1, self.CreatCountDown,self,true)
end

local function OnAddListener(self)
	base.OnAddListener(self)
	-- UI消息注册
	
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- UI消息注销
	
end

local function OnDisable(self)
	base.OnDisable(self)
	-- 清理成员变量
	if self.timer ~= nil then
		TimerManager:GetInstance():SimpleTimerStop(self.timer)
	end
end

local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)
	if self.timer ~= nil then
		TimerManager:GetInstance():SimpleTimerStop(self.timer)
	end
end

UIPVPTipView.CreatCountDown = CreatCountDown
UIPVPTipView.OnDisable = OnDisable
UIPVPTipView.OnCreate = OnCreate
UIPVPTipView.OnEnable = OnEnable
UIPVPTipView.OnRefresh = OnRefresh
UIPVPTipView.OnAddListener = OnAddListener
UIPVPTipView.OnRemoveListener = OnRemoveListener
UIPVPTipView.OnDestroy = OnDestroy

return UIPVPTipView

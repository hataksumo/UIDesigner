
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIPVPMatchView = BaseClass("UIPVPMatchView", UIBaseView)
local base = UIBaseView


local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	

end

local function OnEnable(self)
	base.OnEnable(self)
	--发送请求
	local msd_id = MsgIDDefine.PBPVP_MATCH_REQUEST
	local msd_ob = MsgIDMap[msd_id]()
	msd_ob.type = self.model.match_type == 1
	NetManager:GetInstance():SendMessage(msd_id, msd_ob,function(msg_obj)
		if msg_obj.OpCode ~= 0 then
			Logger.Log("PBPVP_MATCH_REQUEST出错了~")
			UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
			UIManager:GetInstance():CloseWindow(UIWindowNames.UIPVPMatch)
			return
		end
		Logger.Log("PVPMatchView------------->  "..tostring(msg_obj.Packages.isReset))
		if msg_obj.Packages.isReset then
			UIManager:GetInstance():CloseWindow(UIWindowNames.UIPVPMatch)
			local BattleFieldManager=require "GameLogic.BattleNew.Logic.Manager.BattleFieldManager"
			BattleFieldManager:GetInstance().middleEnterBattle = true
			SceneManager:GetInstance():SwitchScene(SceneConfig.PVPBattleScene)
		end

	end)
end


local function OnAddListener(self)
	base.OnAddListener(self)
	-- UI消息注册
	
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- UI消息注销
	
end

local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)
end

UIPVPMatchView.OnCreate = OnCreate
UIPVPMatchView.OnEnable = OnEnable
UIPVPMatchView.OnAddListener = OnAddListener
UIPVPMatchView.OnRemoveListener = OnRemoveListener
UIPVPMatchView.OnDestroy = OnDestroy

return UIPVPMatchView

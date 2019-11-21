
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UINationNewBattleLogsView = BaseClass("UINationNewBattleLogsView", UIBaseView)
local base = UIBaseView

local UINationNewBattleLogsItem = require "UI.UINationNewBattleLogs.Component.UINationNewBattleLogsItem"

local function CalculateLogPos(self, v, pos)
	local width = UIUtil.GetTextWidth(self.unity_text, v.content)
	local height = UIUtil.GetTextHeight(self.unity_text, v.content)
	v.pos = pos
	if width > 1560 then
		width = 1560
	end
	if height > 70 then
		v.y = height + 40
	else
		v.y = 70
	end
	v.size = Vector2.New(height, width)
	return pos + v.y
end

local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.maskBtn = self:AddComponent(UIButton, "maskBtn")
	self.maskBtn:SetOnClick(self, function()
		self.ctrl:CloseSelf()
	end)
	self.exitBtnUIButton = self:AddComponent(UIButton, "top/exitBtn_UIButton")
	self.exitBtnUIButton:SetOnClick(function()
		self.ctrl.CloseSelf()
	end)
	self.all_already_read_btn_img=self:AddComponent(UIImage,"AllAlreadyReadBtn")
	self.grayMat = self.all_already_read_btn_img:GetMat()
	self.all_already_read_btn=self:AddComponent(UIButton,"AllAlreadyReadBtn")

	--self.log_wrap_group = self:AddComponent(logWrapGroup, "panel/ScrollView/Viewport/Content", logItem, Vector2.New(1000, 63.5))
	--self.unity_text = UIUtil.FindText(self.transform, "panel/ScrollView/Viewport/TextExample")
	self.gridUIWrapGroup3D = self:AddComponent(UIWrapGroup3D,  "ScrollView/Content", UINationNewBattleLogsItem)



		--LookState按钮
		self.look_btn=self:AddComponent(UIButton,"AllBtn/LookBtnParen/LookBtn")
		self.look_self_btn=self:AddComponent(UIButton,"AllBtn/LookBtnParen/LookSelfBtn")
		self.look_league_btn=self:AddComponent(UIButton,"AllBtn/LookBtnParen/LookLeague")
		--BattleState按钮
		self.battle_btn=self:AddComponent(UIButton,"AllBtn/BattleBtnParen/BattleBtn")
		self.all_btn=self:AddComponent(UIButton,"AllBtn/BattleBtnParen/AllBtn")
		self.att_btn=self:AddComponent(UIButton,"AllBtn/BattleBtnParen/AttBtn")
		self.def_btn=self:AddComponent(UIButton,"AllBtn/BattleBtnParen/DefBtn")

		self.all_btn_mask=self:AddComponent(UIButton,"AllBtn/AllBtnMask")

		 self.logs_title=self:AddComponent(UIText,"top/titleTxt")
		 self.logs_title:SetText(DataUtil.GetClientText(200385))
	--LookState文字
		self.look_text=self:AddComponent(UIText,"AllBtn/LookBtnParen/LookBtn/LookText")
		self.look_self_text=self:AddComponent(UIText,"AllBtn/LookBtnParen/LookSelfBtn/LookSelfText")
		self.look_league_text=self:AddComponent(UIText,"AllBtn/LookBtnParen/LookLeague/LookLeagueText")
	--BattleState文字
		self.battle_text=self:AddComponent(UIText,"AllBtn/BattleBtnParen/BattleBtn/BattleText")
		self.all_text=self:AddComponent(UIText,"AllBtn/BattleBtnParen/AllBtn/AllText")
		self.att_text=self:AddComponent(UIText,"AllBtn/BattleBtnParen/AttBtn/AttText")
		self.def_text=self:AddComponent(UIText,"AllBtn/BattleBtnParen/DefBtn/DefText")

	--LookState文字
		self.look_text:SetText(DataUtil.GetClientText(200383))
		self.look_self_text:SetText(DataUtil.GetClientText(200383))
		self.look_league_text:SetText(DataUtil.GetClientText(200384))
	--BattleState文字
		self.battle_text:SetText(DataUtil.GetClientText(200382))
		self.all_text:SetText(DataUtil.GetClientText(200382))
		self.att_text:SetText(DataUtil.GetClientText(200380))
		self.def_text:SetText(DataUtil.GetClientText(200381))

		self.all_btn_mask:SetOnClick(function()
			self.all_btn_mask:SetActive(false)
			self.look_self_btn:SetActive(false)
			self.look_league_btn:SetActive(false)
			self:BattleBtnSetActive()
		end)

	self.look_btn:SetOnClick(function()
		self:BattleBtnSetActive()
		self.all_btn_mask:SetActive(true)
		self.look_self_btn:SetActive(true)
		if  self.model.hasUnion then
			self.look_league_btn:SetActive(true)
		else
			self.look_league_btn:SetActive(false)
		end

	end)

	self.battle_btn:SetOnClick(function()
		self:BattleBtnSetActive()
		self.all_btn_mask:SetActive(true)
		self.all_btn:SetActive(true)
		self.att_btn:SetActive(true)
		self.def_btn:SetActive(true)
	end)

		--战报全部已读按钮
	self.all_already_read_btn:SetOnClick(function()
		if self.model.myLookState ==  NationDefine.NATION_BATTLE_LOG_LOOK_ST.UNION then
			return
		end
		if not self.model.allSelfLogUnLook then -- 战报全部已读
			UISpecial:GetInstance():UITipText("战报已读，没有新的战报")
			return
		end
		-- 有未读的
		Logger.LogVars("是否有未读的战报：",self.model.allSelfLogUnLook)
		self.ctrl:SetModelAllBattleRead()
	end)


	--只看同盟
		self.look_league_btn:SetOnClick(function()
			Logger.LogVars("看联盟的状态：",self.model.myLookState)
			self:BattleBtnSetActive()
			if self.model.myLookState ~=  NationDefine.NATION_BATTLE_LOG_LOOK_ST.UNION then
				self.ctrl:ChangeModelLookState(NationDefine.NATION_BATTLE_LOG_LOOK_ST.UNION)

			end
		end)
	--只看自己
	self.look_self_btn:SetOnClick(function()
		Logger.LogVars("看自己的状态：",self.model.myLookState)
		self:BattleBtnSetActive()
		if self.model.myLookState ~=  NationDefine.NATION_BATTLE_LOG_LOOK_ST.SELF then
			self.ctrl:ChangeModelLookState(NationDefine.NATION_BATTLE_LOG_LOOK_ST.SELF)
		end

	end)
	--全部战斗
	self.all_btn:SetOnClick(function()
		self:BattleBtnSetActive()
		if 	self.model.myBattleState ~= self.model.BattleState.All  then
			self.ctrl:ChangeModelBattleState(self.model.BattleState.All)
		end

	end)
	--进攻
	self.att_btn:SetOnClick(function()
		self:BattleBtnSetActive()
		if self.model.myBattleState ~= self.model.BattleState.Attack then
			self.ctrl:ChangeModelBattleState(self.model.BattleState.Attack)
		end

	end)
	--防守
	self.def_btn:SetOnClick(function()
		self:BattleBtnSetActive()
		if 	self.model.myBattleState ~= self.model.BattleState.Defend then
			self.ctrl:ChangeModelBattleState(self.model.BattleState.Defend)
			Logger.LogVars("我的战斗状态：",self.model.myBattleState)
		end
	end)
end

local function OnEnable(self)
	base.OnEnable(self)
	----计算位置,todo
	self:BattleBtnSetActive()

	self:__OnFlushView(true)
end

---- enable初始化
--local function OnEnableInit(self)
--
--end

-- 刷新全部界面
local function __OnFlushView(self,needReset)
	--Logger.LogVars("__OnFlushView     ： ",#self.model.fightLogList)
	self.gridUIWrapGroup3D:SetLength(#self.model.fightLogList)
	if needReset then
		self.gridUIWrapGroup3D:ResetToBeginning()
	else
		self.gridUIWrapGroup3D:WrapContent(true)
	end

	if self.model.myLookState ==  NationDefine.NATION_BATTLE_LOG_LOOK_ST.UNION then
		self.look_text:SetText(DataUtil.GetClientText(200384))
		self.all_already_read_btn:SetActive(false)
	else
		self.all_already_read_btn:SetActive(true)
		if self.model.allSelfLogUnLook then -- 有未读的
			self.all_already_read_btn_img:SetMat()
			else -- 战报全部已读
			self.all_already_read_btn_img:SetMat(self.grayMat)
		end
	end

	if self.model.myLookState == NationDefine.NATION_BATTLE_LOG_LOOK_ST.SELF then
		-- 显示只看自己文字
		self.look_text:SetText(DataUtil.GetClientText(200383))
	end
	if self.model.myBattleState  ==self.model.BattleState.All then -- 全部
		-- 显示 全部
		self.battle_text:SetText(DataUtil.GetClientText(200382))
	elseif self.model.myBattleState  == self.model.BattleState.Attack then -- 进攻
		-- 显示 进攻
		self.battle_text:SetText(DataUtil.GetClientText(200380))
	elseif self.model.myBattleState == self.model.BattleState.Defend then -- 防守
		-- 显示 防守
		self.battle_text:SetText(DataUtil.GetClientText(200381))
	end

end


--关闭全部按钮
local function BattleBtnSetActive(self)
	self.look_self_btn:SetActive(false)
	self.look_league_btn:SetActive(false)
	self.all_btn:SetActive(false)
	self.att_btn:SetActive(false)
	self.def_btn:SetActive(false)
	self.all_btn_mask:SetActive(false)
end

local function OnAddListener(self)
	base.OnAddListener(self)
	-- UI消息注册
	self:AddUIListener(UIMessageNames.UI_NATION_BATTLE_LOGS_VIEW_REFRESH, self.__OnFlushView)
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- UI消息注销
	self:RemoveUIListener(UIMessageNames.UI_NATION_BATTLE_LOGS_VIEW_REFRESH, self.__OnFlushView)
end

local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)
end


local function IsLookImageShow(self)
	if self.model.myLookState ==  NationDefine.NATION_BATTLE_LOG_LOOK_ST.UNION then
		return false
	else
		return true
	end
end


UINationNewBattleLogsView.OnCreate = OnCreate
UINationNewBattleLogsView.OnEnable = OnEnable
UINationNewBattleLogsView.OnAddListener = OnAddListener
UINationNewBattleLogsView.OnRemoveListener = OnRemoveListener
UINationNewBattleLogsView.OnDestroy = OnDestroy
UINationNewBattleLogsView.BattleBtnSetActive=BattleBtnSetActive
UINationNewBattleLogsView.IsLookImageShow=IsLookImageShow
UINationNewBattleLogsView.__OnFlushView=__OnFlushView
return UINationNewBattleLogsView

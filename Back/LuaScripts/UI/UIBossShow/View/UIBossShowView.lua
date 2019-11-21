
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIBossShowView = BaseClass("UIBossShowView", UIBaseView)
local base = UIBaseView

local bg_pos = Vector3.New(2320,0,0)
local top_pos = Vector3.New(1005,0,0)
local pic_pos = Vector3.New(-2070,0,0)
local bottom_pos = Vector3.New(-2300,-158,0)
local name_pos = Vector3.New(1540,43,0)
local name_pos_2 = Vector3.New(540,43,0)
local easy_formula = EaseFormula.OutQuad
local fly_time = 0.15
local total_down_count = 20
local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.btn = self:AddComponent(UIButton, "B")
	self.btn:SetOnClick(function()
		if self.can_click then
			self:ExitAnim()
		end
	end)
	self.bg_rect = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.RectTransform),"Bg")
	self.pic_rect = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.RectTransform),"Pic")
	self.bottom_rect = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.RectTransform),"Bottom")
	self.top_rect = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.RectTransform),"Top")
	self.name_rect = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.RectTransform),"Name")
	self.down_count_text = self:AddComponent(UIText,"DownCount")
end

local function EnterAnim(self)
	self.can_click = false
	LuaTweener.UIMoveTo(self.bg_rect,bg_pos,Vector3.zero,fly_time,easy_formula,function()
		LuaTweener.UIMoveTo(self.pic_rect,pic_pos,Vector3.zero,fly_time,easy_formula,function()
			LuaTweener.UIMoveTo(self.bottom_rect,bottom_pos,Vector3.New(0,-158,0),fly_time,easy_formula,function()
				LuaTweener.UIMoveTo(self.name_rect,name_pos,name_pos_2,fly_time,easy_formula,function()
					self.can_click = true
					--修改相机镜头
					local cam_game = CS.UnityEngine.Camera.main
					cam_game.transform.position = Vector3.New(2.33,6.7,-18.64)
					cam_game.transform.eulerAngles = Vector3.New(18.4,-7.3,0)
					cam_game.fieldOfView = 30
					self.down_count = Time.time
					self.hide_timer = TimerManager:GetInstance():SimpleTimerArgs(total_down_count,function()
						self:ExitAnim()
						self.hide_timer = nil
						self.down_count = nil
					end,nil,true)
				end)
			end)
			LuaTweener.UIMoveTo(self.top_rect,top_pos,Vector3.zero,fly_time,easy_formula)
		end)
	end)
end

local function ExitAnim(self)
	self.can_click = false
	self.down_count = nil
	self.down_count_text:SetText("")
	LuaTweener.UIMoveTo(self.name_rect,name_pos_2,name_pos,fly_time,easy_formula,function()
		LuaTweener.UIMoveTo(self.bottom_rect,Vector3.New(0,-158,0),bottom_pos,fly_time,easy_formula,function()
			LuaTweener.UIMoveTo(self.pic_rect,Vector3.zero,pic_pos,fly_time,easy_formula,function()
				LuaTweener.UIMoveTo(self.bg_rect,Vector3.zero,bg_pos,fly_time,easy_formula,function()
					UIManager:GetInstance():CloseWindow(UIWindowNames.UIBossShow)
				end)
			end)
		end)
		LuaTweener.UIMoveTo(self.top_rect,Vector3.zero,top_pos,fly_time,easy_formula)
	end)
end

local function OnEnable(self)
	base.OnEnable(self)
	self.down_count_text:SetText("")
	self.bg_rect.anchoredPosition3D = bg_pos
	self.pic_rect.anchoredPosition3D = pic_pos
	self.bottom_rect.anchoredPosition3D = bottom_pos
	self.top_rect.anchoredPosition3D = top_pos
	self.name_rect.anchoredPosition3D = name_pos
	EnterAnim(self)
end
-- 关闭：窗口隐藏
local function OnDisable(self)
	base.OnDisable(self)
	if self.hide_timer ~= nil then
		TimerManager:GetInstance():SimpleTimerStop(self.hide_timer)
		self.hide_timer = nil
	end
	self.down_count = nil
end

local function Update(self)
	if self.down_count then
		local remain = tostring(math.ceil(total_down_count - Time.time + self.down_count)).."秒"
		self.down_count_text:SetText(remain)
	end
end

UIBossShowView.Update = Update
UIBossShowView.OnDisable = OnDisable
UIBossShowView.OnCreate = OnCreate
UIBossShowView.OnEnable = OnEnable
UIBossShowView.ExitAnim = ExitAnim
return UIBossShowView

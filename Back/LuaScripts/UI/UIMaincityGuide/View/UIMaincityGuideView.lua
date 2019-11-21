
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIMaincityGuideView = BaseClass("UIMaincityGuideView", UIBaseView)
local base = UIBaseView
--单个按钮的点击
local function OnSingleBtnClick(self,_index)
	if self.can_click then
		Logger.Log("-------------->点击  ".._index)
		local BattleAssistFunction = require "GameLogic.BattleNew.BattleAssistFunction"
		BattleAssistFunction.EnterGuideMapBattle(100000+_index,_index == 3)
	end
	--self.ctrl:CloseSelf()
end

local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.bg_list = {}
	for i = 2, 4 do
		local btn = self:AddComponent(UIButton,"Btn"..tostring(i))
		btn:SetOnClick(self,OnSingleBtnClick,i-1)
		local bg = self:AddComponent(UIImage,"Bg"..tostring(i))
		local bg_effect = UIUtil.FindTrans(self.transform,"Bg"..tostring(i).."Effect")
		local tip_effect = UIUtil.FindTrans(self.transform,"fx_edge_light_Bg"..tostring(i))
		table.insert(self.bg_list,{btn = btn,bg = bg,effect = bg_effect,tip = tip_effect})
	end
	self.bg_frame = self:AddComponent(UIImage,"Bg")

	--计算分辨率
	local min = 1.778 --1920/1080
	local max = 2.056 --2960/1440
	local cur = CS.UnityEngine.Screen.width/CS.UnityEngine.Screen.height
	if cur < min then
		cur = min
	end
	local fix_per = (cur-min)/(max-min)
	Logger.Log("fix_per  "..tostring(fix_per))
	local rect = UIUtil.FindComponent(self.bg_list[1].tip,typeof(CS.UnityEngine.RectTransform),"Image (3)")
	rect.anchoredPosition = Vector2.New(0,350+50*(1-fix_per))
	rect = UIUtil.FindComponent(self.bg_list[3].tip,typeof(CS.UnityEngine.RectTransform),"Image (3)")
	rect.sizeDelta = Vector2.New(670+50*fix_per,100)
end

--设置按钮的显示
local function SetBtnListActive(self,_count)
	if _count > 0 then
		for i = 1, _count do
			if i < _count then
				self.bg_list[i].btn.gameObject:SetActive(false)
				self.bg_list[i].bg.gameObject:SetActive(false)
			else
				--播放动画
				TimerManager:GetInstance():SimpleTimerArgs(0.5,function()
					self.bg_list[i].btn.gameObject:SetActive(false)
					LuaTweener.UIFadeTo(self.bg_list[i].bg, 1, 0, 0.3, EaseFormula.Linear)
					self.bg_list[i].effect.gameObject:SetActive(true)
					TimerManager:GetInstance():SimpleTimerArgs(2.5,function()
						self.bg_list[i].effect.gameObject:SetActive(false)
						self.bg_list[i].bg.gameObject:SetActive(false)
						self.can_click = true
						DataManager:GetInstance():Broadcast("UIMainCityGuideAnim")
						if _count == 3 then
							UIManager:GetInstance():CloseWindow(UIWindowNames.UIMaincityGuide,true);
						else
							self.bg_list[i+1].tip.gameObject:SetActive(true)
						end
					end,nil,true)
					if _count == 3 then
						LuaTweener.UIFadeTo(self.bg_frame, 1, 0, 2.5, EaseFormula.Linear)
					end
				end,nil,true)
			end
		end
	else
		self.bg_list[1].tip.gameObject:SetActive(true)
		self.can_click = true
	end

end

local function OnEnable(self)
	base.OnEnable(self)
	local guideMaxId = MapData:GetInstance().allChapter[3].curMaxLevelid
	self.can_click = false
	if guideMaxId <=0 then
		SetBtnListActive(self,0);
	else
		SetBtnListActive(self,math.floor(guideMaxId%10));
	end
end


local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)
end

UIMaincityGuideView.OnCreate = OnCreate
UIMaincityGuideView.OnEnable = OnEnable
UIMaincityGuideView.OnDestroy = OnDestroy

return UIMaincityGuideView

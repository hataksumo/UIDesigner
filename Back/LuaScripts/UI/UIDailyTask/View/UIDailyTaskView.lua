
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIDailyTaskView = BaseClass("UIDailyTaskView", UIBaseView)
local base = UIBaseView
local ResourceBarComponentManager=require("UI.UIResourceBar.ResourceBarComponentManager");

local UIDailyAwardWarpItem = require "UI.UIDailyTask.Component.UIDailyAwardWarpItem"
local PassTopBtnItem = require "UI.UIDailyTask.Component.PassTopBtnItem"
local DailyActiveWrapItem = require "UI.UIDailyTask.Component.DailyActiveWrapItem"
local EveryDayWrapItem = require "UI.UIDailyTask.Component.EveryDayWrapItem"
local AchievementItemResourceBar = require "UI.UIDailyTask.Component.AchievementItemResourceBar"
local AchievementBtnItem = require "UI.UIDailyTask.Component.AchievementBtnItem"
local RecentlyWarpItem = require "UI.UIDailyTask.Component.RecentlyWarpItem"
local TaskChildTabItem = require "UI.UIDailyTask.Component.TaskChildTabItem"
local AchievementWrapItem = require "UI.UIDailyTask.Component.AchievementWrapItem"


local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	---基础组件获取
	self.anim=self.transform:GetComponent(typeof(CS.UnityEngine.Animator))
	self.TitleBar=UIUtil.FindTrans(self.transform,"TopLeft")
	UIUtil.CreatCloseBtnComponent(self,self.TitleBar.transform,function(go) self.closeComponent=go end,function()
		if self.one_in then
			self.one_in=false
			LJAudioManger:GetInstance():PlayVoice("UI_Brush_03")
			self:CloseAni(true)
		end

	end,function ()
		if self.one_in then
			self.one_in=false
			LJAudioManger:GetInstance():PlayVoice("UI_Brush_03")
			self:CloseAni()
		end

	end ,DataUtil.GetClientText(100202),false,1,true);

	self.select_img = UIUtil.FindTrans(self.transform,"rightPanel/SelectBtn")
	self.selectUIText = self:AddComponent(UIText, "rightPanel/SelectBtn/SelectText")

	self.daily_taskUIText = self:AddComponent(UIText, "rightPanel/Scroll View/GameObject/daily_task_UIButton/daily_task_UIText")
	self.daily_taskUIText:SetText()
	self.everyday_taskUIText = self:AddComponent(UIText, "rightPanel/Scroll View/GameObject/everyday_task_UIButton/everyday_task_UIText")
	self.everyday_taskUIText:SetText(DataUtil.GetClientText(100202))
	self.achievement_taskUIText = self:AddComponent(UIText, "rightPanel/Scroll View/GameObject/achievement_task_UIButton/achievement_task_UIText")
	self.achievement_taskUIText:SetText(DataUtil.GetClientText(100201))
	self.everyday_taskUIButton = self:AddComponent(UIButton, "rightPanel/Scroll View/GameObject/everyday_task_UIButton")
    self.everyday_taskUIButton:SetOnClick(function ()
		if not  self.first then
			LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		end
		if self.closeComponent then
			self.closeComponent:SetTitleData(DataUtil.GetClientText(100203))
		end
		self.SetBtnParent(self,self.select_img,self.everyday_taskUIButton.transform)
		self.selectUIText:SetText(DataUtil.GetClientText(100202))
		self.daily_ActivePanel.gameObject:SetActive(false)
		self.everyDay_Panel.gameObject:SetActive(true)
		self.achievementDay_Panel.gameObject:SetActive(false)
		self:SetEveryDatTaskData()
	end)
	self.achievement_taskUIButton = self:AddComponent(UIButton, "rightPanel/Scroll View/GameObject/achievement_task_UIButton")
    self.achievement_taskUIButton:SetOnClick(function ()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.closeComponent:SetTitleData("成就")
		self.SetBtnParent(self,self.select_img,self.achievement_taskUIButton.transform)
		self.selectUIText:SetText(DataUtil.GetClientText(100201))

		self.daily_ActivePanel.gameObject:SetActive(false)
		self.everyDay_Panel.gameObject:SetActive(false)
		self.achievementReward_Panel.gameObject:SetActive(false)

		self.select_child_item_grid.gameObject:SetActive(false)
		self.select_tap_obj.gameObject:SetActive(false)
		self.achievementDay_Panel.gameObject:SetActive(true)
		self.achievement_Panel.gameObject:SetActive(true)
		self:OnClickAchievementBtn()
	end)

	self.daily_taskUIButton = self:AddComponent(UIButton, "rightPanel/Scroll View/GameObject/daily_task_UIButton")
	self.daily_taskUIButton.gameObject:SetActive(false)
	self.daily_taskUIButton:SetOnClick(function ()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.SetBtnParent(self,self.select_img,self.daily_taskUIButton.transform)
		self.selectUIText:SetText(self.daily_taskUIText)
		self.daily_ActivePanel.gameObject:SetActive(true)
		self.everyDay_Panel.gameObject:SetActive(false)
		self.achievementDay_Panel.gameObject:SetActive(false)
	end)

	self.resourceBarParent=UIUtil.FindTrans(self.transform,"resourceBarParent");
	ResourceBarComponentManager:GetInstance():CreatResourceBarComponent(self.resourceBarParent,UIWindowNames.UIDailyTask,ResourceBarType.BAGPACK,self);

    

	---日常活动相关组件查找

	self.daily_selectUIText = self:AddComponent(UIText, "dailyActivePanel/staticPanel/selectImg/daily_selectUIText")
	self.daily_select_img = UIUtil.FindTrans(self.transform,"dailyActivePanel/staticPanel/selectImg")
	self.top_grid = self:AddComponent(UIBaseContainer,"dailyActivePanel/staticPanel/top_grid")
	local topCount = self.top_grid.transform.childCount
	self.topPrbList = {}
	for i = 0, topCount - 1 do
		local singleTrans = self.top_grid.transform:GetChild(i)
		local pass = PassTopBtnItem.New(self,singleTrans.gameObject)
		pass:OnCreate()
		table.insert(self.topPrbList,pass)
	end

	self.daily_title_UIText = self:AddComponent(UIText, "dailyActivePanel/staticPanel/daily_title_UIText")
	self.awardUIText = self:AddComponent(UIText, "dailyActivePanel/staticPanel/award_UIText")
	self.desUIText = self:AddComponent(UIText, "dailyActivePanel/staticPanel/des_UIText")
    
	self.award_grid = self:AddComponent(UIBaseContainer, "dailyActivePanel/staticPanel/award_grid")
	local awardCount = self.award_grid.transform.childCount
	self.awardPrbList = {}
	for i = 0, awardCount - 1 do
		local singleTrans = self.award_grid.transform:GetChild(i)
		local pass = UIDailyAwardWarpItem.New(self,singleTrans.gameObject)
		pass:OnCreate()
		table.insert(self.awardPrbList,pass)
	end
	self.daily_active_grid = self:AddComponent(UIWrapGroup3D,"dailyActivePanel/taskScrollRect/taskGrid",DailyActiveWrapItem)

	---每次任务相关组件查找
	self.everyday_grid = self:AddComponent(UIWrapGroup3D,"everyDayPanel/everyScrollRect/Grid",EveryDayWrapItem)
	---成就任务相关组件查找
	self.score_slider = self:AddComponent(UISlider, "achievementDayPanel/achievementPanel/score_scrollbar")
	self.achievement_title_UIText = self:AddComponent(UIText, "achievementDayPanel/achievementPanel/score_scrollbar/achievement_title_UIText")
	self.achievement_title_UIText:SetText(DataUtil.GetClientText(100200))
	self.scoreUIText = self:AddComponent(UIText, "achievementDayPanel/achievementPanel/score_scrollbar/score_UIText")
	self.recentlyUIText = self:AddComponent(UIText, "achievementDayPanel/achievementPanel/recently_UIText")
	self.name_UIText = self:AddComponent(UIText, "achievementDayPanel/achievementRewardPanel/name_UIText")

    self.topInfo_btn = self:AddComponent(UIButton,"achievementDayPanel/topInfo")
	self.topInfo_btn_text = self:AddComponent(UIText,"achievementDayPanel/topInfo/btn_text")
	self.topInfo_btn_text:SetText(DataUtil.GetClientText(100204))
	self.topInfo_btn:SetOnClick(function ()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.achievement_Panel.gameObject:SetActive(true)
		self.achievementReward_Panel.gameObject:SetActive(false)
		self.select_child_item_grid.gameObject:SetActive(false)
		self.select_tap_obj.gameObject:SetActive(false)
	end)
    self.scrollbar_grid =  self:AddComponent(UIBaseContainer, "achievementDayPanel/achievementPanel/scrollbar_grid")
    local scrollbarCount = self.scrollbar_grid.transform.childCount
    self.scrollbarPrbList = {}
    for i = 0, scrollbarCount - 1 do
        local singleTrans = self.scrollbar_grid.transform:GetChild(i)
        local pass = AchievementItemResourceBar.New(self,singleTrans.gameObject)
        pass:OnCreate()
        table.insert(self.scrollbarPrbList,pass)
    end

    self.btn_grid =  self:AddComponent(UIBaseContainer, "achievementDayPanel/buttonScrollRect/buttonGrid")
    local btnCount = self.btn_grid.transform.childCount
    self.btn_gridPrbList = {}
    for i = 0, btnCount - 1 do
        local singleTrans = self.btn_grid.transform:GetChild(i)
        local pass = AchievementBtnItem.New(self,singleTrans.gameObject)
        pass:OnCreate()
        table.insert(self.btn_gridPrbList,pass)
    end

    self.recently_grid = self:AddComponent(UIWrapGroup3D,"achievementDayPanel/achievementPanel/recentlyScrollRect/recentlyGrid",RecentlyWarpItem)
	self.select_tap_obj = UIUtil.FindTrans(self.transform,"achievementDayPanel/select_tap_obj")
	self.select_tap_obj_text = self:AddComponent(UIText,"achievementDayPanel/select_tap_obj/Text")
	self.select_itemButton = UIUtil.FindTrans(self.transform,"achievementDayPanel/select_itemButton")
	self.select_itemButton_text = self:AddComponent(UIText,"achievementDayPanel/select_itemButton/Texts")
	self.select_child_item_grid = self:AddComponent(UIBaseContainer, "achievementDayPanel/select_child_item")
	local itemCount = self.select_child_item_grid.transform.childCount
	self.itemPrbList = {}
	for i = 0, itemCount - 1 do
		local singleTrans = self.select_child_item_grid.transform:GetChild(i)
		local pass = TaskChildTabItem.New(self,singleTrans.gameObject)
		pass:OnCreate()
		table.insert(self.itemPrbList,pass)
	end
	self.achievement_grid = self:AddComponent(UIWrapGroup3D,"achievementDayPanel/achievementRewardPanel/rewardScrollRect/rewardGrid",AchievementWrapItem)


	self.select_tap_obj.gameObject:SetActive(false)
	self.select_itemButton.gameObject:SetActive(false)
	self.select_child_item_grid.gameObject:SetActive(false)

	self.daily_ActivePanel = UIUtil.FindTrans(self.transform,"dailyActivePanel")
	self.everyDay_Panel = UIUtil.FindTrans(self.transform,"everyDayPanel")
	self.achievementDay_Panel = UIUtil.FindTrans(self.transform,"achievementDayPanel")
	self.achievement_Panel = UIUtil.FindTrans(self.transform,"achievementDayPanel/achievementPanel")
	self.achievementReward_Panel = UIUtil.FindTrans(self.transform,"achievementDayPanel/achievementRewardPanel")
	--[[
	self.SetBtnParent(self,self.select_img,self.everyday_taskUIButton.transform)
	--self.selectUIText:SetText("每日任务")
	self.daily_ActivePanel.gameObject:SetActive(false)
	self.everyDay_Panel.gameObject:SetActive(true)
	self.achievementDay_Panel.gameObject:SetActive(false)
	--]]
end
local function CloseAni(self,bool)
	self.anim:Play( "ef_ui_UITongLin_out",0,0)
	local animInfo = self.anim:GetCurrentAnimatorStateInfo(0)
	coroutine.start(function()
		local until_func = function()
			if self.anim.isActiveAndEnabled then
				animInfo = self.anim:GetCurrentAnimatorStateInfo(0)
				if animInfo:IsName("ef_ui_UITongLin_out") then
					if animInfo.normalizedTime >= 1.0 then
						return true
					else
						return false
					end
				else
					return true
				end
			else
				return false
			end
		end
		coroutine.waituntil(until_func)
		if bool then
			self.ctrl:CloseSelf()
		else
			UIUtil.BackHomeMain()
		end

	end)
end
---设置日常任务顶部的按钮数量
local function SetTopButCount(self)
	self:SetEveryDatTaskData() -- 临时添加  以后加入日常任务删除
	self.topBtnList = self.model.top_btn_data
	for i, v in ipairs(self.topPrbList) do
		if self.topBtnList[i]~=nil then
			v.gameObject:SetActive(true)
			v:Refresh(self.topBtnList[i])
		else
			v.gameObject:SetActive(false)
		end
	end
	local trans =self.top_grid.transform:GetChild(0)
	if trans == nil then
		return
	end
	self:TopBtnOnClick(trans,self.topBtnList[1])
	self.daily_active_data = {}
	for _, v in ipairs(self.model.daily_active_data) do
		if v.task_class == 1 then
			table.insert(self.daily_active_data,v)
		end
	end
	if self.daily_active_data ~= nil and #self.daily_active_data > 0 then
		self.daily_active_grid:SetLength(table.count(self.daily_active_data))
		self.daily_active_grid:SetGridPositionByIndex(0)
	else
		self.daily_active_grid:SetLength(0)
	end
	self:SetAwardShow(self.daily_active_data[1])
end

---日常任务顶部按钮回调设置日常任务的数据
local function TopBtnOnClick(self,_trans,_btnData)
	self.SetBtnParent(self,self.daily_select_img,_trans)
	self.daily_selectUIText:SetText(_btnData.ResetTime)
	self.daily_active_data = {}
	for _, v in ipairs(self.model.daily_active_data) do
		if v.task_class == _btnData.ID then
			table.insert(self.daily_active_data,v)
		end
	end
	if self.daily_active_data ~= nil and #self.daily_active_data > 0 then
		self.daily_active_grid:SetLength(table.count(self.daily_active_data))
		self.daily_active_grid:SetGridPositionByIndex(0)
	else
		self.daily_active_grid:SetLength(0)
	end
	self:SetAwardShow(self.daily_active_data[1])
end

---设置日常活动奖励
local function SetAwardShow(self,_data)
	self.daily_title_UIText:SetText(_data.task_name)
	self.desUIText:SetText(_data.task_des)
	if _data == nil then
		return
	end
	for i, v in ipairs(self.awardPrbList) do
		if _data.task_condition[i] ~= nil then
			v.gameObject:SetActive(true)
			v:Refresh(_data.task_condition[i])
		else
			v.gameObject:SetActive(false)
		end
	end
end

---设置每日任务列表
local function SetEveryDatTaskData(self)
	self.everyday_task_data = TaskData:GetInstance().every_day_task
	if self.everyday_task_data ~= nil and #self.everyday_task_data > 0 then
		self.everyday_grid:SetLength(table.count(self.everyday_task_data))
		self.everyday_grid:SetGridPositionByIndex(0)
	else
		self.everyday_grid:SetLength(0)
	end
end

---成就任务的资源条数据
local function SetResourceBarCount(self)
    self.sliderList = TaskData:GetInstance().achievement_btn_list
    if self.sliderList == nil or #self.sliderList == 0 then
        return
    end
	self.score_slider:SetValue(TaskData:GetInstance().achievement_score_now/TaskData:GetInstance().achievement_score_all)
	self.scoreUIText:SetText(TaskData:GetInstance().achievement_score_now.."/"..TaskData:GetInstance().achievement_score_all)
    ---成就任务进度条
    for i, v in ipairs(self.scrollbarPrbList) do
        if self.sliderList[i]~=nil then
            v.gameObject:SetActive(true)
            v:Refresh(self.sliderList[i])
        else
            v.gameObject:SetActive(false)
        end
    end
    ---右侧按钮生成列表
    for i, v in ipairs(self.btn_gridPrbList) do
        if self.sliderList[i]~=nil then
            v.gameObject:SetActive(true)
            v:Refresh(self.sliderList[i])
        else
            v.gameObject:SetActive(false)
        end
    end
    self.recently_data = TaskData:GetInstance().have_get_task
    if self.recently_data ~= nil and #self.recently_data > 0 then
        self.recently_grid:SetLength(table.count(self.recently_data))
        self.recently_grid:SetGridPositionByIndex(0)
    else
        self.recently_grid:SetLength(0)
    end
	self.achievement_grid:WrapContent(true)
end

---点击成就任务设置界面
local function OnClickAchievementBtn(self)
	self.achievementReward_Panel.gameObject:SetActive(false)
end


---点击成就任务子界面展示对应的任务数据
local function OnClickItemAchievementShow(self,achievement_btn_item,_data)
	self.achievement_Panel.gameObject:SetActive(false)
	self.achievementReward_Panel.gameObject:SetActive(true)
	self.SetBtnParent(self,self.select_tap_obj,achievement_btn_item.select_btn.transform)
	self.select_tap_obj_text:SetText(_data.name)
	if _data ~= nil then
		for i, v in ipairs(self.itemPrbList) do
			if _data.littleList[i] ~= nil then
				v.gameObject:SetActive(true)
				v:Refresh(_data.littleList[i])
			else
				v.gameObject:SetActive(false)
			end
		end
	end
	---设置小选中区域的父物体跟随按钮点击
	self.SetBtnParent(self,self.select_child_item_grid,achievement_btn_item.transform)
	---子选中区域的选中提示
	self:OnClickSetAchievementData(self.select_child_item_grid.transform:GetChild(0),_data.littleList[1])
end

---设置成就任务数据
local function OnClickSetAchievementData(self,trans,data)
	self.name_UIText:SetText(data.name)
	self.SetBtnParent(self,self.select_itemButton,trans)
	self.select_itemButton_text:SetText(data.name)
	self.achievement_data = data.taskData
	if self.achievement_data ~= nil and #self.achievement_data > 0 then
		self.achievement_grid:SetLength(table.count(self.achievement_data))
		self.achievement_grid:SetGridPositionByIndex(0)
	else
		self.achievement_grid:SetLength(0)
	end
end

---获取每日任务奖励
local function GetEveryDayTaskAward(self,_id)
	self.ctrl:OnEveryDayTaskGetAward(_id)
end

---获取成就任务奖励
local function GetAchievementTaskAward(self,_id)
    self.ctrl:OnAchievementTaskGetAward(_id)
end

--刷新日常任務
local function RefreshDailyMission(self)
	self.first=true
	self.everyday_taskUIButton:Click()
	SetTopButCount(self)
	SetResourceBarCount(self)
	self.first=false
end

local function OnEnable(self)
	base.OnEnable(self)
	self.one_in=true
	self:OnRefresh()
	self.first=true
	self.everyday_taskUIButton:Click()
	SetTopButCount(self)
    SetResourceBarCount(self)
	self.first=false
	LJAudioManger:GetInstance():PlayVoice("UI_Brush_05")
end

local function OnRefresh(self)
	-- 各组件刷新
	
end

local function OnAddListener(self)
	base.OnAddListener(self)
	-- UI消息注册
	self:AddUIListener(UIMessageNames.UPDATE_TASK_EVERYDAY_DATA, SetEveryDatTaskData)
	self:AddUIListener(UIMessageNames.UPDATE_TASK_ACHIEVEMENT_DATA, SetResourceBarCount)
	self:AddUIListener(UIMessageNames.UI_DAILY_MISSION_REFRESH, RefreshDailyMission)
end

--设置按钮的父物体
local function SetBtnParent(self,child,parent)
	child.transform:SetParent(parent)
	child.localScale=Vector3.New(1,1,1)
	child.anchoredPosition=Vector2.New(0,0)
	child.gameObject:SetActive(true)
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- UI消息注销
	self:RemoveUIListener(UIMessageNames.UPDATE_TASK_EVERYDAY_DATA, SetEveryDatTaskData)
	self:RemoveUIListener(UIMessageNames.UPDATE_TASK_ACHIEVEMENT_DATA, SetResourceBarCount)
	self:RemoveUIListener(UIMessageNames.UI_DAILY_MISSION_REFRESH, RefreshDailyMission)

end

local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)
	ResourceBarComponentManager:GetInstance():DestroyResourceBar(UIWindowNames.UIDailyTask);
	if self.closeComponent~=nil or not IsNull(self.closeComponent) then
		self.closeComponent:RecyleSelf();
	end
end

UIDailyTaskView.OnCreate = OnCreate
UIDailyTaskView.OnEnable = OnEnable
UIDailyTaskView.OnRefresh = OnRefresh
UIDailyTaskView.OnAddListener = OnAddListener
UIDailyTaskView.SetBtnParent = SetBtnParent
UIDailyTaskView.OnRemoveListener = OnRemoveListener
UIDailyTaskView.OnDestroy = OnDestroy
UIDailyTaskView.TopBtnOnClick = TopBtnOnClick
UIDailyTaskView.SetAwardShow = SetAwardShow
UIDailyTaskView.SetEveryDatTaskData = SetEveryDatTaskData
UIDailyTaskView.OnClickAchievementBtn = OnClickAchievementBtn
UIDailyTaskView.GetAchievementTaskAward = GetAchievementTaskAward
UIDailyTaskView.GetEveryDayTaskAward = GetEveryDayTaskAward
UIDailyTaskView.OnClickItemAchievementShow = OnClickItemAchievementShow
UIDailyTaskView.OnClickSetAchievementData = OnClickSetAchievementData
UIDailyTaskView.CloseAni = CloseAni
return UIDailyTaskView

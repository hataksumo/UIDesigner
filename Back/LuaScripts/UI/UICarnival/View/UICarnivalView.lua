
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UICarnivalView = BaseClass("UICarnivalView", UIBaseView)
local base = UIBaseView

local UICarnivalAwardWrapItem = require "UI.UICarnival.Component.UICarnivalAwardWrapItem";
local UICarnivalWrapItem = require "UI.UICarnival.Component.UICarnivalWrapItem";
local UICarnivalDayWrapItem = require "UI.UICarnival.Component.UICarnivalDayWrapItem";

local function SwitchActivity(self, index)
	self.chooseActivity = index
	for i = 1, 4 do
		if i == index then
			self.activityBtnGroup[i].img:SetSpriteName("ui_t_c2_001")
			--self.activityBtnGroup[i].text:SetColor32(21,24,30,255)
		else
			self.activityBtnGroup[i].img:SetSpriteName("ui_t_c2_002")
			--self.activityBtnGroup[i].text:SetColor32(52,52,52,255)
		end
	end
	self.activityData = self.model.activityData[self.chooseDay][self.chooseActivity];
	if #self.activityData > 1 and self.activityData[1].type == "Task" then
		table.sort(self.activityData,function(a, b)
			if a.status == b.status then
				return a.id < b.id
			end
			return a.status < b.status
		end )
	end
	self.activity_warpgroup:SetLength(table.count(self.activityData));
	self.activity_warpgroup:ResetToBeginning();
end

local function SwitchDay(self, day)
	if day > self.model.now_day then
		local tipday = self.model.now_week == 1 and day or day + 7;
		UISpecial:GetInstance():UITipText(string.format(DataUtil.GetClientText(100158), tipday));
		return
	end

	if self.chooseDay ~= day then
		self.chooseDay = day;
		SwitchActivity(self, 1);
	end

	self.day_wrapgroup:SetLength(table.count(self.model.dayNameData));
	self.day_wrapgroup:WrapContent(true);

	for i = 1, 4 do
		if self.model.dayActivityNameData[self.chooseDay][i] ~= nil then
			self.activityBtnGroup[i].btn.gameObject:SetActive(true);
			self.activityBtnGroup[i].text:SetText(self.model.dayActivityNameData[self.chooseDay][i]);
			local showRed = false;
			for m, n in ipairs(self.model.activityData[self.chooseDay][i]) do
				if n.type == "Task" and self.model.activityData[self.chooseDay][i][m].status == -1 then
					showRed = true;
					break
				end
			end
			self.activityBtnGroup[i].redimg.gameObject:SetActive(showRed)
		else
			self.activityBtnGroup[i].btn.gameObject:SetActive(false);
		end
	end
end

local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.colse_btn = self:AddComponent(UIButton, "colseBtn");
	self.colse_btn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_Cancel")
		UIManager:GetInstance():CloseWindow(UIWindowNames.UICarnival);
	end);

	--倒计时时间
	self.time_text = self:AddComponent(UIText, "titleImg/timeText");
	--七天按钮组
	self.day_wrapgroup = self:AddComponent(UIWrapGroup3D, "leftBgImg/leftScrollView/leftGameObject", UICarnivalDayWrapItem);
	--活动按钮组
	self.activityBtnGroup = {};
	for i = 1, 4 do
		table.insert(self.activityBtnGroup, {
			btn = self:AddComponent(UIButton,"topTitleBg/activityBtn" ..i),
			img = self:AddComponent(UIImage,"topTitleBg/activityBtn" ..i,AtlasConfig.DynamicTex),
			redimg = self:AddComponent(UIImage,"topTitleBg/activityBtn" ..i.. "/activityRedImg" ..i),
			text = self:AddComponent(UIText, "topTitleBg/activityBtn" ..i.. "/activityName" ..i)
		})
		self.activityBtnGroup[i].btn:SetOnClick(function ()
			LJAudioManger:GetInstance():PlayOtherVoice("UI_CommonClick")
			SwitchActivity(self,i)
		end)
	end
	--积分奖励
	self.totalProgress_img = self:AddComponent(UIImage, "bottomBgImg/totalAwardProgress");
	self.totalAwardGroup = {};
	for i = 1, 6 do
		self.totalAwardGroup[i] = UICarnivalAwardWrapItem.New(self, "bottomBgImg/totalAwardItem"..i);
		self.totalAwardGroup[i]:OnCreate(self);
		self.totalAwardGroup[i].trans = UIUtil.FindComponent(self.transform, typeof(CS.UnityEngine.RectTransform), "bottomBgImg/totalAwardItem"..i);
	end
	--活动内容
	self.activity_warpgroup = self:AddComponent(UIWrapGroup3D, "rightBgImg/Scroll View/GameObject", UICarnivalWrapItem);

	self.chooseDay = 0;
	self.chooseActivity = 1;

	self.maxPosX = 640;
	self.minPosX = -360;
	self.progressMax = 1200;

	self.dayRedState = {};
	ResourceBarComponentManager:GetInstance():CreatResourceBarComponent(self.transform,UIWindowNames.UICarnival,ResourceBarType.SOLO_BOSS,self);
end

local function UpdateTime(self)
	local curTime  = Mathf.Floor(TimeSyncManager:GetInstance():GetSimulationJavaMS()/1000)
	local endTime = CarnivalData:GetInstance().end_time;
	self.remainTime = Mathf.Floor(endTime - curTime)
	if self.remainTime <= 0 then
		if self.requestTimes > 5 then
			UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100159))
			UIManager:GetInstance():CloseWindow(UIWindowNames.UICarnival)
            UIManager:GetInstance():Broadcast(UIMessageNames.UI_CARNIVAL_OPEN_STATE)
			return
		end
		self.requestTimes = self.requestTimes + 1
		CarnivalData:GetInstance():RequestGetCarnivalData();
		return
	end
	local day = Mathf.Floor( self.remainTime / (3600 * 24))
	local temphour = self.remainTime % (3600 * 24)
	local hour = Mathf.Floor( temphour / 3600)
	if hour < 10 then
		hour = "0"..hour
	end
	local tempMin = self.remainTime % 3600
	local min = Mathf.Floor(tempMin / 60)
	if min < 10 then
		min = "0"..min
	end
	local seconds = tempMin % 60
	if seconds < 10 then
		seconds = "0"..seconds
	end
	self.time_text:SetText(string.format(DataUtil.GetClientText(100155),day,hour..":"..min..":"..seconds));
	---判断是否跨天
	if day + self.model.now_day ~= self.model.dayNum then
		if self.requestTimes > 5 then
			UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100159))
			UIManager:GetInstance():CloseWindow(UIWindowNames.UICarnival)
			return
		end
		self.requestTimes = self.requestTimes + 1
		CarnivalData:GetInstance():RequestGetCarnivalData();
	end
end

local function OnEnable(self)
	base.OnEnable(self)
	self.totalAwardNum = #self.model.awardData;
	self.disLength = (self.maxPosX - self.minPosX) / (self.totalAwardNum - 1)
	for i = 1, 6 do
		self.totalAwardGroup[i].trans.gameObject:SetActive(self.totalAwardNum >= i);
		self.totalAwardGroup[i].trans.localPosition = Vector3.New(self.minPosX + self.disLength * (i - 1), 16, 0);
	end
	self.totalAwardGroup[self.totalAwardNum].trans.localScale = Vector3.New(1.1,1.1,1);
	self.day_wrapgroup:SetLength(table.count(self.model.dayNameData));
	self.day_wrapgroup:ResetToBeginning();
	SwitchDay(self, 1);

	self.requestTimes = 0
	self.timer = TimerManager:GetInstance():GetTimer(1, self.UpdateTime , self)
	self.timer:Start()
	self:OnRefresh()
end

local function OnRefresh(self)
	-- 各组件刷新
	for i = 1, self.model.dayNum do
		local showRed = false
		if i <= self.model.now_day then
			for k, v in ipairs(self.model.activityData[i]) do
				for m, n in ipairs(v) do
					if n.type == "Task" and self.model.activityData[i][k][m].status == -1 then
						showRed = true;
						break
					end
				end
				if showRed then
					break
				end
			end
		end
		self.dayRedState[i] = showRed
	end

	for i = 1, self.totalAwardNum do
		self.totalAwardGroup[i]:OnRefresh(self.model.awardData[i]);
	end
    if self.chooseDay > self.model.now_day then
        SwitchDay(self, 1);
    else
        SwitchDay(self, self.chooseDay);
    end
	self.activityData = self.model.activityData[self.chooseDay][self.chooseActivity];
	if #self.activityData > 1 and self.activityData[1].type == "Task" then
		table.sort(self.activityData,function(a, b)
			if a.status == b.status then
				return a.id < b.id
			end
			return a.status < b.status
		end )
	end

	self.activity_warpgroup:SetLength(table.count(self.activityData));
	self.activity_warpgroup:WrapContent(true);
    local curIndex = 6
    for i = 1, self.totalAwardNum do
        if self.model.now_score <= self.model.awardData[i].score then
            curIndex = i - 1
            break
        end
    end
    local disScore = self.model.now_score
    local disMaxScore = self.model.awardData[1].score
    if curIndex > 0 then
        disScore = self.model.now_score - self.model.awardData[curIndex].score
        if curIndex < 6 then
            disMaxScore = self.model.awardData[curIndex + 1].score - self.model.awardData[curIndex].score
        else
            disMaxScore = 10000
        end
    end
    local sizeX = self.disLength * curIndex + (disScore / disMaxScore) * self.disLength
	self.totalProgress_img.rectTransform.sizeDelta=Vector2.New(sizeX, 15);
end

local function OnAddListener(self)
	base.OnAddListener(self)
	-- UI消息注册
	self:AddUIListener(UIMessageNames.UI_CARNIVAL_VIEW_REFRESH, OnRefresh);
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- UI消息注销
	self:RemoveUIListener(UIMessageNames.UI_CARNIVAL_VIEW_REFRESH, OnRefresh);
end

-- 关闭
local function OnDisable(self)
	base.OnDisable(self)
	-- 清理成员变量
	if self.timer ~= nil then
		self.timer:Stop()
	end
	self.timer = nil
	self.chooseDay = 0;
	self.chooseActivity = 1;
	self.requestTimes = 0;
end

local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)
	ResourceBarComponentManager:GetInstance():DestroyResourceBar(UIWindowNames.UICarnival)
end

UICarnivalView.OnCreate = OnCreate
UICarnivalView.OnEnable = OnEnable
UICarnivalView.OnRefresh = OnRefresh
UICarnivalView.OnAddListener = OnAddListener
UICarnivalView.OnRemoveListener = OnRemoveListener
UICarnivalView.OnDisable = OnDisable
UICarnivalView.OnDestroy = OnDestroy
UICarnivalView.UpdateTime = UpdateTime
UICarnivalView.SwitchDay = SwitchDay

return UICarnivalView

---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by ljl.
--- DateTime: 2019/2/23 17:34
---
local EveryDayWrapItem=BaseClass("EveryDayWrapItem",UIWrapComponent)
local base = UIWrapComponent
local TaskAwardItem = require "UI.UIDailyTask.Component.TaskAwardItem"


local function OnCreate(self)
    base.OnCreate(self)
    --组建初始化
    self.comeBtn = self:AddComponent(UIButton,"getButton")
    self.comeBtnText = self:AddComponent(UIText,"getButton/Text")
    self.comeBtnText:SetText(DataUtil.GetClientText(100153))
    self.comeBtn:SetOnClick(function ()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        self.view:GetEveryDayTaskAward(self.every_data.id)
    end)
    self.name_text = self:AddComponent(UIText, "titleText")
    self.des_text = self:AddComponent(UIText,"desText")
    self.slider = self:AddComponent(UISlider, "scrollbar")
    self.mission_slider_text = self:AddComponent(UIText,"scrollbar/scoreText")
    self.has_get_img = UIUtil.FindTrans(self.transform,"hasgetimg")
    self.hasText = self:AddComponent(UIText,"hasgetimg/Text1")
    self.hasText:SetText(DataUtil.GetClientText(100151))
    self.grid = self:AddComponent(UIBaseContainer,"grid")
    local itemCount = self.grid.transform.childCount
    self.awardPrbList = {}
    for i = 0, itemCount - 1 do
        local singleTrans = self.grid.transform:GetChild(i)
        local pass = TaskAwardItem.New(self,singleTrans.gameObject)
        pass:OnCreate()
        table.insert(self.awardPrbList,pass)
    end
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self,real_index)
    local data=self.view.everyday_task_data[real_index+1]
    self.every_data = data
    if data==nil then
        return
    end
    self.name_text:SetText(data.name)
    self.des_text:SetText(data.des)
    self.mission_slider_text:SetText(data.now_progress.."/"..data.all_progress)
    if data.status == 0 then
        self.comeBtn.gameObject:SetActive(false)
        self.slider.gameObject:SetActive(true)
        self.has_get_img.gameObject:SetActive(false)
        self.slider:SetValue(data.now_progress/data.all_progress)
    elseif data.status == 1 then
        self.comeBtn.gameObject:SetActive(false)
        self.slider.gameObject:SetActive(false)
        self.has_get_img.gameObject:SetActive(true)
    else
        self.comeBtn.gameObject:SetActive(true)
        self.slider.gameObject:SetActive(false)
        self.has_get_img.gameObject:SetActive(false)
    end
    self.awardList = data.reward
    for i, v in ipairs(self.awardPrbList) do
        if self.awardList[i]~=nil then
            v.gameObject:SetActive(true)
            v:Refresh(self.awardList[i])
        else
            v.gameObject:SetActive(false)
        end
    end
end

EveryDayWrapItem.OnCreate = OnCreate
EveryDayWrapItem.OnRefresh=OnRefresh

return EveryDayWrapItem
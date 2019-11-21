---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by ljl.
--- DateTime: 2019/1/10 15:53
---
local UIArenaReportWrapItem=BaseClass("UIArenaReportWrapItem",UIWrapComponent)
local base = UIWrapComponent

---点击单个物品
local function OnSkillItemClick(self)
    if self.skill_single_data==nil then
        return
    end
    self.view.SetLeftPanelData(self.view, self.transform,self.skill_single_data)
end

---通过秒计算时间信息
local function GetTimerInfoBySecond(self, _seconds)
    local day = _seconds / 86400
    if math.floor(day) > 0 then
        local hour = _seconds / 3600 % 24
        return math.floor(day).."天"..math.floor(hour).."小时之前"
    else
        local hour = _seconds / 3600
        if math.floor(hour) > 0 then
            local min = _seconds / 60 % 60
            return   math.floor(hour).."小时".. math.floor(min).."分钟之前"
        else
            local min = _seconds / 60
            local sec = _seconds % 60
            if math.floor(min) > 0 then
                return  math.floor(min).."分钟".. math.floor(sec).."秒之前"
            else
                return math.floor(sec).."秒之前"
            end
        end
    end
end

local function OnCreate(self)
    base.OnCreate(self)
    --组建初始化
    self.icon_img=self:AddComponent(UIImage,"playerIconImg",AtlasConfig.DynamicTex)
    self.frame_img = self:AddComponent(UIImage,"playerfromImg",AtlasConfig.DynamicTex)
    self.state_img = self:AddComponent(UIImage,"attatcStateImg",AtlasConfig.DynamicTex)
    self.revenge_btn = self:AddComponent(UIButton,"revengeBtn")
    self.revenge_btn:SetOnClick(function ()
        self.view:OnRevengeClick(self.single_data)
    end)
    self.attack_back_play_btn = self:AddComponent(UIButton,"attackBackPlayBtn")
    self.attack_back_play_btn:SetOnClick(function ()
        self.view:OnBattleReturnPlay(self.single_data)
    end)
    self.icon_img_btn = self:AddComponent(UIButton,"playerfromImg")
    self.icon_img_btn:SetOnClick(function ()
        --UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100045))
    end)
    self.name_text = self:AddComponent(UIText,"playerNameText")
    self.lv_text = self:AddComponent(UIText,"levelText")
    self.win_num_text = self:AddComponent(UIText,"winNumText")
    self.time_info_text = self:AddComponent(UIText,"timeInfoText")
    self.revenge_text = self:AddComponent(UIText,"revengeText")
    self.attack_back_play_text = self:AddComponent(UIText,"attackBackPlayText")
    --self.skill_btn:SetOnClick(self,OnSkillItemClick)
    self.text_text = self:AddComponent(UIText,"textTet")
--[[    self.attack_back_play_btn.gameObject:SetActive(false)
    self.attack_back_play_text.gameObject:SetActive(false)]]
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self,real_index)
    self.index = real_index+1
    self.single_data=self.view.report_data[self.index]
    if self.single_data == nil then
        return
    end
    self.icon_img:SetSpriteName(self.single_data.challenge_icon)
    self.frame_img:SetSpriteName(self.single_data.challenge_frame)
    self.revenge_btn.gameObject:SetActive(self.single_data.result_type==4)
    self.revenge_text.gameObject:SetActive(self.single_data.result_type==4)
    if self.single_data.result_type == 1 then
        self.state_img:SetSpriteName("ui_t_c2_173")
        self.text_text:SetText("进攻成功")
    elseif self.single_data.result_type == 2 then
        self.state_img:SetSpriteName("ui_t_c2_172")
        self.text_text:SetText("进攻失败")
    elseif self.single_data.result_type == 3 then
        self.state_img:SetSpriteName("ui_t_c2_173")
        self.text_text:SetText("防守成功")
    else
        self.state_img:SetSpriteName("ui_t_c2_172")
        self.text_text:SetText("防守失败")
    end
    if self.single_data.challenge_name == nil then
        self.name_text:SetText( self.single_data.uid)
    else
        self.name_text:SetText( self.single_data.challenge_name)
    end
    self.lv_text:SetText(math.floor(self.single_data.challenge_lv))
    self.win_num_text:SetText(self.single_data.challenge_score)
    --local num = TimeSyncManager:GetInstance():GetSimulationJavaMS()/1000 - self.single_data.report_times
    self.time_info_text:SetText(GetTimerInfoBySecond(self,self.single_data.report_times))


end

UIArenaReportWrapItem.OnCreate = OnCreate
UIArenaReportWrapItem.OnSkillItemClick = OnSkillItemClick
UIArenaReportWrapItem.OnRefresh=OnRefresh

return UIArenaReportWrapItem
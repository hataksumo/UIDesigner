---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Administrator.
--- DateTime: 2019/8/8 11:56
---

local UITestHoardLeftWrapItem = BaseClass("UITestHoardLeftWrapItem", UIWrapComponent)
local base = UIWrapComponent

-- 组件添加了按钮组，则按钮被点击时回调该函数
local function OnBtnClick(self)
    LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
    local playerLv = math.floor(UserData:GetInstance().pLevel)
    if playerLv < self.data.LvLimit then
        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100160))
        UIManager:GetInstance():OpenWindow(UIWindowNames.UIItemJumpTip,1401014)
        return
    end
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_TESTHOARD_SELECT_LEFT,self.index)
end

-- 创建
local function OnCreate(self)
    base.OnCreate(self)

    self.titleImg = self:AddComponent(UIImage, "Image", AtlasConfig.DynamicTex)
    self.bgIconImg = self:AddComponent(UIImage, "bgImg", AtlasConfig.DynamicTex)
    self.nameText = self:AddComponent(UIText, "Name_UIText")
    self.infoText = self:AddComponent(UIText, "info_UIText")
    self.redImg = self:AddComponent(UIImage, "RedImg")
    self.btn=self:AddComponent(UIButton,"")
    self.gray = self.titleImg:GetMat()
    self.btn:SetOnClick(self,OnBtnClick)
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self, real_index)
    self.index = real_index + 1
    self.data = TestHoardData:GetInstance()._data[self.index]
    if self.data == nil then
        Logger.LogError("试炼宝库数据错误")
        return
    end
    if self.index == self.view.selectLeftIndex then
        self.titleImg:SetSpriteName("ui_t_c2_071")
    else
        self.titleImg:SetSpriteName("ui_t_c2_066")
    end

    self.nameText:SetText(self.data.ChaName)
    self.bgIconImg:SetSpriteName(self.data.Pic)
    self.redImg.gameObject:SetActive(false);
    local playerLv = math.floor(UserData:GetInstance().pLevel)
    if playerLv < self.data.LvLimit then
        self.infoText:SetText(string.format(DataUtil.GetClientText(100161),self.data.LvLimit))
        self.infoText:SetColor32(250, 101, 101, 255)
        self.titleImg:SetMat(self.gray)
    else
        self.titleImg:SetMat(nil)
        self.infoText:SetText(string.format(DataUtil.GetClientText(100162),Mathf.Floor(self.data.HaveTimes),self.data.AwardTimes))
        if self.data.HaveTimes <= 0 then
            self.infoText:SetColor32(250, 101, 101, 255)
        else
            self.infoText:SetColor32(255, 255, 255, 255)
            self.redImg.gameObject:SetActive(true);
        end
    end
end

UITestHoardLeftWrapItem.OnCreate = OnCreate
UITestHoardLeftWrapItem.OnRefresh = OnRefresh

return UITestHoardLeftWrapItem
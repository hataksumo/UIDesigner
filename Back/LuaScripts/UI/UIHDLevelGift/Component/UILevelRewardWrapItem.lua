--[[
-- added by wsh @ 2017-12-11
-- UIBackpack模块中卡牌列表的可复用Item
--]]

local UILevelRewardWrapItem = BaseClass("UILevelRewardWrapItem", UIWrapComponent)
local base = UIWrapComponent
local LevelAwardItem = require "UI.UIHDLevelGift.Component.LevelAwardItem"
local function OnCreate(self)
    base.OnCreate(self)
    --组建初始化
    --组建初始化
    self.name_text = self:AddComponent(UIText, "name_UIText")
    self.value_text = self:AddComponent(UIText,"value_UIText")
    self.receivButton=self:AddComponent(UIButton,"receiveButton_UIButton")
    self.receivButton:SetOnClick(function ()
        --self.view.model:GetLevelReward(self.data.id)
        LevelGiftData:GetInstance():GetLevelRewardGiftRequest(self.data.id)
        self.receivButton.gameObject:SetActive(false)
        self.value_text.gameObject:SetActive(true)
        self.has_get_img.gameObject:SetActive(true)
    end)
    --itemData.frame = SpriteDefine:GetItemQualityFrameByType(item_data[_id].Quality)
    self.has_get_img = UIUtil.FindTrans(self.transform,"hasGetImg")

    self.grid = self:AddComponent(UIBaseContainer,"grid")
    local itemCount = self.grid.transform.childCount
    self.awardPrbList = {}
    for i = 0, itemCount - 1 do
        local singleTrans = self.grid.transform:GetChild(i)
        local pass = LevelAwardItem.New(self,singleTrans.gameObject)
        pass:OnCreate()
        table.insert(self.awardPrbList,pass)
    end
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self,real_index)
   self.data=self.view.level_reward_data[real_index+1]
    if self.data==nil then
        return
    end
    self.has_get_img.gameObject:SetActive(false)
    self.receivButton.gameObject:SetActive(false)
    self.value_text.gameObject:SetActive(true)
    self.name_text:SetText(self.data.levelDetail)
    if self.data.level>=self.data.maxLevel then
        self.value_text:SetText(string.format("<color=black>(%s/%s)</color>",self.data.level,self.data.maxLevel));
    else
        self.value_text:SetText(string.format("<color=#DE1D1D>(%s/%s)</color>",self.data.level,self.data.maxLevel));
    end



    if(self.data.level>=self.data.maxLevel and self.data.static==0) then

        self.receivButton.gameObject:SetActive(true)
        self.value_text.gameObject:SetActive(false)
    end
    self.hasRewardArrayId=LevelGiftData:GetInstance().hasRewardArrayId
    if(self.hasRewardArrayId~=nil) then
        for _, v in ipairs(self.hasRewardArrayId) do
            if(v==self.data.id) then
                self.receivButton.gameObject:SetActive(false)
                self.value_text.gameObject:SetActive(true)
            end
        end
    end
    if(self.data.static==1) then
        self.has_get_img.gameObject:SetActive(true)
    end

    self.awardList = self.data.reward
    for i, v in ipairs(self.awardPrbList) do
        if self.awardList[i]~=nil then
            v.gameObject:SetActive(true)
            v:SetData(self.awardList[i])
        else
            v.gameObject:SetActive(false)
        end
    end
end

local function OnAddListener(self)
    base.OnAddListener(self)
    -- UI消息注册

end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- UI消息注销

end
UILevelRewardWrapItem.OnCreate = OnCreate
UILevelRewardWrapItem.OnRefresh = OnRefresh
UILevelRewardWrapItem.OnAddListener=OnAddListener
UILevelRewardWrapItem.OnRemoveListener=OnRemoveListener
return UILevelRewardWrapItem
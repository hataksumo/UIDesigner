local UIModeTypeSubItem = BaseClass("UIModeTypeSubItem", UIWrapComponent)
local base = UIWrapComponent

-- 组件添加了按钮组，则按钮被点击时回调该函数
local function OnClickStartBtn(self)
    LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
    --开启关卡战斗
    self.view.ctrl:StartTraining(self.index)
    DataManager:GetInstance():Broadcast(DataMessageNames.ON_TRAININGCAMP_SELECT_SUBITEM, self.index)
end
-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 组件初始化
    self.name_text = self:AddComponent(UIText, "TitleText")
    self.content_text = self:AddComponent(UIText, "ContentText")
    self.item_icon = self:AddComponent(UIImage, "Icon/Image", AtlasConfig.DynamicTex)
    self.start_btn = self:AddComponent(UIButton, "StartBtn")
    self.start_btn:SetOnClick(self, OnClickStartBtn)

    self.rewardTab = {}
    for i = 1, 2 do
        local reward = {}
        reward.selfObj = UIUtil.FindTrans(self.transform, "Reward" .. i).gameObject
        reward.icon = self:AddComponent(UIImage, "Reward" .. i .. "/Icon" .. i, AtlasConfig.DynamicTex)
        reward.quality = self:AddComponent(UIImage, "Reward" .. i, AtlasConfig.DynamicTex)
        reward.count = self:AddComponent(UIText, "Reward" .. i .. "/Count" .. i)
        reward.firstObj = UIUtil.FindTrans(self.transform, "Reward" .. i .. "/First" .. i).gameObject
        reward.have_gainObj = UIUtil.FindTrans(self.transform, "Reward" .. i .. "/Image" .. i).gameObject
        reward.iconPress=self:AddComponent(UIEventTrigger,"Reward" .. i .. "/Icon" .. i)
        reward.iconPress:SetOnLongPress(function()
            UIManager:GetInstance():OpenWindow(UIWindowNames.UIItemTips,self.itemData.RewardID[i].ID)
        end,(function()
            UIManager:GetInstance():CloseWindow(UIWindowNames.UIItemTips)
        end),true)
        table.insert(self.rewardTab, reward)
    end
end
-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self, real_index, check)
    self.itemData = self.view.model:GetCurPassListSubItemData()[real_index + 1]
    self.index = real_index
    self.id = self.itemData.ID

    for i = 1, 2 do
        if i <= #self.itemData.RewardID then
            self.rewardTab[i].selfObj:SetActive(true)
            self.rewardTab[i].icon:SetSpriteName(self.itemData.RewardID[i].Icon)
            self.rewardTab[i].quality:SetSpriteName(SpriteDefine:GetItemQualityFrameByType(self.itemData.RewardID[i].Quality))
            self.rewardTab[i].count:SetText(self.itemData.RewardID[i].Count)
            self.rewardTab[i].firstObj:SetActive(not self.itemData.isFinish)
            self.rewardTab[i].have_gainObj:SetActive(self.itemData.isFinish)
        else
            self.rewardTab[i].selfObj:SetActive(false)
        end
    end

    self.item_icon:SetSpriteName(self.itemData.IconRes)
    self.name_text:SetText(self.itemData.Name)
    self.content_text:SetText(self.itemData.Content)
end

UIModeTypeSubItem.OnCreate = OnCreate
UIModeTypeSubItem.OnRefresh = OnRefresh
return UIModeTypeSubItem
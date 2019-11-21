--[[
-- added by wsh @ 2017-12-11
-- UIBackpack模块中卡牌列表的可复用Item
--]]

local UIOnlineRewardWrapItem = BaseClass("UIOnlineRewardWrapItem", UIWrapComponent)
local base = UIWrapComponent
local index=201
local enterNumber=0
local function OnCreate(self)
    base.OnCreate(self)
    --组建初始化
    self.bg_img = self:AddComponent(UIImage, "bg/bg (1)",AtlasConfig.DynamicTex)
    self.name_text = self:AddComponent(UIText, "time_UItext")
    self.has_get_img = UIUtil.FindTrans(self.transform,"maskImg")
    self.info_icon= self:AddComponent(UIImage,"Frame/Icon",AtlasConfig.DynamicTex)
    self.quality_icon=self:AddComponent(UIImage,"Frame",AtlasConfig.DynamicTex)
    self.shopItem_image=UIUtil.FindTrans(self.transform,"")
    self.shopItem_button= self:AddComponent(UIButton, "Frame/Icon")
    self.clickBtn=self:AddComponent(UIButton, "ClickBtn")
    self.clickBtn:SetOnClick(function ()
        --self.view.model:GetOnlineReward(self.data.id)
        OnlineGiftData:GetInstance():GetOnlineRewardGiftRequest(self.data.id)
        self.clickBtn.gameObject:SetActive(false)
        self:SetItemEffect(false)
        self.bg_img:SetSpriteName("ui_t_c2_066")
        self.has_get_img.gameObject:SetActive(true)
    end)
end
local function OpenGiftBox(self,index)
    local commBoxData=CommBoxTipModel.New();
    commBoxData.title=string.format("在线%s分钟伴礼",self.view.reward[index].Minute);
    commBoxData.des="可获得下列道具";
    commBoxData.rewardList={};
    for i, v in ipairs(self.view.reward[index].Award) do
        table.insert( commBoxData.rewardList,{id=v.id,num=v.val});
    end
    UIManager:GetInstance():OpenWindow(UIWindowNames.UICommonBoxInfoTip,commBoxData);
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self,real_index)
    --local data=self.view.online_reward_data[real_index+1]
    enterNumber=enterNumber+1
    self.data=OnlineGiftData:GetInstance().all_online_gifts[real_index+1]
    if self.data==nil then
        return
    end
    self.name_text:SetText(string.format("%s分钟",self.data.minute));
    if self.data.type==20 or self.data.type==21 then
        self.quality_icon:SetSpriteName(SpriteDefine:GetCircleFrameByType (self.data.quality))
    else
        self.quality_icon:SetSpriteName(SpriteDefine:GetItemQualityFrameByType (self.data.quality))
    end
    self.info_icon:SetSpriteName(self.data.icon)
    if enterNumber<=8 then
        index=index+real_index
        self.shopItem_button:SetOnClick(OpenGiftBox,self,index)
        index=201
    end
    if(OnlineGiftData:GetInstance().nowTime>=self.data.minute*60 and self.data.static==0) then
        self.bg_img:SetSpriteName("ui_t_c2_071")
        self.clickBtn.gameObject:SetActive(true)
        self:SetItemEffect(true)
    else
        self.bg_img:SetSpriteName("ui_t_c2_066")
        self.clickBtn.gameObject:SetActive(false)
        self:SetItemEffect(false)
    end
    self.hasRewardArrayId=OnlineGiftData:GetInstance().hasRewardArrayId
    if(self.hasRewardArrayId~=nil) then
        for _, v in ipairs(self.hasRewardArrayId) do
            if(v==self.data.id) then
                self.clickBtn.gameObject:SetActive(false)
                self:SetItemEffect(false)
            end
        end
    end

    if(self.data.static==1) then
        self.has_get_img.gameObject:SetActive(true)
    end
    if(self.data.static==0) then
        self.has_get_img.gameObject:SetActive(false)
    end

    self.shopItem_image.gameObject:SetActive(true)
end
local function SetItemEffect(self,bool)
    if bool then
        if self.eff~=nil then
            self.eff.effect.gameObject:SetActive(false)
            self.eff.effect.gameObject:SetActive(true)
        else
            self.eff = self:AddComponent(UIEffect, "Frame", 1, EffectConfig.UIOnLineItemEffect)
        end
    else
        if self.eff~=nil then
            self.eff.effect.gameObject:SetActive(false)
        end
    end
end
UIOnlineRewardWrapItem.OnCreate = OnCreate
UIOnlineRewardWrapItem.OnRefresh = OnRefresh
UIOnlineRewardWrapItem.OpenGiftBox=OpenGiftBox
UIOnlineRewardWrapItem.SetItemEffect =SetItemEffect
return UIOnlineRewardWrapItem
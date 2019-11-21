--[[
-- added by wsh @ 2017-12-11
-- UIBackpack模块中卡牌列表的可复用Item
--]]

local UISevenRewardWrapItem = BaseClass("UISevenRewardWrapItem", UIWrapComponent)
local base = UIWrapComponent
local index=201
local enterNumber=0
local function OnCreate(self)
    base.OnCreate(self)
    --组建初始化
    self.name_text = self:AddComponent(UIText, "bottom")
    self.titleImage = self:AddComponent(UIImage, "bg/bg (1)",AtlasConfig.DynamicTex)
    self.has_get_img = UIUtil.FindTrans(self.transform,"maskImg")
    self.info_icon= self:AddComponent(UIImage,"ImageIcon",AtlasConfig.DynamicTex)
    self.itemBtn=self:AddComponent(UIButton, "ImageIcon")
    self.title= self:AddComponent(UIText, "tittle")
    self.frameImg=self:AddComponent(UIImage,"frame",AtlasConfig.DynamicTex);
    self.frameRectTrans=UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.RectTransform),"frame");
    self.clickBtn=self:AddComponent(UIButton, "Button")
    self.clickBtn:SetOnClick(function ()
        SevenGiftData:GetInstance():GetSevenRewardGiftRequest(self.data.id)
        --self.view.model:GetSevenReward(self.data.id)
        self.clickBtn.gameObject:SetActive(false)
        self:SetItemEffect(false)
        self.has_get_img.gameObject:SetActive(true)
        self.titleImage:SetSpriteName("ui_t_c2_066")
    end)
end
local function SetItemEffect(self,bool)
    if bool then
        if self.eff~=nil then
            self.eff.effect.gameObject:SetActive(false)
            self.eff.effect.gameObject:SetActive(true)
        else
            self.eff = self:AddComponent(UIEffect, "ImageIcon", 1, EffectConfig.UIOnLineItemEffect)
        end
    else
        if self.eff~=nil then
            self.eff.effect.gameObject:SetActive(false)
        end
    end
end
local function OpenGiftBox(self,index)
    local commBoxData=CommBoxTipModel.New();
    commBoxData.title=self.view.rewards[index].Title;
    commBoxData.des=string.format("第%s天登录可获得全部",self.view.rewards[index].Day);
    commBoxData.rewardList={};
    for i, v in ipairs(self.view.rewards[index].Award) do
        table.insert( commBoxData.rewardList,{id=v.id,num=v.val});
    end
    UIManager:GetInstance():OpenWindow(UIWindowNames.UICommonBoxInfoTip,commBoxData);
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self,real_index)
    --local data=self.view.online_reward_data[real_index+1]
    enterNumber=enterNumber+1
    self.data=SevenGiftData:GetInstance().all_seven_gifts[real_index+1]
    if self.data==nil then
        return
    end
    if self.data.type==20 or self.data.type==21 then
        self.frameImg:SetSpriteName(SpriteDefine:GetCircleFrameByType(self.data.quality));
        self.frameRectTrans.sizeDelta=Vector2.New(105,105);
    else
        self.frameImg:SetSpriteName(SpriteDefine:GetItemQualityFrameByType(self.data.quality));
        self.frameRectTrans.sizeDelta=Vector2.New(136,136);
    end

    self.name_text:SetText(self.data.title)
    self.info_icon:SetSpriteName(self.data.icon)
    self.title:SetText("第"..self.data.day.."天")
    if enterNumber<=#SevenGiftData:GetInstance().all_seven_gifts then
        self.itemBtn:SetOnClick(OpenGiftBox,self,self.data.id)
    end
    if(SevenGiftData:GetInstance().canReward>=self.data.day and self.data.static==0) then
        self.clickBtn.gameObject:SetActive(true)
        self:SetItemEffect(true)
        self.titleImage:SetSpriteName("ui_t_c2_071")
    end
    self.hasRewardArrayId=SevenGiftData:GetInstance().hasRewardArrayId
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
        self.titleImage:SetSpriteName("ui_t_c2_066")
    end
end
UISevenRewardWrapItem.OnCreate = OnCreate
UISevenRewardWrapItem.OnRefresh = OnRefresh
UISevenRewardWrapItem.OpenGiftBox=OpenGiftBox
UISevenRewardWrapItem.SetItemEffect = SetItemEffect
return UISevenRewardWrapItem
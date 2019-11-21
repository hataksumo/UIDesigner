--[[
-- added by xupeng @ 2019-7-24
-- 该模块UICarnivalView窗口中活动信息
--]]
local UICarnivalWrapItem = BaseClass("UICarnivalWrapItem", UIWrapComponent)
local base = UIWrapComponent

local BattleAwardData = require "UI.UIBattle.Component.BattleAwardData"
-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 组件初始化
    self.des_text = self:AddComponent(UIText, "activityDesText");
    self.taskGroup_trans = UIUtil.FindTrans(self.transform, "taskGroup");
    self.goto_btn = self:AddComponent(UIButton, "taskGroup/gotoBtn");
    self.goto_btn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayOtherVoice("UI_CommonClick")
        if self.itemData.jump ~= nil then
            UIJumpManager.JumpByTypeAndParam(self.itemData.jump.To,self.itemData.jump.Param)
        end
    end)
    self.goto_text = self:AddComponent(UIText, "taskGroup/gotoText");
    self.get_btn = self:AddComponent(UIButton, "taskGroup/getBtn");
    self.get_btn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayOtherVoice("UI_CommonClick")
        CarnivalData:GetInstance():SendGetAwardRequest(self.itemData.id);
    end);
    self.get_text = self:AddComponent(UIText, "taskGroup/getBtn/getText");
    self.unfinish_img = self:AddComponent(UIImage, "taskGroup/unfinishImg");
    self.overGet_img = self:AddComponent(UIImage, "taskGroup/overGetImg");
    self.goodsGroup_trans = UIUtil.FindTrans(self.transform, "goodsGroup");
    self.cost_img = self:AddComponent(UIImage, "goodsGroup/costImg", AtlasConfig.DynamicTex);
    self.costOld_img = self:AddComponent(UIImage, "goodsGroup/costImg_old", AtlasConfig.DynamicTex);
    self.price_text = self:AddComponent(UIText, "goodsGroup/priceText");
    self.priceOld_text = self:AddComponent(UIText, "goodsGroup/priceText_old");
    self.buy_btn = self:AddComponent(UIButton, "goodsGroup/buyBtn");
    self.buy_btn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayOtherVoice("UI_CommonClick")
        if BackpackData:GetInstance():GetItemNumById(self.itemData.CostId) < self.itemData.Val then
            UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100156))
            return
        end
        if CarnivalData:GetInstance().showBuyTip then
            UIManager:GetInstance():OpenWindow(UIWindowNames.UICommonCostTip,function ()
                CarnivalData:GetInstance().showBuyTip = true
            end ,function ()
                CarnivalData:GetInstance():SendBuyCarnivalGoodsRequest(self.itemData.id, 1, self.itemData.Val);
            end ,self.itemData.CostId,self.itemData.Val,DataUtil.GetClientText(100157),function(boo)
                CarnivalData:GetInstance().showBuyTip = not boo;
            end);
        else
            CarnivalData:GetInstance():SendBuyCarnivalGoodsRequest(self.itemData.id, 1, self.itemData.Val);
        end
    end);
    self.overBuy_img = self:AddComponent(UIImage, "goodsGroup/overBuyImg");

    self.awardGroup = {};
    for i = 1, 4 do
        self.awardGroup[i] = BattleAwardData.New(self, "awardImg"..i);
        self.awardGroup[i]:OnCreate(self);
        self.awardGroup[i].trans = UIUtil.FindTrans(self.transform, "awardImg"..i);
    end

    local text1 = self:AddComponent(UIText, "taskGroup/gotoBtn/Text1");
    text1:SetText(DataUtil.GetClientText(100154))
    local text2 = self:AddComponent(UIText, "taskGroup/unfinishImg/Text2");
    text2:SetText(DataUtil.GetClientText(100152))
    local text3 = self:AddComponent(UIText, "taskGroup/overGetImg/Text3");
    text3:SetText(DataUtil.GetClientText(100151))
    local text4 = self:AddComponent(UIText, "taskGroup/getBtn/Text4");
    text4:SetText(DataUtil.GetClientText(100153))
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self, real_index, check)
    self.realIndex=real_index + 1;
    local itemData = self.view.activityData[real_index + 1]
    self.itemData=itemData;

    if self.itemData.type == "Task" then
        self.taskGroup_trans.gameObject:SetActive(true);
        self.goodsGroup_trans.gameObject:SetActive(false);
        self.goto_text:SetText(DataUtil.GetDataNumDes(self.itemData.progress).."/"..DataUtil.GetDataNumDes(self.itemData.tag_progress));
        self.get_text:SetText(DataUtil.GetDataNumDes(self.itemData.progress).."/"..DataUtil.GetDataNumDes(self.itemData.tag_progress));
        self.goto_btn.gameObject:SetActive(self.itemData.status == 0 and self.itemData.jump ~= nil);
        self.unfinish_img.gameObject:SetActive(self.itemData.status == 0 and self.itemData.jump == nil);
        self.goto_text.gameObject:SetActive(self.itemData.status == 0);
        self.get_btn.gameObject:SetActive(self.itemData.status == -1);
        self.get_text.gameObject:SetActive(self.itemData.status == -1);
        self.overGet_img.gameObject:SetActive(self.itemData.status == 1);
    else
        self.taskGroup_trans.gameObject:SetActive(false);
        self.goodsGroup_trans.gameObject:SetActive(true);
        self.price_text:SetText(self.itemData.Val);
        self.priceOld_text:SetText(self.itemData.OrgVal);
        self.cost_img:SetSpriteName(self.itemData.CostImg);
        self.costOld_img:SetSpriteName(self.itemData.CostImg);
        self.buy_btn.gameObject:SetActive(self.itemData.times > self.itemData.buynum);
        self.overBuy_img.gameObject:SetActive(self.itemData.times <= self.itemData.buynum);
    end

    self.des_text:SetText(itemData.Title);
    for i = 1, 4 do
        if itemData.rewards[i] ~= nil then
            self.awardGroup[i].trans.gameObject:SetActive(true);
            self.awardGroup[i]:Refresh(itemData.rewards[i]);
        else
            self.awardGroup[i].trans.gameObject:SetActive(false);
        end
    end
end

UICarnivalWrapItem.OnCreate = OnCreate
UICarnivalWrapItem.OnRefresh = OnRefresh

return UICarnivalWrapItem

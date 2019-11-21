--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIHDQiRiLiBaoView = BaseClass("UIHDQiRiLiBaoView", UIBaseView)
local UISevenRewardWrapItem = require "UI.UIHDQiRiLiBao.Component.UISevenRewardWrapItem"
local base = UIBaseView
local function OpenGiftBox(self,index,day)
    local commBoxData=CommBoxTipModel.New();
    commBoxData.title=self.model.reward[index].Title;
    commBoxData.des=string.format("第%s天登录可获得全部",self.model.reward[index].Day);
    commBoxData.rewardList={};
    for i, v in ipairs(self.model.reward[index].Award) do
        table.insert( commBoxData.rewardList,{id=v.id,num=v.val});
    end
    UIManager:GetInstance():OpenWindow(UIWindowNames.UICommonBoxInfoTip,commBoxData);

end

local function SevenRewardData(self)
    self.seven_reward_data=self.model.seven_reward_data
    if self.seven_reward_data ~= nil and #self.seven_reward_data > 0 then
        self.seven_reward_scroll_view_content:SetLength(table.count(self.seven_reward_data))
        self.seven_reward_scroll_view_content:ResetToBeginning()
    else
        self.seven_reward_scroll_view_content:SetLength(0)
    end
end
local function OnCreate(self)
    base.OnCreate(self)
    self.mask_btn = self:AddComponent(UIButton, "maskBtn")
    self.mask_btn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_Cancel")
        self.ctrl:CloseSelf()
    end)
    self.close_UIButton=self:AddComponent(UIButton,"ParentLayout/close_UIButton")
    self.diamondNumber= self:AddComponent(UIText, "ParentLayout/panel/Text")
    self.seven_reward_scroll_view_content=self:AddComponent(UIWrapGroup3D,"ParentLayout/panel/grid",UISevenRewardWrapItem)
    self.close_UIButton:SetOnClick(function ()
        LJAudioManger:GetInstance():PlayVoice("UI_Cancel")
        self.ctrl:CloseSelf()
    end)
    end

local function OnEnable(self)
    base.OnEnable(self)
    self.rewards=self.model.reward
    self.allItemData=self.model.allItemData
    local name=DataUtil.GetData("item")[CoinDefine.Diamond].Name
    self.diamondNumber:SetText(string.format("已累计：%s %s",math.floor(self.model.accuGem),name));
    self:SevenRewardData()
    self:OnRefresh()
end







local function OnRefresh(self)

end

local function OnAddListener(self)
    base.OnAddListener(self)
    -- UI消息注册
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- UI消息注销

end
local function OnDestroy(self)
    -- 销毁
    base.OnDestroy(self)
end
UIHDQiRiLiBaoView.SevenRewardData=SevenRewardData
UIHDQiRiLiBaoView.OnCreate = OnCreate
UIHDQiRiLiBaoView.OnEnable = OnEnable
UIHDQiRiLiBaoView.OnRefresh = OnRefresh
UIHDQiRiLiBaoView.OnAddListener = OnAddListener
UIHDQiRiLiBaoView.OnRemoveListener = OnRemoveListener
UIHDQiRiLiBaoView.OnDestroy = OnDestroy
UIHDQiRiLiBaoView.OpenGiftBox=OpenGiftBox
return UIHDQiRiLiBaoView

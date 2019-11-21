--[[
-- added by xupeng @ 2019-7-16
-- 该模块用邀请列表item
--]]
local UIDRBossRoomInviteItem = BaseClass("UIDRBossRoomInviteItem", UIWrapComponent)
local base = UIWrapComponent

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 组件初始化
    self.headImg = self:AddComponent(UIImage, "Head",AtlasConfig.DynamicTex);
    self.headBgImg = self:AddComponent(UIImage, "Head/HeadBg");
    self.nameText = self:AddComponent(UIText, "Name");
    self.levelText = self:AddComponent(UIText, "LevelNum");
    self.teamInfo = self:AddComponent(UIText, "TeamInfo");
    self.overAddText = self:AddComponent(UIText, "OverAddFriend");
    self.addFriendBtn = self:AddComponent(UIButton, "addFriendBtn");
    self.addFriendBtn:SetOnClick(function ()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick");
        FriendData:GetInstance():DealFriend(1,self.itemData.uid,"少年骨骼清奇，一起来玩千机黑刹吧");
        local curTime  = Mathf.Floor(TimeSyncManager:GetInstance():GetSimulationJavaMS()/1000)
        self.view:UpdateInviteList(self.itemData.uid, 0, curTime);
        self.addFriendBtn.gameObject:SetActive(false);
        self.overAddText.gameObject:SetActive(true);
    end)
    self.inviteImg = self:AddComponent(UIImage, "inviteBtn");
    self.inviteBtn = self:AddComponent(UIButton, "inviteBtn");
    self.inviteBtn:SetOnClick(function ()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick");
        local curTime  = Mathf.Floor(TimeSyncManager:GetInstance():GetSimulationJavaMS()/1000)
        if curTime - self.itemData.inviteTime < 30 then
            UISpecial:GetInstance():UITipText(string.format("已经邀请该玩家，请<color=#df4c4c>%s</color>秒之后重试", 30 - (curTime - self.itemData.inviteTime)));
            return
        elseif self.inviteImg:GetMat() == self.view.grayMat then
            self.inviteImg:SetMat(nil);
            self.inviteText:SetText("邀  请");
            return
        end
        self.view:UpdateInviteList(self.itemData.uid, 1, curTime);
        self.view.ctrl:InviteMemberOne(self.itemData.uid);
        self.inviteImg:SetMat(self.view.grayMat);
        self.inviteText:SetText("已邀请");
    end)
    self.inviteText = self:AddComponent(UIText, "inviteBtn/inviteText");
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self, real_index)
    self.index = real_index + 1;
    self.itemData = self.view.inviteDataList[self.index];
    if self.itemData ~= nil then
        local curTime  = Mathf.Floor(TimeSyncManager:GetInstance():GetSimulationJavaMS()/1000)
        local nameAdd = "(<color=#df4c4c>陌生人</color>)";
        if self.itemData.type == 1 then
            nameAdd = "(<color=#3f793f>好友</color>)";
            self.addFriendBtn.gameObject:SetActive(false);
            self.overAddText.gameObject:SetActive(false);
        else
            if curTime - self.itemData.friendTime < 30 then
                self.addFriendBtn.gameObject:SetActive(false);
                self.overAddText.gameObject:SetActive(true);
            else
                self.addFriendBtn.gameObject:SetActive(true);
                self.overAddText.gameObject:SetActive(false);
            end
        end
        if curTime - self.itemData.inviteTime < 30 then
            self.inviteImg:SetMat(self.view.grayMat);
            self.inviteText:SetText("已邀请");
        else
            self.inviteImg:SetMat(nil);
            self.inviteText:SetText("邀  请");
        end
        self.nameText:SetText(self.itemData.name..nameAdd);
        self.levelText:SetText(Mathf.Floor(self.itemData.level));
        self.teamInfo:SetText("最强队伍战力："..Mathf.Floor(self.itemData.power));
    end
end

UIDRBossRoomInviteItem.OnCreate = OnCreate
UIDRBossRoomInviteItem.OnRefresh = OnRefresh

return UIDRBossRoomInviteItem

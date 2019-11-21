--[[
-- added by xupeng @ 2019-7-16
-- 该模块用于可以拖拽的队伍信息
--]]
local UIDRBossRoomTeamItem = BaseClass("UIDRBossRoomTeamItem", UIWrapComponent)
local base = UIWrapComponent

local Input=CS.UnityEngine.Input;
local EventTriggerType = CS.UnityEngine.EventSystems.EventTriggerType;
local EventTrigger=CS.UnityEngine.EventSystems.EventTrigger;

--显示卡牌黑色遮罩
local function ShowCardMast(self, isShow)
    local color = isShow and 130 or 255
    self.nameText:SetColor32(color, color, color, 255);
    self.levelText:SetColor32(color, color, color, 255);
    self.headImg.material = isShow and self.view.grayMat or nil;
    self.headBgImg.material = isShow and self.view.grayMat or nil;
    for i = 1, 3 do
        self.teamInfoTexts[i]:SetColor32(color, color, color, 255);
    end
end

--按下
local function OnItemDown(self,base_event)
    self.initMousePos = Input.mousePosition;
    self.isDrag = false;
    if self.canDrag then
        --self.rectTrans.localScale=Vector3.New(1.2,1.2,1);
    end
end
--抬起
local function OnUp(self,base_event)
    if self.isDrag==true then
        ShowCardMast(self, false)
        self.view:CheckDrag(nil);
    end
    self.isDrag = false;
    --self.rectTrans.localScale=Vector3.New(1,1,1);
end
--拖拽
local function OnDrag(self,base_event)
    if not self.canDrag then
        return
    end
    if self.isDrag==false then
        if Mathf.Abs(Input.mousePosition.y-self.initMousePos.y)>50 then
            if self.itemData~=nil then
                self.view:CheckDrag(self.itemData, self.itemData.position);
                self.isDrag=true;
                ShowCardMast(self, true)
                --self.rectTrans.localScale=Vector3.New(1,1,1);
            end
        end
    else
        self.view:UpdateCardPos();
    end
end
--开始拖拽
local function OnBeginDrag(self,base_event)

end
--結束拖拽
local function OnEndDrag(self,base_event)
    if self.isDrag then
        ShowCardMast(self, false)
        self.view:CheckDrag(nil);
        self.isDrag=false;
    end
end

local function OnPointClick(self,base_event)
end

--注册事件
local function RegesterAction(self,eventId,fun)
    local eventEntry=EventTrigger.Entry();
    eventEntry.eventID=eventId;
    eventEntry.callback:AddListener(Bind(self,fun));
    self.trigger.triggers:Add(eventEntry);
end

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 组件初始化
    self.player_info_obj = UIUtil.FindTrans(self.transform, "PlayerInfo");
    self.headImg = self:AddComponent(UIImage, "PlayerInfo/Head",AtlasConfig.DynamicTex);
    self.headBtn = UIUtil.FindTrans(self.transform, "PlayerInfo/Head");
    self.rectTrans = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.RectTransform), "PlayerInfo/Head");
    self.headBgImg = self:AddComponent(UIImage, "PlayerInfo/Head/HeadBg");
    self.readyImg = self:AddComponent(UIImage, "PlayerInfo/ReadyImg");
    self.captainImg = self:AddComponent(UIImage, "PlayerInfo/CaptainImg");
    self.nameText = self:AddComponent(UIText, "PlayerInfo/Name");
    self.levelText = self:AddComponent(UIText, "PlayerInfo/LevelNum");
    self.callTipObj = UIUtil.FindTrans(self.transform, "CallTipInfo");
    self.callTipObj.gameObject:SetActive(false);
    self.callTipText = self:AddComponent(UIText, "CallTipInfo/CallText");
    self.teamInfoTexts = {};
    for i = 1, 3 do
        self.teamInfoTexts[i] = self:AddComponent(UIText, "PlayerInfo/TeamInfo"..i);
    end
    self.invite_info_obj = UIUtil.FindTrans(self.transform, "InviteInfo");
    self.inviteBtn = self:AddComponent(UIButton, "InviteInfo/InviteBtn");
    self.inviteBtn:SetOnClick(function ()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick");
        if self.view.canInvite then
            self.view.ctrl:InviteMember()
        else
            self.view:ShowInviteList()
        end
    end)
    self.exitBtn = self:AddComponent(UIButton, "ExitBtn");
    self.exitBtn:SetOnClick(function ()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick");
        self.view.ctrl:KickOutRoom(self.itemData.roleId)
    end)
    self.changeBtn = self:AddComponent(UIButton, "ChangeBtn");
    self.changeBtn:SetOnClick(function ()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick");
        if self.canChange then
            self.view.ctrl:MemberCallPosition(1, self.index)
            self.view:OnCallPosition({roleId = ClientData:GetInstance().user_id, type = 1, position = self.index})
            self.canChange = false
            self.changeTimer_action = function(self)
                self.canChange = true
                if self.changeTimer ~= nil then
                    self.changeTimer:Stop()
                end
                self.changeTimer = nil
            end
            self.changeTimer = TimerManager:GetInstance():GetTimer(1, self.changeTimer_action , self)
            self.changeTimer:Start()
        end
    end)
    self.captionBtn = self:AddComponent(UIButton, "GiveCaptionBtn");
    self.captionBtn:SetOnClick(function ()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick");
        if ClientData:GetInstance().user_id == DRBossData:GetInstance().room_info.leaderId then
            self.view.ctrl:SetCaptain(self.itemData.roleId)
        end
    end)

    self.tipTimer = nil
    self.changeTimer = nil
    self.canChange = true

    --拖动
    self.initMousePos=0;
    self.isClick = true;
    self.isDrag = false;
    self.canDrag = true;
    self.trigger= self.headBtn.gameObject:AddComponent(typeof(EventTrigger));
    RegesterAction(self,EventTriggerType.PointerDown,OnItemDown);
    RegesterAction(self,EventTriggerType.PointerUp,OnUp);
    RegesterAction(self,EventTriggerType.Drag,OnDrag);
    RegesterAction(self,EventTriggerType.BeginDrag,OnBeginDrag);
    RegesterAction(self,EventTriggerType.EndDrag,OnEndDrag);
    RegesterAction(self,EventTriggerType.PointerClick,OnPointClick);
end

local function SetIndex(self, index)
    self.index = index
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self, data)
    self.itemData = data;
    -- 清空定时器
    if self.tipTimer ~= nil then
        self.tipTimer:Stop()
    end
    self.tipTimer = nil
    self.canChange = true
    if self.changeTimer ~= nil then
        self.changeTimer:Stop()
    end
    self.callTipObj.gameObject:SetActive(false);
    self.changeTimer = nil
    if self.itemData ~= nil then
        self.invite_info_obj.gameObject:SetActive(false);
        self.player_info_obj.gameObject:SetActive(true);
        self.nameText:SetText(self.itemData.roleName);
        self.levelText:SetText(Mathf.Floor(self.itemData.roleLevel));
        for i = 1, 3 do
            if self.itemData.teamPower[i] ~= 0 then
                self.teamInfoTexts[i]:SetText(i.."队："..Mathf.Floor(self.itemData.teamPower[i]));
            else
                self.teamInfoTexts[i]:SetText("未配置");
            end
        end
        self.captainImg.gameObject:SetActive(self.itemData.isLeader);
        self.readyImg.gameObject:SetActive(self.itemData.isReady);
        if ClientData:GetInstance().user_id == DRBossData:GetInstance().room_info.leaderId then
            self.canDrag = true
            if self.itemData.isLeader then
                self.exitBtn.gameObject:SetActive(false);
                self.captionBtn.gameObject:SetActive(false);
                self.changeBtn.gameObject:SetActive(false);
            else
                self.exitBtn.gameObject:SetActive(true);
                self.captionBtn.gameObject:SetActive(true);
                self.changeBtn.gameObject:SetActive(false);
            end
        else
            self.canDrag = false
            self.exitBtn.gameObject:SetActive(false);
            self.captionBtn.gameObject:SetActive(false);
            self.changeBtn.gameObject:SetActive(self.itemData.roleId ~= ClientData:GetInstance().user_id);
        end
    else
        self.canDrag = false
        self.invite_info_obj.gameObject:SetActive(true);
        self.player_info_obj.gameObject:SetActive(false);
        self.exitBtn.gameObject:SetActive(false);
        self.captionBtn.gameObject:SetActive(false);
        self.callTipObj.gameObject:SetActive(false);
        self.changeBtn.gameObject:SetActive(false);
        if ClientData:GetInstance().user_id ~= DRBossData:GetInstance().room_info.leaderId then
            self.changeBtn.gameObject:SetActive(true);
        end
    end
end

local function ShowCallTip(self, msg)
    if msg.roleId ~= self.itemData.roleId then
        return
    end
    if msg.type == 1 then
        if msg.position == 1 then
            self.callTipText:SetText("把我换到A区，看我表演就可以了");
        elseif msg.position == 2 then
            self.callTipText:SetText("把我换到B区，看我表演就可以了");
        else
            self.callTipText:SetText("把我换到C区，看我表演就可以了");
        end
    else
        self.callTipText:SetText("给我房主，看我表演");
    end
    self.callTipObj.gameObject:SetActive(true);
    if self.tipTimer ~= nil then
        self.tipTimer:Stop()
    end
    self.timer_action = function(self)
        self.callTipObj.gameObject:SetActive(false);
        if self.tipTimer ~= nil then
            self.tipTimer:Stop()
        end
        self.tipTimer = nil
    end
    self.tipTimer = TimerManager:GetInstance():GetTimer(3, self.timer_action , self)
    self.tipTimer:Start()
end

local function OnDisable(self)
    if self.tipTimer ~= nil then
        self.tipTimer:Stop()
    end
    self.tipTimer = nil
    if self.changeTimer ~= nil then
        self.changeTimer:Stop()
    end
    self.changeTimer = nil
end

UIDRBossRoomTeamItem.OnCreate = OnCreate
UIDRBossRoomTeamItem.OnRefresh = OnRefresh
UIDRBossRoomTeamItem.ShowCallTip = ShowCallTip
UIDRBossRoomTeamItem.OnDisable = OnDisable
UIDRBossRoomTeamItem.SetIndex = SetIndex

return UIDRBossRoomTeamItem

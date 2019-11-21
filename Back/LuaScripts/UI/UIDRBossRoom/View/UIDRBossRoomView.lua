
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIDRBossRoomView = BaseClass("UIDRBossRoomView", UIBaseView)
local base = UIBaseView

local UIDRBossRoomTeamItem = require "UI.UIDRBossRoom.Component.UIDRBossRoomTeamItem";
local UIDRBossRoomTeamDragItem = require "UI.UIDRBossRoom.Component.UIDRBossRoomTeamDragItem";
local UIDRBossRoomPasswordItem = require "UI.UIDRBossRoom.Component.UIDRBossRoomPasswordItem";
local UIDRBossRoomInviteView = require "UI.UIDRBossRoom.Component.UIDRBossRoomInviteView";

local Input = CS.UnityEngine.Input;
local Screen = CS.UnityEngine.Screen;

local staticLevelData = DataUtil.GetData("mu_p_boss_level")

--邀请列表
local InviteListInfo = {
    type = 0,
    uid = 0,
    name = "",
    head = 0,
    framd = 0,
    level = 0,
    power = 0,
    inviteTime = 0,
    friendTime = 0,
}
local InviteListInfo = DataClass("InviteListInfo", InviteListInfo)

-- 更新队伍信息
local function updateTeamData(self)
    for i = 1, 3 do
        self.playerInfoItems[i]:OnRefresh(self.teamInfo[i])
    end
end

--开始拖拽卡牌
local function BeginDrag(self)
    self.playerInfoDragItem.gameObject:SetActive(true);
    self.playerInfoDragItem:OnRefresh(self.dragCardData);

    self.checkDrag = false;
    self.isDrag = true;
end

--结束拖拽
local function EndDrag(self)
    self.checkDrag = false;
    self.dragEnterIndex = 0;
    if self.isDrag == false then
        return
    end
    self.curPos = self.playerInfoDragItem.transform.localPosition
    local minDis = Mathf.Infinity;
    local minDisY = 200
    for i = 1, 3 do
        local curDisX = Mathf.Abs(self.dragTargetPosition[i].x - self.curPos.x + self.disPos.x);
        local curDisY = Mathf.Abs(self.dragTargetPosition[i].y - self.curPos.y + self.disPos.y);
        if (curDisX <= 300 and curDisY < minDisY and curDisX < minDis and curDisY < minDis) then
            minDisY = curDisY;
            self.dragEnterIndex = i;
        end
    end

    if self.dragEnterIndex > 0 then
        local enterData = self.teamInfo[self.dragEnterIndex];
        self.teamInfo[self.dragEnterIndex] = self.dragCardData;
        self.teamInfo[self.dragEnterIndex].position = self.dragEnterIndex;
        self.teamInfo[self.dragCardIndex] = enterData;
        if enterData ~= nil then
            self.teamInfo[self.dragCardIndex].position = self.dragCardIndex;
        end
        self.ctrl:ChangePosition(self.dragCardData.roleId, self.dragEnterIndex);
        DRBossData:GetInstance().room_team_info = self.teamInfo;
    end

    updateTeamData(self);
    self.isDrag = false;
    self.dragCardIndex = 0;
    self.playerInfoDragItem.gameObject:SetActive(false);
end

--检测拖拽
local function CheckDrag(self, itemData, cardIndex)
    if itemData == nil then
        self.checkDrag = false;
        EndDrag(self);
    else
        self.checkDrag = true;
        self.startCheckTime = Time.time;
        self.dragCardData = itemData;
        self.dragCardIndex = cardIndex;
    end
end

--更新拖拽的卡牌位置
local function UpdateCardPos(self)
    if self.checkDrag == true then
        self.curPos = Vector2.New((Input.mousePosition.x / Screen.width - 0.5) * self.canvasScreen.x,
                (Input.mousePosition.y / Screen.height - 0.5) * self.canvasScreen.y);
        if self.curPos.x > -800 and self.curPos.x < 800 then
            BeginDrag(self);
            self.lastDragPos = self.curPos
        end
    end
    if self.isDrag == false then
        return ;
    end
    self.curPos = Vector2.New((Input.mousePosition.x / Screen.width - 0.5) * self.canvasScreen.x,
            (Input.mousePosition.y / Screen.height - 0.5) * self.canvasScreen.y);
    self.lastDragPos = self.curPos
    self.playerInfoDragItem.transform.localPosition = self.curPos;
end


local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.backMainUIButton = self:AddComponent(UIButton, "LeftUp/BackMain_UIButton")
	self.backMainUIButton:SetOnClick(function ()
		self.ctrl:BackMainCtiy()
	end)
	self.backUIButton = self:AddComponent(UIButton, "LeftUp/Back_UIButton")
	self.backUIButton:SetOnClick(function ()
		self.ctrl:CloseSelf()
	end)
	self.helpUIButton = self:AddComponent(UIButton, "LeftUp/help_UIButton")
	self.helpUIButton:SetOnClick(function ()
		self.ctrl:OnHelp()
	end)
	self.editTeamBtn = self:AddComponent(UIButton, "BottomInfo/EditTeamBtn")
    self.editTeamBtn:SetOnClick(function ()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        UIManager:GetInstance():OpenWindow(UIWindowNames.UIDRBossEmBattle);
    end)
    self.beginBtn = self:AddComponent(UIButton, "BottomInfo/BeginBtn")
    self.beginBtn:SetOnClick(function ()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        if ClientData:GetInstance().user_id == DRBossData:GetInstance().room_info.leaderId then
            local allReady = true
            for _, v in pairs(self.teamInfo) do
                if not v.isLeader and not v.isReady then
                    allReady = false
                    break
                end
            end
            if not allReady then
                UISpecial:GetInstance():UITipText("尚有玩家未准备就绪")
                return
            end
            --SceneManager:GetInstance():SwitchScene(SceneConfig.WorldBossScene)
            DRBossData:GetInstance():SendBeginGame()
        else
            self.ctrl:PlayerReady()
        end
    end)
    self.setPasswordBtn = self:AddComponent(UIButton, "BottomInfo/SetPasswordBtn")
    self.setPasswordBtn:SetOnClick(function ()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        self.passwordItem:SetActive(true)
    end)
    self.applyCaptainBtn = self:AddComponent(UIButton, "BottomInfo/applyCaptainBtn")
    self.applyCaptainBtn:SetOnClick(function ()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        if ClientData:GetInstance().user_id ~= DRBossData:GetInstance().room_info.leaderId then
            self.ctrl:MemberCallPosition(2, 0)
            self:OnCallPosition({roleId = ClientData:GetInstance().user_id, type = 2, position = 0})
        end
    end)
    self.refreshMonsterBtn = self:AddComponent(UIButton, "BottomInfo/RefreshMonsterBtn")
    self.refreshMonsterBtn:SetOnClick(function ()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        if DRBossData:GetInstance().room_info.quality < 4 then
            self.ctrl:RefreshBoss()
        else
            UISpecial:GetInstance():UITipText("怪物已达到最高品质")
        end
    end)
    self.inviteBtn = self:AddComponent(UIButton, "BottomInfo/BoardInviteBtn")
    self.inviteBtn:SetOnClick(function ()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        self.ctrl:InviteInWorld()
    end)

    self.titleText = self:AddComponent(UIText, "LeftUp/title_UIText");
    self.rewardBgImg = self:AddComponent(UIImage, "RightRoomInfo/RewardBgImg", AtlasConfig.DynamicTex)
    self.rewardText = self:AddComponent(UIText, "RightRoomInfo/RewardBgImg/RewardText");
    self.refreshIcon = self:AddComponent(UIImage, "BottomInfo/RefreshMonsterBtn/RefreshCostIcon", AtlasConfig.DynamicTex);
    self.refreshText = self:AddComponent(UIText, "BottomInfo/RefreshMonsterBtn/RefreshPriceText");
    self.beginText = self:AddComponent(UIText, "BottomInfo/BeginBtn/beginText");
    self.grayImg = self:AddComponent(UIImage, "GrayImage");
    self.grayMat = self.grayImg:GetMat();

    local layer = UIManager:GetInstance():GetLayer(UILayers.NormalLayer.Name)
    self.canvasScreen = UIUtil.FindComponent(layer.transform, typeof(CS.UnityEngine.RectTransform)).sizeDelta

    local leftPlayerObj = UIUtil.FindTrans(self.transform, "LeftPlayerInfo");
    self.disPos = leftPlayerObj.transform.localPosition

    self.playerInfoItems = {};
    --拖动目标区域
    self.dragTargetPosition = {};
    for i = 1, 3 do
        self.playerInfoItems[i] = UIDRBossRoomTeamItem.New(self, "LeftPlayerInfo/PlayerInfoBg"..i);
        self.playerInfoItems[i]:OnCreate(self);
        self.playerInfoItems[i]:SetIndex(i);
        table.insert(self.dragTargetPosition, UIUtil.FindComponent(self.playerInfoItems[i].gameObject, typeof(CS.UnityEngine.RectTransform)).anchoredPosition);
    end

    self.playerInfoDragItem = UIDRBossRoomTeamDragItem.New(self, "PlayerInfoBgDrag");
    self.playerInfoDragItem:OnCreate(self);
    self.playerInfoDragItem.gameObject:SetActive(false);
    self.passwordItem = UIDRBossRoomPasswordItem.New(self, "UIInputPassword");
    self.passwordItem:OnCreate(self);
    self.passwordItem:SetActive(false);
    self.inviteListView = UIDRBossRoomInviteView.New(self, "UIInviteMember");
    self.inviteListView:OnCreate(self);
    self.inviteListView:SetActive(false);

    self.resourceBarParent=UIUtil.FindTrans(self.transform,"RightUp")
    ResourceBarComponentManager:GetInstance():CreatResourceBarComponent(self.resourceBarParent,UIWindowNames.UITestHoard,ResourceBarType.TEST_HOARD,self);
end

local function OnEnable(self)
	base.OnEnable(self)
    self.inviteDataList = {};
    self.canInvite = true;
    self.refreshIcon:SetSpriteName(DataUtil.GetData("item")[DRBossData:GetInstance().leader_id].Icon);
    self.titleText:SetText("房间号："..Mathf.Floor(DRBossData:GetInstance().room_info.roomId))
	self:OnRefresh()
end

local function OnRefresh(self)
	-- 各组件刷新
    self.refreshText:SetText(DRBossData:GetInstance().room_info.quality_cost);
    self.rewardText:SetText(staticLevelData[DRBossData:GetInstance().room_info.level_id].BonusQualityWords);
    self.teamInfo = DRBossData:GetInstance().room_team_info;
    updateTeamData(self);
    self.refreshMonsterBtn.gameObject:SetActive(ClientData:GetInstance().user_id == DRBossData:GetInstance().room_info.leaderId);
    self.setPasswordBtn.gameObject:SetActive(ClientData:GetInstance().user_id == DRBossData:GetInstance().room_info.leaderId);
    self.applyCaptainBtn.gameObject:SetActive(ClientData:GetInstance().user_id ~= DRBossData:GetInstance().room_info.leaderId);
    self.inviteBtn.gameObject:SetActive(ClientData:GetInstance().user_id == DRBossData:GetInstance().room_info.leaderId);
    if ClientData:GetInstance().user_id == DRBossData:GetInstance().room_info.leaderId then
        self.beginText:SetText("开  始");
    else
        if DRBossData:GetInstance():GetPlayerReadyState(ClientData:GetInstance().user_id) then
            self.beginText:SetText("取消准备");
        else
            self.beginText:SetText("准  备");
        end
    end
end

local function OnCallPosition(self, msg)
    for i = 1, 3 do
        if self.teamInfo[i] ~= nil and self.teamInfo[i].roleId == msg.roleId then
            self.playerInfoItems[i]:ShowCallTip(msg);
            break
        end
    end
end

local function CanInviteState(self)
    self.canInvite = true
    if self.timer ~= nil then
        self.timer:Stop()
    end
    self.timer = nil
end

local function ShowInviteList(self, msg)
    if msg == nil then
        if #self.inviteDataList > 0 then
            self.inviteListView:OnRefresh(self.inviteDataList);
        else
            UISpecial:GetInstance():UITipText("没人可以邀请")
        end
        return
    end
    if self.timer ~= nil then
        self.timer:Stop()
    end
    self.canInvite = false
    self.timer = TimerManager:GetInstance():GetTimer(10, self.CanInviteState , self)
    self.timer:Start()

    for _,v in ipairs(msg) do
        local info = InviteListInfo.New()
        info.type = v.type
        info.uid = v.uid
        info.name = v.name
        info.head = v.head
        info.framd = v.framd
        info.level = v.level
        info.power = v.power
        info.inviteTime = 0;
        info.friendTime = 0;
        --是否存在于现有列表中
        local isInList = false
        for m, n in pairs(self.inviteDataList) do
            if n.uid == v.uid then
                isInList = true
                info.inviteTime = n.inviteTime;
                info.friendTime = n.friendTime;
                self.inviteDataList[m] = info
                break
            end
        end
        if not isInList then
            table.insert(self.inviteDataList, info);
        end
    end
    self.inviteListView:OnRefresh(self.inviteDataList);
end

local function UpdateInviteList(self, uid, type, time)
    for k, v in ipairs(self.inviteDataList) do
        if v.uid == uid then
            if type == 1 then
                self.inviteDataList[k].inviteTime = time
            else
                self.inviteDataList[k].friendTime = time
            end
            break
        end
    end
end

local function OnAddListener(self)
	base.OnAddListener(self)
	-- UI消息注册
    self:AddUIListener(UIMessageNames.UI_WORLD_BOSS_ROOM_REFRESH, OnRefresh);
    self:AddUIListener(UIMessageNames.UI_WORLD_BOSS_ROOM_CALLPOSITION, OnCallPosition);
    self:AddUIListener(UIMessageNames.UI_WORLD_BOSS_ROOM_INVITELIST, ShowInviteList);
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- UI消息注销
    self:RemoveUIListener(UIMessageNames.UI_WORLD_BOSS_ROOM_REFRESH, OnRefresh);
    self:RemoveUIListener(UIMessageNames.UI_WORLD_BOSS_ROOM_CALLPOSITION, OnCallPosition);
    self:RemoveUIListener(UIMessageNames.UI_WORLD_BOSS_ROOM_INVITELIST, ShowInviteList);
end

local function OnDisable(self)
    base.OnDisable(self)
    -- 清理成员变量
    if self.timer ~= nil then
        self.timer:Stop()
    end
    self.timer = nil
    for i = 1, 3 do
        self.playerInfoItems[i]:OnDisable()
    end
end

local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)
    ResourceBarComponentManager:GetInstance():DestroyResourceBar(UIWindowNames.UITestHoard)
end

UIDRBossRoomView.OnCreate = OnCreate
UIDRBossRoomView.OnEnable = OnEnable
UIDRBossRoomView.OnRefresh = OnRefresh
UIDRBossRoomView.OnAddListener = OnAddListener
UIDRBossRoomView.OnRemoveListener = OnRemoveListener
UIDRBossRoomView.OnDisable = OnDisable
UIDRBossRoomView.OnDestroy = OnDestroy
UIDRBossRoomView.BeginDrag = BeginDrag
UIDRBossRoomView.EndDrag = EndDrag
UIDRBossRoomView.CheckDrag = CheckDrag
UIDRBossRoomView.UpdateCardPos = UpdateCardPos
UIDRBossRoomView.CanInviteState = CanInviteState
UIDRBossRoomView.ShowInviteList = ShowInviteList
UIDRBossRoomView.UpdateInviteList = UpdateInviteList
UIDRBossRoomView.OnCallPosition = OnCallPosition

return UIDRBossRoomView

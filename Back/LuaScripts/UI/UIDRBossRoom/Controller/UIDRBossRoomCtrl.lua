
--[[
-- 控制层
--]]

local UIDRBossRoomCtrl = BaseClass("UIDRBossRoomCtrl", UIBaseCtrl)


local function CloseSelf(self)
	LJAudioManger:GetInstance():PlayOtherVoice("UI_CommonClick")
    self:LevelRoom()
	UIManager:GetInstance():CloseWindow(UIWindowNames.UIDRBossRoom)
end

local function OnHelp(self)
	LJAudioManger:GetInstance():PlayOtherVoice("UI_CommonClick")
	UIManager:GetInstance():OpenWindow(UIWindowNames.UICommonHelpInfo,13)
end

local function BackMainCtiy(self)
	LJAudioManger:GetInstance():PlayOtherVoice("UI_CommonClick")
    self:LevelRoom()
	UIUtil.BackHomeMain()
	UIManager:GetInstance():Broadcast(UIMessageNames.UIMAINCITY_BACK_SCENE,"UIDRBossRoom")
end

-- 退出房间
local function LevelRoom(self)
    local msg_id = MsgIDDefine.PBDRBOSS_LEAVE_ROOM_REQUEST
    NetManager:GetInstance():SendMessage(msg_id)
end

-- 玩家准备
local function PlayerReady(self)
    local msg_id = MsgIDDefine.PBDRBOSS_MEMBER_ISREADY_REQUEST
    NetManager:GetInstance():SendMessage(msg_id)
    DRBossData:GetInstance():UpdatePlayerReadyState(ClientData:GetInstance().user_id, not DRBossData:GetInstance():GetPlayerReadyState(ClientData:GetInstance().user_id))
    DataManager:GetInstance():Broadcast(DataMessageNames.ON_WORLD_BOSS_ROOM_INFO_REFRESH)
end

-- 玩家换位
local function ChangePosition(self, roleId, position)
    local msg_id = MsgIDDefine.PBDRBOSS_CHANGE_POSITION_REQUEST
    local data = (MsgIDMap[msg_id])()
    data.roleId = roleId
    data.position = position
    NetManager:GetInstance():SendMessage(msg_id,data,function (msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.Log("ERROR PBDRBOSS_CHANGE_POSITION_REQUEST~~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        else

        end
    end)
end

-- 设置密码
local function SetPassword(self, password)
    local msg_id = MsgIDDefine.PBDRBOSS_SET_PASSWORD_REQUEST
    local data = (MsgIDMap[msg_id])()
    data.password = password
    NetManager:GetInstance():SendMessage(msg_id,data)
end

-- 设置队长
local function SetCaptain(self, roleId)
    local msg_id = MsgIDDefine.PBDRBOSS_CHANGE_LEADER_REQUEST
    local data = (MsgIDMap[msg_id])()
    data.roleId = roleId
    NetManager:GetInstance():SendMessage(msg_id,data)
end

-- 踢出房间
local function KickOutRoom(self, roleId)
    local msg_id = MsgIDDefine.PBDRBOSS_KICKOUT_ROOM_REQUEST
    local data = (MsgIDMap[msg_id])()
    data.roleId = roleId
    NetManager:GetInstance():SendMessage(msg_id,data)
end

-- 刷新boss品质
local function RefreshBoss(self)
    local msg_id = MsgIDDefine.PBDRBOSS_FLUSH_BOSS_REQUEST
    NetManager:GetInstance():SendMessage(msg_id,nil,function (msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.Log("ERROR PBDRBOSS_CHANGE_POSITION_REQUEST~~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        else
            BackpackData:GetInstance():UpdateItemData(DRBossData:GetInstance().leader_id,-DRBossData:GetInstance().room_info.quality_cost)
            DRBossData:GetInstance():RefreshBossQuaData(msg_obj.Packages.levelId)
            DataManager:GetInstance():Broadcast(DataMessageNames.ON_WORLD_BOSS_ROOM_INFO_REFRESH)
        end
    end)
end

-- 喊话换位
local function MemberCallPosition(self, type, position)
    local msg_id = MsgIDDefine.PBDRBOSS_MEMBER_CALL_REQUEST
    local data = (MsgIDMap[msg_id])()
    data.type = type
    data.position = position
    NetManager:GetInstance():SendMessage(msg_id,data)
end

-- 世界喊话邀请
local function InviteInWorld(self)
    local msg_id = MsgIDDefine.PBDRBOSS_TEAM_CALL_REQUEST
    --推送

    NetManager:GetInstance():SendMessage(msg_id)
end

-- 邀请队友
local function InviteMember(self)
    local msg_id = MsgIDDefine.PBDRBOSS_INVITE_MEMBER_REQUEST
    NetManager:GetInstance():SendMessage(msg_id,nil,function (msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.Log("ERROR PBDRBOSS_CHANGE_POSITION_REQUEST~~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        else
            DataManager:GetInstance():Broadcast(DataMessageNames.ON_WORLD_BOSS_ROOM_INVITE_LIST, msg_obj.Packages.member)
        end
    end)
end

-- 邀请指定好友
local function InviteMemberOne(self, roleId)
    local msg_id = MsgIDDefine.PBDRBOSS_SEND_INVITE_REQUEST
    local data = (MsgIDMap[msg_id])()
    data.roleId = roleId
    NetManager:GetInstance():SendMessage(msg_id,data)
end

UIDRBossRoomCtrl.CloseSelf = CloseSelf
UIDRBossRoomCtrl.OnHelp = OnHelp
UIDRBossRoomCtrl.BackMainCtiy = BackMainCtiy
UIDRBossRoomCtrl.ChangePosition = ChangePosition
UIDRBossRoomCtrl.SetPassword = SetPassword
UIDRBossRoomCtrl.SetCaptain = SetCaptain
UIDRBossRoomCtrl.KickOutRoom = KickOutRoom
UIDRBossRoomCtrl.RefreshBoss = RefreshBoss
UIDRBossRoomCtrl.MemberCallPosition = MemberCallPosition
UIDRBossRoomCtrl.LevelRoom = LevelRoom
UIDRBossRoomCtrl.PlayerReady = PlayerReady
UIDRBossRoomCtrl.InviteInWorld = InviteInWorld
UIDRBossRoomCtrl.InviteMember = InviteMember
UIDRBossRoomCtrl.InviteMemberOne = InviteMemberOne

return UIDRBossRoomCtrl
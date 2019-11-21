--[[
-- added by xupeng @ 2019-7-16
-- 该模块用拖拽出来的队伍信息
--]]
local UIDRBossRoomTeamDragItem = BaseClass("UIDRBossRoomTeamDragItem", UIWrapComponent)
local base = UIWrapComponent

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 组件初始化
    self.player_info_obj = UIUtil.FindTrans(self.transform, "PlayerInfo");
    self.headImg = self:AddComponent(UIImage, "PlayerInfo/Head",AtlasConfig.DynamicTex);
    self.headBgImg = self:AddComponent(UIImage, "PlayerInfo/Head/HeadBg");
    self.readyImg = self:AddComponent(UIImage, "PlayerInfo/ReadyImg");
    self.captainImg = self:AddComponent(UIImage, "PlayerInfo/CaptainImg");
    self.nameText = self:AddComponent(UIText, "PlayerInfo/Name");
    self.levelText = self:AddComponent(UIText, "PlayerInfo/LevelNum");
    self.teamInfoTexts = {};
    for i = 1, 3 do
        self.teamInfoTexts[i] = self:AddComponent(UIText, "PlayerInfo/TeamInfo"..i);
    end
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self, data)
    self.itemData = data;
    if self.itemData ~= nil then
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
    end
end

UIDRBossRoomTeamDragItem.OnCreate = OnCreate
UIDRBossRoomTeamDragItem.OnRefresh = OnRefresh

return UIDRBossRoomTeamDragItem

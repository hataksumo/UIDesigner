local UINationNewBattleLogsItem = BaseClass("UINationNewBattleLogsItem", UIWrapComponent)
local base = UIWrapComponent

local UINationNewBattleLogsTeamMsg = require "UI.UINationNewBattleLogs.Component.UINationNewBattleLogsTeamMsg"
local utf8 = require("Common.Tools.utf8")
-- 创建
local function OnCreate(self,_index)
    base.OnCreate(self)
    -- 组件初始化
    self.model=self.view.model
    self.time=self:AddComponent(UIText,"TimeText")
    self.position_button=self:AddComponent(UIButton,"PositionText")
    self.position_text=self:AddComponent(UIText,"PositionText")
    self.result_Img=self:AddComponent(UIImage,"Result",AtlasConfig.Language)
    self.position_line_text=self:AddComponent(UIText,"UnderLineText")
    self.unread_Img=self:AddComponent(UIImage,"UnReadImg",AtlasConfig.Language)--未读
    self.myTeam = UINationNewBattleLogsTeamMsg.New(self, "MyTeamMsg1")
    self.myTeam:OnCreate()
    self.enemyTeam = UINationNewBattleLogsTeamMsg.New(self, "EnemyTeamMsg1")
    self.enemyTeam:OnCreate()

end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self, real_index)
    local data = self.model.fightLogList[real_index+1]
    self.position_button:SetOnClick(function()
        self.view.ctrl:TurnCityButtonClick(real_index)
    end)
    self.data= data.id
    self.time:SetText(data.timeStr)
    self.position_text:SetText(data.targetName)
    if data.winState == self.model.WIN_STATE.WIN then
        self.result_Img:SetSpriteName("ui_t_c2_724")
    elseif data.winState == self.model.WIN_STATE.LOSE then
        self.result_Img:SetSpriteName("ui_t_c2_721")
    else -- 平局
        self.result_Img:SetSpriteName("ui_t_c2_758")
    end

    --显示名字下面的横线
    local nameLen = utf8.charactersLength(data.targetName)
    local lineStr = ""
    for i = 1, nameLen do
        lineStr = lineStr .. "_"
    end

    if self.view.model.myLookState ==  NationDefine.NATION_BATTLE_LOG_LOOK_ST.UNION then -- 这是联盟
        self.unread_Img:SetActive(false)
    else
        self.unread_Img:SetActive(true)
        --Logger.LogVars("是否查看过战报：",data.isLook)
        if data.isLook then
            self.unread_Img:SetActive(false)
        else
            self.unread_Img:SetActive(true)
        end
    end

    self.position_line_text:SetText(lineStr)
    --self.myTeam:OnRefresh(real_index)
    self.myTeam:FlushContent(data.selfCamp)
    self.enemyTeam:FlushContent(data.enemyCamp)

end

UINationNewBattleLogsItem.OnCreate = OnCreate
UINationNewBattleLogsItem.OnRefresh = OnRefresh
return UINationNewBattleLogsItem
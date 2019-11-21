local UINationSiegeBuildInfo = BaseClass("UINationSiegeBuildInfo", UIBaseNationComponent)
local base = UIBaseNationComponent

local NationUtil = require "GameLogic.Nation.NationUtil"
local ItemInfo = DataUtil.GetData("item")

local EnumSiegeWarType = {
    MonDay = 1,
    Tuesday = 2,
    Wednesday = 3,
    Thursday = 4,
    Friday = 5,
    Saturday = 6,
    Sunday = 7,
    Everyday = 200, --每天的一个时间
    EveryTimeInOneDay = 300, --每天的N个时间段
}

local function CloseWindow(self)
    NationSceneUIManager:GetInstance():CloseWindow(UIWindowNames.UINationSiegeBuildInfo)
end

--杀敌
local function OnClickKillEnemy(self)
    if self.isActiveStart == false then
        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200072))
        return
    end

    if self.myUnionID == 0 then
        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200073))
        return
    end

    if NationUtil.CheckCanAttackByBuildID(self.buildingId) == false then
        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200074))
        return
    end

    local msgID = MsgIDDefine.PBNATION_TEAM_TEAM_OPEN_KILL_ENEMY_REQUEST
    local msgObj = MsgIDMap[msgID]()
    msgObj.buildingId = self.buildingId

    NetManager:GetInstance():SendMessage(msgID, msgObj, function(msg_obj)
        if msg_obj.OpCode ~= 0 then
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        end
        local params = msg_obj.Params
        CloseWindow(self)
        UIManager:GetInstance():OpenWindow(UIWindowNames.UINationSiegeBattleMain, params.buildID, params.state, msg_obj.Packages)
    end, { buildID = self.buildingId, state = self.state })
end

--破城
local function OnClickBreakCity(self, type)
    if self.isActiveStart == false then
        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200072))
        return
    end

    if self.myUnionID == 0 then
        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200073))
        return
    end

    if self.state == 1 then
        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200075))
        return
    end

    if NationTeamData:GetInstance():DoseAllTeamCardsEmpty() then
        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200076))
        return
    end

    if self.curEndurance <= 0 then
        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200077))
        return
    end

    if NationUtil.CheckCanAttackByBuildID(self.buildingId) == false then
        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200074))
        return
    end

    local tempTab = {}
    tempTab[1] = type
    tempTab[2] = self.buildingId

    CloseWindow(self)
    UIManager:GetInstance():OpenWindow(UIWindowNames.UINationSelectTeamBattle, tempTab)
end

--排行榜
local function OnClickRankView(self)
    local msgID = MsgIDDefine.PBNATION_MAP_GET_WAR_BUILDING_RANKING_REQUEST
    local msgObj = MsgIDMap[msgID]()
    msgObj.buildingId = self.buildingId

    NetManager:GetInstance():SendMessage(msgID, msgObj, function(msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.Log("OnRecvPveStart出错了~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        end
        local params = msg_obj.Params
        UIManager:GetInstance():OpenWindow(UIWindowNames.UINationSiegeRank, params.buildID, msg_obj.Packages)
    end, { buildID = self.buildingId })
end

--收藏坐标点
local function BTBtn1Click(self)
    local collectID = self.collectPosID
    if collectID ~= nil then
        NationCollectPosData:GetInstance():DeletePointData(collectID)
    else
        UIManager:GetInstance():OpenWindow(UIWindowNames.UINationCollectPoint, self.buildingId)
    end
    CloseWindow(self)
end

--分享坐标点
local function BTBtn2Click(self)
    local temp = {}
    temp.posID = self.buildingId
    temp.subPosID = 0
    temp.areaID = 0
    temp.infoID = 0

    UIManager:GetInstance():OpenWindow(UIWindowNames.UINationPositionShare, temp)
end

local function CalculateSiegeStartTime(self, msgObj_state)
    local buildInfo = NationMapInfoData:GetInstance():GetNationalMapById(self.buildingId)
    local startTimeStamp = nil
    local endTimeStamp = nil
    local ltime = nil
    local valueText = nil

    if buildInfo.SiegeWarType == EnumSiegeWarType.Everyday then
        startTimeStamp = (buildInfo.SiegeWarBegin[1] - 8) * 3600 + buildInfo.SiegeWarBegin[2] * 60 + buildInfo.SiegeWarBegin[3]
        endTimeStamp = (buildInfo.SiegeWarEnd[2] - 8) * 3600 + buildInfo.SiegeWarEnd[3] * 60 + buildInfo.SiegeWarEnd[4]
        local curTime = math.modf(TimeSyncManager:GetInstance():GetSimulationJavaMS() / 1000) % 86400
        if curTime < startTimeStamp then
            valueText = DataUtil.GetClientText(200078)
            ltime = startTimeStamp - curTime
            self.isActiveStart = false
        elseif curTime >= startTimeStamp and curTime < endTimeStamp then
            if msgObj_state ~= nil and msgObj_state == 1 then
                valueText = DataUtil.GetClientText(200078)
                ltime = startTimeStamp + 86400 - curTime
                self.isActiveStart = false
            else
                valueText = DataUtil.GetClientText(200079)
                ltime = endTimeStamp - curTime
                self.isActiveStart = true
            end
        elseif curTime >= endTimeStamp then
            valueText = DataUtil.GetClientText(200078)
            ltime = startTimeStamp + 86400 - curTime
            self.isActiveStart = false
        end
    elseif buildInfo.SiegeWarType == EnumSiegeWarType.EveryTimeInOneDay then
        local curTime = math.modf(TimeSyncManager:GetInstance():GetSimulationJavaMS() / 1000) % 86400
        curTime = curTime + 8 * 3600
        local todayIsOver = true
        for k, v in ipairs(buildInfo.SiegeWarBegin) do
            startTimeStamp = v * 3600
            endTimeStamp = buildInfo.SiegeWarEnd[k] * 3600
            if curTime >= startTimeStamp and curTime < endTimeStamp then
                valueText = DataUtil.GetClientText(200079)
                ltime = endTimeStamp - curTime
                self.isActiveStart = true
                todayIsOver = false
                break
            elseif curTime < startTimeStamp then
                valueText = DataUtil.GetClientText(200078)
                ltime = startTimeStamp - curTime
                self.isActiveStart = false
                todayIsOver = false
                break
            end
        end
        if todayIsOver then
            valueText = DataUtil.GetClientText(200078)
            ltime = buildInfo.SiegeWarBegin[1] * 3600 + 86400 - curTime
            self.isActiveStart = false
        end
    else
        startTimeStamp = (buildInfo.SiegeWarBegin[1] - 1) * 86400 + (buildInfo.SiegeWarBegin[2] - 8) * 3600 + buildInfo.SiegeWarBegin[3] * 60 + buildInfo.SiegeWarBegin[4]
        endTimeStamp = (buildInfo.SiegeWarEnd[1] - 1) * 86400 + (buildInfo.SiegeWarEnd[2] - 8) * 3600 + buildInfo.SiegeWarEnd[3] * 60 + buildInfo.SiegeWarEnd[4]
        local startTime = UIUtil.GetCountDownDayTime(startTimeStamp)
        local endTime = UIUtil.GetCountDownDayTime(endTimeStamp)
        if endTime > startTime then
            valueText = DataUtil.GetClientText(200078)
            ltime = startTime
            self.isActiveStart = false
        else
            if msgObj_state ~= nil and msgObj_state == 1 then
                valueText = DataUtil.GetClientText(200078)
                ltime = startTime
                self.isActiveStart = false
            else
                valueText =DataUtil.GetClientText(200079)
                ltime = endTime
                self.isActiveStart = true
            end
        end
    end

    self.builddata[2].time.value = ltime
    self.builddata[2].time.valueText = valueText
end

local function RefreshCountDownTimer(self, time, timeText)
    local timer = tonumber(time)
    local function UpdateTimer(self)
        timer = timer - 1
        self.textValue3UIText:SetText("<color=#76EECD>" .. UIUtil.GetTimeStrDHMS(timer) .. "</color>" .. timeText)
        if timer <= 0 then
            if self.isActiveStart then
                self.textValue3UIText:SetText("<color=#76EECD>".. DataUtil.GetClientText(200080).."</color>")--00FFF0
                self.btn1_UIImage:SetMat(self.grayMat)
                self.btn2_UIImage:SetMat(self.grayMat)
            else
                self.textValue3UIText:SetText("<color=#76EECD>"..DataUtil.GetClientText(200081).."</color>")
                self.btn1_UIImage:SetMat()
                self.btn2_UIImage:SetMat()
            end
            CalculateSiegeStartTime(self)

            TimerManager:GetInstance():SimpleTimerStop(self.countDownTimer)
            self.countDownTimer = nil
        end
    end
    self.countDownTimer = TimerManager:GetInstance():SimpleTimerArgs(1, UpdateTimer, self, false, false)
end

local function OnCreate(self)
    base.OnCreate(self)
    --组建初始化
    
    self.sizeChangeTran = UIUtil.FindTrans(self.transform, "SizeChangeRoot").transform
    self.sizeChangeTran.localScale = Vector3.New(NationDefine.NATION_SCENE_CANVAS_PARAM.SIZE_X, NationDefine.NATION_SCENE_CANVAS_PARAM.SIZE_Y, 1)


    self.bGtrans = UIUtil.FindComponent(self.transform, typeof(CS.UnityEngine.RectTransform), "SizeChangeRoot/root/BuildInfo")
    self.titleIconUIImage = self:AddComponent(UIImage, "SizeChangeRoot/root/BuildInfo/TitleInfo/TitleIcon_UIImage", AtlasConfig.DynamicNationTex)
    self.titleNameUIText = self:AddComponent(UIText, "SizeChangeRoot/root/BuildInfo/TitleInfo/TitleName_UIText")
    self.titleLevelUIText = self:AddComponent(UIText, "SizeChangeRoot/root/BuildInfo/TitleInfo/TitleLevel_UIText")
    self.textlableUIText = self:AddComponent(UIText, "SizeChangeRoot/root/BuildInfo/BuildProperty/Property1/Textlable_UIText")
    self.textValueUIText = self:AddComponent(UIText, "SizeChangeRoot/root/BuildInfo/BuildProperty/Property1/TextValue_UIText")
    self.iconImage = self:AddComponent(UIImage, "SizeChangeRoot/root/BuildInfo/BuildProperty/Property1/TextValue_UIText/Icon_Image", AtlasConfig.DynamicTex)
    self.textlable2UIText = self:AddComponent(UIText, "SizeChangeRoot/root/BuildInfo/BuildProperty/Property2/Textlable2_UIText")
    self.textValue2UIText = self:AddComponent(UIText, "SizeChangeRoot/root/BuildInfo/BuildProperty/Property2/TextValue2_UIText")
    self.textlable3UIText = self:AddComponent(UIText, "SizeChangeRoot/root/BuildInfo/BuildProperty/Property3/Textlable3_UIText")
    self.textValue3UIText = self:AddComponent(UIText, "SizeChangeRoot/root/BuildInfo/BuildProperty/Property3/TextValue3_UIText")
    self.textlablesUIText = self:AddComponent(UIText, "SizeChangeRoot/root/BuildInfo/StrongProperty/Property1/Textlables_UIText")
    self.textValuesUIText = self:AddComponent(UIText, "SizeChangeRoot/root/BuildInfo/StrongProperty/Property1/TextValues_UIText")
    self.valueUISlider = self:AddComponent(UISlider, "SizeChangeRoot/root/BuildInfo/StrongProperty/Property1/Value_UISlider")
    self.textlables2UIText = self:AddComponent(UIText, "SizeChangeRoot/root/BuildInfo/StrongProperty/Property2/Textlables2_UIText")
    self.textValues2UIText = self:AddComponent(UIText, "SizeChangeRoot/root/BuildInfo/StrongProperty/Property2/TextValues2_UIText")

    self.tiltleUIText = self:AddComponent(UIText, "SizeChangeRoot/root/BuildInfo/Incom/Tiltle_UIText")
    self.income = UIUtil.FindTrans(self.transform, "SizeChangeRoot/root/BuildInfo/Incom").gameObject

    self.dropItemTab = {}
    for i = 1, 4 do
        self.dropItemTab[i] = {}
        self.dropItemTab[i].icon = self:AddComponent(UIImage, "SizeChangeRoot/root/BuildInfo/Incom/IncomeGroup/Item" .. i .. "/Icon" .. i .. "_UIImage", AtlasConfig.DynamicTex)
        self.dropItemTab[i].nameText = self:AddComponent(UIText, "SizeChangeRoot/root/BuildInfo/Incom/IncomeGroup/Item" .. i .. "/Name" .. i .. "_UIText")
        self.dropItemTab[i].valueText = self:AddComponent(UIText, "SizeChangeRoot/root/BuildInfo/Incom/IncomeGroup/Item" .. i .. "/Value" .. i .. "_UIText")
        self.dropItemTab[i].itemObj = UIUtil.FindTrans(self.transform, "SizeChangeRoot/root/BuildInfo/Incom/IncomeGroup/Item" .. i).gameObject
        self.dropItemTab[i].itemObj:SetActive(false)
    end

    self.bottomUIText = self:AddComponent(UIText, "SizeChangeRoot/root/BuildInfo/bottomInfo/infoText")

    self.btn1_UIImage = self:AddComponent(UIImage, "SizeChangeRoot/root/RightButtons/btn1_UIButton")
    self.btn1UIButton = self:AddComponent(UIButton, "SizeChangeRoot/root/RightButtons/btn1_UIButton")
    self.btn1UIButton:SetOnClick(function()
        OnClickKillEnemy(self)
    end)
    self.btn2UIButton = self:AddComponent(UIButton, "SizeChangeRoot/root/RightButtons/btn2_UIButton")
    self.btn2_UIImage = self:AddComponent(UIImage, "SizeChangeRoot/root/RightButtons/btn2_UIButton")
    self.btn2UIButton:SetOnClick(function()
        OnClickBreakCity(self, NationDefine.NATION_TEAM_BEHAVIOR_TYPE.SIEGE_BREAK)
    end)
    self.btn3UIButton = self:AddComponent(UIButton, "SizeChangeRoot/root/RightButtons/btn3_UIButton")
    self.btn3UIButton:SetOnClick(function()
        OnClickRankView(self)
    end)
    self.Bottombtn1UIButton = self:AddComponent(UIButton, "SizeChangeRoot/root/RightButtons/btn4_UIButton")
    self.Bottombtn1_UIImage = self:AddComponent(UIImage, "SizeChangeRoot/root/RightButtons/btn4_UIButton/btn4_UIImage", AtlasConfig.DynamicNationTex)
    self.Bottombtn1UIButton:SetOnClick(function()
        BTBtn1Click(self)
    end)
    self.Bottombtn2UIButton = self:AddComponent(UIButton, "SizeChangeRoot/root/RightButtons/btn5_UIButton")
    self.Bottombtn2UIButton:SetOnClick(function()
        BTBtn2Click(self)
    end)

    self.grayMat = self.btn1_UIImage:GetMat()
end

local function OnEnable(self, package, buildingId)
    base.OnEnable(self)

    self.mapManager = NationCtrlManager:GetInstance():GetCurrentNationProxy().mapManager

    --设置3d坐标
    local tilePosX, tilePosY = NationUtil.GetXYByCellId(buildingId)
    local pos = self.mapManager:GetGridUnityCellToWorldByIntXYZ(tilePosX, tilePosY, 0)
    self.transform.position = Vector3.New(pos.x, pos.y, 0)
    self.transform.localScale = Vector3.New(0.6, 0.6, 1)

    self.buildingId = buildingId
    self.myUnionID = NationUnionData:GetInstance():GetNationUnionId()
    local buildInfo = NationMapInfoData:GetInstance():GetNationalMapById(buildingId)

    --0 中立，1， 我的联盟占领  2， 其他联盟占领
    if self.myUnionID ~= 0 and self.myUnionID == package.unionId then
        self.state = 1
    elseif package.unionId ~= 0 then
        self.state = 2
    else
        self.state = 0
    end

    self.curEndurance = package.endurance

    --保存当前建筑界面信息
    self.buildType = buildInfo.Type
    self.builddata = {}

    --title
    local iconImage = NationUtil.GetCityIconByType(buildInfo.Type)
    table.insert(self.builddata, 1, { name = buildInfo.Name, icon = iconImage, level = string.format("Lv.%d", buildInfo.BuildLv) })

    --property
    local terrainStr = NationUtil.GetCellTerrainByType(buildInfo.Terrain)
    local belongName = DataUtil.GetClientText(200041)
    local allianceIcon = nil
    if isNilOrEmpty(package.unionName) == false then
        belongName = package.unionName
        allianceIcon = ""
    end
    table.insert(self.builddata, 2, { guishu = { lablename = DataUtil.GetClientText(200082), value = belongName, icon = allianceIcon }, terrain = { lablename = DataUtil.GetClientText(200083), value = terrainStr }, time = { lablename = DataUtil.GetClientText(200084), value = nil, valueText = nil } })
    CalculateSiegeStartTime(self, package.status)
    --property1
    local monsterInfo = NationMapInfoData:GetInstance():GetNationalWar_m_guardByTypeAndLevel(NationDefine.NATION_WAR_GUARD_TYPE.YU_DU, buildInfo.BuildLv)
    table.insert(self.builddata, 3, { najiu = { lablename = DataUtil.GetClientText(200085), value = math.modf(package.endurance) .. "/" .. buildInfo.Duration, slider = math.modf(package.endurance) / buildInfo.Duration },
                                      shoujun = { lablename = DataUtil.GetClientText(200086), value = DataUtil.GetClientText(200087) .. monsterInfo.Difficult .. "  " .. math.modf(package.guardNum) .. "/" .. monsterInfo.GuardNum } })
    --income
    local item = {}
    local itemInfo = nil
    for k, v in ipairs(buildInfo.OtherProp) do
        itemInfo = ItemInfo[v.Id]
        item[k] = {}
        item[k].icon = itemInfo.Icon
        item[k].name = itemInfo.Name
        item[k].value = string.format(DataUtil.GetClientText(200056),v.Val)
    end
    table.insert(self.builddata, 4, item)

    --Des
    table.insert(self.builddata, 5, { des = buildInfo.Des })

    --坐标收藏
    self.collectPosID = NationCollectPosData:GetInstance():GetPosPointIDByData(self.buildingId)
    if self.collectPosID then
        self.Bottombtn1_UIImage:SetSpriteName("ui_t_c2_630")
    else
        self.Bottombtn1_UIImage:SetSpriteName("ui_t_c2_592")
    end

    RefreshCountDownTimer(self, self.builddata[2].time.value, self.builddata[2].time.valueText)
    self:OnRefresh()
end

local function OnRefresh(self)
    -- 各组件刷新
    local data = self.builddata
    --title
    self.titleIconUIImage:SetSpriteName(data[1].icon)
    self.titleNameUIText:SetText(data[1].name)
    self.titleLevelUIText:SetText(data[1].level)
    --Property1
    self.textlableUIText:SetText(data[2].guishu.lablename)--归属
    self.textValueUIText:SetText(data[2].guishu.value)--耐久
    if data[2].guishu.icon ~= nil then
        self.iconImage:SetActive(true)
        --todo
        --self.iconImage:SetSpriteName(data[2].guishu.icon)
    else
        self.iconImage:SetActive(false)
    end

    self.textlable2UIText:SetText(data[2].terrain.lablename)
    self.textValue2UIText:SetText(data[2].terrain.value)
    self.textlable3UIText:SetText(data[2].time.lablename)

    self.textValue3UIText:SetText("<color=#76EECD>" .. UIUtil.GetTimeStrDHMS(data[2].time.value) .. "</color>" .. data[2].time.valueText)--00FFF0
    --Property2
    self.textlablesUIText:SetText(data[3].najiu.lablename)
    self.textValuesUIText:SetText(data[3].najiu.value)
    self.valueUISlider:SetValue(data[3].najiu.slider)
    self.textlables2UIText:SetText(data[3].shoujun.lablename)
    self.textValues2UIText:SetText(data[3].shoujun.value)
    --收益
    if self.buildType < NationUtil.BUILDING_TYPE_GUAN_AI then
        --域都或卫都 背板拉长
        self.bGtrans.sizeDelta = Vector2(422.01, 558.07)--430.700
        self.income:SetActive(true)
        for k, v in ipairs(data[4]) do
            self.dropItemTab[k].icon:SetSpriteName(v.icon)
            self.dropItemTab[k].nameText:SetText(v.name)
            self.dropItemTab[k].valueText:SetText(v.value)
            self.dropItemTab[k].itemObj:SetActive(true)
        end
    else
        --关隘 需要隐藏收益同时背板缩短
        self.bGtrans.sizeDelta = Vector2(422.01, 323.92)--430,505
        self.income:SetActive(false)
    end
    --描述信息
    self.bottomUIText:SetText(data[5].des)
    --功能按钮
    if self.isActiveStart then
        self.btn1_UIImage:SetMat()
        self.btn2_UIImage:SetMat()
    else
        self.btn1_UIImage:SetMat(self.grayMat)
        self.btn2_UIImage:SetMat(self.grayMat)
    end
end

local function OnDisable(self)
    base.OnDisable(self)
    if self.countDownTimer ~= nil then
        TimerManager:GetInstance():SimpleTimerStop(self.countDownTimer)
        self.countDownTimer = nil
    end

    self.buildingId = nil
    self.mapManager = nil
    self.myUnionID = nil
    self.buildType = nil
    self.curEndurance = nil
    self.isActiveStart = nil
    self.collectPosID = nil

    self.state = nil
    self.builddata = {}
end

local function OnAddListener(self)
    base.OnAddListener(self)

    self:AddUIListener(UIMessageNames.UI_NATION_BUILDINFO_CLOSE, CloseWindow)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)

    self:RemoveUIListener(UIMessageNames.UI_NATION_BUILDINFO_CLOSE, CloseWindow)
end

UINationSiegeBuildInfo.OnCreate = OnCreate
UINationSiegeBuildInfo.OnEnable = OnEnable
UINationSiegeBuildInfo.OnRefresh = OnRefresh
UINationSiegeBuildInfo.OnDisable = OnDisable
UINationSiegeBuildInfo.OnAddListener = OnAddListener
UINationSiegeBuildInfo.OnRemoveListener = OnRemoveListener
UINationSiegeBuildInfo.CloseWindow = CloseWindow

return UINationSiegeBuildInfo
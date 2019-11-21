local NationCollectPosData = BaseClass("NationCollectPosData", Singleton)
local NationUtil = require "GameLogic.Nation.NationUtil"

local PosPointData = {
    ID = 0, --id
    posID = 0, --一级坐标ID
    subPosID = 0, --二级坐标ID
    subInfoID = 0, --二级坐标的信息ID（资源区，讨伐区）
    areaID = 0, --讨伐区专用，分区ID
    posX = 0, --x坐标
    posY = 0, --y坐标
    name = "", --名称
    index = 0, --索引
    posStr = "", --文本
}

local PosPointDataModel = DataClass("PosPointData", PosPointData)

local function __init(self)
    self.posPointList = {}

    NationNetManager:GetInstance():SendGetCollectPositionList(Bind(self, self.ParseServerData))
end

local function ParseServerData(self, severData)
    if severData == nil then
        return
    end

    for _, v in ipairs(severData) do
        local temp = PosPointDataModel.New()
        temp.ID = v.index
        temp.posID = v.townId
        temp.subPosID = v.monsterId
        temp.subInfoID = v.posType
        temp.areaID = v.regionId
        temp.posX = math.modf(v.x)
        temp.posY = math.modf(v.y)
        temp.name = v.rename

        temp.posStr = string.format("(%s，%s)", temp.posX, temp.posY)

        table.insert(self.posPointList, temp)
    end

    DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_POS_LIST_UPDATE)
end

local function GetPosPointIDByData(self, posID, subPosID, areaID)
    if table.length(self.posPointList) > 0 then
        for _, v in ipairs(self.posPointList) do
            if areaID and areaID ~= 0 and subPosID ~= nil and subPosID ~= 0 then
                if posID == v.posID and subPosID == v.subPosID and areaID == v.areaID then
                    return v.ID
                end
            elseif subPosID and subPosID ~= nil and subPosID ~= 0 and (areaID == 0 or areaID == nil) then
                if posID == v.posID and subPosID == v.subPosID then
                    return v.ID
                end
            elseif posID == v.posID and v.subPosID == 0 and v.areaID == 0 then
                return v.ID
            end
        end
    end
    return nil
end

--添加一个新的收藏点
local function AddNewPointData(self, posID, subID, subPosID, areaID, name)
    if table.length(self.posPointList) >= NationMapInfoData:GetInstance():GetNationalGlobal().PointNumLimit then
        UISpecial:GetInstance():UITipText("收藏坐标已到达上限")
        return
    end

    if GetPosPointIDByData(self, posID, subPosID, areaID) then
        UISpecial:GetInstance():UITipText("该坐标已经收藏")
        return
    end

    local buildInfo = NationMapInfoData:GetInstance():GetNationalMapById(posID)
    local targetID = posID
    if subPosID and subPosID ~= 0 and buildInfo.Type ~= NationUtil.BUILDING_TYPE_PUNITIVE and buildInfo.Type ~= NationUtil.BUILDING_TYPE_RESOURCE then
        targetID = subPosID
    end

    local posX = math.modf(targetID / 10000)
    local posY = targetID % 10000

    local function CallbackFunc(ID)
        local temp = PosPointDataModel.New()
        temp.ID = ID
        temp.posID = posID
        temp.subPosID = subPosID or 0
        temp.subInfoID = subID or 0
        temp.areaID = areaID or 0
        temp.posX = posX
        temp.posY = posY
        temp.name = name
        temp.posStr = string.format("(%s，%s)", posX, posY)

        table.insert(self.posPointList, temp)
        UISpecial:GetInstance():UITipText("收藏成功")
    end

    local sendTab = {}
    sendTab.townId = posID
    sendTab.monsterId = subPosID or 0
    sendTab.regionId = areaID or 0
    sendTab.posType = subID or 0
    sendTab.x = posX
    sendTab.y = posY
    sendTab.rename = name

    NationNetManager:GetInstance():SendAddNewCollectPosition(sendTab, CallbackFunc)
end

--删除一个坐标收藏点
local function DeletePointData(self, id)
    local function CallbackFunc()
        for k, v in ipairs(self.posPointList) do
            if v.ID == id then
                table.remove(self.posPointList, k)
                break
            end
        end
        UISpecial:GetInstance():UITipText("成功取消收藏该坐标点")
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_POS_LIST_UPDATE)
    end

    NationNetManager:GetInstance():SendRemoveOneCollectPosition(id, CallbackFunc)
end

local function ChangePointName(self, id, nameStr)
    local function CallbackFunc()
        for _, v in ipairs(self.posPointList) do
            if v.ID == id then
                v.name = nameStr
                break
            end
        end
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_POS_LIST_UPDATE)
    end

    NationNetManager:GetInstance():SendChangePointPosName(id, nameStr, CallbackFunc)
end

local function GetPosPointList(self)
    return self.posPointList
end

NationCollectPosData.__init = __init
NationCollectPosData.ParseServerData = ParseServerData
NationCollectPosData.AddNewPointData = AddNewPointData
NationCollectPosData.DeletePointData = DeletePointData
NationCollectPosData.ChangePointName = ChangePointName
NationCollectPosData.GetPosPointList = GetPosPointList
NationCollectPosData.GetPosPointIDByData = GetPosPointIDByData

return NationCollectPosData
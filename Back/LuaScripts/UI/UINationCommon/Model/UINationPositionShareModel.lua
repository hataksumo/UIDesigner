--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

--与Sever的消息类型枚举保持一致，相差1
local EnumChannelType = {
    Mail = 0, --邮件 （这个单独加的，服务器没有）
    World = 1, --世界消息
    System = 2, --系统消息
    Team = 3, --队伍消息
    Nation = 4, --国战消息
    League = 5, --联盟消息
}

local UINationPositionShareModel = BaseClass("UINationPositionShareModel", UIBaseModel)
local base = UIBaseModel
local NationUtil = require "GameLogic.Nation.NationUtil"
local OutlawMonsterInfo = DataUtil.GetData("national_crusade_info")

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 窗口生命周期内保持的成员变量放这

end

-- 打开
local function OnEnable(self, data)
    base.OnEnable(self)
    -- 窗口关闭时可以清理的成员变量放这

    self.posID = math.modf(data.posID)
    self.subPosID = math.modf(data.subPosID)
    self.areaID = math.modf(data.areaID)

    self.richReplaceList = {}

    local buildInfo = NationMapInfoData:GetInstance():GetNationalMapById(data.posID)

    local posX = math.modf(self.posID / 10000)
    local posY = self.posID % 10000
    if self.subPosID ~= 0 then
        if buildInfo.Type == NationUtil.BUILDING_TYPE_TOWN then
            --什么都没有
        elseif buildInfo.Type == NationUtil.BUILDING_TYPE_RESOURCE then
            local resInfo = NationMapInfoData:GetInstance():GetNationalResInfoById(data.infoID)
            local name = NationUtil.GetResNameByType(resInfo.Type) .. "Lv." .. resInfo.level
            local richTemp = {}
            richTemp.richText = string.format("<color=#21C839><a href=JumpToPos_%s_%s>%s(%s,%s)</a></color>", self.posID, self.subPosID, name, posX, posY)
            richTemp.showText = string.format("%s(%s,%s)", name, posX, posY)
            richTemp.patText = string.format("%s%%(%s,%s%%)", name, posX, posY)
            table.insert(self.richReplaceList, richTemp)
        elseif buildInfo.Type == NationUtil.BUILDING_TYPE_PUNITIVE then
            local resInfo = OutlawMonsterInfo[data.infoID]
            local name = resInfo.Name .. "Lv." .. resInfo.Level
            local richTemp = {}
            richTemp.richText = string.format("<color=#21C839><a href=JumpToPos_%s_%s_%s>%s(%s,%s)</a></color>", self.posID, self.subPosID, self.areaID, name, posX, posY)
            richTemp.showText = string.format("%s(%s,%s)", name, posX, posY)
            richTemp.patText = string.format("%s%%(%s,%s%%)", name, posX, posY)
            table.insert(self.richReplaceList, richTemp)
        else
            posX = math.modf(self.subPosID / 10000)
            posY = self.subPosID % 10000
            local resInfo = NationMapInfoData:GetInstance():GetCellInfoAndBuildingInfoByCellId(data.infoID)
            local name = resInfo.Name .. "Lv." .. resInfo.BuildLv
            local richTemp = {}
            richTemp.richText = string.format("<color=#21C839><a href=JumpToPos_%s_%s>%s(%s,%s)</a></color>", self.posID, self.subPosID, name, posX, posY)
            richTemp.showText = string.format("%s(%s,%s)", name, posX, posY)
            richTemp.patText = string.format("%s%%(%s,%s%%)", name, posX, posY)
            table.insert(self.richReplaceList, richTemp)
        end
    else
        local richTemp = {}
        richTemp.richText = string.format("<color=#21C839><a href=JumpToPos_%s>%s(%s,%s)</a></color>", self.posID, buildInfo.Name, posX, posY)
        richTemp.showText = string.format("%s(%s,%s)", buildInfo.Name, posX, posY)
        richTemp.patText = string.format("%s%%(%s,%s%%)", buildInfo.Name, posX, posY)
        table.insert(self.richReplaceList, richTemp)
    end

    self.channelList = {}
    --self.channelList[1] = {}
    --self.channelList[1].channel = EnumChannelType.Mail
    --self.channelList[1].text = "邮件分享"
    --self.channelList[2] = {}
    --self.channelList[2].channel = EnumChannelType.World
    --self.channelList[2].text = "世界频道"
    self.channelList[1] = {}
    self.channelList[1].channel = EnumChannelType.Nation
    self.channelList[1].text = DataUtil.GetClientText(200182)

    if NationUnionData:GetInstance():GetPlayerNationUnionData() ~= 0 then
        self.channelList[2] = {}
        self.channelList[2].channel = EnumChannelType.League
        self.channelList[2].text = DataUtil.GetClientText(200183)
    end

    self:OnRefresh()
end

-- 刷新全部数据
local function OnRefresh(self)


end

-- 监听
local function OnAddListener(self)
    base.OnAddListener(self)
    --添加监听

end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- 移除监听

end

-- 关闭
local function OnDisable(self)
    base.OnDisable(self)
    -- 清理成员变量
    self.channelList = {}
    self.posID = nil
    self.subPosID = nil
    self.areaID = nil

    self.richReplaceList = {}
end

-- 销毁
local function OnDestroy(self)
    base.OnDestroy(self)
    -- 清理成员变量

end

UINationPositionShareModel.OnCreate = OnCreate
UINationPositionShareModel.OnEnable = OnEnable
UINationPositionShareModel.OnRefresh = OnRefresh
UINationPositionShareModel.OnAddListener = OnAddListener
UINationPositionShareModel.OnRemoveListener = OnRemoveListener
UINationPositionShareModel.OnDisable = OnDisable
UINationPositionShareModel.OnDestroy = OnDestroy
UINationPositionShareModel.EnumChannelType = EnumChannelType

return UINationPositionShareModel
--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UINationCollectPointModel = BaseClass("UINationCollectPointModel", UIBaseModel)
local base = UIBaseModel
local NationUtil = require "GameLogic.Nation.NationUtil"

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 窗口生命周期内保持的成员变量放这

end

-- 打开
local function OnEnable(self, buildID, subInfoID, subPosID, areaID, originNameTab)
    base.OnEnable(self)
    -- 窗口关闭时可以清理的成员变量放这

    self.textLimit = NationMapInfoData:GetInstance():GetNationalGlobal().PointNameLimit

    self.buildID = buildID
    self.subID = subInfoID
    self.areaID = areaID
    self.subPosID = nil
    self.buildName = nil
    self.buildStr = nil

    self.posX = math.modf(self.buildID / 10000)
    self.posY = self.buildID % 10000


    local buildInfo = NationMapInfoData:GetInstance():GetNationalMapById(buildID)
    if subPosID and subPosID ~= 0 then
        local subBuildInfo = nil
        if buildInfo.Type == NationUtil.BUILDING_TYPE_TOWN then
            --什么都没有
        elseif buildInfo.Type == NationUtil.BUILDING_TYPE_RESOURCE then
            local ResPointInfo = DataUtil.GetData("national_res_info")
            subBuildInfo = ResPointInfo[self.subID]
            self.buildName = NationUtil.GetResNameByType(subBuildInfo.Type) .. "Lv." .. subBuildInfo.level
            self.subPosID = subPosID
        elseif buildInfo.Type == NationUtil.BUILDING_TYPE_PUNITIVE then
            local OutlawMonsterInfo = DataUtil.GetData("national_crusade_info")
            subBuildInfo = OutlawMonsterInfo[self.subID]
            self.buildName = subBuildInfo.Name .. "Lv." .. subBuildInfo.Level
            self.subPosID = subPosID
        else
            self.subPosID = subPosID
            self.posX = math.modf(self.subPosID / 10000)
            self.posY = self.subPosID % 10000
            subBuildInfo = NationMapInfoData:GetInstance().national_battleZone[self.subPosID]
            self.buildName = subBuildInfo.Name .. "Lv." .. subBuildInfo.BuildLv
        end
    else
        self.buildName = buildInfo.Name
    end

    self.buildStr = self.buildName .. string.format("(%s，%s)", self.posX, self.posY)

    if originNameTab then
        self.placeholderText = originNameTab.name
        self.originNameTab = originNameTab
    else
        self.placeholderText = self.buildName
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
    self.buildName = nil
    self.buildID = nil
    self.subID = nil
    self.areaID = nil
    self.subPosID = nil
    self.buildStr = nil
    self.textLimit = nil
    self.placeholderText = nil
    self.posX = nil
    self.posY = nil
    self.originNameTab = nil
end

-- 销毁
local function OnDestroy(self)
    base.OnDestroy(self)
    -- 清理成员变量

end

UINationCollectPointModel.OnCreate = OnCreate
UINationCollectPointModel.OnEnable = OnEnable
UINationCollectPointModel.OnRefresh = OnRefresh
UINationCollectPointModel.OnAddListener = OnAddListener
UINationCollectPointModel.OnRemoveListener = OnRemoveListener
UINationCollectPointModel.OnDisable = OnDisable
UINationCollectPointModel.OnDestroy = OnDestroy

return UINationCollectPointModel
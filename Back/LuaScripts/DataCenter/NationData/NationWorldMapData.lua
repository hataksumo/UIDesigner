--[[
-- 国战世界地图静态数据
--]]
local NationWorldMapData = BaseClass("NationWorldMapData", Singleton)

local function __init(self)
    self.allPath = {}

    --上一次查找的所有最短路径
    self.preFindMinPath = {}

    self:RoadFunc()
end

local function __delete(self)
    self.allPath = {}
    self.preFindMinPath = {}
end

local function GetAllCityMinRoadPath(self)
    return self.allPath
end

local function GetPreSearchMinDistancePath(self)
    return self.preFindMinPath
end

--寻路算法(弗洛伊德)
local function RoadFunc(self)
    local mapInfo = NationMapInfoData:GetInstance():GetNationalMap()
    local allPath = {}

    for _, v in pairs(mapInfo) do
        allPath[v.BuildId] = {}
        for _, w in pairs(mapInfo) do
            allPath[v.BuildId][w.BuildId] = {}
            if v.BuildId == w.BuildId then
                allPath[v.BuildId][w.BuildId].weight = 0
                allPath[v.BuildId][w.BuildId].path = {}
            else
                local roadAID = v.BuildId * 100000000 + w.BuildId
                local roadAInfo = NationMapInfoData:GetInstance().national_road_cost[tostring(roadAID)]
                local roadBID = w.BuildId * 100000000 + v.BuildId
                local roadBInfo = NationMapInfoData:GetInstance().national_road_cost[tostring(roadBID)]
                local roadInfo = roadAInfo or roadBInfo
                if roadInfo ~= nil then
                    allPath[v.BuildId][w.BuildId].weight = 1    -- todo, 添加路径的权重  roadInfo.weight
                    if allPath[v.BuildId][w.BuildId].path == nil then
                        allPath[v.BuildId][w.BuildId].path = {}
                    end
                    table.insert(allPath[v.BuildId][w.BuildId].path, roadInfo.RoadId)
                else
                    allPath[v.BuildId][w.BuildId].weight = 99999999
                    allPath[v.BuildId][w.BuildId].path = {}
                end
            end
        end
    end

    for _, v in pairs(mapInfo) do
        for _, w in pairs(mapInfo) do
            for _, u in pairs(mapInfo) do
                if allPath[v.BuildId][w.BuildId].weight + allPath[v.BuildId][u.BuildId].weight < allPath[w.BuildId][u.BuildId].weight then
                    allPath[w.BuildId][u.BuildId].weight = allPath[v.BuildId][w.BuildId].weight + allPath[v.BuildId][u.BuildId].weight
                    allPath[w.BuildId][u.BuildId].path = {}
                    for _, x in pairs(allPath[v.BuildId][w.BuildId].path) do
                        local roadID = x
                        table.insert(allPath[w.BuildId][u.BuildId].path, roadID)
                    end
                    for _, y in pairs(allPath[v.BuildId][u.BuildId].path) do
                        local roadID = y
                        table.insert(allPath[w.BuildId][u.BuildId].path, roadID)
                    end
                end
            end
        end
    end

    self.allPath = allPath
end

local function GetCurrentAllTeamToTargetPath(self, targetID)
    local needShowPathList = {}
    local needHidePathList = self.preFindMinPath
    if targetID ~= nil then
        for _, v in pairs(NationTeamData:GetInstance():GetAllNationTeamDataDict()) do
            if v.currentBehavior.startMapID and v.currentBehavior.startMapID ~= 0 then
                local startBuildInfo = NationMapInfoData:GetInstance():GetNationalMapById(v.currentBehavior.startMapID)
                local endBuildInfo = NationMapInfoData:GetInstance():GetNationalMapById(targetID)
                for _, w in pairs(self.allPath[startBuildInfo.BuildId][endBuildInfo.BuildId].path) do
                    needShowPathList[w] = w
                    if needHidePathList[w] ~= nil then
                        needHidePathList[w] = nil
                    end
                end
            end
        end
    end
    self.preFindMinPath = needShowPathList
    DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_WORLD_MAP_UPDATE_PATH, needShowPathList, needHidePathList)
end

NationWorldMapData.__init = __init
NationWorldMapData.__delete = __delete
NationWorldMapData.RoadFunc = RoadFunc
NationWorldMapData.GetAllCityMinRoadPath = GetAllCityMinRoadPath
NationWorldMapData.GetCurrentAllTeamToTargetPath = GetCurrentAllTeamToTargetPath
NationWorldMapData.GetPreSearchMinDistancePath = GetPreSearchMinDistancePath

return NationWorldMapData
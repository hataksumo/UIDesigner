--[[
-- added by wsh @ 2017-12-05
-- 服务器数据
--]]
local ChapterData = {
    _id = -1,
    _Name = "",
    _TapIcon="",
    _BackGround = "",
    _Res = 0,
    _StarBox = {},
    _Stars = 0,
    _BoxNum = 0,
    _Levels = {},
    _pass = false,
    _open = false,
    _SceneName="",
    _trilPortal=0,
    _extrBox={},
}
local LevelData = {
    _id = -1,
    _data = {},
    _star = 0,
    _StarIds={},
    _pass = false,
    _open = false,
}
local BoxData=
{
    _id=0,
    _chapterid = 0,
    _boxTrData={},
    _state=0,
}

local Level = {
    id = -1,

    StarIds={},

}
local CONST_NORMAL = 1
local CONST_DIFFICULT = 2
local CONST_GUIDE = 3
local MapData = BaseClass("MapData", Singleton)
local Level = DataClass("LevelItem", LevelData)
local LevelModel = DataClass("LevelModel",LevelData)
local BoxDataModel=DataClass("BoxData",BoxData)
local ChapterModel = DataClass("ChapterModel",ChapterData)
local function InitChapterLevelist(Type)
    local allChapter = {}
    local leveldata = DataUtil.GetData("level")
    if leveldata == nil then
        Logger.LogError("GetShowChapter level data is error")
        return  nil
    end
    local chapterlist =  leveldata[Type]
    local mapData = MapData:GetInstance()
    local maxlevelid = 0
    if chapterlist ~= nil then
        for k,v in pairs(chapterlist) do
            if type(k) == "number" then
                local newChapter = ChapterModel.New()
                newChapter._id = k
                newChapter._Name = v.Name
                newChapter._TapIcon=v.TapIcon
                newChapter._BackGround = v.BackGround
                newChapter._Res = table.count(v.Levels)
                newChapter._SceneName=v.Scene;
                newChapter._extrBox=v.ExtBox;
                newChapter._trilPortal=v.DrillPortal;
                maxlevelid = k*100+v.Res
                newChapter._pass = false --mapData:CheckPassChapter(maxlevelid)
                newChapter._open = false -- mapData:CheckOpenChapter(k)
                if v.Levels ~= nil then
                    --初始关卡
                    local levelIndex = 1
                    local localstatus = nil
                    for k2,v2 in pairs(v.Levels) do
                        if type(k2) == "number" then
                            --localstatus = mapData:GetLevelStatus(k2)
                            local newChapterLevel = LevelModel.New()
                            newChapterLevel._id = k2
                            newChapterLevel._data = v2
                            newChapterLevel._star = 0 --(localstatus ~= nil and localstatus.star ~= nil ) and localstatus.star or 0
                            --newChapterLevel._StarIds = {} (localstatus ~= nil and localstatus.starIds ~= nil) and localstatus.starIds or nil
                            --newChapter._Stars = newChapterLevel._star + newChapter._Stars
                            newChapterLevel._pass = false --mapData:CheckPassLevel(k2)
                            newChapterLevel._open = false --mapData:CheckOpenLevel(k2)
                            levelIndex = k2%100
                            newChapter._Levels[levelIndex] = newChapterLevel
                        end
                    end
                end
                --初始化宝箱
                if v.StarBox ~= nil then
                    --local boxstatus = mapData:GetBoxStatus(k)
                    for k1,v1 in pairs(v.StarBox) do
                        if type(k1) == "number" then
                            newChapter._BoxNum = (k1 > newChapter._BoxNum) and k1 or newChapter._BoxNum
                            local newChapterBox = BoxDataModel.New()
                            newChapterBox._id = k1
                            newChapterBox._chapterid = k

                            newChapterBox._state = 0
                            newChapterBox._boxTrData = v1
                            --table.insert(newChapter._StarBox,newChapterBox)
                            newChapter._StarBox[k1] = newChapterBox

                        end
                    end

                end
                --获取奖励列表
                local ChapterIndex = k%100
                allChapter[ChapterIndex]=newChapter
            end
        end
    end
    return {curMaxLevelid = -1,chapters=allChapter}
end

local function __init(self)

    --初始化章节数据
    self.allChapter = {}
    self.allChapter[CONST_NORMAL] = InitChapterLevelist(CONST_NORMAL)
    self.allChapter[CONST_DIFFICULT] = InitChapterLevelist(CONST_DIFFICULT)
    self.allChapter[CONST_GUIDE] = InitChapterLevelist(CONST_GUIDE)
    self.normal_levelbeginid = 10101
    self.dif_levelbeginid = 20101
    self.pass_teach_id = -1
    self.cur_teach_id = -1
    -- 所有服务器列表
    --self.normal = {}
    --self.hard = {}
    --self.curSelectType = -1
    --self.curSelectChapter = -1
    --self.curSelectLevel = -1
    --self.soloBossInfo = {}
    self.targetData = {}
    self.targetAwardId = 0
end
local function ResetChapterStars(self)
    if self.allChapter == nil or self.allChapter[CONST_NORMAL] or self.allChapter[CONST_DIFFICULT] == nil then
        Logger.Log("章节数据错误")
        return
    end
    for i, v in ipairs(self.allChapter[CONST_NORMAL].chapters) do
        v._Stars = 0
    end
    for i, v in ipairs(self.allChapter[CONST_DIFFICULT].chapters) do
        v._Stars = 0
    end
end
--local function GetPassDatas(id, defActivity)
--    local passData = { activityId = defActivity, curMaxLevelid = -1,passLevels={}}
--    return passData
--end
local function LevelIdIsNormal(id)
    if Mathf.Floor(id / 10000) == 1 then
        return 1
    end
    return 2
end

local function TeachingEnd(self)
    if self.cur_teach_id > self.pass_teach_id then
        self.pass_teach_id = self.cur_teach_id
    end
end
local function GetChapterInfobyChapterid(self,chapterid)
    --困难 普通
    local Type = Mathf.Floor(chapterid / 100)
    --章节索引
    local ChapterIndex = chapterid%100

    return self.allChapter[Type].chapters[ChapterIndex]
end
--获取应该显示的章节索引
local function GetShowChapterIndex(self)
    local _isFirst=self.isFirst;
    self.isFirst=false;
    local curSelectType= self.curSelectType ==nil and 1 or self.curSelectType;
    local showChapterIndex=1;
    local curMaxLevelId=self.allChapter[curSelectType].curMaxLevelid;
    --一关没打，直接跳转到第一章
    if curMaxLevelId==-1 then
        return showChapterIndex;
    end
    local curChapterId=math.floor(curMaxLevelId/100);
    local chapterinfo = GetChapterInfobyChapterid(self,curChapterId)
    local curChapterIndex=curChapterId%100;
    showChapterIndex=curMaxLevelId==curChapterId*100 + chapterinfo._Res and curChapterIndex+1 or curChapterIndex;
    showChapterIndex=curChapterIndex+1>#self.allChapter[curSelectType].chapters and curChapterIndex or showChapterIndex;
    if not _isFirst and self.curSelectChapterIndex~=nil then
        showChapterIndex= self.allChapter[curSelectType].isNewPassLv and showChapterIndex or self.curSelectChapterIndex;
    end
    return showChapterIndex;
end


local function CheckPassLevel(self,levelId)
    --困难 普通
    local Type = Mathf.Floor(levelId / 10000)
    if Type == 10 then
        Type = 3
    end
    if self.allChapter[Type] == nil then
        Logger.Log("CheckPassLevel..Type null---"..levelId)
        return false
    end
    if self.allChapter[Type].curMaxLevelid >= levelId then
        return true
    end
    return false
end
local function GetLevelInfos(self,levelid)
    --困难 普通
    local Type = Mathf.Floor(levelid / 10000)
    --章节索引
    local ChapterIndex = Mathf.Floor(levelid / 100)%100
    --节索引
    local leveindex = levelid%100
    return self.allChapter[Type].chapters[ChapterIndex]._Levels[leveindex]
end
local function CheckOpenLevel(self,levelId)
    local levelinfo = GetLevelInfos(self, levelId)
    if levelinfo._data.LastId ~= nil then
        for _, v in ipairs(levelinfo._data.LastId) do
            if not CheckPassLevel(self,v) then
                return false
            end
        end
    end
    return true
end

local function GetChapterInfo(self,levelid)
    --困难 普通
    local Type = Mathf.Floor(levelid / 10000)
    --章节索引
    local ChapterIndex = Mathf.Floor(levelid / 100)%100

    if Type <= 0 then
        return nil
    end
    if Type == 10 then
        Type =3
    end

    return self.allChapter[Type].chapters[ChapterIndex]
end



local function GetSelChapterInfo(self,Type,ChapterIndex)
    return self.allChapter[Type].chapters[ChapterIndex]
end
local function GetCurTypeList(self,Type)
    return self.allChapter[Type].chapters
end
--根据服务器数据更新困难普通关卡星级
local function UpdateStarByArray(self, data, star)
    if data == nil then
        return
    end
    if star > 0 and star < 3 then
        --0和3 星的没有条件数据，要不没达到，要不全满足，查本地表就行
        for _, v in ipairs(data) do
            local ChapterInfo = GetChapterInfo(self,v.levelId)
            local leveindex = v.levelId%100
            ChapterInfo._Levels[leveindex]._star = star
            ChapterInfo._Stars = ChapterInfo._Stars +star
            ChapterInfo._Levels[leveindex]._StarIds = {}

            if v.starId ~= nil then
                for _, vs in ipairs(v.starId) do
                    ChapterInfo._Levels[leveindex]._StarIds[vs] =1
                end
            end
        end
    elseif star == 3 then
        for _, v in ipairs(data) do
            local ChapterInfo = GetChapterInfo(self,v)
            local leveindex = v%100
            ChapterInfo._Levels[leveindex]._star = star
            ChapterInfo._Stars = ChapterInfo._Stars +star
            ChapterInfo._Levels[leveindex]._StarIds = {}
            for _, v1 in ipairs(ChapterInfo._Levels[leveindex]._data.StarRating) do
                ChapterInfo._Levels[leveindex]._StarIds[v1] =1
            end
        end
     end

end



local function PassLevel(self, levelId,starIds)

    local ChapterInfo = GetChapterInfo(self,levelId)
    if ChapterInfo == nil then
        Logger.LogError("PassLevel error"..levelId)
        return false
    end

    --困难 普通
    local Type = Mathf.Floor(levelId / 10000)
    if Type == 10 then
        Type = 3
    end
    if levelId > self.allChapter[Type].curMaxLevelid then
        self.allChapter[Type].curMaxLevelid = levelId
        self.allChapter[Type].isNewPassLv=true;
    else
        self.allChapter[Type].isNewPassLv=false;
    end
    --节索引
    local leveindex = levelId%100
    UIManager:GetInstance():Broadcast(UIMessageNames.UILEVELMAIN_REFRESH)
    if ChapterInfo._Levels[leveindex]._data.Type == 0 then
        return true
    end

    if starIds == nil or #starIds == 0 then
        return false
    end
    local star = #starIds
    --首先减去之前的星级数量
    ChapterInfo._Stars = ChapterInfo._Stars - ChapterInfo._Levels[leveindex]._star
    --保存当前星级
    ChapterInfo._Levels[leveindex]._star = star
    --累加星级
    ChapterInfo._Stars = ChapterInfo._Stars+star
    --获得星级的条件为1
    for _, vs in ipairs(starIds) do
        ChapterInfo._Levels[leveindex]._StarIds[vs]=1
    end
    --DataManager:GetInstance():Broadcast(DataMessageNames.ON_PASS_LEVEL)

end
----檢測制定章节是否有未领取宝箱
--local function CheckChapterIsGetAward(self, chapterid)
--    local type = Mathf.Floor(chapterid / 100)
--    local leveldata = DataUtil.GetData("level")
--    if leveldata == nil then
--        Logger.LogError(levelId.." data is error")
--        return  false
--    end
--    if leveldata[type] == nil or leveldata[type][chapterid] == nil then
--        Logger.LogError(levelId.." data is error")
--        return false
--    end
--
--    local count = table.count(leveldata[type][chaapterid].StarBox)
--    local info = GetLevelInfos(self, chapterid*100+1)
--    if info == nil then
--        Logger.LogError("CheckPassChapter error"..levelId)
--        return false
--    end
--    if info.
--    return leveldata[type][chaapterid].Levels[levelId]
--end

local function GetCurSelectLevelId(self)
    if self.curSelectLevelDoing == nil then
        return -1
    end
    return self.curSelectLevelDoing._id
end
local function GetCurSelectLevelData(self)
    if self.curSelectLevelDoing == nil then
        return nil
    end
    return self.curSelectLevelDoing
end
local function SetCurSelectLevelData(self,levledata)
    self.curSelectLevelDoing = levledata
end
--第一版挂机数据，无用
local function SetHangUpTeamInfo(self, v)
    local teamIds = {}
    for m, n in ipairs(v.teamIds) do
        table.insert(teamIds, n)
    end
    self.hangUpInfo[v.levelId] = { startTime = v.startTime, teamIds = teamIds }
end
--第一版挂机数据，无用
local function ResetCurHangUpTeam(self)
    self.hangUpInfo[self.curSelectLevel] = nil
end

--更新章节奖励信息
local function RefreshChapterAward(self, chapterId, star)
    local tbchapterinfo = GetChapterInfobyChapterid(self, chapterId)
    if tbchapterinfo ~= nil then
        tbchapterinfo._StarBox[star]._state = 1
    end

    UIManager:GetInstance():Broadcast(UIMessageNames.UILEVELMAIN_REFRESH_CHAPTER_BOX)
end
-- 解析网络数据
local function ParseMapData(self, data)
    --建立通过关卡的字典
    self.isFirst=true;
    self.allChapter[CONST_NORMAL].curMaxLevelid = data.normalLevel
    self.allChapter[CONST_DIFFICULT].curMaxLevelid = data.hardLevel
    self.allChapter[CONST_GUIDE].curMaxLevelid = data.guideLevel
    --充值所有管卡星级炜0
    ResetChapterStars(self)
    --更新通关星级
    UpdateStarByArray(self, data.starNone, 0)
    UpdateStarByArray(self, data.starOne, 1)
    UpdateStarByArray(self, data.starTwo, 2)
    UpdateStarByArray(self, data.starThree, 3)
    self.targetAwardId = data.rewardId
    self.levelRewards={};
    if data.levelRewards then
        for i, v in ipairs(data.levelRewards) do
            table.insert(self.levelRewards,v);
        end
    end
    --更新章节领奖信息
    if data.infos ~= nil then
        for _, v in ipairs(data.infos) do
            local Type = Mathf.Floor(v.chapterId / 100)
            --章节索引
            local ChapterIndex = v.chapterId % 100
            ----0 没领 1：已领
            for _, v2 in ipairs(v.stars) do
                self.allChapter[Type].chapters[ChapterIndex]._StarBox[v2]._state = 1
            end

         end
    end

    CardData:GetInstance():CheckALLRedByCard()
end

--检测某一章是否通关
--type 2-困难 1-普通
local function CheckPassChapter(self, chapterid)
    local chapterinfo = GetChapterInfobyChapterid(self,chapterid)
    local MaxlevelId = chapterinfo._id*100 + chapterinfo._Res
    return CheckPassLevel(self, MaxlevelId)
end

--local function GetLevelStatus(self, levelId)
--    local info = GetLevelInfos(self, levelId)
--    if info == nil then
--        Logger.LogError("GetLevelStatus error"..levelId)
--        return false
--    end
--    if info.passLevels[levelId] ~= nil then
--        return info.passLevels[levelId]
--    end
--    return nil
--end
--检测某一章是否开启
--type 2-困难 1-普通
local function CheckOpenChapter(self, chapterid)
    --只检测第一关是否就行
    local firstlevelId = chapterid*100+1
    --默认开启
    local Type = Mathf.Floor(chapterid / 100)
    if Type == 1 then
        if self.allChapter[Type].curMaxLevelid == -1 and firstlevelId == self.normal_levelbeginid then
            return true
        end
    else
        if self.allChapter[Type].curMaxLevelid == -1 and CheckPassLevel(self,self.dif_levelbeginid) then
          return true
        end
    end
    return CheckOpenLevel(self,firstlevelId)
end
----获取指定章节宝箱领取状态
--local function GetBoxStatus(self,chapter)
--    local info = GetLevelInfos(self, chapter*100+1)
--    if info == nil then
--        Logger.LogError("CheckPassChapter error"..levelId)
--        return false
--    end
--    return info.chapters[chapter]
--end
--获取当前类型的最新章节索引
local function GetLastChapterIndex(self,Type)
    --TODO:需要实现获取最后一个通关关卡的ID
    if self.allChapter[CONST_NORMAL].curMaxLevelid == -1 then
        return 1
    else
        return Mathf.Floor(self.allChapter[CONST_NORMAL].curMaxLevelid/100)%100
    end
end
local function GetLastWinLevelId(self)
    --TODO:需要实现获取最后一个通关关卡的ID
    if self == nil then
        Logger.LogError("请使用：调用方式")
        return -1
    end

    return self.allChapter[CONST_NORMAL].curMaxLevelid,self.allChapter[CONST_DIFFICULT].curMaxLevelid
end
--[[
local function SyncSoloBossRequest(self)
    local msd_id = MsgIDDefine.PBCHAPTER_SYNC_SOLO_BOSS_REQUEST
    --local msg = (MsgIDMap[msd_id])()
    Logger.LogAny("个人boss发送同步数据")

    local callbackFunc = function(self, msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.LogAny("error； " .. " OpCode :" .. msg_obj.OpCode .. " error id : " .. msg_obj.Packages.id .. " error msg : " .. msg_obj.Packages.msg)
            return
        end
        self:ParseSoloBossInfoData(msg_obj.Packages.soloBossInfo)
        -- 正常处理
        Logger.LogAny("正常 SyncSoloBossRequest； " .. " msg : " .. table.dump(msg_obj.Packages, nil, 10))
    end
    NetManager:GetInstance():SendMessage(msd_id, nil, Bind(self, callbackFunc))
end
]]

--设置当前选中的难度类型
local function SetSelectType(self,_type)
    self.curSelectType=_type;
end

--设置当前选中的章节索引
local function SetSelectChapter(self,_chapterIndex)
    self.curSelectChapterIndex=_chapterIndex;
end

--获取章节奖励数据
local function GetChapTargetRewardData(self)
    local award_data = DataUtil.GetData("cha_target")
    local itemData = DataUtil.GetData("item")
    local chapterData

    local data = {}
    if self.targetAwardId == 0 then
        self.nextId = 101
    else
        self.nextId =  award_data[self.targetAwardId].Nxt
    end
    chapterData = award_data[self.nextId]
    data.nowId = self.nextId
    if chapterData == nil then
        return
    end
    data.nextId = chapterData.Nxt
    data.lvId = chapterData.LevelId
    data.award = {}
    for i, v in ipairs(chapterData.Award) do
        local award = {}
        award.id = v.Id
        award.icon = itemData[award.id].Icon
        award.type = itemData[award.id].ItemType
        award.quality = itemData[award.id].Quality
        if award.type == 11 then
            award.frame = SpriteDefine:GetCardTopFrameByQuality(itemData[award.id].Quality)
        elseif award.type == 13 then
            award.frame = SpriteDefine:GetItemQualityFrameByType(itemData[award.id].Quality)
        end
        award.num = v.Val
        table.insert(data.award,award)
    end
    data.cardName = chapterData.CardName
    data.cardType = chapterData.CardType
    data.cardQuality = chapterData.CardQuality
    data.haiBao = chapterData.HaiBao
    data.icon = chapterData.Icon
    data.frame = chapterData.Frame
    data.des = chapterData.Des
    data.picture = chapterData.AwardShow.Pic1
    self.targetData = data
    return self.targetData
end

local function __delete(self)
    self.allChapter = nil
    self.normal_levelbeginid = -1
    self.dif_levelbeginid = -1
    self.pass_teach_id = -1
    self.cur_teach_id = -1
    self.targetData = nil
    self.targetAwardId = 0
end

--设置单个节点的宝箱
local function SetLevelBoxRewardList(self,_levelId)
    if self.levelRewards then
        table.insert(self.levelRewards,_levelId);
    else
        self.levelRewards={};
        table.insert(self.levelRewards,_levelId);
    end    
end

MapData.SetLevelBoxRewardList=SetLevelBoxRewardList;
MapData.__delete = __delete
MapData.__init = __init
MapData.TeachingEnd = TeachingEnd
MapData.ParseMapData = ParseMapData
MapData.CheckPassChapter = CheckPassChapter
MapData.CheckOpenChapter = CheckOpenChapter
--MapData.CheckPassSection = CheckPassSection
MapData.GetChapTargetRewardData = GetChapTargetRewardData
MapData.PassLevel = PassLevel
MapData.LevelIdIsNormal = LevelIdIsNormal
MapData.GetLevelInfos = GetLevelInfos
MapData.RefreshChapterAward = RefreshChapterAward
--MapData.GetLevelDatas = GetLevelDatas
MapData.SetHangUpTeamInfo = SetHangUpTeamInfo
MapData.ResetCurHangUpTeam = ResetCurHangUpTeam
MapData.RefreshChapterAward = RefreshChapterAward
MapData.CheckPassLevel = CheckPassLevel
MapData.CheckOpenLevel = CheckOpenLevel
--MapData.GetBoxStatus = GetBoxStatus
--MapData.GetLevelStatus = GetLevelStatus
MapData.GetLastWinLevelId = GetLastWinLevelId
MapData.GetLastChapterIndex = GetLastChapterIndex
MapData.GetCurTypeList = GetCurTypeList
MapData.GetSelChapterInfo = GetSelChapterInfo
MapData.GetChapterInfobyChapterid = GetChapterInfobyChapterid
MapData.GetCurSelectLevelId = GetCurSelectLevelId
MapData.GetCurSelectLevelData = GetCurSelectLevelData
MapData.SetCurSelectLevelData = SetCurSelectLevelData
MapData.SetSelectType=SetSelectType;
MapData.SetSelectChapter=SetSelectChapter;
MapData.GetShowChapterIndex=GetShowChapterIndex;
MapData.ResetChapterStars = ResetChapterStars
--MapData.GetPassData = GetPassData
return MapData
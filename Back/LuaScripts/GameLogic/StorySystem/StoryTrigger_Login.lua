---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhangshoufeng.
--- DateTime: 19/2/23 16:01
---

local StoryTrigger_SceneEnter = BaseClass("StoryTrigger_SceneEnter", BaseStoryTrigger)


local function CoTrigger(self, ...)
    local args = SafePack(...)
    local keywords
    if args.n > 0 then
        keywords = args[1]
    else
        Logger.LogError("StoryTrigger_SceneEnter:Trigger 参数错误!!!");
    end

    local ret = false
    if keywords ~= nil then
        --得到剧情加载器
        --local curLevel = MapData:GetInstance():GetCurSelectLevelId()
        --local normalLastLevel = MapData:GetInstance():GetLastWinLevelId()
        --self.curInfo = CoInfoLoader_LoginScene(self, keywords
        --, curLevel
        --, normalLastLevel
        --)

        local dataInst = StoryData:GetInstance()
        local dataType = StoryConstConfig.StoryTypeId.LoginScene

        self.curInfo = dataInst:GetInfoByIndex(dataType, 1)

        local loadRes ,storyNode = StoryManager:GetInstance():CoPreloadStory(self.curInfo,nil,true)
        if loadRes then
            self.curNode = storyNode
            ret = true
        end
    end
    return ret
end

local function CoPlayStory(self, ...)
    if (self.curNode ~= nil) then
        StoryManager:GetInstance():CoPlayStoryNode_KeepLastFrame(self.curNode,self.curInfo)
        --StoryManager:GetInstance():ClearEntities()
    end
end


StoryTrigger_SceneEnter.__init = __init
StoryTrigger_SceneEnter.CoTrigger = CoTrigger
StoryTrigger_SceneEnter.CoPlayStory = CoPlayStory
return StoryTrigger_SceneEnter
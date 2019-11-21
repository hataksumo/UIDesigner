local UINationWithResTipModel = BaseClass("UINationWithResTipModel", UIBaseModel)
local base = UIBaseModel

local NationUtil = require "GameLogic.Nation.NationUtil"
local GlobalData = DataUtil.GetData("global")
local CropsData = DataUtil.GetData("national_crops")

-- 创建
local function OnCreate(self)
    base.OnCreate(self)

    for _, v in pairs(GlobalData) do
        if v.Key == "UninstallReturn" then
            self.UninstallReturn = v.valueN
        end
    end
end

-- 打开
local function OnEnable(self, type, params)
    base.OnEnable(self)

    self.type = type
    self.showResItems = {}--显示资源{类别，个数}

    self.content_text = ""
    self.content_title = ""
    self.confirmCallBackParams = {}
    if self.type == NationDefine.NATION_RESOURCE_TIP_WINDOW_TYPE.DOWN_FORMATION then

        self.content_text = params[1]
        self.content_title = params[2]
        local cardId = params[3]
        local needCount = params[4]
        self.confirmCallBackParams = params[5]
        local teamId, team = NationTeamData:GetInstance():GetTeamIdAndTeamDataByCardId(cardId)
        local armyGroupId = NationTeamData:GetInstance():GetNationTeamDataById(teamId).armyGroupId
        local cropInfo = CropsData[armyGroupId]

        for _, v in pairs(cropInfo.Consume) do
            local item = {}
            item.type = v.Id
            item.value = math.floor(v.val * needCount * self.UninstallReturn)
            table.insert(self.showResItems, item)
        end
    elseif self.type == NationDefine.NATION_RESOURCE_TIP_WINDOW_TYPE.ARMY_GROUP_SWITCH then
        self.myParams = params
        self.content_text = self.myParams.content_text
        self.content_title = self.myParams.content_title
        if self.myParams.turnConsume ~= nil then
            for _, v in pairs(self.myParams.turnConsume) do
                local item = {}
                local selfNum = math.modf(NationPlayerData:GetInstance():GetNationResourceRealNumByItemId(v.id))
                local numStr = nil
                if selfNum < v.num then
                    numStr = string.format("%s/<color=#e04c4c>%s</color>", v.num, selfNum)
                else
                    numStr = string.format("%s/%s", v.num, selfNum)
                end
                item.type = v.id
                item.value = numStr
                table.insert(self.showResItems, item)
            end
        end
    elseif self.type == NationDefine.NATION_RESOURCE_TIP_WINDOW_TYPE.RECRUIT_RETURN then
        self.content_text = params.content_text
        self.content_title = params.content_title
        self.myParams = params
        if self.myParams.recruitReturnRes ~= nil then
            for k, v in pairs(self.myParams.recruitReturnRes) do
                local item = {}
                local numStr = nil
                numStr = string.format("%s", v)
                item.type = k
                item.value = numStr
                table.insert(self.showResItems, item)
            end
        end
    end
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

    self.type = nil
    self.content_text = nil
    self.content_title = nil
    self.showResItems = {}
    self.confirmCallBackParams = {}
end

-- 销毁
local function OnDestroy(self)
    base.OnDestroy(self)
    -- 清理成员变量

end

UINationWithResTipModel.OnCreate = OnCreate
UINationWithResTipModel.OnEnable = OnEnable
UINationWithResTipModel.OnRefresh = OnRefresh
UINationWithResTipModel.OnAddListener = OnAddListener
UINationWithResTipModel.OnRemoveListener = OnRemoveListener
UINationWithResTipModel.OnDisable = OnDisable
UINationWithResTipModel.OnDestroy = OnDestroy

return UINationWithResTipModel
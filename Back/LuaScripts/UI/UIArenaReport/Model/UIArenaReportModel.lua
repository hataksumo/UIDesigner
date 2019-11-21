--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UIArenaReportModel = BaseClass("UIArenaReportModel", UIBaseModel)
local base = UIBaseModel
local RobotInfo = DataUtil.GetData("arena_robot_card")
local CardInfo = DataUtil.GetData("card")
local ItemInfo = DataUtil.GetData("item")

local function HandleStringSplit(self, report_data)
    local str = CS.SharpZipTool.SharpGZip.Decompress(report_data.reportContent)
    --重新切割字符串
    local split_result = {}
    local search_pos_begin = 1
    local cur_find_num = 0
    local last_search_pos_begin = 1
    while true do
        local find_pos_begin, find_pos_end = string.find(str, "\n", search_pos_begin, true)
        if not find_pos_begin then
            break
        end
        if find_pos_begin >= search_pos_begin then
            if cur_find_num == 0 and #string.sub(str, last_search_pos_begin, find_pos_begin - 1) == 0 then
                last_search_pos_begin = find_pos_end + 1
            else
                cur_find_num = cur_find_num + 1
                if cur_find_num >= 50 then
                    split_result[#split_result + 1] = string.sub(str, last_search_pos_begin, find_pos_begin - 1)
                    cur_find_num = 0
                    last_search_pos_begin = find_pos_end + 1
                end
            end
        end
        search_pos_begin = find_pos_end + 1
    end

    if last_search_pos_begin <= string.len(str) then
        split_result[#split_result + 1] = string.sub(str, last_search_pos_begin)
    end

    return split_result
end

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 窗口生命周期内保持的成员变量放这
    self.report_info_data = ""
end

-- 打开
local function OnEnable(self, report_data, clientData)
    base.OnEnable(self)
    -- 窗口关闭时可以清理的成员变量放这

    self.report_info_data = CS.SharpZipTool.SharpGZip.Decompress(report_data.reportContent)
    self.report_info_A = HandleStringSplit(self, report_data)

    self.leftPlayerData = {}
    self.leftPlayerData.name = UserData:GetInstance():GetUserName()
    self.leftPlayerData.head = ItemInfo[UserData:GetInstance().pHead].Icon
    self.leftPlayerData.headBG = SpriteDefine:GetItemQualityFrameByType(ItemInfo[UserData:GetInstance().pHead].Quality)
    self.leftPlayerData.group = ""  --todo
    self.leftPlayerData.attackVal = math.modf(report_data.selfOffensiveFigure)

    self.rightPlayerData = {}
    self.rightPlayerData.name = clientData.name
    self.rightPlayerData.head = clientData.head
    self.rightPlayerData.headBG = clientData.headBG
    self.rightPlayerData.group = clientData.group
    self.rightPlayerData.attackVal = math.modf(report_data.defOffensiveFigure)

    self.leftTeamDataList = {}
    local cardData = nil
    local robotData = nil
    for _, v in ipairs(report_data.selfTeam) do
        cardData = CardInfo[v.cardId]
        if cardData == nil then
            robotData = RobotInfo[v.cardId]
            cardData = CardInfo[robotData.CardId]
        end
        local temp = {}
        temp.icon = cardData.KPKM
        temp.iconBg = SpriteDefine:GetCardPoorByIDQuality(cardData.Quality)
        temp.quality = SpriteDefine:GetQuaIconByType(cardData.Quality)
        temp.starLevel = v.star
        temp.level = "LV." .. math.modf(v.lv)

        local pos = 0
        if v.type == 2 then
            pos = 3
        else
            pos = 0
        end
        self.leftTeamDataList[v.position + pos] = temp
    end

    self.rightTeamDataList = {}
    for _, v in ipairs(report_data.enemyTeam) do
        cardData = CardInfo[v.cardId]
        if cardData == nil then
            robotData = RobotInfo[v.cardId]
            cardData = CardInfo[robotData.CardId]
        end
        local temp = {}
        temp.icon = cardData.KPKM
        temp.iconBg = SpriteDefine:GetCardPoorByIDQuality(cardData.Quality)
        temp.quality = SpriteDefine:GetQuaIconByType(cardData.Quality)
        temp.starLevel = v.star
        temp.level = "LV." .. math.modf(v.lv)

        local pos = 0
        if v.type == 2 then
            pos = 3
        else
            pos = 0
        end
        self.rightTeamDataList[v.position + pos] = temp
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

    self.report_info_A = nil

    self.leftPlayerData = {}
    self.rightPlayerData = {}
    self.leftTeamDataList = {}
    self.rightTeamDataList = {}
end

-- 销毁
local function OnDistroy(self)
    base.OnDistroy(self)
    -- 清理成员变量

    self.report_info_data = nil
end

UIArenaReportModel.OnCreate = OnCreate
UIArenaReportModel.OnEnable = OnEnable
UIArenaReportModel.OnRefresh = OnRefresh
UIArenaReportModel.OnAddListener = OnAddListener
UIArenaReportModel.OnRemoveListener = OnRemoveListener
UIArenaReportModel.OnDisable = OnDisable
UIArenaReportModel.OnDistroy = OnDistroy

return UIArenaReportModel
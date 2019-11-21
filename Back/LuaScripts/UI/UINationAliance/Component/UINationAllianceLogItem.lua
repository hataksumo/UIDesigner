local UINationAllianceLogItem = BaseClass("UINationAllianceLogItem", UIWrapComponent)
local base = UIWrapComponent

--<color=#21C839><a href=JumpToPos_440050>城镇21(44,50)</a></color>
local function LinkTextCallBack(self, LinkKey)
    if LinkKey == "openSiegeRank" and self.severStampID ~= nil then
        --打开排行榜
        self.view.ctrl:OnClickLinkTextOpenRank(self.severStampID)
    end
end

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 组件初始化
    self.dateObj = UIUtil.FindTrans(self.transform, "Date").gameObject
    self.dateText = self:AddComponent(UIText, "Date/DateText")
    self.dateText:SetLinkClick(self, LinkTextCallBack)
    self.contentObj = UIUtil.FindTrans(self.transform, "Content").gameObject
    self.content = self:AddComponent(UIText, "Content/ContentText")
    self.content:SetLinkClick(self, LinkTextCallBack)
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self, real_index)
    local data = self.view.allLayoutList[self.view.model.MAIN_FUNC_INDEX.NOTE_LIST].script.log_list[real_index]
    self.severStampID = data.severStampID
    if data.buildID ~= nil then
        self.buildID = data.buildID
    end

    if data.isDate then
        self.dateObj:SetActive(true)
        self.contentObj:SetActive(false)
        self.dateText:SetText(data.date)
    else
        self.dateObj:SetActive(false)
        self.contentObj:SetActive(true)
        self.content:SetText(data.timeText .. "  " .. data.content)
        --self.content:SetText(data.timeText .. "  " .. data.content.." <a href=JumpToPos_400065>城镇18(40,65)</a>")
    end
end

UINationAllianceLogItem.OnCreate = OnCreate
UINationAllianceLogItem.OnRefresh = OnRefresh
return UINationAllianceLogItem
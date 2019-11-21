--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

--与Sever的消息类型枚举保持一致，相差1
local EnumChannelType = {
    World = 1, --世界消息
    System = 2, --系统消息
    Team = 3, --队伍消息
    Nation = 4, --国战消息
    League = 5, --联盟消息
}

local UIChatView = BaseClass("UIChatView", UIBaseView)
local base = UIBaseView
local utf8 = require("Common.Tools.utf8")
local NationUtil = require "GameLogic.Nation.NationUtil"

local WorldChatWrapGroup = require "UI.UIChat.Component.WorldChatWrapGroup"
local WorldChatWrap = require "UI.UIChat.Component.WorldChatWrap"
local SystemChatWrap = require "UI.UIChat.Component.SystemChatWrap"
local NationChatWrap = require "UI.UIChat.Component.NationChatWrap"
local LeagueChatWrap = require "UI.UIChat.Component.LeagueChatWrap"

--是否是表情
local function isEmoji(newName)
    local len = utf8.len(newName)--utf8解码长度
    for i = 1, len do
        local str = utf8.sub(newName, i, i)
        local byteLen = string.len(str)--编码占多少字节
        if byteLen > 3 then
            --超过三个字节的必须是emoji字符啊
            return true
        end
        if byteLen == 3 then
            if string.find(str, "[\226][\132-\173]") or string.find(str, "[\227][\128\138]") then
                return true--过滤部分三个字节表示的emoji字符，可能是早期的符号，用的还是三字节，坑。。。这里不保证完全正确，可能会过滤部分中文字。。。
            end
        end
        if byteLen == 1 then
            local ox = string.byte(str)
            if (33 <= ox and 47 >= ox) or (58 <= ox and 64 >= ox) or (91 <= ox and 96 >= ox) or (123 <= ox and 126 >= ox) or (str == "　") then
                return true--过滤ASCII字符中的部分标点，这里排除了空格，用编码来过滤有很好的扩展性，如果是标点可以直接用%p匹配。
            end
        end
    end

    return false
end
--输入框输入文字
local function OnValueChangedByInput(self)
    local text = self.world_input:GetText()
    if isEmoji(text) then
        self.world_input:SetText(self.inputStrTemp)
        return
    end
    self.inputStrTemp = text
    --if utf8.charactersLength(text) > 10 then
    --    self.world_input:SetText(self.inputStrTemp)
    --else
    --    self.inputStrTemp = text
    --end
end

local function OnClickUnReadMsg(self)
    if self.curSelectChannel == EnumChannelType.World then
        self.wrap_group:UpdateLength(#self.world_list, self.world_list, true)
    elseif self.curSelectChannel == EnumChannelType.Team then

    elseif self.curSelectChannel == EnumChannelType.Nation then
        self.nation_wrap_group:UpdateLength(#self.nation_list, self.nation_list, true)
    elseif self.curSelectChannel == EnumChannelType.League then
        self.league_wrap_group:UpdateLength(#self.alliance_list, self.alliance_list, true)
    end
end

local function SelectBtn(self, index, force_voice)
    if not force_voice then
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
    end
    if index == EnumChannelType.Nation or index == EnumChannelType.League then
        local lockdata ,type,des= UnlockData:GetInstance():GetLockDataState(401)
        if not lockdata then
            UISpecial:GetInstance():UITipText(des)
            return
        end
    end
    self.curSelectChannel = index
    for i, v in ipairs(self.btn_group) do
        if i == index then
            if v.gameObject then
                v.gameObject:SetActive(true)
            end
            --TODO:选择框设置图片，字体颜色
            v.img:SetSpriteName("ui_t_c2_164")
            v.text:SetColor32(239, 234, 222, 255)
            v.outline:SetColor32(5, 5, 5, 255)
            -- v.img:SetAlphaVal(1)
            -- v.text:SetColor(0,0,0,1)
        else
            if v.gameObject then
                v.gameObject:SetActive(false)
            end
            v.img:SetSpriteName("ui_t_c2_165")
            v.text:SetColor32(21, 24, 30, 255)
            v.outline:SetColor32(38, 74, 89, 255)
            -- v.img:SetAlphaVal(0)
            -- v.text:SetColor(1,1,1,1)
        end
    end
    if index == EnumChannelType.System then
        self.bottomButtonObj:SetActive(false)
    elseif index == EnumChannelType.Team then
        --判断玩家是否有队伍
        self.bottomButtonObj:SetActive(false)
    elseif index == EnumChannelType.League then
        --判断玩家是否有联盟
        local unionID = UserData:GetInstance().nationUnionId
        if unionID ~= 0 then
            self.btn_group[index].tip.gameObject:SetActive(false)
            self.btn_group[index].applyBtn.gameObject:SetActive(false)
            self.bottomButtonObj:SetActive(true)
        else
            self.btn_group[index].tip.gameObject:SetActive(true)
            self.btn_group[index].applyBtn.gameObject:SetActive(true)
            self.bottomButtonObj:SetActive(false)
        end
    else
        self.bottomButtonObj:SetActive(true)
    end
end

local function UpdateChatPos(self, v, pos)
    local finc = DataUtil.ChatOutputContent(v.content)
    local width = UIUtil.GetTextWidth(self.unity_text, finc)
    local height = UIUtil.GetTextHeight(self.unity_text, finc)
    v.pos = pos

    --为什么不会按预设这个self.unity_text的width为最大算？
    if width > 530 then
        width = 530
    end

    if height > 70 then
        v.y = 180 + height - 70 + 20
    else
        --146.2
        v.y = 180
    end
    --文本背景大小用
    v.size = Vector2.New(width + 50, height + 25)
    return pos + v.y
end

local function UpdateSystemChatPos(self, v, pos)
    local finc = DataUtil.ChatOutputContent(v.content)
    local height = UIUtil.GetTextHeight(self.system_text, finc)
    v.pos = pos
    if height > 60 then
        v.y = height + 30
    else
        v.y = 60
    end
    --暂时无用
    v.size = Vector2.New(757, height)
    return pos + v.y
end

--替换超链接文本
local function ReplaceRichText(self, str)
    if self.curSelectChannel == EnumChannelType.World then
        --世界频道无法发国战坐标
        return str
    end
    if #self.model.richList > 0 then
        for _, v in ipairs(self.model.richList) do
            str = string.gsub(str, v.patText, v.richText)
        end
    else
        str = NationUtil.ReplacePosPointText(str)
    end
    return str
end

--默认输入的文本，可以是包含超连接的文本
local function ShowTextByRichList(self)
    local str = ""
    for _, v in ipairs(self.model.richList) do
        str = str .. v.showText
    end
    self.world_input:SetText(str)
end

local function OnCreate(self)
    base.OnCreate(self)
    -- 初始化各个组件
    -- self.select_img=UIUtil.FindTrans(self.transform,"BG/SelectImg")
    -- self.select_text=self:AddComponent(UIText,"BG/SelectImg/SelectText")

    self.close_btn = self:AddComponent(UIButton, "ParentLayout/BG/Close")

    self.close_btn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_Cancel")
        self.anim:Play("ef_ui_UIChatParentLayout_out")
        TimerManager:GetInstance():SimpleTimerArgs(0.5,function()
            self.ctrl:CloseSelf()
        end,nil,true)
    end)

    self.friend_btn = self:AddComponent(UIButton,"ParentLayout/BG/FriendBtn")
    self.friend_btn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        --UIManager:GetInstance():OpenWindow(UIWindowNames.UIFriend)
    end)

    self.bottomButtonObj = UIUtil.FindTrans(self.transform, "ParentLayout/BottomButton").gameObject
    self.btn_group = { { gameObject = false, img = false, text = false, outline = false }, { gameObject = false, img = false, text = false, outline = false }, { gameObject = false, img = false, text = false, outline = false }, { gameObject = false, img = false, text = false, outline = false }, { gameObject = false, img = false, text = false, outline = false } }

    local temp_btn = self:AddComponent(UIButton, "LeftBtn/System")
    temp_btn:SetOnClick(self, SelectBtn, EnumChannelType.System)
    self.btn_group[EnumChannelType.System].img = self:AddComponent(UIImage, "LeftBtn/System", AtlasConfig.DynamicTex)
    self.btn_group[EnumChannelType.System].text = self:AddComponent(UIText, "LeftBtn/System/SystemText")
    self.btn_group[EnumChannelType.System].outline = self:AddComponent(UIOutline, "LeftBtn/System/SystemText")
    self.btn_group[EnumChannelType.System].gameObject = UIUtil.FindTrans(self.transform, "ParentLayout/SystemContent").gameObject

    temp_btn = self:AddComponent(UIButton, "LeftBtn/World")
    temp_btn:SetOnClick(self, SelectBtn, EnumChannelType.World)
    self.btn_group[EnumChannelType.World].img = self:AddComponent(UIImage, "LeftBtn/World", AtlasConfig.DynamicTex)
    self.btn_group[EnumChannelType.World].text = self:AddComponent(UIText, "LeftBtn/World/WorldText")
    self.btn_group[EnumChannelType.World].outline = self:AddComponent(UIOutline, "LeftBtn/World/WorldText")
    self.btn_group[EnumChannelType.World].gameObject = UIUtil.FindTrans(self.transform, "ParentLayout/WorldContent").gameObject

    temp_btn = self:AddComponent(UIButton, "LeftBtn/Team")
    temp_btn.transform.gameObject:SetActive(false);
    temp_btn:SetOnClick(self, SelectBtn, EnumChannelType.Team)
    self.btn_group[EnumChannelType.Team].img = self:AddComponent(UIImage, "LeftBtn/Team", AtlasConfig.DynamicTex)
    self.btn_group[EnumChannelType.Team].text = self:AddComponent(UIText, "LeftBtn/Team/TeamText")
    self.btn_group[EnumChannelType.Team].outline = self:AddComponent(UIOutline, "LeftBtn/Team/TeamText")

    temp_btn = self:AddComponent(UIButton, "LeftBtn/Nation")
    --temp_btn.transform.gameObject:SetActive(false);
    temp_btn:SetOnClick(self, SelectBtn, EnumChannelType.Nation)
    self.btn_group[EnumChannelType.Nation].img = self:AddComponent(UIImage, "LeftBtn/Nation", AtlasConfig.DynamicTex)
    self.btn_group[EnumChannelType.Nation].text = self:AddComponent(UIText, "LeftBtn/Nation/NationText")
    self.btn_group[EnumChannelType.Nation].outline = self:AddComponent(UIOutline, "LeftBtn/Nation/NationText")
    self.btn_group[EnumChannelType.Nation].gameObject = UIUtil.FindTrans(self.transform, "ParentLayout/NationContent").gameObject

    temp_btn = self:AddComponent(UIButton, "LeftBtn/League")
    --temp_btn.transform.gameObject:SetActive(false);
    temp_btn:SetOnClick(self, SelectBtn, EnumChannelType.League)
    self.btn_group[EnumChannelType.League].img = self:AddComponent(UIImage, "LeftBtn/League", AtlasConfig.DynamicTex)
    self.btn_group[EnumChannelType.League].text = self:AddComponent(UIText, "LeftBtn/League/LeagueText")
    self.btn_group[EnumChannelType.League].outline = self:AddComponent(UIOutline, "LeftBtn/League/LeagueText")
    self.btn_group[EnumChannelType.League].tip = self:AddComponent(UIText, "ParentLayout/LeagueContent/LeagueTip")
    self.btn_group[EnumChannelType.League].applyBtn = self:AddComponent(UIButton, "ParentLayout/LeagueContent/ApplyBtn")
    self.btn_group[EnumChannelType.League].applyBtn:SetOnClick(self, function()
        --申请加入联盟
        self.ctrl:OnClickApplyJoinLeague()
    end)
    self.btn_group[EnumChannelType.League].gameObject = UIUtil.FindTrans(self.transform, "ParentLayout/LeagueContent").gameObject

    --暂时没有同城频道
    --temp_btn = self:AddComponent(UIButton, "BG/LeftBtn/SameCity")
    --temp_btn:SetOnClick(self, SelectBtn, 6)
    --self.btn_group[6].img = self:AddComponent(UIImage, "BG/LeftBtn/SameCity", AtlasConfig.Comm)
    --self.btn_group[6].text = self:AddComponent(UIText, "BG/LeftBtn/SameCity/SameCityText")
    --self.btn_group[6].outline = self:AddComponent(UIOutline, "BG/LeftBtn/SameCity/SameCityText")

    self.unity_text = UIUtil.FindText(self.transform, "ParentLayout/WorldContent/content")
    self.system_text = UIUtil.FindText(self.transform, "ParentLayout/SystemContent/systemcon")
    self.MaxNum_Tip = UIUtil.FindTrans(self.transform, "ParentLayout/MaxNumTip").gameObject
    self.MaxNum_Tip_CloseBtn = self:AddComponent(UIButton, "ParentLayout/MaxNumTip/CloseBtn")
    self.MaxNum_Tip_ConfirmBtn = self:AddComponent(UIButton, "ParentLayout/MaxNumTip/ConfirmBtn")
    self.MaxNum_Tip:SetActive(false)
    self.MaxNum_Tip_CloseBtn:SetOnClick(self, function()
        self.MaxNum_Tip:SetActive(false)
    end)
    self.MaxNum_Tip_ConfirmBtn:SetOnClick(self, function()
        self.MaxNum_Tip:SetActive(false)
    end)

    self.wrap_group = self:AddComponent(WorldChatWrapGroup, "ParentLayout/WorldContent/Scroll View/grid_UIWrapGroup3D", WorldChatWrap, Vector2.New(808.8, 146.2))
    self.wrap_group:SetMoveLast(function()
        if self.interver_num ~= nil and self.interver_num > 0 then
            self.interver_num = 0
            self.next_btn:SetActive(false)
        end
    end)

    self.system_wrap_group = self:AddComponent(WorldChatWrapGroup, "ParentLayout/SystemContent/Scroll View/system_UIWrapGroup3D", SystemChatWrap, Vector2.New(778.45, 126))
    self.nation_wrap_group = self:AddComponent(WorldChatWrapGroup, "ParentLayout/NationContent/Scroll View/nation_UIWrapGroup3D", NationChatWrap, Vector2.New(808.8, 146.2))
    self.nation_wrap_group:SetMoveLast(function()
        if self.interver_num ~= nil and self.interver_num > 0 then
            self.interver_num = 0
            self.next_btn:SetActive(false)
        end
    end)

    self.league_wrap_group = self:AddComponent(WorldChatWrapGroup, "ParentLayout/LeagueContent/Scroll View/league_UIWrapGroup3D", LeagueChatWrap, Vector2.New(808.8, 146.2))
    self.league_wrap_group:SetMoveLast(function()
        if self.interver_num ~= nil and self.interver_num > 0 then
            self.interver_num = 0
            self.next_btn:SetActive(false)
        end
    end)

    self.world_input = self:AddComponent(UIInput, "ParentLayout/BottomButton/InputField")
    self.world_input:SetOnValueChanged(function()
        OnValueChangedByInput(self)
    end)
    self.world_send = self:AddComponent(UIButton, "ParentLayout/BottomButton/Send")
    self.world_send:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        local str = self.world_input:GetText()
        local num = DataUtil.GetStringLength(str)
        if num ~= nil and num > 0 then
            if num <= 50 then
                local replaceStr = ReplaceRichText(self, str)
                ChatData:GetInstance():AddNewChat(replaceStr, self.curSelectChannel - 1)
                self.world_input:SetText("")
            else
                --TODO:超过字数限制后的新的提示框
                self.MaxNum_Tip:SetActive(true)
                -- UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100077))
            end
        else
            UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100078))
        end
    end)

    self.next_num = self:AddComponent(UIText, "ParentLayout/BottomButton/Next/Text")
    self.next_btn = self:AddComponent(UIButton, "ParentLayout/BottomButton/Next")
    self.next_btn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        self.interver_num = 0
        self.next_btn:SetActive(false)
        OnClickUnReadMsg(self)
    end)
    self.anim = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.Animator),"")
    self.curSelectChannel = nil
end

local function OnEnable(self)
    base.OnEnable(self)
    UIUtil.SetChatImgStatus(false)
    --清空未发送的文本
    self.inputStrTemp = ""
    self.world_input:SetText("")

    ShowTextByRichList(self)
    self:OnRefresh()
end

local function OnRefresh(self)
    -- 各组件刷新

    SelectBtn(self, self.model.openChannel, true)

    --未读消息
    self.next_btn.gameObject:SetActive(false)
    self.interver_num = 0

    --世界消息
    self.world_list = self.model.world_list
    local pos = 0
    for i, v in ipairs(self.world_list) do
        --计算位置
        pos = UpdateChatPos(self, v, pos)
    end
    self.last_chat_num = #self.world_list
    if self.world_list ~= nil and #self.world_list > 0 then
        self.wrap_group:SetLength(#self.world_list, self.world_list)
        self.wrap_group:ResetToBeginning()
    else
        self.wrap_group:SetLength(0, self.world_list)
    end

    --系统消息
    self.system_list = self.model.system_list
    pos = 0
    for i, v in ipairs(self.system_list) do
        pos = UpdateSystemChatPos(self, v, pos)
    end
    if self.system_list ~= nil and #self.system_list > 0 then
        self.system_wrap_group:SetLength(#self.system_list, self.system_list)
        self.system_wrap_group:ResetToBeginning()
    else
        self.system_wrap_group:SetLength(0, self.system_list)
    end
    self.last_sys_chat_num = #self.system_list

    --国战消息
    self.nation_list = self.model.nation_list
    local pos = 0
    for i, v in ipairs(self.nation_list) do
        --计算位置
        pos = UpdateChatPos(self, v, pos)
    end
    self.last_nation_chat_num = #self.nation_list
    if self.nation_list ~= nil and #self.nation_list > 0 then
        self.nation_wrap_group:SetLength(#self.nation_list, self.nation_list)
        self.nation_wrap_group:ResetToBeginning()
    else
        self.nation_wrap_group:SetLength(0, self.nation_list)
    end

    --联盟消息
    self.league_list = self.model.alliance_list
    local pos = 0
    for i, v in ipairs(self.league_list) do
        --计算位置
        pos = UpdateChatPos(self, v, pos)
    end
    self.last_league_chat_num = #self.league_list
    if self.league_list ~= nil and #self.league_list > 0 then
        self.league_wrap_group:SetLength(#self.league_list, self.league_list)
        self.league_wrap_group:ResetToBeginning()
    else
        self.league_wrap_group:SetLength(0, self.league_list)
    end
end

local function UpdateNewWorldChat(self)
    --世界消息
    if self.last_chat_num ~= nil then
        local pos = 0
        if self.last_chat_num > 0 then
            pos = self.world_list[self.last_chat_num].pos + self.world_list[self.last_chat_num].y
        end
        for i = self.last_chat_num + 1, #self.world_list do
            pos = UpdateChatPos(self, self.world_list[i], pos)
        end
    end
    if self.world_list ~= nil and #self.world_list > 0 then
        local is_last = self.wrap_group:UpdateLength(#self.world_list, self.world_list)
        if not is_last and self.curSelectChannel == EnumChannelType.World then
            self.interver_num = self.interver_num + #self.world_list - self.last_chat_num
            self.next_btn.gameObject:SetActive(true)
            self.next_num:SetText("未读消息" .. self.interver_num .. "条")
        else
            self.wrap_group:ResetToBeginning()
        end
        self.last_chat_num = #self.world_list
    else
        self.wrap_group:SetLength(0)
    end

    --系统消息
    if self.last_sys_chat_num ~= nil then
        local pos = 0
        if self.last_sys_chat_num > 0 then
            pos = self.system_list[self.last_sys_chat_num].pos + self.system_list[self.last_sys_chat_num].y
        end
        for i = self.last_sys_chat_num + 1, #self.system_list do
            pos = UpdateSystemChatPos(self, self.system_list[i], pos)
        end
    end

    if self.system_list ~= nil and #self.system_list > 0 then
        self.system_wrap_group:UpdateLength(#self.system_list, self.system_list, true)
    end

    --国战消息
    if self.last_nation_chat_num ~= nil then
        local pos = 0
        if self.last_nation_chat_num > 0 then
            pos = self.nation_list[self.last_nation_chat_num].pos + self.nation_list[self.last_nation_chat_num].y
        end
        for i = self.last_nation_chat_num + 1, #self.nation_list do
            pos = UpdateChatPos(self, self.nation_list[i], pos)
        end
    end
    if self.nation_list ~= nil and #self.nation_list > 0 then
        local is_last = self.nation_wrap_group:UpdateLength(#self.nation_list, self.nation_list)
        if not is_last and self.curSelectChannel == EnumChannelType.Nation then
            self.interver_num = self.interver_num + #self.nation_list - self.last_nation_chat_num
            self.next_btn.gameObject:SetActive(true)
            self.next_num:SetText("未读消息" .. self.interver_num .. "条")
        else
            self.nation_wrap_group:ResetToBeginning()
        end
        self.last_nation_chat_num = #self.nation_list
    else
        self.nation_wrap_group:SetLength(0)
    end

    --联盟消息
    if self.last_league_chat_num ~= nil then
        local pos = 0
        if self.last_league_chat_num > 0 then
            pos = self.league_list[self.last_league_chat_num].pos + self.league_list[self.last_league_chat_num].y
        end
        for i = self.last_league_chat_num + 1, #self.league_list do
            pos = UpdateChatPos(self, self.league_list[i], pos)
        end
    end
    if self.league_list ~= nil and #self.league_list > 0 then
        local is_last = self.league_wrap_group:UpdateLength(#self.league_list, self.league_list)
        if not is_last and self.curSelectChannel == EnumChannelType.League then
            self.interver_num = self.interver_num + #self.league_list - self.last_league_chat_num
            self.next_btn.gameObject:SetActive(true)
            self.next_num:SetText("未读消息" .. self.interver_num .. "条")
        else
            self.league_wrap_group:ResetToBeginning()
        end
        self.last_league_chat_num = #self.league_list
    else
        self.league_wrap_group:SetLength(0)
    end
end

local function OnAddListener(self)
    base.OnAddListener(self)
    -- UI消息注册
    self:AddUIListener(UIMessageNames.ONCHAT_UPDATE, UpdateNewWorldChat)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- UI消息注销
    self:RemoveUIListener(UIMessageNames.ONCHAT_UPDATE, UpdateNewWorldChat)
end

local function OnDisable(self)
    base.OnDisable(self)

    self.curSelectChannel = nil
    self.last_nation_chat_num = nil
    self.last_league_chat_num = nil
end

local function OnDestroy(self)
    -- 销毁
    base.OnDestroy(self)
end

UIChatView.OnCreate = OnCreate
UIChatView.OnEnable = OnEnable
UIChatView.OnRefresh = OnRefresh
UIChatView.OnAddListener = OnAddListener
UIChatView.OnRemoveListener = OnRemoveListener
UIChatView.OnDisable = OnDisable
UIChatView.OnDestroy = OnDestroy

return UIChatView

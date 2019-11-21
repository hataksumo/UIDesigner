--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIGuideCreateNameView = BaseClass("UIGuideCreateNameView", UIBaseView)
local base = UIBaseView
local utf8 = require("Common.Tools.utf8")
local static_name = DataUtil.GetData("name")
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
local function RandomName(self)
    local max = #static_name
    local name = ""
    local function RandomNameByType(type)
        --随机
        math.randomseed(tostring(os.time()):reverse():sub(1, 6))
        local num = type == 1 and Mathf.Random(self.fam_name_num) or Mathf.Random(self.name_num)
        if type == 1 then
            return static_name[num].FirstName and static_name[num].FirstName or ""
        elseif type == 2 then
            return static_name[num].LastName
        end
    end
    name = RandomNameByType(1) .. RandomNameByType(2)
    return name
end
--保留 中文英文和数字
local function filter_spec_chars(s)
    local ss = {}
    local k = 1
    while true do
        if k > #s then break end
        local c = string.byte(s,k)
        if not c then break end
        if c<192 then
            if (c>=48 and c<=57) or (c>= 65 and c<=90) or (c>=97 and c<=122) then
                table.insert(ss, string.char(c))
            end
            k = k + 1
        elseif c<224 then
            k = k + 2
        elseif c<240 then
            if c>=228 and c<=233 then
                local c1 = string.byte(s,k+1)
                local c2 = string.byte(s,k+2)
                if c1 and c2 then
                    local a1,a2,a3,a4 = 128,191,128,191
                    if c == 228 then a1 = 184
                    elseif c == 233 then a2,a4 = 190,c1 ~= 190 and 191 or 165
                    end
                    if c1>=a1 and c1<=a2 and c2>=a3 and c2<=a4 then
                        table.insert(ss, string.char(c,c1,c2))
                    end
                end
            end
            k = k + 3
        elseif c<248 then
            k = k + 4
        elseif c<252 then
            k = k + 5
        elseif c<254 then
            k = k + 6
        end
    end
    return table.concat(ss)
end

local function PlayButtonAnimation(self, index)
    local targetRotation = nil
    if index == 2 then
        index = 1
        targetRotation = Quaternion.Euler(0, 0, 0)
    elseif index == 1 then
        index = 2
        targetRotation = Quaternion.Euler(0, 0, 5)
    end
    self.buttonAni = LuaTweener.RotateTo(self.button.transform, self.button.transform.rotation, targetRotation, 0.2, EaseFormula.Linear, function()
        PlayButtonAnimation(self, index)
    end)
end

local function PlayImageAnimation(self)
    self.bg1_Image:SetActive(true)
    self.bg2_Image:SetActive(true)
    LuaTweener.UIScaleTo(self.bg1_Image.transform, Vector3.New(2, 2, 2),
            Vector3.New(1, 1, 1), 0.3, EaseFormula.OutExpo, function()
            end)
end

local function OnValueChangedByInput(self)
    --local text = filter_spec_chars(self.inputField:GetText())
    local text = self.inputField:GetText()--filter_spec_chars()
    --text = CS.CommonUtils.PassEmojStr(text)
    if string.isNilOrEmpty(text) then
        if self.buttonAni ~= nil then
            LuaTweener.StopTweener(self.buttonAni)
            self.buttonAni = nil
        end
        return
    end

    if self.buttonAni == nil then
        PlayButtonAnimation(self, 1)
    end

    if utf8.charactersLength(text) > 10 then
        self.inputField:SetText(self.nameStrTemp)
    else
        self.nameStrTemp = text
    end
end

local function OnCreate(self)
    base.OnCreate(self)
    -- 初始化各个组件
    self.inputField = self:AddComponent(UIInput, "InputField")
    self.inputField:SetOnValueChanged(function()
        OnValueChangedByInput(self)
    end)
    self.random_btn = self:AddComponent(UIButton, "Bg/Random")
    self.random_btn:SetOnClick(function()
        if self.can_btn then
            self.can_btn = false
            TimerManager:GetInstance():SimpleTimerArgs(0.5, function()
                self.can_btn = true
            end, nil, true)
            self.nameStrRan = RandomName(self)
            self.replace_text:SetText(self.nameStrRan)
            self.inputField:SetText("")
        else
            UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100050))
        end

    end)
    self.bg1_Image = self:AddComponent(UIText, "Bg/bg1")
    self.bg2_Image = self:AddComponent(UIText, "Bg/red_line")
    self.bg1_Image:SetActive(false)
    self.bg2_Image:SetActive(false)
    self.button_text = self:AddComponent(UIText, "ButtonText")
    --self.button_text:SetText(DataUtil.GetClientText(200006)) -- 点击确认

    self.yearText = self:AddComponent(UIText, "yearText")
    self.monthText = self:AddComponent(UIText, "monthText")
    self.dayText = self:AddComponent(UIText, "dayText")
    self.replace_text = self:AddComponent(UIText, "InputField/placeholder")
    self.button = self:AddComponent(UIButton, "Button")
    self.button:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        local str = string.isNilOrEmpty(self.inputField:GetText()) and self.replace_text:GetText() or self.inputField:GetText()
        if string.isNilOrEmpty(str) then
            UISpecial:GetInstance():UITipText("名字不能为空")
            return
        elseif string.match(str, "%s+") then
            UISpecial:GetInstance():UITipText("名字中不能有空格")
            return
        end

        self.ctrl:SendMsgCreatePlayerName(str, function()
            --self.bg1_Image:SetActive(true)
            PlayImageAnimation(self)
            if self.buttonAni ~= nil then
                LuaTweener.StopTweener(self.buttonAni)
                self.buttonAni = nil
            end
        end, function()
            self.replace_text:SetText("")
            self.nameStrTemp = ""
        end)
    end)

    self.patterns={}

end


local function GetFNameNum(self)
    for i = 1, self.name_num do
        if static_name[i].FirstName == nil then
            return i
        end
    end
end
local function OnEnable(self)
    base.OnEnable(self)
    self.can_btn = true
    self.name_num = #static_name
    self.fam_name_num = GetFNameNum(self)
    self.nameStrRan = RandomName(self)
    self.replace_text:SetText(self.nameStrRan)
    --self.inputField:SetText(self.nameStrTemp)
    self.inputField:SetCharacterLimit(self.model.textLimit)
    local time = math.modf(TimeSyncManager:GetInstance():GetSimulationJavaMS() / 1000)
    local date = os.date("%Y,%m,%d", time)
    --Logger.Log(date)
    self.yearText:SetText(os.date("%Y", time))
    self.monthText:SetText(os.date("%m", time))
    self.dayText:SetText(os.date("%d", time))
    self.nameStrTemp = ""
    self:OnRefresh()
end

local function OnRefresh(self)
    -- 各组件刷新

end

local function OnAddListener(self)
    base.OnAddListener(self)
    -- UI消息注册

end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- UI消息注销

end

local function OnDisable(self)
    base.OnDisable(self)

    if self.buttonAni ~= nil then
        LuaTweener.StopTweener(self.buttonAni)
        self.buttonAni = nil
    end
end

local function OnDestroy(self)
    -- 销毁
    base.OnDestroy(self)
end

UIGuideCreateNameView.OnCreate = OnCreate
UIGuideCreateNameView.OnEnable = OnEnable
UIGuideCreateNameView.OnRefresh = OnRefresh
UIGuideCreateNameView.OnAddListener = OnAddListener
UIGuideCreateNameView.OnRemoveListener = OnRemoveListener
UIGuideCreateNameView.OnDisable = OnDisable
UIGuideCreateNameView.OnDestroy = OnDestroy
return UIGuideCreateNameView

--[[
-- added by wsh @ 2017-12-05
-- 本地化工具类
--]]

local LangUtil = {}
local LANGUAGE_LIST={"zh-cn","en"}
local LANGUAGE_AUDIO_MAP={"Chinese","English"}
local function GetServerName(server_id)
    local data = DataUtil.GetData("ServerLang")
    if data[server_id] == nil then
        return "[" .. server_id .. "]"
    end
    return data[server_id].name
end

local function GetServerAreaName(area_id)
    local data = DataUtil.GetData("ServerAreaLang")
    if data[area_id].name == nil then
        return "[" .. area_id .. "]"
    end
    return data[area_id].name
end

local function GetLanguage()
    if LangUtil.language ~= nil then
        return LangUtil.language
    end
    return LANGUAGE_LIST[1]
end
local function SetLanguage(lang)
    LangUtil.language = lang
end
--根据类型获得本地化文字
local function GetLocalLanguageTextByType(_id,_type)
    local allLanguageData = DataUtil.GetData("language")
    if allLanguageData ~= nil and allLanguageData[_id] ~= nil and allLanguageData[_id][GetLanguage()] then
        return allLanguageData[_id][GetLanguage()]
    end
    return _id
end
----从本地化表获取汉字
--local function GetCHNLanguageText(_id)
--     return GetLocalLanguageTextByType(_id,1)
--end
--根据类型获得本地化文字
local function Language(v_key)
    return GetLocalLanguageTextByType(v_key,GetLanguage())
end
local function GetAudioLanguageName(_languagename)
    for i, v in ipairs(LangUtil.LANGUAGE_LIST) do
        if _languagename == v then
            return LangUtil.LANGUAGE_AUDIO_MAP[i]
        end

    end

end
LangUtil.GetServerName = GetServerName
LangUtil.GetServerAreaName = GetServerAreaName
LangUtil.GetLanguage = GetLanguage
LangUtil.SetLanguage = SetLanguage
LangUtil.GetAudioLanguageName = GetAudioLanguageName
--LangUtil.GetCHNLanguageText = GetCHNLanguageText
LangUtil.GetLocalLanguageTextByType = GetLocalLanguageTextByType
LangUtil.Language = Language
LangUtil.LANGUAGE_LIST = LANGUAGE_LIST
LangUtil.LANGUAGE_AUDIO_MAP = LANGUAGE_AUDIO_MAP
return LangUtil
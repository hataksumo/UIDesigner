--[[
-- added by wsh @ 2017-12-05
-- 本地化工具类
--]]

local DataUtil = {}
ddt = {}
local function GetData(name)

    -- TODO：根据语言设置自动切换各语言源表
    return require("Config.Data." .. name)
end

local function GetColorByQuality(str,_quality)
    if _quality == nil then
        return nil
    end
    if _quality == 1 then
        return "<color=#5cd882>"..str.."</color>"
    elseif _quality == 2 then
        return "<color=#4ac6ef>"..str.."</color>"
    elseif _quality == 3 then
        return "<color=#d178ff>"..str.."</color>"
    elseif _quality == 4 then
        return "<color=#ffa82b>"..str.."</color>"
    end
end

local function tobinary(num)
    local tmp = num
    local str = ""
    repeat
        if tmp % 2 == 1 then
            str = str.."1"
        else
            str = str.."0"
        end
        tmp = math.modf(tmp/2)
    until(tmp == 0)
    str = string.reverse(str)
    return str
end

local function makesamelength(num1,num2)
    local str1 = tobinary(num1)
    local str2 = tobinary(num2)
    local len1 = string.len(str1)
    local len2 = string.len(str2)
    local len = 0
    local x = 0
    if len1 > len2 then
        x = len1 - len2
        for i=1,x do
            str2 = "0"..str2
        end
        len = len1
    elseif len2 > len1 then
        x = len2 - len1
        for i=1,x do
            str1 = "0"..str1
        end
        len = len2
    end
    return str1,str2,len
end
--按位与  &
local function And(num1,num2)
    local str1
    local str2
    local len
    local tmp = ""
    str1,str2,len = makesamelength(num1,num2)
    for i=1,len do
        local s1 = string.sub(str1,i,i)
        local s2 = string.sub(str2,i,i)
        if s1 == s2 then
            if s1 == "1" then
                tmp = tmp.."1"
            else
                tmp = tmp.."0"
            end
        else
            tmp = tmp.."0"
        end
    end
    --tmp = string.reverse(tmp)
    return tonumber(tmp,2)
end
--按位或  |
local function Or(num1,num2)
    local str1
    local str2
    local len
    local tmp = ""
    str1,str2,len = makesamelength(num1,num2)
    for i=1,len do
        local s1 = string.sub(str1,i,i)
        local s2 = string.sub(str2,i,i)
        if s1 == s2 then
            if s1 == "0" then
                tmp = tmp.."0"
            else
                tmp = tmp.."1"
            end
        else
            tmp = tmp.."1"
        end
    end
    --tmp = string.reverse(tmp)
    return tonumber(tmp,2)
end




local function GetDataNumDes(Num)
    if Num>=999999 and Num<100000000 then
        --让99.995  不会四舍五入成100.00
        local result=Num/10000
        local t1, t2 = math.modf(result)
        local temp=  string.format("%d", t1)
        return  temp.."万"
        --if temp=="1.00" then
        --    local res=t1+1
        --    return  res.."万"
        --end
        -----小数如果为0，则去掉
        --if t2 > 0  then
        --    --直接用string.format("%0.2f", result).."万"   会四舍五入   比如 99.995   就直接变成100.00了
        --    return string.format("%0.2f", result).."万"
        --else
        --    return  t1.."万"
        --end
    elseif Num>=100000000 then
        local result=Num/100000000
        local t1, t2 = math.modf(result)
        local temp=  string.format("%0.2f", t2)
        if temp=="1.00" then
            local res=t1+1
            return  res.."亿"
        end
        ---小数如果为0，则去掉
        if t2 > 0 then
            return string.format("%0.2f", result).."亿"
        else
            return  t1.."亿"
        end
    else
        return  tostring(math.floor(Num)) --math.floor(Num)
    end
end


local function GetDataByIdAndType(id, type, num)
    if type == 14 or type == 16 then
        local itemData = GetData("item")
        local info = itemData[id]
        if info ~= nil then
            return { id = id, name = info.Name, icon = info.Icon, num = num,quality = info.Quality,itemType=info.ItemType,des= info.Des,shortDes=info.ShortDes}

        else
            Logger.Log("没有id = "..id.." 的物品")
            return nil
        end
    elseif type == 11 then
        --英雄
    else
        local itemData = GetData("item")
        local info = itemData[id]
        if info ~= nil then
            return { id = id, name = info.Name, icon = info.Icon, num = num,quality = info.Quality ,shortDes=info.ShortDes,type=info.ItemType}

        else
            Logger.Log("没有id = "..id.." 的物品")
            return nil
        end
    end
    return nil
end
--获取字符串的长度（任何单个字符长度都为1）
local function GetStringLength(inputStr)
    if not inputStr or type(inputStr)~="string" or #inputStr<=0 then
        return nil;
    end
    --转换字符
    inputStr = DataUtil.ChatOutputContent(inputStr)
    local length=0; --字符的个数
    local i=1;
    while true do
        local curByte=string.byte(inputStr,i);
        local byteCount=1;
        if curByte>239 then
            byteCount=4;--4字节字符
        elseif curByte>223 then
            byteCount=3;--汉字
        elseif curByte>128 then
            byteCount=2;--双字节字符
        else
            byteCount=1;--单字节字符
        end
        i=i+byteCount;
        length=length+1;
        if i>#inputStr then
            break;
        end
    end
    return length
end




--获取卡牌升级需要经验
local function GetCardLevelUpNeedExp(nowLv, targetLv, quality)
    local expData = GetData("card_exp")
    local needExp = 0
    local tmpExp = 0
    --1-N 2-R 3-SR 4-SSR

        for i = nowLv, targetLv - 1 do
            if expData[i] ~= nil then
                tmpExp = expData[i].Exp[quality]
                needExp = needExp + tmpExp
            end
        end
    return needExp
end
--计算战斗力

--根据ABCD公式计算值  计算战斗力
local function CalculateMathFormulaValue(str, level)
    local value = 0
    if type(str) == "string" then
        local strArray = string.split(str, "#")
        if #strArray < 4 then
            return 0
        end
        local tmpNum = 0
        for i = 1, 4 do
            if tonumber(strArray[i], tmpNum) then
                value = value + tmpNum * level ^ (4 - i)
            else
                return 0
            end
        end
    elseif type(str) == "table" and #str == 4 then
        for i = 1, 4 do
            if type(str[i]) == "number" then
                value = value + str[i] * level ^ (4 - i)
            else
                return 0
            end
        end
    end
    return value
end
--解析掉落物品协议
local function ParseDropItem(dropItem)

    if not dropItem.items._is_null then
        BackpackData:GetInstance():ParseItemListFromServer(dropItem.items)
    end
    if not dropItem.cards._is_null then
        CardData:GetInstance():ParseCardListFromServer(dropItem.cards)
    end
    if not dropItem.skills._is_null then
        print("解析技能")
        SkillData:GetInstance():ParseSkillListFromServer(dropItem.skills)
    end
    if not dropItem.equips._is_null then
        EquipData:GetInstance():ParseEquipListFromServer(dropItem.equips);
    end
    if dropItem.exp > 0 then
        UserData:GetInstance():UpdateExp(dropItem.exp)
    end
    CardData:GetInstance():CheckALLRedByCard()
end

local function CheckDropItemIsNull(dropItem)
    if dropItem == nil then
        return true
    end
    if not dropItem.equips._is_null and #dropItem.equips> 0  then
        return false
    end
    if not dropItem.items._is_null and #dropItem.items > 0 then
       return false
    end
    if not dropItem.cards._is_null and #dropItem.cards > 0 then
        return false
    end
    if not dropItem.skills._is_null and #dropItem.skills > 0 then
        return false
    end
    if dropItem.exp - UserData:GetInstance().userExp > 0 then
        return false
    end
    return true

end

local function GetStrByNumberType(val,type)
    if type == 1 then
        return math.floor(val)
    elseif type == 2 then
        return string.format("%.2f",val)
    elseif type == 3 then
        return math.floor(val*100).."%"
    elseif type == 4 then
        return string.format("%.2f",val*100).."%"
    end
end

local function GetSkillValById(str, effects)
    local paras = string.split(str,"#",1,true)
    local id_index = tonumber(paras[1])
    if effects ~= nil and effects[id_index] ~= nil then
        local id = effects[id_index].id
        local lv =  effects[id_index].lv
        local skill_effect = GetData("skill_effect")
        if skill_effect[id] ~= nil and skill_effect[id].lvs ~= nil and skill_effect[id].lvs[lv] ~= nil then
            local effect_pars = skill_effect[id].lvs[lv]
            local type = tonumber(paras[2])
            local num_index = tonumber(paras[3])
            local num_type = tonumber(paras[4])
            if type == 1 then
                if effect_pars.Value ~= nil then
                    return GetStrByNumberType(effect_pars.Value[num_index],num_type)
                end
            elseif type == 2 then
                if effect_pars.ConParam ~= nil and effect_pars.ConParam[1] ~= nil then
                    return GetStrByNumberType(effect_pars.ConParam[1][num_index],num_type)
                end
            elseif type == 3 then
                if effect_pars.ConParam ~= nil and effect_pars.ConParam[2] ~= nil then
                    return GetStrByNumberType(effect_pars.ConParam[2][num_index],num_type)
                end
            end
        end
    end

    return ""
end

--获取技能详细数值显示
local function GetEnterSkillValById(str,_skillEffect)
    local paras = string.split(str,"#",1,true)
    local effect_pars = _skillEffect;
    local type = tonumber(paras[1])
    local num_index = tonumber(paras[2])
    local num_type = tonumber(paras[3])
    if type == 1 then
        if effect_pars.Value ~= nil then
            return GetStrByNumberType(effect_pars.Value[num_index],num_type)
        end
    elseif type == 2 then
        if effect_pars.ConParam ~= nil and effect_pars.ConParam[1] ~= nil then
            return GetStrByNumberType(effect_pars.ConParam[1][num_index],num_type)
        end
    elseif type == 3 then
        if effect_pars.ConParam ~= nil and effect_pars.ConParam[2] ~= nil then
            return GetStrByNumberType(effect_pars.ConParam[2][num_index],num_type)
        end
    end
end
--解析出场技描述
local function ParseEnterSkillDes(_skillEffectId,_level)
    local skill_effect = GetData("skill_effect")
    --print("技能特效表",_skillEffectId);
    if skill_effect[_skillEffectId]~=nil then
        local effectData=skill_effect[_skillEffectId];
        local parseStr=effectData.lvs[_level].EffectDesc;
        if string.isNilOrEmpty(parseStr) then
            Logger.LogError("skill_effect表的 "..tostring(_skillEffectId).." 等级 "..tostring(_level).." EffectDesc字段没有")
            return "";
        end
        local search_pos_begin = 1
        local temp_table = {}
        while true do
            local find_pos_begin = string.find(parseStr, "[", search_pos_begin, true)
            local find_pos_end = string.find(parseStr, "]", search_pos_begin, true)
            if not find_pos_begin or not find_pos_end then
                break
            end
            temp_table[#temp_table + 1] = string.sub(parseStr, search_pos_begin, find_pos_begin - 1)
            temp_table[#temp_table + 1] = GetEnterSkillValById(string.sub(parseStr, find_pos_begin + 1, find_pos_end - 1),effectData.lvs[_level]);
            search_pos_begin = find_pos_end + 1
        end
        if search_pos_begin <= string.len(parseStr) then
            temp_table[#temp_table + 1] = string.sub(parseStr, search_pos_begin)
        end
        return table.concat(temp_table)
    end
end


--解析技能描述
local function ParseSkillDes(parse_string, effects)
    local search_pos_begin = 1
    local temp_table = {}
    while true do
        local find_pos_begin = string.find(parse_string, "[", search_pos_begin, true)
        local find_pos_end = string.find(parse_string, "]", search_pos_begin, true)
        if not find_pos_begin or not find_pos_end then
            break
        end
        temp_table[#temp_table + 1] = string.sub(parse_string, search_pos_begin, find_pos_begin - 1)
        temp_table[#temp_table + 1] = GetSkillValById(string.sub(parse_string, find_pos_begin + 1, find_pos_end - 1), effects)
        search_pos_begin = find_pos_end + 1
    end
    if search_pos_begin <= string.len(parse_string) then
        temp_table[#temp_table + 1] = string.sub(parse_string, search_pos_begin)
    end
    return table.concat(temp_table)
end
local function GetWeaponUnsealData(id,lv)
    local skill_effect = GetData("skill_effect")
    local weaponEf = skill_effect[id]
    local str=""
    if weaponEf then
--[[        if weaponEf.lvs[lv]~=nil then
            if not string.isNilOrEmpty(weaponEf.lvs[lv].EffectDesc) then
                str=ParseSkillDes(weaponEf.lvs[lv].EffectDesc,weaponEf.lvs[lv].TriggerEffect)
            else
                Logger.LogError("weaponEf.lvs[lv].EffectDesc==nil"..id.."/"..lv)
            end
        else
            Logger.LogError("weaponEf.lvs[lv]==nil"..id.."/"..lv)
        end]]
        str=ParseEnterSkillDes(id,lv);
    end
    return str
end
local function GetSkillDesByIdAndLevel(id, level,break_lv,effectLevel)
    local skill = GetData("skill")
    local str = nil
    if skill[id] ~= nil  then
        str = ""
        if skill[id].lvs[level] ~= nil and skill[id].lvs[level][break_lv] ~= nil then
            if skill[id].lvs[level][break_lv].Description == nil or skill[id].lvs[level][break_lv].Effects == nil then
                Logger.LogError("技能缺少参数"..id.."等级"..level.."突破"..break_lv)
            else
                str = ParseSkillDes(skill[id].lvs[level][break_lv].Description,skill[id].lvs[level][break_lv].Effects)
            end
        end
        if effectLevel ~= nil and effectLevel > 0 then
            if skill[id].ExclusiveWeaponEffect ~= nil and skill[id].ExclusiveWeaponEffect > 0 then
                local des= GetWeaponUnsealData(skill[id].ExclusiveWeaponEffect,effectLevel)
                if not string.isNilOrEmpty(des) then
                    str = str.."\n"..des
                end
            end
        end
    end
    return str
end
--获取叠加商品价格
local function GetSuperposition(price,have_buy,now_buy)
    if now_buy == 0 then
        return 0
    end
    local buy_time = 0
    local final_price = 0
    for i = have_buy+1, #price do
        if buy_time < now_buy then
            final_price = final_price+price[i]
            buy_time=buy_time+1
        end
    end
    local remain_time = now_buy - buy_time
    if remain_time > 0 then
        local last_price = price[#price]
        final_price = final_price+last_price*remain_time
    end
    return final_price
end
--属性转换字符串
local function PropertyConvertString(type,val)
    if type >= 104 and type <= 110 then
        return math.floor(val*100).."%"
    else
        return math.floor(val)
    end
end

local function GetServerErrorTip(id)
    local server_message = GetData("server_message")
    if server_message[id] ~= nil then
        return server_message[id].value
    else
        return "系统错误"
    end
end

local function GetClientText(id)
    local words = GetData("words")
    if words[id] ~= nil then
        return words[id]
    else
        return ""
    end
end

--根据伤害数字获取对应字符串
local function GetTextByNum(num,type)
    local numstr =  tostring(math.floor(math.abs(num)))
    --[[    if num> 0 and type == 2 then
        numstr = ":"..numstr
        end]]
    local offset = 12*type
    local len = string.len(numstr)
    local all_bytes = SafePack(string.byte(numstr,1,len))
    for i = 1, len do
        all_bytes[i] =  string.char(all_bytes[i]+offset)
    end
    if type == 4 then
        all_bytes[len+1] = string.char(109)
    end
    return table.concat(all_bytes)

end


--退出的时候 用这个方法
local function ExitAni(go,callback)
    coroutine.start(function()
        coroutine.waitforseconds(0.2)
        LJAudioManger:GetInstance():PlayVoice("UI_Cancel")
        callback()
    end)
    local desObj = CS.UnityEngine.GameObject.Instantiate(go.gameObject, go.transform)
    desObj.transform.localPosition=Vector3.New(0,0,0)
    local btn= desObj:GetComponent(typeof(CS.UnityEngine.UI.Button))
    if btn~=nil then
        btn.enabled=false
    end
    LuaTweener.UIScaleTo(go.transform,Vector3.New(1,1,1),Vector3.New(0.8,0.8,0.8),0.1,EaseFormula.Linear,function()
        go.transform.localScale=Vector3.New(1,1,1)
    end)
    --LuaTweener.UIFadeTo(desObj.transform,1,0,0.17,EaseFormula.Linear)
    desObj.transform.localScale=Vector3.New(1.5,1.5,1.5)
    LuaTweener.UIScaleTo(desObj.transform,Vector3.New(1.5,1.5,1.5),Vector3.New(1,1,1),0.17,EaseFormula.Linear,function()
        CS.UnityEngine.GameObject.Destroy(desObj)
    end)
end

--根据 解锁ID判断是否解锁
local function JudgeIsLock(id)
    local unlockData=GetData("unlock")
    local UnLock=true
    local Des=""
    if unlockData[id]~=nil then
        local lockinfo=unlockData[id]
        for i = 1, #lockinfo.Condition do
            if lockinfo.Condition[i].id==1 then
                --登录天数
                if UserData:GetInstance().loginDay<lockinfo.Condition[i].param1 then
                    UnLock=false
                    Des="登陆天数需达到"..lockinfo.Condition[i].param1.."天"
                    return UnLock,Des
                end

            elseif lockinfo.Condition[i].id==1050101 then
                --玩家等级
                if UserData:GetInstance().pLevel<lockinfo.Condition[i].param1 then
                    UnLock=false
                    Des="玩家等级需达到"..lockinfo.Condition[i].param1.."级"
                    return UnLock,Des
                end
            else
                Logger.LogError("In DataUtil 解锁条件"..id.."---"..lockinfo.Condition[i].id)
            end
        end
        return UnLock
    else
        Logger.LogError("In DataUtil Unlock没有ID"..id)
        return true
    end
end

local function ChatOutputContent(str)
   local  search_pos_begin = 1
    local split_result = {}
    -- 去除超链接相关字符
    while true do
        local find_pos_begin, find_pos_end,find_result = string.find(str, "<a href=[^>]+>([^<]+)</a>", search_pos_begin)
        if not find_pos_begin then
            break
        end
        local cur_str = ""
        if find_pos_begin > search_pos_begin then
            cur_str = string.sub(str, search_pos_begin, find_pos_begin - 1)
        end
        split_result[#split_result + 1] = cur_str
        split_result[#split_result + 1] = find_result
        search_pos_begin = find_pos_end + 1
    end
    if search_pos_begin <= string.len(str) then
        split_result[#split_result + 1] = string.sub(str, search_pos_begin)
    end
    -- 去除颜色相关字符
    str = table.concat(split_result)
    search_pos_begin = 1
    split_result = {}
    while true do
        local find_pos_begin, find_pos_end,find_result = string.find(str, "<color=[^>]+>([^<]+)</color>", search_pos_begin)
        if not find_pos_begin then
            break
        end
        local cur_str = ""
        if find_pos_begin > search_pos_begin then
            cur_str = string.sub(str, search_pos_begin, find_pos_begin - 1)
        end
        split_result[#split_result + 1] = cur_str
        split_result[#split_result + 1] = find_result
        search_pos_begin = find_pos_end + 1
    end
    if search_pos_begin <= string.len(str) then
        split_result[#split_result + 1] = string.sub(str, search_pos_begin)
    end
    return table.concat(split_result)
end

--获取服务器的奖励列表
local function GetServerRewardList(_rewards)
    if _rewards == nil then
        return
    end
    local allCardData = DataUtil.GetData("card")
    local allItemData = DataUtil.GetData("item")
    local allSkillData = DataUtil.GetData("skill")
    local global_data = DataUtil.GetData("global")
    local showItemData = require "DataCenter/ShowItemData/ShowItemData"
    local rewards = {}
    -- 窗口关闭时可以清理的成员变量放这
    if not _rewards.cards._is_null then
        for _, v in ipairs(_rewards.cards) do
            local cardData = allCardData[v.id]
            if cardData ~= nil then
                local item =showItemData .New();
                item.id = v.id
                item.name = cardData.Name
                item.quality = cardData.Quality
                item.type = 11
                item.icon = cardData.Icon
                item.num = 1
                table.insert(rewards, item)
            end
        end
    end
    if not _rewards.items._is_null then
        for _, v in ipairs(_rewards.items) do
            local itemData = allItemData[v.itemId]
            if itemData ~= nil then
                local item = showItemData.New()
                item.id = v.itemId
                item.name = itemData.Name
                item.quality = itemData.Quality
                item.type = 16
                item.icon = itemData.Icon
                item.num = v.count
                table.insert(rewards, item)
            end
        end
    end
    if not _rewards.skills._is_null then
        for _, v in ipairs(_rewards.skills) do
            local itemData = allSkillData[v.templateId]
            if itemData ~= nil then
                local item = showItemData.New()
                item.id = v.id
                item.name = itemData.Name
                item.quality = 1
                item.type = 13
                item.icon = itemData.Icon
                item.num = 1
                table.insert(rewards, item)
            end
        end
    end
    if not _rewards.equips._is_null then
        for _, v in ipairs(_rewards.equips) do
            local itemData = EquipData:GetInstance():GetEquipDataById(v.id);
            if itemData ~= nil then
                local xlsxData=GetDataByIdAndType(v.templateId);
                local item = showItemData.New()
                item.id = v.id
                item.name = xlsxData.name
                item.quality = xlsxData.quality;
                item.type = xlsxData.itemType;
                item.icon = xlsxData.icon
                item.num = 1
                table.insert(rewards, item)
            end
        end
    end
    if _rewards.exp ~= 0 then
        local expId = global_data[147].valueN
        local expValue = _rewards.exp - UserData:GetInstance().userExp
        if expValue >0 and allItemData[expId] ~= nil then
            local item = showItemData.New()
            item.id = expId
            item.name = allItemData[expId].Name
            item.quality = allItemData[expId].Quality
            item.type =allItemData[expId].ItemType
            item.icon = allItemData[expId].Icon
            item.num = expValue
            table.insert(rewards, item)
        end
    end
    return rewards;
end


DataUtil.ParseEnterSkillDes=ParseEnterSkillDes;
DataUtil.ChatOutputContent = ChatOutputContent
DataUtil.GetClientText = GetClientText
DataUtil.CheckDropItemIsNull = CheckDropItemIsNull
DataUtil.GetTextByNum = GetTextByNum
DataUtil.GetServerErrorTip = GetServerErrorTip
DataUtil.PropertyConvertString = PropertyConvertString
DataUtil.GetSuperposition = GetSuperposition
DataUtil.ParseDropItem = ParseDropItem
DataUtil.GetData = GetData
DataUtil.GetDataNumDes = GetDataNumDes
DataUtil.GetDataByIdAndType = GetDataByIdAndType
DataUtil.GetCardLevelUpNeedExp = GetCardLevelUpNeedExp
DataUtil.CalculateMathFormulaValue = CalculateMathFormulaValue
DataUtil.ParseSkillDes = ParseSkillDes
DataUtil.GetSkillDesByIdAndLevel = GetSkillDesByIdAndLevel
DataUtil.GetStringLength=GetStringLength;
DataUtil.tobinary = tobinary
DataUtil.makesamelength= makesamelength
DataUtil.And = And
DataUtil.Or = Or
DataUtil.JudgeIsLock = JudgeIsLock
DataUtil.ExitAni = ExitAni
DataUtil.GetServerRewardList=GetServerRewardList;
DataUtil.GetWeaponUnsealData= GetWeaponUnsealData
DataUtil.GetColorByQuality = GetColorByQuality
return DataUtil
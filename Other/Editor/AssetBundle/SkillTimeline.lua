--主入口函数。从这里开始lua逻辑
LangUtil = {}
SkillTime = {}
function ParseSkillTime()
    -- 模块启动
    local battle_role_config = require("Config.Data.battle_role_config")
    local timeline_time =  require("Config.Data.timeline_time")
    local result = {}
    for i, v in pairs(battle_role_config) do
        if v.skillInfo ~= nil then
            for m, n in pairs(v.skillInfo) do
                local time = 0
                if n.Prepare ~= nil and timeline_time[n.Prepare] ~= nil then
                    time = time + timeline_time[n.Prepare].duration
                end
                if n.SimplifiedAction ~= nil then
                    if n.SimplifiedAction ~= nil and timeline_time[n.SimplifiedAction] ~= nil then
                        time = time + timeline_time[n.SimplifiedAction].duration
                    end
                else
                    if n.Action ~= nil and timeline_time[n.Action] ~= nil then
                        time = time + timeline_time[n.Action].duration
                    end
                    if n.Return ~= nil and timeline_time[n.Return] ~= nil then
                        time = time + timeline_time[n.Return].duration
                    end
                end

                table.insert(result,{roldId = i,key = m,time = time})
            end
        end
    end
    return result
end

function ParseCSkillTime()
    local battle_skill_info = require("Config.Data.battle_skill_info")
    local timeline_time =  require("Config.Data.timeline_time")
    local result = {}
    for m, n in pairs(battle_skill_info) do
        local time = 0
        if n.Prepare ~= nil and timeline_time[n.Prepare] ~= nil then
            time = time + timeline_time[n.Prepare].duration
        end
        if n.Action ~= nil and timeline_time[n.Action] ~= nil then
            time = time + timeline_time[n.Action].duration
        end
        if n.Return ~= nil and timeline_time[n.Return] ~= nil then
            time = time + timeline_time[n.Return].duration
        end
        table.insert(result,{key = n.ActionID,time = time})
    end
    return result
end
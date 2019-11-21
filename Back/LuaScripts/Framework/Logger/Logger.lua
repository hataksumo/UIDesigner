--[[
-- added by wsh @ 2017-11-30
-- Logger系统：Lua中所有错误日志输出均使用本脚本接口，以便上报服务器
--]]

local Logger = BaseClass("Logger")

local function OnInit()
    CS.Logger.SetLoggerState(Config.CShapDebug)
end

local function Log(msg)
	if Config.Debug then
        msg = string.format("%s--->%s",os.date("%Y-%m-%d %H:%M:%S"),msg)
		print(debug.traceback(msg, 2))
	else
        if Config.CShapDebug then
            msg = string.format("%s--->%s",os.date("%Y-%m-%d %H:%M:%S"),msg)
            CS.Logger.Log(debug.traceback(msg, 2))
        end
	end
end

local function LogError(msg)
	if Config.Debug then
		--error(msg, 2)
        CS.Logger.LogError(debug.traceback(msg, 2))
	else
        if Config.CShapDebug then
            CS.Logger.LogError(debug.traceback(msg, 2))
        end
	end
end

--[[
	打印许多变量
	可变参数
	author diyigeng
]]
local function LogVars(...)
    local params = SafePack(...)
    local result = {}

    for i = 1, table.length(params) do
        result[i] = Logger.AnyToString(params[i])
    end

    local str = table.concat(result)
    Logger.Log(str)
end

--[[
	打印许多变量
	可变参数
	author diyigeng
]]
local function LogErrorVars(...)
    local params = SafePack(...)
    local result = {}

    for i = 1, table.length(params) do
        result[i] = Logger.AnyToString(params[i])
    end

    local str = table.concat(result)
    Logger.LogError(str)
end

--[[
	打印任何对象
	obj 任何对象
	tip 开头提示信息
	deep 如果是table则遍历深度 默认5
	isError 是否打印错误级日志
	author diyigeng
]]
local function LogAny(obj,tip,deep,isError)
    local objInfo = Logger.AnyToString(obj,deep)
    if tip == nil then
        tip = ""
    end

    if type(tip) ~= "string" then
        tip = ""
    end

    objInfo = tip.." : ".. objInfo
    if isError then
        Logger.LogError(objInfo)
    else
        Logger.Log(objInfo)
    end
end

--[[
 将任何对象转化为字符串
]]
local function AnyToString(obj,deep)
    local objInfo = nil
    if obj ~= nil then
        local typeStr = type(obj)
        if typeStr == "table" then
            if deep  == nil then
                deep = 5
            end
            if type(deep) ~= "number" then
                deep = 5
            end
            objInfo = table.dump(obj,nil,deep)
        elseif typeStr == "number" then
            objInfo = tostring(obj)
        elseif typeStr == "boolean" then
            objInfo = tostring(obj)
        elseif typeStr == "string" then
            objInfo = obj
        elseif typeStr == "function" then
            objInfo = tostring(obj)
        else
            objInfo = "error"
        end
    else
        objInfo = "nil"
    end
    return objInfo
end

-- 重定向event错误处理函数
event_err_handle = function(msg)
	LogError(msg)
end

Logger.OnInit = OnInit
Logger.Log = Log
Logger.LogError = LogError
Logger.LogAny = LogAny
Logger.AnyToString = AnyToString
Logger.LogVars = LogVars
Logger.LogErrorVars = LogErrorVars

return Logger
GameDataBase = {}

GameDataBase.SheetLineBase = {}
GameDataBase.SheetLineBase.__index = function(t,k)
  local summary = rawget(t,"summary")
  if not summary then
    return nil
  end

  if summary.textFields then
    for index=1,#(summary.textFields) do
      local field = summary.textFields[index]
      if field == k then
       if not summary.text then
        return nil
       end
       local fieldIndex = field.."_index"
       local textIndex = rawget(t,fieldIndex)
       if not textIndex then
         local defaultValue = rawget(summary,"defaultValue")
         if not defaultValue then
           return nil
         end
         textIndex = defaultValue[fieldIndex]
         if not textIndex then
           return nil
         end
       end
        return summary.text[textIndex]
      end
    end
  end

  if summary.strFields then
    for index=1,#(summary.strFields) do
      local field = summary.strFields[index]
      if field == k then
        if not summary.strValues then
          return nil
        end
        local fieldIndex = field.."_index"
        local textIndex = rawget(t,fieldIndex)
        if not textIndex then
          local defaultValue = rawget(summary,"defaultValue")
          if not defaultValue then
           return nil
          end
          textIndex = defaultValue[fieldIndex]
          if not textIndex then
           return nil
          end
        end
        return summary.strValues[textIndex]
      end
    end
  end

  local defaultValue = rawget(summary,"defaultValue")
  if defaultValue then
    return defaultValue[k]
  end

  return nil
end

GameDataBase.SheetLineBase.__newindex = function(t,k,v)
  Logger.LogError("attempt to update a read-only table")
end

GameDataBase.SheetBase = {}
GameDataBase.SheetBase.MaxForKeysAsWarning = 50

GameDataBase.SheetBase.__index = function(t,k)
  if not t or rawget(t,"count") == 0 then
      return nil
  end

  local typeofk = type(k)
  if typeofk == "string" then
    if k == "keys" then
      return GameDataBase.SheetBase.GetKeys(t)
    elseif k == "text" then
      return GameDataBase.SheetBase.LoadText(t)
    end
  elseif typeofk == "number" then
    for i = 1,t.subformCount do
      local subform = t.subforms[i]
      if k >= subform.minID and k <= subform.maxID then
        local cachedData = GameDataBase.SheetBase.LoadSubform(subform)
        if cachedData then
          local result = cachedData[k]
          if result and not getmetatable(result) then
            result.summary = t
            setmetatable(result,GameDataBase.SheetLineBase)
          end
          return result
        end
      end
    end
  end

  return nil
end

GameDataBase.SheetBase.__newindex = function(t,k,v)
  Logger.LogError("attempt to update a read-only table")
end



function GameDataBase.SheetBase.GetCount(t)
  return t.count
end

function GameDataBase.SheetBase.GetKeys(t)
  if t.count > GameDataBase.SheetBase.MaxForKeysAsWarning then
    Logger.Log("The key is to much!!!  ")
  end

  local keys = {}

  for i =1,t.subformCount do
    local subform = t.subforms[i]
    local cachedData = GameDataBase.SheetBase.LoadSubform(subform)
    if cachedData then
      for k,v in pairs(cachedData) do
        table.insert(keys,k)
      end
    end
  end

  rawset(t,"keys",keys)

  return keys
end

function GameDataBase.SheetBase.LoadSubform(subform)
    local cachedData = rawget(subform,"cachedData")
    if not cachedData then
        cachedData = require(subform.path)
        rawset(subform,"cachedData",cachedData)
    end

    return cachedData
end

function GameDataBase.SheetBase.LoadText(t)
  local textPath = rawget(t,"textPath")
  if textPath then
    textPath = textPath.."_"..LangUtil.GetLanguage()
    local text = require(textPath)
    rawset(t,"text",text)
    return text
  end
  return nil
end

function GameDataBase.SheetBase.LoadString(t)
  local strPath = rawget(t,"stringPath")
  if strPath then
    local str = require(strPath)
    rawset(t,"str",str)
    return str
  end
  return nil
end

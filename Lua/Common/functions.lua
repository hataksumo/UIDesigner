
--输出日志--
function log(str)
    ZFDebug.Log(str);
end

--错误日志--
function logError(str) 
	ZFDebug.Error(str);
end

--警告日志--
function logWarn(str) 
	ZFDebug.LogWarning(str);
end

--查找对象--
function find(str)
	return GameObject.Find(str);
end

function destroy(obj)
	GameObject.Destroy(obj);
end

function newObject(prefab)
	return GameObject.Instantiate(prefab);
end

--创建面板--
function createPanel(name)
	PanelManager:CreatePanel(name);
end

function child(str)
	return transform:FindChild(str);
end

function subGet(childNode, typeName)		
	return child(childNode):GetComponent(typeName);
end

function findPanel(str) 
	local obj = find(str);
	if obj == nil then
		error(str.." is null");
		return nil;
	end
	return obj:GetComponent("BaseLua");
end

local hexHash = {'0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'}

function getHex(v_num)
    local a1 = hexHash[v_num % 16 + 1]
    v_num = math.floor(v_num / 16)
    local a2 = hexHash[v_num % 16 + 1]
    v_num = math.floor(v_num / 16)
    local a3 = hexHash[v_num % 16 + 1]
    v_num = math.floor(v_num / 16)
    local a4 = hexHash[v_num % 16 + 1]
    return a4..a3..a2..a1
end

function print_buffer(v_buffer)
	local len = v_buffer.Length
	local pt = {}
	for i=0,len-1 do
		table.insert(pt,getHex(v_buffer[i]))
	end
	print(table.concat(pt," "))
end

function print_raw_string(v_string)
	local tt = {}
	for i=1,#v_string do
		table.insert(tt,string.byte(v_string,i))
	end
	print(table.concat(tt," "))
end

function table.cloneArr(v_dst,v_src)
	local newClone = {}
	for _i,val in ipairs(v_src) do
		table.insert(v_dst,val)
	end
	return newClone
end

function table.clone(v_src)
	function copyData(v_data)
		local newTable = {}
		for key,data in pairs(v_data) do
			if type(data) == "table" then
				newTable[key] = copyData(data)
			else
				newTable[key] = data
			end
		end
		return newTable
	end
    return copyData(v_src)
end

function table.copyInto(v_dst,v_src)
	for key,val in pairs(v_src) do
		if not v_dst[key] then
			v_dst[key] = val
		end
	end
	return v_dst
end
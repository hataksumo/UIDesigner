function getTars(v_tar)
	local rst = {}
	if (v_tar and 1) > 0 then
		table.insert(rst,1)
	end
	if (v_tar and 2) > 0 then
		table.insert(rst,2)
	end
	if (v_tar and 4) > 0 then
		table.insert(rst,3)
	end
	return rst
end

--主入口函数。从这里开始lua逻辑
function Main()
local crit = 0.1
local Show_Fac = 100
string.format("暴击率 +%f%%",crit * Show_Fac)
end


--场景切换通知
function OnLevelWasLoaded(level)
	collectgarbage("collect1")
	Time.timeSinceLevelLoad = 0
end

function OnApplicationQuit()
end
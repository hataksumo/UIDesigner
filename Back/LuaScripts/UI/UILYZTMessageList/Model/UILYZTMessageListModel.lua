
--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UILYZTMessageListModel = BaseClass("UILYZTMessageListModel", UIBaseModel)
local base = UIBaseModel

-- 创建
local function OnCreate(self)
	base.OnCreate(self)
	-- 窗口生命周期内保持的成员变量放这

end

-- 打开
local function OnEnable(self)
	base.OnEnable(self)
	-- 窗口关闭时可以清理的成员变量放这

	self:OnRefresh()
end

-- 刷新全部数据
local function OnRefresh(self)
	self.msgList={};
	local npcList=LTData:GetInstance():GetNpcList();
	if npcList then
		for i, v in pairs(npcList) do
			local npcId=v.id;
			local npcDilog=LTData:GetInstance():GetNpcDilog(npcId);
			local finalDilog="";
			local count=#npcDilog;
			if npcDilog~=nil then
				local lastNpcDilogData=LTData:GetInstance().npc_dialog[npcId];
				local isEnd= lastNpcDilogData.dialog[lastNpcDilogData.cur_dialog_index].is_end;
				--检测当前是否是最后一条对话
				if isEnd==1 then
					if npcDilog[count]~=nil then
						finalDilog=npcDilog[count].content[1];
					end
				else
					if npcDilog[count-1]~=nil then
						finalDilog=npcDilog[count-1].content[1];
					elseif npcDilog[count]~=nil then
						if npcDilog[count].is_npc==2 then
							finalDilog=npcDilog[count].content[1];
						end
					end
				end
			end
			table.insert(self.msgList,{id=v.id,name=v.name,icon=v.icon,isDead=i%2==0,info=finalDilog})
		end
	end

end

-- 监听
local function OnAddListener(self)
	base.OnAddListener(self)
	--添加监听

end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- 移除监听

end

-- 关闭
local function OnDisable(self)
	base.OnDisable(self)
	-- 清理成员变量
	
end

-- 销毁
local function OnDestroy(self)
	base.OnDestroy(self)
	-- 清理成员变量

end

UILYZTMessageListModel.OnCreate = OnCreate
UILYZTMessageListModel.OnEnable = OnEnable
UILYZTMessageListModel.OnRefresh = OnRefresh
UILYZTMessageListModel.OnAddListener = OnAddListener
UILYZTMessageListModel.OnRemoveListener = OnRemoveListener
UILYZTMessageListModel.OnDisable = OnDisable
UILYZTMessageListModel.OnDestroy = OnDestroy

return UILYZTMessageListModel
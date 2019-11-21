
--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UILYZTChatModel = BaseClass("UILYZTChatModel", UIBaseModel)
local base = UIBaseModel

-- 创建
local function OnCreate(self)
	base.OnCreate(self)
	-- 窗口生命周期内保持的成员变量放这

end

-- 打开
local function OnEnable(self,_npcId,_npcIcon)
	base.OnEnable(self)
	-- 窗口关闭时可以清理的成员变量放这
	self.dialogList={};
	self.npcIcon=_npcIcon;
	self.npcId=_npcId;
	local npcDilog=LTData:GetInstance():GetNpcDilog(_npcId);
	self.finalDialog={};
	self.isEnd=0;
	if npcDilog~=nil then

		local lastNpcDilogData=LTData:GetInstance().npc_dialog[_npcId];
		self.isEnd= lastNpcDilogData.dialog[lastNpcDilogData.cur_dialog_index].is_end;
		local count=#npcDilog;
		for i, v in ipairs(npcDilog) do
			local icon=v.is_npc==1 and _npcIcon or "ui_dtex_Elingruqin_001";
			--检测当前是否是最后一条对话
			if self.isEnd==1 then
				table.insert(self.dialogList,{content=v.content[1],id=v.ids[1],isNpac=v.is_npc,pos=0,icon=icon});
			else
				if i~=count then
					table.insert(self.dialogList,{content=v.content[1],id=v.ids[1],isNpac=v.is_npc,pos=0,icon=icon});
				elseif i==count  then
					table.insert(self.finalDialog,{content=v.content,id=v.ids,isNpac=v.is_npc,icon=icon});
				end
			end
		end
	end

	self:OnRefresh()
end

-- 刷新全部数据
local function OnRefresh(self)


end

--刷新下一条对话
local function RefreshNextDialog(self)
	local npcDilog=LTData:GetInstance():GetNpcDilog(self.npcId);
	local count=#npcDilog;
	if npcDilog~=nil and npcDilog[count]~=nil then
		self.finalDialog={};
		local icon=npcDilog[count].is_npc==1 and self.npcIcon or "ui_dtex_Elingruqin_001";
		table.insert(self.finalDialog,{content=npcDilog[count].content,id=npcDilog[count].ids,isNpac=npcDilog[count].is_npc,icon=icon});
		UIManager:GetInstance():Broadcast(UIMessageNames.UI_LT_REFRESH_NEXT_DIALOG);
	end
end

-- 监听
local function OnAddListener(self)
	base.OnAddListener(self)
	--添加监听
	self:AddDataListener(DataMessageNames.ON_LT_DATA_REFRESH_NEXT_DIALOG,RefreshNextDialog)
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- 移除监听
	self:RemoveDataListener(DataMessageNames.ON_LT_DATA_REFRESH_NEXT_DIALOG,RefreshNextDialog)
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

UILYZTChatModel.OnCreate = OnCreate
UILYZTChatModel.OnEnable = OnEnable
UILYZTChatModel.OnRefresh = OnRefresh
UILYZTChatModel.OnAddListener = OnAddListener
UILYZTChatModel.OnRemoveListener = OnRemoveListener
UILYZTChatModel.OnDisable = OnDisable
UILYZTChatModel.OnDestroy = OnDestroy

return UILYZTChatModel
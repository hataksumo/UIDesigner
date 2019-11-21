
--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UISkillTipsModel = BaseClass("UISkillTipsModel", UIBaseModel)
local base = UIBaseModel
local skill_data = DataUtil.GetData("skill")
local skill_effect = DataUtil.GetData("skill_effect")
local card = DataUtil.GetData("card")

-- 创建
local function OnCreate(self)
	base.OnCreate(self)
	-- 窗口生命周期内保持的成员变量放这

end

-- 打开
local function OnEnable(self,_id,_lv,is_right,_cardId,_data)
	base.OnEnable(self)
	self.skill_single_data ={}
	self.is_right=is_right
	-- 窗口关闭时可以清理的成员变量放这
	if skill_data[_id] ~= nil then
		local skillData = {}
		skillData.name = skill_data[_id].Name
		skillData.icon = skill_data[_id].Icon

		if skill_data[_id].ShowFireType == 1 then
			skillData.type_name ="【主动技能】"
		elseif skill_data[_id].ShowFireType == 2 then
			skillData.type_name ="【被动技能】"
		elseif skill_data[_id].ShowFireType == 3 then
			skillData.type_name ="【连击技能】"
		end
		skillData.level = "等級：1"
		skillData.quality =  skill_data[_id].Quality
		self.lv = 1
		skillData.des = DataUtil.GetSkillDesByIdAndLevel(_id,self.lv,1)
		if _lv ~= nil then
			self.lv = _lv
		else
			self.lv = skillData.level
		end
		self.skill_single_data = skillData
	elseif skill_effect[_id] ~= nil then
		local skillData = {}
		skillData.name = _data.name.."增强"
		skillData.icon = _data.icon
		skillData.isExp = _data.isExc
		skillData.type_name ="【技能效果】"
		skillData.level = "等級：1"
		skillData.quality = "ui_dtex_Quality_082"
		self.lv = 1
		if _lv ~= nil then
			self.lv = _lv
		else
			self.lv = skillData.level
		end
		skillData.des = skill_effect[_id].lvs[1].EffectDesc
		self.skill_single_data = skillData
	else
		Logger.Log("--------------技能id查不到------------------".._id)
	end

	self:OnRefresh()
end

-- 刷新全部数据
local function OnRefresh(self)


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
local function OnDistroy(self)
	base.OnDistroy(self)
	-- 清理成员变量

end

UISkillTipsModel.OnCreate = OnCreate
UISkillTipsModel.OnEnable = OnEnable
UISkillTipsModel.OnRefresh = OnRefresh
UISkillTipsModel.OnAddListener = OnAddListener
UISkillTipsModel.OnRemoveListener = OnRemoveListener
UISkillTipsModel.OnDisable = OnDisable
UISkillTipsModel.OnDistroy = OnDistroy

return UISkillTipsModel
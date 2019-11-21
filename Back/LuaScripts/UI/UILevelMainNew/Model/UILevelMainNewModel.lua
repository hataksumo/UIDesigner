
--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UILevelMainNewModel = BaseClass("UILevelMainNewModel", UIBaseModel)
local base = UIBaseModel


local ChapterData={
	id=0;--id
	name="",--章节名字
	sceneName="",--场景名字
	lock=false,--是否未开启
	haveAward=false,--是否有奖励可领取
	lockTip="",--未开启提示
	totalStar=0,--总星数
	curStar=0,--当前星数
	boxData=0,--宝箱数据
	levelData=0,--关卡数据
	trilPortal=0,--训练入口id
	extrBox={},--额外宝箱
}
local ChapterDataModel=BaseClass("ChapterDataModel",ChapterData);
-- 创建
local function OnCreate(self)
	base.OnCreate(self)
	-- 窗口生命周期内保持的成员变量放这
	self.targetData = {}
end

--获取领取宝箱的状态
local function GetBoxTakeState(_levelId)
	local state=0;
	local rewardIdList={};
	local pass = MapData:GetInstance():CheckPassLevel(_levelId)
	if pass then
		state=1;
		if MapData:GetInstance().levelRewards~=nil then
			for i, v in ipairs(MapData:GetInstance().levelRewards) do
				rewardIdList[v]=i;
			end
		end
		if rewardIdList[_levelId] then
			state=2;
		end
	end
	return state;
end

-- 是否有可领取宝箱
local function IsHaveAward(tb_chapter)
	local isHaveReward=false;
	if tb_chapter._StarBox == nil or tb_chapter._StarBox._is_null then
		isHaveReward= false
	end
	for k1,v1 in pairs(tb_chapter._StarBox) do
		if tb_chapter._Stars >= k1 and v1._state == 0 then
			isHaveReward= true
		end
	end
	for i, v in pairs(tb_chapter._extrBox) do
		if GetBoxTakeState(v.LevelIdRequired)==1 then
			isHaveReward=true;
		end ;
	end
	return isHaveReward;
end
local function GetLevelName(LevelId)
	local chapter = LevelId%10000

	local name = Mathf.Floor(chapter/100).."-"..(chapter%100)
	return name
end
--创建章节列表数据
local function CreatChapterList(self,_type)

	local chapterList={};
	local data= MapData:GetInstance():GetCurTypeList(_type)
	for i, v in ipairs(data) do
		local singleChapter= ChapterDataModel.New();
		singleChapter.id=v._id;
		singleChapter.name=v._Name;
		singleChapter.sceneName=v._SceneName;
		singleChapter.trilPortal=v._trilPortal
		singleChapter.extrBox=v._extrBox
		--print("教学关卡的入口id是",v._trilPortal);
		singleChapter.lock= not MapData:GetInstance():CheckOpenChapter(v._id);
		singleChapter.haveAward=IsHaveAward(v);
		local tipStr="";
		local _data = v._Levels[1]._data
		local LastIds = _data.LastId
		if LastIds ~= nil then
			for _,v in ipairs(LastIds) do
				local chapter = GetLevelName(v)
				if string.len(tipStr) >0 then
					tipStr = tipStr.."、"..chapter
				else
					tipStr = chapter
				end
				singleChapter.lockTip= string.format("通关剧情<color=#FEC200>%s</color>开启",tipStr)
			end
		end
		singleChapter.totalStar=v._BoxNum;
		singleChapter.curStar=v._Stars;
		singleChapter.boxData={};
		local keys= table.keys(v._StarBox)
		table.sort(keys);
		for a = 1, #keys do
			table.insert(singleChapter.boxData,v._StarBox[keys[a]])
		end

		singleChapter.levelData=v._Levels;
		table.insert(chapterList,singleChapter);
	end
	return chapterList;
end

--设置选中类型
local function SetSelectType(self,_type,_isSend)

	self.curSelectType=_type;
	self.curTypeMaxLevelId= MapData:GetInstance().allChapter[self.curSelectType].curMaxLevelid;
	self.curSelectChapterIndex=self.curTypeMaxLevelId==-1 and 1 or math.floor(self.curTypeMaxLevelId/100)- 100*_type;
	self.curChapterListData=CreatChapterList(self,self.curSelectType);
	if _isSend then
		UIManager:GetInstance():Broadcast(UIMessageNames.UI_LEVEL_REFRESH);
	end
end

local function GetTargetData(self)
	self.targetData = MapData:GetInstance():GetChapTargetRewardData()
	UIManager:GetInstance():Broadcast(UIMessageNames.UI_TARGET_AWARD_UPDATE)
end

-- 打开
local function OnEnable(self,_animType,_isHide,_isBattleReturn)
	base.OnEnable(self)
	-- 窗口关闭时可以清理的成员变量放这
	if _isBattleReturn~=nil then
		self.isBattleReturn=_isBattleReturn;
	end

	self._isHide=false;
	if _isHide~=nil then
		self._isHide=_isHide;
	end
	_animType=1;
	self.curSelectType= MapData:GetInstance().curSelectType ==nil and 1 or MapData:GetInstance().curSelectType;
	self.lineAnimType=_animType;
	self.curTypeMaxLevelId= MapData:GetInstance().allChapter[self.curSelectType].curMaxLevelid;
	self.targetMaxLevelId= MapData:GetInstance().allChapter[1].curMaxLevelid;
	self.curSelectChapterIndex=MapData:GetInstance():GetShowChapterIndex();
	self.curChapterListData=CreatChapterList(self,self.curSelectType);
	self.targetData = MapData:GetInstance():GetChapTargetRewardData()

	--检测升级，弹出升级界面
	local oldLv=UserData:GetInstance().oldLv;
	local curLv=UserData:GetInstance().pLevel;
	self.isShowMask=false;
	if UserData:GetInstance().isShowLvPanel then
		self.isShowMask=true;
		UserData:GetInstance().isShowLvPanel=false;
		UIManager:GetInstance():OpenWindow(UIWindowNames.UILevelUnlockTip,oldLv,curLv);
	end
end

--章节选中
local function ChapterSelect(self,_index)
	self.curSelectChapterIndex=_index;
	UIManager:GetInstance():Broadcast(UIMessageNames.UI_CHAPTER_SELECT_REFRESH);
end

--更新宝箱数据
local function RefreshBoxList(self)
	self.curChapterListData=CreatChapterList(self,self.curSelectType);
	UIManager:GetInstance():Broadcast(UIMessageNames.UI_CHAPTER_GET_BOX_REFRESH);
end

--刷新节宝箱领取状态
local function RefreshLevelBoxData(self)
	self.curChapterListData=CreatChapterList(self,self.curSelectType);
	UIManager:GetInstance():Broadcast(UIMessageNames.UI_LEVEL_BOX_REFRESH);
end

-- 监听
local function OnAddListener(self)
	base.OnAddListener(self)
	--添加监听
	self:AddUIListener(UIMessageNames.UI_LEVEL_SET_SELECT_TYPE,SetSelectType)
	self:AddUIListener(UIMessageNames.UI_CHAPTER_SELECT,ChapterSelect)
	self:AddUIListener(UIMessageNames.UI_CHAPTER_GET_BOX,RefreshBoxList)
	self:AddDataListener(DataMessageNames.ON_TARGET_REWARD_UPDATE, GetTargetData)
	self:AddDataListener(DataMessageNames.ON_LEVEL_BOX_REWARD_REFRESH,RefreshLevelBoxData)
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- 移除监听
	self:RemoveUIListener(UIMessageNames.UI_LEVEL_SET_SELECT_TYPE,SetSelectType)
	self:RemoveUIListener(UIMessageNames.UI_CHAPTER_SELECT,ChapterSelect)
	self:RemoveUIListener(UIMessageNames.UI_CHAPTER_GET_BOX,RefreshBoxList)
	self:RemoveDataListener(DataMessageNames.ON_TARGET_REWARD_UPDATE, GetTargetData)
	self:RemoveDataListener(DataMessageNames.ON_LEVEL_BOX_REWARD_REFRESH,RefreshLevelBoxData)
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

UILevelMainNewModel.OnCreate = OnCreate
UILevelMainNewModel.OnEnable = OnEnable
UILevelMainNewModel.OnAddListener = OnAddListener
UILevelMainNewModel.OnRemoveListener = OnRemoveListener
UILevelMainNewModel.OnDisable = OnDisable
UILevelMainNewModel.OnDistroy = OnDistroy
UILevelMainNewModel.GetLevelName=GetLevelName;

return UILevelMainNewModel
--[[
-- added by wsh @ 2018-02-26
-- UITestMain视图层
--]]

local UITestMainView = BaseClass("UITestMainView", UIBaseView)
local base = UIBaseView

local ResourceBarComponentManager=require("UI.UIResourceBar.ResourceBarComponentManager");
local MainCityCommonBtnManager=require("UI.UITestMain.View.MainCityCommonBtnManager")
local UIMainTaskWindow = require "UI.UIMainTask.UIMainTaskWindow"
local lv_data=DataUtil.GetData("team_level")
-- 各个组件路径
local parent_layout_path="parentLayout"
local mail_btn_path="parentLayout/Mail"
local mail_redpoint_path="parentLayout/Mail/redpoint"
local lv_text_path = "parentLayout/PlayerInfo/LvBg/Num"
local lv_img_path = "parentLayout/PlayerInfo/LvBg/LvPer"
local artifact_btn_path="parentLayout/MainBtn/artifactBtn";
local fetter_btn_path="parentLayout/MainBtn/fetterBtn";
local telepathize_btn_path="parentLayout/MainBtn/telepathizeBtn";

local gift_SevenDayGift_path="parentLayout/RightActiveObject/SevenDayGiftBtn"
local gift_SevenDayGiftText_path="parentLayout/RightActiveObject/SevenDayGiftBtn/Text1"
local gift_OnlineGift_path="parentLayout/RightActiveObject/OnLineGiftBtn"
local gift_OnlineGiftText_path="parentLayout/RightActiveObject/OnLineGiftBtn/Text2"
local gift_LevelGift_path="parentLayout/RightActiveObject/LvGiftBtn"
local gift_LevelGiftText_path="parentLayout/RightActiveObject/LvGiftBtn/Text3"
local gift_Carnival_path="parentLayout/RightActiveObject/CarnivalBtn"

local set_btn_path="parentLayout/PlayerInfo/Head";
local red_point_path="parentLayout/RightActiveObject/SevenDayGiftBtn/redpoint1"
local red_point_path2="parentLayout/RightActiveObject/OnLineGiftBtn/redpoint2"
local red_point_path3="parentLayout/RightActiveObject/LvGiftBtn/redpoint3"
local red_point_path4="parentLayout/RightActiveObject/CarnivalBtn/redpoint4"
local resource_bar_parent_path="parentLayout/ResourceBarParent";
local chat_content_path="parentLayout/Chat/mask/Content";
local exp_prc_text_path="parentLayout/PlayerInfo/LvBg/Exp";
local survey_btn_path="parentLayout/LeftTopLayout/surveyBtn";
local user_hell_btn_path="parentLayout/PlayerInfo/topFunLayout/UserHell";
local friend_btn_path="parentLayout/Friend";
local mission_btn_path="parentLayout/RightActiveObject/MissionBtn";
local country_war_btn_path="parentLayout/rightLayout/countryWarBtn";
local explore_btn_path="parentLayout/MainBtn/exploreBtn";
local user_hell_icon_path="parentLayout/PlayerInfo/hell/hellIcon";
local left_ctrl_btn_path="parentLayout/leftCtrlBtn/ctrlBtn";
local left_ctrl_img_path="parentLayout/leftCtrlBtn/ctrlBtn/ctrlBtnImg";
local best_force_text_path="parentLayout/PlayerInfo/Bg/forceText";
local new_fun_obj_path="parentLayout/LeftTopLayout/funOpen";
local new_fun_icon_path="parentLayout/LeftTopLayout/funOpen/funIcon";
local new_fun_tip_path="parentLayout/LeftTopLayout/funOpen/open/openText";
local lyzt_btn_path="parentLayout/PlayerInfo/topFunLayout/lyztBtn";
local ld_reward_btn_path="parentLayout/RightActiveObject/LdRewardBtn";

--红点--
local master_hell_red_path="parentLayout/PlayerInfo/topFunLayout/UserHell/redpoint";
local mission_red_path="parentLayout/RightActiveObject/MissionBtn/redPointImg";
local friend_red_path="parentLayout/Friend/redpoint";
local ld_reward_red_path="parentLayout/RightActiveObject/LdRewardBtn/ldRedPoint";

--播放右侧运营活动动画
local function PlayRightActiveBtnListAnim(self,_state)
    local finalChangeList={};
    for i, v in ipairs(self.rightBtnList) do
        if v.state==0 and v.open then
            table.insert(finalChangeList,v);
        end
    end
    self.timerList={};
    for i, v in ipairs(finalChangeList) do
        self.timerList[i]= TimerManager:GetInstance():SimpleTimerArgs(0.05*(i-1),function()
            v.btn.gameObject:SetActive(self.rightBtnState==0);
            self.timerList[i]=nil;
            if i==#finalChangeList then
                self.rightBtnState=1-self.rightBtnState;
                self.canRightClick=true;
            end
        end,nil,true)
    end

end

--设置右侧按钮位置初始状态
local function SetRightActiveBtnInitial(self)
    self.rightBtnState=1
    local scaleX=self.rightBtnState==1 and -1 or 1;
    self.leftCtrlImg.transform.localScale=Vector3.New(scaleX,1,1);
    self.canRightClick=true;
    for i, v in ipairs(self.rightBtnList) do
        if v.open then
            v.btn.transform.gameObject:SetActive(true);
        end
    end
end

--添加对呀的功能按钮列表
local function AddFunBtnListByFunId(self)
    self.funBtnList={};

    self.funBtnList[101]=self.maoxianBtn.transform.gameObject;--冒险
    self.funBtnList[901]=self.surveyBtn.transform.gameObject;--问卷调查
    self.funBtnList[205]=self.userHellBtn.transform.gameObject;--地狱道


    --self.funBtnList[303]=self.missionBtn.transform.gameObject;--每日任务
    self.funBtnList[304]=self.mainTaskObj.transform.gameObject;--主线任务
    --self.funBtnList[312]=self.GiftCarnivalBtn.transform.gameObject;--嘉年华


    self.funBtnList[104]=self.arenaBtn.transform.gameObject;--竞技场
    self.funBtnList[203]=self.artifactBtn.transform.gameObject;--神器
    self.funBtnList[301]=self.shopBtn.transform.gameObject;--商店
    self.funBtnList[306]=self.tanxianBtn.transform.gameObject;--挑战
    self.funBtnList[319]=self.fetterBtn.transform.gameObject;--传记副本
    self.funBtnList[106]=self.exploreBtn.transform.gameObject;--探险
    self.funBtnList[305]=self.telepathizeBtn.transform.gameObject;--通灵
    self.funBtnList[401]=self.countryWarBtn.transform.gameObject;--国战
    
end

--屏蔽右上方运营活动按钮（策划说的算）
local function ShowRightBtnActive(self)
    for i, v in ipairs(self.rightBtnList) do
        v.btn.gameObject:SetActive(v.state~=2);
    end
end

local function OnCreate(self)
    base.OnCreate(self)
    self.openFunObj=UIUtil.FindTrans(self.transform,new_fun_obj_path);
    self.openFunIcon=self:AddComponent(UIImage,new_fun_icon_path,AtlasConfig.DynamicTex);
    self.openFunTipText=self:AddComponent(UIText,new_fun_tip_path);
    self.bestForce=self:AddComponent(UIText,best_force_text_path);
    self.leftCtrlImg=UIUtil.FindTrans(self.transform,left_ctrl_img_path);
    self.leftCtrlBtn=self:AddComponent(UIButton,left_ctrl_btn_path);
    self.leftCtrlBtn:SetOnClick(function()
        if self.canRightClick then
            local scaleX=1-self.rightBtnState==1 and -1 or 1;
            self.leftCtrlImg.transform.localScale=Vector3.New(scaleX,1,1);
            self.canRightClick=false;
            PlayRightActiveBtnListAnim(self,self.rightBtnState);
        end
    end);
    self.lyztBtn=self:AddComponent(UIButton,lyzt_btn_path);
    self.lyztBtn.gameObject:SetActive(false)
    self.lyztBtn:SetOnClick(function()
        LTData:GetInstance():Initial();
        UIManager:GetInstance():OpenWindow(UIWindowNames.UILYZTMain);
    end)
    --红点--
    self.masterHellRed=UIUtil.FindTrans(self.transform,master_hell_red_path);
    self.missionRed=UIUtil.FindTrans(self.transform,mission_red_path);
    self.friendRed=UIUtil.FindTrans(self.transform,friend_red_path);

    self.exploreBtn=self:AddComponent(UIButton,explore_btn_path);
    self.exploreBtn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        local curState ,type,des= UnlockData:GetInstance():GetLockDataState(106)
        if not curState then
            UISpecial:GetInstance():UITipText(des)
            return
        end
        ExploreData:GetInstance():GetExploreDataState(function(state)
            if state==0 then--第一次探险挂机
                UIManager:GetInstance():OpenWindow(UIWindowNames.UIExploreSetTeamList);
            else
                UIManager:GetInstance():OpenWindow(UIWindowNames.UIExploreMain);
            end

        end);
    end)
    self.countryWarBtn=self:AddComponent(UIButton,country_war_btn_path);
    self.countryWarBtn.gameObject:SetActive(Config.NATION_CLIENT_SWITCH);
    self.countryWarBtn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        self.ctrl:SendEnterNationLogic();
    end)
    self.missionBtn=self:AddComponent(UIButton,mission_btn_path);
    self.missionBtn:SetOnClick(function()

        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        TaskData:GetInstance():RequestGetAllDaily()
        UIManager:GetInstance():OpenWindow(UIWindowNames.UIDailyTask)
    end)
    --self.missionBtn.gameObject:SetActive(false)
    self.userHellBtn=self:AddComponent(UIButton,user_hell_btn_path);
    self.userHellBtn:SetOnClick(function()
        local state ,type,des= UnlockData:GetInstance():GetLockDataState(205)
        if not state then
            UISpecial:GetInstance():UITipText(des)
            return
        end
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        local master_hell_data = DataUtil.GetData("master_hell")
        if UserData:GetInstance().hellLevel > #master_hell_data then
            UISpecial:GetInstance():UITipText("已到最大等级")
        else
            UIManager:GetInstance():OpenWindow(UIWindowNames.UIUserHell)
        end

    end);
    --好友按钮
    self.friendBtn=self:AddComponent(UIButton,friend_btn_path);
    --self.friendBtn.gameObject:SetActive(false);
    self.friendBtn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        UIManager:GetInstance():OpenWindow(UIWindowNames.UIFriend)
    end)
    self.telepathizeBtn=self:AddComponent(UIButton,telepathize_btn_path);
    self.tongling_red=UIUtil.FindTrans(self.transform,"parentLayout/MainBtn/telepathizeBtn/tongling_red").gameObject
    self.telepathizeBtn:SetOnClick(function()
        local state ,type,des= UnlockData:GetInstance():GetLockDataState(305)
        if not state then
            UISpecial:GetInstance():UITipText(des)
            return
        end
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        UIManager:GetInstance():OpenWindow(UIWindowNames.UITongLin);
    end)
    self.fetterBtn=self:AddComponent(UIButton,fetter_btn_path);
    self.fetterBtn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        UIManager:GetInstance():OpenWindow(UIWindowNames.UIBiography);
    end)
    self.artifactBtn=self:AddComponent(UIButton,artifact_btn_path);
    self.artifactBtn:SetOnClick(function()
        local state ,type,des= UnlockData:GetInstance():GetLockDataState(203)
        if not state then
            UISpecial:GetInstance():UITipText(des)
            return
        end
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        UIManager:GetInstance():OpenWindow(UIWindowNames.UINewArtifact)
    end)
    self.maoxianBtn=self:AddComponent(UIButton,"parentLayout/rightLayout/maoxianBtn");
    self.maoxianBtn:SetOnClick(function()
        local state ,type,des= UnlockData:GetInstance():GetLockDataState(101)
        if not state then
            UISpecial:GetInstance():UITipText(des)
            return
        end
        LJAudioManger:GetInstance():PlayVoice("UI_Adventure_01")
        UIManager:GetInstance():OpenWindow(UIWindowNames.UILevelMainNew,1);

    end)
    self.arenaBtn=self:AddComponent(UIButton,"parentLayout/MainBtn/arenaBtn");
    self.arenaBtn:SetOnClick(function()
        local state ,type,des= UnlockData:GetInstance():GetLockDataState(104)
        if not state then
            UISpecial:GetInstance():UITipText(des)
            return
        end
        LJAudioManger:GetInstance():PlayVoice("UI_Arena_01")
        ArenaData:GetInstance():OpenArena()
    end);
    self.tanxianBtn=self:AddComponent(UIButton,"parentLayout/MainBtn/challengeBtn");
    self.tanxianBtn:SetOnClick(function ()

        local state ,type,des= UnlockData:GetInstance():GetLockDataState(306)
        if not state then
            UISpecial:GetInstance():UITipText(des)
            return
        end
        LJAudioManger:GetInstance():PlayVoice("UI_Challenge_01")
        UIManager:GetInstance():OpenWindow(UIWindowNames.UIChallengeEntrance);
    end);
    self.shopBtn=self:AddComponent(UIButton,"parentLayout/RightActiveObject/ShopBtn");
    self.shopBtn:SetOnClick(function()
        --GuideCheckManager:GetInstance():CheckLanch(36)
        --DataManager:GetInstance():Broadcast(DataMessageNames.UI_Guide_NeedEvent)
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        local state ,type,des= UnlockData:GetInstance():GetLockDataState(301)
        if not state then
            UISpecial:GetInstance():UITipText(des)
            return
        end
        UIManager:GetInstance():OpenWindow(UIWindowNames.UIWindowShopMain);
        --]]
    end)

    -- 初始化各个组件
    self.surveyBtn=self:AddComponent(UIButton,survey_btn_path);
    self.surveyBtn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        --self.ctrl:RequestQuestionRewardRequest();
        if self.model.isShowSurveyBtn then
            GameChannelMgr:GetInstance():ShowQuestion(tostring(UserData:GetInstance().pLevel),tostring(ClientData:GetInstance().sdkPlayerId),tostring(ClientData:GetInstance().login_server_id),tostring(ClientData:GetInstance().user_id),"镇魂街",
                    function(state)
                        Logger.Log("打开成功")
                        if tonumber(state)==0 then--成功
                            self.ctrl:RequestQuestionRewardRequest();
                        else
                            Logger.Log("问卷回答未成功:"..state)
                        end
                    end)
        end
    end)
    self.resourceBarParent=UIUtil.FindTrans(self.transform,resource_bar_parent_path);
    self.parentLayout=UIUtil.FindTrans(self.transform,parent_layout_path);
    self.setBtn=self:AddComponent(UIButton,set_btn_path);
    self.headImg = self:AddComponent(UIImage,"parentLayout/PlayerInfo/Head",AtlasConfig.DynamicTex)
    self.frameImg = self:AddComponent(UIImage,"parentLayout/PlayerInfo/HeadBg (1)",AtlasConfig.DynamicTex)
    self.lv_eff=UIUtil.FindTrans(self.transform,"parentLayout/RightActiveObject/LvGiftBtn/fx_ui_RightActiveObject_stand_lv")
    self.online_eff=UIUtil.FindTrans(self.transform,"parentLayout/RightActiveObject/OnLineGiftBtn/fx_ui_RightActiveObject_stand_online")
    self.seven_eff=UIUtil.FindTrans(self.transform,"parentLayout/RightActiveObject/SevenDayGiftBtn/fx_ui_RightActiveObject_stand_seven")
    self.cran_eff=UIUtil.FindTrans(self.transform,"parentLayout/RightActiveObject/CarnivalBtn/fx_ui_RightActiveObject_stand_carn")
    self.setBtn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        UIManager:GetInstance():OpenWindow(UIWindowNames.UISetMain)
    end)
    self.GiftSevenDayGiftBtn = self:AddComponent(UIButton,gift_SevenDayGift_path)
    self.GiftSevenDayGiftImage = self:AddComponent(UIImage,gift_SevenDayGift_path)
    self.GiftSevenDayGiftText = self:AddComponent(UIText,gift_SevenDayGiftText_path)
    self.GiftOnlineGiftBtn = self:AddComponent(UIButton,gift_OnlineGift_path)
    self.GiftOnlineGiftImage = self:AddComponent(UIImage,gift_OnlineGift_path)
    self.GiftOnlineGiftText = self:AddComponent(UIButton,gift_OnlineGiftText_path)
    self.GiftLevelGiftBtn=self:AddComponent(UIButton,gift_LevelGift_path)
    self.GiftCarnivalBtn = self:AddComponent(UIButton,gift_Carnival_path)
    self.GiftLevelGiftImage=self:AddComponent(UIImage,gift_LevelGift_path)
    self.GiftLevelGiftText=self:AddComponent(UIButton,gift_LevelGiftText_path)

    self.chat_btn = self:AddComponent(UIButton,"parentLayout/Chat/ChatBg")
    self.readPointImage=self:AddComponent(UIImage,red_point_path)
    self.readPointImage1=self:AddComponent(UIImage,red_point_path2)
    self.readPointImage2=self:AddComponent(UIImage,red_point_path3)
    self.readPointImage3=self:AddComponent(UIImage,red_point_path4)
    self.expPrcText=self:AddComponent(UIText,exp_prc_text_path);
    self.chat_btn:SetOnClick(function ()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        UIManager:GetInstance():OpenWindow(UIWindowNames.UIChat)
    end)



    --世界聊天文本
    self.chatContent=self:AddComponent(UIText,chat_content_path);

    --监听打开迎新七日礼包界面
    self.GiftSevenDayGiftBtn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        UIManager:GetInstance():OpenWindow(UIWindowNames.UIHDQiRiLiBao)
    end)
    --监听打开在线礼包界面
    self.GiftOnlineGiftBtn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        UIManager:GetInstance():OpenWindow(UIWindowNames.UIHDOnLineGift)
    end)
    --监听打开等级礼包界面
    self.GiftLevelGiftBtn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        UIManager:GetInstance():OpenWindow(UIWindowNames.UIHDLevelGift)
    end)
    --监听打开嘉年华界面
    self.GiftCarnivalBtn:SetOnClick(function ()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        UIManager:GetInstance():OpenWindow(UIWindowNames.UICarnival);
    end)

    self.PhbBtn=self:AddComponent(UIButton,"parentLayout/RightActiveObject/phbBtn")
    self.PhbBtn:SetOnClick(function ()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        UIManager:GetInstance():OpenWindow(UIWindowNames.UIPhb)
    end )
    self.lv_text = self:AddComponent(UIText,lv_text_path)
    self.lv_img = self:AddComponent(UIImage,lv_img_path)
    self.name_text = self:AddComponent(UIText,"parentLayout/PlayerInfo/Name")
    self.mail_btn=self:AddComponent(UIButton,mail_btn_path)
    self.mail_btn:SetOnClick(function ()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick");
        if MailData:GetInstance():GetMailRedState()then
            MailData:GetInstance():SendGetAddMailRequest()
        elseif MailData:GetInstance():GetMailIsRequest() then
            MailData:GetInstance():SendGetAddMailRequest()
        else
            UIManager:GetInstance():OpenWindow(UIWindowNames.UIMail)
        end
        if MailData:GetInstance():GetMailRedState() or MailData:GetInstance().isShowRedPointState then
            self.mail_redpoint.gameObject:SetActive(true)
        else
            self.mail_redpoint.gameObject:SetActive(false)
        end
    end)
    self.strongBtn = self:AddComponent(UIButton,"parentLayout/PlayerInfo/topFunLayout/strongBtn")
    self.strongBtn:SetOnClick(function ()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        UIManager:GetInstance():OpenWindow(UIWindowNames.UIGetStrong)
    end)
    self.ldRewardBtn=self:AddComponent(UIButton,ld_reward_btn_path);
    self.ldRewardBtn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        UIManager:GetInstance():OpenWindow(UIWindowNames.UILeadingRoleFor)
    end)
    self.ldRedPoint=UIUtil.FindTrans(self.transform,ld_reward_red_path);
    self.mail_redpoint=UIUtil.FindTrans(self.transform,mail_redpoint_path)
    self.mail_redpoint.gameObject:SetActive(false)
    self.mainTaskObj = UIUtil.FindTrans(self.transform,"parentLayout/UIMainTask")
    self.passTaskObj = UIMainTaskWindow.New(self,self.mainTaskObj.gameObject)
    self.passTaskObj:TaskOnCreate()
    self.userHellIcon=self:AddComponent(UIImage,user_hell_icon_path,AtlasConfig.DynamicTex);

    self.rightBtnList={{btn=self.GiftCarnivalBtn,state=0,open=true},{btn=self.GiftSevenDayGiftBtn,state=0,open=true},{btn=self.GiftLevelGiftBtn,state=0,open=true}
        ,{btn=self.GiftOnlineGiftBtn,state=0,open=true},{btn=self.missionBtn,state=2,open=false},{btn=self.shopBtn,state=1,open=true},{btn=self.ldRewardBtn,state=0,open=true}};
    MainCityCommonBtnManager:GetInstance():CreatMainCityCommonBtn(self.resourceBarParent,UIWindowNames.UITestMain,self);
    ResourceBarComponentManager:GetInstance():CreatResourceBarComponent(self.resourceBarParent,UIWindowNames.UITestMain,ResourceBarType.MAIN_CITY,self);

    self.multipleMonsterObj = UIUtil.FindTrans(self.transform,"parentLayout/MultipleMonsters")
    self.multipleMonsterTimeText = self:AddComponent(UIText,"parentLayout/MultipleMonsters/Image/TimeUIText")
    self.multipleMonsterObj.gameObject:SetActive(false)
    ShowRightBtnActive(self);
    AddFunBtnListByFunId(self);
    self.rightBtnState=1;
    local scaleX=self.rightBtnState==1 and -1 or 1;
    self.leftCtrlImg.transform.localScale=Vector3.New(scaleX,1,1);
end



--世界聊天展示
local function ShowChatInfo(self)
    local str="";
    for i, v in ipairs(self.model.WordChatData) do
        str=  str..v.."\n\r"
    end
    self.chatContent:SetText(str);
end

local function UpdatePlayerLv(self)
    self.lv_text:SetText(math.floor(self.model.lv))
    if self.model.lv>=#lv_data then
        self.lv_img:SetFillVal(1)
        self.expPrcText:SetText("等级已满")
    else
        self.lv_img:SetFillVal(self.model.exp_percent)
        self.expPrcText:SetText(string.format("%s/%s",math.floor(self.model.curLevelExp),math.floor(self.model.curLevelLimitTxp)))
    end

end
--刷新问卷调查状态
local function RefreshSurveyState(self)
    self.surveyBtn.gameObject:SetActive(self.model.isShowSurveyBtn);
end


--设置功能列表开启显示
local function SetFunBtnListActive(self,_active)
    if UnlockData:GetInstance().funOpenState>0 then
        --初始公用按钮为显示
        MainCityCommonBtnManager:GetInstance():SetComInitial(UIWindowNames.UITestMain);
        SetRightActiveBtnInitial(self);
        --设置本次开启的功能按钮隐藏
        local funOpenList=UnlockData:GetInstance().newOpenFunList;
        local unlcok=DataUtil.GetData("unlock");
        for i, v in ipairs(funOpenList) do
            if self.funBtnList[v.id] and unlcok[v.id].ButtonType==1 then
                self.funBtnList[v.id].gameObject:SetActive(_active);
            end
        end
    end
end

local function OnEnable(self)
    base.OnEnable(self)
    local ldRewardTime=UserData:GetInstance().ldRewardTime;
    self.ldRedPoint.transform.gameObject:SetActive(not UserData:GetInstance().ldReward);
    if ldRewardTime==0 then
        self.rightBtnList[7].open=false;
        self.rightBtnList[7].btn.transform.gameObject:SetActive(false);
    else
        if ldRewardTime~=-1 then--等于-1代表未开启
            ldRewardTime=ldRewardTime-(Time.realtimeSinceStartup- UserData:GetInstance().ldRewardInitIime)
            if self.ldRewardTimer~=nil then
                TimerManager:GetInstance():SimpleTimerStop(self.ldRewardTimer);
            end
            self.ldRewardTimer=TimerManager:GetInstance():SimpleTimerArgs(1,function()
                ldRewardTime=ldRewardTime-1;
                if ldRewardTime<=0 then
                    TimerManager:GetInstance():SimpleTimerStop(self.ldRewardTimer);
                    self.rightBtnList[7].open=false;
                    self.rightBtnList[7].btn.transform.gameObject:SetActive(false);
                end
            end,nil,false,false);
        end
    end

    DataManager:GetInstance():Broadcast(DataMessageNames.MainUILockDataNotice)
    if  MainCityCommonBtnManager:GetInstance().maincityBtnHash[UIWindowNames.UITestMain] then
        MainCityCommonBtnManager:GetInstance().maincityBtnHash[UIWindowNames.UITestMain].barComponent:OnEnable();
    end

    self.openFunObj.transform.gameObject:SetActive(self.model.openFunData);
    if self.model.openFunData then
        self.openFunIcon:SetSpriteName(self.model.openFunData.icon);
        self.openFunTipText:SetText(string.format("%s级开启",self.model.openFunData.lv));
    end
    self.bestForce:SetText(math.floor(self.model.maxForce));
    self.canRightClick=true;
    self.userHellIcon:SetSpriteName(self.model.masterIcon);
    RefreshSurveyState(self);
    --CardData:GetInstance():CheckALLRedByCard()
    --UIManager:GetInstance():Broadcast(UIMessageNames.UI_CARD_RED)
    ShowChatInfo(self);
    --[[
    --测试跑马灯简单逻辑
    if UIManager:GetInstance():GetWindow(UIWindowNames.UIHorseLamp,true,true) == nil then
        UIManager:GetInstance():OpenWindow(UIWindowNames.UIHorseLamp)
    end
    --]]
    self.headImg:SetSpriteName(self.model.headImg)
    self.frameImg:SetSpriteName(self.model.frameImg)
    self.parentLayout.transform.gameObject:SetActive(true);
    if MailData:GetInstance():GetMailRedState() or MailData:GetInstance().isShowRedPointState then
        self.mail_redpoint.gameObject:SetActive(true)
    else
        self.mail_redpoint.gameObject:SetActive(false)
    end

    --冒险

    self.lv_text:SetText(math.floor(self.model.lv));
    if self.model.lv>=#lv_data then
        self.lv_img:SetFillVal(1)
        self.expPrcText:SetText("等级已满")
    else
        self.expPrcText:SetText(string.format("%s/%s",math.floor(self.model.curLevelExp),math.floor(self.model.curLevelLimitTxp)));
        self.lv_img:SetFillVal(self.model.exp_percent)
    end

    self.name_text:SetText(self.model.name)
    if(self.model.canLevelClose~=nil and self.model.level~=nil) then
        if(self.model.canLevelClose~=1 and self.model.level>=60) then
            self:UpdateLevelGiftWindowState()
        end
    end
    --TODO  打开的时候判断  三个礼包的状态
    if  not SevenGiftData:GetInstance().sevenDayGiftInfoIsNull then
        self:UpdateSevenDayGiftReadState()
    else
        self:UpdateSevenDayGiftWindowState()
    end
    if not LevelGiftData:GetInstance().levelGiftInfoIsNull then
        self:UpdateLevelGiftReadState()
    else
        self:UpdateLevelGiftWindowState()
    end
    if not OnlineGiftData:GetInstance().onlineGiftInfoIsNull then
       self:UpdateOnlineGiftReadState()
    else
        self:UpdateOnlineGiftWindowState()
    end
    --刷新嘉年华红点
    self:UpdateCarnivalReadState()
    self:UpdateCarnivalWindowState()
    self:RedRefresh()
    local state,type,des= UnlockData:GetInstance():GetLockDataState(304)
    if state and TaskData:GetInstance().main_task_data ~= nil then
        self.mainTaskObj.gameObject:SetActive(true)
        self.passTaskObj:TaskRefresh()
    else
        self.mainTaskObj.gameObject:SetActive(false)
    end


    MainCityCommonBtnManager:GetInstance():CheckIsExist(UIWindowNames.UITestMain);

    for i, v in pairs(self.funBtnList) do
        local state,type,des= UnlockData:GetInstance():GetLockDataState(i)
        self.funBtnList[i].gameObject:SetActive(state);
    end
    --先隐藏将要开启的新功能按钮
    SetFunBtnListActive(self,false);
    if GuideManager:GetInstance().finishGroup then
        if UserData:GetInstance().pLevel==1 and table.keyof(GuideManager:GetInstance().finishGroup,10)==nil then
            self.maoxianBtn.gameObject:SetActive(false)
        end
    else
        self.maoxianBtn.gameObject:SetActive(false)
    end
end
local function OnDisable (self)
    base.OnDisable(self)
    if self.timer then
        self.timer:Stop()
        self.timer=nil
    end
    if self.timerList then
        for i, v in ipairs(self.timerList) do
            if v then
                TimerManager:GetInstance():SimpleTimerStop(v);
                v=nil;
            end
        end
    end
    if self.ldRewardTimer~=nil then
        TimerManager:GetInstance():SimpleTimerStop(self.ldRewardTimer);
    end
end
local function OnDestroy(self)
    base.OnDestroy(self)
    if self.timer then
        self.timer:Stop()
        self.timer=nil
    end
    if self.timerList then
        for i, v in ipairs(self.timerList) do
            if v then
                TimerManager:GetInstance():SimpleTimerStop(v);
                v=nil;
            end
        end
    end
    ResourceBarComponentManager:GetInstance():DestroyResourceBar(UIWindowNames.UITestMain);
    MainCityCommonBtnManager:GetInstance():DestroyMaincityBtn(UIWindowNames.UITestMain);
end
local function UpdateMailReadState(self)
    if MailData:GetInstance():GetMailRedState() or MailData:GetInstance().isShowRedPointState then
        self.mail_redpoint.gameObject:SetActive(true)
    else
        self.mail_redpoint.gameObject:SetActive(false)
    end
end


--更新七日礼包红点状态
local function UpdateSevenDayGiftReadState(self)
    local reddes=RedPointData:GetInstance().RedName.Seven_Gift_Red
    local state=RedPointData:GetInstance():GetRedState(reddes)
    self.readPointImage.gameObject:SetActive(state)
    if state then
        if  not self.GiftSevenDayGiftBtn.gameObject.activeInHierarchy then
            Logger.LogError("目标关闭self.GiftSevenDayGiftBtn")
        end
        if not self.seven_eff.gameObject.activeInHierarchy then
            self.seven_eff.gameObject:SetActive(true)
        end
    else
        if  self.seven_eff.gameObject.activeInHierarchy then
            self.seven_eff.gameObject:SetActive(false)
        end
    end
end
--监测是否关闭七日礼包窗口
local function UpdateSevenDayGiftWindowState(self)
    self.GiftSevenDayGiftBtn.gameObject:SetActive(false)
    self.rightBtnList[2].open = false
end
--更新在线礼包红点状态
local function UpdateOnlineGiftReadState(self)
    local reddes=RedPointData:GetInstance().RedName.Online_Gift_Red
    local state=RedPointData:GetInstance():GetRedState(reddes)
    self.readPointImage1.gameObject:SetActive(state)
    if state then
        if not self.online_eff.gameObject.activeInHierarchy then
            self.online_eff.gameObject:SetActive(true)
        end
    else
        if  self.online_eff.gameObject.activeInHierarchy then
            self.online_eff.gameObject:SetActive(false)
        end
    end
    if self.rightBtnState == 1 and not self.GiftOnlineGiftBtn.gameObject.activeInHierarchy then
        self.GiftOnlineGiftBtn.gameObject:SetActive(true)
    end
end
--监测是否关闭在线礼包窗口
local function UpdateOnlineGiftWindowState(self)
    self.GiftOnlineGiftBtn.gameObject:SetActive(false)
    self.rightBtnList[4].open = false
end
--更新等级礼包红点状态
local function UpdateLevelGiftReadState(self)
    local reddes=RedPointData:GetInstance().RedName.Level_Gift_Red
    local state=RedPointData:GetInstance():GetRedState(reddes)
    self.readPointImage2.gameObject:SetActive(state)
    if state then
        if  not self.GiftLevelGiftBtn.gameObject.activeInHierarchy then
            Logger.LogError("目标关闭self.GiftLevelGiftBtn.gameObject")
        end
        if not self.lv_eff.gameObject.activeInHierarchy then
            self.lv_eff.gameObject:SetActive(true)
        end
    else
        if  self.lv_eff.gameObject.activeInHierarchy then
            self.lv_eff.gameObject:SetActive(false)
        end
    end
end
--监测是否关闭等级礼包窗口
local function UpdateLevelGiftWindowState(self)
    self.GiftLevelGiftBtn.gameObject:SetActive(false)
    self.rightBtnList[3].open = false
end
--更新嘉年华红点状态
local function UpdateCarnivalReadState(self)
    local reddes=RedPointData:GetInstance().RedName.Carnival_Red
    local state=RedPointData:GetInstance():GetRedState(reddes)
    self.readPointImage3.gameObject:SetActive(state)
    if state then
        if  not self.GiftCarnivalBtn.gameObject.activeInHierarchy then
            --Logger.LogError("self.GiftCarnivalBtn.gameObject")
        end
        if not self.cran_eff.gameObject.activeInHierarchy then
            self.cran_eff.gameObject:SetActive(true)
        end
    else
        if  self.cran_eff.gameObject.activeInHierarchy then
            self.cran_eff.gameObject:SetActive(false)
        end
    end
end
--监测是否关闭嘉年华窗口
local function UpdateCarnivalWindowState(self)
    self.GiftCarnivalBtn.gameObject:SetActive(self.rightBtnState == 1 and CarnivalData:GetInstance().isOpen)
    self.rightBtnList[1].open = CarnivalData:GetInstance().isOpen
end
---刷新主线任务数据
local function UpdateMainTaskData(self)
    self.passTaskObj:TaskRefresh()
end

--隐藏界面
local function HideMainPanel(self)
    self.parentLayout.transform.gameObject:SetActive(false);
end
--红点刷新
local function RedRefresh(self)
    self.tongling_red:SetActive(RedPointData:GetInstance():GetRedState(RedPointData:GetInstance().RedName.TongLing_Red))
    local state ,type,des= UnlockData:GetInstance():GetLockDataState(205)
    if not state then
        self.masterHellRed.gameObject:SetActive(false)
    else
        self.masterHellRed.gameObject:SetActive(RedPointData:GetInstance():GetRedState(TaskData.HELL_RED_NAME));
    end
    self.missionRed.gameObject:SetActive(RedPointData:GetInstance():GetRedState("task_root"));
    self.friendRed.gameObject:SetActive(RedPointData:GetInstance():GetRedState("friend_root"));
end

--显示新功能开启
local function ShowNewFunBtn(self,_id)
    if self.funBtnList[_id] then
        self.funBtnList[_id].gameObject:SetActive(true);
    end
end

--刷新乐斗领取红点
local function RefreshLdRedPoint(self)
    self.ldRedPoint.transform.gameObject:SetActive(not UserData:GetInstance().ldReward);
end

--监听
local function OnAddListener(self)
    base.OnAddListener(self)
    -- UI消息注册
    self:AddUIListener(UIMessageNames.UIMAINCITY_MAILREDPOINT_UPDATE, UpdateMailReadState)
    self:AddUIListener(UIMessageNames.ON_SEVEN_GIFT_DAY_END, UpdateSevenDayGiftReadState)
    self:AddUIListener(UIMessageNames.ON_ONLINE_GIFT_MINUTE_END, UpdateOnlineGiftReadState)
    self:AddUIListener(UIMessageNames.LEVEL_GIFT_MAX, UpdateLevelGiftReadState)
    self:AddUIListener(UIMessageNames.SEVENDAY_LELVE_WINDOW_SHOW, UpdateSevenDayGiftWindowState)
    self:AddUIListener(UIMessageNames.ONLINE_WINDOW_SHOW, UpdateOnlineGiftWindowState)
    self:AddUIListener(UIMessageNames.LELVE_WINDOW_SHOW, UpdateLevelGiftWindowState)
    self:AddUIListener(UIMessageNames.UIMAIN_TASK_DATA_UPDATE,UpdateMainTaskData)
    self:AddUIListener(UIMessageNames.UIMAINCITY_CHAT_UPDATE, ShowChatInfo)
    self:AddUIListener(UIMessageNames.UPDATE_MAIN_CITY_PLAYER_LV,UpdatePlayerLv)
    self:AddUIListener(UIMessageNames.UI_TEST_MAIN_SHOW, HideMainPanel)
    self:AddUIListener(UIMessageNames.UI_CARNIVAL_OPEN_STATE,UpdateCarnivalWindowState)
    self:AddUIListener(UIMessageNames.UI_CARNIVAL_RED_STATE,UpdateCarnivalReadState)
    self:AddUIListener(UIMessageNames.UI_SURVEY_RED_POINT_REFRESH,RefreshSurveyState)
    self:AddUIListener(UIMessageNames.ON_RED_POINT_CHANGE,RedRefresh)
    self:AddUIListener(UIMessageNames.UI_MAIN_CTIY_NEW_FUN_OPEN,ShowNewFunBtn)
    self:AddUIListener(UIMessageNames.UI_LD_RED_POINT_REFRESH,RefreshLdRedPoint)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- UI消息注销
    self:RemoveUIListener(UIMessageNames.UIMAINCITY_MAILREDPOINT_UPDATE, UpdateMailReadState)
    self:RemoveUIListener(UIMessageNames.UIMAIN_TASK_DATA_UPDATE,UpdateMainTaskData)
    self:RemoveUIListener(UIMessageNames.ON_SEVEN_GIFT_DAY_END,UpdateSevenDayGiftReadState)
    self:RemoveUIListener(UIMessageNames.ON_ONLINE_GIFT_MINUTE_END,UpdateOnlineGiftReadState)
    self:RemoveUIListener(UIMessageNames.LEVEL_GIFT_MAX, UpdateLevelGiftReadState)
    self:RemoveUIListener(UIMessageNames.SEVENDAY_LELVE_WINDOW_SHOW,UpdateSevenDayGiftWindowState)
    self:RemoveUIListener(UIMessageNames.ONLINE_WINDOW_SHOW,UpdateOnlineGiftWindowState)
    self:RemoveUIListener(UIMessageNames.LELVE_WINDOW_SHOW, UpdateLevelGiftWindowState)
    self:RemoveUIListener(UIMessageNames.UIMAINCITY_CHAT_UPDATE, ShowChatInfo)
    self:RemoveUIListener(UIMessageNames.UPDATE_MAIN_CITY_PLAYER_LV,UpdatePlayerLv)
    self:RemoveUIListener(UIMessageNames.UI_TEST_MAIN_SHOW,HideMainPanel)
    self:RemoveUIListener(UIMessageNames.UI_CARNIVAL_OPEN_STATE,UpdateCarnivalWindowState)
    self:RemoveUIListener(UIMessageNames.UI_CARNIVAL_RED_STATE,UpdateCarnivalReadState)
    self:RemoveUIListener(UIMessageNames.UI_SURVEY_RED_POINT_REFRESH,RefreshSurveyState)
    self:RemoveUIListener(UIMessageNames.ON_RED_POINT_CHANGE,RedRefresh)
    self:RemoveUIListener(UIMessageNames.UI_MAIN_CTIY_NEW_FUN_OPEN,ShowNewFunBtn)
    self:RemoveUIListener(UIMessageNames.UI_LD_RED_POINT_REFRESH,RefreshLdRedPoint)
end


UITestMainView.OnCreate = OnCreate
UITestMainView.OnEnable = OnEnable
UITestMainView.OnAddListener=OnAddListener
UITestMainView.OnRemoveListener=OnRemoveListener
UITestMainView.OnDestroy = OnDestroy
UITestMainView.OnDisable = OnDisable
UITestMainView.RedRefresh = RedRefresh
UITestMainView.UpdateSevenDayGiftReadState=UpdateSevenDayGiftReadState
UITestMainView.UpdateOnlineGiftReadState=UpdateOnlineGiftReadState
UITestMainView.UpdateLevelGiftReadState=UpdateLevelGiftReadState
UITestMainView.UpdateSevenDayGiftWindowState=UpdateSevenDayGiftWindowState
UITestMainView.UpdateOnlineGiftWindowState=UpdateOnlineGiftWindowState
UITestMainView.UpdateLevelGiftWindowState=UpdateLevelGiftWindowState
UITestMainView.UpdateCarnivalReadState = UpdateCarnivalReadState
UITestMainView.UpdateCarnivalWindowState = UpdateCarnivalWindowState
return UITestMainView
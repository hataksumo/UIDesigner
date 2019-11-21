/// <summary>
/// 说明：乐逗渠道
/// 
/// 注意：
/// 1、Unity版本5.3.4f1，使用andorid sdk没有任何问题
/// 2、Unity版本5.3.4f1以上，Unity2017版本以下，需要改AndroidManifest中的android:targetSdkVersion值为26
/// 3、Unity2017以上版本，构建报错，目前还没找到解决方案
/// 
/// @by wsh 2018-08-16
/// </summary>
using iDreamsky.MSLD.DLog;
using iDreamsky.MSLD.Feedback;
using UnityEngine;
using System;
namespace GameChannel
{
    public class LedouChannel : BaseChannel
    {

        private BuglyDataSdk buglySdk = null;
        private LDAccountMgrSdk ledouSdk = null;
        #region 初始化SDK
        public override void Init()
        {
            //初始化Bugly
            buglySdk = new BuglyDataSdk();
            if(buglySdk == null)
            {
                Debug.LogError("The BuglyDataSdk is init failed!");
            }
            buglySdk.Init();

            ledouSdk = new LDAccountMgrSdk();
            if (ledouSdk == null)
            {
                Debug.LogError("The LDAccountMgrSdk is init failed!");
            }
            ledouSdk.Init();
            GameObject gpGame = new GameObject("JGPush");
            gpGame.AddComponent<JGPush>().Init();
            Logger.Log("LedouChannel:Init");
            GameObject.DontDestroyOnLoad(gpGame);
        }
        #endregion

        #region 渠道信息接口
        public override string GetBundleID()
        {
            return "com.ljsd.zhj.ledou";
        }

        public override string GetProductName()
        {
            return "代号：魂";
        }
        public override string GetChannelId()
        {
            return iDreamsky.MSLD.MSLDSDK.GetConfig().channelId;
        }
        public override object GetSpecifiedInfo(string _type)
        {
            SpecifiedType Type = (SpecifiedType)Enum.Parse(typeof(SpecifiedType), _type);
            switch (Type)
            {
                case SpecifiedType.BundleID:
                    return GetBundleID();
                case SpecifiedType.ChannelID:
                    return GetChannelId();
                case SpecifiedType.DeviceID:
                    return GetDeviceID();
                case SpecifiedType.ProductName:
                    return GetProductName();
                case SpecifiedType.IMEI:
                    return GetIMEICode();
            }
            return "ljsd";
        }
        private string GetIMEICode()
        {
            return iDreamsky.MSLD.Notch.MSLDNotchManager.GetIMEICode();
        }
        private string GetDeviceID()
        {
            return iDreamsky.MSLD.MSLDSDK.GetDeviceId();
        }
        #endregion

        #region 检测类信息接口 参数全部小写

        public override bool IsInternalChannel()
        {
            return true;
        }

        #endregion

        #region 下载安装接口
        public override void DownloadGame(params object[] paramList)
        {
            string url = paramList[0] as string;
            string saveName = paramList[1] as string;
            AndroidSDKHelper.FuncCall("DownloadGame", url, saveName);
        }

        public override void InstallApk()
        {
            AndroidSDKHelper.FuncCall("InstallApk");
        }
        #endregion

        #region 渠道账号接口
        public override void ShowLoginPanel(bool bGuest, System.Action<LJAccount> _OnLoginCallBack = null)
        {
            if (ledouSdk != null)
                ledouSdk.ShowLoginPanel(bGuest, _OnLoginCallBack);
            Logger.Log("LedouChannel ShowLoginPanel");
        }
        public override void AutoLogin(System.Action<LJAccount> _OnLoginCallBack = null)
        {
            Logger.Log("LedouChannel AutoLogin");
            if (ledouSdk != null)
                ledouSdk.AutoLogin(_OnLoginCallBack);
        }
        public override void LogOut(System.Action<string> _OnLogOutCallBack = null)
        {
            Logger.Log("LedouChannel LogOut");
            if (ledouSdk != null)
                ledouSdk.LogOut(_OnLogOutCallBack);
        }
        public override void SwitchAccount(System.Action<string> _OnLogOutCallBack, System.Action<LJAccount> _OnLoginCallBack)
        {
            Logger.Log("LedouChannel ShowUserCenterPannel");
            if (ledouSdk != null)
                ledouSdk.SwitchAccount(_OnLogOutCallBack, _OnLoginCallBack);
        }
        public override bool GeneralFunction(int InputType, System.Action<string> _OnCallBack, params object[] paramList)
        {
            try
            {
                Logger.Log("LedouChannel GeneralFunction");
                switch (InputType)
                {
                    case 1:
                        MSLDFeedbackManager.ExtraInfo extInfo = new MSLDFeedbackManager.ExtraInfo();
                        extInfo.level = UInt32.Parse((string)paramList[0]);
                        extInfo.accruingAmounts = UInt32.Parse((string)paramList[1]);
                        extInfo.consecutiveDays = UInt32.Parse((string)paramList[2]);
                        extInfo.playerId = (string)paramList[3];
                        extInfo.serverId = (string)paramList[4];
                        extInfo.roleId = (string)paramList[5];
                        extInfo.extra = (string)paramList[6];
                        ledouSdk.ShowQuestion(extInfo, _OnCallBack);
                        break;

                }
            }
            catch (System.Exception e)
            {
                Logger.Log("LedouChannel GeneralFunction error inputtype="+ InputType+" error:"+ e.Message);
            }
            return true;
        }

        #endregion

        #region 自定义数据上报
        public override void DataReport(int ReportType, params object[] paramList)
        {
            try
            {
                Logger.Log("LjsdChannel DataReport");
                switch (ReportType)
                {
                    /**
                     * @brief 自定义数据上报  
                     * @param eventID 事件ID(由产品人员在彩虹报表后台“自定义事件”页面配置)
                     * @param eventParam 事件参数(由产品人员在彩虹报表后台“自定义事件”页面配置) 非必传
                     * @param eventParamValue 事件参数取值(由产品人员在彩虹报表后台“自定义事件”页面配置) 非必传
                     * @param extendStr 扩展字段 非必传
                    */
                    case 1:
                        MSLDDlogManager.ReportCustomEvent((string)paramList[0], (string)paramList[1], (string)paramList[2], (string)paramList[3]);
                        break;
                    /**
                     * 游戏加载时长上报 
                     * @param loadingTime 加载时长（单位：秒），取值为>=0的数字
                    */
                    case 2:
                        MSLDDlogManager.ReportLoadingCompletedEvent((int)paramList[0]);
                        break;
                    /**
                     * @brief 进入游戏事件上报 
                     * @param GameSvrId 游戏服务器编号   
                     * @param ZoneId 区服id
                     * @param roleId 角色id
                     * @param Level 玩家等级，取值为>=0的数字
                     * @param vGameUsersid 游戏内玩家id
                    */
                    case 3:
                        MSLDDlogManager.ReportEnterCompletedFlowEvent((string)paramList[0], (string)paramList[1], (string)paramList[2], (int)paramList[3], (string)paramList[4]);
                        break;
                    /**
                     * @brief 货币流水事件上报报  
                     * @param iMoney 消耗/获取的货币数，取值为>=0的数字
                     * @param Reason 货币流动一级原因（通过何种途径获取/消耗货币）
                     * @param AddOrReduce 货币增加或减少标识，取值说明： 0:增加；1:减少 注：用户获得游戏币时填0，消耗掉游戏币时填1
                     * @param iMoneyType 货币类型，99代表人民币，其他货币类型取值由CP根据附录G    
                     * @param Level 玩家等级，取值为>=0的数字
                     * @param SubReason 币流动二级原因 由CP根据附录A 非必传
                     * @param AfterMoney 动作后用户账户剩余的货币数，取值为>=0的数字 非必传
                     * @param extStr1 v 扩展字段 非必传
                    */
                    case 4:
                        MSLDDlogManager.ReportMoneyFlowEvent((int)paramList[0], (int)paramList[1], (int)paramList[2], (int)paramList[3], (int)paramList[4], (int)paramList[5], (int)paramList[6], (string)paramList[7]);
                        break;
                    /**
                     * @brief 道具流水事件上报 
                     * @param iGoodsType 道具类型 由CP根据附录B（道具类型/道具名称、道具购买/消耗途径）填写
                     * @param iGoodsId 道具ID 由CP根据附录B（道具类型/道具名称、道具购买/消耗途径）填写
                     * @param Count 动作涉及的物品数量（通过某动作用户获取或消耗该道具的数量），取值为>=0的数字
                     * @param Reason 道具流动一级原因由CP根据附录C（经验流动一级原因）填写
                     * @param AddOrReduce 增加 0/减少 1（注：用户获得道具填0，消耗掉游戏币填1)
                     * @param AfterCount 作后的物品存量(某动作后用户的该道具还剩下多少个)，取值为>=0的数字 非必传   
                     * @param SubReason 道具流动二级原因建议：由CP根据附录C（经验流动一级原因）填写 非必传
                     * @param extStr1 扩展字段 非必传
                    */
                    case 5:
                        MSLDDlogManager.ReportItemFlowEvent((int)paramList[0], (int)paramList[1], (int)paramList[2], (int)paramList[3], (int)paramList[4], (int)paramList[5], (int)paramList[6], (string)paramList[7]);
                        break;
                    /**
                     * @brief 道具购买流水事件上报 
                     * @param iGoodsType 道具类型 由CP根据附录B（道具类型/道具名称、道具购买/消耗途径）填写
                     * @param iGoodsId 道具ID 由CP根据附录B（道具类型/道具名称、道具购买/消耗途径）填写
                     * @param Count 数量（购买道具的数量），取值为>=0的数字
                     * @param iMoney 钱（购买道具花费的游戏币），取值为>=0的数字
                     * @param Level 玩家等级 有则必须上报，没有就给0
                     * @param iMoneyType 钱的类型MONEYTYPE (“99”代表人民币不可变动 ) 由CP根据附录G（货币类型、货币获取/消耗途径）填写
                     * @param extStr1 扩展字段 非必传   
                    */
                    case 6:
                        MSLDDlogManager.ReportItemMoneyFlowEvent((int)paramList[0], (int)paramList[1], (int)paramList[2], (int)paramList[3], (int)paramList[4], (int)paramList[5], (string)paramList[6]);
                        break;
                    /**
                     * @brief 人物等级流水事件上报
                     * @param AfterLevel 变动后等级，取值为>=0的数字
                     * @param ExpChange 经验变化，取值为>=0的数字 非必传
                     * @param BeforeLevel 变动前等级，取值为>=0的数字 非必传
                     * @param Time 升级所用时间(秒)，取值为>=0的数字 非必传
                     * @param Reason 经验流动一级原因由CP根据附录C（经验流动一级原因）填写 非必传
                     * @param SubReason 验流动二级原因 非必传
                     * @param extStr1 扩展字段 非必传    
                    */
                    case 7:
                        MSLDDlogManager.ReportPlayerExpFlowEvent((int)paramList[0], (int)paramList[1], (int)paramList[2], (int)paramList[3], (int)paramList[4], (int)paramList[5], (string)paramList[6]);
                        break;
                    /**
                     * @brief SNS流水事件上报
                     * @param Count 发送的数量，取值为>=0的数字 
                     * @param SNSType 交互一级类型 必填交互一级类型,由CP根据附录D（交互一级类型）填写
                     * @param SNSSubType 交互二级类型(由CP根据附录D（交互一级类型）填写 非必传
                     * @param RecNum 接收玩家个数，取值为>=0的数字 非必传
                     * @param extStr1 扩展字段 非必传  
                    */
                    case 8:
                        MSLDDlogManager.ReportSnsFlowEvent((int)paramList[0], (int)paramList[1], (int)paramList[2], (int)paramList[3], (string)paramList[4]);
                        break;
                    /**
                     * @brief 单局结束流水事件上报
                     * @param BattleID 本局id 为打该局游戏时的序列号
                     * @param BattleType 战斗类型对应BATTLETYPE注：由CP根据附录E（战斗类型、单局结果）填写
                     * @param RoundTime 对局时长(秒)
                     * @param Result 单局结果(注：由CP根据附录E（战斗类型、单局结果）填写
                     * @param Rank 排名（注：该局游戏后玩家最终排名），取值为>=0的数字
                     * @param Gold 金钱，取值为>=0的数字
                     * @param RoundScore 本局分数（注：通过该局游戏玩家获取的分数值，没有则填0），取值为>=0的数字 非必传 
                     * @param extStr1 扩展字段 非必传 
                    */
                    case 9:
                        MSLDDlogManager.ReportRoundFlowEvent((int)paramList[0], (int)paramList[1], (int)paramList[2], (int)paramList[3], (int)paramList[4], (int)paramList[5], (int)paramList[6], (string)paramList[6]);
                        break;
                    /**
                     * @brief 角色数据流水事件上报
                     * @param iRoleId 角色ID
                     * @param vRoleName 角色名称
                     * @param vRoleSex 角色性别
                     * @param vRoleLevel 角色等级，取值为>=0的数字
                     * @param VPERATIONTYPE 角色操作类型（由CP根据附录F（角色类型、角色操作类型）填写
                     * @param vRoleType 角色类型（由CP根据附录F（角色类型、角色操作类型）填写 非必传 
                     * @param extStr1 扩展字段 非必传    
                    */
                    case 10:
                        MSLDDlogManager.ReportRoleFlowEvent((string)paramList[0], (string)paramList[1], (string)paramList[2], (int)paramList[3], (int)paramList[4], (int)paramList[5], (string)paramList[6]);
                        break;

                }
            }
            catch (System.Exception e)
            {
                Logger.Log("LedouChannel DataReport error ReportType=" + ReportType + " error:" + e.Message);
            }
            finally
            {

            }

         }
        #endregion

        #region 支付类接口
        public override void Pay(params object[] paramList)
        {

        }
        #endregion




    }
}

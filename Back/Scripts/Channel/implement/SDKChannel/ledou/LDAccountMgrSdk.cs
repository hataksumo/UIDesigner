using XLua;
using iDreamsky.MSLD;
using iDreamsky.MSLD.Account;
using iDreamsky.MSLD.Feedback;
namespace GameChannel
{
    [Hotfix]
    [LuaCallCSharp]
    public class LDAccountMgrSdk 
    {
        private System.Action<LJAccount> OnLoginCallBack = null;
        private System.Action<string> OnLogOutCallBack = null;
        LJAccount ljAccountUser = new LJAccount();
        public void Init()
        {
            MSLDSDK.InitSDK(initSDKCallback);
            MSLDSDK.SetEventCallBack(eventCallBack);

        }

        public void ShowLoginPanel(bool bGuest, System.Action<LJAccount> _OnLoginCallBack = null)
        {
            ljAccountUser.Init();
            
            OnLoginCallBack = _OnLoginCallBack;
            if (bGuest)
            {
                ljAccountUser.myloginType = 1;
                MSLDAccountManager.GuestLogin(LoginCallBack);
            }
            else
            {
                ljAccountUser.myloginType = 0;
                MSLDAccountManager.ShowLoginPannel(LoginCallBack);
             }
        }
         public void AutoLogin(System.Action<LJAccount> _OnLoginCallBack = null)
        {
            ljAccountUser.myloginType = 2;
            OnLoginCallBack = _OnLoginCallBack;
            MSLDAccountManager.AutoLogin(autoLoginCallBack);
        }
        public void LogOut(System.Action<string> _OnLogOutCallBack = null)
        {
            Logger.Log("LDAccountMgrSdk LogOut");
            MSLDAccountManager.Logout((MSLDErrorCode code, string msg, MSLDAccount account) =>
            {
                string flag = "0";
                if (code == MSLDErrorCode.Success)
                {
                   Logger.Log("登出成功!");
                }
                else
                {
                    Logger.Log("登出失败! code = " + code + " msg = " + msg);
                    flag = "-1";
                }
                if (_OnLogOutCallBack != null)
                {
                    _OnLogOutCallBack(flag);
                }
            }
            );

        }

        public bool ShowQuestion(MSLDFeedbackManager.ExtraInfo extInfo, System.Action<string> _OnCallBack = null)
        {
            Logger.Log("打开问卷调查! playerid：" + extInfo.playerId + " serverId:"+ extInfo.serverId + " roleId:"+ extInfo.roleId + " extr:"+ extInfo.extra);
            bool isEnable = MSLDFeedbackManager.IsQuestionEnabled();
            if (isEnable)
            {
                Logger.Log("支持问卷调查，准备启动窗口!");

                MSLDFeedbackManager.ShowQuestion(extInfo, (MSLDErrorCode code, string msg) =>
                {
                    string flag = "0";
                    if (code == MSLDErrorCode.Success)
                    {

                        Logger.Log("成功!");

                    }
                    else if (code == MSLDErrorCode.UIUserClose)
                    {
                        Logger.Log("用户关闭");

                        flag = "1";
                    }
                    else
                    {
                        Logger.Log("失败! code = " + code + " msg = " + msg);
                        flag = "-1";
                    }
                    if(_OnCallBack != null)
                    {
                        _OnCallBack(flag);
                    }
                });

            }
            else
            {
                Logger.Log("不支持问卷调查!");
                return false;
            }
            return true;

        }
        public void SwitchAccount(System.Action<string> _OnLogOutCallBack,System.Action<LJAccount> _OnLoginCallBack)
        {
            Logger.Log("打开ShowUserCenterPannel");
            OnLogOutCallBack = _OnLogOutCallBack;
            OnLoginCallBack = _OnLoginCallBack;
            MSLDAccountManager.ShowUserCenterPannel((MSLDErrorCode code, string msg, MSLDAccount data)=>
            {
                if (code == MSLDErrorCode.Success)
                {
                    Logger.Log("用户中心成功!");
                }
                else if (code == MSLDErrorCode.UIUserClose)
                {
                    Logger.Log("用户关闭用户中心! code = " + code + " msg = " + msg);
                }
                else
                {
                    Logger.Log("调用用户中心失败! code = " + code + " msg = " + msg);
                }

            }
            );

        }
        void showUserCenterPannelCallBack(MSLDErrorCode code, string msg, object data)
        {
            if (code == MSLDErrorCode.Success)
            {
                Logger.Log("用户中心成功!");
            }
            else if (code == MSLDErrorCode.UIUserClose)
            {
                Logger.Log("用户关闭用户中心! code = " + code + " msg = " + msg);
            }
            else
            {
                Logger.Log("调用用户中心失败! code = " + code + " msg = " + msg);
            }
        }
        void LoginCallBack(MSLDErrorCode code, string msg, MSLDAccount account)
        {
            if (code == MSLDErrorCode.Success)
            {
                Logger.Log("游客登录成功! account:" + account.desc());
                SetAccount(account);
                ljAccountUser.loginResult = 0;
            }
            else if (code == MSLDErrorCode.UIUserClose)
            {
                Logger.Log("用户取消游客登录! code = " + code + " msg = " + msg);
                ljAccountUser.loginResult = 1;
            }
            else
            {
                Logger.Log("游客登录失败! code = " + code + " msg = " + msg);
                ljAccountUser.loginResult = 2;
            }
            if (OnLoginCallBack != null)
            {
                OnLoginCallBack(ljAccountUser);
            }
            else
            {
                Logger.Log("登录回调函数为空!");
            }

        }

        void autoLoginCallBack(MSLDErrorCode code, string msg, object data)
        {
            if (code == MSLDErrorCode.Success)
            {
                MSLDAccount account = (MSLDAccount)data;
                Logger.Log("自动登录成功! account:" + account.desc());
                SetAccount(account);
                ljAccountUser.loginResult = 0;

            }
            else if (code == MSLDErrorCode.UIUserClose)
            {
                Logger.Log("用户取消自动登录! code = " + code + " msg = " + msg);
                ljAccountUser.loginResult = 1;
            }
            else
            {
                Logger.Log("登录失败! code = " + code + " msg = " + msg);
                ShowLoginPanel(false, OnLoginCallBack);
                return;
            }
            if (OnLoginCallBack != null)
            {
                OnLoginCallBack(ljAccountUser);
            }
        }
        private void SetAccount(MSLDAccount account)
        {
            ljAccountUser.loginResult = 0;
            ljAccountUser.playerId = account.playerId;
            ljAccountUser.nickName = account.nickName;
            ljAccountUser.avatarURL = account.avatarURL;
            ljAccountUser.phoneNumber = account.phoneNumber;
            ljAccountUser.isPhoneBound = account.isPhoneBound;
            ljAccountUser.isRealNameVerified = account.isRealNameVerified;
            ljAccountUser.realName = account.realName;
            ljAccountUser.isPasswordSetted = account.isPasswordSetted;
            ljAccountUser.isNewPlayer = account.isNewPlayer;
            ljAccountUser.openId = account.openId;
            ljAccountUser.sessionId = account.sessionId;
            ljAccountUser.lastLoginTime = account.lastLoginTime;
            ljAccountUser.loginType = account.loginType;

        }
        void initSDKCallback(MSLDErrorCode code, string msg)
        {
            if (code == MSLDErrorCode.Success)
            {
                Logger.Log("初始化成功!");
            }
            else
            {
                Logger.Log("初始化失败! code = " + code + " msg = " + msg);
            }
        }

        // 全局事件回调
        void eventCallBack(MSLDSDK.Event eventID, object eventObj)
        {
            Logger.Log("收到SDK全局事件回调:" + eventID);
            switch (eventID)
            {
                case MSLDSDK.Event.SwitchAccount:
                    MSLDAccount account = (MSLDAccount)eventObj;
                    Logger.Log("SwitchAccount! account:" + account.desc());
                    SetAccount(account);
                    ljAccountUser.loginResult = 0;
                    if (OnLoginCallBack != null)
                    {
                        OnLoginCallBack(ljAccountUser);
                    }
                    break;
                case MSLDSDK.Event.LogOut:

                    Logger.Log("退出登录.");
                    if(OnLogOutCallBack != null)
                    {
                        OnLogOutCallBack(eventObj.ToString());
                    }
                    //MSLDPaymentManager.StopOrderPollin();
                    break;
                case MSLDSDK.Event.RedeliveryOrder:
                    Logger.Log("[补单]支付成功!");
                    Logger.Log("[补单]支付信息：" + eventObj.ToString());
                    //MSLDPayResult mSLDPayResult = (MSLDPayResult)eventObj;
                    Logger.Log("[补单]增加相应道具...");
                    Logger.Log("[补单]上报消费结果");
                    //MSLDPaymentManager.ReportOrderConsumed(mSLDPayResult.orderNo, (MSLDErrorCode codeROC, string msgROC) => {
                    //    MSLDInfoWindow.Info("[补单]上报消费结果完成! code:" + codeROC + " msg:" + msgROC);
                    //});
                    break;
            }
        }
    }
}
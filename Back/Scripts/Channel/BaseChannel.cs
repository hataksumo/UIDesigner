namespace GameChannel
{
    public class LJAccount
    {
        /**
         *登录类型 0：用户登录 1：游客登录 2：自动登录
        */
        public int myloginType;

        /**
         *登录结果   0：成功 1：取消 2：失败
        */
        public int loginResult;

        /**
          * 玩家Id      
         */
        public string playerId;

        /**
         * 昵称     
        */
        public string nickName;

        /**
         * 头像     
        */
        public string avatarURL;

        /**
         * 手机号       
        */
        public string phoneNumber;

        /**
         * 是否绑定手机号       
        */
        public bool isPhoneBound;

        /**
         * 是否实名认证     
        */
        public bool isRealNameVerified;

        /**
         * 实名       
        */
        public string realName;

        /**
         * 是否设置过密码       
        */
        public bool isPasswordSetted;

        /**
         * 是否新注册用户       
        */
        public bool isNewPlayer;

        /**
         * OpenId       
        */
        public string openId;

        /**
         * sessionId       
        */
        public string sessionId;

        /**
         * 上次登录时间时间戳，精确到秒       
        */
        public string lastLoginTime;

        /**
         * 登录类型       
        */
        public string loginType;


        /**
         * 默认构造函数       
        */
        public LJAccount()
        {
            Init();
        }
        public void Init()
        {
            myloginType = 0;
            loginResult = 2;
            playerId = "";
            nickName = "";
            avatarURL = "";
            phoneNumber = "";
            isPhoneBound = false;
            isRealNameVerified = false;
            realName = "";
            isPasswordSetted = false;
            isNewPlayer = false;
            openId = "";
            sessionId = "";
            lastLoginTime = "";
            loginType = "";
        }

    }

    public class BaseChannel
    {
        #region 初始化SDK
        public virtual void Init() { Logger.Log("BaseChannel:Init"); }
        #endregion
        public enum SpecifiedType
        {
            BundleID,
            ProductName,
            ChannelID,
            DeviceID,
            IMEI,
        }

        #region 渠道信息接口
        public virtual string GetCompanyName()
        {
            Logger.Log("BaseChannel:GetComnpayName");
            return "蓝鲸时代";
        }
        public virtual string GetBundleID() { Logger.Log("BaseChannel:GetBundleID"); return ""; }

        public virtual string GetProductName() { Logger.Log("BaseChannel:GetProductName"); return ""; }
        public virtual string GetChannelId() { return "ljsd";}
        public virtual object GetSpecifiedInfo(string _type) { return "ljsd"; }
        #endregion

        #region 检测类信息接口
        public virtual bool IsInternalChannel()
        {
            Logger.Log("BaseChannel:IsInternalChannel");
            return false;
        }

        public virtual bool IsGooglePlay()
        {
            Logger.Log("BaseChannel:IsGooglePlay");
            return false;
        }
        #endregion

        #region 下载安装接口
        public virtual void DownloadGame(params object[] paramList) { Logger.Log("BaseChannel:DownloadGame"); }

        public virtual void InstallApk() { Logger.Log("BaseChannel:InstallApk"); }
        #endregion

        #region 渠道账号接口
        public virtual void ShowLoginPanel(bool bGuest, System.Action<LJAccount> _OnLoginCallBack = null) { Logger.Log("BaseChannel ShowLoginPanel"); }
        public virtual void AutoLogin(System.Action<LJAccount> _OnLoginCallBack = null) { Logger.Log("BaseChannel AutoLogin"); }
        public virtual void LogOut(System.Action<string> _OnLogOutCallBack = null) { Logger.Log("BaseChannel LogOut"); }
        public virtual void SwitchAccount(System.Action<string> _OnLogOutCallBack, System.Action<LJAccount> _OnLoginCallBack) { Logger.Log("BaseChannel ShowUserCenterPannel"); }
        public virtual bool GeneralFunction(int InputType, System.Action<string> _OnCallBack,params object[] paramList ) { Logger.Log("BaseChannel ShowQuestion"); return false; }
        #endregion

        #region 自定义数据上报
        public virtual void DataReport(int ReportType, params object[] paramList) { Logger.Log("BaseChannel DataReport"); }
        #endregion

        #region 支付类接口
        public virtual void Pay(params object[] paramList) { Logger.Log("BaseChannel Pay"); }
        #endregion

    }
}

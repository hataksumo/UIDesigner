/// <summary>
/// 说明：内部测试渠道
/// 
/// 注意：
/// 1、Unity版本5.3.4f1，使用andorid sdk没有任何问题
/// 2、Unity版本5.3.4f1以上，Unity2017版本以下，需要改AndroidManifest中的android:targetSdkVersion值为26
/// 3、Unity2017以上版本，构建报错，目前还没找到解决方案
/// 
/// @by wsh 2018-08-16
/// </summary>

namespace GameChannel
{
    public class LjsdChannel : BaseChannel
    {

        private BuglyDataSdk buglySdk = null;
        #region 初始化SDK
        public override void Init()
        {
            //初始化Bugly
            buglySdk = new BuglyDataSdk();
            buglySdk.Init();
            Logger.Log("LjsdChannel:Init");
        }
        #endregion

        #region 渠道信息接口
        public override string GetBundleID()
        {
            return "com.ljsd.zhj";
        }

        public override string GetProductName()
        {
            return "代号：魂";
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
            Logger.Log("LjsdChannel ShowLoginPanel");
            if(_OnLoginCallBack != null)
            {
                _OnLoginCallBack(null);
            }
        }
        public override void AutoLogin(System.Action<LJAccount> _OnLoginCallBack = null)
        {
            Logger.Log("LjsdChannel AutoLogin");
            if (_OnLoginCallBack != null)
            {
                _OnLoginCallBack(null);
            }
        }
        public override void LogOut(System.Action<string> _OnLogOutCallBack = null)
        {
            Logger.Log("LjsdChannel LogOut");
            if (_OnLogOutCallBack != null)
            {
                _OnLogOutCallBack("0");
            }
        }
        public override void SwitchAccount(System.Action<string> _OnLogOutCallBack, System.Action<LJAccount> _OnLoginCallBack)
        {
            Logger.Log("LjsdChannel ShowUserCenterPannel");
            if (_OnLogOutCallBack != null)
            {
                _OnLogOutCallBack(null);
            }
        }
        #endregion

        #region 自定义数据上报
        public override void DataReport(int ReportType, params object[] paramList) { Logger.Log("LjsdChannel DataReport"); }
        #endregion

        #region 支付类接口
        public override void Pay(params object[] paramList)
        {

        }
        #endregion




    }
}
  
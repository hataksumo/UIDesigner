using UnityEngine;
using System.IO;
using LitJson;
[System.Serializable]
public class GameConfigJson
{
    
    /// <summary>
    /// 渠道类型 Ljsd Ledou
    /// </summary>
    public string channelname = "";
    /// <summary>
    /// 是否进行更新
    /// </summary>
    public bool isupdate = true;

    /// <summary>
    /// 游戏服务器地址 https:/login-zhj.lanjingshidai.com
    /// </summary>
    public string serverhost = "";
    /// <summary>
    /// 是否开启GM
        /// </summary>
    public bool isgm = false;
    /// <summary>
    /// 更新地址 https://cdn-zhj.lanjingshidai.com/Update/pr1/Android
    /// </summary>
    public string downloadurl= "";

    /// <summary>
    /// 是否开启Debug
    /// </summary>
    public bool iscshapedebug = false;
    public bool isluadebug = false;
}
//zhjconfig.txt {"channelname":"Ledou","isupdate": true,"serverhost": "https://58.87.65.104","isgm": true,"iscshapedebug": false,"isluadebug": true,"downloadurl": "https://58.87.65.104:444/pr1/Android/Android/"}
public class GameDebugConfig : Singleton<GameDebugConfig>
{
    public bool IsConfigOK() { return isOk; }
    public bool IsGMOpen()
    {
        if (!isOk) return false;
        return gameconfig.isgm;
    }
    public bool IsLuaDebugOpen()
    {
        if (!isOk) return false;
        return gameconfig.isluadebug;
    }
    public bool IsCShapeDebugOpen()
    {
        if (!isOk) return false;
        return gameconfig.iscshapedebug;
    }
    public bool IsAutoUpdate()
    {
        if (!isOk) return true;
        return gameconfig.isupdate;
    }
    public string GetChannelName()
    {
        if (!isOk) return ""; 
        if (gameconfig.channelname.Length >0 )
            return gameconfig.channelname;
        return "";
    }
    public string GetServerHost(int type)
    {
        string strtemp = "";
        if (!isOk) return strtemp;

        switch(type)
        {
            case 0:
                if(!string.IsNullOrEmpty(gameconfig.serverhost))
                    strtemp = string.Format("{0}/loginserver/loginSDK?channel=pc&plat=android&openId=", gameconfig.serverhost);
                break;
            case 1:
                if (!string.IsNullOrEmpty(gameconfig.serverhost))
                    strtemp = string.Format("{0}/loginserver/login?", gameconfig.serverhost);
                break;
            case 2:
                if (!string.IsNullOrEmpty(gameconfig.serverhost))
                    strtemp = string.Format("{0}/loginserver/noticeList", gameconfig.serverhost);
                break;
            case 3:
                if (!string.IsNullOrEmpty(gameconfig.serverhost))
                    strtemp = string.Format("{0}/loginserver/registUser?openId=", gameconfig.serverhost);
                break;
            case 4:
                if (!string.IsNullOrEmpty(gameconfig.serverhost))
                    strtemp = string.Format("{0}/loginserver/getUserInfo?openId=", gameconfig.serverhost);
                break;
            case 5:
                if (!string.IsNullOrEmpty(gameconfig.serverhost))
                    strtemp = string.Format("{0}/loginserver/checkVersion", gameconfig.serverhost);
                break;
            case 98:
                if (!string.IsNullOrEmpty(gameconfig.serverhost))
                    strtemp = gameconfig.serverhost;
                break;
            case 99:
                if (!string.IsNullOrEmpty(gameconfig.downloadurl))
                    strtemp = gameconfig.downloadurl;
                break;
        }

        return strtemp;
    }
    private bool isOk = false;
    GameConfigJson gameconfig;
    public override void Dispose()
    {

    }
    public virtual void Init()
    {
        try
        {
            string configfile = "zhjconfig.txt";
            string strPath = Application.persistentDataPath + "/" + configfile;
            //首先检测读写目录是否有配置文件，如果有读取配置，如果没有，从resource加载
            StreamReader sr;
            if (File.Exists(strPath))
            {
                sr = File.OpenText(strPath);
                if (null != sr)
                {
                    string strinfo = sr.ReadToEnd();
                    if (strinfo != null && strinfo.Length > 10)
                    {
                        ReadJson(strinfo);
                    }
                }
            }
        }
        catch (System.Exception ex)
        {
            //取默认值
            Debug.Log("读取游戏调试配置文件异常：" + ex.Message);
        }
    }
    private bool ReadJson(string strjson)
    {
        gameconfig = JsonMapper.ToObject<GameConfigJson>(strjson);
        isOk = true;
        Debug.Log(GetServerHost(0));
        Debug.Log(GetServerHost(1));
        Debug.Log(GetServerHost(2));
        Debug.Log(GetServerHost(3));
        Debug.Log(GetServerHost(4));
        Debug.Log(GetServerHost(5));
        Debug.Log(GetServerHost(99));
        Debug.Log(GetChannelName());
        Debug.Log(IsAutoUpdate());
        Debug.Log(IsCShapeDebugOpen());
        Debug.Log(IsLuaDebugOpen());
        Debug.Log(IsGMOpen());
        return true;

    }
}

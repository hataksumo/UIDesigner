using System;
using System.Collections;
using UnityEngine;
using UnityEngine.UI;
using XLua;

/// <summary>
/// added by wsh @ 2018.01.03
/// 功能：Tip弹窗
/// </summary>

[Hotfix]
[LuaCallCSharp]
public class UINoticeTip : MonoSingleton<UINoticeTip>
{
    public const string NOTICE_NET_ERRROR_TITLE = "网<size=40>络错误</size>";
    public const string NOTICE_NET_ERRROR_CONTENT = "检测更新失败，请确认网络已经连接！";

    public const string NOTICE_NET_UPDATE_TITLE = "更<size=40>新提示</size>";
    public  const string NOTICE_NET_UPDATE_TITLE_CONTENT = "本次更新需要消耗{0}流量！";

    public  const string NOTICE_NET_DOWNLOAD_TITLE = "游<size=40>戏下载</size>";
    public  const string NOTICE_NET_DOWNLOAD_CONTENT = "需要下载新的游戏版本！";
    public  const string NOTICE_NET_DOWNLOAD_CONTENTCONTINUE = "当前为非Wifi网络环境，下载需要消耗手机流量，继续下载？";

    public  const string NOTICE_NET_DOWNLOAD_SUCCESS_TITLE = "下<size=40>载完毕</size>";
    public  const string NOTICE_NET_DOWNLOAD_SUCCESS_CONTENT = "游戏下载完毕，确认安装？";

    public  const string NOTICE_NET_DOWNLOAD_FAILED_TITLE = "下<size=40>载失败</size>";
    public  const string NOTICE_NET_DOWNLOAD_FAILED_CONTENT = "游戏下载失败！";

    public  const string NOTICE_NET_BTN_OK = "确定";
    public  const string NOTICE_NET_BTN_AZ = "安装";
    public  const string NOTICE_NET_BTN_RETRY = "重试";
    public  const string NOTICE_NET_BTN_CANCEL = "取消";

    GameObject go;
    Text titleText;
    Text noticeText;
    Text buttonOneText;
    Text buttonTwoText;
    Text buttonThreeText;
    Button buttonOne;
    Button buttonTwo;
    Button buttonThree;
    GameObject buttonOneGo;
    GameObject buttonTwoGo;
    GameObject buttonThreeGo;
    Toggle no_tip;
    int pre_value = 1;
    static public int LastClickIndex
    {
        get;
        protected set;
    }
    
    public bool IsShowing
    {
        get;
        protected set;
    }

    public GameObject UIGameObject
    {
        get
        {
            return go;
        }
        set
        {
            if (value != go)
            {
                go = value;
                InitGo(go);
            }
        }
    }

    private void InitGo(GameObject go)
    {
        if (go == null)
        {
            return;
        }

        titleText = go.transform.Find("BgRoot/BgParent/WinTitle").GetComponent<Text>();
        noticeText = go.transform.Find("ContentRoot/NoticeInfo").GetComponent<Text>();
        buttonOneText = go.transform.Find("ContentRoot/ButtonOne/Button/text").GetComponent<Text>();
        buttonTwoText = go.transform.Find("ContentRoot/ButtonTwo/Button/text").GetComponent<Text>();
        buttonThreeText = go.transform.Find("ContentRoot/ButtonThree/Button/text").GetComponent<Text>();
        no_tip = go.transform.Find("ContentRoot/SetAgin").GetComponent<Toggle>();
        buttonOneGo = go.transform.Find("ContentRoot/ButtonOne").gameObject;
        buttonTwoGo = go.transform.Find("ContentRoot/ButtonTwo").gameObject;
        buttonThreeGo = go.transform.Find("ContentRoot/ButtonThree").gameObject;
        buttonOne = go.transform.Find("ContentRoot/ButtonOne/Button").GetComponent<Button>();
        buttonTwo = go.transform.Find("ContentRoot/ButtonTwo/Button").GetComponent<Button>();
        buttonThree = go.transform.Find("ContentRoot/ButtonThree/Button").GetComponent<Button>();
        ResetView(false);

    }
    
    private void ResetView(bool isShow)
    {
        IsShowing = isShow;
        if (isShow)
        {
            LastClickIndex = -1;
        }

        if (go != null)
        {
            go.SetActive(isShow);
            buttonOneGo.SetActive(false);
            buttonTwoGo.SetActive(false);
            buttonThreeGo.SetActive(false);
            no_tip.gameObject.SetActive(false);
            buttonOne.onClick.RemoveAllListeners();
            buttonTwo.onClick.RemoveAllListeners();
            buttonThree.onClick.RemoveAllListeners();
            no_tip.onValueChanged.RemoveAllListeners();
        }
    }

    void BindCallback(int index, Button button, Action callback,string key=null)
    {
        button.onClick.AddListener(() =>
        {
           
            if (callback != null)
            {
                if (!string.IsNullOrEmpty(key))
                {
                    PlayerPrefs.SetInt(key, pre_value);
                }
                callback();
            }
            LastClickIndex = index;
            ResetView(false);
        });
    }
    
    public void ShowOneButtonTip(string title, string content, string btnText, Action callback)
    {
        if (go == null)
        {
            Logger.LogError("You should set UIGameObject first!");
            return;
        }

        ResetView(true);
        buttonTwoGo.SetActive(true);
        float y = buttonTwoGo.GetComponent<RectTransform>().anchoredPosition.y;
        buttonTwoGo.GetComponent<RectTransform>().anchoredPosition = new Vector2(0, y);

        titleText.text = title;
        noticeText.text = content;
        buttonTwoText.text = btnText;
        BindCallback(0, buttonTwo, callback);
    }

    public void ShowTwoButtonTip(string title, string content, string btnText1, string btnText2, Action callback1, Action callback2,bool open_UIToggle,string pre_key)
    {
        if (go == null)
        {
            Logger.LogError("You should set UIGameObject first!");
            return;
        }

        ResetView(true);
        buttonOneGo.SetActive(true);
        buttonThreeGo.SetActive(true);

        titleText.text = title;
        noticeText.text = content;
        buttonOneText.text = btnText1;
        buttonThreeText.text = btnText2;
        
        if (open_UIToggle)
        {
            pre_value = 1;
            no_tip.gameObject.SetActive(true);
            no_tip.isOn = false;
            no_tip.onValueChanged.AddListener(boo =>
            {
                 pre_value = boo ? 2 : 1;
                //1 提醒 
                //2 不再提醒
            });
            BindCallback(0, buttonOne, callback1, pre_key);
            BindCallback(1, buttonThree, callback2, pre_key);
        }
        else {
            BindCallback(0, buttonOne, callback1);
            BindCallback(1, buttonThree, callback2);
        }
       

    }

    public void ShowThreeButtonTip(string title, string content, string btnText1, string btnText2, string btnText3, Action callback1, Action callback2, Action callback3)
    {
        if (go == null)
        {
            Logger.LogError("You should set UIGameObject first!");
            return;
        }

        ResetView(true);
        buttonOneGo.SetActive(true);
        buttonTwoGo.SetActive(true);
        buttonThreeGo.SetActive(true);

        titleText.text = title;
        noticeText.text = content;
        buttonOneText.text = btnText1;
        buttonTwoText.text = btnText2;
        buttonThreeText.text = btnText3;

        BindCallback(0, buttonOne, callback1);
        BindCallback(1, buttonTwo, callback2);
        BindCallback(2, buttonThree, callback3);
    }

    public void HideTip()
    {
        if (go != null)
        {
            go.SetActive(false);
        }
    }

    [BlackList]
    public IEnumerator WaitForResponse()
    {
        yield return new WaitUntil(() => {
            return LastClickIndex != -1;
        });
        yield break;
    }
    
    public float progress
    {
        get
        {
            return 0.0f;
        }
    }

    public bool isDone
    {
        get
        {
            return go == null ? false : (LastClickIndex != -1);
        }
    }

    public override void Dispose()
    {
        if (go != null)
        {
            Destroy(go);
        }

        base.Dispose();
    }
}

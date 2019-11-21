using JPush;
using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class JGPush : MonoBehaviour
{
    private Action<string,string> OnActionJGPushReceive = null;
    // Start is called before the first frame update
    public void Init()
    {
        Logger.Log("激光推送初始化");
#if UNITY_ANDROID
        JPushBinding.Init(gameObject.name);
        JPushBinding.SetDebug(true);
#endif
    }

    public void SetDebug(bool bdebug)
    {
#if UNITY_ANDROID
        JPushBinding.SetDebug(bdebug);
#endif
    }
    public void SetCallback(Action<string,string> _callback)
    {
        OnActionJGPushReceive = _callback;
    }
    /* data format
 {
    "message": "hhh",
    "extras": {
        "f": "fff",
        "q": "qqq",
        "a": "aaa"
    }
 }
 */
    // 开发者自己处理由 JPush 推送下来的消息。
    void OnReceiveMessage(string jsonStr)
    {
        Logger.Log("recv----message-----" + jsonStr);
        if(OnActionJGPushReceive != null)
        {
            OnActionJGPushReceive("OnReceiveMessage",jsonStr);
        }
        
    }

    /**
     * {
     *	 "title": "notiTitle",
     *   "content": "content",
     *   "extras": {
     *		"key1": "value1",
     *       "key2": "value2"
     * 	}
     * }
     */
    // 获取的是 json 格式数据，开发者根据自己的需要进行处理。
    void OnReceiveNotification(string jsonStr)
    {
        Logger.Log("recv---notification---" + jsonStr);
        if (OnActionJGPushReceive != null)
        {
            OnActionJGPushReceive("OnReceiveNotification", jsonStr);
        }
    }

    //开发者自己处理点击通知栏中的通知
    void OnOpenNotification(string jsonStr)
    {
        Logger.Log("recv---openNotification---" + jsonStr);
        if (OnActionJGPushReceive != null)
        {
            OnActionJGPushReceive("OnOpenNotification", jsonStr);
        }
    }

    /// <summary>
    /// JPush 的 tag 操作回调。
    /// </summary>
    /// <param name="result">操作结果，为 json 字符串。</param>
    void OnJPushTagOperateResult(string result)
    {
        Logger.Log("JPush tag operate result: " + result);
        if (OnActionJGPushReceive != null)
        {
            OnActionJGPushReceive("OnJPushTagOperateResult", result);
        }
    }

    /// <summary>
    /// JPush 的 alias 操作回调。
    /// </summary>
    /// <param name="result">操作结果，为 json 字符串。</param>
    void OnJPushAliasOperateResult(string result)
    {
        Logger.Log("JPush alias operate result: " + result);
        if (OnActionJGPushReceive != null)
        {
            OnActionJGPushReceive("OnJPushAliasOperateResult", result);
        }
    }

    void OnGetRegistrationId(string result)
    {
        Logger.Log("JPush on get registration Id: " + result);
        if (OnActionJGPushReceive != null)
        {
            OnActionJGPushReceive("OnGetRegistrationId", result);
        }
    }

    void OnMobileNumberOperatorResult(string result)
    {
        Logger.Log("JPush On Mobile Number Operator Result: " + result);
        if (OnActionJGPushReceive != null)
        {
            OnActionJGPushReceive("OnMobileNumberOperatorResult", result);
        }
    }
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;
using XLua;

public class TimelineEventMsgHelper : MonoBehaviour
{
    private static TimelineEventMsgHelper mInstance = null;

    public static TimelineEventMsgHelper Instance
    {
        get
        {
            if (mInstance == null)
            {
                mInstance = GameObject.FindObjectOfType(typeof(TimelineEventMsgHelper)) as TimelineEventMsgHelper;
                if (mInstance == null)
                {
                    GameObject go = new GameObject("[TimelineEventMsgHelper]");
                    mInstance = go.AddComponent<TimelineEventMsgHelper>();
                    TimelineEvent2Manager.ResetEvents();
                }
            }

            return mInstance;
        }
    }
    //禁止播放某个事件的动画
    public static void ForbidPlayAnim(List<string> deadList,string name,bool _lastRound)
    {
        TimelineEvent2Manager.ForbidPlayAnim(deadList,name,_lastRound);
    }

    public static void SendTimelineEvnet(string msg,int lParam,float fParam,string sParam)
    {
        TimelineEventMsgHelper.Instance.__SendTimelineEvent(msg, lParam, fParam, sParam);
    }

    public event Action<string, int, float, string> timelineEventReceiver;

    void __SendTimelineEvent( string msg, int lParam, float fParam, string sParam )
    {
        if (timelineEventReceiver != null)
            timelineEventReceiver(msg, lParam, fParam, sParam);
    }

    private void Update()
    {
        TimelineEvent2Manager.Update();
    }
}

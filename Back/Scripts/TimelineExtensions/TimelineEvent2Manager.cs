using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Timeline;
using LJ_TimelineExtension;
public class TimelineEvent2Manager
{
    private static List<TimelineEvent2> evts = new List<TimelineEvent2>();
    private static string forbidAnim;
    private static List<string> lastDeadNames;
    private static List<string> deadList;
    private static List<TimelineAnimEvent> animEvts = new List<TimelineAnimEvent>();
    public static void AddEvent(TimelineEvent2 evt)
    {
        for (int i = 0; i < evts.Count; i++)
        {
            if (evts[i].triggerTime > evt.triggerTime)
            {
                evts.Insert(i, evt);
                return;
            }
        }
        evts.Add(evt);
    }

    public static void ResetEvents()
    {
        evts.Clear();
    }

    public static void AddEvent(string msg, int lParam, float fParam, string sParam, double triggerTime, int type)
    {
        TimelineEvent2 evt = new TimelineEvent2(msg, lParam, fParam, sParam, triggerTime, type);
        AddEvent(evt);
    }

    public static void AddTimelineEvent(TrackAsset track)
    {        
        foreach (var clip in track.GetClips())
        {
            if (clip != null)
            {
                var clipasset = clip.asset as TimelineEvent;
                AddEvent(clipasset.msg, clipasset.lParam, clipasset.fParam, clipasset.sParam, clip.start, TimelineEvent2.ENTER_MSG);
                //AddEvent(clipasset.name, clipasset.lParam, clipasset.fParam, clipasset.sParam, clip.end, TimelineEvent2.LEAVE_MSG);
            }
        }
    }

    public static TimelineAnimEvent AddTimelineAnimEvent( Animator anim,TimelineClip clip )
    {
        if (anim == null || clip == null || !(clip.asset is AnimatorStatePlayableAsset)) return null;

        var evt = new TimelineAnimEvent(anim, clip.asset as AnimatorStatePlayableAsset,clip.start);
        if(evt.anim != null)
        {
            for (int i = 0 ; i < animEvts.Count ; i++)
            {
                if (animEvts[i].triggerTime > evt.triggerTime)
                {
                    animEvts.Insert(i, evt);
                    return null;
                }
            }
            animEvts.Add(evt);
        }
        return evt;
    }

    public static void AddTimelineAnimEvent(Animator anim, AnimatorStateTrack animTrack )
    {
        if (anim == null || animTrack == null) return;
        double lastTime = -1;
        TimelineAnimEvent lastHitAnim = null;
        foreach (var clip in animTrack.GetClips())
        {
            if( clip != null)
            {       
               TimelineAnimEvent evt = AddTimelineAnimEvent(anim, clip);
                if(evt !=null && evt.stateName.StartsWith("hit")&&evt.triggerTime > lastTime)
                {
                    lastTime = evt.triggerTime;
                    lastHitAnim = evt;
                }
            }
        }
        if(lastHitAnim != null)
        {
            lastHitAnim.isLastHit = true;
        }
    }
    public static void ForbidPlayAnim(List<string> _deadList,string _name,bool _lastRound)
    {
        deadList = _deadList;
        forbidAnim = _name;
        if(_lastRound && deadList != null && deadList.Count > 0)
        {
            lastDeadNames = deadList;
        }
        else
        {
            lastDeadNames = null;
        }
       
    }
    // Update is called once per frame
    public static void Update()
    {
        float curTime = Time.time;
        //logic event
        int delInex = -1;
        for (int i = 0; i < evts.Count; i++)
        {
            if (evts[i].triggerTime > curTime)
            {
                break;
            }
            //发消息
            Debug.Log("TimelineMsgManager->Update name(" + evts[i].msg + ") type(" + evts[i].type + ")" +
                "TriggerTime(" + evts[i].triggerTime + ")" + "curTime(" + curTime + ")");
            try
            {
                TimelineEventMsgHelper.SendTimelineEvnet(evts[i].msg, evts[i].lParam, evts[i].fParam, evts[i].sParam);
            }
            catch (System.Exception e)
            {
                Logger.LogError(e.ToString());
            }
            delInex = i;
        }
        if (delInex >= 0)
        {
            evts.RemoveRange(0, delInex + 1);
        }

        //anim event
        delInex = -1;
        for (int i = 0; i < animEvts.Count; i++)
        {
            if (animEvts[i].triggerTime > curTime)
            {
                break;
            }
            //发消息
            //Debug.Log("TimelineMsgManager->Update name(" + evts[i].msg + ") type(" + evts[i].type + ")" +
            //    "TriggerTime(" + evts[i].triggerTime + ")" + "curTime(" + curTime + ")");
            //TimelineEventMsgHelper.SendTimelineEvnet(evts[i].msg, evts[i].lParam, evts[i].fParam, evts[i].sParam);

            if (deadList != null && animEvts[i].stateName == forbidAnim && deadList.Contains(animEvts[i].PlayerName))
            {
                TimelineEventMsgHelper.SendTimelineEvnet("forbid_rise", 0,0, animEvts[i].PlayerName);
                delInex = i;
            }
            else if(deadList != null && deadList.Contains(animEvts[i].PlayerName) && animEvts[i].isLastHit)
            {
                if(lastDeadNames != null && lastDeadNames.Contains(animEvts[i].PlayerName) )
                {
                    animEvts[i].stateName = "die";
                }
                else
                {
                    animEvts[i].stateName = "hit_3";
                }
                if(animEvts[i].TriggerEvent() || (curTime - animEvts[i].triggerTime > 1f))
                {
                    TimelineEventMsgHelper.SendTimelineEvnet("forbid_rise", 0, 0, animEvts[i].PlayerName);
                    delInex = i;                }
            }
            else if (animEvts[i].TriggerEvent() || (curTime - animEvts[i].triggerTime > 1f))
            {
                delInex = i;
            } else
            {
                break;
            }
        }
        if (delInex >= 0)
        {
            animEvts.RemoveRange(0, delInex + 1);
        }

    }
}

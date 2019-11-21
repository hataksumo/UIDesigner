using UnityEngine;
using LJ_TimelineExtension;
//因首封，已经在镇魂街中使用了TimelineEvent名字，这里就加了个2
public class TimelineEvent2
{
    public static int ENTER_MSG = 1;
    public static int LEAVE_MSG = 0;

    public string msg;
    public int lParam;
    public float fParam;
    public string sParam;

    public double triggerTime;
    public int type;   //1:进入， 2：离开

    public TimelineEvent2( string msg, int lParam, float fParam, string sParam, double triggerTime, int type )
    {

        this.msg = msg;
        this.lParam = lParam;
        this.fParam = fParam;
        this.sParam = sParam;

        this.triggerTime = Time.time + triggerTime;
        this.type = type;
    }
}

public class TimelineAnimEvent
{
    public Animator anim;
    public string stateName;
    public float fadeTime;
    public double triggerTime;
    public bool isLastHit;//是不是最后一个被击
    public string PlayerName
    {
        get
        {
            if (anim == null)
            {
                return "";
            }
            else
            {
                return anim.name;
            }
              
        }
    }

    public TimelineAnimEvent( Animator anim, AnimatorStatePlayableAsset asset, double triggerTime )
    {
        if (asset == null) return;
        this.anim = anim;
        stateName = asset.StateName;
        fadeTime = asset.fadeTime;
        this.triggerTime = Time.time + triggerTime;
        isLastHit = false;
    }

    public bool TriggerEvent()
    {
        if (anim == null) return true;
        if(!anim.gameObject.activeInHierarchy)
        {
            return false;
        }
        if( fadeTime > 0)
        {
            anim.CrossFade(stateName, fadeTime);
        } else
        {
            anim.Play(stateName);
        }
        return true;
    }
}

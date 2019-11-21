using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;
public class PlayableDirectorManualCtrl : MonoBehaviour
{
    public enum CtrlState
    {
        None,
        Play,
        Pause,
        Stop,
    }
    [SerializeField]
    protected CtrlState state;
    protected PlayableDirector pd;
    protected float duration = 0.0f;
    public CtrlState State { get { return state; } }

    // Start is called before the first frame update
    protected void Awake()
    {
        state = CtrlState.None;
        pd = GetComponent<PlayableDirector>();
        duration = (float)pd.duration - 0.01f;
    }
    // Update is called once per frame
    protected void Update()
    {
        if (state == CtrlState.Play && pd != null)
        {
            int updateTimes = CalcEvaluateTimes(Time.deltaTime);
            if( updateTimes < 1)
            {
                var curTime = (float)pd.time + Time.deltaTime;
                if( curTime >= duration)
                {
                    state = CtrlState.Stop;
                    curTime = duration;
                }
                pd.time = curTime;
                pd.Evaluate();
            } else
            {
                for (int i = 0 ; i < updateTimes ; i++)
                {                   
                    if (state != CtrlState.Play)
                    {
                        break;
                    }
                    var curTime = (float)pd.time + MinUpdateTime;
                    if (curTime >= duration)
                    {
                        state = CtrlState.Stop;
                        curTime = duration;
                    }
                    pd.time = curTime;
                    pd.Evaluate();
                }
            }           
        }
    }
    public void Play()
    {
        if (pd != null )
        {
            switch (state)
            {
                case CtrlState.None:
                    if (pd.timeUpdateMode != DirectorUpdateMode.Manual)
                    {
                        pd.timeUpdateMode = DirectorUpdateMode.Manual;
                    }
                    pd.Stop();
                    pd.Play();
                    state = CtrlState.Play;
                    break;
                case CtrlState.Pause:                    
                    state = CtrlState.Play;
                    break;
            }
        }
    }

    public void Pause()
    {
        if (pd != null && state != CtrlState.Stop)
            state = CtrlState.Pause;
    }

    public const float minUpdateTime = 0.05f;

    static float MinUpdateTime
    {
        get
        {
            return minUpdateTime * Time.timeScale;
        }
    }

    public static int CalcEvaluateTimes( float time )
    {
        return Mathf.FloorToInt(time / MinUpdateTime);
    }

}

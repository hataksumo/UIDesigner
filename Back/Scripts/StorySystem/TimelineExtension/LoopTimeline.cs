using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Timeline;
// A behaviour that is attached to a playable
public class LoopTimeline : PlayableBehaviour
{
    //public PlayableDirector pd;
    public GameObject root;
    protected static int continueCount = 0;

    public double setTime;
    int stateCode = 999;
    protected int loopState
    {
        set
        {
            stateCode = value;

        }

        get
        {
            return stateCode;
        }
    }

    public static void AddContinueCount()
    {
        continueCount++;
    }

    public override void OnGraphStart( Playable playable )
    {
        loopState = 0;
        continueCount = 0;

    }


    // Called when the state of the playable is set to Play
    public override void OnBehaviourPlay( Playable playable, FrameData info )
    {
        if( loopState <=0)
            loopState = 1;
    }

    // Called when the state of the playable is set to Paused
    public override void OnBehaviourPause( Playable playable, FrameData info )
    {
        
        if (continueCount > 0)
        {
            continueCount--;
            loopState = 2;
            
        } else if (loopState == 1)
        {
            //if (pd != null)
            //    pd.time = setTime+0.02f;
            //pd.Pause();
            var ctrl = root.GetComponent<PlayableDirectorManualCtrl>();
            if( ctrl != null)
            {
                ctrl.Pause();
            }
        }

      

    }

   

}

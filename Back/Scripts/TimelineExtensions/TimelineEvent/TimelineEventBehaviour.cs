using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;

// A behaviour that is attached to a playable
public class TimelineEventBehaviour : PlayableBehaviour
{
    public string msg;
    public int lParam;
    public float fParam;
    public string sParam;   
    // Called when the state of the playable is set to Play
    public override void OnBehaviourPlay(Playable playable, FrameData info) {
        //TimelineEventMsgHelper.SendTimelineEvnet(msg, lParam, fParam, sParam);
	}

}

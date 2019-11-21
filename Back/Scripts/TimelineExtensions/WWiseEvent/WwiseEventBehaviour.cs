using LJAudio;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;

// A behaviour that is attached to a playable
public class WwiseEventBehaviour : PlayableBehaviour
{
    public string audioName;

    // Called when the state of the playable is set to Play
    public override void OnBehaviourPlay( Playable playable, FrameData info )
    {
        AudioManager.TimeLinePlayVoice(audioName);

    }

}


using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Timeline;

namespace LJ_TimelineExtension
{
    [TrackBindingType(typeof(Animator))]
    [TrackColor(0.65f, 0, 1)]    
    [TrackClipType(typeof(RoleFaceAnimAsset))]
    public class RoleFaceAnimTrack : PlayableTrack
    {
        public override Playable CreateTrackMixer( PlayableGraph graph, GameObject go, int inputCount )
        {
            var mixer = ScriptPlayable<RoleFaceAnimMixer>.Create(graph);
            mixer.SetInputCount(inputCount);
            return mixer;
        }
    }

}
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Timeline;

namespace LJ_TimelineExtension
{
    [TrackBindingType(typeof(GameObject))]
    [TrackColor(0, 1, 0)]    
    [TrackClipType(typeof(RoleVisiableAsset))]   
    public class RoleVisiableTrack : PlayableTrack
    {
        public override Playable CreateTrackMixer( PlayableGraph graph, GameObject go, int inputCount )
        {
            ScriptPlayable<RoleVisiableMixer> playable = ScriptPlayable<RoleVisiableMixer>.Create(graph, inputCount);         
            return playable;
        }
    }

}
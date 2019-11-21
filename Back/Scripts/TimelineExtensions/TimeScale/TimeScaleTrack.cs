using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Timeline;

namespace LJ_TimelineExtension
{
    [TrackColor(0f,0.25f,0.65f)]
    [TrackClipType(typeof(TimeScaleAsset))]
    public class TimeScaleTrack : TrackAsset
    {
        public override Playable CreateTrackMixer( PlayableGraph graph, GameObject go, int inputCount )
        {
            var mixer = ScriptPlayable<TimeScaleMixer>.Create(graph);
            mixer.SetInputCount(inputCount);
            return mixer;
        }
    }
}

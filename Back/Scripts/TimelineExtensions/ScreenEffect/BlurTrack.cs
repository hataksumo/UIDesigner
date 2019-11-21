using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Timeline;

namespace LJ_TimelineExtension
{
    [TrackColor(0f, 0.25f, 0.65f)]
    [TrackClipType(typeof(BlurAsset))]
    public class BlurTrack : TrackAsset
    {
        public override Playable CreateTrackMixer( PlayableGraph graph, GameObject go, int inputCount )
        {
            var mixer = ScriptPlayable<BlurMixer>.Create(graph);
            mixer.SetInputCount(inputCount);
            return mixer;
        }
    }

}
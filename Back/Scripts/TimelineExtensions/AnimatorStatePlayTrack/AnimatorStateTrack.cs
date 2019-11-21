using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Timeline;

namespace LJ_TimelineExtension
{
    [TrackBindingType(typeof(Animator))]
    [TrackColor(0, 0, 1)]
    [TrackClipType(typeof(AnimatorStatePlayableAsset))]
    [TrackClipType(typeof(SetTransformAsset))]
    [TrackClipType(typeof(SetBoneSyncAsset))]
    [TrackClipType(typeof(NodeTransAsset))]
    [TrackClipType(typeof(NodeFaceAsset))]  
    [TrackClipType(typeof(RoleClipPosAsset))]
    public class AnimatorStateTrack : PlayableTrack
    {
    }

}
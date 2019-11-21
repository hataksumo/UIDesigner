using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Timeline;

namespace LJ_TimelineExtension
{
    //[TrackBindingType(typeof(Camera))]
    [TrackColor(0, 0.5f, 1)]
    [TrackClipType(typeof(CameraShakeAsset))]
    [TrackClipType(typeof(BlurAsset))]
    [TrackClipType(typeof(ColorGradingAsset))]
    [TrackClipType(typeof(CameraMaskAsset))]
    public class CameraCtrlTrack : PlayableTrack
    {
    }
}
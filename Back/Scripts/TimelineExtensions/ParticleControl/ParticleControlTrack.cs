using UnityEngine.Timeline;

namespace LJ_TimelineExtension
{
    [TrackClipType(typeof(ParticleControlPlayableAsset),false)]
    [TrackClipType(typeof(ControlPlayableAsset),false)]
    [TrackClipType(typeof(SimpleParticleAsset),false)]
    public class ParticleControlTrack : ControlTrack
    {


    }

}
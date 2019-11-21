using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Timeline;
[System.Serializable]
public class LoopTimelineAsset : PlayableAsset
{
    public double startTime = 0;
    // Factory method that generates a playable based on this asset
    public override Playable CreatePlayable(PlayableGraph graph, GameObject go)
    {
        var playable = ScriptPlayable<LoopTimeline>.Create(graph);
        var b = playable.GetBehaviour();
        //var pd = go.GetComponent<PlayableDirector>();

//#if UNITY_EDITOR
//        SetStartTime(pd); 
//#endif

        b.root = go;
        //b.setTime = startTime;
       
        return playable;
        //return Playable.Create(graph);
    }


//#if UNITY_EDITOR
//    void SetStartTime( PlayableDirector pd )
//    {
//        if (pd.playableAsset == null) return;

//        var asset = pd.playableAsset as TimelineAsset;
//        foreach (var track in asset.GetOutputTracks())
//        {
//            if( track is PlayableTrack)
//            {
//                foreach (var clip in track.GetClips())
//                {
//                    if( clip.asset != null && clip.asset == this)
//                    {
//                        startTime = clip.start;
//                        break;
//                    }
//                }
//            }
//        } 


//    }
//#endif

}

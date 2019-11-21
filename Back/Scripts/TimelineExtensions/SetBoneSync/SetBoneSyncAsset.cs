using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Timeline;
using PDBH = LJ_TimelineExtension.PlayableDirectorBindingHelper;
[System.Serializable]
public class SetBoneSyncAsset : PlayableAsset
{
    public string DriveBoneName;
    public string SyncBoneName;

	// Factory method that generates a playable based on this asset
	public override Playable CreatePlayable(PlayableGraph graph, GameObject go) {
        //return Playable.Create(graph);

        PlayableDirector pd = go.GetComponent<PlayableDirector>();
       
        //get binding object
        TrackAsset attTrack = null;
        TrackAsset tarTrack = null;

        foreach (var t in (pd.playableAsset as TimelineAsset).GetOutputTracks())
        {
            if (!(t is AnimationTrack) && !(t is LJ_TimelineExtension.AnimatorStateTrack)) continue;
            if (attTrack == null && t.name.StartsWith( PDBH.AttackerTrackName))
            {
                attTrack = t;
            } else if (tarTrack == null && t.name.StartsWith(PDBH.TargetTrackName))
            {
                tarTrack = t;
            }
        }

        Transform attTrans = null;      
        Transform tarTrans = null;       

        if (attTrack != null)
        {
           var tmpAnim = pd.GetGenericBinding(attTrack) as Animator;
            if (tmpAnim != null)
            {
                attTrans = tmpAnim.transform;               
            }
        }
        if (tarTrack != null)
        {
           var tmpAnim = pd.GetGenericBinding(tarTrack) as Animator;
            if (tmpAnim != null)
            {
                tarTrans = tmpAnim.transform;                
            }
        }

        if( attTrans == null || tarTrans == null)
        {
            return Playable.Create(graph);
        }

        Transform driveBone = attTrans.Find(DriveBoneName);
        Transform syncBone = tarTrans.Find(SyncBoneName);


        var pb = ScriptPlayable<SetBoneSyncBehaviour>.Create(graph);
        var b = pb.GetBehaviour();
        b.syncRoot = tarTrans.parent;
        b.driveBone = driveBone;
        b.syncBone = syncBone;

        return pb;
	}
}

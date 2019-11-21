using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;

// A behaviour that is attached to a playable
public class SetBoneSyncBehaviour : PlayableBehaviour
{
    public Transform syncRoot;

    public Transform driveBone;
    public Transform syncBone;

    BoneSync syncCompont;
	
	// Called when the state of the playable is set to Play
	public override void OnBehaviourPlay(Playable playable, FrameData info) {
		if( syncCompont == null)
        {
            syncCompont = syncRoot.gameObject.AddComponent<BoneSync>();
        }
        syncCompont.DriveBoneRoot = driveBone;
        syncCompont.SyncBoneRoot = syncBone;
        syncCompont.SetBones();
	}

	// Called when the state of the playable is set to Paused
	public override void OnBehaviourPause(Playable playable, FrameData info) {
		if(syncCompont)
        {            
            Object.DestroyImmediate(syncCompont);
        }
	}

	
}

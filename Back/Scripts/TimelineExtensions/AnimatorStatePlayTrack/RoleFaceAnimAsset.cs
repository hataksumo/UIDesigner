using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;

[System.Serializable]
public class RoleFaceAnimAsset : PlayableAsset
{
    public int LeftEyeIndex     = 0;
    public int RightEyeIndex    = 0;
    public int MouthIndex       = 0;
    [Range(0.1f,3f)]
    public float speed = 1f;
    public RoleFaceAnimBehaviour.FaceSetting[] faceSeq = null;

    // Factory method that generates a playable based on this asset
    public override Playable CreatePlayable( PlayableGraph graph, GameObject go )
    {        
        return RoleFaceAnimBehaviour.CreatePlayable(
            graph
            , LeftEyeIndex
            , RightEyeIndex
            , MouthIndex
            ,speed
            ,faceSeq
            );
    }
}

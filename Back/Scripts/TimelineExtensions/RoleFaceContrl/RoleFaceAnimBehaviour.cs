using LJ_Shader_Utilities;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;

// A behaviour that is attached to a playable
public class RoleFaceAnimBehaviour : PlayableBehaviour
{
    public int LeftEyeIndex = 0;
    public int RightEyeIndex = 0;
    public int MouthIndex = 0;
    public float speed = 1f;

    [System.Serializable]
    public class FaceSetting
    {
        public int leye = 0;
        public int reye = 0;
        public int mouth = 0;
    }

    public FaceSetting[] faceSeq = null;

    public static Playable CreatePlayable(
        PlayableGraph graph,
        int le,
        int re,
        int m,
        float speed,
        FaceSetting[] seq )
    {
        var playable = ScriptPlayable<RoleFaceAnimBehaviour>.Create(graph);
        RoleFaceAnimBehaviour behaviour = playable.GetBehaviour();
        behaviour.LeftEyeIndex = le;
        behaviour.RightEyeIndex = re;
        behaviour.MouthIndex = m;
        behaviour.faceSeq = seq;
        behaviour.speed = Mathf.Max(0.1f, speed);
        return playable;
    }

    int CalcIndex( float time )
    {
        if (faceSeq == null || faceSeq.Length < 1) return -1;
        var index = Mathf.FloorToInt((float)time / speed);
        return index % faceSeq.Length;
    }

    void UpdateFaceIndex(Playable playable )
    {
        var index = CalcIndex((float)playable.GetTime());
        if (index >= 0)
        {
            LeftEyeIndex = faceSeq[index].leye;
            RightEyeIndex = faceSeq[index].reye;
            MouthIndex = faceSeq[index].mouth;
        }
    }

    public override void OnBehaviourPlay( Playable playable, FrameData info )
    {        
        UpdateFaceIndex(playable);
    }

    public override void ProcessFrame( Playable playable, FrameData info, object playerData )
    {
        UpdateFaceIndex(playable);
    }

}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Timeline;
using UnityEngine.UI;



namespace LJ_TimelineExtension
{
    [System.Serializable]
    public class ColorGradingAsset : PlayableAsset
    {

        public float contribution;
        // public int durateCount;
        public Texture lutTexture;
        public override Playable CreatePlayable( PlayableGraph graph, GameObject go )
        {
            //Debug.Log(string.Format("The Timeline owner name is {0}", go.name));

            var ret = ScriptPlayable<ColorGradingBehaviour>.Create(graph);
            // ret.GetBehaviour().durateCount = durateCount;
            ret.GetBehaviour().contribution = contribution;
            ret.GetBehaviour().lutTexture = lutTexture;

            return ret;
        }




    }

}






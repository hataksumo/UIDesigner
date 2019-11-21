using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Timeline;
using PDBH = LJ_TimelineExtension.PlayableDirectorBindingHelper;
namespace LJ_TimelineExtension
{

    [System.Serializable]
    public struct PlayableAssetConfig
    {
        public PropertyName refID;
        public PlayableAsset asset;
        public int charAnchorId;
        public string transPath;
        public int charAnchorId1;
        public string transPath1;     
    }

    [System.Serializable]
    public class FxAnchorInfo : PlayableAsset
    {
        //attacker fx info
        public List<PlayableAssetConfig> aConfig;
        //target fx info
        public List<PlayableAssetConfig> tConfig;
        //other target fx info
        public List<PlayableAssetConfig> oConfig;


        // Factory method that generates a playable based on this asset
        public override Playable CreatePlayable( PlayableGraph graph, GameObject go )
        { 
            return Playable.Create(graph);
        }




    }

}
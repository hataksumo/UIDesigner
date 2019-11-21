using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;
namespace LJ_TimelineExtension
{

    [System.Serializable]
    public class SimpleParticleAsset : PlayableAsset
    {
        [SerializeField]
        public ExposedReference<GameObject> sourceGameObject;
        public bool initResetRotate;
        public FxFollowType followType;
        public Vector3 posOffset;
        [SerializeField]
        public ExposedReference<GameObject> prefabGameObject;
        public float scaleFactor = 1f;
        public string keyName = "";
        public float clipIn = 0f;
        public float realLife = 0f;
        ScriptPlayable<SimpleParticleBehaviour> playable;
        // Factory method that generates a playable based on this asset
        public override Playable CreatePlayable( PlayableGraph graph, GameObject go )
        {
            playable = ScriptPlayable<SimpleParticleBehaviour>.Create(graph);

            var root = this.sourceGameObject.Resolve(graph.GetResolver());
            var fxGo = this.prefabGameObject.Resolve(graph.GetResolver()); 
            var b = playable.GetBehaviour();
            b.sourceGameObject = root;
            b.initResetRotate = initResetRotate;
            b.followType = followType;
            b.posOffset = posOffset;
            b.fxGo = fxGo;
            b.scaleFactor = scaleFactor;
            b.clipIn = clipIn;
            b.realLife = realLife;
            SimpleParticleBehaviour.InitPrticle(fxGo, root);

            return playable;
        }

        public void SetFxGameObject( PlayableDirector pd, GameObject go )
        {
            if (prefabGameObject.exposedName.GetHashCode() != 0)
            {
                pd.SetReferenceValue(prefabGameObject.exposedName, go);
            } else
            {
                prefabGameObject.defaultValue = go;
            }
        }

    }

}
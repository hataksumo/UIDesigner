using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Timeline;
using System;

namespace LJ_TimelineExtension
{
    [System.Serializable]
    public class FlyParticleControlPlayableAsset : ParticleControlPlayableAsset
    {
        // Token: 0x060001A3 RID: 419 RVA: 0x00008660 File Offset: 0x00006860
        public override Playable CreatePlayable( PlayableGraph graph, GameObject go )
        {
            if (this.prefabGameObject != null)
            {
                if (s_CreatedPrefabs.Contains(this.prefabGameObject))
                {
                    Debug.LogWarningFormat("Control Track Clip ({0}) is causing a prefab to instantiate itself recursively. Aborting further instances.", new object[]
                    {
                        base.name
                    });
                    return Playable.Create(graph, 0);
                }
                s_CreatedPrefabs.Add(this.prefabGameObject);
            }
            Playable playable = Playable.Null;
            List<Playable> list = new List<Playable>();
            GameObject endGo = this.sourceGameObject.Resolve(graph.GetResolver());         
            GameObject startGo = this.startGameObject.Resolve(graph.GetResolver());

//#if UNITY_EDITOR
//            //得到TimelinClip，拿到时长
//            var director = go.GetComponent<PlayableDirector>();
//            var tlAsset = director.playableAsset as TimelineAsset;
//            foreach (var track in tlAsset.GetOutputTracks())
//            {
//                foreach (var clip in track.GetClips())
//                {
//                    if (clip.asset == this)
//                    {
//                        this.m_Duration = clip.duration;
//                        break;
//                    }
//                }
//            }
//#endif

            if (this.prefabGameObject != null)
            {
                Transform endTrans = (!(endGo != null)) ? null : endGo.transform;
                Transform startTrans = (!(startGo != null)) ? null : startGo.transform;
                ScriptPlayable<FlyParticlePrefabControl> playable2 = FlyParticlePrefabControl.Create(
                    graph, this.prefabGameObject, startTrans, endTrans, startPosOffset, posOffset,followType, initResetRotate
                    ,this.realLife, flyDuration, revert, scaleFactor
                    );
                endGo = playable2.GetBehaviour().prefabInstance;
                list.Add(playable2);
            }
            //this.m_Duration = PlayableBinding.DefaultDuration;
            this.m_SupportLoop = false;
            if (endGo != null)
            {
                IList<ParticleSystem> particleSystems = ((!this.updateParticle)||(realLife > 0f && Application.isPlaying))? k_EmptyParticlesList:this.GetParticleSystemRoots(endGo);
               
                PlayableDirector component = go.GetComponent<PlayableDirector>();
                if (component != null)
                {
                    this.m_ControlDirectorAsset = component.playableAsset;
                }
                if (go == endGo && this.prefabGameObject == null)
                {
                    Debug.LogWarningFormat("Control Playable ({0}) is referencing the same PlayableDirector component than the one in which it is playing.", new object[]
                    {
                        base.name
                    });
                    this.active = false;
                 
                }
                if (this.active && realLife < 0.01f)
                {
                    this.CreateActivationPlayable(endGo, graph, list);
                }
              
                if (this.updateParticle)
                {
                    this.SearchHiearchyAndConnectParticleSystem(particleSystems, graph, list);
                }
               
                playable = ConnectPlayablesToMixer(graph, list);
            }



            if (this.prefabGameObject != null)
            {
                s_CreatedPrefabs.Remove(this.prefabGameObject);
            }
            if (!playable.IsValid<Playable>())
            {
                playable = Playable.Create(graph, 0);
            }
            return playable;
        }

             
      
        /// <summary>
        ///   <para>GameObject in the scene to control, or the parent of the instantiated prefab.</para>
        /// </summary>
        // Token: 0x040000C1 RID: 193       
        [SerializeField]
        public ExposedReference<GameObject> startGameObject;        
        public Vector3 startPosOffset;
        public float flyDuration;
        public bool revert = false;

    }
    
}

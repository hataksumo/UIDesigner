using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace ZHJ.Battle
{
#if UNITY_EDITOR
 using UnityEditor;
    

    [CustomEditor(typeof(CommonFxLogic), true)]
    public class FxLogic : Editor {

        float oldScale = 1.0f;
    
        public override void OnInspectorGUI()
        {
            base.OnInspectorGUI();
            CommonFxLogic logic = target as CommonFxLogic;
            if (GUILayout.Button("Play")) {
               
                logic.OnPlay();
            }
            if (GUILayout.Button("Pause"))
            {
             
                logic.OnPause();
            }
            if (GUILayout.Button("Resume"))
            {
               
                logic.OnResume();
            }
            if (GUILayout.Button("End")) {
                
                logic.OnEnd();
            }
            float scale = logic.Scale;
            if (scale != oldScale)
            {
                logic.SetScale(scale);
            }
            oldScale = scale;
        }
        
    }
#endif


    public class ParticleSystemCacheData {

        public Vector3 oldScale = Vector3.zero;
    }

    public class TrailRendererCacheData {
        public float startWidth = 0;
        public float endWidth = 0;
    }

    public class CommonFxLogic : MonoBehaviour, IFxRunable
    {
        
        private int Anim_Hash;
        [Range(0.1f,5.0f)]
        public float Scale = 1.0f;

        protected  bool isInit = false;
        Vector3 oldScale = Vector3.zero;
        protected ParticleSystem[] sys;
        protected Animator[] anims;
        protected TrailRenderer[] trailRs;
        protected List<ParticleSystemCacheData> sysCacheDatas=new List<ParticleSystemCacheData>();
        protected List<TrailRendererCacheData> trailCacheDatas=new List<TrailRendererCacheData>();

    


        public virtual void OnInit() {

            Anim_Hash = Animator.StringToHash("Anim");
            oldScale = this.transform.localScale;
            sys = GetComponentsInChildren<ParticleSystem>();
            anims = GetComponentsInChildren<Animator>();
            trailRs = GetComponentsInChildren<TrailRenderer>();
            sysCacheDatas.Clear();
            for (int i = 0; i < sys.Length; i++)
            {
                ParticleSystem system = sys[i];
             
                ParticleSystemCacheData data = new ParticleSystemCacheData();

                data.oldScale = system.transform.localScale;
                sysCacheDatas.Add(data);
            }
            trailCacheDatas.Clear();
            for (int i = 0; i < trailRs.Length; i++)
            {
                TrailRenderer trail = trailRs[i];
                TrailRendererCacheData data = new TrailRendererCacheData();
                data.startWidth = trail.startWidth;
                data.endWidth = trail.endWidth;
                trailCacheDatas.Add(data);
            }
            isInit = true;
        }



        public virtual void OnPlay()
        {
            if (!isInit) OnInit();
            gameObject.SetActive(true);
            if (sys != null && sys.Length > 0)
            {
                for (int i = 0; i < sys.Length; i++)
                {
                    sys[i].Play();
                }
            }

            if (anims != null && anims.Length > 0)
            {
                for (int i = 0; i < anims.Length; i++)
                {
                    if (anims[i].runtimeAnimatorController == null) continue;
                    anims[i].gameObject.SetActive(true);
                    anims[i].enabled = true;
                    if (anims[i].HasState(0, Anim_Hash))
                    {
                        anims[i].Play(Anim_Hash, 0, 0);
                    }
                    else
                    {
                        AnimationClip[] allClips = anims[i].runtimeAnimatorController.animationClips;
                        if (allClips != null && allClips.Length > 0)
                        {
                            if (anims[i].HasState(0, Animator.StringToHash(allClips[0].name)))
                                anims[i].Play(allClips[0].name, 0, 0);
                        }

                    }

                }
            }
            if (trailRs != null && trailRs.Length > 0)
            {
                for (int i = 0; i < trailRs.Length; i++)
                {
                    trailRs[i].Clear();
                }
            }
           
        }

        public virtual void OnPause()
        {


            if (!isInit) OnInit();
            if (sys != null && sys.Length > 0)
            {
                for (int i = 0; i < sys.Length; i++)
                {
                    ParticleSystem.MainModule main = sys[i].main;

                    main.simulationSpeed = 0;
                }
            }

            if (anims != null && anims.Length > 0)
            {
                for (int i = 0; i < anims.Length; i++)
                {

                    anims[i].speed = 0;

                }
            }
            
        }



        public virtual void OnResume() {

            if (!isInit) OnInit();
            if (sys != null && sys.Length > 0)
            {
                for (int i = 0; i < sys.Length; i++)
                {
                    ParticleSystem.MainModule main = sys[i].main;
                    main.simulationSpeed = 1.0f;
                }
            }
            if (anims != null && anims.Length > 0)
            {
                for (int i = 0; i < anims.Length; i++)
                {
                    anims[i].speed = 1.0f;

                }
            }
         

        }


        public virtual void OnEnd()
        {

            if (!isInit) OnInit();
            if (sys != null && sys.Length > 0)
            {
                for (int i = 0; i < sys.Length; i++)
                {

                    sys[i].Stop();
                    sys[i].Clear();
                }
            }
            sys = null;
            if (anims != null && anims.Length > 0)
            {
                if (anims != null && anims.Length > 0)
                {
                    for (int i = 0; i < anims.Length; i++)
                    {
                        if (anims[i] != null)
                        {
                            anims[i].enabled = false;
                        }
                    }
                }
            }
            anims = null;
            if (trailRs != null && trailRs.Length > 0)
            {
                for (int i = 0; i < trailRs.Length; i++)
                {
                    trailRs[i].Clear();
                }
            }
            trailRs = null;
            isInit = false;
            sysCacheDatas.Clear();
            trailCacheDatas.Clear();
        }
       
        public virtual void SetScale(float scale) {


            if (!isInit) OnInit();
            this.transform.localScale = oldScale*scale;

            if (sys != null && sys.Length > 0)
            {
                for (int i = 0; i < sys.Length; i++)
                {
                    ParticleSystem system = sys[i];
                    ParticleSystemCacheData cacheData = sysCacheDatas[i];
                    system.transform.localScale = cacheData.oldScale * scale;

                }
            }

            if (trailRs != null && trailRs.Length > 0)
            {
                for (int i = 0; i < trailRs.Length; i++)
                {
                    TrailRenderer trail = trailRs[i];
                    TrailRendererCacheData cacheData = trailCacheDatas[i];
                    trail.startWidth = cacheData.startWidth * scale;
                    trail.endWidth = cacheData.endWidth * scale;
                }
            }
        }


    }
}

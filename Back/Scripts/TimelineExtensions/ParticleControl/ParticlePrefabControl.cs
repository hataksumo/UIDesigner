using System.Collections;
using UnityEngine.Timeline;
using UnityEngine.Playables;
using UnityEngine;

namespace LJ_TimelineExtension
{
    public enum FxFollowType
    {
        none = 0x00,
        followPos = 0x01,
        followRotate = 0x02,
        followAll = 0x03,
    }
    // A behaviour that is attached to a playable
    public class ParticlePrefabControl : PlayableBehaviour
    {
        // Token: 0x06000222 RID: 546 RVA: 0x0000AA1C File Offset: 0x00008C1C
        public static ScriptPlayable<ParticlePrefabControl> Create(
            PlayableGraph graph, GameObject prefabGameObject
            , Transform parentTransform
            , Vector3 localPos
            , FxFollowType followType
            , bool initResetRotate
            , float realLife
            , float scaleFactor
            )
        {
            ScriptPlayable<ParticlePrefabControl> result;
            if (prefabGameObject == null)
            {
                result = ScriptPlayable<ParticlePrefabControl>.Null;
            } else
            {
                ScriptPlayable<ParticlePrefabControl> scriptPlayable = ScriptPlayable<ParticlePrefabControl>.Create(graph, 0);
                scriptPlayable.GetBehaviour().Initialize(prefabGameObject, parentTransform, localPos, followType, initResetRotate, realLife, scaleFactor);
                result = scriptPlayable;
            }
            return result;
        }

        /// <summary>
        ///   <para>The instance of the prefab that has been generated for this playable.</para>
        /// </summary>
        // Token: 0x17000099 RID: 153
        // (get) Token: 0x06000223 RID: 547 RVA: 0x0000AA60 File Offset: 0x00008C60
        public GameObject prefabInstance
        {
            get
            {
                return this.m_Instance;
            }
        }

        // Token: 0x06000224 RID: 548 RVA: 0x0000AA7C File Offset: 0x00008C7C
        void Initialize( GameObject prefabGameObject, Transform parentTransform
            , Vector3 posOffsetInWorld
            , FxFollowType followType
            , bool initResetRotate
            , float realLife
             , float scaleFactor
            )
        {
            if (parentTransform == null) return;
            if (prefabGameObject == null)
            {
                throw new System.ArgumentNullException("Prefab cannot be null");
            }
            if (this.m_Instance != null)
            {
                Debug.LogWarningFormat("Prefab Control Playable ({0}) has already been initialized with a Prefab ({1}).", new object[]
                {
                    prefabGameObject.name,
                    this.m_Instance.name
                });
            } else
            {
                this.m_Instance = Object.Instantiate<GameObject>(prefabGameObject);
                this.m_Instance.name = prefabGameObject.name + " [Timeline]";
                this.m_Instance.SetActive(false);
                this.m_ParentTrans = parentTransform;
                this.m_PosOffsetInWorld = posOffsetInWorld;
                this.m_followType = followType;
                this.m_initResetRotate = initResetRotate;
                this.m_realLife = realLife;
                //float roleScale = 1f;
                if (parentTransform != null)
                {
                    var roleAnim = ParticleCtrlUtilities.FindAnimInParent(parentTransform);
                    if (roleAnim != null)
                    {
                        this.m_Instance.transform.SetParent(roleAnim.transform.parent);
                        //roleScale = roleAnim.transform.lossyScale.x;
                    }
                }
                //ParticleScaleUtility.ScaleEffectNode(this.m_Instance, scaleFactor * roleScale);
                //if (m_ParentTrans != null)
                //{
                //    m_Instance.transform.position = m_ParentTrans.position + m_PosOffsetInWorld;
                //    if( initResetRotate)
                //        m_Instance.transform.rotation = Quaternion.identity;
                //    else
                //        m_Instance.transform.rotation = m_ParentTrans.rotation;
                //    m_Instance.transform.localScale = m_ParentTrans.lossyScale;
                //} else
                //{
                //    m_Instance.transform.position = m_PosOffsetInWorld;
                //    m_Instance.transform.rotation = Quaternion.identity;
                //    m_Instance.transform.localScale = Vector3.one;
                //}

                ParticlePrefabControl.SetHideFlagsRecursive(this.m_Instance);
            }

        }

        // Token: 0x06000225 RID: 549 RVA: 0x0000AB2F File Offset: 0x00008D2F
        public override void OnPlayableDestroy( Playable playable )
        {
            if (this.m_Instance)
            {
                if (Application.isPlaying)
                {
                    var timer = (float)playable.GetTime();
                    if (m_realLife > timer)
                    {
                        float extraLife = m_realLife - timer;
                        var lifeCtrl = this.m_Instance.AddComponent<ParticleLifeControl>();
                        //lifeCtrl.life = extraLife;
                        lifeCtrl.InitData(extraLife, m_followType, m_ParentTrans, m_PosOffsetInWorld);
                    } else
                    {
                        Object.Destroy(this.m_Instance);
                    }
                } else
                {
                    Object.DestroyImmediate(this.m_Instance);
                }
            }
        }

        // Token: 0x06000226 RID: 550 RVA: 0x0000AB69 File Offset: 0x00008D69
        public override void OnBehaviourPlay( Playable playable, FrameData info )
        {
            if (this.m_Instance != null)
            {
                this.m_Instance.SetActive(true);
                if (m_ParentTrans != null)
                {
                    m_Instance.transform.position =
                        ParticleCtrlUtilities.CalcNodeTransPos(
                            m_Instance.transform.parent, m_ParentTrans
                            , m_PosOffsetInWorld);
                    if (m_initResetRotate)
                    {
                        //try find CharactorRoot
                        var anim = ParticleCtrlUtilities.FindAnimInParent(m_ParentTrans);
                        if (anim != null)
                        {
                            m_Instance.transform.rotation = anim.transform.rotation;
                        } else
                        {
                            m_Instance.transform.localRotation = Quaternion.identity;
                        }
                    } else
                        m_Instance.transform.rotation = m_ParentTrans.rotation;
                    //m_Instance.transform.localScale = m_ParentTrans.lossyScale;
                } else
                {
                    m_Instance.transform.position = m_PosOffsetInWorld;
                    m_Instance.transform.rotation = Quaternion.identity;
                    //m_Instance.transform.localScale = Vector3.one;
                }
                initWorldPos = m_Instance.transform.position;
                initWorldRotate = m_Instance.transform.rotation;

                var helper = m_Instance.GetComponent<TimelineFollowTranHelper>();
                if( helper == null)
                {
                    helper = m_Instance.AddComponent<TimelineFollowTranHelper>();                    
                }
                helper.m_ParentTrans = m_ParentTrans;
                helper.m_followType = m_followType;
                helper.m_PosOffsetInWorld = m_PosOffsetInWorld;
                helper.initWorldPos = initWorldPos;
                helper.initWorldRotate = initWorldRotate;
            }
        }

        // Token: 0x06000227 RID: 551 RVA: 0x0000AB8E File Offset: 0x00008D8E
        public override void OnBehaviourPause( Playable playable, FrameData info )
        {
            if (playable.GetTime() - m_realLife > 0.001f || !Application.isPlaying)
            {
                if (this.m_Instance != null)
                {
                    this.m_Instance.SetActive(false);
                }
            }
        }

        // Token: 0x06000228 RID: 552 RVA: 0x0000ABB4 File Offset: 0x00008DB4
        protected static void SetHideFlagsRecursive( GameObject gameObject )
        {
            gameObject.hideFlags = (HideFlags.DontSaveInEditor | HideFlags.DontSaveInBuild);
            if (!Application.isPlaying)
            {
                gameObject.hideFlags |= HideFlags.HideInHierarchy;
            }
            IEnumerator enumerator = gameObject.transform.GetEnumerator();
            try
            {
                while (enumerator.MoveNext())
                {
                    object obj = enumerator.Current;
                    Transform transform = (Transform)obj;
                    ParticlePrefabControl.SetHideFlagsRecursive(transform.gameObject);
                }
            } finally
            {
                System.IDisposable disposable;
                if ((disposable = (enumerator as System.IDisposable)) != null)
                {
                    disposable.Dispose();
                }
            }
        }



        //public override void ProcessFrame( Playable playable, FrameData info, object playerData )
        //{

        //    if (m_ParentTrans == null || m_followType == FxFollowType.none)
        //    {

        //        m_Instance.transform.position = initWorldPos;
        //        m_Instance.transform.rotation = initWorldRotate;
        //        return;
        //    }
        //    if ((m_followType & FxFollowType.followPos) > 0)
        //    {
        //        m_Instance.transform.position = ParticleCtrlUtilities.CalcNodeTransPos(m_Instance.transform.parent, m_ParentTrans, m_PosOffsetInWorld);
        //    }
        //    if ((m_followType & FxFollowType.followRotate) > 0)
        //    {
        //        m_Instance.transform.rotation = m_ParentTrans.rotation;
        //    }

        //}

        

        private Vector3 initWorldPos;
        private Quaternion initWorldRotate;

        // Token: 0x040000F8 RID: 248
        protected GameObject m_Instance;
        private Transform m_ParentTrans;
        private Vector3 m_PosOffsetInWorld;
        protected FxFollowType m_followType;
        protected bool m_initResetRotate;
        protected float m_realLife;
    }


}
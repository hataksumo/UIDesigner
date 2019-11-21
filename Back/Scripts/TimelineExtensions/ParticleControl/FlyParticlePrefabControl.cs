using System.Collections;
using UnityEngine.Timeline;
using UnityEngine.Playables;
using UnityEngine;

namespace LJ_TimelineExtension
{
    // A behaviour that is attached to a playable
    public class FlyParticlePrefabControl : ParticlePrefabControl
    {
        // Token: 0x06000222 RID: 546 RVA: 0x0000AA1C File Offset: 0x00008C1C
        /// <summary>
        /// 
        /// </summary>
        /// <param name="graph"></param>
        /// <param name="prefabGameObject"></param>
        /// <param name="startTransform">from attacker</param>
        /// <param name="endTransform">to target</param>
        /// <param name="startOffset"></param>
        /// <param name="endOffset"></param>
        /// <param name="followType"></param>
        /// <param name="initResetRotate"></param>
        /// <param name="realLife"></param>
        /// <returns></returns>
        public static ScriptPlayable<FlyParticlePrefabControl> Create(
            PlayableGraph graph, GameObject prefabGameObject
            , Transform startTransform
            , Transform endTransform
            , Vector3 startOffset
            , Vector3 endOffset
            , FxFollowType followType
            , bool initResetRotate
            , float realLife
            , float duration
            , bool revert
            , float scaleFactor
            )
        {
            ScriptPlayable<FlyParticlePrefabControl> result;
            if (prefabGameObject == null)
            {
                result = ScriptPlayable<FlyParticlePrefabControl>.Null;
            } else
            {
                ScriptPlayable<FlyParticlePrefabControl> scriptPlayable = ScriptPlayable<FlyParticlePrefabControl>.Create(graph, 0);
                scriptPlayable.GetBehaviour().Initialize(prefabGameObject, startTransform, endTransform, startOffset, endOffset, followType, initResetRotate, realLife, duration, revert, scaleFactor);
                result = scriptPlayable;
            }
            return result;
        }


        // Token: 0x06000224 RID: 548 RVA: 0x0000AA7C File Offset: 0x00008C7C
        void Initialize( GameObject prefabGameObject
            , Transform startTransform
            , Transform endTransform
            , Vector3 startOffsetInWorld
            , Vector3 endOffsetInWorld
            , FxFollowType followType
            , bool initResetRotate
            , float realLife
            , float duration
            , bool revert
            , float scaleFactor
            )
        {
            if (startTransform == null || endTransform == null) return;
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
                ParticleScaleUtility.ScaleEffectNode(this.m_Instance, scaleFactor);
                this.m_StartTrans = startTransform;
                if (this.m_StartTrans != null)
                {
                    var anim = ParticleCtrlUtilities.FindAnimInParent(m_StartTrans);
                    if (anim != null)
                    {
                        this.m_StartRole = anim.transform;
                    }
                }
                this.m_EndTrans = endTransform;
                if (this.m_EndTrans != null)
                {
                    var anim = ParticleCtrlUtilities.FindAnimInParent(m_EndTrans);
                    if (anim != null)
                    {
                        this.m_EndRole = anim.transform;
                    }
                }
                this.m_StartPosOffsetInWorld = startOffsetInWorld;
                this.m_EndPosOffsetInWorld = endOffsetInWorld;
                this.m_followType = followType;
                this.m_initResetRotate = initResetRotate;
                this.m_realLife = realLife;
                this.m_duration = duration;
                this.m_revert = revert;
                //float roleScale = 1f;
                if (startTransform != null)
                {
                    var roleAnim = ParticleCtrlUtilities.FindAnimInParent(startTransform);
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

        Transform startRoot = null;
        Transform endRoot = null;
        Vector3 CalcDirection()
        {
            if (startRoot == null && m_StartTrans != null)
            {
                var anim = ParticleCtrlUtilities.FindAnimInParent(m_StartTrans);
                if (anim != null)
                {
                    startRoot = anim.transform;
                }
            }
            if (endRoot == null && m_EndTrans != null)
            {
                var anim = ParticleCtrlUtilities.FindAnimInParent(m_EndTrans);
                if (anim != null)
                {
                    endRoot = anim.transform;
                }
            }
            if (m_revert)
            {
                if (startRoot != null && endRoot != null)
                {
                    return startRoot.position - endRoot.position;
                } else
                {
                    return endRoot.forward;
                }
            } else
            {
                if (startRoot != null && endRoot != null)
                {
                    return endRoot.position - startRoot.position;
                } else
                {
                    return startRoot.forward;
                }
            }
        }

        // Token: 0x06000226 RID: 550 RVA: 0x0000AB69 File Offset: 0x00008D69
        public override void OnBehaviourPlay( Playable playable, FrameData info )
        {
            if (this.m_Instance != null)
            {
                this.m_Instance.SetActive(true);
                if (m_StartTrans != null)
                {
                    //m_Instance.transform.localScale = m_StartTrans.lossyScale;
                    m_StartWorldPos = ParticleCtrlUtilities.CalcNodeTransPos(m_StartRole, m_StartTrans, m_StartPosOffsetInWorld);
                } else
                {
                    m_StartWorldPos = m_StartPosOffsetInWorld;
                    m_Instance.transform.position = m_StartPosOffsetInWorld;
                    m_Instance.transform.rotation = Quaternion.identity;
                    //m_Instance.transform.localScale = Vector3.one;
                }

                if (m_EndTrans != null)
                {
                    m_EndWorldPos = ParticleCtrlUtilities.CalcNodeTransPos(m_EndRole, m_EndTrans, m_EndPosOffsetInWorld);
                } else
                {
                    m_EndWorldPos = m_EndPosOffsetInWorld;
                }

                if (m_revert)
                {
                    m_Instance.transform.position = m_EndWorldPos;
                } else
                {
                    m_Instance.transform.position = m_StartWorldPos;                  
                }
                m_Instance.transform.forward = CalcDirection();

            }
        }

        public float GetPercent( Playable playable )
        {
            if (m_revert)
            {
                return 1f - (float)playable.GetTime() / m_duration;
            } else
            {
                return (float)playable.GetTime() / m_duration;
            }
        }

        public override void ProcessFrame( Playable playable, FrameData info, object playerData )
        {
            if (m_Instance == null) return;
            if (m_revert)
            {
                if ((m_followType & FxFollowType.followPos) > 0 && m_EndTrans != null)
                {
                    m_EndWorldPos = ParticleCtrlUtilities.CalcNodeTransPos(m_EndRole, m_EndTrans, m_EndPosOffsetInWorld);
                }
                if (m_StartTrans != null)
                    m_StartWorldPos = ParticleCtrlUtilities.CalcNodeTransPos(m_StartRole, m_StartTrans, m_StartPosOffsetInWorld);
            } else
            {
                if ((m_followType & FxFollowType.followPos) > 0 && m_StartTrans != null)
                {
                    m_StartWorldPos = ParticleCtrlUtilities.CalcNodeTransPos(m_StartRole, m_StartTrans, m_StartPosOffsetInWorld);
                }
                if (m_EndTrans != null)
                    m_EndWorldPos = ParticleCtrlUtilities.CalcNodeTransPos(m_EndRole, m_EndTrans, m_EndPosOffsetInWorld);
            }

            var pct = GetPercent(playable);
            m_Instance.transform.position = Vector3.Lerp(m_StartWorldPos, m_EndWorldPos, pct);
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
                        var lifeCtrl = this.m_Instance.AddComponent<ParticleLifeControl>();

                        //lifeCtrl.life = m_realLife - timer;
                        //lifeCtrl.flyDuration = m_duration - timer;
                        //lifeCtrl.TargetTrans = m_revert ? m_StartTrans : m_EndTrans;
                        lifeCtrl.InitFlyTarget(m_realLife - timer,
                            m_revert ? m_StartTrans : m_EndTrans,
                            m_duration - timer
                            );
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

        // Token: 0x040000F8 RID: 248      
        private Transform m_StartRole;
        private Transform m_StartTrans;
        private Vector3 m_StartPosOffsetInWorld;
        private Transform m_EndRole;
        private Transform m_EndTrans;
        private Vector3 m_EndPosOffsetInWorld;

        private Vector3 m_StartWorldPos;
        private Vector3 m_EndWorldPos;
        private float m_duration;
        private bool m_revert;
    }


}
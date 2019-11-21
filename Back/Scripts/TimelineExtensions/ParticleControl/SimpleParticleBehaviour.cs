using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;

namespace LJ_TimelineExtension
{
    // A behaviour that is attached to a playable
    public class SimpleParticleBehaviour : PlayableBehaviour
    {

        public GameObject sourceGameObject;
        public bool initResetRotate;
        public FxFollowType followType;
        public Vector3 posOffset;
        public GameObject fxGo;
        public float scaleFactor = 1f;
        public float clipIn = 0f;
        public float realLife = 0f;
        GameObject m_Instance;
        Transform m_ParentTrans;

        public static void InitPrticle( GameObject particle, GameObject root )
        {
            if (particle == null)
            {
                //Debug.LogError("特效资源为空");
                return;
            }
            var pTrans = (root == null) ? null : root.transform;
            if (pTrans != null)
            {
                var roleAnim = ParticleCtrlUtilities.FindAnimInParent(pTrans);
                if (roleAnim != null)
                {
                    particle.transform.SetParent(roleAnim.transform.parent);
                }
            }
        }

        public override void OnPlayableDestroy( Playable playable )
        {
            //if (this.m_Instance != null)
            //{
            //    if (Application.isPlaying)
            //    {
            //        Object.Destroy(this.m_Instance);
            //    } else
            //    {
            //        Object.DestroyImmediate(this.m_Instance);
            //    }
            //}
        }

        // Called when the state of the playable is set to Play
        public override void OnBehaviourPlay( Playable playable, FrameData info )
        {
            if (m_Instance == null)
            {
                this.m_Instance = fxGo;
                //if (!this.m_Instance.activeInHierarchy)
                //{
                //    this.m_Instance.SetActive(true);
                //}
                //this.m_Instance.name = prefabGameObject.name + " [Timeline]";
                //this.m_Instance.SetActive(false);
                //float roleScale = 1f;
                m_ParentTrans = (sourceGameObject == null) ? null : sourceGameObject.transform;
                //if (m_ParentTrans != null)
                //{
                //    var roleAnim = ParticleCtrlUtilities.FindAnimInParent(m_ParentTrans);

                //    //if (roleAnim != null)
                //    //{
                //    //    roleScale = roleAnim.transform.lossyScale.x;
                //    //}
                //}
                //ParticleScaleUtility.ScaleEffectNode(this.m_Instance, scaleFactor * roleScale);
            }

            if (this.m_Instance != null)
            {
                this.m_Instance.SetActive(true);
                if (m_ParentTrans != null)
                {
                    m_Instance.transform.position = ParticleCtrlUtilities.CalcNodeTransPos(m_Instance.transform.parent, m_ParentTrans, posOffset);
                    if (initResetRotate)
                    {
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
                } else
                {
                    m_Instance.transform.position = posOffset;
                    m_Instance.transform.rotation = Quaternion.identity;
                }
                var particles = m_Instance.GetComponentsInChildren<ParticleSystem>(true);
                if (particles != null && particles.Length > 0)
                {
                    foreach (var p in particles)
                    {
                        p.Simulate(clipIn, false, true);
                        p.Play(false);
                    }
                }

                var matAnims = m_Instance.GetComponentsInChildren<FxHelper.FxHelper_MatAnim>(true);
                if (matAnims != null && matAnims.Length > 0)
                {
                    foreach (var a in matAnims)
                    {
                        a.SetTime(clipIn);
                    }
                }
            }

        }

        // Called when the state of the playable is set to Paused
        public override void OnBehaviourPause( Playable playable, FrameData info )
        {
            if (m_Instance == null)
            {
                return;
            }
            if (realLife < 0.01f)
            {
                if (this.m_Instance != null)
                {
                    this.m_Instance.SetActive(false);
                }
            } else
            {
                if (Application.isPlaying)
                {
                    var timer = (float)playable.GetTime();
                    if (realLife > timer)
                    {
                        float extraLife = realLife - timer;
                        var lifeCtrl = this.m_Instance.GetComponent<ParticleLifeControl>();
                        if (lifeCtrl == null)
                            lifeCtrl = this.m_Instance.AddComponent<ParticleLifeControl>();
                        lifeCtrl.InitData(extraLife, followType, m_ParentTrans, posOffset);
                        lifeCtrl.destory = false;

                    } else
                    {
                        this.m_Instance.SetActive(false);
                    }
                }
            }
        }

        // Called each frame while the state is set to Play
        public override void PrepareFrame( Playable playable, FrameData info )
        {
            if (m_ParentTrans == null || followType == FxFollowType.none) return;
            if ((followType & FxFollowType.followPos) > 0)
            {
                m_Instance.transform.position = ParticleCtrlUtilities.CalcNodeTransPos(m_Instance.transform.parent, m_ParentTrans, posOffset);
            }
            if ((followType & FxFollowType.followRotate) > 0)
            {
                m_Instance.transform.rotation = m_ParentTrans.rotation;
            }
        }

    }

}
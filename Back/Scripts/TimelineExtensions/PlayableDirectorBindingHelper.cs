#if UNITY_EDITOR
#define IN_EDITOR_MODE
#endif
using Cinemachine.Timeline;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Timeline;
using Cinemachine;



namespace LJ_TimelineExtension
{
    public class PlayableDirectorBindingHelper
    {
        public const string AttackerTrackName = "Attacker";
        public const string TargetTrackName = "Target";
        public const string SummonedTrackName = "Summoned";
        public const string OtherTrackName = "Other";
        public const string CameraTrackName = "Camera";
        public const string DataTrackName = "Data";
        public const string MsgTrackName = "Msgs";
        public const string SkillVCamAnchor = "CamAnchor";
        public const string SkillVCamName = "SkillCamera";

        public const string CommonVCamClip_Stat = "start";
        public const string CommonVCamClip_Follow = "follow";
        public const string CommonVCamClip_End = "end";

        public const string SummonFx_Appeear = "_hero appear";
        public const string SummonFx_Down = "_hero down";

        public const string TargetFxTrackName = "TargetFx";

        struct CamInitData
        {
            public Vector3 fCamPos;
            //public Vector3 fCamAngle;
            //public float fCamFov;
        }
        static Dictionary<int, CamInitData> camInitData;

        static Queue<PlayableAsset> tlObjects;

        public enum AnchorType
        {
            None,
            Charactor,
            BattleFiled,
        }

        public static AnchorType GetAnchorType( int savedId )
        {
            if (savedId >= 0)
            {

                return AnchorType.Charactor;
            } else if (savedId < -100)
            {
                return AnchorType.BattleFiled;
            }

            return AnchorType.None;
        }

        public static int GetSavedId( int logicId, AnchorType type )
        {
            int ret = -1;
            switch (type)
            {
                case AnchorType.None:
                    break;
                case AnchorType.Charactor:
                    ret = logicId;
                    break;
                case AnchorType.BattleFiled:
                    ret = -logicId - 101;
                    break;
            }
            return ret;
        }
        public static int GetLogicId( int savedId, AnchorType type )
        {
            int ret = -1;
            switch (type)
            {
                case AnchorType.None:
                    break;
                case AnchorType.Charactor:
                    ret = savedId;
                    break;
                case AnchorType.BattleFiled:
                    ret = -savedId - 101;
                    break;
            }
            return ret;
        }

        static void SetFxBattleFieldBinding(
        PlayableDirector pd,
            GameObject[] battleFieldNodes,
            FxAnchorInfo info
          )
        {
            if (battleFieldNodes == null || battleFieldNodes.Length < 1 || info == null || info.aConfig == null || info.aConfig.Count < 1)
            {
                return;
            }
            foreach (var c in info.aConfig)
            {
                Transform bone = null;
                if (GetAnchorType(c.charAnchorId) != AnchorType.BattleFiled)
                {
                    continue;
                }

                var index = GetLogicId(c.charAnchorId, AnchorType.BattleFiled);
                if (index >= 0 && index < battleFieldNodes.Length)
                {
                    var go = battleFieldNodes[index];
                    if (go != null)
                    {
                        bone = go.transform;
                    }
                }
                if (bone != null)
                {
                    BindFxTokenSourceGameobject(pd, c.asset, bone, null);
                }
#if IN_EDITOR_MODE
                else
                {
                    Debug.LogErrorFormat("No Bone Find!!!{0}-{1}-{2}", pd.playableAsset.name, c.charAnchorId, c.transPath);
                }
#endif
            }

        }


        static void SetFxBindingsData(
        PlayableDirector pd,
        Transform attTrans
          , RoleFxController attAnchors
          , Transform tarTrans
          , RoleFxController tarAnchors
         , FxAnchorInfo info
         )
        {
            if (info == null) return;
            SetFxTokenBindings(pd, attTrans, attAnchors, attTrans, attAnchors, info.aConfig);
            SetFxTokenBindings(pd, tarTrans, tarAnchors, attTrans, attAnchors, info.tConfig);
        }


        static void SetFxTokenBindings(
        PlayableDirector pd,
            Transform trans
             , RoleFxController anchors
            , Transform trans1
             , RoleFxController anchors1

            , List<PlayableAssetConfig> config
            )
        {
            if (anchors == null || trans == null || config == null || config.Count < 1)
            {
                return;
            }
            foreach (var c in config)
            {
                SetFxTokenBinding(pd, c.asset,
                    trans, anchors, c.charAnchorId, c.transPath
                    , trans1, anchors1, c.charAnchorId1, c.transPath1
                    );
            }

        }
        static void ClearFxTokenBindings(PlayableDirector pd, PlayableAsset asset)
        {
            if (asset is ParticleControlPlayableAsset)
            {
                if (asset is FlyParticleControlPlayableAsset)
                {
                    var ctrlAsset = asset as FlyParticleControlPlayableAsset;
                    //ctrlAsset.sourceGameObject = null;                        
                    //ctrlAsset.startGameObject = null;
                    var propName = ctrlAsset.sourceGameObject.exposedName;
                    if (propName.GetHashCode() != 0)
                    {
                        pd.SetReferenceValue(propName, null);
                    }
                    propName = ctrlAsset.startGameObject.exposedName;
                    if (propName.GetHashCode() != 0)
                    {
                        pd.SetReferenceValue(propName, null);
                    }

                }
                else
                {
                    var ctrlAsset = asset as ParticleControlPlayableAsset;
                    var propName = ctrlAsset.sourceGameObject.exposedName;
                    if (propName.GetHashCode() != 0)
                    {
                        pd.SetReferenceValue(propName, null);
                    }
                }
            }
            else if (asset is NodeFaceAsset)
            {
                var ctrlAsset = asset as NodeFaceAsset;
                var propName = ctrlAsset.lookAtNode.exposedName;
                if (propName.GetHashCode() != 0)
                {
                    pd.SetReferenceValue(propName, null);
                }
            }
            else if (asset is SimpleParticleAsset)
            {
                var ctrlAsset = asset as SimpleParticleAsset;
                var propName = ctrlAsset.sourceGameObject.exposedName;
                if (propName.GetHashCode() != 0)
                {
                    pd.SetReferenceValue(propName, null);
                }
            }
        }


        static void SetFxTokenBinding(
        PlayableDirector pd,
        PlayableAsset asset,
            Transform trans
            , RoleFxController anchors
            , int charAnchorId
            , string transPath
            , Transform trans1 = null
            , RoleFxController anchors1 = null
            , int charAnchorId1 = 0
            , string transPath1 = ""
            )
        {
            if (anchors == null || trans == null)
            {
                return;
            }

            //c.asset.sourceGameObject.defaultValue = attAnchors.GetAnchorTrans(c.charAnchorId);
            Transform bone = null;
            if (charAnchorId >= 0)
            {
                bone = anchors.GetAnchorTrans(charAnchorId);
            } else if (!string.IsNullOrEmpty(transPath))
            {
#if IN_EDITOR_MODE
                Debug.LogWarningFormat("Bind Bone is Not an Anchor:{0} in {1}", transPath, pd.playableAsset.name);
#endif
                bone = trans.Find(transPath);
            }

            Transform bone1 = null;
            if (trans1 != null && anchors1 != null)
            {
                if (charAnchorId1 >= 0)
                {
                    bone1 = anchors1.GetAnchorTrans(charAnchorId1);
                } else if (!string.IsNullOrEmpty(transPath1))
                {
#if IN_EDITOR_MODE
                    Debug.LogWarningFormat("Bind Bone1 is Not an Anchor:{0} in {1}", transPath1, pd.playableAsset.name);
#endif
                    bone1 = trans1.Find(transPath1);
                }
            }


            if (bone != null)
            {
                BindFxTokenSourceGameobject(pd, asset, bone, bone1);
            }
#if IN_EDITOR_MODE
                else
            {
                Debug.LogErrorFormat("No Bone Find!!!{0}-{1}-{2}", pd.playableAsset.name, charAnchorId, transPath);
            }
#endif
        }

        static void BindFxTokenSourceGameobject( PlayableDirector pd, PlayableAsset asset, Transform bone, Transform bone1 )
        {
            //使用这种绑定方式,因为动态复制出来的轨道,并没有exposedName,无法使用PlayableDirector.SetReferenceValue(...)接口


            if (asset is ControlPlayableAsset)
            {
                (asset as ControlPlayableAsset).sourceGameObject.defaultValue = bone.gameObject;

            } else if (asset is ParticleControlPlayableAsset)
            {
                if (asset is FlyParticleControlPlayableAsset)
                {
                    var ctrlAsset = asset as FlyParticleControlPlayableAsset;
                    //src Bone
                    var propName = ctrlAsset.sourceGameObject.exposedName;
                    if (propName.GetHashCode() != 0)
                    {
                        pd.SetReferenceValue(propName, bone.gameObject);
                    } else
                    {
                        ctrlAsset.sourceGameObject.defaultValue = bone.gameObject;
                    }

                    //start bone
                    propName = ctrlAsset.startGameObject.exposedName;
                    if (propName.GetHashCode() != 0)
                    {
                        pd.SetReferenceValue(propName, bone1.gameObject);
                    } else
                    {
                        ctrlAsset.startGameObject.defaultValue = bone1.gameObject;
                    }

                } else
                {
                    var ctrlAsset = asset as ParticleControlPlayableAsset;
                    var propName = ctrlAsset.sourceGameObject.exposedName;
                    if (propName.GetHashCode() != 0)
                    {
                        pd.SetReferenceValue(propName, bone.gameObject);
                    } else
                    {
                        ctrlAsset.sourceGameObject.defaultValue = bone.gameObject;
                    }
                }
            } else if (asset is NodeFaceAsset)
            {
                var ctrlAsset = asset as NodeFaceAsset;
                var propName = ctrlAsset.lookAtNode.exposedName;
                if (propName.GetHashCode() != 0)
                {
                    pd.SetReferenceValue(propName, bone.gameObject);
                } else
                {
                    ctrlAsset.lookAtNode.defaultValue = bone.gameObject;
                }
            } else if (asset is SimpleParticleAsset)
            {
                var ctrlAsset = asset as SimpleParticleAsset;
                var propName = ctrlAsset.sourceGameObject.exposedName;
                if (propName.GetHashCode() != 0)
                {
                    pd.SetReferenceValue(propName, bone.gameObject);
                } else
                {
                    ctrlAsset.sourceGameObject.defaultValue = bone.gameObject;
                }
            }
        }

        static void SetNodeTransOffset( TrackAsset track, float offset )
        {
            if (!(track is AnimatorStateTrack)) return;
            foreach (var c in track.GetClips())
            {
                if (c.asset == null || !(c.asset is NodeTransAsset)) continue;
                var a = c.asset as NodeTransAsset;
                a.transDistance = offset;
            }
        }

        static void FindTracks( PlayableDirector pd,
            out List<TrackAsset> attTrack,
            out List<TrackAsset> tarTrack,
            out TrackAsset othTrackGroup,
            out List<TrackAsset> camTrack,
            out PlayableTrack dataTrack,
            out List<AnimationTrack> skillCamTrack
            )
        {
            attTrack = new List<TrackAsset>();
            tarTrack = new List<TrackAsset>();
            camTrack = new List<TrackAsset>();
            othTrackGroup = null;
            dataTrack = null;
            skillCamTrack = new List<AnimationTrack>();
            if (pd == null) return;

            TimelineAsset tlasset = pd.playableAsset as TimelineAsset;

            foreach (var t in tlasset.GetOutputTracks())
            {
                if (t.name.StartsWith(AttackerTrackName))
                {
                    attTrack.Add(t);
                } else if (t.name.StartsWith(TargetTrackName))
                {
                    tarTrack.Add(t);
                } else if (t.name.StartsWith(CameraTrackName))
                {
                    camTrack.Add(t);
                } else if (dataTrack == null && t is PlayableTrack && t.name.Equals(DataTrackName))
                {
                    dataTrack = t as PlayableTrack;
                } else if (t.name.StartsWith(SkillVCamName))
                {
                    var track = t as AnimationTrack;
                    if(track != null)
                        skillCamTrack.Add(track);
                }
                //mute Wwise Track
                else if (t.name.StartsWith("WwiseCtrl"))
                {
                    t.muted = true;
                }
            }

            foreach (var track in tlasset.GetRootTracks())
            {
                if (track.name.StartsWith(OtherTrackName))
                {
                    othTrackGroup = track;
                    break;
                }
            }
        }

        static void FindTracks( PlayableDirector pd,
           out List<TrackAsset> attTrack,
           out List<TrackAsset> summonedTrack,
           out PlayableTrack dataTrack           

           )
        {
            attTrack = new List<TrackAsset>();
            summonedTrack = new List<TrackAsset>();
            dataTrack = null;
           
            if (pd == null) return;

            TimelineAsset tlasset = pd.playableAsset as TimelineAsset;

            foreach (var t in tlasset.GetOutputTracks())
            {
                if (t.name.StartsWith(AttackerTrackName))
                {
                    attTrack.Add(t);
                } else if (t.name.StartsWith(SummonedTrackName))
                {
                    summonedTrack.Add(t);
                } else if (dataTrack == null && t is PlayableTrack && t.name.Equals(DataTrackName))
                {
                    dataTrack = t as PlayableTrack;
                }
            }
        }


        public static void AddTimelineScale(PlayableDirector pd,float scale)
        {
            if(pd != null)
            {
               TimelineSpeed timelineSpeed = pd.GetComponent<TimelineSpeed>();
               if(timelineSpeed == null)
                {
                    timelineSpeed = pd.gameObject.AddComponent<TimelineSpeed>();
                }
                timelineSpeed.Play(pd,scale);
            }
        }

        public static void UpdateRoleRender(GameObject attack,GameObject target,GameObject[] others,int type)
        {
            if(attack)
            {
                if(type == 1)
                {
                    attack.GetComponent<RoleFxController>().SetRenderQueue2Top();
                }
                else
                {
                    attack.GetComponent<RoleFxController>().ResetRenderQueue();
                }
                
            }
            if(target)
            {
                if (type == 1)
                {
                    target.GetComponent<RoleFxController>().SetRenderQueue2Top();
                }
                else
                {
                    target.GetComponent<RoleFxController>().ResetRenderQueue();
                }
            }
            if(others != null)
            {
                for (int i = 0; i < others.Length; i++)
                {
                    if (type == 1)
                    {
                        others[i].GetComponent<RoleFxController>().SetRenderQueue2Top();
                    }
                    else
                    {
                        others[i].GetComponent<RoleFxController>().ResetRenderQueue();
                    }
                }
            }
        }

        public static void AddTimelineEvent( PlayableDirector pd)
        {
            if (pd == null) return;

            TimelineAsset tlasset = pd.playableAsset as TimelineAsset;

            foreach (var t in tlasset.GetOutputTracks())
            {
                if (t.name.Equals(MsgTrackName))
                {
                    TimelineEvent2Manager.AddTimelineEvent(t);
                } else if ((t is AnimatorStateTrack)
                             && (t.name.StartsWith(TargetTrackName) || t.name.StartsWith(OtherTrackName))
                             )
                {
                    var tmpAnim = pd.GetGenericBinding(t) as Animator;
                    TimelineEvent2Manager.AddTimelineAnimEvent(tmpAnim, t as AnimatorStateTrack);
                }
                //else if (t is CameraCtrlTrack)
                //{
                    //foreach (var clip in t.GetClips())
                    //{
                    //    if (clip != null)
                    //    {
                    //        if(clip.asset.GetType() == typeof(CameraMaskAsset))
                    //        {
                    //            ((CameraMaskAsset)clip.asset).ChangeMaskBehaviourColorAlpha(alpha);
                    //        }

                    //        //AddEvent(clipasset.name, clipasset.lParam, clipasset.fParam, clipasset.sParam, clip.end, TimelineEvent2.LEAVE_MSG);
                    //    }
                    //}
      
                    //CamMaskUtilities.SetExtraAlpha(alpha);
                //}
            }
        }
        static void SetupFollowCam( CinemachineVirtualCamera followVCam, Transform followTrans, Transform lookatTrans )
        {
            if (followVCam != null)
            {
                followVCam.Follow = followTrans;
                followVCam.LookAt = lookatTrans;

                var followComp = followVCam.GetCinemachineComponent<CinemachineTransposer>();
                if (followComp != null && camInitData != null && followTrans != null)
                {
                    var rootGo = followVCam.transform.parent.gameObject;
                    var rootId = rootGo.GetInstanceID();
                    CamInitData initData;
                    if (camInitData.TryGetValue(rootId, out initData))
                    {
                        var followTransPos = rootGo.transform.InverseTransformPoint(followTrans.position);
                        var followPoint = followTransPos + initData.fCamPos;
                        followComp.m_FollowOffset = rootGo.transform.TransformPoint(followPoint) - followTrans.position;
                    }

                }
            }
        }

        static private int PropGUID = 0;
        static private int GUIDParam = -1;
        static private int GetProp()
        {
            if (GUIDParam < 0)
            {
                GUIDParam = Random.Range(1000, 10000);
            }
            int propId = GUIDParam + (++PropGUID);
            if (propId > int.MaxValue)
            {
                PropGUID = 0;
                GUIDParam = Random.Range(GUIDParam + 1, GUIDParam + 10000);
            }
            return propId;
        }

        static bool SetupSkillVCamTrack(
            PlayableDirector pd,
            List<TrackAsset> camTracks,
            List<AnimationTrack> skillCamTrack,
            CinemachineVirtualCamera skillVCam,
            CinemachineVirtualCamera commonFollowCam = null
            , Transform followTrans = null, Transform lookatTrans = null
            )
        {
            bool ret = false;
            if (camTracks != null && camTracks.Count > 0)
            {
                foreach (var t in camTracks)
                {
                    if (!(t is CinemachineTrack)) continue;
                    bool isSkillCamTrack = false;
                    foreach (var clip in t.GetClips())
                    {
                        if (clip.displayName.Equals(SkillVCamName))
                        {
                            //var asset = clip.asset as CinemachineShot;
                            //if (asset != null)
                            //{
                            //    if (commonFollowCam == null)
                            //    {
                            //        //asset.VirtualCamera.defaultValue = skillVCam;
                            //        pd.SetReferenceValue(asset.VirtualCamera.exposedName, skillVCam);
                            //    } else
                            //    {
                            //        SetupFollowCam(commonFollowCam, followTrans, lookatTrans);
                            //        //asset.VirtualCamera.defaultValue = commonFollowCam;
                            //        pd.SetReferenceValue(asset.VirtualCamera.exposedName, commonFollowCam);
                            //    }
                            //    ret = true;
                            //}
                            isSkillCamTrack = true;
                            ret = true;
                            break;
                        }
                    }

                    if (!isSkillCamTrack) continue;

                    if (commonFollowCam != null)
                    {
                        if (!t.muted)
                        {
                            t.muted = true;
                        }
                        var tlAsset = pd.playableAsset as TimelineAsset;
                        var tmpT = tlAsset.CreateTrack<CinemachineTrack>(null, "tmpCommon");
                        var bindingCam = pd.GetGenericBinding(t);
                        pd.SetGenericBinding(tmpT, bindingCam);
                        foreach (var clip in t.GetClips())
                        {
                            var newClip = tmpT.CreateClip<CinemachineShot>();
                            newClip.start = clip.start;
                            newClip.duration = clip.duration;
                            newClip.clipIn = clip.clipIn;
                            var prop = GetProp();
                            (newClip.asset as CinemachineShot).VirtualCamera.exposedName = prop;
                            //(newClip.asset as CinemachineShot).VirtualCamera.defaultValue = commonFollowCam;
                            pd.SetReferenceValue(prop, commonFollowCam);

                        }

                    } else
                    {
                        if (t.muted)
                        {
                            t.muted = false;
                        }
                        foreach (var clip in t.GetClips())
                        {
                            if (clip.displayName.Equals(SkillVCamName))
                            {
                                pd.SetReferenceValue((clip.asset as CinemachineShot).VirtualCamera.exposedName, skillVCam);
                            }
                        }
                    }

                }
            }


            if (skillCamTrack != null && skillCamTrack.Count > 0)
            {
                var vcamAnim = skillVCam.GetComponent<Animator>();
                if (vcamAnim == null)
                {
                    vcamAnim = skillVCam.gameObject.AddComponent<Animator>();
                }
                foreach (var t in skillCamTrack)
                {
                    pd.SetGenericBinding(t, vcamAnim);
                }
            }
            return ret;
        }


        static void SetupCommonVCamTrack(
            PlayableDirector pd,
           List<TrackAsset> camTracks,
         CinemachineVirtualCamera startVCam,
         CinemachineVirtualCamera followVCam,
         CinemachineVirtualCamera endVCam,
         Transform followTrans, Transform lookatTrans

           )
        {
            //if (commonVCam == null || commonVCam.Length < 3) return;



            //bind track clips
            if (camTracks != null && camTracks.Count > 0)
            {
                foreach (var t in camTracks)
                {
                    if (!(t is CinemachineTrack)) continue;
                    foreach (var clip in t.GetClips())
                    {
                        if (startVCam != null && clip.displayName.Equals(CommonVCamClip_Stat))
                        {
                            var asset = clip.asset as CinemachineShot;
                            if (asset != null)
                            {
                                // bool isValid = false;
                                if (asset.VirtualCamera.exposedName.GetHashCode() == 0)
                                {
                                    asset.VirtualCamera.exposedName = GetProp();
                                }
                                //var refObj = pd.GetReferenceValue(asset.VirtualCamera.exposedName, out isValid);
                                //if (isValid)
                                //{
                                pd.SetReferenceValue(asset.VirtualCamera.exposedName, startVCam);
                                //} else
                                //{
                                //    asset.VirtualCamera.defaultValue = startVCam;
                                //}
                            }
                        } else if (followVCam != null && clip.displayName.Equals(CommonVCamClip_Follow))
                        {
                            var asset = clip.asset as CinemachineShot;
                            if (asset != null)
                            {
                                if (asset.VirtualCamera.exposedName.GetHashCode() == 0)
                                {
                                    asset.VirtualCamera.exposedName = GetProp();
                                }
                                pd.SetReferenceValue(asset.VirtualCamera.exposedName, followVCam);
                                //bool isValid = false;
                                //var refObj = pd.GetReferenceValue(asset.VirtualCamera.exposedName, out isValid);
                                //if (isValid)
                                //{
                                //    pd.SetReferenceValue(asset.VirtualCamera.exposedName, followVCam);
                                //} else
                                //{
                                //    asset.VirtualCamera.defaultValue = followVCam;
                                //}
                            }
                        } else if (endVCam != null && clip.displayName.Equals(CommonVCamClip_End))
                        {
                            var asset = clip.asset as CinemachineShot;
                            if (asset != null)
                            {
                                if (asset.VirtualCamera.exposedName.GetHashCode() == 0)
                                {
                                    asset.VirtualCamera.exposedName = GetProp();
                                }
                                pd.SetReferenceValue(asset.VirtualCamera.exposedName, endVCam);
                                //bool isValid = false;
                                //var refObj = pd.GetReferenceValue(asset.VirtualCamera.exposedName, out isValid);
                                //if (isValid)
                                //{
                                //    pd.SetReferenceValue(asset.VirtualCamera.exposedName, endVCam);
                                //} else
                                //{
                                //    asset.VirtualCamera.defaultValue = endVCam;
                                //}
                            }
                        }
                    }
                }
            }

            //set followCam
            SetupFollowCam(followVCam, followTrans, lookatTrans);
        }




        public static GameObject GetSkillVCam()
        {
            var anchor = new GameObject(SkillVCamAnchor);
            var camGo = new GameObject(SkillVCamName);
            camGo.transform.SetParent(anchor.transform);
            camGo.transform.localPosition = Vector3.zero;
            camGo.transform.localRotation = Quaternion.identity;
            camGo.transform.localScale = Vector3.one;
            camGo.AddComponent<CinemachineVirtualCamera>();
            return camGo;
        }

        public static GameObject GetCommoneVCamGrop( string nodeName,
            Vector3 startCamPos, Vector3 startCamAngle, float startCamFov,
            Vector3 followCamPos, Vector3 followCamAngle, float followCamFov,
            Vector3 endCamPos, Vector3 endCamAngle, float endCamFov,
            bool followPos, bool lookat
            )
        {
            var retGo = new GameObject(nodeName);

            //start
            #region Start
            var startVCamTrans = new GameObject(CommonVCamClip_Stat).transform;
            startVCamTrans.SetParent(retGo.transform, false);
            var startVCam = startVCamTrans.gameObject.AddComponent<CinemachineVirtualCamera>();

            startVCamTrans.localPosition = startCamPos;
            startVCamTrans.localEulerAngles = startCamAngle;
            startVCam.m_Lens.FieldOfView = startCamFov;
            startVCam.Priority = 10;
            #endregion

            //follow
            #region Follow
            //save init data
            if (camInitData == null)
            {
                camInitData = new Dictionary<int, CamInitData>();
            }

            var dataId = retGo.GetInstanceID();
            camInitData.Add(dataId, new CamInitData()
            {
                // fCamAngle = followCamAngle,
                fCamPos = followCamPos,
                //fCamFov = followCamFov,
            });

            Transform followVCamTrans = new GameObject(CommonVCamClip_Follow).transform;
            followVCamTrans.SetParent(retGo.transform);

            var followVCam = followVCamTrans.gameObject.AddComponent<CinemachineVirtualCamera>();

            followVCamTrans.localPosition = followCamPos;
            followVCamTrans.localEulerAngles = followCamAngle;
            followVCam.m_Lens.FieldOfView = followCamFov;
            followVCam.Priority = 10;

            if (followPos)
            {
                var transComp = followVCam.AddCinemachineComponent<CinemachineTransposer>();
                transComp.m_BindingMode = CinemachineTransposer.BindingMode.WorldSpace;
                transComp.m_FollowOffset = followCamPos;
            }

            if (lookat)
            {
                var aimComp = followVCam.AddCinemachineComponent<CinemachineComposer>();
            }

            #endregion

            //end
            #region End
            Transform endVCamTrans = new GameObject(CommonVCamClip_End).transform;
            endVCamTrans.SetParent(retGo.transform);

            var endVCam = endVCamTrans.gameObject.AddComponent<CinemachineVirtualCamera>();

            endVCamTrans.localPosition = endCamPos;
            endVCamTrans.localEulerAngles = endCamAngle;
            endVCam.m_Lens.FieldOfView = endCamFov;
            endVCam.Priority = 10;
            #endregion

            return retGo;
        }

        /// <summary>
        /// only follow cam
        /// </summary>
        /// <param name="nodeName"></param>
        /// <param name="followCamPos"></param>
        /// <param name="followCamAngle"></param>
        /// <param name="followCamFov"></param>
        /// <param name="followPos"></param>
        /// <param name="lookat"></param>
        /// <returns></returns>
        public static GameObject GetCommoneVCamGrop_Simple( string nodeName,
          Vector3 followCamPos, Vector3 followCamAngle, float followCamFov,
          bool followPos, bool lookat
          )
        {
            var retGo = new GameObject(nodeName);

            //follow
            #region Follow
            //save init data
            if (camInitData == null)
            {
                camInitData = new Dictionary<int, CamInitData>();
            }

            var dataId = retGo.GetInstanceID();
            camInitData.Add(dataId, new CamInitData()
            {
                fCamPos = followCamPos,
            });

            Transform followVCamTrans = new GameObject(CommonVCamClip_Follow).transform;
            followVCamTrans.SetParent(retGo.transform);

            var followVCam = followVCamTrans.gameObject.AddComponent<CinemachineVirtualCamera>();

            followVCamTrans.localPosition = followCamPos;
            followVCamTrans.localEulerAngles = followCamAngle;
            followVCam.m_Lens.FieldOfView = followCamFov;
            followVCam.Priority = 10;

            if (followPos)
            {
                var transComp = followVCam.AddCinemachineComponent<CinemachineTransposer>();
                transComp.m_BindingMode = CinemachineTransposer.BindingMode.WorldSpace;
                transComp.m_FollowOffset = followCamPos;
            }

            if (lookat)
            {
                var aimComp = followVCam.AddCinemachineComponent<CinemachineComposer>();
            }

            #endregion


            return retGo;
        }



        ////////////////////////////////////////////////////////////////////////////////////////////////
        ///Public Interface
        /// <summary>
        /// 绑定Timeline需要的场景元素
        /// </summary>
        /// <param name="pd"></param>
        /// <param name="attacker"></param>
        /// <param name="target"></param>
        /// <param name="camGo"></param>
        public static void BindingRoles_Editor( PlayableDirector pd,
          GameObject attacker,
          GameObject target,
          GameObject other,
          GameObject cam,
          GameObject skillVCamGo,
          GameObject commonVCamsGo,
          GameObject[] battleFieldNodePoses,
          bool followAttacker = true,
          int followPosAnchorID = -1,
          bool lookatAttacker = true,
          int lookatAnchorID = -1,
          float attackOffset = 0f,
          float targetOffset = 0f
            )
        {
#if IN_EDITOR_MODE
            if (pd == null) return;

            //get binding object
            List<TrackAsset> attTrack = null;
            List<TrackAsset> tarTrack = null;
            List<TrackAsset> camTrack = null;
            PlayableTrack dataTrack = null;
            List<AnimationTrack> skillCamTrack = null;
            TrackAsset othTrackGroup = null;
            FindTracks(pd, out attTrack, out tarTrack, out othTrackGroup, out camTrack, out dataTrack, out skillCamTrack);


            Transform attTrans = null;
            RoleFxController attAnchors = null;
            Transform tarTrans = null;
            RoleFxController tarAnchors = null;

            //bind Roles
            if (attacker != null)
            {
                var tmpAnim = attacker.GetComponent<Animator>();
                attTrans = attacker.transform;
                attAnchors = attacker.GetComponent<RoleFxController>();
                if (attTrack != null && attTrack.Count > 0 && tmpAnim != null)
                {
                    foreach (var t in attTrack)
                    {
                        if (t is AnimationTrack || t is AnimatorStateTrack)
                        {
                            pd.SetGenericBinding(t, tmpAnim);
                            SetNodeTransOffset(t, attackOffset);
                        } else //if (t is ActivationTrack)
                        {
                            pd.SetGenericBinding(t, attacker);
                        }
                    }
                }
            }
            if (target != null)
            {
                var tmpAnim = target.GetComponent<Animator>();
                tarTrans = target.transform;
                tarAnchors = target.GetComponent<RoleFxController>();
                if (tarTrack != null && tarTrack.Count > 0 && tmpAnim != null)
                {
                    foreach (var t in tarTrack)
                    {
                        if (t is AnimationTrack || t is AnimatorStateTrack)
                        {
                            pd.SetGenericBinding(t, tmpAnim);
                            SetNodeTransOffset(t, targetOffset);
                        } else //if (t is ActivationTrack)
                        {
                            pd.SetGenericBinding(t, target);
                        }
                    }
                }
            }

            if (other != null && othTrackGroup != null)
            {
                var tmpAnim = other.GetComponent<Animator>();
                foreach (var t in othTrackGroup.GetChildTracks())
                {
                    if (t is AnimationTrack || t is AnimatorStateTrack)
                    {
                        pd.SetGenericBinding(t, tmpAnim);
                        SetNodeTransOffset(t, targetOffset);
                    } else //if (t is ActivationTrack)
                    {
                        pd.SetGenericBinding(t, other);
                    }
                }
            }

            if (cam != null)
            {
                var tmpAnim = cam.GetComponent<Animator>();
                var camBrain = cam.GetComponent<Cinemachine.CinemachineBrain>();
                if (camTrack != null && camTrack.Count > 0)
                {
                    foreach (var t in camTrack)
                    {
                        if (t is AnimationTrack)
                        {
                            pd.SetGenericBinding(t, tmpAnim);
                        } else if (t is CinemachineTrack)
                        {
                            pd.SetGenericBinding(t, camBrain);
                        } else //if (t is ActivationTrack)
                        {
                            pd.SetGenericBinding(t, cam);
                        }
                    }
                }
            }

            CinemachineVirtualCamera skillVCam = null;
            if (skillVCamGo != null)
                skillVCam = skillVCamGo.GetComponent<CinemachineVirtualCamera>();


            CinemachineVirtualCamera[] commonVCams = null;
            if (commonVCamsGo != null)
            {
                commonVCams = commonVCamsGo.GetComponentsInChildren<CinemachineVirtualCamera>();
            }

            CinemachineVirtualCamera startVCam = null;
            CinemachineVirtualCamera followVCam = null;
            CinemachineVirtualCamera endVCam = null;
            if (commonVCams != null && commonVCams.Length > 0)
            {
                foreach (var vc in commonVCams)
                {
                    if (vc.name.Equals(CommonVCamClip_Stat))
                    {
                        startVCam = vc;
                    } else
                    if (vc.name.Equals(CommonVCamClip_Follow))
                    {
                        followVCam = vc;
                    } else
                    if (vc.name.Equals(CommonVCamClip_End))
                    {
                        endVCam = vc;
                    }
                }
            }


            Transform followTrans = null;
            Transform lookatTrans = null;


            if (!SetupSkillVCamTrack(pd, camTrack, skillCamTrack, skillVCam))
            {

                if (followPosAnchorID >= 0)
                {
                    if (followAttacker)
                        followTrans = attAnchors.GetAnchorTrans(followPosAnchorID);
                    else
                        followTrans = tarAnchors.GetAnchorTrans(followPosAnchorID);
                }

                if (lookatAnchorID >= 0)
                {
                    if (lookatAttacker)
                        lookatTrans = attAnchors.GetAnchorTrans(lookatAnchorID);
                    else
                        lookatTrans = tarAnchors.GetAnchorTrans(lookatAnchorID);
                }

                SetupCommonVCamTrack(pd, camTrack, startVCam, followVCam, endVCam, followTrans, lookatTrans);
            }

            //binding anchor via datatrack
            FxAnchorInfo dataAsset = null;
            if (dataTrack != null)
            {
                foreach (var c in dataTrack.GetClips())
                {
                    if (c == null || c.asset == null) continue;
                    if (c.asset is FxAnchorInfo)
                    {
                        dataAsset = c.asset as FxAnchorInfo;
                        break;
                    }
                }
            }

            SetFxBindingsData(pd, attTrans, attAnchors, tarTrans, tarAnchors, dataAsset);
            SetFxBattleFieldBinding(pd, battleFieldNodePoses, dataAsset);
            if (other != null)
            {
                //binding other ahchor via datatrack
                var tmpAnchors = other.GetComponent<RoleFxController>();
                var tmpTrans = other.transform;
                SetFxTokenBindings(pd, tmpTrans, tmpAnchors, attTrans, attAnchors, dataAsset.oConfig);
            }

            UnityEditor.EditorUtility.SetDirty(pd.playableAsset);
            UnityEditor.AssetDatabase.Refresh();

#endif
        }

        struct BindingInfo
        {
            public FxAnchorInfo anchorInfo;

        }

        static BindingInfo InteralBindings( PlayableDirector pd,
       GameObject attacker,
       GameObject target,
       GameObject[] others,
       GameObject cam,
       GameObject skillVCamGo,
       GameObject commonVCamsGo,
       GameObject[] battleFieldNodePoses,
       bool useFollowAsSkillCam = false,
       bool followAttacker = true,
         int followPosAnchorID = -1,
         bool lookatAttacker = true,
         int lookatAnchorID = -1,
         float attackOffset = 0f,
         float targetOffset = 0f
         )
        {
            if (tlObjects == null)
            {
                tlObjects = new Queue<PlayableAsset>();
            }
            if (tlObjects.Count >= 1)
            {
                GameObject.DestroyImmediate(tlObjects.Dequeue());
            }
            if (pd.playableAsset == null)
            {
                Debug.LogErrorFormat("Can not Find TimelineAsset:{0} -- {1}", pd.name, (attacker == null) ? "NULL Attacker" : attacker.name);
                return default(BindingInfo);
            }
            var assetInst = Object.Instantiate(pd.playableAsset) as TimelineAsset;
            tlObjects.Enqueue(assetInst);

            pd.playableAsset = assetInst;
            foreach (var track in assetInst.GetOutputTracks())
            {
                pd.ClearGenericBinding(track);
            }

            //get binding object
            List<TrackAsset> attTrack = null;
            List<TrackAsset> tarTrack = null;
            List<TrackAsset> camTrack = null;
            PlayableTrack dataTrack = null;
            List<AnimationTrack> skillCamTrack = null;
            TrackAsset othTrackGroup = null;
            FindTracks(pd, out attTrack, out tarTrack, out othTrackGroup, out camTrack, out dataTrack, out skillCamTrack);


            Transform attTrans = null;
            RoleFxController attAnchors = null;
            Transform tarTrans = null;
            RoleFxController tarAnchors = null;

            //bind Roles
            if (attacker != null)
            {
                var tmpAnim = attacker.GetComponent<Animator>();
                attTrans = attacker.transform;
                attAnchors = attacker.GetComponent<RoleFxController>();
                if (attTrack != null && attTrack.Count > 0 && tmpAnim != null)
                {
                    foreach (var t in attTrack)
                    {
                        if (t is AnimationTrack || t is AnimatorStateTrack)
                        {
                            pd.SetGenericBinding(t, tmpAnim);
                            SetNodeTransOffset(t, attackOffset);
                        } else //if (t is ActivationTrack)
                        {
                            pd.SetGenericBinding(t, attacker);
                        }
                    }
                }
            }
            if (target != null)
            {
                var tmpAnim = target.GetComponent<Animator>();
                tarTrans = target.transform;
                tarAnchors = target.GetComponent<RoleFxController>();
                if (tarTrack != null && tarTrack.Count > 0 && tmpAnim != null)
                {
                    foreach (var t in tarTrack)
                    {
                        if (t is AnimationTrack || t is AnimatorStateTrack)
                        {
                            pd.SetGenericBinding(t, tmpAnim);
                            SetNodeTransOffset(t, targetOffset);
                        }
                        //else if (t is ActivationTrack)
                        //{
                        //    t.muted = true;
                        //}
                        else //if (t is ActivationTrack)
                        {
                            pd.SetGenericBinding(t, target);
                        }
                    }
                }
            }

            if (cam != null)
            {
                var tmpAnim = cam.GetComponent<Animator>();
                var camBrain = cam.GetComponent<Cinemachine.CinemachineBrain>();
                if (camTrack != null && camTrack.Count > 0)
                {
                    foreach (var t in camTrack)
                    {
                        if (t is AnimationTrack)
                        {
                            pd.SetGenericBinding(t, tmpAnim);
                        } else if (t is CinemachineTrack)
                        {
                            pd.SetGenericBinding(t, camBrain);
                        } else //if (t is ActivationTrack)
                        {
                            pd.SetGenericBinding(t, cam);
                        }
                    }
                }
            }

            CinemachineVirtualCamera skillVCam = null;
            if (skillVCamGo != null)
                skillVCam = skillVCamGo.GetComponent<CinemachineVirtualCamera>();

            CinemachineVirtualCamera[] commonVCam = null;
            if (commonVCamsGo != null)
            {
                commonVCam = commonVCamsGo.GetComponentsInChildren<CinemachineVirtualCamera>();
            }

            CinemachineVirtualCamera startVCam = null;
            CinemachineVirtualCamera followVCam = null;
            CinemachineVirtualCamera endVCam = null;
            if (commonVCam != null && commonVCam.Length > 0)
            {
                foreach (var vc in commonVCam)
                {
                    //if (vc.name.Equals(CommonVCamClip_Stat))
                    //{
                    //    startVCam = vc;
                    //} else
                    if (vc.name.Equals(CommonVCamClip_Follow))
                    {
                        followVCam = vc;
                        break;
                    }
                    //else
                    //if (vc.name.Equals(CommonVCamClip_End))
                    //{
                    //    endVCam = vc;
                    //}
                }
            }

            Transform followTrans = null;
            Transform lookatTrans = null;
            if (followPosAnchorID >= 0)
            {
                if (followAttacker)
                    followTrans = attAnchors.GetAnchorTrans(followPosAnchorID);
                else
                    followTrans = tarAnchors.GetAnchorTrans(followPosAnchorID);
            }

            if (lookatAnchorID >= 0)
            {
                if (lookatAttacker)
                    lookatTrans = attAnchors.GetAnchorTrans(lookatAnchorID);
                else
                    lookatTrans = tarAnchors.GetAnchorTrans(lookatAnchorID);
            }

            //followVCam配置
            if (!SetupSkillVCamTrack(pd, camTrack, skillCamTrack, skillVCam, useFollowAsSkillCam ? followVCam : null, followTrans, lookatTrans))
            {
                //先屏蔽通用尽头 gy
                //SetupCommonVCamTrack(pd, camTrack, startVCam, followVCam, endVCam, followTrans, lookatTrans);
                SetupCommonVCamTrack(pd, camTrack, null, null, null, followTrans, lookatTrans);
            }

            //binding anchor via datatrack
            FxAnchorInfo dataAsset = null;
            if (dataTrack != null)
            {
                foreach (var c in dataTrack.GetClips())
                {
                    if (c == null || c.asset == null) continue;
                    if (c.asset is FxAnchorInfo)
                    {
                        dataAsset = c.asset as FxAnchorInfo;
                        break;
                    }
                }
            }

            SetFxBindingsData(pd, attTrans, attAnchors, tarTrans, tarAnchors, dataAsset);

            SetFxBattleFieldBinding(pd, battleFieldNodePoses, dataAsset);
            //bind other chars
            if (others != null && others.Length > 0 && othTrackGroup != null)
            {
                TrackAsset bTGroup = null;
                Dictionary<int, TimelineClip> newClips = new Dictionary<int, TimelineClip>();
                for (int i = 0 ; i < others.Length ; i++)
                {
                    if (i > 0)
                    {
                        newClips.Clear();
                        bTGroup = CloneTrack(othTrackGroup, null, pd.playableAsset as TimelineAsset, ref newClips);
                    } else
                    {
                        bTGroup = othTrackGroup;
                    }

                    var tmpAnim = others[i].GetComponent<Animator>();
                    var tmpAnchors = others[i].GetComponent<RoleFxController>();
                    var tmpTrans = others[i].transform;

                    //binding anim
                    foreach (var t in bTGroup.GetChildTracks())
                    {
                        if (t is AnimatorStateTrack
                            || t is AnimationTrack
                            )
                        {
                            pd.SetGenericBinding(t, tmpAnim);
                            SetNodeTransOffset(t, targetOffset);
                        }
                    }
                    //binding fx 
                    if (i > 0)
                    {
                        if (dataAsset != null && dataAsset.oConfig != null && dataAsset.oConfig.Count > 0)
                        {
                            TimelineClip tmpClip = null;
                            foreach (var data in dataAsset.oConfig)
                            {
                                if (newClips.TryGetValue(data.refID.GetHashCode(), out tmpClip))
                                {
                                    SetFxTokenBinding(
                                        pd,
                                        tmpClip.asset as PlayableAsset,
                                        tmpTrans
                                        , tmpAnchors
                                       , data.charAnchorId
                                       , data.transPath
                                       , attTrans
                                       , attAnchors
                                       , data.charAnchorId1
                                       , data.transPath1
                                     );
                                }
                            }
                        }
                    } else
                    {
                        SetFxTokenBindings(pd, tmpTrans, tmpAnchors, attTrans, attAnchors, dataAsset.oConfig);
                    }
                }
            }
            else
            {
                foreach (var c in dataAsset.oConfig)
                {
                    ClearFxTokenBindings(pd,c.asset);
                }
            }

            return new BindingInfo()
            {
                anchorInfo = dataAsset,
            };

        }


        public static void BindingRoles( PlayableDirector pd,
        GameObject attacker,
        GameObject target,
        GameObject[] others,
        GameObject cam,
        GameObject skillVCamGo,
        GameObject commonVCamsGo,
        GameObject[] battleFieldNodePoses,
        bool useFollowAsSkillCam = false,
        bool followAttacker = true,
          int followPosAnchorID = -1,
          bool lookatAttacker = true,
          int lookatAnchorID = -1,
          float attackOffset = 0f,
          float targetOffset = 0f
          )
        {
            if (pd == null) return;

#if IN_EDITOR_MODE
            if (!Application.isPlaying)
            {
                return;
            }
#endif

            InteralBindings(
                pd,
                attacker,
                target,
                others,
                cam, skillVCamGo, commonVCamsGo,
                battleFieldNodePoses,
                useFollowAsSkillCam,
                followAttacker, followPosAnchorID,
                lookatAttacker, lookatAnchorID,
                attackOffset, targetOffset
                );
        }

        public static void BindingRoles_SummonAction(
            GameObject fx_appear,
            GameObject fx_down,
            PlayableDirector pd,
      GameObject attacker,
      GameObject target,
      GameObject[] others,
      GameObject cam,
      GameObject skillVCamGo,
      GameObject commonVCamsGo,
      GameObject[] battleFieldNodePoses,
      bool useFollowAsSkillCam = false,
      bool followAttacker = true,
        int followPosAnchorID = -1,
        bool lookatAttacker = true,
        int lookatAnchorID = -1,
        float attackOffset = 0f,
        float targetOffset = 0f
        )
        {
            if (pd == null) return;

#if IN_EDITOR_MODE
            if (!Application.isPlaying)
            {
                return;
            }
#endif

            var info = InteralBindings(
                pd,
                attacker,
                target,
                others,
                cam, skillVCamGo, commonVCamsGo,
                battleFieldNodePoses,
                useFollowAsSkillCam,
                followAttacker, followPosAnchorID,
                lookatAttacker, lookatAnchorID,
                attackOffset, targetOffset
                );

            if (info.anchorInfo != null )
            {
                foreach (var item in info.anchorInfo.aConfig)
                {
                    var pcpAsset = item.asset as SimpleParticleAsset;
                    if (pcpAsset != null)
                    {
                        if (pcpAsset.keyName.Contains("hero down"))
                        {
                            //pcpAsset.prefabGameObject = fx_down;
                            pcpAsset.SetFxGameObject(pd, fx_down);

                        } else if (pcpAsset.keyName.Contains("hero appear"))
                        {
                            pcpAsset.SetFxGameObject(pd, fx_appear);
                        }
                    }
                }
            }

        }

        public static void BindingRoles_Show(
            PlayableDirector pd,
            GameObject attacker,
            GameObject summoned
            )
        {
            if (pd == null) return;

#if IN_EDITOR_MODE
            if (!Application.isPlaying)
            {
                return;
            }
#endif

            List<TrackAsset> attTrack = null;
            List<TrackAsset> summonedTrack = null;         
            PlayableTrack dataTrack = null;
                     
            FindTracks(pd, out attTrack, out summonedTrack,out dataTrack);

            Transform attTrans = null;
            RoleFxController attAnchors = null;
            Transform tarTrans = null;
            RoleFxController tarAnchors = null;
            //bind Roles
            if (attacker != null)
            {
                var tmpAnim = attacker.GetComponent<Animator>();
                attTrans = attacker.transform;
                attAnchors = attacker.GetComponent<RoleFxController>();
                if (attTrack != null && attTrack.Count > 0 && tmpAnim != null)
                {
                    foreach (var t in attTrack)
                    {
                        if (t is AnimationTrack || t is AnimatorStateTrack)
                        {
                            pd.SetGenericBinding(t, tmpAnim);                           
                        } else 
                        {
                            pd.SetGenericBinding(t, attacker);
                        }
                    }
                }
            }
            if (summoned != null)
            {
                var tmpAnim = summoned.GetComponent<Animator>();
                tarTrans = summoned.transform;
                tarAnchors = summoned.GetComponent<RoleFxController>();
                if (summonedTrack != null && summonedTrack.Count > 0 && tmpAnim != null)
                {
                    foreach (var t in summonedTrack)
                    {
                        if (t is AnimationTrack || t is AnimatorStateTrack)
                        {
                            pd.SetGenericBinding(t, tmpAnim);                           
                        }                       
                        else
                        {
                            pd.SetGenericBinding(t, summoned);
                        }
                    }
                }
            }

            FxAnchorInfo dataAsset = null;
            if (dataTrack != null)
            {
                foreach (var c in dataTrack.GetClips())
                {
                    if (c == null || c.asset == null) continue;
                    if (c.asset is FxAnchorInfo)
                    {
                        dataAsset = c.asset as FxAnchorInfo;
                        break;
                    }
                }
            }

            SetFxBindingsData(pd, attTrans, attAnchors, tarTrans, tarAnchors, dataAsset);

        }

        static TrackAsset CloneTrack( TrackAsset track, TrackAsset parent, TimelineAsset tlAsset, ref Dictionary<int, TimelineClip> newClips )
        {
            if (newClips == null) newClips = new Dictionary<int, TimelineClip>();
            var newT = tlAsset.CreateTrack(track.GetType(), parent, track.name);
            newT.name = track.name;
            var clips = track.GetClips();
            if (clips != null)
            {
                foreach (var clip in clips)
                {
                    TimelineClip newC = CloneClip(clip, newT, clip.asset.GetType());
                    if (clip.asset != null)
                    {
                        if (clip.asset is ControlPlayableAsset)
                        {
                            newClips.Add((clip.asset as ControlPlayableAsset).sourceGameObject.exposedName.GetHashCode(), newC);
                        } else if (clip.asset is ParticleControlPlayableAsset)
                        {
                            newClips.Add((clip.asset as ParticleControlPlayableAsset).sourceGameObject.exposedName.GetHashCode(), newC);
                        }
                    }
                }
            }

            var subTracks = track.GetChildTracks();
            if (subTracks != null)
            {
                foreach (var sub in subTracks)
                {
                    CloneTrack(sub, newT, tlAsset, ref newClips);
                }
            }

            return newT;
        }

        /// <summary>
        /// 替换Timeline中的特效预设
        /// </summary>
        /// <param name="pd"></param>
        /// <param name="fxGo"></param>
        public static void ReplaceTargetFx( PlayableDirector pd, GameObject fxGo )
        {
            if (pd == null || pd.playableAsset == null || fxGo == null) return;
            TimelineAsset tlasset = pd.playableAsset as TimelineAsset;

            foreach (var t in tlasset.GetOutputTracks())
            {
                var pTrack = t as ParticleControlTrack;
                if (pTrack == null || !pTrack.name.StartsWith(TargetFxTrackName)) continue;

                foreach (var clip in pTrack.GetClips())
                {
                    var sPA = clip.asset as SimpleParticleAsset;
                    if (sPA == null) continue;
                    sPA.SetFxGameObject(pd, fxGo);
                }
            }
        }

        /// <summary>
        /// 替换技能相机的动画
        /// </summary>
        /// <param name="pd"></param>
        /// <param name="anim"></param>
        public static void ReplaceSkillCameraAnim( PlayableDirector pd, AnimationClip anim )
        {
            if (pd == null || pd.playableAsset == null || anim == null) return;
            TimelineAsset tlasset = pd.playableAsset as TimelineAsset;

            foreach (var t in tlasset.GetOutputTracks())
            {
                var pTrack = t as AnimationTrack;
                if (pTrack == null || !pTrack.name.StartsWith(SkillVCamName)) continue;

                foreach (var clip in pTrack.GetClips())
                {
                    var apa = clip.asset as AnimationPlayableAsset;
                    if (apa == null) continue;
                    apa.clip = anim;
                }

            }
        }

        public static void SelectTracks( PlayableDirector pd ,string[] trackNames, int activeIndex  )
        {
            if (pd == null || pd.playableAsset == null 
                || trackNames == null || trackNames.Length < 1 
                || activeIndex < 0 || activeIndex >= trackNames.Length) return;
            TimelineAsset tlasset = pd.playableAsset as TimelineAsset;
            int selectCount = trackNames.Length;
            TrackAsset[] selectedTrack = new TrackAsset[selectCount];
            foreach (var t in tlasset.GetOutputTracks())
            {
                if (t == null) continue;
                for (int i = 0 ; i < selectCount ; i++)
                {
                    if( selectedTrack[i] == null && t.name.Equals(trackNames[i]))
                    {
                        selectedTrack[i] = t;
                        break;
                    }
                }
            }

            if( selectedTrack[activeIndex] != null)
            {
                for (int i = 0 ; i < selectCount ; i++)
                {
                    if (selectedTrack[i] == null) continue;
                    selectedTrack[i].muted = (i != activeIndex );
                }
            }
        }


        #region Clone Clip Utilities
        static readonly System.Type[] cloneClipTypes = {
            typeof(AnimatorStatePlayableAsset),
             typeof(AnimationPlayableAsset),
            typeof(ControlPlayableAsset),
            typeof(ParticleControlPlayableAsset),
            typeof(FlyParticleControlPlayableAsset),
        };

        static void CloneClipData( TimelineClip src, TimelineClip dst )
        {
            dst.start = src.start;
            dst.duration = src.duration;
            dst.displayName = src.displayName;
            dst.clipIn = src.clipIn;
            dst.timeScale = src.timeScale;
            dst.easeInDuration = src.easeInDuration;
            dst.easeOutDuration = src.easeOutDuration;
            dst.blendInDuration = src.blendInDuration;
            dst.blendOutDuration = src.blendOutDuration;
            dst.blendInCurveMode = src.blendInCurveMode;
            dst.blendOutCurveMode = src.blendOutCurveMode;
            dst.mixInCurve = new AnimationCurve(src.mixInCurve.keys);
            dst.mixOutCurve = new AnimationCurve(src.mixOutCurve.keys);
        }

        static void CloneClipData_AnimatorState( TimelineClip src, TimelineClip dst )
        {
            var srcAsset = src.asset as AnimatorStatePlayableAsset;
            var dstAsset = dst.asset as AnimatorStatePlayableAsset;

            dstAsset.StateName = srcAsset.StateName;
            dstAsset.fadeTime = srcAsset.fadeTime;
            dstAsset.startTime = srcAsset.startTime;
        }

        static void CloneClipData_AnimatoinPlay( TimelineClip src, TimelineClip dst )
        {
            var srcAsset = src.asset as AnimationPlayableAsset;
            var dstAsset = dst.asset as AnimationPlayableAsset;

            dstAsset.clip = srcAsset.clip;
        }

        static void CloneClipData_Fx( TimelineClip src, TimelineClip dst )
        {
            var srcAsset = src.asset as ControlPlayableAsset;
            var dstAsset = dst.asset as ControlPlayableAsset;



            dstAsset.prefabGameObject = srcAsset.prefabGameObject;
            dstAsset.particleRandomSeed = srcAsset.particleRandomSeed;
            dstAsset.searchHierarchy = srcAsset.searchHierarchy;
            dstAsset.active = srcAsset.active;
            dstAsset.postPlayback = srcAsset.postPlayback;
            dstAsset.updateParticle = srcAsset.updateParticle;
        }

        static void CloneClipData_ParticleFx( TimelineClip src, TimelineClip dst )
        {
            var dstAsset = dst.asset as ParticleControlPlayableAsset;
            var srcAsset = src.asset as ParticleControlPlayableAsset;


            dstAsset.initResetRotate = srcAsset.initResetRotate;
            dstAsset.followType = srcAsset.followType;
            dstAsset.prefabGameObject = srcAsset.prefabGameObject;
            dstAsset.particleRandomSeed = srcAsset.particleRandomSeed;
            dstAsset.searchHierarchy = srcAsset.searchHierarchy;
            dstAsset.active = srcAsset.active;
            dstAsset.postPlayback = srcAsset.postPlayback;
            dstAsset.realLife = srcAsset.realLife;
            dstAsset.scaleFactor = srcAsset.scaleFactor;
        }

        static void CloneClipData_FlyParticleFx( TimelineClip src, TimelineClip dst )
        {
            var dstAsset = dst.asset as FlyParticleControlPlayableAsset;
            var srcAsset = src.asset as FlyParticleControlPlayableAsset;


            dstAsset.initResetRotate = srcAsset.initResetRotate;
            dstAsset.followType = srcAsset.followType;
            dstAsset.prefabGameObject = srcAsset.prefabGameObject;
            dstAsset.particleRandomSeed = srcAsset.particleRandomSeed;
            dstAsset.searchHierarchy = srcAsset.searchHierarchy;
            dstAsset.active = srcAsset.active;
            dstAsset.postPlayback = srcAsset.postPlayback;
            dstAsset.realLife = srcAsset.realLife;
            dstAsset.flyDuration = srcAsset.flyDuration;
            dstAsset.revert = srcAsset.revert;
            dstAsset.scaleFactor = srcAsset.scaleFactor;
        }

        #endregion

        static TimelineClip CloneClip( TimelineClip src, TrackAsset track, System.Type type )
        {
            TimelineClip newC = null;

            int index = -1;
            for (int i = 0 ; i < cloneClipTypes.Length ; i++)
            {
                if (type.Equals(cloneClipTypes[i]))
                {
                    index = i;
                    break;
                }
            }
            switch (index)
            {
                case 0:
                    newC = track.CreateClip<AnimatorStatePlayableAsset>();
                    CloneClipData_AnimatorState(src, newC);
                    break;
                case 1:
                    newC = track.CreateClip<AnimationPlayableAsset>();
                    CloneClipData_AnimatoinPlay(src, newC);
                    break;
                case 2:
                    newC = track.CreateClip<ControlPlayableAsset>();
                    CloneClipData_Fx(src, newC);
                    break;
                case 3:
                    newC = track.CreateClip<ParticleControlPlayableAsset>();
                    CloneClipData_ParticleFx(src, newC);
                    break;
                case 4:
                    newC = track.CreateClip<FlyParticleControlPlayableAsset>();
                    CloneClipData_FlyParticleFx(src, newC);
                    break;
                default:
                    newC = track.CreateDefaultClip();
                    break;
            }

            if (newC == null)
            {
                Debug.LogError("No Clip Clone Logic!!! ---- " + type.ToString());
            } else
            {
                CloneClipData(src, newC);
            }

            return newC;
        }


        public static PlayableDirector BindingBattleCamera( GameObject gameObject, CinemachineBrain cinemachineBrain )
        {
            PlayableDirector pd = gameObject.transform.Find("Play").GetComponent<PlayableDirector>();
            if (pd.playableAsset == null)
            {
                Logger.LogError("TimeLine资源为空");
                return null;
            }
            foreach (var t in (pd.playableAsset as TimelineAsset).GetOutputTracks())
            {
                if (t.GetType() == typeof(CinemachineTrack))
                {
                    pd.SetGenericBinding(t, cinemachineBrain);
                    break;
                }

            }
            pd.Play();
            return pd;
        }

        public static void BindingCameraBrain(GameObject pdGo, GameObject cam )
        {
            if (pdGo == null || cam == null) return;
            var pd = pdGo.GetComponentInChildren<PlayableDirector>();
            if (pd == null || pd.playableAsset == null) return;
            var camBrain = cam.GetComponent<CinemachineBrain>();
            if (camBrain == null) return;
            var tl = pd.playableAsset as TimelineAsset;
            foreach (var track in tl.GetOutputTracks())
            {
                if( track is CinemachineTrack)
                {
                    pd.SetGenericBinding(track, camBrain);
                }
            }
        }



        public static void BindingGacCamera(PlayableDirector director, CinemachineBrain cinemachineBrain)
        {
            if (director.playableAsset == null)
            {
                Logger.LogError("TimeLine资源为空");
                return;
            }
            foreach (var t in (director.playableAsset as TimelineAsset).GetOutputTracks())
            {
                if (t.GetType() == typeof(CinemachineTrack))
                {
                    director.SetGenericBinding(t, cinemachineBrain);
                    break;
                }
            }
          
        }
        /// <summary>
        /// 在调用数据绑定之前,先完成轨道的绑定.
        /// 特效挂点的查找需要依赖轨道指定的角色
        /// </summary>
        /// <param name="pd"></param>
        //public static void ApplyBindingData( PlayableDirector pd )
        //{
        //    if (pd == null || pd.playableAsset == null || !(pd.playableAsset is TimelineAsset)) return;

        //    //get binding object
        //    List<TrackAsset> attTrack = null;
        //    List<TrackAsset> tarTrack = null;
        //    List<TrackAsset> camTrack = null;
        //    PlayableTrack dataTrack = null;
        //    FindTracks(pd, out attTrack, out tarTrack, out camTrack, out dataTrack);

        //    FxAnchorInfo dataAsset = null;
        //    if (dataTrack != null)
        //    {
        //        foreach (var c in dataTrack.GetClips())
        //        {
        //            if (c == null || c.asset == null) continue;
        //            if (c.asset is FxAnchorInfo)
        //            {
        //                dataAsset = c.asset as FxAnchorInfo;
        //                break;
        //            }
        //        }
        //    }

        //    Transform attTrans = null;
        //    RoleFxController attAnchors = null;
        //    Transform tarTrans = null;
        //    RoleFxController tarAnchors = null;

        //    Animator tmpAnim = null;
        //    if (attTrack != null && attTrack.Count > 0)
        //    {
        //        tmpAnim = pd.GetGenericBinding(attTrack[0]) as Animator;
        //        if (tmpAnim != null)
        //        {
        //            attTrans = tmpAnim.transform;
        //            attAnchors = attTrans.GetComponent<RoleFxController>();
        //        }
        //    }
        //    if (tarTrack != null && tarTrack.Count > 0)
        //    {
        //        tmpAnim = pd.GetGenericBinding(tarTrack[0]) as Animator;
        //        if (tmpAnim != null)
        //        {
        //            tarTrans = tmpAnim.transform;
        //            tarAnchors = tarTrans.GetComponent<RoleFxController>();
        //        }
        //    }

        //    SetFxBindingsData(pd, attTrans, attAnchors, tarTrans, tarAnchors, dataAsset);
        //}


    }

}

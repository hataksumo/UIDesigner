using Cinemachine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Timeline;
using RenderHeads.Media.AVProVideo;
using XLua;

namespace StorySystem
{
    //[XLua.Hotfix]
    //[XLua.LuaCallCSharp]
    public class StoryDataUtilities
    {
        private static void CreateStageNodes(
            StoryData root
            , Dictionary<string, GameObject> stageNodes
            , Dictionary<int, GameObject> battlePosNode
            , ref Dictionary<int, GameObject> goDict )
        {
            if (root == null || root.stageDatas == null || root.stageDatas.Length < 1) return;


            HashSet<GameObject> settedNodes = new HashSet<GameObject>();
            foreach (var data in root.stageDatas)
            {
                if (goDict.ContainsKey(data.id))
                {
#if UNITY_EDITOR
                    Debug.LogError("[Story Data Error] -- Same Role ID!!! ");
#endif
                    continue;
                }

                GameObject nodeGo = null;
                if (data.battlePosId > 0 && battlePosNode != null && battlePosNode.ContainsKey(data.battlePosId))
                {
                    nodeGo = battlePosNode[data.battlePosId];

                } else if (data.battlePosId < 0 && stageNodes != null && !string.IsNullOrEmpty(data.path) && stageNodes.ContainsKey(data.path))
                {
                    nodeGo = stageNodes[data.path];
                }

                if (nodeGo == null)
                {
#if UNITY_EDITOR
                    Debug.LogError("[Story Data Error] -- Can not find Stage Node :" + data.path + "|||" + data.battlePosId);
#endif
                    continue;
                }

                Transform nestRoot = null;
                if (data.nestId < 0)
                {
                    nestRoot = root.stageRoot.transform.Find(data.nestPath);
                } else if (goDict.ContainsKey(data.nestId))
                {
                    var nestRootParent = goDict[data.nestId];
                    nestRoot = nestRootParent.transform.Find(data.nestPath);
                }
                if (nestRoot == null)
                {
#if UNITY_EDITOR
                    Debug.LogError("[Story Data Error] -- Can not find Stage Node Nest Root!");
#endif
                    continue;
                }

                if (settedNodes.Contains(nodeGo))
                {
                    var existOne = nodeGo;
                    nodeGo = GameObject.Instantiate(existOne);
                    nodeGo.name = existOne.name;
                    if (root.additionalNodes == null)
                    {
                        root.additionalNodes = new List<GameObject>();
                    }
                    root.additionalNodes.Add(nodeGo);
                } else
                {
                    settedNodes.Add(nodeGo);
                }
                if (data.nestId >= 0 || data.battlePosId < 0)
                {
                    nodeGo.transform.SetParent(nestRoot);
                    nodeGo.transform.localPosition = data.initPos;
                    nodeGo.transform.localEulerAngles = data.initRotate;
                    nodeGo.transform.localScale = data.initScale;
                }

                if (!nodeGo.activeSelf)
                {
                    nodeGo.SetActive(true);
                }
                if (goDict.ContainsKey(data.id))
                {
#if UNITY_EDITOR
                    Debug.LogError("[Story Data Error] -- Repeat GUID in StoryData");
#endif
                } else
                {
                    goDict.Add(data.id, nodeGo);
                }
            }
        }

        private static void CreateUINodes( StoryData root, Dictionary<string, GameObject> uiNodes, ref Dictionary<int, GameObject> goDict )
        {
            if (root == null || uiNodes == null || uiNodes.Count < 1 || root.uiPrefabs == null || root.uiPrefabs.Length < 0) return;

            foreach (var data in root.uiPrefabs)
            {
                if (goDict.ContainsKey(data.id))
                {
#if UNITY_EDITOR
                    Debug.LogError("[Story Data Error] -- Same UI Node ID!!! ");
#endif
                    continue;
                }
                if (!uiNodes.ContainsKey(data.path))
                {
#if UNITY_EDITOR
                    Debug.LogError("[Story Data Error] -- Can not Find UI Node: " + data.path);
#endif
                    continue;
                }
                var uiGo = uiNodes[data.path];
                var uiTrans = uiGo.transform as RectTransform;
                uiTrans.SetParent(data.parentNode);
                if (uiTrans != null)
                {
                    uiTrans.localPosition = data.pos;
                    uiTrans.localEulerAngles = data.rotate;
                    uiTrans.localScale = data.scale;
                    uiTrans.anchorMin = data.anchorMin;
                    uiTrans.anchorMax = data.anchorMax;
                    uiTrans.anchoredPosition = data.anchorPos;
                    uiTrans.sizeDelta = data.sizeDelta;
                    uiTrans.pivot = data.pivot;
                }
                //if (!uiGo.activeSelf)
                //{
                //    uiGo.SetActive(true);
                //}
                if (goDict.ContainsKey(data.id))
                {
#if UNITY_EDITOR
                    Debug.LogError("[Story Data Error] -- Repeat GUID in StoryData");
#endif
                } else
                {
                    goDict.Add(data.id, uiGo);
                }

            }
        }

        static void ConfigUICharacters( StoryData root, Dictionary<int, GameObject> uiDict, Dictionary<int, Sprite> spDict )
        {
            if (root == null || root.uiChars == null || root.uiChars.Length < 1
                || uiDict == null || uiDict.Count < 1              
                ) return;

            foreach (var c in root.uiChars)
            {
                GameObject dialogGo = null;
                if (uiDict.TryGetValue(c.dialogId, out dialogGo))
                {
                    if (dialogGo != null)
                        c.preset.SetSayDialog = dialogGo.GetComponent<Fungus.SayDialog>();
                }

                if (c.portraits != null && c.portraits.Length > 0)
                {
                    var list = c.preset.Portraits;
                    if (list == null)
                    {
                        list = new List<Sprite>();
                    }
                    foreach (var p in c.portraits)
                    {
                        if ( spDict != null && spDict.ContainsKey(p.id))
                        {
                            list.Add(spDict[p.id]);
                        }
                    }
                    c.preset.Portraits = list;
                }

                GameObject portraitGo = null;
                if( uiDict.TryGetValue(c.portraitId, out portraitGo))
                {
                    if (portraitGo != null)
                    {
                        c.preset.displayPortrait = portraitGo.GetComponent<Fungus.DialogPortrait>();
                        portraitGo.SetActive(false);
                    }
                }

            }
        }

        private static Camera mainCam;
        private static Camera uiCam;

        private static Camera FindMainCam()
        {
            if (mainCam != null) return mainCam;
            CinemachineBrain brain = null;
            if (CinemachineCore.Instance.BrainCount < 1)
            {
                mainCam = Camera.main;
                if (mainCam != null) brain = mainCam.gameObject.AddComponent<CinemachineBrain>();
            } else
            {
                brain = Cinemachine.CinemachineCore.Instance.GetActiveBrain(0);
            }
            if (brain == null)
            {
#if UNITY_EDITOR
                Debug.LogError("[Story Data Error] -- Can not Find MainCamera");
#endif
                return null;
            }
            mainCam = brain.OutputCamera;
            return mainCam;
        }

        //private static Camera FindUICam()
        //{
        //    if (uiCam != null) return uiCam;
        //    Camera gloabUICam = null;
        //    GameObject gloabUICamGo = GameObject.FindGameObjectWithTag(StoryData.UI_CAM_TAG);
        //    if( gloabUICamGo != null)
        //    {
        //        gloabUICam = gloabUICamGo.GetComponent<Camera>();
        //    }
           
        //    uiCam = new GameObject("[StoryUICam]").AddComponent<Camera>();
        //    if (gloabUICam != null)
        //    {
        //        uiCam.CopyFrom(gloabUICam);
        //    } else
        //    {
        //        uiCam.cullingMask = LayerMask.GetMask("UI");
        //        uiCam.clearFlags = CameraClearFlags.Depth;
        //    }
        //    uiCam.transform.position = Vector3.up * 1000f;
        //    uiCam.orthographic = true;
        //    uiCam.depth += 2;

        //    return uiCam;
        //}
        private static Camera UI2DCamera;
        public static Camera UI2dCamera
        {
            get
            {
                return UI2DCamera;
            }
            set
            {
                UI2DCamera = value;
            }
        }


        public static Canvas StoryMainCanvas;
        public static Canvas StoryExtendCanvas;
        public static Canvas StoryUIStageCanvas;

        private static void ConfigCanvas( GameObject root )
        {
            StoryMainCanvas = null;
            StoryExtendCanvas = null;
            StoryUIStageCanvas = null;

            var canvas = root.GetComponentsInChildren<Canvas>();
            foreach (var can in canvas)
            {
                if (!can.isRootCanvas) continue;
                if (can.name.Contains("Canvas"))
                {
                    if (can.name != "Canvas")
                    {
                        //视频
                        StoryExtendCanvas = can;
                        can.sortingOrder =3000;
                     
                    }
                    else
                    {
                        //立绘
                        StoryMainCanvas = can;
                        can.sortingOrder = 3900;
                    }
                }else
                {
                    //UIStage
                    StoryUIStageCanvas = can;
                    can.sortingOrder = 3900;
                }
                can.planeDistance = 700;
                can.worldCamera = FindUICam();
              
                can.renderMode = RenderMode.ScreenSpaceCamera;
                var scaler = can.GetComponent<UnityEngine.UI.CanvasScaler>();
                if (scaler != null)
                {
                    scaler.matchWidthOrHeight = (Screen.width * 1f / Screen.height > 1.5f) ? 0f : 1f;
                }
                if (FindUIRoot())
                {
                    can.transform.SetParent(FindUIRoot());
                }

            }
        }

        private static GameObject FindNode( Transform root, int id, string nestPath, Dictionary<int, GameObject> goDict )
        {
            if (id <= 0) return null;
            if (id < 1000)
            {
                GameObject spGo = null;
                if (id.Equals(StoryData.MAIN_CAM_ID))
                {

                    if (mainCam == null)
                    {
                        FindMainCam();
                    }
                    spGo = mainCam.gameObject;
                } else if (id.Equals(StoryData.UI_CAM_ID))
                {
                    if (uiCam == null)
                    {
                        FindUICam();
                    }
                    spGo = uiCam.gameObject;
                }
                if (spGo == null)
                {
#if UNITY_EDITOR
                    Debug.LogError("[Story Data Error] -- Can not Find Node:" + id);
#endif
                    return null;
                } else
                {
                    return spGo;
                }
            } else
            {
                if (goDict.ContainsKey(id))
                {
                    var go = goDict[id];
                    if (go != null && !string.IsNullOrEmpty(nestPath))
                    {
                        var trans = go.transform.Find(nestPath);
                        if (trans != null)
                        {
                            go = trans.gameObject;
                        } else
                        {
#if UNITY_EDITOR
                            Debug.LogError("[Story Data Error] -- Can not Find Node:" + id + "-" + nestPath);
#endif
                        }
                    }
                    return go;
                } else
                {
#if UNITY_EDITOR
                    Debug.LogError("[Story Data Error] -- Can not Find Node:" + id);
#endif
                    return null;
                }
            }
        }

        private static void ConfigVCams( StoryData root, Dictionary<int, GameObject> goDict )
        {
            if (root == null || root.vCams == null || root.vCams.Length < 1) return;

            foreach (var setting in root.vCams)
            {
                var tmpGo = FindNode(root.transform, setting.followID, setting.followNestPath, goDict);
                if (tmpGo != null)
                    setting.vCam.m_Follow = tmpGo.transform;
                tmpGo = FindNode(root.transform, setting.lookatID, setting.lookatNestPath, goDict);
                if (tmpGo != null)
                    setting.vCam.m_LookAt = tmpGo.transform;
            }

        }

        private static void ConfigTimeline( StoryData root, Dictionary<int, GameObject> goDict )
        {
            if (root == null || root.timlineData == null || root.timlineData.Length < 1) return;
            foreach (var data in root.timlineData)
            {
                if (data.pdTrans == null || data.tlAsset == null)
                {
#if UNITY_EDITOR
                    Debug.LogError("[Story Data Error] -- PlayableDirector is Missing!");
#endif
                    continue;
                }
                var pd = data.pdTrans.gameObject.AddComponent<PlayableDirector>();
                var tlAsset = Object.Instantiate(data.tlAsset);
                pd.playableAsset = tlAsset;
                pd.playOnAwake = false;
                pd.timeUpdateMode = DirectorUpdateMode.Manual;
                pd.gameObject.AddComponent<PlayableDirectorManualCtrl>();
                if (data.bindingData != null)
                {
                    foreach (var d in data.bindingData)
                    {
                        GameObject tmpGo = null;
                        if (d.go != null)
                        {
                            tmpGo = d.go;
                        } else
                        {
                            tmpGo = FindNode(root.transform, d.nodeId, d.nestPath, goDict);
                        }
                        if (tmpGo == null) continue;

                        var track = tlAsset.GetOutputTrack(d.index);

                        if (d.typeStr == "GameObject")
                        {
                            pd.SetGenericBinding(track, tmpGo);
                        } else
                        {
                            Object comp = tmpGo.GetComponent(d.typeStr);
                            if (comp != null)
                            {
                                if (track is UnityEngine.Timeline.AnimationTrack)
                                {
                                    var anim = comp as Animator;
                                    if (anim != null && anim.runtimeAnimatorController != null)
                                    {
                                        var parentTrans = tmpGo.transform.parent;
                                        if (parentTrans == null || parentTrans.name != "roleAnchro")
                                        {
                                            anim.runtimeAnimatorController = null;
                                        }
                                    }
                                }

                                pd.SetGenericBinding(track, comp);
                            }
#if UNITY_EDITOR
                            else
                            {
                                Debug.LogError("[Story Data Error] -- SetGenericBinding faild :" + tmpGo.name + "type:" + d.typeStr);
                            }
#endif
                        }
                    }
                }

                if (data.exposeData != null)
                {
                    foreach (var d in data.exposeData)
                    {
                        if (d.obj == null)
                        {

                            GameObject tmpGo = FindNode(root.transform, d.nodeId, d.nestPath, goDict);
                            if (tmpGo == null) continue;

                            if (d.typeStr == "GameObject")
                            {
                                pd.SetReferenceValue(d.propId, tmpGo);
                            } else
                            {
                                Object comp = tmpGo.GetComponent(d.typeStr);
                                if (comp != null)
                                {
                                    pd.SetReferenceValue(d.propId, comp);
                                }
#if UNITY_EDITOR
                            else
                                {
                                    Debug.LogError("[Story Data Error] -- SetReferenceValue faild :" + tmpGo.name + "type:" + d.typeStr);
                                }
#endif
                            }
                        } else
                        {
                            if (d.typeStr == "GameObject")
                            {
                                pd.SetReferenceValue(d.propId, d.obj);
                            } else
                            {
                                Object comp = d.obj.GetComponent(d.typeStr);
                                if (comp != null)
                                {
                                    pd.SetReferenceValue(d.propId, comp);
                                }
#if UNITY_EDITOR
                            else
                                {
                                    Debug.LogError("[Story Data Error] -- SetReferenceValue faild :" + d.obj.name + "type:" + d.typeStr);
                                }
#endif
                            }
                        }
                    }
                }

                //binding camera
                if (mainCam != null)
                {
                    var camBrain = mainCam.GetComponent<Cinemachine.CinemachineBrain>();
                    for (int i = 0 ; i < tlAsset.outputTrackCount ; i++)
                    {
                        var track = tlAsset.GetOutputTrack(i) as Cinemachine.Timeline.CinemachineTrack;
                        if (track != null)
                        {
                            pd.SetGenericBinding(track, camBrain);
                        }
                    }
                }

                //create wwise track
                if (data.audioInfo != null && data.audioInfo.Length > 0)
                {
                    var commitTargetTrack = tlAsset.CreateTrack<PlayableTrack>(null, "WwiseCtrl");
                    PlayableTrack subCommitTargetTrack = null;
                    double lastEnd = 0f;
                    foreach (var info in data.audioInfo)
                    {
                        TimelineClip clip = null;

                        if (info.startTime < lastEnd)
                        {
                            if (subCommitTargetTrack == null)
                            {
                                subCommitTargetTrack = tlAsset.CreateTrack<PlayableTrack>(null, "WwiseCtrl1");
                            }
                            clip = subCommitTargetTrack.CreateClip<WwiseEvent>();
                        } else
                        {
                            clip = commitTargetTrack.CreateClip<WwiseEvent>();
                        }
                        var asset = clip.asset as WwiseEvent;
                        asset.audioName = info.audioName;
                        clip.start = info.startTime;
                        clip.duration = 0.1;
                        lastEnd = clip.start + clip.duration;

                    }
                }

            }
        }

        private static void ConfigFlowchar( StoryData root, Dictionary<int, GameObject> goDict )
        {
            if (root == null || root.flowCmdDatas == null || goDict == null) return;
            StorySystem.FungusData.FungusCmdDataFactory.SetCmdData(root.flowCmdDatas, ( int id, string path ) =>
            {
                return FindNode(root.transform, id, path, goDict);
            });
        }

        ///###########################################################################################
        ///public interface
        /// <summary>
        /// 
        /// </summary>
        /// <param name="rootGo"></param>
        /// <param name="nodes"></param>
        /// <param name="charSps"></param>

        public static void SetupStoryNode(
            GameObject rootGo,
            Dictionary<string, GameObject> nodes,
            Dictionary<int, Sprite> charSps
            , bool active
            )
        {
            if (rootGo == null) return;
            var root = rootGo.GetComponent<StoryData>();
            if (root == null) return;
            //set cameras
            //if (root.uiRoot != null)
            //    root.uiRoot.worldCamera = FindUICam();
          //  ConfigCanvas(rootGo);
            FindMainCam();
            if (mainCam == null)
            {
                Debug.LogError("Can not Find MainCamera");
            }

            var goDict = new Dictionary<int, GameObject>();
            CreateStageNodes(root, nodes, null, ref goDict);
            CreateUINodes(root, nodes, ref goDict);

            //set 2D data
            ConfigUICharacters(root, goDict, charSps);
            //set timelimData
            ConfigTimeline(root, goDict);
            ConfigVCams(root, goDict);
            //set flowchart 
            ConfigFlowchar(root, goDict);
            FindVideoInstance();

            root.gameObject.SetActive(active);
       
        }

        public static void SetupStoryNode( GameObject rootGo,
            Dictionary<string, GameObject> nodes,
            Dictionary<int, GameObject> battlePosNodes,
            Dictionary<int, Sprite> charSps
            , bool active
            )
        {
            if (rootGo == null) return;
            var root = rootGo.GetComponent<StoryData>();
            if (root == null) return;
            //set cameras
          //  ConfigCanvas(rootGo);
            FindMainCam();
            if (mainCam == null)
            {
                Debug.LogError("Can not Find MainCamera");
            }

            var goDict = new Dictionary<int, GameObject>();
            CreateStageNodes(root, nodes, battlePosNodes, ref goDict);
            CreateUINodes(root, nodes, ref goDict);

            //set 2D data
            ConfigUICharacters(root, goDict, charSps);
            //set timelimData
            ConfigTimeline(root, goDict);
            ConfigVCams(root, goDict);
            //set flowchart 
            ConfigFlowchar(root, goDict);
            FindVideoInstance();
            root.gameObject.SetActive(active);

        }

        public static string[] GetLoadedNodePathes( GameObject rootGo )
        {
            if (rootGo == null) return null;
            var data = rootGo.GetComponent<StoryData>();
            if (data == null) return null;
            List<string> paths = new List<string>();
            if (data.stageDatas != null && data.stageDatas.Length > 0)
            {
                foreach (var d in data.stageDatas)
                {
                    if (string.IsNullOrEmpty(d.path) || paths.Contains(d.path) || d.battlePosId >= 0) continue;
                    paths.Add(d.path);
                }
            }
            if (data.uiPrefabs != null && data.uiPrefabs.Length > 0)
            {
                foreach (var d in data.uiPrefabs)
                {
                    if (string.IsNullOrEmpty(d.path) || paths.Contains(d.path)) continue;
                    paths.Add(d.path);
                }
            }
            return paths.ToArray();
        }

        //public static BattlePosInfoForLua[] GetLoadedNodeBattlePosInfo(GameObject rootGo )
        //{
        //    if (rootGo == null) return null;
        //    var data = rootGo.GetComponent<StoryData>();
        //    if (data == null) return null;
        //    List<BattlePosInfoForLua> paths = new List<BattlePosInfoForLua>();
        //    if (data.stageDatas != null && data.stageDatas.Length > 0)
        //    {
        //        foreach (var d in data.stageDatas)
        //        {
        //            if (string.IsNullOrEmpty(d.path) || d.battlePosId < 0) continue;
        //            paths.Add( new BattlePosInfoForLua() {
        //                path = d.path,
        //                posId = d.battlePosId
        //            });
        //        }
        //    }
        //    return paths.ToArray();
        //}

        public static PortraitInfo[] GetCharacterPortraitInfos( GameObject rootGo )
        {
            if (rootGo == null) return null;
            var data = rootGo.GetComponent<StoryData>();

            if (data == null || data.uiChars == null || data.uiChars.Length < 1) return null;
            var infos = new List<PortraitInfo>();
            HashSet<int> idSet = new HashSet<int>();
            foreach (var d in data.uiChars)
            {
                if (d.portraits == null || d.portraits.Length < 1) continue;
                foreach (var info in d.portraits)
                {
                    if (idSet.Contains(info.id))
                    {
                        continue;
                    }
                    idSet.Add(info.id);
                    infos.Add(new PortraitInfo()
                    {
                        id = info.id,
                        path = info.path,
                        spName = info.spName
                    });
                }
            }

            return infos.ToArray();
        }

        public static string StoryUserName;
        //[XLua.CSharpCallLua]
        //public delegate void FinAction( string param );
        public static void PlayStoryNode( GameObject rootGo, System.Action<string> onFin ,string name=null, System.Action<string> ReceiveScene =null)
        {
            ConfigCanvas(rootGo);
            if (rootGo == null) return;
            if (!rootGo.activeSelf)
            {
                rootGo.SetActive(true);
               
            }
            if (StoryExtendCanvas)
            {
                var thisCanvas = StoryExtendCanvas;

                if (thisCanvas.transform.Find("video_StoryRoot(Clone)"))
                {
                    GameObject video_StoryRoot = thisCanvas.transform.Find("video_StoryRoot(Clone)").gameObject;
                    //if (video_StoryRoot.activeSelf == false)
                    //    video_StoryRoot.SetActive(true);
                    VideoManager.GetInstance().SetupTarget(video_StoryRoot);
                }

            }


            var root = rootGo.GetComponent<StoryData>();
            if (root == null)
            {
                if (onFin != null)
                {
                    onFin("");
                }
                return;
            }

            root.onStoryEnd += onFin;
            root.flowchart.StopAllBlocks();
            root.flowchart.Reset(true, true);
            if (root.flowchart.gameObject.activeInHierarchy)
                root.flowchart.gameObject.SetActive(false);
            root.flowchart.gameObject.SetActive(true);


            if (name!=null)
            {
                StoryUserName = name;
            }
           

            func+= ReceiveScene;
        }

        public static void StopStoryNode( GameObject rootGo )
        {
            if (rootGo == null) return;
            var root = rootGo.GetComponent<StoryData>();
            if (root == null) return;
            if (root.flowchart == null)
            {
                root.flowchart = rootGo.GetComponentInChildren<Fungus.Flowchart>();
            }
            root.flowchart.StopAllBlocks();
            var canvas = root.GetComponentsInChildren<Canvas>();
            foreach (var can in canvas)
            {
                if (!can.isRootCanvas) continue;
                if (!can.name.Equals("Canvas")) continue;
                can.gameObject.SetActive(false);
            }
            var video = rootGo.GetComponentInChildren<DisplayUGUI>();
            if (video != null)
            {
                VideoManager.GetInstance().Pause();
            }
            LJAudio.AudioManager.StopAllSound();
        }

        static void FinishStory( StoryData root )
        {
            root.OnFlowEnd("");

        }

        public static void KillStoryNode( GameObject rootGo )
        {
            if (rootGo == null) return;
            var root = rootGo.GetComponent<StoryData>();
            if (root == null) return;
            if (root.flowchart == null)
            {
                root.flowchart = rootGo.GetComponentInChildren<Fungus.Flowchart>(true);
            }
            root.flowchart.StopAllBlocks();
            var video = rootGo.GetComponentInChildren<DisplayUGUI>(true);
            if (video != null)
            {
                VideoManager.GetInstance().Clean();
                Fungus.MediaPlay.IsFinishPlaying = false;
            }
            FinishStory(root);
            ResetStoryRoot(rootGo);
            root.flowchart.gameObject.SetActive(false);
            rootGo.SetActive(false);
          
        }

        static void ResetStoryRoot(GameObject rootGo)
        {
            if (StoryMainCanvas)
            {
                StoryMainCanvas.transform.SetParent(rootGo.transform);
            }
            if (StoryExtendCanvas)
            {
                StoryExtendCanvas.transform.SetParent(rootGo.transform);
            }
            if (StoryUIStageCanvas)
            {
            StoryUIStageCanvas.transform.SetParent(rootGo.transform);

            }
        }

        public static void FinishStoryNode( GameObject rootGo )
        {
            var root = rootGo.GetComponent<StoryData>();
            FinishStory(root);
        }

        public static void ClearStoryNode( GameObject rootGo )
        {
            if (rootGo == null) return;
            var root = rootGo.GetComponent<StoryData>();
            if (root == null) return;
            if (root.timlineData != null)
            {
                foreach (var data in root.timlineData)
                {

                    PlayableDirector pd = data.pdTrans.gameObject.GetComponent<PlayableDirector>();
                    if (pd != null)
                    {
                        //var tlAsset = data.tlAsset;
                        //tlAsset = null;
                        GameObject.Destroy(pd);

                    }
                }
            }

            if (root.additionalNodes != null && root.additionalNodes.Count > 0)
            {
                foreach (var node in root.additionalNodes)
                {

                    GameObject.Destroy(node.gameObject);
                }
                root.additionalNodes.Clear();
            }
        }

        public static void JumpToEnd( GameObject rootGo )
        {
            StopStoryNode(rootGo);

            var pdCtrl = rootGo.GetComponentInChildren<PlayableDirectorManualCtrl>();
            if (pdCtrl != null)
            {
                pdCtrl.Pause();
            }
            var pd = rootGo.GetComponentInChildren<PlayableDirector>();
            if (pd != null)
            {
                pd.time = pd.duration - 0.01f;
                pd.Evaluate();
            }

            var video = rootGo.GetComponentInChildren<DisplayUGUI>();
            if (video!=null)
            {
                VideoManager.GetInstance().Pause();
            }
        }

        private static GameObject VideoManagerInstance;
        public static GameObject FindVideoInstance()
        {
            if (VideoManagerInstance != null) return VideoManagerInstance;

            VideoManagerInstance = new GameObject("[VideoManagerInstance]");
            VideoManagerInstance.AddComponent<VideoManager>();


            return VideoManagerInstance;
        }
      
        public static event System.Action<string> func;
        
        public static void OpenMainScene(string name)
        {
              if (func != null)
                {
                func(name);
                func = null;
                }
            
        }
       
   
      
        public static void DMEvent(bool isStart,int num)
        {

            LuaEnv luaEnv = XLuaManager.Instance.GetLuaEnv();
            LuaTable luaTable = luaEnv.Global.Get<LuaTable>("StoryManager");
            if (luaTable != null)
            {
               LuaFunction fun = luaTable.Get<LuaFunction>("DMEvent");
                if (fun != null)
                {
                    fun.Call(isStart,num);
               
                }

            }
          

        }
      
        public static void ChangeBattleSceneAnim(Texture2D tex)
        {

            LuaEnv luaEnv = XLuaManager.Instance.GetLuaEnv();
            LuaTable luaTable = luaEnv.Global.Get<LuaTable>("StoryManager");
            if (luaTable != null)
            {
               LuaFunction fun = luaTable.Get<LuaFunction>("ChangeBattleSceneAnim");
                if (fun != null)
                {
                    fun.Call(tex);
               
                }

            }
          

        }
        public static Camera FindCurrentCamera()
        {
            Camera cam=Camera.main;

            var camGo = GameObject.FindGameObjectWithTag("GameMain");
            if (camGo != null)
            {
                cam = camGo.GetComponent<Camera>();
            }
          
            return cam;
        }
        
        public static Transform FindUIRoot()
        {
            return GameObject.Find("UIRoot").transform;


        }

        public  static Camera FindUICam()
        {
            Camera cam=Camera.main;
            var camGo = GameObject.FindGameObjectWithTag("GuiCamera");
            if (camGo != null)
            {
                cam = camGo.GetComponent<Camera>();
            }

            return cam;
        }
    }

}
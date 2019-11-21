using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Timeline;
using Cinemachine;
using Fungus;


namespace StorySystem
{
    [System.Serializable]
    public struct UIPrefabData
    {
        public int id;
        public string path;
        public Transform parentNode;
        public Vector3 pos;
        public Vector3 rotate;
        public Vector3 scale;
        public Vector2 anchorMin;
        public Vector2 anchorMax;
        public Vector2 anchorPos;
        public Vector2 sizeDelta;
        public Vector2 pivot;
    }

    public struct NodeKeyData
    {
        public int id;
        public string nestPath;
        public GameObject gameObject;
    }

    [System.Serializable]
    public struct PortraitInfo
    {
        public int id;
        public string path;
        public string spName;
    }

    [System.Serializable]
    public struct CharacterData
    {
        public Character preset;
        public PortraitInfo[] portraits;
        //UIPrefab ID
        public int dialogId;
        public int portraitId;
    }

    //public struct BattlePosInfoForLua
    //{
    //    public string path;
    //    public int posId;
    //}

    #region Timeline data
    [System.Serializable]
    public struct TimelineBindingData
    {
        public int index;
      
        //public string nodePath;
        public int nodeId;
        public string nestPath;
        public string typeStr;
        public GameObject go;
    }
    [System.Serializable]
    public struct TimelineExposedData
    {
        public string propId;
        //public string nodePath;
        public int nodeId;
        public string nestPath;
        public string typeStr;
        public GameObject obj;
    }

    [System.Serializable]
    public struct AudioInfo
    {
        public string audioName;
        public double startTime;
    }

    [System.Serializable]
    public struct PlayableDirectorData
    {        
        public Transform pdTrans;
        public TimelineAsset tlAsset;
        public TimelineBindingData[] bindingData;
        public TimelineExposedData[] exposeData;
        //audio
        public AudioInfo[] audioInfo;
    }
    #endregion
    [System.Serializable]
    public struct StageData
    {
        public int id;
        public string path;
        public int battlePosId;
        public int nestId;
        public string nestPath;
        public Vector3 initPos;
        public Vector3 initRotate;
        public Vector3 initScale;
    }
    [System.Serializable]
    public struct VCamSetting
    {
        public CinemachineVirtualCamera vCam;       
        public int followID;
        public string followNestPath;
        public int lookatID;
        public string lookatNestPath;

    }

    public enum FungusCmdType
    {
        Say = 0,
        PlayAnim = 2,
        Timeline = 3,
        Portrait = 4,
    }
    [System.Serializable]
    public struct FungusCmdData
    {
        public FungusCmdType type;
        public Command cmd;
        public string strParam;
        public int intParam;
        public GameObject go;
    }


    [System.Serializable]
    public class StoryData : MonoBehaviour
    {
        public const int MAIN_CAM_ID = 100;
        public const string MAIN_CAM_TAG = "MainCamera";
        public const int UI_CAM_ID = 101;
        public const string UI_CAM_TAG = "GuiCamera";

        //prefab info
        public UIPrefabData[] uiPrefabs;
        public StageData[] stageDatas;

        //2d
        //char datas
        public CharacterData[] uiChars;

        public FungusCmdData[] flowCmdDatas;

        //3d       
        public PlayableDirectorData[] timlineData;
        public VCamSetting[] vCams;
               

        [HideInInspector]
        public List<GameObject> additionalNodes;

        [Header("Nodes Cache")]
        public Flowchart flowchart;       
        //public Canvas uiRoot;
        public GameObject stageRoot;

        public event System.Action<string> onStoryEnd;

        private void OnEnable()
        {
            if( flowchart != null)
            {
                flowchart.gameObject.SetActive(false);
                flowchart.StopAllBlocks();
                flowchart.Reset(true, true);
            }           
        }       

        public void OnFlowEnd(string param )
        {
            if(onStoryEnd != null)
            {
                onStoryEnd(param);
                onStoryEnd = null;
            }
        }

    }

}
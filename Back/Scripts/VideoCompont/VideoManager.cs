using UnityEngine;
using RenderHeads.Media.AVProVideo;
using UnityEngine.UI;
#if UNITY_EDITOR
using UnityEditor;

[CustomEditor(typeof(VideoManager))]
public class VideoManagerInspector : Editor
{
    string fileName ="";

    public override void OnInspectorGUI()
    {
        base.OnInspectorGUI();


        GUILayout.Label("[Debug]");
        if(GUILayout.Button("test"))
        {
            (target as VideoManager).PlayVideo(fileName, false, null);
        }
        fileName = EditorGUILayout.TextField("TestFile",fileName);
    }
}

#endif

[RequireComponent(typeof(VideoPlayCompont),typeof(MediaPlayer))]
public class VideoManager : MonoBehaviour
{
    private static VideoManager instance;
    public static VideoManager GetInstance()
    {
        if (instance == null)
        {
            //instance = new VideoManager();
            GameObject go = new GameObject("[VideoManager]",
                typeof(VideoManager)
                //typeof(VideoPlayCompont),
               // typeof(MediaPlayer)
                );
            instance = go.GetComponent<VideoManager>();
            GameObject.DontDestroyOnLoad(go);

            
        }
        return instance;
    }
        
    private VideoPlayCompont _videoComp;//播放视频组件

    private void Awake()
    {
        if(instance != null && instance != this)
        {
            Object.DestroyImmediate(this);
            return;
        }
        instance = this;
        var mp = GetComponent<MediaPlayer>();
        if (mp != null)
        {
            mp.m_AutoOpen = false;
            mp.m_AutoStart = false;
        }
    }

    public VideoPlayCompont VideoComp
    {
        get
        {
            if(_videoComp == null)
            {
                _videoComp = GetComponent<VideoPlayCompont>();
            }
            return _videoComp;
        }
    }

    /// <summary>
    /// 播放视频
    /// </summary>
    /// <param name="_videoName"></param>
    public void PlayVideo( string _videoName, bool _isSkip, System.Action _endFunc )
    {
        //if (VideoComp == null)
        //{
        //    Initial();
        //}

        if (VideoComp != null)
        {
            if (!VideoComp.gameObject.activeInHierarchy)
            {
                VideoComp.gameObject.SetActive(true);
            }
            VideoComp.PlayVideo(_videoName, _isSkip, () =>
            {
                //VideoComp.gameObject.SetActive(false);
               // VideoComp.Clean();
                if (_endFunc != null)
                {
                    _endFunc();
                }
            });
        }
    }


    public void SetupTarget(GameObject go)
    {
        if (VideoComp != null && go != null)
        {
            VideoComp.MediaDisplay = go.GetComponentInChildren<DisplayUGUI>(true);
            VideoComp.MediaBackground = go.transform.Find("MediaGroud").GetComponent<Image>();
        }
    }
    public void SetupTarget(DisplayUGUI target,Image background )
    {
        if(VideoComp != null)
        {
            VideoComp.MediaDisplay = target;
            VideoComp.MediaBackground = background;
        }
    }

    public void PlayVideos( string[] _videoName, bool[] _isSkip, System.Action _endFunc )
    {
        if (VideoComp != null)
        {
            if (!VideoComp.gameObject.activeInHierarchy)
            {
                VideoComp.gameObject.SetActive(true);
            }
            VideoComp.PlayVideos(_videoName, _isSkip, () =>
            {
                VideoComp.gameObject.SetActive(false);
                VideoComp.Clean();
                if (_endFunc != null)
                {
                    _endFunc();
                }
            }
           );
        }
    }

    public void Skip()
    {
        if (VideoComp != null)
        {
            VideoComp.Skip();
            if (!VideoComp.gameObject.activeInHierarchy)
            {
                VideoComp.gameObject.SetActive(true);
            }
        }

    }
    /// <summary>
    /// 初始化
    /// </summary>
    //private void Initial()
    //{
    //    //GameObject uiGame = GameObject.FindGameObjectWithTag("UICamera");

    //    //if (uiGame != null)
    //    //{
    //    //    VideoComp = uiGame.GetComponentInChildren<VideoPlayCompont>(true);
    //    //}
    //    //VideoComp = VideoPlayCompont.GetInstance();
    //    VideoComp = GameObject.FindObjectOfType<VideoPlayCompont>();
    //}


    public void Pause()
    {
        if (VideoComp != null)
            VideoComp.Pause();
    }

    public void Contiue()
    {
        if (VideoComp != null)
            VideoComp.Contiue();
    }

    public void Clean()
    {
        if (VideoComp != null)
            VideoComp.Clean();
    }

    public void SetPlaybackRate( float rate )
    {
        if (VideoComp != null)
            VideoComp.SetPlaybackRate(rate);
    }

    public int GetCurrentState()
    {
        if (VideoComp != null)
            return VideoComp.GetCurrentState();
        else
            return 0;
    }


    public float GetCurrentTimeMs()
    {
        if (VideoComp != null)
            return VideoComp.GetCurrentTimeMs();
        else
            return 0f;

    }
    public float GetDurationMs()
    {
        if (VideoComp != null)
            return VideoComp.GetDurationMs();
        else
            return 0f;

    }

}

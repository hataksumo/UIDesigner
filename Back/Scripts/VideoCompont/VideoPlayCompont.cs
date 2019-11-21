using System.Collections;
using UnityEngine;
using RenderHeads.Media.AVProVideo;
using UnityEngine.UI;

public class VideoPlayCompont : MonoBehaviour
{

    //private static VideoPlayCompont instance;
    //public static VideoPlayCompont GetInstance()
    //{
    //    if (instance==null)
    //    {
    //        instance = new VideoPlayCompont();

    //    }
    //    return instance;
    //}
    [SerializeField]
    protected Image mediaBackground;
    public Image MediaBackground
    {
        set
        {
            mediaBackground = value;
        }
    }

    [SerializeField]
    protected DisplayUGUI mediaDisplay;
    public DisplayUGUI MediaDisplay
    {
        set
        {
            mediaDisplay = value;
        }
    }
    public Color BackgroundColor = Color.black;

    protected MediaPlayer Player;
    VideoControlButton ctrlBtn = null;
    Camera UICam;



    private System.Action _onFin;

    private RenderTexture _afterImageRt;
    enum PlayerState
    {
        None,
        Ready,
        Playing,
        Pause,
        Fin,
    }

    private PlayerState _state;

 
    private  int _curVideoState = -1000;
    public int CurVideoState
    {
        get
        {
            return _curVideoState;
        }
        set
        {
            _curVideoState = value;
        }
    }
    private string _curVideoName = "";
    private bool _curSkipable = false;


    public void OnVideoEvent( MediaPlayer mp, MediaPlayerEvent.EventType et, RenderHeads.Media.AVProVideo.ErrorCode errorCode )
    {
        switch (et)
        {
            case MediaPlayerEvent.EventType.ReadyToPlay:
                break;
            case MediaPlayerEvent.EventType.Started:
                break;
            case MediaPlayerEvent.EventType.FirstFrameReady:
                _curVideoState = 1;
                break;
            case MediaPlayerEvent.EventType.FinishedPlaying:
                _curVideoState = 101;
                break;
            case MediaPlayerEvent.EventType.Error:
                _curVideoState = -404;
                Debug.LogError(errorCode.ToString());
                break;
        }

      //  Debug.Log("Event: " + et.ToString());
    }

    public void HideVideoPanel( bool all = true )
    {
        if (mediaDisplay != null)
            mediaDisplay.color = Color.clear;
        if (all)
        {
           
            if (mediaBackground != null)
                mediaBackground.color = Color.clear;
        }
    }

    public void DisplayVideoPanel()
    {
        if (mediaDisplay != null)
            mediaDisplay.color = Color.white;
        if (mediaBackground != null)
            mediaBackground.color = BackgroundColor;
    }

    void InitCompont()
    {
        if (_state == PlayerState.None)
        {
            if (Player == null)
            {
                Player = GetComponentInChildren<MediaPlayer>();
            }

            Player.Events.AddListener(OnVideoEvent);
            if (mediaDisplay != null)
            {
                mediaDisplay.CurrentMediaPlayer = Player;

                if (UICam == null)
                {
                    var canvas = this.mediaDisplay.canvas;
                    if (canvas == null)
                    {
                        //canvas = this.MediaDisplay.GetComponentInParent<Canvas>();
                        Debug.LogError("Can not Find Canvas in MediaDisplay!!!");
                        return;
                    }
                    UICam = canvas.worldCamera;
                }
            }
            _state = PlayerState.Ready;
        }
        HideVideoPanel(false);
        if (ctrlBtn != null)
        {
            ctrlBtn.Reset();
        }
    }
 

 IEnumerator PlayVideoToken( bool hasNextVideo )
    {
        if (string.IsNullOrEmpty(_curVideoName)) yield break;
        _state = PlayerState.Playing;
        _curVideoState = 0;
        Player.m_VideoPath = _curVideoName;
        var openRes = Player.OpenVideoFromFile(MediaPlayer.FileLocation.RelativeToStreamingAssetsFolder, _curVideoName, true);
        while (_curVideoState != 1)  //等于1是FirstFrameReady
        {
            yield return null;
            if (_curVideoState == -404 || !openRes)  //报错或者打开资源res失败
            {
                _state = PlayerState.Fin;
                yield break;
            }
        }


        if (_afterImageRt != null)
        {
            RenderTexture.ReleaseTemporary(_afterImageRt);
            _afterImageRt = null;
        }

        DisplayVideoPanel();
        yield return null;

        while (_curVideoState != 101)  //没有finish
        {
            yield return null;
            float time = Player.Control.GetCurrentTimeMs();
            float duration = Player.Info.GetDurationMs();

            if (time / duration > 0.9999f)// 当前播放的进度时间等于总时长时跳出循环
            {
               // Logger.Log("time / duration" + time+" -"+ duration);
                break;
            }
            if (_curVideoState == -404)
            {
                _state = PlayerState.Fin;
                yield break;
            }
            if(_state == PlayerState.None)
            {
                yield break;
            }

            if (_state == PlayerState.Playing)
            {
                if (!Player.Control.IsPlaying() && Player.Control.CanPlay())
                {
                    //播放，直到finish
                    Player.Control.Play();
                    yield return new WaitForSeconds(0.2f);
                }
            }

        }
      
        if (_state == PlayerState.None)
        {
            yield break;
        }
        Player.Control.Stop();
        if (ctrlBtn != null)
        {
            ctrlBtn.Reset();
        }
        yield return null;
        if (hasNextVideo && UICam != null)
        {
            _afterImageRt = RenderTexture.GetTemporary(Screen.width, Screen.height, 0, RenderTextureFormat.ARGB32);            
            UICam.targetTexture = _afterImageRt;
            UICam.Render();
            UICam.targetTexture = null;
        }

        yield return null;
       // HideVideoPanel(false);
        _state = PlayerState.Fin;
    }

    IEnumerator PlayOneVideo( string videoName, bool skipable )
    {
        if (string.IsNullOrEmpty(videoName)) yield break;
        if (_state != PlayerState.Ready && _state != PlayerState.Fin) yield break;
       // Logger.Log("_state + _curVideoName  " + _state+ _curVideoName);
        yield return null;
        _curVideoName = videoName;
        _curSkipable = skipable;
        yield return PlayVideoToken(false);   //播完了

        if(_state == PlayerState.None)
        {
           // Logger.Log("state == PlayerState.None  1");
            yield break;
        }
        _state = PlayerState.Ready;
        if (_afterImageRt != null)
        {
            RenderTexture.ReleaseTemporary(_afterImageRt);
            _afterImageRt = null;
        }
        if (_onFin != null)
        {
            _onFin();
        }
    }

    IEnumerator PlayVideos( string[] videoNames, bool[] skipables )
    {
        if (videoNames == null || videoNames.Length < 1) yield break;
        if (_state != PlayerState.Ready && _state != PlayerState.Fin) yield break;

        yield return null;
        for (var index = 0 ; index < videoNames.Length ; index++)
        {
            if (string.IsNullOrEmpty(videoNames[index])) continue;


            _curVideoName = videoNames[index];
            if (skipables != null && skipables.Length > index)
            {
                _curSkipable = skipables[index];
            } else
            {
                _curSkipable = true;
            }

            yield return PlayVideoToken(index < videoNames.Length - 1);

            if (ctrlBtn != null)
            {
                ctrlBtn.Reset();
            }
        }

        _state = PlayerState.Ready;
        if (_afterImageRt != null)
        {
            RenderTexture.ReleaseTemporary(_afterImageRt);
            _afterImageRt = null;
        }
        if (_onFin != null)
        {
            _onFin();
        }
    }


    public void PlayVideo( string videoName, bool skipable, System.Action onFin )
    {
        if (this.mediaDisplay == null)
        {
            if (onFin != null)
            {
                onFin();
            }
            return;
        }

        _onFin = onFin;
        InitCompont();
        StartCoroutine(PlayOneVideo(videoName, skipable));
    }

    public void PlayVideos( string[] videoNames, bool[] skipable, System.Action onFin )
    {
        _onFin = onFin;
        InitCompont();
        StartCoroutine(PlayVideos(videoNames, skipable));
    }

    public void Pause()
    {
        if (_state == PlayerState.Playing && Player != null && Player.Control.IsPlaying())
        {
            Player.Control.Pause();
            _state = PlayerState.Pause;
        }
    }

    public void Contiue()
    {
        if (_state == PlayerState.Pause && Player != null && Player.Control.IsPaused())
        {
             Player.Control.Play();
            _state = PlayerState.Playing;
        }
    }
    public int GetCurrentState()
    {
        return _curVideoState;
    }

    public void Skip()
    {
        if (Player != null)
        {
            Player.Control.Stop();
        }
        _state = PlayerState.Ready;
        _curVideoState = 101;
    }
    public void SeekTo(float timeMs)
    {
        if (Player != null)
        {
            Player.Control.SeekFast(timeMs);
        }

    }
    //UI Logic

    public void OnClick()
    {
        if (!_curSkipable)
        {
            return;
        }

        if (ctrlBtn != null)
        {
            ctrlBtn.Active(Skip);
        }
    }

    public void Clean()
    {
        _state = PlayerState.None;
        if(Player != null)
        {
            Player.CloseVideo();
        }
        if (_afterImageRt != null)
        {
            RenderTexture.ReleaseTemporary(_afterImageRt);
            _afterImageRt = null;
        }
    }

    public float GetCurrentTimeMs()
    {
        if (Player != null)
        {
            return Player.Control.GetCurrentTimeMs();
        }
        return 0;
    }
    public float GetDurationMs()
    {
        if (Player != null)
        {
            return Player.Info.GetDurationMs();
        }
        return 0;
    }

    public void SetPlaybackRate( float rate )
    {
        if (Player != null)
        {
            Player.Control.SetPlaybackRate(rate);
        }
    }
    private void OnGUI()
    {
        if (_afterImageRt != null)
            GUI.DrawTexture(new Rect(0f, 0f, Screen.width, Screen.height), _afterImageRt, ScaleMode.StretchToFill, false);
    }
}
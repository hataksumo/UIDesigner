/// <summary>
/// create with wxl
/// 加载音频文件并播放
/// </summary>

using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using XLua;
namespace LJAudio
{

    [System.Serializable]
    public class BnkJson
    {
        public List<BnkMap> m;
    }
    [System.Serializable]
    public class BnkMap
    {
        public string n;
        public BnkData d;
    }
    [System.Serializable]
    public class BnkData
    {
        public uint id;//事件id
        public string bnk;//归属包名
    }
    [Hotfix]
    public class AudioManager : Singleton<AudioManager>
    {
        public delegate void LoadResourceDelegate(object obj);
        /// <summary>
        /// Timeline 调用专用
        /// </summary>
        /// <returns></returns>
        public static void TimeLinePlayVoice(string voicename)
        {
            AudioManager.instance.PlayVoice(AudioManager.instance.getDefaultSocundEffectName(), voicename, null);
        }
        public static void TimeLinePlayOhter(string voicename)
        {
            AudioManager.instance.PlayVoice(AudioManager.instance.getDefaultSoundOtherName(), voicename, null);
        }
        public static void PlayMusicInterface( string _audio_name, float _startTime = 0 )
        {            
            if(string.IsNullOrEmpty(_audio_name))
            {
                AudioManager.instance.StopMusic();
            } else
            {
                AudioManager.instance.PlayMusic(_audio_name, _startTime);
            }
        }
        public static void PauseMusicInterface(bool play)
        {            
            if(play)
            {
                AudioManager.instance.PauseAll();
            } else
            {
                AudioManager.instance.UnPauseAll();
            }
        }

        public static void StopAllSound()
        {
            AudioManager.instance.StopAllSoundEffect();
        }

        public static void StopSound(string SoundName)
        {
            AudioManager.instance.StopVoice(SoundName);
        }


        public static void StopSound(string SoundName,float fadetime)
        {
            AudioManager.instance.StopVoice(SoundName,fadetime);
        }

        public event LoadResourceDelegate commondEvent;

        /// <summary>
        /// 除Music之外的所有Wwise 全局对象列表
        /// </summary>
        private Dictionary<string, GameObject> wwiseGameObjectDic = new Dictionary<string, GameObject>();


        /// <summary>
        /// 所有音效资源的字典
        /// </summary>
        private Dictionary<string, BnkData> allBnkDic = new Dictionary<string, BnkData>();

        /// <summary>
        /// 保存播放的所有音效的的event
        /// </summary>
        private Dictionary<string, uint> allPlaying = new Dictionary<string, uint>();

        /// <summary>
        /// 加载得bnk资源包
        /// </summary>
        private List<string> loadedBnkResource = new List<string>();

        /// <summary>
        /// wwise播放音效对象：游戏音乐
        /// </summary>
        private GameObject wWiseGameMusic;
        /// <summary>
        /// 当前播放的背景音乐名称
        /// </summary>
        private string curPlayingMusic = "";

        public  string CurPlayingMusic
        {
            get {
                return curPlayingMusic;

            }
            set {
                curPlayingMusic = value;
            }
        }
        /// <summary>
        /// 当前播放的背景音乐ID
        /// </summary>
        private uint curPlayingMusicId = 0;

        /// <summary>
        /// wwise播放音效对象：游戏音效
        /// </summary>
        private string wWiseGameSoundEffect = "WwiseGameSoundEffect";
        public string getDefaultSocundEffectName() { return wWiseGameSoundEffect; }

        /// <summary>
        /// wwise播放音效对象：其他
        /// </summary>
        private string wWiseGameSoundOther = "WwiseGameSoundOther";
        public string getDefaultSoundOtherName() { return wWiseGameSoundOther; }

        /// <summary>
        /// 当前播放的剧情音效 id
        /// </summary>
        private uint unCurGameSoundEffecId;

        /// <summary>
        /// 是否关闭音乐
        /// </summary>
        private bool isPlayingMusic = true;
        public bool IsMusic
        {
            get { return isPlayingMusic; }
            set { isPlayingMusic = value; SaveUserSoundSetting(1); }
        }
        /// <summary>
        /// 音樂音量大小
        /// </summary>
        private float musicvolume = 1.0f;
        public float MusicVolume
        {
            get { return musicvolume; }
            set { musicvolume = value; SaveUserVolumeSetting(1); }
        }
        /// <summary>
        /// 是否关闭音效
        /// </summary>
        private bool isPlayingSoundEffect = true;
        public bool IsSoundEffect
        {
            get { return isPlayingSoundEffect; }
            set { isPlayingSoundEffect = value; SaveUserSoundSetting(2); }
        }
        /// <summary>
        /// 音樂音量大小
        /// </summary>
        private float soundeffectvolume = 1.0f;
        public float SoundEffectVolume
        {
            get { return soundeffectvolume; }
            set { soundeffectvolume = value; SaveUserVolumeSetting(2); }
        }
        /// <summary>
        /// 是否关闭語音
        /// </summary>
        private bool isPlayingSoundOther = true;
        public bool IsSoundOther
        {
            get { return isPlayingSoundOther; }
            set { isPlayingSoundOther = value; SaveUserSoundSetting(3); }
        }
        /// <summary>
        /// 音樂音量大小
        /// </summary>
        private float soundothervolume = 1.0f;
        public float SoundOtherVolume
        {
            get { return soundothervolume; }
            set { soundothervolume = value; SaveUserVolumeSetting(3); }
        }

        /// <summary>
        /// 是否暂停
        /// </summary>
        private bool isPause;
        public bool IsPause
        {
            get { return isPause; }
            set { isPause = value; }
        }


        public void LoadUserSoundSetting()
        {
            if(PlayerPrefs.HasKey("isPlayingMusic"))
            {
                 isPlayingMusic = PlayerPrefs.GetInt("isPlayingMusic").Equals(1);
            }
            if (PlayerPrefs.HasKey("isPlayingSoundEffect"))
            {
                isPlayingSoundEffect = PlayerPrefs.GetInt("isPlayingSoundEffect").Equals(1);
            }
            if (PlayerPrefs.HasKey("isPlayingSoundOther"))
            {
                isPlayingSoundOther = PlayerPrefs.GetInt("isPlayingSoundOther").Equals(1);
            }
        }
        public void SaveUserSoundSetting(int nType)
        {
            Logger.Log("SaveUserSoundSetting type:" + nType);
            switch (nType)
            {
                case 1:
                    PlayerPrefs.SetInt("isPlayingMusic", isPlayingMusic ? 1 : 0);
                    Logger.Log(" SaveUserSoundSetting:" + nType + " value:" + isPlayingMusic);
                    break;
                case 2:
                    PlayerPrefs.SetInt("isPlayingSoundEffect", isPlayingSoundEffect ? 1 : 0);
                    Logger.Log(" SaveUserSoundSetting:" + nType + " value:" + isPlayingSoundEffect);
                    break;
                case 3:
                    PlayerPrefs.SetInt("isPlayingSoundOther", isPlayingSoundOther ? 1 : 0);
                    Logger.Log(" SaveUserSoundSetting:" + nType + " value:" + isPlayingSoundOther);
                    break;
            }

        }
        public void LoadUserVolumeSetting()
        {

            if (PlayerPrefs.HasKey("musicvolume"))
            {
                musicvolume = PlayerPrefs.GetFloat("musicvolume");
            }
            if (PlayerPrefs.HasKey("soundeffectvolume"))
            {
                soundeffectvolume = PlayerPrefs.GetFloat("soundeffectvolume");
            }
            if (PlayerPrefs.HasKey("soundothervolume"))
            {
                soundothervolume = PlayerPrefs.GetFloat("soundothervolume");
            }
         }
        public void SaveUserVolumeSetting(int nType)
        {
           
            switch (nType)
            {
                case 1:
                    PlayerPrefs.SetFloat("musicvolume", musicvolume);
                    Logger.Log(" SaveUserVolumeSettingtype:" + nType + " value:" +musicvolume);
                    break;
                case 2:
                    PlayerPrefs.SetFloat("soundeffectvolume", soundeffectvolume);
                    Logger.Log(" SaveUserVolumeSettingtype:" + nType + " value:" + soundeffectvolume);
                    break;
                case 3:
                    PlayerPrefs.SetFloat("soundothervolume", soundothervolume);
                    Logger.Log(" SaveUserVolumeSettingtype:" + nType + " value:" + soundothervolume);
                    break;
            }

        } 
        public override void Dispose()
        {

        }

        /// <summary>
        /// 创建一个指定的全局游戏wwise对象
        /// </summary>
        public void CreateWwisGameobject(string name)
        {
            GameObject wwiseGameObjct = GameObject.Find(name);
            if (wwiseGameObjct != null)
                return;
            wwiseGameObjct = new GameObject(name);
            wwiseGameObjct.AddComponent<DontDestroyOnLoad>();
            AkSoundEngine.RegisterGameObj(wwiseGameObjct);
            wwiseGameObjectDic.Add(name, wwiseGameObjct);
        }

        /// <summary>
        /// 初始化加载wwise对象和数据
        /// </summary>
        public void InitWwise()
        {
            LoadUserSoundSetting();
            LoadUserVolumeSetting();
            wwiseGameObjectDic.Clear();
            //首先创建背景音乐播放对象,默认创建一个游戏音乐对象和一个游戏音效对象
            wWiseGameMusic = new GameObject("WwiseGameMusic");
            wWiseGameMusic.AddComponent<AkInitializer>();
            wWiseGameMusic.AddComponent<AkAudioListener>();
            AkGameObj _obj = wWiseGameMusic.GetComponent<AkGameObj>();
            if (_obj != null)
            {
                _obj.isEnvironmentAware = false;
            }

            //创建第一个音效对象
            CreateWwisGameobject(this.wWiseGameSoundEffect);
            //创建第一个音效对象
            CreateWwisGameobject(this.wWiseGameSoundOther);

            //获取加载文件路径，默认为StreamingAssets\audio\SoundbanksInfo.txt 如果无法找到查找默认资源加载路劲下的SoundbanksInfo.txt
            //string path = AkSoundEngineController.GetDecodedBankFullPath() + "/SoundbanksInfo.txt";
            string path = Application.persistentDataPath + "/AssetBundle/DecodedBanks/SoundbanksInfo.txt";
            Logger.Log("配置文件位置   " + path);
            string soundStr = string.Empty;
            if (File.Exists(path))
            {
                Logger.Log("文件存在  加载音效配置");
                soundStr = File.ReadAllText(path);
            }
            else
            {
                TextAsset textAsset = Resources.Load<TextAsset>("SoundbanksInfo");
                if (textAsset == null)
                {
                    Logger.Log("内置音效文件无");
                    return;
                }
                soundStr = textAsset.text;
            }
            //读取名称和资源关系
            BnkJson bJson = JsonUtility.FromJson<BnkJson>(soundStr);
            if (bJson != null)
            {
                List<BnkMap> m = bJson.m;
                if (m != null)
                {
                    foreach (BnkMap bMap in m)
                    {
                        if (!allBnkDic.ContainsKey(bMap.n))
                        {
                            allBnkDic.Add(bMap.n, bMap.d);
                        }
                    }
                }
            }
        }

        public void PlayMusic(string _audio_name, float _startTime = 0, float _delay = 0f, bool forceFade = true,
            bool ignoreMute = false, bool forcePlay = false)
        {
            //检查名称
            if (string.IsNullOrEmpty(_audio_name))
            {
                return;
            }
            //检测和正在播放的名称相同或者是禁止播放音乐是返回
            if (curPlayingMusic == _audio_name || !isPlayingMusic)
            {
                return;
            }
            //停止之前播放的音乐
            if (!string.IsNullOrEmpty(curPlayingMusic))
            {
                this.StopMusic();
            }
            //重新播放当前的音乐
            uint playmusicid = this.PlayVoice(_audio_name, wWiseGameMusic, null);
            if (playmusicid > 0)
            {
                curPlayingMusic = _audio_name;
                curPlayingMusicId = playmusicid;
            }
        }
        public void StopMusic(float _fateOut = 0.8f)
        {
            StopByID(curPlayingMusicId, _fateOut);
            curPlayingMusic = "";
            curPlayingMusicId = 0;
        }

        /// <summary>
        /// 停止所有音效
        /// </summary>
        public void StopAllSoundEffect()
        {
            foreach (KeyValuePair<string, GameObject> wwise in wwiseGameObjectDic)
            {
                AkSoundEngine.StopAll(wwise.Value);
            }
            allPlaying.Clear();
        }
        /// <summary>
        /// 停止所有音效
        /// </summary>
        public void StopAllAudio()
        {
            StopMusic();
            StopAllSoundEffect();
        }
        public void PauseAll()
        {
            Logger.Log("PauseAll curPlayingMusic  " + curPlayingMusic);
            if (!this.isPause)
            {
                this.PlayVoice("Pause_All", wWiseGameMusic, null);
                foreach (KeyValuePair<string, GameObject> wwise in wwiseGameObjectDic)
                {
                    this.PlayVoice("Pause_All", wwise.Value, null);
                }
                this.isPause = true;
            }
        }

        public void UnPauseAll()
        {
            if (this.isPause)
            {
                foreach (KeyValuePair<string, GameObject> wwise in wwiseGameObjectDic)
                {
                    this.PlayVoice("Resume_All", wwise.Value, null);
                }
                this.PlayVoice("Resume_All", wWiseGameMusic, null);
                this.isPause = false;
                Logger.Log("UnPauseAll curPlayingMusic  " + curPlayingMusic);
            }
        }
        /// <summary>
        /// 设置声音语言，需要和audio目录下的语言文件夹名称相同
        /// </summary>
        /// 
        public void SetCurrentLanguage(string _LanguageName)
        {
            //先卸载所有的已加载音效
            UnloadBank();
            //设置语言，然后使用时重新加载
            Logger.Log("set language name :" + _LanguageName);
            var result = AkSoundEngine.SetCurrentLanguage(_LanguageName);
            Verify(result);
 

        }
        /// <summary>
        /// 
        /// </summary>
        /// 
        public bool SetRTPCValue(string _wwiseGameObject, uint _rtpcid, float value)
        {
            //检查名称
            //检测当前wwise对象是否存在
            if (!wwiseGameObjectDic.ContainsKey(_wwiseGameObject))
            {
                Logger.LogError("Wwise global GameObect is no exist:" + _wwiseGameObject);
                return false;
            }

            var result = AkSoundEngine.SetRTPCValue(_rtpcid, value, wwiseGameObjectDic[_wwiseGameObject]);
            Verify(result);
            return true;
        }
        protected void Verify(AKRESULT result)
        {
#if UNITY_EDITOR
            if (result != AKRESULT.AK_Success && AkSoundEngine.IsInitialized())

                UnityEngine.Debug.LogWarning("Unsuccessful call made on " + GetType().Name + ".");
#endif
        }
        /// <summary>
        /// 播放音效,如果需要回调传入参数
        /// </summary>
        /// 
        public uint PlayVoice(string _wwiseGameObject, string _voice_name, AkCallbackManager.EventCallback in_pfnCallback)
        {
            uint playeventid = 0;
            //检测当前wwise对象是否存在
            if (!wwiseGameObjectDic.ContainsKey(_wwiseGameObject))
            {
                Logger.LogError("Wwise global GameObect is no exist:" + _wwiseGameObject);
                return playeventid;
            }
            if (string.IsNullOrEmpty(_voice_name))
            {
                if (in_pfnCallback != null)
                {
                    in_pfnCallback(null, AkCallbackType.AK_EndOfEvent, null);
                }
                return playeventid;
            }

            if (!this.IsSoundEffect && _wwiseGameObject == this.wWiseGameSoundEffect ||
                !this.IsSoundOther && _wwiseGameObject == this.wWiseGameSoundOther)
            {
                if (in_pfnCallback != null)
                {
                    in_pfnCallback(null, AkCallbackType.AK_EndOfEvent, null);
                }
                return playeventid;
            }
            playeventid = this.PlayVoice(_voice_name, this.wwiseGameObjectDic[_wwiseGameObject], in_pfnCallback);
            return playeventid;
        }

        public void SetVoiceVolume(float volume,int type)
        {
            // AkSoundEngine.SetOutputVolume
            if(type == 1)
            {
                AkSoundEngine.SetGameObjectOutputBusVolume(this.wWiseGameMusic, this.wWiseGameMusic, volume);
                MusicVolume = volume;
            }
            else if (type == 2)
            {
                AkSoundEngine.SetGameObjectOutputBusVolume(this.wwiseGameObjectDic[this.wWiseGameSoundEffect], this.wWiseGameMusic, volume);
                SoundEffectVolume = volume;
            }
            else if (type == 3)
            {
                AkSoundEngine.SetGameObjectOutputBusVolume(this.wwiseGameObjectDic[this.wWiseGameSoundOther], this.wWiseGameMusic, volume);
                SoundOtherVolume = volume;
            }


        }
        public float GetVoiceVolume(int type)
        {
            // AkSoundEngine.SetOutputVolume
            switch(type)
            {
                case 1:
                    return MusicVolume;
                    break;
                case 2:
                    return SoundEffectVolume;
                    break;
                case 3:
                    return SoundOtherVolume;
                    break;
            }
            return 0;
        }
        public void SetAudioMute(int type,bool isplay)
        {
            Logger.Log("type:" + type + " isplay: " + isplay);
            switch (type)
            {
                case 1:
                    if(!isplay)
                        this.PlayVoice("Pause_Music", this.wWiseGameMusic, null);
                    else
                        this.PlayVoice("Resume_Music", this.wWiseGameMusic, null);
                    IsMusic = isplay;
                    break;
                case 2:
                    if (!isplay)
                        this.PlayVoice("Pause_SFX", this.wwiseGameObjectDic[this.wWiseGameSoundEffect], null);
                    else
                        this.PlayVoice("Resume_SFX", this.wwiseGameObjectDic[this.wWiseGameSoundEffect], null);
                    IsSoundEffect = isplay;
                    break;
                case 3:
                    if (!isplay)
                        this.PlayVoice("Pause_Voc", this.wwiseGameObjectDic[this.wWiseGameSoundOther], null);
                    else
                        this.PlayVoice("Resume_Voc", this.wwiseGameObjectDic[this.wWiseGameSoundOther], null);
                    IsSoundOther = isplay;
                    break;
            }

        }
        public bool GetAudioMute(int type)
        {
            Debug.Log("GetAudioMute");
            switch (type)
            {
                case 1:
                     return IsMusic;
                    break;
                case 2:
                    return IsSoundEffect;
                    break;
                case 3:
                    return IsSoundOther;
                    break;
            }
            return false;

        }
        /// <summary>
        /// 检测是否有音效
        /// </summary>
        /// <returns></returns>
        public bool CheckHaveVoice(string _voice_name)
        {
            return allBnkDic.ContainsKey(_voice_name);
        }
        /// <summary>
        /// 播放声音
        /// </summary>
        /// <param name="_voice_name"></param>
        /// <param name="_obj"></param>
        private uint PlayVoice(string _voice_name, GameObject _obj, AkCallbackManager.EventCallback in_pfnCallback)
        {
            uint playeventid = 0;
            //判断是否有事件
            if (allBnkDic.ContainsKey(_voice_name))
            {
                //判断是否加载资源包
                if (!loadedBnkResource.Contains(allBnkDic[_voice_name].bnk))
                {
                    AkBankManager.LoadBank(allBnkDic[_voice_name].bnk, false, false);
                    loadedBnkResource.Add(allBnkDic[_voice_name].bnk);
                }
                if (in_pfnCallback != null)
                {
                    playeventid = AkSoundEngine.PostEvent(allBnkDic[_voice_name].id, _obj, (uint)AkCallbackType.AK_EndOfEvent, in_pfnCallback, null);
                }
                else
                {
                    playeventid = AkSoundEngine.PostEvent(allBnkDic[_voice_name].id, _obj);
                }

            }
            else
            {
                if (in_pfnCallback != null)
                {
                    in_pfnCallback(null, AkCallbackType.AK_EndOfEvent, null);
                }
                Logger.Log("声音【" + _voice_name + "】BNK文件不存在!");
                return playeventid;
            }
            if (playeventid > 0)
            {
                if (allPlaying.ContainsKey(_voice_name))
                {
                    allPlaying[_voice_name] = playeventid;
                }
                else
                {
                    allPlaying.Add(_voice_name, playeventid);
                }
            }
            else
            {
                Logger.Log("声音【" + _voice_name + "】播放错误!!!!!!!!!!!");
            }

            return playeventid;
        }

        public void StopByID(uint in_playingID, float _fadeTime = 0.8f)
        {
            AkSoundEngine.StopPlayingID(in_playingID, (int)(_fadeTime * 1000));
        }


        public void StopVoice(string _name = null, float _fadeTime = 0.8f)
        {
            if (!string.IsNullOrEmpty(_name))
            {
                if (allPlaying.ContainsKey(_name))
                {
                    this.StopByID(allPlaying[_name], _fadeTime);
                }
            }

        }




        //public string GetWalkVoiceBySceneName(string _sceneName, bool _isRun = false){
        //    string ret = string.Empty;
        //    if (_sceneName == "scene_fight_js" || _sceneName == "MainCityScene"){
        //        ret = _isRun ? "s_run_wood" : "s_walk_wood";
        //    }
        //    else if (_sceneName == "scene_fight_slzd"){
        //        ret = _isRun ? "s_run_grass" : "s_walk_grass";
        //    }
        //    else if (_sceneName == "scene_fight_gcyj"){
        //        ret = _isRun ? "s_run_stone" : "s_walk_stone";
        //    }
        //    else{
        //        ret = _isRun ? "s_run_land" : "s_walk_land";
        //    }
        //    return ret;
        //}

        public class LoopVoiceData
        {
            public AudioSource audioSource;
            public string voiceName;
            public int useNum;
        }
        /// <summary>
        /// 切换场景时卸载当前加载的wwise资源
        /// </summary>
        public void UnloadBank()
        {
            if (loadedBnkResource == null || loadedBnkResource.Count < 1) return;
            for (var i = loadedBnkResource.Count - 1; i >= 0; i--)
            {
                var lb = loadedBnkResource[i];
                AkBankManager.UnloadBank(lb);
                loadedBnkResource.RemoveAt(i);
            }
            loadedBnkResource.Clear();
        }

    }
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Timeline;
using UnityEngine.Playables;

public class PlayableDirectorDataCache : MonoBehaviour
{

    [System.Serializable]
    public class BindingInfo
    {
        public int index;
        public Object obj;
    }

    [System.Serializable]
    public class ExposInfo
    {
        public string id;
        public Object obj;
    }

    public TimelineAsset tl;
    public bool playOnAwake;
    public DirectorWrapMode wrapMode;
    public double initTime;
    public BindingInfo[] bindingInfos;
    public ExposInfo[] exposInfos;

    private void Awake()
    {
        if (tl == null) return;
        SetupPlayableDirector();
    }

    public void SetupPlayableDirector()
    {
        PlayableDirector pd = GetComponent<PlayableDirector>();
        if (pd == null)
        {
            pd = gameObject.AddComponent<PlayableDirector>();
        }
        pd.playableAsset = tl;
        pd.playOnAwake = playOnAwake;
        pd.extrapolationMode = wrapMode;
        pd.initialTime = initTime;

        if (bindingInfos != null && bindingInfos.Length > 0)
        {
            int trackCount = tl.outputTrackCount;
            foreach (var item in bindingInfos)
            {
                if (item.index < 0 || item.index >= trackCount || item.obj == null) continue;
                var track = tl.GetOutputTrack(item.index);
                if (track != null)
                {
                    pd.SetGenericBinding(track, item.obj);
                }
            }
        }

        if (exposInfos != null && exposInfos.Length > 0)
        {
            foreach (var item in exposInfos)
            {
                if (!string.IsNullOrEmpty(item.id) && item.obj != null)
                    pd.SetReferenceValue(item.id, item.obj);
            }
        }

    }
        
}

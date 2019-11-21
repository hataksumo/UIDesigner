using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Fungus
{    
    [System.Serializable]
    public struct PortraitAnimClip
    {
        public int layer;
        public int[] keys;
        //frames per sceond
        public float fps;
    }
    [System.Serializable]
    public struct AnimClipRuntimeInfo
    {
        public int cursor;
        public float frameTimeStmp;
    }

    [ExecuteAlways]
    public class DialogPortraitAnim : MonoBehaviour
    {
        [SerializeField]
        protected PortraitAnimClip[] clips = null;
        [SerializeField]
        protected AnimClipRuntimeInfo[] runtimeInfo = null;
        protected DialogPortrait dp;

        // Start is called before the first frame update
        void OnEnable()
        {
            dp = GetComponent<DialogPortrait>();
            if( dp == null || dp.charLayers == null)
            {
                enabled = false;
                return;
            }
            int layerCount = dp.charLayers.Length;
            if (layerCount < 1) {
                enabled = false;
                return;
            }
            if( clips == null || clips.Length != layerCount)
            {
                clips = new PortraitAnimClip[layerCount];
            } 
            if( clips != null && clips.Length > 0)
            {
                runtimeInfo = new AnimClipRuntimeInfo[clips.Length];
            }
        }

        // Update is called once per frame
        void Update()
        {
            if (clips == null || clips.Length < 1 || dp == null) return;

            float time = Time.time;
            for (int i = 0 ; i < clips.Length ; i++)
            {
                if(clips[i].fps < 0.1f|| clips[i].keys == null || clips[i].keys.Length < 1)
                {
                    continue;
                }
                float framDuration = 1f / clips[i].fps ;
                if ( time -  runtimeInfo[i].frameTimeStmp > framDuration )
                {
                    var cursor = runtimeInfo[i].cursor +1;
                    if( cursor >= clips[i].keys.Length)
                    {
                        cursor = 0;
                    }
                    runtimeInfo[i].cursor = cursor;
                    runtimeInfo[i].frameTimeStmp = time;
                    dp.SetSprite(i, clips[i].keys[cursor]);
                }
            }

        }


        public void PlayAnim(int layer, int[] frame , float fps)
        {
            if (layer < 0 || layer > clips.Length) return;
            clips[layer].keys = frame;
            clips[layer].fps = fps;
        }


        public void PlayAnim( PortraitAnimClip clip )
        {            
            PlayAnim(clip.layer, clip.keys, clip.fps);
        }

        public void PlayAnims( PortraitAnimClip[] clips )
        {
            if (clips == null || clips.Length < 1) return;
            foreach (var c in clips)
            {
                PlayAnim(c);
            }            
        }

    }

}
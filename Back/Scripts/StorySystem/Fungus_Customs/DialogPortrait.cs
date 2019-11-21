using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
namespace Fungus
{
#if UNITY_EDITOR
    using UnityEditor;
    [CustomEditor(typeof(DialogPortrait))]
    public class DialogPortraitInspector : Editor
    {
        public override void OnInspectorGUI()
        {
            base.OnInspectorGUI();
            if (GUILayout.Button("Auto Setting"))
            {
                AutoSetting();
            }
        }

        void AutoSetting()
        {
            var p = target as DialogPortrait;
            if (p == null) return;

            var layers = new List<Image>(p.GetComponentsInChildren<Image>());
            if (layers.Count < 1) return;
            layers.Sort(( l, r ) => l.transform.GetSiblingIndex().CompareTo(r.transform.GetSiblingIndex()));
            p.charLayers = new ProtraitSetting[layers.Count];
            for (int i = 0 ; i < layers.Count ; i++)
            {
                p.charLayers[i] = new ProtraitSetting()
                {
                    img = layers[i],
                    sps = null
                };
            }

        }
    }
#endif

    [System.Serializable]
    public struct ProtraitSetting
    {
        public Image img;
        public List<Sprite> sps;

        public void SetSprite( int index )
        {
            if (img == null) return;
            if (sps != null && index >= 0 && index < sps.Count)
            {
                img.sprite = sps[index];
            }
            UpdateImageState();
        }

        public void UpdateImageState()
        {
            if (img == null) return;
            img.enabled = img.sprite != null;
        }

    }

    public class DialogPortrait : MonoBehaviour
    {
        protected static List<DialogPortrait> activePortraits = new List<DialogPortrait>();
        protected static DialogPortrait __activePortrait = null;
        public static DialogPortrait ActivePortrait
        {
            get
            {
                return __activePortrait;
            }

            set
            {
                foreach (var p in activePortraits)
                {
                    if (p == value)
                    {
                        __activePortrait = value;
                        p.gameObject.SetActive(true);
                    } else
                    {
                        p.gameObject.SetActive(false);
                    }
                }
            }

        }

        public ProtraitSetting[] charLayers;

        protected float __curAlpha = 0f;
        protected CanvasGroup canvasGroup = null;

        private void Awake()
        {
            if (!activePortraits.Contains(this))
            {
                activePortraits.Add(this);
            }
            UpdateLayers();
            gameObject.SetActive(false);
            CurAlpha = 0f;
        }

        private void OnDestroy()
        {
            if (activePortraits.Contains(this))
            {
                activePortraits.Remove(this);
            }
        }

        public void SetSprite( int index, int spIndex )
        {
            if (charLayers == null || charLayers.Length < 1)
            {
                return;
            }
            if (index < 0 || index > charLayers.Length)
            {
                return;
            }
            charLayers[index].SetSprite(spIndex);
        }

        public void SetSprites( int[] sps )
        {
            if (charLayers == null || charLayers.Length < 1
                || sps == null || sps.Length < 1
                )
            {
                return;
            }

            int spMax = sps.Length;

            for (int i = 0 ; i < charLayers.Length ; i++)
            {

                if (i >= spMax)
                {
                    charLayers[i].SetSprite(-1);
                } else
                {
                    charLayers[i].SetSprite(sps[i]);
                }

            }

            UpdateLayers();

        }

        void UpdateLayers()
        {
            if (charLayers == null || charLayers.Length < 1)
            {
                return;
            }

            for (int i = 0 ; i < charLayers.Length ; i++)
            {
                charLayers[i].UpdateImageState();
            }

        }

        public float CurAlpha
        {
            get
            {
                return __curAlpha;
            }
            set
            {
                __curAlpha = value;
                CanvasGroup canvasGroup = GetCanvasGroup();
                canvasGroup.alpha = __curAlpha;

            }
        }

        protected virtual CanvasGroup GetCanvasGroup()
        {
            if (canvasGroup != null)
            {
                return canvasGroup;
            }

            canvasGroup = GetComponent<CanvasGroup>();
            if (canvasGroup == null)
            {
                canvasGroup = gameObject.AddComponent<CanvasGroup>();
            }

            return canvasGroup;
        }

        PortraitPresetData __presetData;
        public PortraitPresetData GetPresetData()
        {
            if (__presetData != null) return __presetData;
            __presetData = GetComponent<PortraitPresetData>();
            return __presetData;
        }

        DialogPortraitAnim __animtor;
        public DialogPortraitAnim GetAnim()
        {
            if (__animtor == null)
            {
                __animtor = GetComponent<DialogPortraitAnim>();
            }
            return __animtor;
        }
        public void PlayAnim(PortraitAnimClip[] anims )
        {
            if (anims == null || anims.Length < 1) return;
            if(__animtor == null)
            {
                __animtor = GetComponent<DialogPortraitAnim>();
            }
            if (__animtor == null) return;

            __animtor.PlayAnims(anims);
        }

    }

}
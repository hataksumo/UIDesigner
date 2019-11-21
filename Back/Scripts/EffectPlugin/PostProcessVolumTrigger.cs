using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace UnityEngine.Rendering.PostProcessing
{
    public class PostProcessVolumTrigger : MonoBehaviour
    {
        public float fadeTime;
        public float charLightTargetIntensity = 0.8f;
        bool fading = false;
        float startTime = 0;
        PostProcessVolume volume;
        Light charLight;
        float charLightIntensity = 0f;
        private void FindCharactorLight()
        {
            var lights = Light.GetLights(LightType.Directional, LayerMask.NameToLayer("Charactor"));
            for (int i = 0 ; i < lights.Length ; i++)
            {
                if(charLight == null && lights[i].gameObject.activeInHierarchy)
                {
                    charLight = lights[i];
                    charLightIntensity = charLight.intensity ;
                }
            }
        }

        private void OnEnable()
        {
            if( volume == null)
            {
                volume = GetComponent<PostProcessVolume>();
            }
            if( volume == null)
            {
                enabled = false;
                return;
            }
            volume.weight = 0;
            startTime = Time.time;
            fading = true;
            FindCharactorLight();
        }
        private void OnDisable()
        {
            if (volume == null) return;
            volume.weight = 0;
        }

        private void Update()
        {
            if (!fading || volume == null) return;

            float weight = 1f;
            if( fadeTime > 0f)
                weight =(Time.time - startTime) / fadeTime;
            if( weight >= 1f)
            {
                fading = false;
            }
            volume.weight = Mathf.Min(1f, weight);
            if( charLight != null)
            {
                charLight.intensity = Mathf.Lerp(charLightIntensity, charLightTargetIntensity, weight);
            }
        }
    }
}

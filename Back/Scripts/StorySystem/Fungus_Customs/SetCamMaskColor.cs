using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Fungus
{
    [CommandInfo("Camera",
                "CamMaskColor",
                "设置相机遮罩的颜色")]
    [AddComponentMenu("")]
    public class SetCamMaskColor : Command
    {
        public Color color;
        public int priority = 0;
        public float duration = 0f;
        
        public override void OnEnter()
        {
            if(duration > 0.05f)
            {
                StartCoroutine(SetMaskColor());
            } else
            {
                CamMaskUtilities.SetMaskColor(color, priority);
                Continue();
            }
        }

        IEnumerator SetMaskColor()
        {
            var initColor = CamMaskUtilities.GetMaskColor(priority);
            float timer = 0f;
            
            while(timer < duration)
            {
                timer += Time.deltaTime;

                CamMaskUtilities.SetMaskColor(Color.Lerp(initColor, color, timer / duration));
            }
            yield return null;
            CamMaskUtilities.SetMaskColor(color,priority);
            Continue();
        }

    }
}
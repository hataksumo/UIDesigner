using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace LJ_Shader_Utilities
{
    [ExecuteAlways]
    public class FaceAnimatorHelper : MonoBehaviour
    {
        public int LeftEye;
        public int RightEye;
        public int Mouth;

        int curLE;
        int curRE;
        int curM;

        float fade = 0f;

        FaceAnimPlayer player;

        private void OnEnable()
        {
            player = GetComponent<FaceAnimPlayer>();
            if (player == null)
            {
                enabled = false;
            } else
            {
                curLE = player.initLE;
                curRE = player.initRE;
                curM = player.initM;

                LeftEye = curLE;
                RightEye = curRE;
                Mouth = curM;

                fade = 0f;
            }

        }

        public void Update()
        {
            if (player == null)
            {
                enabled = false;
                return;
            }
            

            if (Application.isPlaying)
            {
                if (LeftEye == curLE
               && RightEye == curRE
               && Mouth == curM
               )
                {
                    return;
                }
                fade = Mathf.Clamp01(fade + Time.deltaTime * 10f);

                player.SetFace(fade, curLE, curRE, curM, LeftEye, RightEye, Mouth);
                if (fade >= 1f)
                {
                    curLE = LeftEye;
                    curRE = RightEye;
                    curM = Mouth;
                    fade = 0f;
                }
            } else
            {
                player.SetFace(LeftEye, RightEye, Mouth);
            }


        }

    }

}
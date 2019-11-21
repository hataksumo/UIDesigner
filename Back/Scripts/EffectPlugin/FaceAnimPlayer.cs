using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace LJ_Shader_Utilities
{
    [System.Serializable]
    public class FaceAnimConfig
    {
        public string name;
        public Texture2D faceTex;
        public int cellXNum = 2;
        public int cellYNum = 2;
    }

    [ExecuteInEditMode]
    public class FaceAnimPlayer : MonoBehaviour
    {
        //public FaceAnimConfig[] config;

        [SerializeField]
        protected RoleFaceConfigAsset configData;

        public int initLE = 0;
        public int initRE = 0;
        public int initM = 0;

        private int curLE = -1;
        private int curRE = -1;
        private int curM = -1;

        private int curLE1 = -1;
        private int curRE1 = -1;
        private int curM1 = -1;

        private float curBlend = 0f;

        Renderer mr = null;
        private MaterialPropertyBlock mpb = null;

        int ParamID_FaceBlend = -1;
        int ParamID_ETex = -1;
        int ParamID_EyeSize = -1;
        int ParamID_LEyeP = -1;
        int ParamID_REyeP = -1;
        int ParamID_MTex = -1;
        int ParamID_MSize = -1;
        int ParamID_MouthP = -1;
        int ParamID_Center = -1;

        private void OnEnable()
        {
            if (configData == null || configData.eyeTex == null || configData.mouthTex == null) {
                enabled = false;
                return;
            }


            if (mr == null)
                mr = GetComponent<Renderer>();
            if (mpb == null)
                mpb = new MaterialPropertyBlock();

            ParamID_FaceBlend = Shader.PropertyToID("_FaceBlend");
            ParamID_ETex = Shader.PropertyToID("_ETex");
            ParamID_EyeSize = Shader.PropertyToID("_EyeSize");
            ParamID_LEyeP = Shader.PropertyToID("_LEyeP");
            ParamID_REyeP = Shader.PropertyToID("_REyeP");
            ParamID_MTex = Shader.PropertyToID("_MTex");
            ParamID_MSize = Shader.PropertyToID("_MSize");
            ParamID_MouthP = Shader.PropertyToID("_MouthP");
            ParamID_Center = Shader.PropertyToID("_CenterPos");
            UpdateConfigData();
            SetFace(initLE, initRE, initM,true);
        }

        Vector4 CalcFaceOffset( int index, int xNum )
        {
            xNum = Mathf.Max(1, xNum);
            return new Vector4()
            {
                x = index % xNum,
                y = index / xNum,
                z = 0f,
                w = 0f
            };
        }

        Vector4 CalcFaceOffset( int index, int index1, int xNum )
        {
            xNum = Mathf.Max(1, xNum);
            return new Vector4()
            {
                x = index % xNum,
                y = index / xNum,
                z = index1 % xNum,
                w = index1 / xNum,
            };
        }

        public void UpdateConfigData()
        {
            if (mr == null)
                mr = GetComponent<Renderer>();
            if (mpb == null)
                mpb = new MaterialPropertyBlock();

            mr.GetPropertyBlock(mpb,0);
            {
                mpb.SetTexture(ParamID_ETex, configData.eyeTex);
                mpb.SetTexture(ParamID_MTex, configData.mouthTex);
                mpb.SetVector(ParamID_EyeSize, configData.eyeRect);
                mpb.SetVector(ParamID_MSize, configData.mouthRect);
                mpb.SetFloat(ParamID_Center, configData.center);
            }
            mr.SetPropertyBlock(mpb, 0);

        }

        public RoleFaceConfigAsset ConfigData
        {
            get { return this.configData; }
            set
            {
                this.configData = value;
                UpdateConfigData();
            }
        }

        public void SetFace( int le, int re, int m , bool force = false)
        {
            if ((!enabled
                ||this.mr == null || this.mpb == null
                || (le == curLE && re == curRE && m == curM && curBlend == 0f)
                ) && !force) return;

            curLE = Mathf.Clamp(le, 0, configData.eyeNum);
            curRE = Mathf.Clamp(re, 0, configData.eyeNum);
            curM = Mathf.Clamp(m, 0, configData.mouthNum);
            curLE1 = -1;
            curRE1 = -1;
            curM1 = -1;

            curBlend = 0f;
            mr.GetPropertyBlock(mpb,0);
            {
                //blend
                mpb.SetFloat(ParamID_FaceBlend, 0f);
                //left eye
                mpb.SetVector(ParamID_LEyeP, CalcFaceOffset(curLE, configData.eyeRowCount));
                //right eye
                mpb.SetVector(ParamID_REyeP, CalcFaceOffset(curRE, configData.eyeRowCount));
                //mouth
                mpb.SetVector(ParamID_MouthP, CalcFaceOffset(curM, configData.mouthRowCount));

            }
            mr.SetPropertyBlock(mpb, 0);

        }

        public void SetFace( float blend
            , int le, int re, int m
            , int le1, int re1, int m1
            )
        {
            if (!enabled
                || this.mr == null || this.mpb == null) return;

            mr.GetPropertyBlock(mpb,0);
            {
                //blend
                curBlend = blend;
                mpb.SetFloat(ParamID_FaceBlend, blend);

                //left eye
                if (le != curLE || le1 != curLE1)
                {
                    curLE = Mathf.Clamp(le, 0, configData.eyeNum);
                    curLE1 = Mathf.Clamp(le1, 0, configData.eyeNum);
                    mpb.SetVector(ParamID_LEyeP, CalcFaceOffset(curLE, curLE1, configData.eyeRowCount));
                }

                //right eye
                if (re != curRE || re1 != curRE1)
                {
                    curRE = Mathf.Clamp(re, 0, configData.eyeNum);
                    curRE1 = Mathf.Clamp(re1, 0, configData.eyeNum);
                    mpb.SetVector(ParamID_REyeP, CalcFaceOffset(curRE, curRE1, configData.eyeRowCount));
                }

                //mouth
                if (m != curM || m1 != curM1)
                {
                    curM = Mathf.Clamp(m, 0, configData.mouthNum);
                    curM1 = Mathf.Clamp(m1, 0, configData.mouthNum);
                    mpb.SetVector(ParamID_MouthP, CalcFaceOffset(curM,curM1, configData.mouthRowCount));
                }

            }
            mr.SetPropertyBlock(mpb, 0);
        }


        //public void SetFace( int configIndex, int faceIndex )
        //{
        //    //if (curConfigIndex == configIndex && curFaceIndex == faceIndex)
        //    //{
        //    //    return;
        //    //}
        //    //var config = GetConfig(configIndex);
        //    //if (config != null && config.faceTex != null)
        //    //{
        //    //    curConfigIndex = configIndex;
        //    //    curFaceIndex = faceIndex;
        //    //    mr.GetPropertyBlock(mpb);
        //    //    mpb.SetTexture(texParamId, config.faceTex);
        //    //    mpb.SetVector(offsetParamId, CalcFaceOffset(faceIndex, config.cellXNum, config.cellYNum));
        //    //    mpb.SetFloat(blendParamId, 0f);
        //    //    mr.SetPropertyBlock(mpb);
        //    //}
        //}

        //public void SetFace( int configIndex, int faceIndex, int configIndex_1, int faceIndex_1, float fade = 0f )
        //{
        //    //if (configIndex == configIndex_1 && faceIndex == faceIndex_1)
        //    //{
        //    //    SetFace(configIndex, faceIndex);
        //    //    return;
        //    //}
        //    //var config = GetConfig(configIndex);
        //    //var config1 = GetConfig(configIndex_1);

        //    //if (config == null || config1 == null) return;

        //    //mr.GetPropertyBlock(mpb);
        //    //mpb.SetTexture(texParamId, config.faceTex);
        //    //mpb.SetVector(offsetParamId, CalcFaceOffset(faceIndex, config.cellXNum, config.cellYNum));
        //    //mpb.SetTexture(tex1ParamId, config1.faceTex);
        //    //mpb.SetVector(offset1ParamId, CalcFaceOffset(faceIndex_1, config1.cellXNum, config1.cellYNum));
        //    //mpb.SetFloat(blendParamId, fade);
        //    //mr.SetPropertyBlock(mpb);
        //}

    }
}
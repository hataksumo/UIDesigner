using UnityEngine;
using System.Collections;

namespace FxHelper
{
    [ExecuteAlways]
    public class FxHelper_MatAnim : MonoBehaviour
    {

        public float life = 0f;

        [UnityEngine.Header("材质")]
        public Color _TintColor = new Color(0.5F, 0.5F, 0.5F, 0.5F);
        public AnimationCurve alphaCurve = new AnimationCurve(new Keyframe(0, 0), new Keyframe(1, 1));
        public Vector2 UVTile = new Vector2(1, 1);
        public Vector2 UVSpeed = new Vector2(0, 0);

        private Renderer myRender;
        private MaterialPropertyBlock pBlock;

        private int tineColorID = 0;
        private int mainTexScale = 0;
        private float timer = 0;
        private Vector4 texScale = Vector4.zero;
        void Start()
        {
            myRender = this.GetComponent<Renderer>();
            if (myRender != null)
            {
                tineColorID = Shader.PropertyToID("_TintColor");
                mainTexScale = Shader.PropertyToID("_MainTex_ST");

                pBlock = new MaterialPropertyBlock();
               

            } else
            {
                Destroy(this);
                return;
            }

            texScale.x = UVTile.x;
            texScale.y = UVTile.y;
            texScale.z = UVSpeed.x;
            texScale.w = UVSpeed.y;
        }

        public void SetTime( float time )
        {
            timer = time;
        }

        private void OnEnable()
        {
            timer = 0f;
        }

        void Update()
        {

            if (life >= 0f && timer > life)
            {
                gameObject.SetActive(false);
                return;
            }

            if (myRender != null)
            {
                Color tempColor = _TintColor;
                float curveVelue = alphaCurve.Evaluate(timer / Mathf.Abs(life));
                tempColor.a = _TintColor.a * curveVelue;

                myRender.GetPropertyBlock(pBlock);
                pBlock.SetColor(tineColorID, tempColor);

                texScale.x = UVTile.x;
                texScale.y = UVTile.y;
                texScale.z += Time.deltaTime * UVSpeed.x;
                texScale.w += Time.deltaTime * UVSpeed.y;

                pBlock.SetVector(mainTexScale, texScale);

                myRender.SetPropertyBlock(pBlock);

            }
            timer += Time.deltaTime;
        }

    }
}
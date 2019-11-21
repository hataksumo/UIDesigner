using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace ZHJ.Battle
{

    public class YingJiFxLogic : CommonFxLogic
    {


        public float radius =1.0f;

        public float angelSpeed = 10.0f;

        public Transform root;
       // public List<GameObject> childrens = new List<GameObject>();

        bool canRotate = false;


        private void placeChildren() {



            Vector3 orignalPosition = root.transform.localPosition;
            int childrenCount = root.childCount;
            if (childrenCount > 0)
            {
                float angelYInterval = 360 / childrenCount;
                for (int i = 0; i < childrenCount; i++)
                {
                    Transform transform = root.GetChild(i);
                    Quaternion rotate = Quaternion.Euler(0, i * angelYInterval, 0);
                    Vector3 position = rotate * new Vector3(0, 0, radius) + orignalPosition;
                    transform.localPosition = position;
                }
                canRotate = true;
            }
        }

        public override void OnInit()
        {
            base.OnInit();
            placeChildren();
        }

        public override void OnPlay()
        {
           
            base.OnPlay();
            canRotate = true;
        }

        public override void OnPause()
        {
            base.OnPause();
            canRotate = false;

        }


        public override void OnResume()
        {
            base.OnResume();
            canRotate = true;
        }

        public override void OnEnd()
        {

            base.OnEnd();
            canRotate = false;
           
        }

        public override void SetScale(float scale)
        {
            if (!isInit) return;
           
            for (int i = 0; i < sys.Length; i++)
            {
                ParticleSystem system = sys[i];
                ParticleSystemCacheData cacheData = sysCacheDatas[i];
                system.transform.localScale = cacheData.oldScale * scale;

            }

            for (int i = 0; i < trailRs.Length; i++)
            {
                TrailRenderer trail = trailRs[i];
                TrailRendererCacheData cacheData = trailCacheDatas[i];
                trail.startWidth = cacheData.startWidth * scale;
                trail.endWidth = cacheData.endWidth * scale;
            }
        }

        void Update()
        {
            if (canRotate) {
                root.Rotate(0, angelSpeed, 0);
            }
           
        }

    
    }
}
using UnityEngine;
using UnityEngine.UI;
using System;
namespace Nation
{
    /// <summary>
    /// 序列帧动画播放器
    /// 支持UGUI的Image和Unity2D的SpriteRenderer
    /// </summary>
    public class FrameAnimatorCtrl : MonoBehaviour
    {
        /// <summary>
        /// 动画数据
        /// </summary>
        public FrameAnimatorData[] frameAnimatorDatas;
        /// <summary>
        /// 是否忽略timeScale
        /// </summary>
        public bool IgnoreTimeScale { get { return ignoreTimeScale; } set { ignoreTimeScale = value; } }

        public int CurrentAnimIndex
        {
            get
            {
                return currentAnimIndex;
            }

            set
            {
                currentAnimIndex = value;
            }
        }

        [SerializeField] private bool ignoreTimeScale = true;


        private void Awake()
        {
            
        }
        

        /// <summary>
        /// 结束事件
        /// 在每次播放完一个周期时触发
        /// 在循环模式下触发此事件时，当前帧不一定为结束帧
        /// </summary>
        public event Action FinishEvent;

        //目标Image组件
        private Image image;
        //目标SpriteRenderer组件
        private SpriteRenderer spriteRenderer;

        //当前动画索引
        [SerializeField]
        private int currentAnimIndex = 0;

        //当前帧索引
        private int currentFrameIndex = 0;
        //下一次更新时间
        private float timer = 0.0f;
        ////当前帧率，通过曲线计算而来
        //private float currentFramerate = 20.0f;

        /// <summary>
        /// 重设动画
        /// </summary>
        public void Reset()
        {
            FrameAnimatorData frameAnimatorData = GetCurrentFrameAnimatorData();
            if(frameAnimatorData == null) {
                return;
            }

            currentFrameIndex = frameAnimatorData.Framerate < 0 ? frameAnimatorData.Frames.Length - 1 : 0;
        }

        //自动开启动画
        void Start()
        {
            image = this.GetComponent<Image>();
            spriteRenderer = this.GetComponent<SpriteRenderer>();
#if UNITY_EDITOR
            if (image == null && spriteRenderer == null)
            {
                Debug.LogWarning("No available component found. 'Image' or 'SpriteRenderer' required.", this.gameObject);
            }
#endif
        }


        /// <summary>
        /// 从停止的位置播放动画
        /// </summary>
        public void Play()
        {
            this.enabled = true;
        }

        /// <summary>
        /// 暂停动画
        /// </summary>
        public void Pause()
        {
            this.enabled = false;
        }

        /// <summary>
        /// 停止动画，将位置设为初始位置
        /// </summary>
        public void Stop()
        {
            Pause();
            Reset();
        }

    
        void Update()
        {
            //帧数据无效，禁用脚本
            FrameAnimatorData frameAnimatorData = GetCurrentFrameAnimatorData();
            if (frameAnimatorData == null) {
                this.enabled = false;
                return;
            }
           
            if (frameAnimatorData.Frames == null || frameAnimatorData.Frames.Length == 0)
            {
                this.enabled = false;
                return;

            }

            //从曲线值计算当前帧率
            Sprite[] frames = frameAnimatorData.Frames;

            float curveValue = frameAnimatorData.curve.Evaluate((float)currentFrameIndex / frames.Length);
            float curvedFramerate = curveValue * frameAnimatorData.Framerate;
            //帧率有效
            if (curvedFramerate != 0)
            {
                //获取当前时间
                float time = ignoreTimeScale ? Time.unscaledTime : Time.time;
                //计算帧间隔时间
                float interval = Mathf.Abs(1.0f / curvedFramerate);
                //满足更新条件，执行更新操作
                if (time - timer > interval)
                {
                    //执行更新操作
                    DoUpdate(curvedFramerate);
                }
            }
#if UNITY_EDITOR
            else
            {
                Debug.LogWarning("Framerate got '0' value, animation stopped.");
            }
#endif
            
        }
        private Sprite[] GetCurrentFrames (){
            FrameAnimatorData frameAnimatorData = GetCurrentFrameAnimatorData();
            if (frameAnimatorData == null) {
                return null;
            }
            return frameAnimatorData.Frames;
        }

        private FrameAnimatorData GetCurrentFrameAnimatorData()
        {
            if (CurrentAnimIndex < 0 || CurrentAnimIndex >= frameAnimatorDatas.Length)
            {
                return null;
            }
            return frameAnimatorDatas[CurrentAnimIndex];
        }

        //具体更新操作             
        private void DoUpdate(float curvedFramerate)
        {
            //计算新的索引
            int nextIndex = currentFrameIndex + (int)Mathf.Sign(curvedFramerate);
            FrameAnimatorData frameAnimatorData = GetCurrentFrameAnimatorData();
            Sprite[] frames = frameAnimatorData.Frames;
            //索引越界，表示已经到结束帧
            if (nextIndex < 0 || nextIndex >= frames.Length)
            {
                //广播事件
                if (FinishEvent != null)
                {
                    FinishEvent();
                }
                //非循环模式，禁用脚本
                if (frameAnimatorData.Loop == false)
                {
                    currentFrameIndex = Mathf.Clamp(currentFrameIndex, 0, frames.Length - 1);
                    this.enabled = false;
                    return;
                }
            }
            //钳制索引
            currentFrameIndex = nextIndex % frames.Length;
            //更新图片
            if (image != null)
            {
                image.sprite = frames[currentFrameIndex];
            }
            else if (spriteRenderer != null)
            {
                spriteRenderer.sprite = frames[currentFrameIndex];
            }
            //设置计时器为当前时间
            timer = ignoreTimeScale ? Time.unscaledTime : Time.time;
        }
    }
}
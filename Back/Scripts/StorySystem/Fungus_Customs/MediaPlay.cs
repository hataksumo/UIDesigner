using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Fungus
{

    [CommandInfo("MediaPlayer",
                "MediaPlay",
                "播放视频")]
    [AddComponentMenu("")]
    public class MediaPlay : Command
    {
        public static bool IsFinishPlaying = false;
        public string filename;

        [SerializeField]
        protected bool NeedChangeSceneAnim;
        public override void OnEnter()
        {
            // if ("高端机") 宽和高 > 1090x1080 或者主频大于2000
            if ((Screen.width > 1920 || Screen.height > 1080) || SystemInfo.processorFrequency > 2000)
            {

                //是高端机
            }
            else
            {
                filename = filename.Replace("StoryVideo", "StoryVideo_Low");
            }

            IsFinishPlaying = false;
            var videoMan = VideoManager.GetInstance();
            Logger.Log("屏幕宽高 -主频 -filename  " + Screen.width + " x " + Screen.height + " " + SystemInfo.processorFrequency + " " + filename);

            videoMan.PlayVideo(filename, false, () =>
            {

                if (NeedChangeSceneAnim)
                {
                    Texture2D Maintex = CaptureCamera(StorySystem.StoryDataUtilities.FindUICam().GetComponent<Camera>(), new Rect(0, 0, Screen.width, Screen.height));
                    StorySystem.StoryDataUtilities.ChangeBattleSceneAnim(Maintex);


                }
                IsFinishPlaying = true;

            });

            Continue();

        }
        Texture2D CaptureCamera(Camera camera, Rect rect)
        {
            // 创建一个RenderTexture对象
            RenderTexture rt = new RenderTexture((int)rect.width, (int)rect.height, 0);

            camera.targetTexture = rt;
            camera.Render();

            RenderTexture.active = rt;
            Texture2D screenShot = new Texture2D((int)rect.width, (int)rect.height, TextureFormat.RGB24, false);
            screenShot.ReadPixels(rect, 0, 0);
            screenShot.Apply();


            camera.targetTexture = null;
            RenderTexture.active = null;
            GameObject.Destroy(rt);

            byte[] bytes = screenShot.EncodeToPNG();
            string filename = Application.persistentDataPath + "/Screenshot.png";
            System.IO.File.WriteAllBytes(filename, bytes);

            return screenShot;
        }

    }



}
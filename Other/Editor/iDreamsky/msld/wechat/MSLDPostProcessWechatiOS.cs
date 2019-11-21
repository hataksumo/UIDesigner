using System;
using UnityEditor;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode.iDreamsky;
using UnityEngine;

#if UNITY_IOS
namespace iDreamsky.PostProcess
{
    public class MSLDPostProcessWechatiOS
    {
        [PostProcessBuild(1300)]
        public static void OnPostProcessBuild(BuildTarget buildTarget, string pathToBuiltProject)
        {
            var dataPath = Application.dataPath;
            var len = dataPath.Length - "Assets".Length;
            var unityProjectDir = dataPath.Remove(len);

            MSLDPostProcessConfig config = MSLDPostProcessCommoniOS.ReadMsConfig(unityProjectDir);

            if (config.wx_app_id == null || config.wx_app_id.Length <= 0)
            {

                Debug.LogError("[MSLDPostProcess][iOS][PostProcessControllerIOS]:wechat appkey is not available.");
                return;
            }

            //if (config.wx_app_secret == null || config.wx_app_secret.Length <= 0)
            //{

            //    Debug.LogError("[MSLDPostProcess][iOS][PostProcessControllerIOS]:wechat appSecret is not available.");
            //    return;
            //}

            string[] schemes = new string[]
            {
                "weixin",
                "wechat",
            };

            MSLDPostProcessCommoniOS.ChangeInfoPlist(pathToBuiltProject, (PlistDocument doc) =>
            {
                MSLDPostProcessCommoniOS.AddApplicationQueriesSchemes(doc, schemes);

                string wxURLType = config.wx_app_id.Trim();
                MSLDPostProcessCommoniOS.AddURLTypes(doc, "Editor", "weixin", wxURLType);

                return true;
            });


        }
    }
}

#endif
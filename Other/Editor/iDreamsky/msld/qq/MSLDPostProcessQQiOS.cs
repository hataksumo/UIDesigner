using System;
using UnityEditor;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode.iDreamsky;
using UnityEngine;

#if UNITY_IOS
namespace iDreamsky.PostProcess
{
    public class MSLDPostProcessQQiOS
    {


        [PostProcessBuild(1200)]
        public static void OnPostProcessBuild(BuildTarget buildTarget, string pathToBuiltProject) 
        {
            var dataPath = Application.dataPath;
            var len = dataPath.Length - "Assets".Length;
            var unityProjectDir = dataPath.Remove(len);

            MSLDPostProcessConfig config = MSLDPostProcessCommoniOS.ReadMsConfig(unityProjectDir);

            if (config.qq_app_id == null || config.qq_app_id.Length <= 0)
            {
                
                Debug.LogError("[MSLDPostProcess][iOS][PostProcessControllerIOS]:change controller success.");
                return;
            }

            string[] schemes = new string[]
                    {
                        "mqqapi",
                        "mqq",
                        "mqqOpensdkSSoLogin",
                        "mqqconnect",
                        "mqqopensdkdataline",
                        "mqqopensdkgrouptribeshare",
                        "mqqopensdkfriend",
                        "mqqopensdkapi",
                        "mqqopensdkapiV2",
                        "mqqopensdkapiV3",
                        "mqqopensdkapiV4",
                        "mqzoneopensdk",
                        "wtloginmqq",
                        "wtloginmqq2",
                        "mqqwpa",
                        "mqzone",
                        "mqzonev2",
                        "mqzoneshare",
                        "wtloginqzone",
                        "mqzonewx",
                        "mqzoneopensdkapiV2",
                        "mqzoneopensdkapi19",
                        "mqzoneopensdkapi",
                        "mqqbrowser",
                        "mttbrowser",
                        "tim",
                        "timapi",
                        "timopensdkfriend",
                        "timwpa",
                        "timgamebindinggroup",
                        "timapiwallet",
                        "timOpensdkSSoLogin",
                        "wtlogintim",
                        "timopensdkgrouptribeshare",
                        "timopensdkapiV4",
                        "timgamebindinggroup",
                        "timopensdkdataline",
                        "wtlogintimV1",
                        "timapiV1",
                    };

            MSLDPostProcessCommoniOS.ChangeInfoPlist(pathToBuiltProject, (PlistDocument doc) => {

                MSLDPostProcessCommoniOS.AddApplicationQueriesSchemes(doc, schemes);

                string qqURLType = "tencent" + config.qq_app_id.Trim();
                MSLDPostProcessCommoniOS.AddURLTypes(doc, "Editor", "tencent", qqURLType);

                return true;
            });
        }
    }

}

#endif
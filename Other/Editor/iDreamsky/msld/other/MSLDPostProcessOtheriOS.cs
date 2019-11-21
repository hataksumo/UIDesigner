using System;
using UnityEditor;
using UnityEditor.iOS.Xcode.iDreamsky;

#if UNITY_IOS

namespace iDreamsky.PostProcess
{
    public class MSLDPostProcessOtheriOS
    {
        //[PostProcessBuild(1900)]
        public static void OnPostProcessBuild(BuildTarget buildTarget, string pathToBuiltProject)
        {
            string[] schemes = new string[]
            {
                "ipg-gamdream",
                "sinaweibohd",
                "sinaweibo",
                "sinaweibosso",
                "weibosdk",
                "weibosdk2.5"
            };

            MSLDPostProcessCommoniOS.ChangePBProject(pathToBuiltProject, (PBXProject project, string target) =>
            {
                project.AddBuildProperty(target, "VERSIONING_SYSTEM", "apple-generic");
                project.AddBuildProperty(target, "CURRENT_PROJECT_VERSION", "1");

                project.SetBuildProperty(target, "CODE_SIGN_IDENTITY", "iPhone Developer");

                project.AddCapability(target, PBXCapabilityType.InAppPurchase);
                project.AddCapability(target, PBXCapabilityType.PushNotifications);

#if !ENABLE_BITCODE
                project.SetBuildProperty(target, "ENABLE_BITCODE", "NO");
#endif

                // 接入了QQ，微信等，检查配置
                //proj.SetBuildProperty(target, "ENABLE_BITCODE", "NO");
                //proj.SetBuildProperty(target, "GCC_ENABLE_OBJC_EXCEPTIONS", "YES");
                //proj.AddBuildProperty(target, "OTHER_LDFLAGS", "-ObjC -lxml2 -weak_framework Foundation -weak_framework UIKit");

                // 根据你的接入情况，添加相应的系统framework
                project.AddFrameworkToProject(target, "StoreKit.framework", false);
                project.AddFrameworkToProject(target, "SystemConfiguration.framework", false);
                project.AddFrameworkToProject(target, "CoreTelephony.framework", false);
                project.AddFrameworkToProject(target, "CoreLocation.framework", false);


                MSLDPostProcessCommoniOS.AddTbdToProject(project, target, "libsqlite3.tbd");
                MSLDPostProcessCommoniOS.AddTbdToProject(project, target, "libresolv.tbd");
                MSLDPostProcessCommoniOS.AddTbdToProject(project, target, "libz.1.1.3.tbd");
                MSLDPostProcessCommoniOS.AddTbdToProject(project, target, "libc++.1.tbd");
                MSLDPostProcessCommoniOS.AddTbdToProject(project, target, "libc++.tbd");
                MSLDPostProcessCommoniOS.AddTbdToProject(project, target, "libc++abi.tbd");


                return true;
            });


            MSLDPostProcessCommoniOS.ChangeInfoPlist(pathToBuiltProject, (PlistDocument doc) => {

                doc.root.SetString("NSCalendarsUsageDescription", "Somethings needs this. Probably ads.");
#if ENABLE_LOCATION
            doc.root.SetString("NSLocationWhenInUseUsageDescription", "Somethings needs this. Probably gift.");
#endif
                doc.root.CreateArray("UIBackgroundModes").AddString("remote-notification");

                doc.root.SetString("NSLocationAlwaysUsageDescription", "${PRODUCT_NAME}将根据您的位置为您推荐附近的好友");
                doc.root.SetString("NSLocationWhenInUseUsageDescription", "${PRODUCT_NAME}将根据您的位置为您推荐附近的好友");
                doc.root.SetString("NSPhotoLibraryAddUsageDescription", "如果不允许，${PRODUCT_NAME}将无法保存账号信息");
                doc.root.SetString("NSPhotoLibraryUsageDescription", "拒绝访问将无法使用图片下载分享等功能");
                doc.root.SetString("CFBundleDevelopmentRegion", "zh_CN");

                MSLDPostProcessCommoniOS.AddApplicationQueriesSchemes(doc, schemes);

                return true;
            });


            //proj.WriteToFile(projPath);

            //// 修改Info.plist文件
            //var plistPath = Path.Combine(pathToBuiltProject, "Info.plist");
            //var plist = new PlistDocument();
            //plist.ReadFromFile(plistPath);
            ////类似的都可以这样添加，这个比较简单
            ////选择语言（字符串）
            //plist.root.SetString("CFBundleDevelopmentRegion", "xxxx");
            ////设置LSApplicationQueriesSchemes（数组）
            //PlistElementArray loginChannelsArr;
            //loginChannelsArr = plist.root.CreateArray("LSApplicationQueriesSchemes");
            //loginChannelsArr.AddString("xxxx");
            ////配置金额（字典）
            //PlistElementDict plistMoneyDic;
            //plistMoneyDic = plist.root.CreateDict("Dict");
            //plistMoneyDic.SetString("key", "value");
        }
    }
}

#endif
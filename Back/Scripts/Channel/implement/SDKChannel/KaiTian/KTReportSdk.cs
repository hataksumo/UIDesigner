using System;
using System.Collections;
using System.Collections.Generic;
namespace GameSdk
{
    public class KTReportSdk 
    {
        private int appid = 129248;
        private string md5Key = "9a77dd5709a3a6e040604f84a2a3b39d";
        private string privateKey = "MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAK9If8cLXvjudd5Y EflA/cMut3OY4TmPEiXwAjzv7U+GhLmSyDt1ULdh8/u455hNAGLu7QN4jfaH8JyP EbIX1ZZrmSyQCayLnaFxWjr8eaia+kGUQ1I5SenPjdnae61knkFxCAxXB5eiYuL0 DEyI7b4awdXaWmPkndcMOUCk3oM/AgMBAAECgYBXM54+C+4nsZp6Dx6B/k9AtxEV NU13MTI6JXk3j7VkBuwo1lk/G1IYqWaUKJ0vK7+xeGP5ghQ+Pcr6WELZcvoSlFId GLnXW2EVNM2e6as82I162uRNwac7s3RG4l3xeF6ClkTK5TcwfVP1RoLQqhDhn2Vg PwDcsJDOaQHQ+WY9QQJBAN7dND818MyoHFfbDIYySOmEE8uvLCac0QPL/1OPZvbW /khwu2DcK1m6d1Ug7UsopWwrPqRyO6Lygrd1j2NrGocCQQDJWD20DPzwC4ghm+va W0ww5MyzcsH+iVA9a4c+7mFzxvzlAfdHPyIgnDbGRZyCghNvT4TdpNqjXYKsg6tD V2eJAkAtsZLtxuR5QZqWFM5rkVHLtw3L/D2EKTDdo2zVOBi3UXtPZPW2NU4aFpYy +Q5OE6ZfGDq+wsEhdrGAZfUhQCtvAkEAif+W2u8D9aqRtSde8Zwdjm1i96Mx3zlR 66blXXaZCHdcIcHFL+nPhDZNPHu9l517oJEJ6bfxuoJ+66qbGV6wsQJBAMHE5iqE LfOWhlzZQ4Yw9lXdcADZR93DkLBzGeCyaRJ9YPDJJE9A1mh1M3Hzi8BuZKRJoY9f bQPNZMTaiB/iwbo=";
         public  void Init()
        {
            //KTSDKInitArgs ktArgs;
            //ktArgs.appid = appid;
            //ktArgs.appkey = md5Key;
            //ktArgs.privateKey = privateKey;
            //Helper.Instance.InitLaunch(ktArgs);
            //Logger.Log("开天SDK初始化成功");
        }


        /// <summary>
        /// 开天数据上报接口
        /// </summary>
        /// <param name="paramList"></param>
        public  void Login()
        {
            //Helper.Instance.Login();
        }
        /// <summary>
        /// 开天数据上报接口
        /// </summary>
        /// <param name="paramList"></param>
        public  void ExitGame()
        {
            //Helper.Instance.ExitGame();
        }
        /// <summary>
        /// 开天数据上报接口
        /// </summary>
        /// <param name="paramList"></param>
        public  void SubmitExtraData(Dictionary<string, object> events)
        {
            //KTSDKSubmitExtraDataArgs kTSDKSubmitArgs;
            //string[] param = { "dataType", "serverID", "serverName", "zoneID", "zoneName", "roleID", "roleName", "roleLevel", "guildID", "Vip", "moneyNum", "roleCreateTime", "roleLevelUpTime" };
            //// public int dataType;
            ////public int serverID;
            ////public string serverName;
            ////public string zoneID;
            ////public string zoneName;
            ////public string roleID;
            ////public string roleName;
            ////public string roleLevel;
            ////public string guildID;
            ////public string Vip;
            ////public int moneyNum;
            ////public string roleCreateTime;
            ////public string roleLevelUpTime;
            //bool bflag = false;
            //for (int i = 0; i < param.Length; i++)
            //{
            //    if (!events.ContainsKey(param[i]))
            //    {
            //        Logger.Log(param[i] +" is no exist");
            //        bflag = false;
            //    }
            //}
            //if (!bflag)
            //    return;
            //kTSDKSubmitArgs.dataType = (int)events[param[0]];
            //kTSDKSubmitArgs.serverID = (int)events[param[1]];
            //kTSDKSubmitArgs.serverName = events[param[2]].ToString();
            //kTSDKSubmitArgs.zoneID = events[param[3]].ToString();
            //kTSDKSubmitArgs.zoneName = events[param[4]].ToString();
            //kTSDKSubmitArgs.roleID = events[param[5]].ToString();
            //kTSDKSubmitArgs.roleName = events[param[6]].ToString();
            //kTSDKSubmitArgs.roleLevel = events[param[7]].ToString();
            //kTSDKSubmitArgs.guildID = events[param[8]].ToString();
            //kTSDKSubmitArgs.Vip= events[param[9]].ToString();
            //kTSDKSubmitArgs.moneyNum = (int)events[param[10]];
            //kTSDKSubmitArgs.roleCreateTime = events[param[11]].ToString();
            //kTSDKSubmitArgs.roleLevelUpTime = events[param[12]].ToString();
            //Helper.Instance.SubmitExtraData(kTSDKSubmitArgs);
        }


    }
}
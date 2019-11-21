using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Fungus;
using UnityEngine.Playables;
using UnityEngine.Timeline;
using System.IO;

namespace StorySystem.FungusData
{

#if UNITY_EDITOR
    public class FungusCmdEditorData
    {
        public Flowchart flowchart;

        public class CmdData_Say
        {
            public Say cmd;
            public Sprite portrait;
            public SayDialog dialog;
        }

        public class CmdData_PlayAnimState
        {
            public PlayAnimState cmd;
            public Animator anim;
        }

        public class CmdData_TimelineCtrl
        {
            public TimelineCtrl cmd;
            public GameObject pdGo;
        }

        public class CmdData_Portrait
        {
            public Portrait cmd;
            public Sprite portrait;
        }

        public List<CmdData_PlayAnimState> cmdData_PlayAnimStates = new List<CmdData_PlayAnimState>();
        public List<CmdData_Say> cmdData_Say = new List<CmdData_Say>();
        public List<CmdData_TimelineCtrl> cmdData_Pd = new List<CmdData_TimelineCtrl>();
        public List<CmdData_Portrait> cmdData_Portrait = new List<CmdData_Portrait>();
    }
#endif

    public class FungusCmdDataFactory
    {
#if UNITY_EDITOR

        public static FungusCmdEditorData.CmdData_Say SaveCmdData_Say( Say say )
        {
            if (say == null) return null;

            return new FungusCmdEditorData.CmdData_Say()
            {
                cmd = say,
                portrait = say.Portrait,
                dialog = say.setSayDialog
            };
        }

        public static FungusCmdEditorData.CmdData_PlayAnimState SaveCmdData_PlayAnimState( PlayAnimState play )
        {
            if (play == null || play.anim == null) return null;
            return new FungusCmdEditorData.CmdData_PlayAnimState()
            {
                cmd = play,
                anim = play.anim
            };
        }

        public static FungusCmdEditorData.CmdData_TimelineCtrl SaveCmdData_TimelineCtrl( TimelineCtrl ctrl )
        {
            if (ctrl == null || ctrl.pd == null) return null;
            return new FungusCmdEditorData.CmdData_TimelineCtrl()
            {
                cmd = ctrl,
                pdGo = ctrl.pd.gameObject
            };
        }


        public static FungusCmdEditorData.CmdData_Portrait SaveCmdData_Portrait( Portrait p )
        {
            if (p == null || p._Portrait == null) return null;

            return new FungusCmdEditorData.CmdData_Portrait()
            {
                cmd = p,
                portrait = p._Portrait
            };
        }

        public static FungusCmdEditorData SaveFungusCmd_Editor( Flowchart fc )
        {
            if (fc == null) return null;

            var commands = fc.GetComponents<Command>();
            if (commands == null || commands.Length < 1) return null;

            FungusCmdEditorData ret = new FungusCmdEditorData();
            ret.flowchart = fc;
            foreach (var cmd in commands)
            {
                if (cmd is PlayAnimState)
                {
                    var data = SaveCmdData_PlayAnimState(cmd as PlayAnimState);
                    if (data != null)
                        ret.cmdData_PlayAnimStates.Add(data);
                } else
                if (cmd is Say)
                {
                    var data = SaveCmdData_Say(cmd as Say);
                    if (data != null)
                        ret.cmdData_Say.Add(data);
                } else
                    if (cmd is TimelineCtrl)
                {
                    var data = SaveCmdData_TimelineCtrl(cmd as TimelineCtrl);
                    if (data != null)
                        ret.cmdData_Pd.Add(data);
                } else
                    if (cmd is Portrait)
                {
                    var data = SaveCmdData_Portrait(cmd as Portrait);
                    if (data != null)
                        ret.cmdData_Portrait.Add(data);
                }
            }

            return ret;
        }

        public static FungusCmdData[] ConvertEditorData(
            FungusCmdEditorData[] datas
            , System.Func<Animator, NodeKeyData> animPathFinder
            , System.Func<GameObject, int> goIdFinder
            )
        {
            if (datas == null || datas.Length < 1) return null;
            List<FungusCmdData> ret = new List<FungusCmdData>();

            foreach (var data in datas)
            {
                if (data == null) continue;
                //say
                if (data.cmdData_Say != null && data.cmdData_Say.Count > 0)
                {
                    foreach (var c in data.cmdData_Say)
                    {
                        if (c == null || c.cmd == null) continue;
                        ret.Add(new FungusCmdData()
                        {
                            type = FungusCmdType.Say,
                            cmd = c.cmd,
                            strParam = (c.portrait == null) ? string.Empty : c.portrait.name,
                            intParam = c.dialog == null ? 0 : goIdFinder(c.dialog.gameObject)
                        });
                    }
                }
                //playanim
                if (data.cmdData_PlayAnimStates != null && data.cmdData_PlayAnimStates.Count > 0 && animPathFinder != null)
                {
                    foreach (var c in data.cmdData_PlayAnimStates)
                    {
                        if (c == null || c.cmd == null) continue;

                        var anim = c.cmd.anim;
                        var keyData = animPathFinder(anim);
                        ret.Add(new FungusCmdData()
                        {
                            type = FungusCmdType.PlayAnim,
                            cmd = c.cmd,
                            intParam = keyData.id,
                            strParam = keyData.nestPath
                        });
                    }
                }
                //playable director
                if (data.cmdData_Pd != null && data.cmdData_Pd.Count > 0)
                {
                    foreach (var c in data.cmdData_Pd)
                    {
                        if (c == null || c.pdGo == null) continue;
                        ret.Add(new FungusCmdData()
                        {
                            type = FungusCmdType.Timeline,
                            cmd = c.cmd,
                            go = c.pdGo
                        });
                    }
                }
                //Portrait                
                if (data.cmdData_Portrait != null && data.cmdData_Portrait.Count > 0)
                {
                    foreach (var c in data.cmdData_Portrait)
                    {
                        if (c == null || c.portrait == null) continue;
                        ret.Add(new FungusCmdData()
                        {
                            type = FungusCmdType.Portrait,
                            cmd = c.cmd,
                            strParam = c.portrait.name,
                        });
                    }
                }

            }

            return ret.ToArray();
        }

#endif


        public static void SetCmdData( FungusCmdData[] datas, System.Func<int, string, GameObject> goFinder )
        {
            foreach (var item in datas)
            {
                if (item.cmd == null) continue;

                switch (item.type)
                {
                    case FungusCmdType.Say:
                        SetCmdData_Say(item, goFinder);
                        break;
                    case FungusCmdType.PlayAnim:
                        SetCmdData_PlayAnim(item, goFinder);
                        break;
                    case FungusCmdType.Timeline:
                        SetCmdData_Pd(item);
                        break;
                    case FungusCmdType.Portrait:
                        SetCmdData_Portrait(item, goFinder);
                        break;
                }

            }
        }

        static void SetCmdData_Say( FungusCmdData data, System.Func<int, string, GameObject> goFinder )
        {
            var Say = data.cmd as Say;
            var @char = Say._Character;
            var go = goFinder(data.intParam, null);
            if (go != null)
                Say.setSayDialog = go.GetComponent<SayDialog>();
            if (@char != null && @char.Portraits != null && @char.Portraits.Count > 0)
            {
                foreach (var p in @char.Portraits)
                {
                    if (p.name == data.strParam)
                    {
                        Say.Portrait = p;
                        break;
                    }
                }

            }
        }

        static void SetCmdData_PlayAnim( FungusCmdData data, System.Func<int, string, GameObject> goFinder )
        {
            var playAnim = data.cmd as PlayAnimState;
            var go = goFinder(data.intParam, data.strParam);
            if (go == null) return;
            if (string.IsNullOrEmpty(data.strParam))
            {
                var tarTrans = go.transform.Find(data.strParam);
                if (tarTrans != null)
                {
                    go = tarTrans.gameObject;
                } else
                {
                    Debug.LogErrorFormat("PlayAnim Comand Setting Error! Can not Find Node:{0} - {1}", data.intParam, data.strParam);
                }
            }
            if (go == null) return;
            var anim = go.GetComponentInChildren<Animator>();
            playAnim.anim = anim;
        }

        static void SetCmdData_Pd( FungusCmdData data )
        {
            var tlCtrl = data.cmd as TimelineCtrl;
            if (data.go != null)
            {
                tlCtrl.pd = data.go.GetComponent<PlayableDirector>();
            }
        }

        static void SetCmdData_Portrait( FungusCmdData data, System.Func<int, string, GameObject> goFinder )
        {
            var portrait = data.cmd as Portrait;
            var @char = portrait._Character;
            var go = goFinder(data.intParam, null);

            if (@char != null && @char.Portraits != null && @char.Portraits.Count > 0)
            {
                foreach (var p in @char.Portraits)
                {
                    if (p.name == data.strParam)
                    {
                        portrait._Portrait = p;
                        break;
                    }
                }
            }
        }

    }

}
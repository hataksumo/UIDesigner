using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UnityEditor;

class GameMenu
{
    [MenuItem("Custom/doMain")]
    public static void doMain()
    {
        var ins = EditorMain.GetInstence();
        ins.test();
    }
}

using LuaInterface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

public class EditorMain : LuaClient, IDisposable
{
    // Use this for initialization
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {

    }

    new void Reset()
    {
        Awake();
    }


    public void test()
    {
        LuaFunction fun = luaState.GetFunction("test");
        if (fun == null)
        {
            ZFDebug.Error("can't find the funtion named test");
        }
        fun.Call();
        fun.Dispose();
        fun = null;
    }


    public new void Awake()
    {
        base.Awake();
        luaState.Start();
        luaState.DoFile("EditorMain.lua");
        levelLoaded = luaState.GetFunction("OnLevelWasLoaded");
    }


    public void output_excel()
    {
        LuaFunction fun = luaState.GetFunction("output_excel");
        if (fun == null)
        {
            ZFDebug.Error("can't find the funtion named output_excel");
        }
        fun.Call();
        fun.Dispose();
        fun = null;
    }
    public void init()
    {

    }
    public void reload()
    {
        luaState.DoFile("EditorMain.lua");
    }

    public void Dispose()
    {
        luaState.LuaClose();
    }
}

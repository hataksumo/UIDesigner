using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WinForm = System.Windows.Forms;
using WinDiagnostics = System.Diagnostics;

namespace ExcelToLua
{
    static class Debug
    {
        public static void Exception(string v_msg,params object[] v_params)
        {
            throw new Exception(string.Format(v_msg, v_params));
        }
        public static void Info(string v_msg, params object[] v_params)
        {
            WinForm.MessageBox.Show(string.Format(v_msg, v_params),"Notice",
                WinForm.MessageBoxButtons.OK, WinForm.MessageBoxIcon.Information);
        }
        public static void Error(string v_msg, params object[] v_params)
        {
            WinForm.MessageBox.Show(string.Format(v_msg, v_params), "Error",
    WinForm.MessageBoxButtons.OK, WinForm.MessageBoxIcon.Error);
        }

        public static void Warning(string v_msg, params object[] v_params)
        {
            WinForm.MessageBox.Show(string.Format(v_msg, v_params), "Warning",
                WinForm.MessageBoxButtons.OK, WinForm.MessageBoxIcon.Warning);
        }

        public static void Koid(string v_msg, params object[] v_params)
        {
            WinForm.MessageBox.Show(string.Format(v_msg, v_params), "Koid",
    WinForm.MessageBoxButtons.OK, WinForm.MessageBoxIcon.Information);
        }

        public static void PureInfo(string v_msg)
        {
            WinForm.MessageBox.Show(v_msg, "Koid",
WinForm.MessageBoxButtons.OK, WinForm.MessageBoxIcon.Information);
        }

        public static void Assert(bool v_condition, string v_warning_message = "断言冲突")
        {
            if(!v_condition)
                throw new Exception(v_warning_message);
            //WinDiagnostics.Debug.Assert(v_condition, v_warning_message);
        }

        public static void ExcelError(string v_msg, params object[] v_params)
        {
            WinForm.MessageBox.Show(string.Format(v_msg, v_params), "Error",
    WinForm.MessageBoxButtons.OK, WinForm.MessageBoxIcon.Error);
        }
    }
}

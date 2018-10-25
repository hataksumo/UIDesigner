using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Text.RegularExpressions;

namespace ExcelToLua
{
    static class Tools
    {
        public static Regex numReg = new Regex("^[0-9]+$");
        public static bool IsNumberic(string v_str)
        {
            return numReg.IsMatch(v_str);
        }

        public static string getColName(int v_col)
        {
            v_col = v_col + 1;
            StringBuilder sbCol = new StringBuilder();
            do
            {
                sbCol.Append((char)(v_col % 26 + 'A' - 1));
                v_col /= 26;
            } while (v_col > 0);
            char[] strArr = sbCol.ToString().ToCharArray();
            Array.Reverse(strArr);
            string rtn = new string(strArr);
            return rtn;
        }
    }
}

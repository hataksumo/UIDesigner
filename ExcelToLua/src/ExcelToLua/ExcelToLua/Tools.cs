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
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExcelToLua
{
    class XmlAttributeVal
    {
        public XmlAttributeVal()
        {
            val = "";
            isInvalid = false;
            isNil = false;
        }
        public string val;
        public bool isInvalid;
        public bool isNil;
    }
}

using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Xml;
public class XmlParse  {
    public static XmlElement LoadXml(string _xml)
    {
        XmlDocument document = new XmlDocument();
        document.LoadXml(_xml);
        return document.DocumentElement;
    }
    public static XmlNodeList FindNodeList(XmlElement _xml,string _node_name)
    {
        return _xml.SelectNodes(_node_name);
    }
    public static XmlNode FindSingleNode(XmlNode _xml, string _node_name)
    {
        return _xml.SelectSingleNode(_node_name);
    }
}

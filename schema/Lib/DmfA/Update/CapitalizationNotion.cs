﻿// By Bart Vertongen Dec 2022.

using System.Xml.Serialization;
using VertSoft.BelgianHR.Xml.DmfA.Common;


namespace VertSoft.BelgianHR.Xml.DmfA.Update223
{
    [Serializable()]
    [XmlType(AnonymousType = true)]
    [XmlRoot(Namespace = "", IsNullable = false)]
    public enum CapitalizationNotion
    {
        [XmlEnum("0")] Item0,

        [XmlEnum("1")] Item1,

        [XmlEnum("2")] Item2,
    }
}
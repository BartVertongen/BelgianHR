﻿//By Bart Vertongen Dec 2022.

using System.Xml.Serialization;

namespace VertSoft.BelgianHR.Xml.DmfA.UpdateNotification223
{
    [Serializable()]
    [XmlType(AnonymousType = true)]
    [XmlRoot(Namespace = "", IsNullable = false)]
    public enum Action
    {
        [XmlEnum("0")] Item0,

        [XmlEnum("1")] Item1,

        [XmlEnum("2")] Item2,

        [XmlEnum("3")] Item3,

        [XmlEnum("5")] Item5,

        [XmlEnum("6")] Item6,

        [XmlEnum("7")] Item7,

        [XmlEnum("9")] Item9,
    }
}
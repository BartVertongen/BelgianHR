﻿//By Bart Vertongen Nov 2022.

using System.Xml.Serialization;


namespace VertSoft.BelgianHR.Xml.Dimona.Dimona.Common
{
    [Serializable()]
    [XmlType(AnonymousType = true)]
    [XmlRoot(Namespace = "", IsNullable = false)]
    public enum WorkerType
    {
        A17, BCW, DWD, EXT, FLX, IVT
         , O17, PMP, QUA, RTA, S17, STU, T17, TEA, TRI, STG, OTH,
    }

}
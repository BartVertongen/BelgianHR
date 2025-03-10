﻿// By Bart Vertongen Dec 2022.

using System.Xml.Serialization;


namespace VertSoft.BelgianHR.Xml.DmfA.PID224
{
    [Serializable()]
    [XmlType(IncludeInSchema = false)]
    public enum ItemsChoiceType { NOSSLPARegistrationNbr, NOSSRegistrationNbr, Trusteeship }
}

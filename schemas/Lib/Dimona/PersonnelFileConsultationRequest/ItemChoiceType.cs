﻿//By Bart Vertongen Nov 2022.

using System.Xml.Serialization;


namespace VertSoft.BelgianHR.Xml.PersonnelFileConsultationRequest223
{
    [Serializable()]
    [XmlType(IncludeInSchema = false)]
    public enum ItemChoiceType { NOSSLPARegistrationNbr, NOSSRegistrationNbr, ProvisionalNSSONbr }
}

﻿//By Bart Vertongen Nov 2022.

using System.Xml.Serialization;


namespace VertSoft.BelgianHR.Xml.Dimona.Dimona.Common
{
    [Serializable()]
    [XmlType(IncludeInSchema = false)]
    public enum ItemChoiceType2 { PlannedDaysNbr, PlannedHoursNbr, }
}
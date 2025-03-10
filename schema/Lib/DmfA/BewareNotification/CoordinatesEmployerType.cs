﻿// By Bart Vertongen Dec 2022.

using System.Xml.Serialization;


namespace VertSoft.BelgianHR.Xml.DmfA.BewareNotification224
{
    [Serializable()]
    [System.Diagnostics.DebuggerStepThrough()]
    [System.ComponentModel.DesignerCategory("code")]
    [XmlRoot("CoordinatesEmployer", Namespace = "", IsNullable = false)]
    public class CoordinatesEmployerType
    {
        public string? EmployerDenomination;
    }
}

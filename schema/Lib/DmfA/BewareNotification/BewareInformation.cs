﻿// By Bart Vertongen Dec 2022.

using System.Xml.Serialization;


namespace VertSoft.BelgianHR.Xml.DmfA.BewareNotification224
{
    [Serializable()]
    [System.Diagnostics.DebuggerStepThrough()]
    [System.ComponentModel.DesignerCategory("code")]
    [XmlType(AnonymousType = true)]
    [XmlRoot(Namespace = "", IsNullable = false)]
    public class BewareInformation : BewareInformationType
    {
        public CoordinatesContactPerson? CoordinatesContactPerson;

        public ReceiverInformation? ReceiverInformation;

        public AccountUpdateReport? AccountUpdateReport;

        public ProcessedCorrectionsReport? ProcessedCorrectionsReport;
    }
}

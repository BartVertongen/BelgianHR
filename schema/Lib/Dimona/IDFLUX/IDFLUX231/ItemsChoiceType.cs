﻿

using System.Xml.Serialization;


namespace VertSoft.BelgianHR.Xml.Dimona.IDFLUX.IDFLUX231
{
	[Serializable()]
	[XmlType(IncludeInSchema = false)]
	public enum ItemsChoiceType
	{
		INSS,
		NOSSRegistrationNbr,
		WorkerBirthdate,
		WorkerFirstName,
		WorkerName,
		WorkerSex,
	}
}
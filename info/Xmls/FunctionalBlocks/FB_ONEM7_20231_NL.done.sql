/*
CREATE TABLE functional_blocks(
   Code                     TEXT NOT NULL
   , Version                TEXT NOT NULL
   , PublicationDay         TEXT NOT NULL
   , Name                   TEXT NOT NULL
   , XmlLabel               TEXT NOT NULL
   , DescriptionNL          TEXT NOT NULL
   , MinimalCardinality     TEXT NOT NULL
   , MaximumCardinality     TEXT NOT NULL
   , Presence               TEXT NOT NULL
   , ExtraRestrictions      TEXT NOT NULL
   , PRIMARY KEY (Code, Version)
);
*/

INSERT OR REPLACE INTO functional_blocks(Code, Version, PublicationDay, Name, XmlLabel
    , DescriptionNL, MinimalCardinality, MaximumCardinality, Presence, ExtraRestrictions)
SELECT "90065"
        , "2023/1"
        , "28/02/2023"
        , "Aanduiding van de dagen en uren"
        , "IndicationDaysAndHours"
        , "Functioneel blok dat toelaat de aanduiding van de dagen en uren van het werkrooster op te geven."
        , "0"
        , "28"
        , "Cardinaliteit 7 : VERPLICHT indien de prestaties eenduidig kunnen worden verdeeld in uren volgens werkrooster 1\nCardinaliteit 14 : VERPLICHT indien de prestaties eenduidig kunnen worden verdeeld in uren volgens werkrooster 2\nCardinaliteit 21 : VERPLICHT indien de prestaties eenduidig kunnen worden verdeeld in uren volgens werkrooster 3\nCardinaliteit 28 : VERPLICHT indien de prestaties eenduidig kunnen worden verdeeld in uren volgens werkrooster 4"
        , ""
WHERE NOT EXISTS (SELECT * FROM functional_blocks
                    WHERE Code = '90065'
                          AND Version = '2023/1'
);


INSERT OR REPLACE INTO functional_blocks(Code, Version, PublicationDay, Name, XmlLabel
    , DescriptionNL, MinimalCardinality, MaximumCardinality, Presence, ExtraRestrictions)
SELECT "90074"
        , "2023/1"
        , "28/02/2023"
        , "Aard van de dag"
        , "NatureOfDay"
        , "Functioneel blok dat toelaat de gegevens over de aard van de dagen aan te geven."
        , "1"
        , "62"
        , "Verplicht indien het een (halve) dag betreft waarvoor een code aard van de dag moet worden meegedeeld. Extra beperkingen : het gebruik van halve dagen kan enkel indien de zone identificatie van het risico minstens 2 types bevat waarvan er één gelijk is aan 005."
        , "Er kunnen maximum 2 verschillende codes aard van de dag op dezelfde datum voorkomen of m.a.w. maximum 2 zones 'aanduiding van de dag' met dezelfde datum, met elk een verschillende code 'aard van de dag'."
WHERE NOT EXISTS (SELECT * FROM functional_blocks
                    WHERE Code = '90074'
                          AND Version = '2023/1'
);


INSERT OR REPLACE INTO functional_blocks(Code, Version, PublicationDay, Name, XmlLabel
    , DescriptionNL, MinimalCardinality, MaximumCardinality, Presence, ExtraRestrictions)
SELECT "90022"
        , "2023/1"
        , "28/02/2023"
        , "Adres"
        , "Address"
        , "Functioneel blok dat toelaat een adres volledig te specifiëren."
        , "0"
        , "1"
        , "Verplicht indien het blok 'Communicatie' niet aanwezig is"
        , ""
WHERE NOT EXISTS (SELECT * FROM functional_blocks
                    WHERE Code = '90022'
                          AND Version = '2023/1'
);


INSERT OR REPLACE INTO functional_blocks(Code, Version, PublicationDay, Name, XmlLabel
    , DescriptionNL, MinimalCardinality, MaximumCardinality, Presence, ExtraRestrictions)
SELECT "90197"
        , "2023/1"
        , "28/02/2023"
        , "Afdeling"
        , "Department"
        , "Functioneel blok dat toelaat de specifieke gegevens van de afdeling van het bedrijf aan te geven binnen het kader van tijdelijke werkloosheid."
        , "0"
        , "3"
        , "0..3 : Verplicht indien bij de identificatie(s) van het risico (zone nr. 00430) de waarde '001' opgegeven wordt en de mededeling tijdelijke werkloosheid voor een afdeling werd doorgegeven. Verboden indien de waarde '001' niet voorkomt bij een identificatie(s) van het risico (zone nr. 00430)."
        , ""
WHERE NOT EXISTS (SELECT * FROM functional_blocks
                    WHERE Code = '90197'
                          AND Version = '2023/1'
);


INSERT OR REPLACE INTO functional_blocks(Code, Version, PublicationDay, Name, XmlLabel
    , DescriptionNL, MinimalCardinality, MaximumCardinality, Presence, ExtraRestrictions)
SELECT "90030"
        , "2023/1"
        , "28/02/2023"
        , "Berekeningsbasis - bijzondere omstandigheden"
        , "ExceptSituationCalculBase"
        , "Functioneel blok dat toelaat informatie te geven over situaties die afwijken van de tewerkstellingsgegevens."
        , "0"
        , "1"
        , "VERPLICHT indien de zone 01095 (Code werkschema) de waarde '03' of '14' bevat én de refertemaand na juni 2020 gelegen is."
        , ""
WHERE NOT EXISTS (SELECT * FROM functional_blocks
                    WHERE Code = '90030'
                          AND Version = '2023/1'
);


INSERT OR REPLACE INTO functional_blocks(Code, Version, PublicationDay, Name, XmlLabel
    , DescriptionNL, MinimalCardinality, MaximumCardinality, Presence, ExtraRestrictions)
SELECT "90032"
        , "2023/1"
        , "28/02/2023"
        , "Berekeningsbasis van de uitkeringen"
        , "CalculationBaseAllowance"
        , "Functioneel blok dat toelaat de gegevens van de berekeningsbasis van de uitkeringen aan te geven."
        , "1"
        , "1"
        , "Onmisbaar"
        , ""
WHERE NOT EXISTS (SELECT * FROM functional_blocks
                    WHERE Code = '90032'
                          AND Version = '2023/1'
);


INSERT OR REPLACE INTO functional_blocks(Code, Version, PublicationDay, Name, XmlLabel
    , DescriptionNL, MinimalCardinality, MaximumCardinality, Presence, ExtraRestrictions)
SELECT "90036"
        , "2023/1"
        , "28/02/2023"
        , "Commentaar bij de aangifte"
        , "CommentDeclaration"
        , "Functioneel blok dat toelaat commentaar bij de aangifte op te geven."
        , "0"
        , "1"
        , "FACULTATIEF"
        , ""
WHERE NOT EXISTS (SELECT * FROM functional_blocks
                    WHERE Code = '90036'
                          AND Version = '2023/1'
);


INSERT OR REPLACE INTO functional_blocks(Code, Version, PublicationDay, Name, XmlLabel
    , DescriptionNL, MinimalCardinality, MaximumCardinality, Presence, ExtraRestrictions)
SELECT "90037"
        , "2023/1"
        , "28/02/2023"
        , "Commentaar werkrooster"
        , "CommentWorkGrid"
        , "Functioneel blok dat toelaat commentaar bij het werkrooster op te geven."
        , "0"
        , "1"
        , "Kardinaliteit 1: VERPLICHT indien de prestaties niet duidelijk kunnen worden verdeeld in uren."
        , ""
WHERE NOT EXISTS (SELECT * FROM functional_blocks
                    WHERE Code = '90037'
                          AND Version = '2023/1'
);


INSERT OR REPLACE INTO functional_blocks(Code, Version, PublicationDay, Name, XmlLabel
    , DescriptionNL, MinimalCardinality, MaximumCardinality, Presence, ExtraRestrictions)
SELECT "90258"
        , "2023/1"
        , "28/02/2023"
        , "Communicatie"
        , "Communication"
        , "Functioneel blok dat toelaat de informatie inzake communicatie aan te geven."
        , "0"
        , "1"
        , "Verplicht indien het blok Adres niet aanwezig is"
        , ""
WHERE NOT EXISTS (SELECT * FROM functional_blocks
                    WHERE Code = '90258'
                          AND Version = '2023/1'
);


INSERT OR REPLACE INTO functional_blocks(Code, Version, PublicationDay, Name, XmlLabel
    , DescriptionNL, MinimalCardinality, MaximumCardinality, Presence, ExtraRestrictions)
SELECT "90066"
        , "2023/1"
        , "28/02/2023"
        , "Dag niet in aanmerking komend voor vergoeding"
        , "DayNotEntitledToCompensation"
        , "Functioneel blok dat toelaat de specifieke gegevens van de dag niet in aanmerking komend voor vergoeding aan te geven."
        , "0"
        , "10"
        , "VERPLICHT INDIEN er één of meerdere dagen zijn die niet in aanmerking komen voor een vergoeding of indien er voor een voltijdse tewerkstelling tijdelijke werkloosheid wordt aangegeven op een maandag volgend op een op zaterdag of zondag gelegen wettelijke feestdag."
        , "De datum van de wettelijke feestdag en / of de datum van de dag ter vervanging van de wettelijke feestdag moeten in de referteperiode gelegen zijn."
WHERE NOT EXISTS (SELECT * FROM functional_blocks
                    WHERE Code = '90066'
                          AND Version = '2023/1'
);


INSERT OR REPLACE INTO functional_blocks(Code, Version, PublicationDay, Name, XmlLabel
    , DescriptionNL, MinimalCardinality, MaximumCardinality, Presence, ExtraRestrictions)
SELECT "90059"
        , "2023/1"
        , "28/02/2023"
        , "Formulier"
        , "Form"
        , "Functioneel blok dat toelaat een formulier aan te geven."
        , "1"
        , "*"
        , "ONMISBAAR"
        , ""
WHERE NOT EXISTS (SELECT * FROM functional_blocks
                    WHERE Code = '90059'
                          AND Version = '2023/1'
);


INSERT OR REPLACE INTO functional_blocks(Code, Version, PublicationDay, Name, XmlLabel
    , DescriptionNL, MinimalCardinality, MaximumCardinality, Presence, ExtraRestrictions)
SELECT "90257"
        , "2023/1"
        , "28/02/2023"
        , "Gegevens van de contactpersoon"
        , "CoordinatesContactPerson"
        , "Functioneel blok dat toelaat de gegevens van de contactpersoon aan te geven."
        , "0"
        , "1"
        , "Facultatief"
        , ""
WHERE NOT EXISTS (SELECT * FROM functional_blocks
                    WHERE Code = '90257'
                          AND Version = '2023/1'
);


INSERT OR REPLACE INTO functional_blocks(Code, Version, PublicationDay, Name, XmlLabel
    , DescriptionNL, MinimalCardinality, MaximumCardinality, Presence, ExtraRestrictions)
SELECT "90064"
        , "2023/1"
        , "28/02/2023"
        , "Identificatie risico"
        , "RiskIdentification"
        , "Functioneel blok dat toelaat het risico te identificeren."
        , "1"
        , "5"
        , "ONMISBAAR"
        , "De identificatie van risico '011' mag niet gelijktijdig met '001', '002' of '003' in een aangifte voorkomen."
WHERE NOT EXISTS (SELECT * FROM functional_blocks
                    WHERE Code = '90064'
                          AND Version = '2023/1'
);


INSERT OR REPLACE INTO functional_blocks(Code, Version, PublicationDay, Name, XmlLabel
    , DescriptionNL, MinimalCardinality, MaximumCardinality, Presence, ExtraRestrictions)
SELECT "90171"
        , "2023/1"
        , "28/02/2023"
        , "Informatie van de aangifte"
        , "DclInformation"
        , "Functioneel blok dat toelaat informatie bij de aangifte te preciseren."
        , "1"
        , "1"
        , "ONMISBAAR"
        , ""
WHERE NOT EXISTS (SELECT * FROM functional_blocks
                    WHERE Code = '90171'
                          AND Version = '2023/1'
);


INSERT OR REPLACE INTO functional_blocks(Code, Version, PublicationDay, Name, XmlLabel
    , DescriptionNL, MinimalCardinality, MaximumCardinality, Presence, ExtraRestrictions)
SELECT "90404"
        , "2023/1"
        , "28/02/2023"
        , "Kenmerken van de tewerkstelling"
        , "OccupationFeatures"
        , "Bijkomende kenmerken van de tewerkstelling."
        , "0"
        , "1"
        , "VERPLICHT INDIEN de refertemaand na 2015 ligt. VERBODEN in alle andere gevallen."
        , ""
WHERE NOT EXISTS (SELECT * FROM functional_blocks
                    WHERE Code = '90404'
                          AND Version = '2023/1'
);


INSERT OR REPLACE INTO functional_blocks(Code, Version, PublicationDay, Name, XmlLabel
    , DescriptionNL, MinimalCardinality, MaximumCardinality, Presence, ExtraRestrictions)
SELECT "90067"
        , "2023/1"
        , "28/02/2023"
        , "Link met aangifte werkgever"
        , "EmployerDeclarationLink"
        , "Functioneel blok dat toelaat de gegevens van de link met de werkgeversaangifte aan te geven."
        , "0"
        , "1"
        , "Kardinaliteit 1 : VERPLICHT INDIEN de aangifte een werkgever aangesloten bij RSZ betreft, de provinciale en plaatselijke besturen inbegrepen indien het kwartaal van de aangifte groter of gelijk is aan 20221."
        , ""
WHERE NOT EXISTS (SELECT * FROM functional_blocks
                    WHERE Code = '90067'
                          AND Version = '2023/1'
);


INSERT OR REPLACE INTO functional_blocks(Code, Version, PublicationDay, Name, XmlLabel
    , DescriptionNL, MinimalCardinality, MaximumCardinality, Presence, ExtraRestrictions)
SELECT "90068"
        , "2023/1"
        , "28/02/2023"
        , "Link met tewerkstelling werknemerslijn"
        , "OccupationLink"
        , "Functioneel blok dat toelaat de gegevens in verband met de link met een tewerkstelling aan te geven."
        , "1"
        , "1"
        , "ONMISBAAR"
        , ""
WHERE NOT EXISTS (SELECT * FROM functional_blocks
                    WHERE Code = '90068'
                          AND Version = '2023/1'
);


INSERT OR REPLACE INTO functional_blocks(Code, Version, PublicationDay, Name, XmlLabel
    , DescriptionNL, MinimalCardinality, MaximumCardinality, Presence, ExtraRestrictions)
SELECT "90168"
        , "2023/1"
        , "28/02/2023"
        , "Link met werkgeversaangifte PPL"
        , "NOSSLPAEmployerDeclarationLink"
        , "Functioneel blok dat toelaat de gegevens van de link met de werkgeversaangifte PPL aan te geven."
        , "0"
        , "1"
        , "Kardinaliteit 1: 1 VERPLICHT indien de aangifte een provinciaal en/of plaatselijk bestuur tot en met 20214 betreft."
        , ""
WHERE NOT EXISTS (SELECT * FROM functional_blocks
                    WHERE Code = '90168'
                          AND Version = '2023/1'
);


INSERT OR REPLACE INTO functional_blocks(Code, Version, PublicationDay, Name, XmlLabel
    , DescriptionNL, MinimalCardinality, MaximumCardinality, Presence, ExtraRestrictions)
SELECT "90063"
        , "2023/1"
        , "28/02/2023"
        , "Link met werknemerslijn"
        , "WorkerRecordLink"
        , "Functioneel blok dat toelaat de gegevens in verband met de link met een werknemerslijn aan te geven."
        , "0"
        , "1"
        , "VERPLICHT INDIEN geen annulerende aangifte. VERBODEN in alle andere gevallen."
        , "Een gegeven combinatie werkgeverscategorie / werknemerskengetal mag slechts één keer voorkomen per natuurlijk persoon."
WHERE NOT EXISTS (SELECT * FROM functional_blocks
                    WHERE Code = '90063'
                          AND Version = '2023/1'
);


INSERT OR REPLACE INTO functional_blocks(Code, Version, PublicationDay, Name, XmlLabel
    , DescriptionNL, MinimalCardinality, MaximumCardinality, Presence, ExtraRestrictions)
SELECT "90047"
        , "2023/1"
        , "28/02/2023"
        , "Maandelijkse aangifte uren tijdelijke werkloosheid"
        , "MonthlyDclTempUnemploymentHours"
        , "Functioneel blok dat toelaat de specifieke gegevens van de maandelijkse aangifte uren tijdelijke werkloosheid aan te geven."
        , "1"
        , "1"
        , "ONMISBAAR"
        , ""
WHERE NOT EXISTS (SELECT * FROM functional_blocks
                    WHERE Code = '90047'
                          AND Version = '2023/1'
);


INSERT OR REPLACE INTO functional_blocks(Code, Version, PublicationDay, Name, XmlLabel
    , DescriptionNL, MinimalCardinality, MaximumCardinality, Presence, ExtraRestrictions)
SELECT "90017"
        , "2023/1"
        , "28/02/2023"
        , "Natuurlijke persoon"
        , "NaturalPerson"
        , "Functioneel blok dat toelaat de identificatiegegevens van een natuurlijke persoon aan te geven."
        , "1"
        , "1"
        , "ONMISBAAR"
        , "Het adres kan ingevuld worden om op de resulterende PDF afgedrukt te worden."
WHERE NOT EXISTS (SELECT * FROM functional_blocks
                    WHERE Code = '90017'
                          AND Version = '2023/1'
);


INSERT OR REPLACE INTO functional_blocks(Code, Version, PublicationDay, Name, XmlLabel
    , DescriptionNL, MinimalCardinality, MaximumCardinality, Presence, ExtraRestrictions)
SELECT "90082"
        , "2023/1"
        , "28/02/2023"
        , "Referentie"
        , "Reference"
        , "Functioneel blok dat toelaat referenties te preciseren in verband met één of meer formulieren; een formulier kan een originele DmfA-aangifte zijn, een wijzigende DmfA-aangifte, een ASR, een aanvraag van inlichtingen, een Dimona aangifte, enz."
        , "0"
        , "3"
        , "Kardinaliteit 0 ... 2 indien 00110 Status van het attest = '0' (Origineel) Kardinaliteit 1 ... 3 indien 00110 Status van het attest = '1' (Wijziging) of '3' (Annulatie). In dit geval is alleen één blok referentie nodig met als waarde '3' voor de zone 00221 - TYPE VAN DE REFERENTIE en met als waarde '2' voor de zone 00298 - HERKOMST VAN DE REFERENTIE."
        , "- Per referentietype mag slechts één blok 'Referentie' dat een ticketnummer is, aangegeven worden.\n- Indien de 'status van het attest' een 'wijziging van een papieren origineel' is, mag geen enkel blok 'Referentie' met een ticketnummer aangegeven worden.\n- Indien de 'status van het attest' een 'wijziging' of een 'annulatie' is, moet juist één blok 'Referentie' met een ticketnummer en referentietype '3' aangegeven worden. In geen enkele andere situatie mag soortgelijke referentie aangegeven worden.\n"
WHERE NOT EXISTS (SELECT * FROM functional_blocks
                    WHERE Code = '90082'
                          AND Version = '2023/1'
);


INSERT OR REPLACE INTO functional_blocks(Code, Version, PublicationDay, Name, XmlLabel
    , DescriptionNL, MinimalCardinality, MaximumCardinality, Presence, ExtraRestrictions)
SELECT "90077"
        , "2023/1"
        , "28/02/2023"
        , "Referteperiode"
        , "ReferencePeriod"
        , "Functioneel blok dat toelaat de referteperiode aan te geven."
        , "1"
        , "1"
        , "ONMISBAAR"
        , ""
WHERE NOT EXISTS (SELECT * FROM functional_blocks
                    WHERE Code = '90077'
                          AND Version = '2023/1'
);


INSERT OR REPLACE INTO functional_blocks(Code, Version, PublicationDay, Name, XmlLabel
    , DescriptionNL, MinimalCardinality, MaximumCardinality, Presence, ExtraRestrictions)
SELECT "90076"
        , "2023/1"
        , "28/02/2023"
        , "Sluitingsperiode"
        , "ClosingPeriod"
        , "Functioneel blok dat toelaat de specifieke gegevens van de sluitingsperiode aan te geven."
        , "0"
        , "6"
        , "Verplicht indien de identificatie van het risico ofwel 006 (= tijdelijke werkloosheid ingevolge collectieve sluiting van de onderneming wegens jaarlijkse vakantie) ofwel 007 (= tijdelijke werkloosheid ingevolge collectieve sluiting van de onderneming wegens vakantie krachtens een algemeen bindend verklaarde CAO) omvat én er sluitingsperiodes zijn, gelegen in het lopende kalenderjaar, maar gelegen vóór de sluitingsperiode waarvoor uitkeringen worden aangevraagd. Verboden in alle andere gevallen.\nDe sluitingsperiode kan maximum zes keer voorkomen, voor alle sluitingsperiodes van een bedrijf gedurende het jaar."
        , ""
WHERE NOT EXISTS (SELECT * FROM functional_blocks
                    WHERE Code = '90076'
                          AND Version = '2023/1'
);


INSERT OR REPLACE INTO functional_blocks(Code, Version, PublicationDay, Name, XmlLabel
    , DescriptionNL, MinimalCardinality, MaximumCardinality, Presence, ExtraRestrictions)
SELECT "90116"
        , "2023/1"
        , "28/02/2023"
        , "WECH005"
        , "WECH005"
        , "Root van de XML-boodschap die toelaat aangiften van dit scenario te doen"
        , "1"
        , "1"
        , "Onmisbaar"
        , ""
WHERE NOT EXISTS (SELECT * FROM functional_blocks
                    WHERE Code = '90116'
                          AND Version = '2023/1'
);


INSERT OR REPLACE INTO functional_blocks(Code, Version, PublicationDay, Name, XmlLabel
    , DescriptionNL, MinimalCardinality, MaximumCardinality, Presence, ExtraRestrictions)
SELECT "90060"
        , "2023/1"
        , "28/02/2023"
        , "Werkrooster"
        , "WorkGrid"
        , "Functioneel blok dat toelaat de gegevens van het werkrooster aan te geven."
        , "0"
        , "1"
        , "VERPLICHT INDIEN de refertemaand vóór 2016 ligt. VERBODEN in alle andere gevallen."
        , ""
WHERE NOT EXISTS (SELECT * FROM functional_blocks
                    WHERE Code = '90060'
                          AND Version = '2023/1'
);


INSERT OR REPLACE INTO functional_blocks(Code, Version, PublicationDay, Name, XmlLabel
    , DescriptionNL, MinimalCardinality, MaximumCardinality, Presence, ExtraRestrictions)
SELECT "90058"
        , "2023/1"
        , "28/02/2023"
        , "Winteropleiding"
        , "WinterFormation"
        , "Functioneel blok dat toelaat de specifieke gegevens van de geprogrammeerde winteropleiding aan te geven."
        , "0"
        , "3"
        , "Verplicht indien het paritair comité 124 (bouwsector) en de identificatie van het risico 002 (= tijdelijke werkloosheid ingevolge slecht weer) is én er een winteropleiding werd gevolgd. Verboden in alle andere gevallen."
        , ""
WHERE NOT EXISTS (SELECT * FROM functional_blocks
                    WHERE Code = '90058'
                          AND Version = '2023/1'
);

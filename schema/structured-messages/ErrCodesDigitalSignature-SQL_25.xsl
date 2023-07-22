<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" indent="yes" encoding="utf-8"/>
    <xsl:template match="/">
        <xsl:for-each select="error-codes-digital-signature/error-code">
            <xsl:variable name="beginYear">
                <xsl:value-of select="begin-validity/year"/>
            </xsl:variable>

            <xsl:variable name="beginQuarter">
                <xsl:value-of select="begin-validity/quarter"/>
            </xsl:variable>

            <xsl:variable name="endYear">
                <xsl:value-of select="end-validity/year"/>
            </xsl:variable>

            <xsl:variable name="endQuarter">
                <xsl:value-of select="end-validity/quarter"/>
            </xsl:variable>

            <xsl:variable name="beginValidity">
                <xsl:value-of select="concat($beginYear,'/',$beginQuarter)" />
            </xsl:variable>

            <xsl:variable name="endValidity">
                <xsl:value-of select="concat($endYear,'/',$endQuarter)" />
            </xsl:variable>
INSERT INTO error-codes-digital-signature (Code, CodeTypeNL, CodeTypeFR
    , DescriptionNL, DescriptionFR, CategoryNL, CategoryFR,
    , BeginValidity, EndValidity)
VALUES("<xsl:value-of select="code"/>"
        , "<xsl:value-of select="code-type/nl"/>"
        , "<xsl:value-of select="code-type/fr"/>"
        , "<xsl:value-of select="description/nl"/>"
        , "<xsl:value-of select="description/fr"/>"
        , "<xsl:value-of select="category/nl"/>"
        , "<xsl:value-of select="category/fr"/>"
        , "<xsl:value-of select="$beginValidity"/>"
        , "<xsl:value-of select="$endValidity"/>");
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>

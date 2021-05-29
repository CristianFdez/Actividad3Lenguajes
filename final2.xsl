<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
    
        <institute> 

            <courses>
                <course><xsl:for-each select="ite/ciclos/ciclo">
                    <xsl:element name="identification">//
                        <xsl:value-of select="@id"/>>>
                    </xsl:element>
                    <name><xsl:value-of select="nombre"/></name>
                    <degree><xsl:value-of select="grado"/></degree>
                </xsl:for-each>
                </course>
            </courses>

            <dept>DEPARTAMENTOS:
                <teachers>**Profesores: <xsl:value-of select="ite/profesores"/>
                    <xsl:for-each select="profesor">
                        <xsl:element name="id">
                        <xsl:value-of select="id"/>
                        </xsl:element>
                        <name><xsl:value-of select="nombre"/>,</name>
                    </xsl:for-each>
                </teachers>
                <director> **Director:<xsl:value-of select="ite/director"/>
                    <name><xsl:value-of select="nombre"/>,</name>
                    <office><xsl:value-of select="despacho"/></office>
                </director>
                <studies_chief> **Jefe de Estudios: <xsl:value-of select="ite/jefe_estudios"/>
                    <name><xsl:value-of select="nombre"/>,</name>
                    <office><xsl:value-of select="despacho"/></office>
                </studies_chief>
            </dept>

            <company><xsl:value-of select="ite/empresa"/></company>
            <phone><xsl:value-of select="ite/telefono"/></phone>

        </institute>

    </xsl:template>
</xsl:stylesheet>
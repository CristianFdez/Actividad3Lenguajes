<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
        <ite>
            <xsl:attribute empresa="empresa">
                <xsl:value-of select="ite/empresa"/>
            </xsl:attribute>
            <xsl:attribute web="web">
                <xsl:value-of select="ite/@web"/>
            </xsl:attribute>
            <nombre><xsl:value-of select="ite/@nombre"/></nombre>
            <telefono>
                <xsl:attribute numero="numero">
                    <xsl:value-of select="ite/telefono"/>
                </xsl:attribute>
            </telefono>
            <profesores>
                <xsl:for-each select="ite/profesores/profesor">
                    <profesor>
                        <xsl:attribute id="id">
                            <xsl:value-of select="ite/profesores/profesor/id"/>
                        </xsl:attribute>
                        <nombre><xsl:value-of select="ite/profesores/profesor/nombre"/></nombre>
                    </profesor>     
                </xsl:for-each>
            </profesores>   
            <director>
                <xsl:attribute nombre="nombre">
                    <xsl:value-of select="ite/director/nombre"/>
                </xsl:attribute>
                <despacho><xsl:value-of select="ite/director/despacho"/></despacho>
            </director>
            <jefe_de_estudios>
                <xsl:attribute nombre="nombre">
                    <xsl:value-of select="ite/jefe_estudios/nombre"/>
                </xsl:attribute>
                <despacho><xsl:value-of select="ite/jefe_estudios/despacho"/></despacho>
            </jefe_de_estudios>
            <ciclos>
                <xsl:for-each select="ite/ciclos/ciclo">
                    <ciclo>
                        <id><xsl:value-of select="ite/ciclos/ciclo/@id"/></id>
                        <nombre_ciclo><xsl:value-of select="ite/ciclos/ciclo/nombre"/></nombre_ciclo>
                        <nivel>Grado <xsl:value-of select="ite/ciclos/ciclo/grado"/></nivel>
                        <decreto_Titulo><xsl:value-of select="ite/ciclos/ciclo/decretoTitulo"/></decreto_Titulo>
                        <xsl:attribute id="id">
                            <xsl:value-of select="ite/profesores/profesor/id"/>
                        </xsl:attribute>
                        <nombre><xsl:value-of select="ite/profesores/profesor/nombre"/></nombre>
                    </ciclo>     
                </xsl:for-each>
            </ciclos>
        </ite>
    </xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
        <html>
            <link rel="stylesheet" href="sorin_css/sorin_ite.css"/>
            <head>
                <title><xsl:value-of select="ite/@nombre"/></title>
            </head>
            <body>

                <h1><xsl:value-of select="ite/empresa"/></h1>
                <h1><xsl:value-of select="ite/telefono"/></h1>

                <xsl:for-each select="ite/profesores/profesor">
                    <p>
                        ID: <xsl:value-of select="id"/>
                        NOMBRE: <xsl:value-of select="nombre"/>
                    </p>
                </xsl:for-each> <!-- Fin del for-each de profesores -->

                <p>
                    <h1>DIRECTOR</h1>
                    <ol>
                        <li>
                            <xsl:value-of select="ite/director/nombre"/>
                        </li>
                        <li>
                            <xsl:value-of select="ite/director/despacho"/>
                        </li>
                    </ol>
                </p>

                <p>
                    <h1>JEFE ESTUDIOS</h1>
                    <ul>
                        <li>
                            <xsl:value-of select="ite/jefe_estudios/nombre"/>
                        </li>
                        <li>
                            <xsl:value-of select="ite/jefe_estudios/despacho"/>
                        </li>
                    </ul>
                </p>

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
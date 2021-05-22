<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
    <html>
        <link rel="stylesheet" href="cristian.css" />
        <head>
            <title><xsl:value-of select="ite/@nombre"/></title>
        </head>
        <body>
            <h1> <xsl:value-of select="ite/@nombre"/> </h1>
            <a href="https://institutotecnologico.edix.com"> <xsl:value-of select="ite/@nombre"/></a>
            <br/>
            <a href="https://www.grupoproeduca.com/"> <xsl:value-of select="ite/empresa"/></a>
            <br/>
            <br/>
            <h2> <xsl:value-of select="ite/empresa"/> </h2>
            <h3> Profesores </h3>
            <table>
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                </tr>    
            </table>

            <xsl:for-each select= "ite/profesores/profesor">
                <table>
                    <tr>
                        <td><xsl:value-of select="id"/></td>
                        <td><xsl:value-of select="nombre"/></td>
                    </tr>
                    
                </table>
            </xsl:for-each>

            <ol>
                <li> <b><u>Diretora:</u></b>
                    <ul>
                        <li><b>Nombre: </b> <xsl:value-of select="ite/director/nombre"/></li>
                        <li><b>Despacho: </b> <xsl:value-of select="ite/director/despacho"/></li>
                    </ul>
                </li>
                <br />
                <li> <b><u>Jefe de estudios:</u></b>
                    <ul>
                        <li><b>Nombre: </b> <xsl:value-of select="ite/jefe_estudios/nombre"/></li>
                        <li><b>Despacho: </b> <xsl:value-of select="ite/jefe_estudios/despacho"/></li>
                    </ul>
                </li>
            </ol>

            <h3> Ciclos </h3>
            <xsl:for-each select= "ite/ciclos/ciclo">
                <h4><xsl:value-of select="@id"/></h4>
                <table>
                    <th>Nombre</th>
                    <th>Grado</th>
                    <th>Decreto título</th>
                    <tr>
                        <td><xsl:value-of select="nombre"/></td>
                        <td><xsl:value-of select="grado"/></td>
                        <td><xsl:value-of select="decretoTitulo/@año"/></td>
                    </tr>      
                </table>
            </xsl:for-each>

            <br/>
            <h3> Formulario de contacto </h3>
            <form action="formulario.jsp" method="post">
                <label for="nombre">Nombre:</label>
                <br/>
                <input type="text" name="nombre"/>
                <br/>
                <label for="email">Email:</label>
                <br/>
                <input type="text" name="email"/>
                <br/>
                <label for="nombre">Mensaje:</label>
                <br/>
                <textarea name="mensaje"/>
                <br/><br/>
                <input type="submit" value="Enviar"/>
                <input type="reset" value="Limpiar"/>
            </form>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>
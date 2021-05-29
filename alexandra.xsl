<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
    <html>
        <link rel="stylesheet" href="alexandra.css" />
        <head>
            <title>ITE - Inicio</title>
            <h1><a href="https://institutotecnologico.edix.com"> <xsl:value-of select="ite/@nombre"/></a> </h1>

        </head>
        <body>
            <p>Empresa: <xsl:value-of select="ite/empresa"/> <a href="tel:ite/telefono"> // Llámanos</a> </p>

            <h2>Profesores </h2>
            <table>
                <tr>
                    <th>id</th>
                    <th>nombre</th>
                </tr>    
                <xsl:for-each select= "ite/profesores/profesor">
                    <tr>
                        <td><xsl:value-of select="id"/></td>
                        <td><xsl:value-of select="nombre"/></td>
                    </tr>
                </xsl:for-each>
            </table>    

            <h2>Director </h2>
            <table>
                <tr>
                    <th>nombre</th>
                    <th>despacho</th>
                </tr>    
                <xsl:for-each select= "ite/director">
                    <tr>
                        <td><xsl:value-of select="nombre"/></td>
                        <td><xsl:value-of select="despacho"/></td>
                    </tr>
                </xsl:for-each>
            </table>

            <h2>Jefe de Estudios </h2>
            <table>
                <tr>
                    <th>nombre</th>
                    <th>despacho</th>
                </tr>    
                <xsl:for-each select= "ite/jefe_estudios">
                    <tr>
                        <td><xsl:value-of select="nombre"/></td>
                        <td><xsl:value-of select="despacho"/></td>
                    </tr>
                </xsl:for-each>
            </table>

            <h3>Ciclos</h3>
            <ul>
                <xsl:for-each select= "ite/ciclos/ciclo">
                <li><b><i><xsl:value-of select="@id"/></i></b>
                    <ul>
                        <li>Nombre: <xsl:value-of select="nombre"/></li>
                        <li>Grado: <xsl:value-of select="grado"/></li>
                        <li>Decreto Titulo: <xsl:value-of select="decretoTitulo/@año"/></li>
                    </ul>
                </li>
            </xsl:for-each>
            </ul>

            <br/>

            <form action="procesarFormulario.jsp" method="post">
            <fieldset><legend class="legend1">Contacto: </legend>

                <label for="apellidos"> Apellidos: </label>
                <input class="input" id="apellidos" type="text" name="apellidos"/>
                <br/>

                <label for="nombre"> Nombre: </label>
                <input type="text" name="nombre"/>
                <br/>

                <label for="email"> Email: </label>
                <input class="input" type="text" name="email"/>
                <br/>

                <label for="telefono">Teléfono: </label>
                <input class="input" type="tel" name="telefono"/>
                <br/>

                <label for="consulta">Tema de la consulta: </label><br/>
                <textarea style="resize: none;" rows="5" cols="50" name="observaciones"></textarea>
                <br/>
                <br/>
                <div>
                    <input type="submit" value="Enviar formulario >>"/>
                </div>
                <br/>
            </fieldset>
            </form>
            <br/>
            <br/>
            <br/>

        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>
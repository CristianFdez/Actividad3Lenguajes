<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <link rel="stylesheet" href="sorin_css/sorin_ite.css"/>
            <head>
                <title><xsl:value-of select="ite/@nombre"/></title>
            </head>
            <body>
                
                <h1><xsl:value-of select="ite/empresa"/></h1>
                <h1><xsl:value-of select="ite/telefono"/></h1>

                <p>
                    <h2>DIRECTOR</h2>
                    <ul>
                        <li>
                            <xsl:value-of select="ite/director/nombre"/>
                        </li>
                        <li>
                            <xsl:value-of select="ite/director/despacho"/>
                        </li>
                    </ul>
                </p>

                <p>
                    <h2>JEFE ESTUDIOS</h2>
                    <ul>
                        <li>
                            <xsl:value-of select="ite/jefe_estudios/nombre"/>
                        </li>
                        <li>
                            <xsl:value-of select="ite/jefe_estudios/despacho"/>
                        </li>
                    </ul>
                </p>

                <p>
                    <h2>PROFESORES</h2>
                    <xsl:for-each select="ite/profesores/profesor">
                        <ul>
                            <li>
                            ID: <xsl:value-of select="id"/>
                            NOMBRE: <xsl:value-of select="nombre"/>
                            </li>
                        </ul>
                    </xsl:for-each> <!-- Fin del for-each de profesores -->
                </p>

                <p>
                    <h2>CURSOS</h2>
                    <table>
                        <xsl:for-each select="ite/ciclos/ciclo">
                            <tr>
                                <th><xsl:value-of select="@id"/></th>
                            </tr>
                    
                            <tr>
                                <td><xsl:value-of select="nombre"/></td>
                            </tr>
                            <tr>
                                <td><xsl:value-of select="grado"/></td>
                            </tr>
                            <tr>
                                <td><xsl:value-of select="decretoTitulo/@año"/></td>
                            </tr>
                        </xsl:for-each> <!-- Fin del for-each de ciclos-->
                    </table>
                </p>

                <p>
                    <h2>CONTACTO:</h2>
                    <form action="form_contact.jsp" method="post">
                        <label for="nombre">Nombre:</label>
                        <br/>
                        <input type="text" name="nombre"/>
                        <br/>
                        <label for="apellidos">Apellidos:</label>
                        <br/>
                        <input type="text" name="apellidos"/>
                        <br/>
                        <label for="email">Email:</label>
                        <br/>
                        <input type="text" name="email"/>
                        <br/>
                        <label for="telefono">Telefono:</label>
                        <br/>
                        <input type="text" name="telefono"/>
                        <br/>
                        <label for="provincia">Provincia:</label>
                        <br/>
                        <input type="text" name="provincia"/>
                        <br/>
                        <textarea name="mensaje"/>
                        <br/>
                        <input type="submit" value="Enviar"/>
                    </form>
                </p>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
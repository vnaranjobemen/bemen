<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes" />
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Formulario</title>
            </head>
            <body>
                <h2>Formulario de Registro</h2>
                <form action="/cgi-bin/procesar.py" method="post">
                    <xsl:for-each select="formulario/campos/campo">
                        <label>
                            <xsl:value-of select="@id"/>: 
                        </label>
                        <input type="{@tipo}" name="{@id}" required="required" />
                        <br /><br />
                    </xsl:for-each>
                    <input type="submit" value="Enviar" />
                </form>
                <a href="../index.html">Tornar a la pàgina principal</a>            </body>

        </html>
    </xsl:template>
</xsl:stylesheet>

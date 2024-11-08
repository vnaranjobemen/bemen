<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes" />
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Formularis per modificar CDs</title>
            </head>
            <body>
                <h2>Modificació de cds</h2>
                <xsl:for-each select="/cataleg/cd">
                    <h3>CD:</h3>
                    <form action="/cgi-bin/procesar2.py" method="post">

                        <!-- Recorre todos los elementos hijos del nodo cd -->
                        <xsl:for-each select="*">
                        <label>
                            <xsl:value-of select="name()"/>:
                            <input type="text" name="{name()}" value="{.}" />
                        </label>
                        <br/>
                        </xsl:for-each>
                        <input type="submit" value="Enviar" />
                    </form>
                    <hr/>                    
                    
                    <label>/cgi-bin/procesar.py/cgi-bin/procesar2.py </label>

                </xsl:for-each>
                <a href="../index.html">Tornar a la pàgina principal</a>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
  <h2>La meva col·lecció de CDs</h2>
  <table border="1">
    <tr bgcolor="#ff0000">
      <th style="text-align:left">Title</th>
      <th style="text-align:left">Artist</th>
    </tr>
    <xsl:for-each select="cataleg/cd">
    <tr>
      <td><xsl:value-of select="title"/></td>
      <td><xsl:value-of select="artist"/></td>
    </tr>
    </xsl:for-each>
  </table>
                <a href="../index.html">Tornar a la pàgina principal</a></body>
</html>
</xsl:template>
</xsl:stylesheet>


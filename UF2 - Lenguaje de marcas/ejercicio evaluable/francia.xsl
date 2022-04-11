<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
  <html>
    <head>
      <title><xsl:value-of select="pais/nombre"/></title>
    </head>
    <body>
        <h1><xsl:value-of select="pais/nombre"/><br/></h1>
        <h3><xsl:value-of select="pais/poblacion"/><br/></h3>
        <h3><xsl:value-of select="pais/continente"/><br/></h3>
        <h3><xsl:value-of select="pais/nombre_capital"/><br/></h3>
        <ul>
            <li><xsl:value-of select="pais/coordenadas/latitud"/></li>
            <li><xsl:value-of select="pais/coordenadas/longitud"/></li>
        </ul>
        <br/>
        <ul>
          <xsl:for-each select="pais/fotografias/foto">
            <li><xsl:value-of select="nombre"/></li>
            <li><xsl:value-of select="descripcion"/></li>
            <li><xsl:value-of select="url"/></li>
          </xsl:for-each>
        </ul>
        <h3><xsl:value-of select="pais/costa"/><br/></h3>
    </body>
  </html>
  </xsl:template>
</xsl:stylesheet>

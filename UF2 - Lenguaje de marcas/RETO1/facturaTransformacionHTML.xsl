<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
    <head>
      <title>Transformar</title>
    </head>
    <body>
      <table>
        <tr>
          <th>Numero</th>
          <th>Fecha</th>
          <th>Datos Emisor</th>
          <th>Datos Cliente</th>
          <th>Detalles Factura</th>
        </tr>
        <xsl:for-each select="facturas/factura">
          <tr>
            <td>
              <xsl:value-of select="numero" />
            </td>
            <td>
              <xsl:value-of select="fecha" />
            </td>
            <td>
              <xsl:value-of select="datos_emisor/nombre"/><br/>
              <xsl:value-of select="datos_emisor/cif"/><br/>
              <xsl:value-of select="datos_emisor/telefono"/>
            </td>
            <td>
              <xsl:value-of select="datos_cliente/nombre"/><br/>
              <xsl:value-of select="datos_cliente/cif"/><br/>
              <xsl:value-of select="datos_cliente/telefono"/><br/>
            </td>
            <td>
              <xsl:value-of select="detalle_factura/importe" />
            </td>
          </tr>
        </xsl:for-each>
      </table>
    </body>
  </html>
</xsl:template>
</xsl:stylesheet>
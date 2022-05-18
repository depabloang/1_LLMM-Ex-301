<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" />


<xsl:template match="/tienda">
<html>
  <head>
    <link rel="stylesheet" href="3_tienda.css"/>
  </head> 
   
  <body>
  
      <header>
        <h2> <xsl:value-of select="title"/></h2>
        <h3> <xsl:value-of select="encabezado"/></h3>
        <h3> <xsl:value-of select="descripcion"/></h3>
      </header>    

      <xsl:for-each select="tienda/producto">
      <div class="contenedor">
        <div class="tarjeta">
          <p><xsl:value-of select="titulo"/></p>
          <p><xsl:value-of select="texto"/></p>
          <p><xsl:value-of select="precio"/></p>
        </div>
      </div>
      </xsl:for-each>      
  
  </body>
</html>
</xsl:template>
    
</xsl:stylesheet>


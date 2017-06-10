<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="servicios">

<html>
<head>
<title>Servicios</title>
<style type="text/css">
  @font-face {
    font-family: myFirstFont;
    src: url(../fonts/Tangerine_Bold.ttf);
}

h1 {
   font-weight: normal;
    font-size: 40px;
    color: #cc9800;
    font-family: 'myFirstFont', cursive;
    text-shadow: 3px 3px 10px grey;
    text-align: center;
}
</style>
</head>
<body>

<xsl:for-each select="servicio">
<div style="float: left; width: 32%;">
  <h1><xsl:value-of select="@nombre"/></h1>
  <div style="width: 100px; float: left; margin-left: 60px;">
     <xsl:element name="img">
      <xsl:attribute name="width">200%</xsl:attribute>
     <xsl:attribute name="src">
       <xsl:value-of select="imagen/@ruta"/>
     </xsl:attribute>
     <xsl:attribute name="height">
        220px
     </xsl:attribute>
     </xsl:element>
</div>
</div>
</xsl:for-each>

</body>
</html>
</xsl:template>
</xsl:stylesheet> 

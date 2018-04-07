<?xml version="1.0" encoding="UTF-8"?>
<!-- DWXMLSource="alumnos.xml" -->
    <xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
    
    <xsl:template match="/soundvisor">
<HTML>
  <HEAD>
    <TITLE>Ejemplos SoundVisor</TITLE>
  </HEAD>
  <BODY>
    <H1>Grupos:</H1>
  
       <xsl:apply-templates select="groups/group[@name_g=$param]"/>
    
  </BODY>
</HTML>
</xsl:template>

<xsl:template match='group'> 
    <h1>Nombre:<xsl:value-of select='city' /></h1> 
    <h2>Teléfono: <xsl:value-of select='year_born' /></h2> 
</xsl:template>

    </xsl:stylesheet>
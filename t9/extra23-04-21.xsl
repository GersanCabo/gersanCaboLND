<?xml version="1.0" encoding="UTF-8" ?>

<!-- New XSLT document created with EditiX XML Editor (http://www.editix.com) at Fri Apr 23 18:25:00 WEST 2021 -->

<xsl:stylesheet version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:fn="http://www.w3.org/2005/xpath-functions"
	xmlns:xdt="http://www.w3.org/2005/xpath-datatypes"
	xmlns:err="http://www.w3.org/2005/xqt-errors"
	exclude-result-prefixes="xs xdt err fn">

	<xsl:output method="xml" indent="yes"/>
	
	<xsl:template match="/">
	<xsl:variable name="nombreAsignatura" select='Redes'/>
	<html>
		<body>
			<h3><xsl:value-of select="$nombreAsignatura"/></h3>
			<xsl:for-each-group select="//asignatura" group-by=".">
				<xsl:value-of select="."/>
				<br/>
			</xsl:for-each-group>
			<ul>
				<xsl:apply-templates select="//asignatura[.=$nombreAsignatura]">
					<xsl:sort select="./following-sibling::nota[1]" data-type="number"/>
				</xsl:apply-templates>
			</ul>
		</body>
	</html>
	</xsl:template>
	
	<xsl:template match="asignatura">
		<li>
			<xsl:value-of select="./ancestor::alumno/nombre"/>
			<xsl:text> </xsl:text>
			<xsl:value-of select="./following-sibling::nota[1]"/>
		</li>
	</xsl:template>

</xsl:stylesheet>

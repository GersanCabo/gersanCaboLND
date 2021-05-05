<?xml version="1.0" encoding="UTF-8" ?>

<!-- New XSLT document created with EditiX XML Editor (http://www.editix.com) at Mon Apr 26 18:07:58 WEST 2021 -->

<xsl:stylesheet version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:fn="http://www.w3.org/2005/xpath-functions"
	xmlns:xdt="http://www.w3.org/2005/xpath-datatypes"
	xmlns:err="http://www.w3.org/2005/xqt-errors"
	exclude-result-prefixes="xs xdt err fn">

	<xsl:output method="html" indent="yes"/>
	
	<xsl:template match="/">
	<xsl:variable name="nombreAutor">chupidos</xsl:variable>
		<html>
			<body>
				<xsl:apply-templates select="//item[./author=$nombreAutor]"/>
			</body>
		</html>
	</xsl:template>
	
	<xsl:template match="item">
		<h2>
			<xsl:value-of select="./title"/>
		</h2>
		<xsl:value-of select="./description"/>
		<br/>
	</xsl:template>

</xsl:stylesheet>

<?xml version="1.0" encoding="UTF-8" ?>

<!-- New XSLT document created with EditiX XML Editor (http://www.editix.com) at Fri Apr 16 19:55:44 WEST 2021 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="xml" indent="yes"/>
	
	<xsl:template match="/">
		<xsl:apply-templates select="//item"/>
	</xsl:template>
	
	<xsl:template match="item">
		<xsl:apply-templates select="{./author[. = 'chupidos']}"/>
		<xsl:apply-templates select="{./author[. = 'yuly']}"/>
		<xsl:apply-templates select="{./author[. = 'HOY']}"/>
		<xsl:apply-templates select="{./author[. = 'PAsturias']}"/>
		<xsl:apply-templates select="{./author[. = 'DUNALUNA']}"/>
	</xsl:template>
	
	<xsl:apply-templates match="{./author[. = 'yuly']}"/>

</xsl:stylesheet>



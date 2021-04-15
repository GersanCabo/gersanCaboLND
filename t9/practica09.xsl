<?xml version="1.0" encoding="UTF-8" ?>

<!-- New XSLT document created with EditiX XML Editor (http://www.editix.com) at Thu Apr 15 10:45:22 WEST 2021 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="xml" indent="yes"/>
	
	<xsl:template match="/">
		<noticias>
			<xsl:apply-templates select="//item"/>
		</noticias>
	</xsl:template>

	<xsl:template match="item">
		<titulo>
			<xsl:value-of select="./title"/>
		</titulo>
	</xsl:template>
</xsl:stylesheet>



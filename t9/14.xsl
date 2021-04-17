<?xml version="1.0" encoding="UTF-8" ?>

<!-- New XSLT document created with EditiX XML Editor (http://www.editix.com) at Fri Apr 16 10:06:32 WEST 2021 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="xml" indent="yes"/>
	
	<xsl:template match="/">
		<noticias>
			<xsl:apply-templates select="//item"/>
		</noticias>
	</xsl:template>
	
	<xsl:template match="item">
		<xsl:element name="noticia">
			<xsl:attribute name="autor">
				<xsl:value-of select="./author"/>
			</xsl:attribute>
			<xsl:attribute name="fecha">
				<xsl:value-of select="./pubDate"/>
			</xsl:attribute>
			<xsl:value-of select="./title"/>
		</xsl:element>
	</xsl:template>

</xsl:stylesheet>



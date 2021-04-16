<?xml version="1.0" encoding="UTF-8"?>

<!-- New XSLT document created with EditiX XML Editor (http://www.editix.com) at Thu Apr 15 17:57:23 WEST 2021 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html"/>
	
	<xsl:template match="/">
		<html>
		<body>
		<xsl:apply-templates select="//alumno"/>
		<xsl:apply-templates select="//alumno" mode="ciales"/>
		</body>
		
		</html>
		
	</xsl:template>
	
		<xsl:template match="alumno">
		<table border="1">
			<caption>
				<xsl:number count="//alumno" level="any" format="1"/>
			</caption>
			<tr>
				<td>
					Nombre
				</td>
			<td>
			Apellidos
			</td>
			</tr>
			<tr>
			<td>
				<xsl:value-of select="./nombre">
				</xsl:value-of>
			</td>
			<td>
				<xsl:value-of select="./apellidos">
				</xsl:value-of>
			</td>
		</tr>
			
			
		</table>
	</xsl:template>
	
	<xsl:template match="alumno" mode="ciales">
		<table border="1">
			<caption>
				<xsl:number count="//alumno" level="any" format="1"></xsl:number>
			</caption>
			<tr>
				<td>
					Cial
				</td>
			<td>
			Curso
			</td>
			</tr>
			<tr>
			<td>
				<xsl:value-of select="./@cial">
				</xsl:value-of>
			</td>
			<td>
				<xsl:value-of select="ancestor::curso/@nombre">
				</xsl:value-of>
			</td>
		</tr>
			
			
		</table>
	</xsl:template>

</xsl:stylesheet>



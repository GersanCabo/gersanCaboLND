<?xml version="1.0" encoding="UTF-8"?>

<!-- New XSLT document created with EditiX XML Editor (http://www.editix.com) at Sat Apr 17 14:12:35 WEST 2021 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html"/>
	
	<xsl:template match="/">
	<html>
		<head>
			<title>Práctica 17</title>
		</head>
		<body>
		<h3>Lista de alumnos con alguna materia suspensa:</h3>
			<xsl:apply-templates select="//curso"/>
		</body>
	</html>
	</xsl:template>
	
	<xsl:template match="curso">
		<xsl:value-of select="./@nombre"/>
		<br/>
		<xsl:apply-templates select="./alumno[.//nota &lt; 5 or .//nota = 'No APTO']"/>
	</xsl:template>
	
	<xsl:template match="alumno">
		<xsl:number value="position()" level="single" format="i "/>
		<xsl:value-of select="./nombre"/>
		<xsl:text> </xsl:text>
		<xsl:text>tiene alguna materia suspensa</xsl:text>
		<br/>
	</xsl:template>

</xsl:stylesheet>



<?xml version="1.0" encoding="UTF-8"?>

<!-- New XSLT document created with EditiX XML Editor (http://www.editix.com) at Sat Apr 17 14:12:35 WEST 2021 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html"/>
	
	<xsl:template match="/">
	<html>
		<head>
			<title>Práctica 16</title>
		</head>
		<body>
			<h3>Lista de alumnos matriculados:</h3>
			<xsl:apply-templates select="//curso"/>
		</body>
	</html>
	</xsl:template>
	
	<xsl:template match="curso">
		<xsl:number count="//curso" level="single" format="a) "/>
		<xsl:value-of select="./@nombre"/>
		<br/>
		<xsl:apply-templates select="./alumno"/>
	</xsl:template>
	
	<xsl:template match="alumno">
		<xsl:number count="//alumno" level="single" format="1) "/>
		<xsl:value-of select="./nombre"/>
		<br/>
	</xsl:template>

</xsl:stylesheet>



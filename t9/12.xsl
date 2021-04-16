<?xml version="1.0" encoding="UTF-8"?>

<!-- New XSLT document created with EditiX XML Editor (http://www.editix.com) at Thu Apr 15 17:57:23 WEST 2021 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html"/>
	
	<xsl:template match="/">
		<html>
		<head>
			<title>Práctica 12</title>
			<style type="text/css">
				table tr:nth-of-type(1) td {
					background-color: blue;
					color: white;
				}
				table tr:nth-of-type(2) td {
					background-color: pink;
				}
				table tr:nth-of-type(1n+3) td:nth-of-type(1) {
					background-color: green;
					color: white;
				}
			</style>
		</head>
		<body>
		<h3>Alumnos por curso:</h3>
		<xsl:apply-templates select="//curso"/>
		</body>
		
		</html>
		
	</xsl:template>
	
		<xsl:template match="curso">
		<table border="1">
			<tr>
				<td colspan="3">
					<xsl:value-of select="./@nombre"/>
				</td>
			</tr>
			<tr>
				<td>
					CIAL
				</td>
				<td>
					Nombre
				</td>
				<td>
					Apellidos
				</td>
			</tr>
				<xsl:apply-templates select="./alumno"/>
			<br/>
		</table>
	</xsl:template>
	
	<xsl:template match="alumno">
		<tr>
			<td>
				<xsl:value-of select="./@cial"/>
			</td>
			<td>
				<xsl:value-of select="./nombre"/>
			</td>
			<td>
				<xsl:value-of select="./apellidos"/>
			</td>
		</tr>
	</xsl:template>

</xsl:stylesheet>



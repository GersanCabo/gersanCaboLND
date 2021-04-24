<?xml version="1.0" encoding="UTF-8" ?>

<!-- New XSL-FO document created with EditiX XML Editor (http://www.editix.com) at Mon Apr 19 18:11:29 WEST 2021 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html"/>
	
	<xsl:template match="/">
	<html>
		<head>
			<title>Práctica 26</title>
			<style>
				th {
					background-color: #ffc0cb;
					color: white;
				}
				td {
					vertical-align: top;
				}
				.numero {
					background-color: #ffc0cb;
					color: white;
				}
			</style>
		</head>
		<body>
		<h3>NOTAS:</h3>
			<table>
				<tr>
					<th>Número</th>
					<th>Alumno</th>
					<th>Materias:</th>
				</tr>
				<xsl:for-each select="//alumno[../@nombre='1º ASIR']">
					<tr>
						<td class="numero">
							<xsl:number value="position()" level="single" format="1"/>
						</td>
						<td>
							<xsl:value-of select="./nombre"/>
							<xsl:text> </xsl:text>
							<xsl:value-of select="./apellidos"/>
						</td>
						<td>
							<xsl:apply-templates select=".//asignatura"/>
						</td>
					</tr>
				</xsl:for-each>
			</table>
		</body>
	</html>
	</xsl:template>
	
	<xsl:template match="asignatura">
		<xsl:value-of select="."/>
		<xsl:text>: </xsl:text>
		<xsl:value-of select="./following-sibling::nota"/>
		<br/>
	</xsl:template>

</xsl:stylesheet>

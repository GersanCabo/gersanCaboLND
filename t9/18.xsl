<?xml version="1.0" encoding="UTF-8" ?>

<!-- New XSL-FO document created with EditiX XML Editor (http://www.editix.com) at Mon Apr 19 18:11:29 WEST 2021 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html"/>
	
	<xsl:template match="/">
	<html>
		<head>
			<title>Práctica 18</title>
			<style>
				table tr:nth-of-type(1n+1) *:nth-of-type(1) {
					background-color: blue;
					color: white;
				}
			</style>
		</head>
		<body>
		<h3>Lista de cursos ofertados:</h3>
			<table>
				<tr>
					<th>Codigo</th>
					<th>Nombre</th>
				</tr>
				<xsl:for-each select="//curso">
					<tr>
						<td>
							<xsl:number value="position()" level="single" format="1"/>
						</td>
						<td>
							<xsl:value-of select="@nombre"/>
						</td>
					</tr>
				</xsl:for-each>
			</table>
		</body>
	</html>
	</xsl:template>

</xsl:stylesheet>

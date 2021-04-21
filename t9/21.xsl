<?xml version="1.0" encoding="UTF-8" ?>

<!-- New XSL-FO document created with EditiX XML Editor (http://www.editix.com) at Mon Apr 19 18:11:29 WEST 2021 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html"/>
	
	<xsl:template match="/">
	<html>
		<head>
			<title>Práctica 21</title>
			<style>
				table tr:nth-of-type(1n+1) td:nth-of-type(1) {
					background-color: blue;
					color: white;
				}
				th {
					background-color: blue;
					color: white;
				}
			</style>
		</head>
		<body>
		<h3>Lista de cursos alumnos:</h3>
			<table>
				<tr>
					<th>Número</th>
					<th>Curso</th>
					<th>Cial</th>
					<th>Nombre</th>
					<th>Apellidos</th>
					<th>Repetidor</th>
					<th>Total de puntos</th>
					<th>Nota Media</th>
				</tr>
				<xsl:for-each select="//alumno">
					<tr>
						<td>
							<xsl:number value="position()" level="single" format="1"/>
						</td>
						<td>
							<xsl:value-of select="../@nombre"/>
						</td>
						<td>
							<xsl:value-of select="@cial"/>
						</td>
						<td>
							<xsl:value-of select="nombre"/>
						</td>
						<td>
							<xsl:value-of select="apellidos"/>
						</td>
						<td>
							<xsl:value-of select="repetidor"/>
						</td>
						<td>
							<xsl:value-of select="sum(.//nota)"/>
						</td>
						<td>
							<xsl:value-of select="sum(.//nota) div count(.//nota)"/>
						</td>
					</tr>
				</xsl:for-each>
			</table>
		</body>
	</html>
	</xsl:template>

</xsl:stylesheet>

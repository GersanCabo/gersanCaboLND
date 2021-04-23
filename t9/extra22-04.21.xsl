<?xml version="1.0" encoding="UTF-8" ?>

<!-- New XSL-FO document created with EditiX XML Editor (http://www.editix.com) at Mon Apr 19 18:11:29 WEST 2021 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html"/>
	
	<xsl:template match="/">
	<html>
		<head>
			<title>Práctica 21</title>
			<style>
				th {
					background-color: blue;
					color: white;
				}
				td {
					vertical-align: top;
				}
				.numero {
					vertical-align: middle;
					background-color: blue;
					color: white;
				}
			</style>
		</head>
		<body>
		<h3>Lista de cursos alumnos:</h3>
			<xsl:for-each select="//alumno">
				<xsl:sort select="sum(.//nota) div count(.//nota)" data-type="number"/>
				<table>
					<tr>
						<th>Curso</th>
						<th>Cial</th>
						<th>Nombre</th>
						<th>Apellidos</th>
						<th>Repetidor</th>
						<th>Total de puntos</th>
						<th>Media</th>
					</tr>
					<tr>
						<td>
							<xsl:value-of select="../@nombre"/>
						</td>
						<td>
							<xsl:value-of select="@cial"/>
						</td>
						<td>
							<xsl:value-of select="nombre"/>
						</td>
						<td rowspan="5">
							<xsl:value-of select="apellidos"/>
						</td>
						<td rowspan="5">
							<xsl:value-of select="repetidor"/>
						</td>
						<td rowspan="5">
							<xsl:value-of select="sum(.//nota)"/>
							<br/>
							<xsl:for-each select=".//nota">
								<xsl:sort select="." data-type="number"/>
								<xsl:value-of select="."/>
								<br/>
							</xsl:for-each>
						</td>
						<td rowspan="5">
							<xsl:value-of select="sum(.//nota) div count(.//nota)"/>
						</td>
					</tr>
				</table>
			</xsl:for-each>
		</body>
	</html>
	</xsl:template>

</xsl:stylesheet>

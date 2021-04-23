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
						<td rowspan="5" class="numero">
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
						<td rowspan="5">
							<xsl:value-of select="apellidos"/>
						</td>
						<td rowspan="5">
							<xsl:if test="repetidor[./text()='True']">
								<xsl:text>Si</xsl:text>
							</xsl:if>
						</td>
						<td rowspan="5">
							<xsl:value-of select="sum(.//nota)"/>
							<br/>
							<xsl:apply-templates select=".//nota"/>
						</td>
						<td rowspan="5">
							<xsl:value-of select="sum(.//nota) div count(.//nota)"/>
						</td>
					</tr>
					<tr>
						<td rowspan="4" colspan="3">
							<xsl:for-each select=".//asignatura">
								<xsl:number value="position()" level="single" format="a) "/>
								<xsl:value-of select="./text()"/>
								<br/>
							</xsl:for-each>
						</td>
					</tr>
					<tr>
					</tr>
					<tr>
					</tr>
					<tr>
					</tr>
				</xsl:for-each>
			</table>
		</body>
	</html>
	</xsl:template>
	
	<xsl:template match="nota">
		<xsl:choose>
			<xsl:when test="./text()=10">
				<xsl:text>Sobresaliente</xsl:text>
			</xsl:when>
			<xsl:when test="./text() &gt; 7">
				<xsl:text>Notable</xsl:text>
			</xsl:when>
			<xsl:when test="./text() &gt; 5">
				<xsl:text>Bien</xsl:text>
			</xsl:when>
			<xsl:when test="./text() &gt; 4">
				<xsl:text>Suficiente</xsl:text>
			</xsl:when>
			<xsl:when test="./text() &lt; 5">
				<xsl:text>Suspenso</xsl:text>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="./text()"/>
			</xsl:otherwise>
		</xsl:choose>
		<br/>
	</xsl:template>

</xsl:stylesheet>

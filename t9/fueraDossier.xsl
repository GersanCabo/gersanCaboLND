<?xml version="1.0" encoding="UTF-8" ?>

<!-- New XSLT document created with EditiX XML Editor (http://www.editix.com) at Sun Apr 25 13:21:04 WEST 2021 -->

<xsl:stylesheet version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:fn="http://www.w3.org/2005/xpath-functions"
	xmlns:xdt="http://www.w3.org/2005/xpath-datatypes"
	xmlns:err="http://www.w3.org/2005/xqt-errors"
	exclude-result-prefixes="xs xdt err fn">

	<xsl:output method="html" indent="yes"/>
	
	<xsl:template match="/">
		<html>
			<head>
				<title>Fuera de Dossier</title>
				<style>
					th {
						
					}
				</style>
			</head>
			<body>
				<h2>Mayo</h2>
				<xsl:apply-templates select=".//idioma[.//examen[contains(.,'Mayo')]]">
					<xsl:with-param name="mes">Mayo</xsl:with-param>
				</xsl:apply-templates>
				
				<h2>Junio</h2>
				<xsl:apply-templates select=".//idioma[.//examen[contains(.,'Junio')]]">
					<xsl:with-param name="mes">Junio</xsl:with-param>
				</xsl:apply-templates>
			</body>
		</html>
	</xsl:template>
	
	<xsl:template match="idioma" mode="mayo">
		<table>
			<tr>
				<th>
					<xsl:value-of select="./@codigo"/>
				</th>
			</tr>
			<tr>
				<th>Nivel</th>
				<th>Modalidad</th>
				<th>Lugar</th>
				<th>Fecha</th>
			</tr>

		</table>
	</xsl:template>
	
	<xsl:template match="idioma" mode="junio">
		<table>
			<tr>
				<th>
					<xsl:value-of select="./@codigo"/>
				</th>
			</tr>
			<tr>
				<th>Nivel</th>
				<th>Modalidad</th>
				<th>Lugar</th>
				<th>Fecha</th>
			</tr>

		</table>
	</xsl:template>
	
	<xsl:template match="idioma">
		<xsl:param name="mes">Mayo</xsl:param>
		<table>
			<tr>
				<th>
					<xsl:value-of select="./@codigo"/>
				</th>
			</tr>
			<tr>
				<th>Nivel</th>
				<th>Modalidad</th>
				<th>Lugar</th>
				<th>Fecha</th>
			</tr>
			<xsl:for-each select=".//examen[contains(.,$mes)]">
				<tr>
					<td>
						<xsl:value-of select="../@certificacion"/>
					</td>
					<td>
						<xsl:value-of select="./@tipo"/>
					</td>
					<td>
						<xsl:value-of select="./ancestor::escuela/@sede"/>
					</td>
					<td>
						<xsl:value-of select="."/>
					</td>
				</tr>
			</xsl:for-each>
		</table>
	</xsl:template>

</xsl:stylesheet>

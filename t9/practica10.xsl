<?xml version="1.0" encoding="UTF-8"?>

<!-- New XSLT document created with EditiX XML Editor (http://www.editix.com) at Thu Apr 15 10:55:15 WEST 2021 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html"/>
	
	<xsl:template match="/">
	<html>
		<head>
			<title>Práctica 10</title>
		</head>
		<body>
			<xsl:apply-templates select="//item"/>
		</body>
	</html>
	</xsl:template>
	
	<xsl:template match="item">
		<table width="70%" border="1">
			<tr>
				<td>
					<xsl:value-of select="./title"/>
				</td>
			</tr>
		</table>
		<br/>
	</xsl:template>

</xsl:stylesheet>



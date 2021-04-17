<?xml version="1.0" encoding="UTF-8"?>

<!-- New XSLT document created with EditiX XML Editor (http://www.editix.com) at Fri Apr 16 20:17:32 WEST 2021 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html"/>
	
	<xsl:template match="/">
	<html>
		<body>
			<ul>
			<xsl:for-each select="//alumno">
				<li>
					<xsl:value-of select="./nombre">
					</xsl:value-of>
				</li>
			</xsl:for-each>
			</ul>
		<xsl:apply-templates/>
		</body>
	</html>
	</xsl:template>

</xsl:stylesheet>



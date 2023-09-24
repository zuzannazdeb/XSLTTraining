<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
	
	<html>
		<body>
			<h1> Student</h1>
			<xsl:apply-templates
				select="/StudentScores/Student[@id=4]" />
		</body>
	</html>
	</xsl:template>
	<xsl:template match="College">
	<b>
		College:
		<xsl:value-of select="/StuentScores/College" />
	</b>
	</xsl:template>
	<xsl:template match="Student">
	<br/> Student Id:
	<xsl:value-of select="../@id" />
	<br/> Student First Name:
	<xsl:value-of select="/StudentScores/Student/FirstName"/>
	<br/> Student Last Name:
	<xsl:value-of select="/StudentScores/Student/LastName"/>
	<br/> Student Score
	<xsl:value-of select="/StudentScores/Student/Score"/>
	</xsl:template>
</xsl:stylesheet>
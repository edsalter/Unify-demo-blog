<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="utf-8"/>

  <!-- Declare velocity parameters -->
	<xsl:param name="context_path"/>
	<xsl:param name="current_path"/>

	<xsl:template match="/search-results">
		<h2 id="comments">Comments</h2>

		<ul>
			<xsl:apply-templates select="items/data-item" />
		</ul>
	</xsl:template>

	<xsl:template match="data-item">
		<li>
			<xsl:value-of select="description" />
		</li>
	</xsl:template>
</xsl:stylesheet>
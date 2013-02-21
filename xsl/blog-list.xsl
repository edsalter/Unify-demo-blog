<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="utf-8"/>

  <!-- Declare velocity parameters -->
	<xsl:param name="context_path"/>
	<xsl:param name="current_path"/>

	<xsl:template match="/search-results">
		<xsl:if test="contains($current_path, '/vyre4')">
			<textarea><xsl:copy-of select ="*" /></textarea><hr class="clear"/>
		</xsl:if>

		<div id="blogs">
			<xsl:apply-templates select="items/data-item" />
		</div>
	</xsl:template>

	<xsl:template match="data-item">
		<div class="blog">
			<h2>
				<!-- CHANGE LINK ID -->
				<a href="{$context_path}/blog/view/item{@id}?link_31={@id}"><xsl:value-of select="name" /></a>
			</h2>

			<p>
				<xsl:value-of select="description" />
			</p>

			<!-- CHANGE LINK ID -->
			<xsl:apply-templates select="item-links/item-link[@id=61]/items/item" mode="image" />

			<p></p>

			<p>
				<strong>
					<!-- CHANGE LINK ID -->
					<xsl:value-of select="count(item-links/item-link[@id=31]/items/item)"/></strong> 
					<a href="{$context_path}/blog/view/item{@id}#comments"> comment</a>(s)
			</p>

			<p><a href="{$context_path}/blog/create/item{@id}">Edit this post</a></p>
		</div>
		<hr/>
	</xsl:template>


	<xsl:template match="item" mode="image">
		<img src = "{original-file}" />
	</xsl:template>
</xsl:stylesheet>
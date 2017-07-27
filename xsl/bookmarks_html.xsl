<?xml version="1.0" ?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output
method="html"
encoding="Windows-1252"
omit-xml-declaration="yes"
doctype-public="NETSCAPE-Bookmark-file-1"
doctype-system="NETSCAPE-Bookmark-file-1"
standalone="yes"
/> 

<xsl:template match="/">
	<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=UTF-8" />
	<TITLE>Bookmarks</TITLE>
	<H1>Bookmarks</H1>
	<DL>
		<p>
			<xsl:apply-templates />
		</p>
	</DL>
</xsl:template>

<xsl:template match="search[not(@chrome='0')]">
	<DT>
		<A HREF="{@url}"  SHORTCUTURL="{@keyword}"><xsl:value-of select="@title" /></A>	
	</DT>
</xsl:template>
	
</xsl:stylesheet>

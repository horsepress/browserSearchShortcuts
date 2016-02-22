<?xml version="1.0" ?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output
method="text"
omit-xml-declaration="yes"
standalone="yes"
encoding="utf-8"
/> 
<xsl:param name="publiconly" />

<xsl:template match="/">Windows Registry Editor Version 5.00

[HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\SearchUrl]
@="https://www.google.co.uk/search?q=%s"<xsl:apply-templates /></xsl:template>
<xsl:template match="search[not(@ie='0')]"><xsl:if test="not(@public='0') or not($publiconly='1')">
[HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\SearchUrl\<xsl:value-of select="@keyword" />]
@="<xsl:value-of select="@url" />"</xsl:if></xsl:template>	
</xsl:stylesheet>

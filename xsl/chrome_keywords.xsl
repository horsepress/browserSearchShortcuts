<?xml version="1.0" ?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output
method="text"
encoding="Windows-1252"
omit-xml-declaration="yes"
standalone="yes"
/> 

<xsl:param name="publiconly" />

<xsl:template match="/"><xsl:apply-templates /></xsl:template>

<xsl:template match="search[not(@chrome='0')]"><xsl:if test="not(@public='0') or not($publiconly='1')"><xsl:variable name="newUrl"><xsl:call-template name="string-replace-all">
    <xsl:with-param name="text" select="@url" />
    <xsl:with-param name="replace">%s</xsl:with-param>
    <xsl:with-param name="by">{searchTerms}</xsl:with-param>
  </xsl:call-template></xsl:variable>delete from keywords where keyword in ("<xsl:value-of select="@keyword" />");
insert into keywords (short_name,keyword,show_in_default_list,favicon_url,url) values 
("<xsl:value-of select="@title" />","<xsl:value-of select="@keyword" />",1,"","<xsl:value-of select="$newUrl" />");
</xsl:if></xsl:template>

<!-- this does replace function... see http://stackoverflow.com/questions/3067113/xslt-string-replace -->
<xsl:template name="string-replace-all">
  <xsl:param name="text" />
  <xsl:param name="replace" />
  <xsl:param name="by" />
  <xsl:choose>
    <xsl:when test="contains($text, $replace)">
      <xsl:value-of select="substring-before($text,$replace)" />
      <xsl:value-of select="$by" />
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text"
        select="substring-after($text,$replace)" />
        <xsl:with-param name="replace" select="$replace" />
        <xsl:with-param name="by" select="$by" />
      </xsl:call-template>
    </xsl:when>
    <xsl:otherwise>
      <xsl:value-of select="$text" />
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>	

	
</xsl:stylesheet>
